object FrameHistorico_SLA: TFrameHistorico_SLA
  Left = 0
  Top = 0
  Width = 650
  Height = 520
  Align = alClient
  Color = clWhite
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  OnEnter = FrameEnter
  OnExit = FrameExit
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 650
    Height = 520
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
    OnMouseMove = dxLayoutControl1MouseMove
    object GridHistorico_SLA: TcxGrid
      Left = 10
      Top = 37
      Width = 635
      Height = 143
      TabOrder = 3
      object GridHistorico_SLAGridView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridHistorico_SLAGridViewSLA: TcxGridDBColumn
          DataBinding.FieldName = 'SLA'
          Width = 182
        end
        object GridHistorico_SLAGridViewGRAVIDADE: TcxGridDBColumn
          Caption = 'Gravidade'
          DataBinding.FieldName = 'GRAVIDADE'
          Width = 96
        end
        object GridHistorico_SLAGridViewCONDICAO: TcxGridDBColumn
          Caption = 'Condi'#231#227'o'
          DataBinding.FieldName = 'CONDICAO'
          Width = 86
        end
        object GridHistorico_SLAGridViewQUANT_NOTIFICADAS: TcxGridDBColumn
          Caption = 'Pessoas Notificadas'
          DataBinding.FieldName = 'QUANT_NOTIFICADAS'
          Width = 127
        end
        object GridHistorico_SLAGridViewDT_NOTIFICADO: TcxGridDBColumn
          Caption = 'Data Notifica'#231#227'o'
          DataBinding.FieldName = 'DT_NOTIFICADO'
          Width = 132
        end
      end
      object GridHistorico_SLALevel1: TcxGridLevel
        GridView = GridHistorico_SLAGridView
      end
    end
    object lblLabelGravidade: TcxLabel
      Left = 382
      Top = 207
      AutoSize = False
      Caption = 'Gravidade:'
      Style.HotTrack = False
      Transparent = True
      Height = 17
      Width = 103
    end
    object memoObservacao: TcxDBMemo
      Left = 10
      Top = 350
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.BorderColor = clRed
      Style.BorderStyle = ebsFlat
      Style.HotTrack = False
      TabOrder = 12
      Height = 48
      Width = 635
    end
    object lblGravidade: TcxDBLabel
      Left = 491
      Top = 204
      AutoSize = True
      DataBinding.DataField = 'GRAVIDADE'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lblLabelNomeResponsavel: TcxLabel
      Left = 120
      Top = 226
      AutoSize = False
      Caption = 'Respons'#225'vel:'
      Style.HotTrack = False
      Transparent = True
      Height = 17
      Width = 82
    end
    object lblData: TcxDBLabel
      Left = 208
      Top = 249
      DataBinding.DataField = 'DT_CRIACAO_SLA'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBackground
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 156
    end
    object lblLabelPessoasNotificadas: TcxLabel
      Left = 382
      Top = 233
      Caption = 'Pessoas Notificadas:'
      Style.HotTrack = False
      Transparent = True
    end
    object lblPessoasNotificadas: TcxDBLabel
      Left = 491
      Top = 230
      AutoSize = True
      DataBinding.DataField = 'QUANT_NOTIFICADAS'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBackground
      Style.IsFontAssigned = True
      Transparent = True
      OnMouseEnter = lblLabelPessoasNotificadasMouseEnter
      OnMouseLeave = lblLabelPessoasNotificadasMouseLeave
      OnMouseMove = lblLabelPessoasNotificadasMouseMove
    end
    object tcControles: TdxTileControl
      Left = 10
      Top = 447
      Width = 635
      Height = 46
      Align = alNone
      OptionsView.CenterContentHorz = True
      OptionsView.CenterContentVert = True
      OptionsView.GroupIndent = 0
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 40
      OptionsView.ItemIndent = 10
      OptionsView.ItemWidth = 180
      TabOrder = 14
      Transparent = True
      object dxTileControl1Group1: TdxTileControlGroup
        Index = 0
      end
      object tiFechar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Style.GradientBeginColor = clBtnShadow
        Style.GradientEndColor = clMedGray
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = []
        Text1.Value = 'Fechar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiFecharClick
      end
      object tiTrocarResponsavel: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Style.GradientBeginColor = clBtnShadow
        Style.GradientEndColor = clMedGray
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = []
        Text1.Value = 'Trocar Respons'#225'vel'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tiEncaminhar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = []
        Text1.Value = 'Encaminhar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
    object imgResponsavel: TImage
      Left = 34
      Top = 222
      Width = 80
      Height = 80
      Center = True
      Proportional = True
      Transparent = True
    end
    object lblLabelData: TcxLabel
      Left = 120
      Top = 253
      AutoSize = False
      Caption = 'Data Notificado:'
      Style.HotTrack = False
      Transparent = True
      Height = 17
      Width = 82
    end
    object lblNomeResponsavel: TcxDBLabel
      Left = 208
      Top = 222
      DataBinding.DataField = 'RESPONSAVEL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.WordWrap = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBackground
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 156
    end
    object lblTitulo: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Notifica'#231#245'es Disparadas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBackground
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 89
    end
    object lblCriadaPor: TcxLabel
      Left = 10
      Top = 404
      Caption = 'Nenhuma SLA disparada para este registro.'
      Style.HotTrack = False
      Transparent = True
    end
    object lblIdentificacaoRegistro: TcxLabel
      Left = 557
      Top = 10
      Caption = 'Identificacao'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBackground
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 601
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 174
      Top = 10
      DataBinding.DataField = 'CODIGO'
      DataBinding.DataSource = DS
      Properties.OnChange = cxDBTextEdit1PropertiesChange
      Style.BorderColor = clRed
      Style.BorderStyle = ebsFlat
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object liGridHistorico_SLA: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = GridHistorico_SLA
      ControlOptions.OriginalHeight = 143
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lilblLabelGravidade: TdxLayoutItem
      Parent = GrupoGravidade
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = lblLabelGravidade
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object limemoObservacao: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Descri'#231#227'o da SLA'
      CaptionOptions.Layout = clTop
      Control = memoObservacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lilblGravidade: TdxLayoutItem
      Parent = GrupoGravidade
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = lblGravidade
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lilblLabelNomeResponsavel: TdxLayoutItem
      Parent = GrupoNomeResponsavel
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = lblLabelNomeResponsavel
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblData: TdxLayoutItem
      Parent = GrupoDataResponsavel
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = lblData
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 156
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoGravidade: TdxLayoutGroup
      Parent = GrupoInformacoesNotificacao
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoNotificacao: TdxLayoutGroup
      Parent = GrupoResponsavel
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object GrupoInformacoesNotificacao: TdxLayoutGroup
      Parent = GrupoInformacoes
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object lilblLabelPessoasNotificadas: TdxLayoutItem
      Parent = GrupoPessoasNotificadas
      AlignHorz = ahLeft
      AlignVert = avBottom
      AlignmentConstraint = AlignmentConstraint1
      CaptionOptions.Visible = False
      Control = lblLabelPessoasNotificadas
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblPessoasNotificadas: TdxLayoutItem
      Parent = GrupoPessoasNotificadas
      AlignHorz = ahLeft
      AlignVert = avBottom
      AlignmentConstraint = AlignmentConstraint1
      CaptionOptions.Visible = False
      Control = lblPessoasNotificadas
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 142
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoPessoasNotificadas: TdxLayoutGroup
      Parent = GrupoInformacoesNotificacao
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object litcControles: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'dxTileControl1'
      CaptionOptions.Visible = False
      Control = tcControles
      ControlOptions.OriginalHeight = 46
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object GrupoInformacoes: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'Informa'#231#245'es da Notifica'#231#227'o'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object liimgResponsavel: TdxLayoutItem
      Parent = GrupoResponsavel
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Image1'
      CaptionOptions.Visible = False
      Control = imgResponsavel
      ControlOptions.OriginalHeight = 80
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoResponsavel: TdxLayoutGroup
      Parent = GrupoInformacoes
      AlignHorz = ahClient
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lilblLabelData: TdxLayoutItem
      Parent = GrupoDataResponsavel
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = lblLabelData
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblNomeResponsavel: TdxLayoutItem
      Parent = GrupoNomeResponsavel
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = lblNomeResponsavel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 156
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoNomeResponsavel: TdxLayoutGroup
      Parent = GrupoNotificacao
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoDataResponsavel: TdxLayoutGroup
      Parent = GrupoNotificacao
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lilblTitulo: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = lblTitulo
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 158
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblCriadaPor: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Bottom = 20
      CaptionOptions.Visible = False
      Control = lblCriadaPor
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 31
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lilblIdentificacaoRegistro: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = lblIdentificacaoRegistro
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      CaptionOptions.Text = 'cxDBTextEdit1'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object AlignmentConstraint1: TdxLayoutAlignmentConstraint
      Kind = ackBottom
    end
  end
  object PnlPessoas: TPanel
    Left = 101
    Top = 142
    Width = 230
    Height = 243
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Caption = 'PnlPessoas'
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object tcBase: TdxTileControl
      Left = 1
      Top = 1
      Width = 228
      Height = 241
      OptionsBehavior.ItemMoving = False
      OptionsBehavior.ScrollMode = smScrollButtons
      OptionsDetailAnimate.AnimationInterval = 200
      OptionsDetailAnimate.AnimationMode = damFade
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupIndent = 0
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 1000
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 19
      OptionsView.ItemIndent = 0
      OptionsView.ItemWidth = 115
      TabOrder = 0
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = 9737364
      Title.Font.Height = -35
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = []
      Title.IndentHorz = 0
      Title.IndentVert = 0
      object dxTileControlGroup1: TdxTileControlGroup
        Visible = False
        Index = 0
      end
      object tcBaseGroup1: TdxTileControlGroup
        Index = 1
      end
      object tiBasePadrao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Padrao'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 324
    Top = 344
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.ControlBorderColor = clRed
      ItemOptions.ControlBorderStyle = lbsFlat
      PixelsPerInch = 96
    end
  end
  object TransaFD: TFDTransaction
    Options.Isolation = xiReadCommitted
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 296
    Top = 344
  end
  object cxImageList_Pequena: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 22741344
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0005000000130000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000001D0000000800000000000000000000
          0011BC7F4DFFBB7E4CFFBA7C49FFB87B49FFB87947FFB77846FFB67744FFB576
          43FFB47441FFB37340FFB3723FFFB1713EFF0000001C00000000000000000000
          0014BE8351FFF9EDE0FFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9DBFFF8E8
          DAFFF7E8D9FFF7E7D8FFF7E7D7FFB47441FF0000002300000000000000000000
          0012C18756FFFCF1E6FFFBF1E5FFFBEFE4FFFBEFE2FFFAEEE1FFFAEDE0FFFAED
          E0FFF9ECDEFFF9EBDDFFF9EBDDFFB67744FF0000002100000000000000000000
          0010C48A5AFFFEF4EBFFFDF4EBFFFDF3E9FFFDF2E9FFFDF2E7FFFCF1E6FFFCF0
          E5FFFCF0E3FFFBEEE2FFFBEEE1FFB87B48FF0000001F00000000000000000000
          000FC78F5EFFFFF9F2FFFFF7F0FFFFF7EFFFFEF7EEFFFEF6ECFFFEF5ECFFFEF5
          EAFFFEF3E9FFFDF3E8FFFCEFE3FFBB7E4BFF0000001D00000000000000000000
          000DCA9362FFFFFAF4FFFFF9F3FFFFF9F2FFFFF9F1FFFFF8F1FFFFF8F0FFFFF7
          EFFFFFF6EEFFFDF3E9FFFBEFE3FFBE814FFF0000001B00000000000000000000
          000BCD9667FFFFFAF6FFFFFAF5FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9
          F1FFFEF5ECFFFCF1E6FFFAEDE0FFC18554FF0000001A00000000000000000000
          000ACF9B6CFFFFFBF6FFFFFBF6FFFFFAF5FFFFFAF4FFFFFAF5FFFFF9F3FFFEF7
          F0FFFCF2E8FFFAEDE1FFF7E8D9FFC38958FF0000001800000000000000000000
          0008D29F70FFFFFCF8FFFFFBF8FFFFFBF7FFFFFBF7FFFFFBF6FFFEF7F1FFFCF3
          EBFFFAEFE3FFF7E8DBFFF5E2D1FFC78D5CFF0000001600000000000000000000
          0007D5A375FFFFFDFAFFFFFCF9FFFFFCF9FFFFFCF8FFFEF9F4FFFCF4ECFFFAEF
          E4FFF6E7DAFFF4E1D0FFF0DAC6FFC99161FF0000001400000000000000000000
          0006D9A77AFFFFFDFBFFFFFDFBFFFFFDFAFFFEF9F5FFFCF5EEFFFAF0E7FFF7EB
          DFFFD09A6BFFCF9869FFCE9768FFCC9565FF0000000D00000000000000000000
          0005DBAB7FFFFFFEFDFFFFFEFBFFFEFAF7FFFCF6F0FFFAF1E9FFF7EADFFFF5E6
          D8FFD29E6FFFFFFCF9FFD5D2CFDC1717162A0000000400000000000000000000
          0003DDAF83FFFFFEFCFFFEFBF8FFFCF7F1FFFAF2EAFFF7EBE1FFF4E5D7FFF2E0
          D0FFD5A274FFD5D2D0DB17171626000000040000000000000000000000000000
          0002E0B387FFDFB185FFDFB083FFDDAE82FFDCAD80FFDBAB7FFFDAAA7DFFD8A8
          7BFFD8A679FF1717172400000003000000000000000000000000000000000000
          0000000000020000000300000003000000040000000500000005000000060000
          0007000000060000000200000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          000080010000800100008001000080010000800100008003000080070000C00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000E000000190000001C0000001F000000220000002400000026000000270000
          002900000029000000290000002000000009000000010000000018577FBB0D61
          96FF075B92FF075A92FF065A92FF065A92FF065A92FF065A92FF065A93FF065A
          92FF075A92FF065A92FF065C93FE010A103C00000005000000000C6199FB4198
          C2FF6BB5D3FF38C7ECFF0BB8E6FF0BB4E5FF0BB0E3FF0BADE1FF0AA9DFFF09A7
          DDFF09A2DCFF099DDAFF0980B7FF065277C20000000E0000000009679EFF5CBA
          E6FF2686B2FF90E7F8FF1BCCF3FF1CC9F1FF19C6EFFF15C1ECFF0DBCEAFF0CB8
          E8FF0BB4E6FF0BAFE4FF0BA2D9FF0A75A8FC0003041D000000000B75AAFF6CC8
          F2FF3994BEFF97CEE2FF59DFF8FF3CD7F6FF39D4F5FF31D0F3FF26CAF0FF19C4
          EEFF11BFEBFF11BBEAFF10B7E8FF0C83B6FF06476190000000000D82B6FF83D4
          F6FF3EAEDEFF3F8EB7FFB3F3FDFF62E3FAFF5EE1F9FF53DDF8FF45D9F5FF33D3
          F3FF22CCF1FF16C7EFFF16C4EDFF12ACD9FF0A73A4F200000000108CBFFF9DE2
          F9FF27BBF1FF3485B3FFBDDBE9FF9AF0FDFF86ECFCFF78E9FBFF65E3F9FF4EDE
          F7FF38D8F5FF26D1F2FF1DCEF2FF1CCBF1FF0C7CAFFF06384C65108FC4FFB8ED
          FCFF3BCAF5FF52B1D8FF5B98BDFFF9FEFFFFF3FDFFFFE8FCFEFFD7F9FEFFC1F5
          FDFFA6F0FCFF88EBFBFF6BE3F9FF59DEF7FF32B0D6FF12709CE11093C8FFD0F6
          FEFF56DBF9FF4BD4F7FF2170A4FF065E98FF075E98FF065E98FF075E98FF075E
          98FF075E98FF075F98FF075F98FF075E98FF075E98FF076099FF1197CDFFE3FB
          FFFF77EBFDFF6AE7FCFF5CE1FBFF50DBF9FF45D6F9FF3AD0F8FF32CBF6FF2BC6
          F5FF26C2F3FF22BDF2FF1FB9F1FF0C70A2FF0000000900000000129BD0FFEFFD
          FFFF9AF4FFFF85F2FFFF7CEFFEFF6DEAFDFF6DE8FCFFB3F2FDFFA1ECFCFF8DE6
          FBFF77DFFAFF63D8F8FF48C5EEFF0C74A6FF0000000600000000129ED4FFF7FE
          FFFFCCF8FEFFA0F5FFFF7EE7F8FF1091C5FF108EC2FF0F8BBEFF0E87BBFF0E85
          B7FF0E82B4FF0D7FB1FF1683B3FB186988B200000002000000002BA7D7FBE0F3
          FAFFF2F8FAFBD9F2F9FF28A0CEFB000000020000000200000002000000030000
          000300000003000000030000000300000002000000000000000047879DAF2BA8
          D7FB12A0D5FF29A4D4FB44829AAF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00000001000000010000000100000001000000010000000100000000
          000000000000000000000001000000010000000100000003000007FF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          000C000000160000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000002100000013000000040000000A8E6B
          45C9B57039FFB36D35FF252525FF202020FF1D1D1DFF191919FF151515FF1212
          12FF0F0F0FFF0C0C0CFFA1551BFFA05319FF805428D20000001300000011BC78
          41FFEEC18FFFEFCA9FFF343434FF2F2F2FFF2B2B2BFF282828FF232323FF2020
          20FFE7BE90FF181818FFE5BD8DFFDDAA6FFFA1541AFF0000002000000011C07E
          48FFF1C694FFF1CDA5FF454545FF404040FF3C3C3CFF373737FF333333FF2E2E
          2EFFE9C092FF272727FFE6BD8FFFDFAE71FFA3571CFF000000220000000FC583
          4EFFF3CA9AFFF3D1A8FF585858FF535353FF4E4E4EFF494949FF444444FF3F3F
          3FFFE9C293FF363636FFE8BF91FFE1AE74FFA55A20FF000000200000000EC988
          53FFF5CEA1FFF5D5AEFF6B6B6BFF666666FF616161FF5C5C5CFF575757FF5252
          52FF4D4D4DFF484848FFE9C292FFE3B077FFA85E25FF0000001E0000000CCE8D
          59FFF8D4A8FFF8D8B3FFF5D5ADFFF4D0A6FFF1CDA1FFEFCA9DFFEEC89BFFEDC8
          9AFFEDC598FFECC496FFEAC495FFE4B378FFAA6128FF0000001C0000000BD292
          5EFFFBD7AEFFF8D1A7FFF6CE9EFFF3C997FFF0C490FFEEC08AFFECBD84FFEBBB
          83FFE9BA81FFE9B880FFE8B67DFFE7B57CFFAE662DFF0000001B00000009D797
          64FFFDDCB4FFDBA36CFFDAA26BFFD9A16AFFD9A069FFD89E67FFD69D66FFD69C
          65FFD59A63FFD49962FFD39760FFE8B77EFFB16A32FF0000001900000008DA9C
          69FFFFDFBBFFD99F68FFFBFBFBFFFAFAFAFFF8F8F8FFF7F7F7FFF5F5F5FFF4F4
          F4FFF2F2F2FFF1F1F1FFD0935CFFE9BA81FFB56F38FF0000001700000006DEA0
          6EFFFFE5C1FFD69B65FFFDFDFDFF8E8E8EFF8B8B8BFF8A8A8AFF878787FF8484
          84FF828282FFF5F5F5FFCD8F58FFEBBC83FFB9743DFF0000001500000005E1A4
          71FFFFE7C7FFD39760FFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFFCFCFCFFFBFB
          FBFFFAFAFAFFF8F8F8FFCA8B55FFEEBD86FFBD7943FF0000001400000004E3A6
          74FFFFEACDFFD1925DFFFFFFFFFFADADADFFABABABFFA9A9A9FFA7A7A7FFA5A5
          A5FFA3A3A3FFFBFBFBFFC88751FFEFC089FFC27E48FF0000001200000002E5A8
          76FFFFF0D2FFCE8E59FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFC6844EFFF1C28BFFC6834EFF0000000E00000001AA94
          75C0E5A876FFCB8B56FFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
          ACFFACACACFFACACACFFC4814CFFCD8C58FF95764FC500000007000000000000
          0001000000020000000300000003000000040000000500000005000000060000
          000700000008000000090000000A0000000A0000000600000001}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000700000010000000180000
          00210000001D0000000E00000002000000000000000000000000000000000000
          0002000000060000000C000000130202022A0A0A0A550C0C0C980F0E0EBE3131
          31EE0E0E0EE404040470000000190000000400000000000000000000000A0303
          03210C0C0C5213131390232323BC3A3A3AEC3A3939FB848584FFC0C8C4FFBDBF
          BFFF4D4D4DFF262626FB060606A1000000240000000900000001474747AF7979
          79ED2E2E2EFC393939FF434343FF535353FF706E70FFB9C2BDFF70D09DFFC8CF
          CCFF585556FF6D6D6DFF424242FF101010CB020202450000000F9E9E9EFCF9F9
          F9FF7F7F7FFF828282FFB2B2B2FFDDDDDDFFEAEAEBFFEDEFEDFFE0E6E3FFD8D9
          D8FF606060FF6E6E6EFF787878FF616161FF1C1C1CE90707076EB1B1B1F3FFFF
          FFFFF7F7F7FFFBFBFBFFF3F3F3FFE5E5E5FFDBDBDBFFCCCCCCFFC3C2C3FFBBBB
          BBFF979797FF696969FF7A7A7AFF808080FF808080FF252525F5BCBCBCF7F1F1
          F1FFE4E4E4FFDBDBDBFFD5D5D5FFCDCDCDFFCBCBCBFFCACACAFFC7C8C8FFBCBC
          BDFFAEB1B5FF8D8F91FF757373FF828282FF929292FF3A3A3AF96D6D6D94D6D6
          D6FFE0E0E0FFDBDDDDFFD4D6D9FFCDCDCDFFBBBBB9FFA0A09FFF95918CFF8F8A
          80FF63472DFF3C3228FF949799FF808080FF949494FF454545F0020202026F6F
          6F96D3D3D4FFD4D3D1FFBB9A77FFC2B8ACFFC7BDAFFFCDC0ACFFCBBBA3FFD1C2
          A9FFC2955EFF87603CFFB2B7BBFFA8A8A8FF999999FF4D4D4DF7000000000000
          00005C5C5D7BBEBDBDF4DAAF7FFFF3E6D9FFEFE7DDFFE9E0D1FFE5D9C8FFE1D4
          C2FFD9C6ABFFA8733DFF908F8DFB797B7DF26E6E6EEB454545C8000000000000
          0000000000002A2B2B37A18D78C8F1DDC6FFF6F4F1FFF0EAE1FFECE3D9FFE7DE
          D1FFE6DECFFFBD8D53FF41322379090909170404050E03030307000000000000
          000000000000000000001714121BDDBB91ECFDFEFEFFF9F7F3FFF4F0EAFFF0EA
          E1FFEDE7DDFFDFCDB7FF693D179E000000000000000000000000000000000000
          0000000000000000000000000000866D4E91FAF0E6FFFFFFFFFFFBFBF9FFF8F7
          F3FFF4F1EBFFF3F1ECFFC3996AF8261709380000000000000000000000000000
          0000000000000000000000000000221C1524E5C8A7F1FFFFFFFFFFFFFFFFFEFD
          FDFFFAF9F7FFF8F3EFFFEADDCCFF885220C80806030B00000000000000000000
          00000000000000000000000000000000000076624B7CE4C29DEFDCBA93EACEA9
          7EDEC9A172DCB48956C9A87A48C67E4F20AF261E163000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F80700008003000000000000000000000000000000000000000000000000
          000000000000C0000000E0000000F0070000F8030000F8010000FC010000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          000700000010000000190000001D0000001F0000002000000021000000230000
          0024000000250000002500000023000000180000000B00000002000000060102
          1B4F04044BB806066EF5060674FF060673FF050572FF060571FF060571FF0505
          70FF050570FF050570FF05056AF7030346C50101195F0000000A0000000D0405
          4DB50C1594FF0F23AFFF0E25B6FF0C23B3FF0A22B2FF0A22B1FF0A22B0FF0A22
          B0FF0A22AFFF0A21AFFF091DA4FF080F86FF040346C40000001800000011080A
          79F4182FBFFF1733CAFF1833C7FF1F39C8FF112DC3FF0C28C0FF0B27BFFF0E2B
          C0FF1C37C4FF1530C0FF1029BAFF091DA4FF05056AF700000022000000110A0E
          87FF203DD4FF1F3CD2FF8C9AE4FFE2E5F5FF354ED0FF1230C8FF102EC7FF2F48
          CDFFE3E7F8FF8A99E3FF132FC0FF0A21AFFF050570FF000000240000000F0C12
          8FFF2945DBFF2A44D8FFD0D3EFFFFCFAF8FFE1E4F5FF344DD1FF304AD0FFE2E6
          F7FFFFFEFFFFD0D5F3FF1733C2FF0A21B0FF050572FF000000220000000D0F17
          99FF3752E2FF2D4AE0FF344DD7FFCFD2EEFFFCF9F7FFE5E6F4FFE6E8F4FFFEFC
          FCFFCFD5F2FF243ECBFF0E2AC2FF0A22B2FF050674FF000000210000000B131D
          A3FF4A63E9FF3856EAFF2E4BE1FF354ED7FFD4D6EDFFFBF9F5FFFCF9F6FFD5D9
          F0FF2640CEFF102DCAFF0B29C2FF0A23B3FF060775FF0000001F0000000A1723
          ADFF7F90F0FF6B80F2FF5D72E6FF6375DDFFE5E4EEFFFAF6F2FFFAF7F3FFE3E3
          F1FF364ED2FF1332CCFF0E2AC5FF0B23B5FF060777FF0000001D000000081C2B
          B8FF8E9DF4FF677AEBFF6B7BDFFFE4E1EAFFF8F3EDFFD7D8EBFFD6D7EBFFFAF6
          F2FFE1E2F0FF354ED1FF1330C8FF0E25B8FF07077BFF0000001B000000072032
          C1FFA3B0F7FF6E7FE6FFE3E0E6FFF6EFE8FFD5D4E7FF5367DCFF4C61DAFFD2D3
          EAFFF9F5F1FFE0E0EEFF233CCBFF1028BDFF090A82FF00000019000000062539
          CBFFB8C2FAFF7282E6FFA9AEE0FFD6D3E3FF5D6FDDFF536AEBFF4963EAFF495F
          D9FFD1D2E8FF919CE1FF1C38CCFF132CC0FF0B0E88FF0000001700000004283C
          C7F1B6BFF6FF9BA7F1FF7080E5FF6576E5FF6076ECFF5D76F6FF536DF3FF465F
          E7FF4058DEFF344DDAFF233ED4FF162CBDFF0C1186F400000013000000021E2B
          8AA47886E6FFBBC4F6FFC2CBFBFFB2BEFAFF9EACF8FF8A9AF6FF7589F3FF657B
          EFFF526BEBFF415CE5FF2941D2FF1625ADFF0A0E5EB10000000C000000010B11
          323B202E8DA42E44D0F12F45D9FF2D42D5FF2B3FD0FF293BCBFF2637C5FF2332
          C0FF1F2DB9FF1D29B3FF1822A1F30D1367AE0406234800000005000000000000
          0001000000020000000300000004000000050000000500000006000000070000
          0008000000090000000B0000000B000000080000000400000001}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          0000}
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
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0001000000060000001000000016000000110000000800000002000000020000
          0009000000160000001E000000170000000A0000000200000000000000000000
          0005270F014C6B2803B29E3A03F2672502A2240D01460000000800000008240F
          0255632804B9903803F35E2402A3200D004C0000000A00000000000000000000
          000B783308AF441C03770A0400133F17025F682502A200000011000000127031
          07B73F1B0384090400153A17025F5F2502A30000001700000000000000000000
          000DC35D10F20C050127000000060B040013A23D05F20000001700000019BA57
          11F40B050138000000080A040014943C06F30000001D00000000000000000000
          00088B470EAB502708720C05012859270694923E09DE0E0601350E060138A851
          12E5572909960B050137431D05836A2D06B80000001500000000000000000000
          0003321B06448C480FABC96413F3B25714EDB45F21FF3E1B068B45230B8DB35A
          1DFFAB5313E5C15C13F479380BB6281203530000000800000000000000000000
          00010000000300000008000000103D260F64683617E3572C12F1733E20F18E51
          24E537210E700000001B00000010000000070000000200000000000000000000
          00000000000000000000000000041C140D3C322217D25E4637FF714D3AFF4622
          0FD61B0F06480000000700000000000000000000000000000000000000000000
          00000000000000000000000000095E5552C6DEDCDCFF9B8D85FF655A53FFCBC0
          B9FF41261ACB0000001100000001000000000000000000000000000000000000
          0000000000000000000228252350B9B2AFFBDAD9D7FF2F2723AA302F2FACDEDF
          E0FF8D827DFB13100D5D00000006000000000000000000000000000000000000
          00000000000000000004635F5BA9DBD9D9FF5A514BCE0605051A0707071C6A65
          64D1D1D1D1FF2F2E2CB40000000D000000010000000000000000000000000000
          0000000000011E1D1C2DBEB9B7FC948C8AF012100F3800000003000000031B18
          183EA39D99F28B8986FD1110103D000000040000000000000000000000000000
          0000000000016B696794B0ACABFF322F2E6A0000000300000000000000000000
          0005443C3973ABA098FF48423FA00000000A0000000100000000000000000000
          0000191918219D9B96ED5755539E000000030000000000000000000000000000
          0001000000076C5F57A6847368F01312112F0000000300000000000000000000
          00006765627F83827BD00909080F000000000000000000000000000000000000
          0000000000010A0909168C7362D4564A438A0000000700000000000000000909
          090A938E85B92625243300000000000000000000000000000000000000000000
          000000000000000000022924213B7F604DBD0807071000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0080010000800100008001000080010000800100008001000080010000F00F
          0000F0070000E0070000E0030000C0030000C1810000C3810000C7C100008FE1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000050000
          0012000000190000001A0000001B0000001C0000001D0000001E0000001F0000
          001900000007000000000000000000000000000000000000000000000010C185
          54FFC08453FFBE8351FFBE8250FFBD804EFFBB7F4CFFBB7D4BFFBA7C49FFB87B
          48FF00000019000000000000000000000000000000000000000000000013C389
          58FFFDF4EBFFFDF3E9FFFDF3E8FFFCF2E7FFFCF1E5FFFCF0E5FFFBEFE3FFBB7E
          4BFF0000001E000000000000000000000000000000000000000000000011C78E
          5DFFFFF8F0FFFEF7EFFFFEF6EEFFFEF5EDFFFEF5ECFFFEF4EBFFFDF3E9FFBE81
          4FFF000000320000001E0000001F000000200000001A000000070000000FC991
          61FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9F1FFFFF8F1FFFFF7EFFFFDF4EBFFC185
          54FFBD804EFFBB7F4CFFBB7D4BFFBA7C49FFB87B48FF000000190000000ECC95
          66FFFFFAF4FFFFFAF5FFFFF9F3FFFFFAF4FFFFF9F2FFFEF5EDFFFCF1E7FFC389
          58FFE5D3C3FFFCF1E5FFFCF0E5FFFBEFE3FFBB7E4BFF0000001E0000000CCF99
          6BFFFFFBF7FFFFFBF6FFFFFAF5FFFFFAF5FFFEF7F0FFFCF2EAFFFAEEE2FFC78D
          5CFFE3D1C1FFFEF5ECFFFEF4EBFFFDF3E9FFBE814FFF0000001C0000000BD29E
          6FFFFFFCF8FFFFFCF8FFFFFBF7FFFEF8F2FFFCF3EBFFFAEFE5FFF7E9DCFFC991
          61FFE2D1C2FFFFF8F1FFFFF7EFFFFDF4EBFFC18554FF0000001B00000009D5A2
          74FFFFFCFAFFFFFCF9FFFEF9F5FFFCF5EDFFFAEFE6FFF6E8DBFFF4E2D1FFCC95
          65FFE3D4C6FFFFF9F2FFFEF5EDFFFCF1E7FFC38958FF0000001900000008D8A6
          78FFFFFDFBFFFEFAF6FFFCF5EFFFFAF1E8FFF7EBE0FFD19C6EFFD09B6CFFCF99
          6AFFEBDED3FFFEF7F0FFFCF2EAFFFAEEE2FFC78D5CFF0000001700000006DAAA
          7EFFFEFBF7FFFCF6F1FFFAF1E9FFF7EBE0FFF5E6D8FFD3A072FFF3EBE4FFDFD0
          C2FFF8EFE7FFFCF3EBFFFAEFE5FFF7E9DCFFC99161FF0000001500000004DDAE
          82FFDCAD80FFDBAB7FFFDAAA7DFFD8A87BFFD8A679FFD7A476FFE6DACFFFF7EF
          E9FFFBF4ECFFFAEFE6FFF6E8DBFFF4E2D1FFCC9565FF00000013000000010000
          00040000000500000006000000070000000ED8A678FFF4EEE9FFFAF4EFFFFBF4
          EEFFFAF1E8FFF7EBE0FFD19C6EFFD09B6CFFCF996AFF0000000D000000000000
          000000000000000000000000000000000006DAAA7EFFFEFBF7FFFCF6F1FFFAF1
          E9FFF7EBE0FFF5E6D8FFD3A072FFD5D3D0DC1717172900000004000000000000
          000000000000000000000000000000000004DDAE82FFDCAD80FFDBAB7FFFDAAA
          7DFFD8A87BFFD8A679FFD7A476FF171717260000000400000000000000000000
          0000000000000000000000000000000000010000000400000005000000060000
          0007000000080000000900000007000000030000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00001F0000001F0000001F0000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F8000000F8010000F803
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000B0000001A0000002000000015000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000C0E0C096337271EDE422D20F60B0909B6000000290000
          0009000000010000000000000000000000000000000000000000000000000000
          0000000000040807073F6D5B4FF2F2CDABFFFFD1A4FF543D2EFF101111D30303
          03470000000E0000000100000000000000000000000000000000000000050000
          000B000000121716158CD5C4B6FFFFE9D2FFFFE5C9FF90745FFF424445FF1D1E
          1EE90505056200000014000000030000000000000000000000000808083F1A17
          14C60F0E0D90171717B4F3EAE3FFFFF1E5FFFFEFDFFFA29386FF8D8D8DFF7979
          79FF292929F8070707880000001A000000040000000000000000343333D0E7D7
          C7FF685648FF303030FFBBB9B8FFFFFFFDFFE6DFD9FFBDB9B6FFCBCBCBFFB6B6
          B6FF8D8D8DFF1E1E1EFF131313A90000002100000007000000017C7D7CF8FFFF
          FFFFA99D94FF8B8B8BFF666666FF8B8A8AFFBBBBBBFFE1E3E3FFE7E7E7FFE1E1
          E1FFBDBDBDFF6E6E6EFF696969FF222222C6040404350000000B757575F0E3E4
          E4FFD0D0D0FFE0E0E0FFC4C4C4FF6B6B6BFF656565FFA9A9A9FFE0E0E0FFF0F0
          F0FFD4D4D4FFD1D1D1FFC5C5C5FF9D9D9DFF474747E20E0E0E523C3C3C657070
          70DABDBDBDFFDCDCDCFFF0F0F0FFC5C5C5FF797979FF595959FF717171FFAFAF
          AFFFE0E0E0FFF2F2F2FFEBEBEBFFE3E3E3FFCCCCCCFF666666E5000000000303
          0305292929494D4D4D86888888D7BDBDBDFBD9D9D9FFC5C5C5FF9C9C9CFF9F9F
          9FFF9F9F9FFFC0C0C0FFE9E9E9FFF3F3F3FFF3F3F3FFAAAAAAFB000000000000
          00000000000000000000000000012424243D464646798E8E8ECCB8B8B8F4D4D4
          D4FFCCCCCCFFA9A9A9FF8F8F8FEDC4C4C4F9DADADAFF818181BD000000000000
          00000000000000000000000000000000000000000000020202031B1B1B294242
          42717D7D7DBB979797DC2727273D25252539474747721414141C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E07F0000C01F0000C00F00000007000000030000000000000000
          0000000000000000000080000000F0000000FE000000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000070752700D0D
          AFF000000000000000000000000001010C100E0EBAFF05054660000000000000
          0000035B11C0047515FF037215FF036F14FF024B0DB00014033001010C100F11
          BBFF04053A500000000000000000050546600E0EBAFF01010C10000000000000
          0000035F11C0036413D0011E054001240650025B10D002510EC0000000000C10
          83B00E11A5E00B0C8DC00B0B8CC00C0CA3E00A0A80B000000000000000000000
          0000046312C0036011C0000000000000000002330970037014FF00000000070B
          49601119BEFF080B5F80080A6A900E0EBAFF0505466000000000000000000000
          0000046613C0046413C00008021001200640036312D0036011D0000000000102
          0C101420C0FF06083C50060847600F11BBFF01010C1000000000000000000000
          0000056B14C0068A1AFF058719FF058218FF047816F0010F0320000000000000
          00000F1C87B00D1579A00C1284B00B0E82B00000000000000000000000000000
          0000056F15C0056C14C00000000001110320047416E002390B70000000000000
          000009124B601525B8F0141FC0FF060948600000000000000000000000000000
          0000057217C0056F16C00000000000000000047115D0035C11B0000000000000
          000002030D10182CC5FF1523C2FF01020C100000000000000000000000000000
          0000067517C008981EFF07951DFF07931BFF068E1BFF022C0850000000000000
          0000000000000509253004072530000000000000000000000000000000000000
          0000021E06300227084002270840022607400009021000000000000000000000
          0000000000000000000300000006000000030000000000000000000000000000
          0001000000050000000D000000100000000B0000000300000000000000000000
          0000000000022D11014C471A027C000000110000000400000001000000000000
          00050B04012D2606008220040088200400780000000B00000000000000000000
          000067360E8CCF8533FBD88F37FF562305940903002500000012000000120000
          001F2E0F0180A73703FFDB710DFFA83703FF0000001200000000000000000000
          0000B67730E5FFE4C1FFFFDFADFFE5AA60FF9A4C11DE682B06AD592204A3772C
          05CCBA580EFAEB9523FFF6A125FFC15B0CFD0000000C00000000000000000000
          0000281A0A32BF8C4EE0F8DFC0FFFFECD0FFFEDDB3FFEFC084FFE9B369FFF0BC
          6BFFFBC56DFFF1B04DFFD8872BFFA25014E80000000400000000000000000000
          0000000000001D1308238A5A24A9DEB279FCF0D3ADFFFAE0C1FFFADDB7FFF1CA
          97FFDCA259FFA1591EDB3615045E150802240000000000000000000000000000
          000000000000000000000201000239230B477D52219A935A1FBA90531BBC854C
          1AB0502C106E150B041E00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0038C0000018C0000081CC000081C0000081C00000C3C80000C3CC0000C3C0
          0000E7C10000E3810000C0810000C0010000C0010000C0010000E0030000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          000800000F4200000B3300000007000000010000000000000000000000000000
          0000000000000000000000000002000000080000000800000002000000040000
          1B68030357DD020242BE00000C3D000000060000000000000000000000000000
          00000000000000000002000000120000176B000017690000000D0000020B0303
          3D8A0E0EBFFF0B0BAAFF02023EB4000008300000000500000000000000000000
          0000000000030000001201011C81040465E9030358D300000830000000020101
          0D210B0B7DA41112D7FF0A0AA3FF010135A90000052300000004000000000000
          00020000001001011E8304046FEB0909B7F903034D8F0000000E000000000000
          000301010C200B0B7BA11312D7FF0A0A9EFF01012FA000000217000000050000
          000F01011F85050574EE090AC1FF0505629A0000001400000003000000000000
          00000000000201010A1C0B0B779C1414D9FF0B0B98FF010128970000001B0101
          228A06067AF10C0CC6FF06066EA1000001150000000300000000000000000000
          00000000000000000002010106160B0B73951414DAFF0B0B91FD010138CA0808
          83F70E0ECAFF080878A60000061E000000030000000000000000000000000000
          00000000000000000000000000020000010F0B0B71961415D6FD0F10B3FF1212
          D2FF0B0B80AD01010C2700000004000000000000000000000000000000000000
          000000000000000000000000000300000725080855A01616DBFF1515DBFF1414
          D5FB06064F940000000F00000002000000000000000000000000000000000000
          0000000000000000000300000C2E030339A811119FFF1B1BDFFF1313AFD21414
          C6ED090A88F00000207D0000000B000000020000000000000000000000000000
          0000000000020101143C06064CB41515ACFF1F1FE1FF131390AE03031A330909
          4E6F1212B2DE08087DEC00001F790000000A0000000100000000000000000000
          00020303214C0C0C64C11C1CBDFF2323E5FF161693AE03031A2F000000040000
          00060808405F1313A6D109097BEB00001F770000000900000001000000010707
          335D141485D22121CCFF2828E7FF1A1A96AC04041C2E00000002000000000000
          0001000000050606324F13129AC30A0A7BEB00002075000000060303141F1717
          8BBF2828DBFF2B2BE9FF1B1B96A804041C2B0000000200000000000000000000
          000000000000000000040404253D11118DB1090969C800000923000000000F0F
          4C5A2626C4D61B1B94A305051B26000000010000000000000000000000000000
          0000000000000000000000000002020213220505283B00000003000000000000
          00000707252A0303111600000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0003F0000003E0000001C000000080000080000000C0010000E0030000F007
          0000F0070000E0030000C0010000800000000080000001E0000083F00000CFF9
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000010A0401246329
          0ADA230F03630000000A00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001030100156028
          0BD271300CEE0C05013300000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000072A12
          056F8A3E12FF4F2009B801000014000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010502
          011B7A3711E9944315FF1F0D035C000000080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000A4A210CA4A9511CFF572509C2000000120000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00052B13076BAD5721FF873C13F41107023B0000000400000000000000000000
          0000000000000000000000000000000000000000000000000001000000000000
          00031C0D0546994C20F9AE531CFF3014057B0000000800000000000000000000
          0000000000010000000200000003000000050603011309040217030101070000
          00020B06032282411CE7C26223FF401A07980000000C0000000000000000100A
          0717331E114B3E211069462410796F3B1CB1924E25E17D3E1BD7130A05230000
          00020B06031F85441EE6CB6A27FF56250BB60000000D00000000000000019761
          3BC7CE8B59FEDA9257FFE19A5CFFE49A5BFFB46937F93C221266000000050000
          00041E0F0743A45624F8D46F2AFF622C0EC20000000D00000000000000009C6B
          48C1F9D1A6FFFFC98EFFFFC889FFD9935AFF5D3319950201010D0C07031A150A
          0432673316B8DC7D36FFD4752FFF52260DA50000000A00000000000000006948
          2F80F2CFACFFFDD7AAFFFDCF9AFFF2BA80FFB57243EB884E2AC898582EDDB669
          37FBDC8948FFF79E4DFFC56C2FFF391B0A74000000060000000000000000573C
          2766F1CFADFFFFE5C6FFF4CB9EFFFFE4C0FFFFD7A9FFF7BD84FFF7B97BFFFFBC
          75FFFFB66BFFF9A558FFA15728F3160C062E0000000200000000000000004834
          2350F1CEA9FFEEC8A4FEA26F49C7DBAE86FAECC9A6FFF2CCA5FFF4C99BFFECB3
          7DFFDF9E68FFB46F41F53D231369000000050000000000000000000000001E18
          1220E9B580FCB88B64CD0806040A271A10355D3E2879895D3FB0906140C27C52
          35AC432716701D11093400000004000000010000000000000000000000000000
          0000A97E55B353402D5A00000000000000000000000000000001000000020000
          0002000000020000000100000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE070000FE070000FF030000FF030000FF810000FF810000FE810000C001
          000080010000000100008001000080010000800100008003000080030000CE0F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000100D0A105C4C3D5FB9987BBEE4BC97EAEEC49FF5EEC49FF5E4BC
          97EAB9987BBE5C4C3D5F100D0A10000000000000000000000000000000000000
          000030271F32B69477BCF9CCA5FFFAD1ACFFFCD4B0FFFDD6B4FFFDD6B4FFFCD4
          B0FFFAD1ACFFF9CCA5FFB69477BC30271F320000000000000000000000003027
          1E32D0A884D9F8CDA8FFFBD5B3FFFCD8BAFFFBDBBEFFFBDCC0FFFBDCC0FFFBDB
          BEFFFCD8BAFFFBD5B3FFF8CDA8FFD0A884D930261E32000000000B09070CB38E
          6DBCF6C79EFFF8CFABFFF9D3B2FFF9D8BAFFFADBC0FFFADDC3FFFADDC3FFFADB
          C0FFF9D8BAFFF9D3B2FFF8CFABFFF6C69EFFB38E6DBC0B09070C5843315EF0BB
          8CFFF4C297FFF5C79FFFF6CAA5FFF6D0ADFFF7D3B2FFF7D4B5FFF7D4B5FFF7D2
          B2FFF6D0ADFFF6CAA5FFF5C79FFFF4C297FFF0BB8CFF5843315EAF855EBFEDB4
          80FFF0B785FFF0BA8AFFF1BC8FFFF1BF93FFF2C297FFF2C399FFF2C399FFF2C2
          97FFF1BF93FFF1BC8FFFF0BA8AFFF0B785FFEDB481FFAF855EBFD0996AEAE9AB
          73FFEAAD74FFEAAD76FFEBAE78FFEBAE7AFFEBB07AFFEBAF7BFFEBAF7AFFEBAF
          79FFEBAE7AFFEBAE78FFEAAD76FFEAAD74FFE9AB73FFD0996AEAD19763F5E3A1
          65FFE3A166FFE3A165FFE3A166FFE5A56EFFE6AB77FFE7AF7CFFE7AF7CFFE6AA
          77FFE5A56EFFE3A166FFE3A166FFE3A166FFE3A165FFD19763F5CA8A57F5DD97
          59FFDD9658FFDC9658FFE0A16AFFE4AC7BFFE4AE7EFFE4AF7FFFE4AF7FFFE4AE
          7EFFE4AC7CFFE0A16AFFDC9658FFDD9658FFDD9758FFCA8A56F5BA7B48EAD58E
          50FFD68E4EFFDA9C64FFE1AE7FFFE1AE80FFE1AD7FFFE1AD7FFFE1AD7FFFE1AE
          7EFFE1AE7FFFE1AE80FFDA9C63FFD68E4EFFD58E4FFFBA7B49EA925C34BFCB83
          46FFD18B4BFFDDA97BFFE0B389FFE0B187FFE0B288FFE0B187FFE0B188FFE0B2
          87FFE0B188FFE0B38AFFDDA97BFFD18A4BFFCB8347FF925D34BF472B175EC075
          3CFFCC8749FFE0B691FFE0B794FFE0B793FFE0B793FFE0B793FFE0B793FFE0B7
          93FFE0B793FFE0B794FFE0B691FFCC8749FFC0753BFF472B165E0905030C884E
          26BCC2793FFFDFB995FFE3C0A2FFE2BF9FFFE2BF9FFFE2BF9FFFE2BF9FFFE2BF
          9FFFE2BF9FFFE3C1A2FFDFB995FFC27A3FFF884E25BC0905030C000000002516
          0B32A05F34D9D3A17AFFE9CFB8FFEAD1BAFFE9CEB7FFE8CDB6FFE8CDB6FFE9CF
          B7FFEAD1BAFFE9D0B8FFD3A17BFFA06034D925160B3200000000000000000000
          000026180E32936444BCD9AE92FFE8CEBCFFEDD9C9FFF0E0D2FFF0E0D2FFEDD9
          C9FFE8CFBCFFD9AE92FF936444BC26180E320000000000000000000000000000
          0000000000000D0906104C38295FA38470BED1B4A2EADCBEADF5DCBEADF5D1B4
          A2EAA38470BE4C38295F0D090610000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000010101041515153F32323292444444C8505050EB505050EB4444
          44C8323232921515153F01010104000000000000000000000000000000000000
          0000080808192E2E2E90505050EE585858FF5B5B5BFF5D5D5DFF5D5D5DFF5B5B
          5BFF585858FF505050EE2E2E2E90080808190000000000000000000000000707
          0719343434AD535353FF585858FF5D5D5DFF616161FF636363FF636363FF6161
          61FF5D5D5DFF585858FF535353FF343434AD0707071900000000010101032525
          2590474747FF4F4F4FFF555555FF5C5C5CFF606060FF636363FF636363FF6060
          60FF5C5C5CFF555555FF4F4F4FFF474747FF25252590010101030C0C0C3E3636
          36F13D3D3DFF434343FF494949FF4E4E4EFF525252FF555555FF555555FF5252
          52FF4E4E4EFF494949FF434343FF3D3D3DFF363636F10C0C0C3E181818932C2C
          2CFF2F2F2FFF333333FF363636FF393939FF3C3C3CFF3E3E3EFF3E3E3EFF3C3C
          3CFF393939FF363636FF333333FF2F2F2FFF2C2C2CFF18181893191919C82121
          21FF222222FF242424FF252525FF242424FF242424FF242424FF242424FF2424
          24FF242424FF252525FF242424FF222222FF212121FF191919C8161616EC1818
          18FF181818FF181818FF181818FF242424FF303030FF383838FF383838FF3030
          30FF242424FF181818FF181818FF181818FF181818FF161616EC111111EC1212
          12FF111111FF121212FF2B2B2BFF444444FF484848FF484848FF484848FF4848
          48FF444444FF2B2B2BFF121212FF111111FF121212FF111111EC090909C80B0B
          0BFF0A0A0AFF282828FF4E4E4EFF4F4F4FFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
          4DFF4F4F4FFF4E4E4EFF282828FF0A0A0AFF0B0B0BFF090909C8040404960505
          05FF0A0A0AFF4C4C4CFF5F5F5FFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
          5CFF5C5C5CFF5F5F5FFF4C4C4CFF0A0A0AFF050505FF04040496010101450000
          00F60C0C0CFF6C6C6CFF707070FF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF707070FF6C6C6CFF0C0C0CFF000000F601010145000000060000
          00A1090909FF747474FF868686FF828282FF828282FF828282FF828282FF8282
          82FF828282FF868686FF747474FF090909FF000000A100000006000000000101
          01270A0A0AC85E5E5EFFA7A7A7FFA7A7A7FFA3A3A3FFA2A2A2FFA2A2A2FFA3A3
          A3FFA7A7A7FFA7A7A7FF5E5E5EFF0A0A0AC80101012700000000000000000000
          00000404042B262626B2828282FFB3B3B3FFBFBFBFFFC7C7C7FFC7C7C7FFBFBF
          BFFFB3B3B3FF828282FF262626B20404042B0000000000000000000000000000
          0000000000000303030E1D1D1D5B606060BA969696E7A5A5A5F4A5A5A5F49696
          96E7606060BA1D1D1D5B0303030E000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000D0D0D104E4E4E5F9E9E9EBEC3C3C3EACCCCCCF5CCCCCCF5C3C3
          C3EA9E9E9EBE4E4E4E5F0D0D0D10000000000000000000000000000000000000
          000028282832969696BCD1D1D1FFD8D8D8FFDCDCDCFFDEDEDEFFDEDEDEFFDCDC
          DCFFD8D8D8FFD1D1D1FF969696BC282828320000000000000000000000002727
          2732A8A8A8D9D2D2D2FFDBDBDBFFDEDEDEFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFDEDEDEFFDBDBDBFFD2D2D2FFA8A8A8D927272732000000000909090C8C8C
          8CBCCCCCCCFFD8D8D8FFD9D9D9FFDBDBDBFFDCDCDCFFDEDEDEFFDEDEDEFFDCDC
          DCFFDBDBDBFFD9D9D9FFD8D8D8FFCCCCCCFF8C8C8CBC0909090C4242425EBABA
          BAFFCDCDCDFFD0D0D0FFD2D2D2FFD4D4D4FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD4D4D4FFD2D2D2FFD0D0D0FFCDCDCDFFBABABAFF4242425E818181BFBABA
          BAFFC5C5C5FFC5C5C5FFC7C7C7FFC8C8C8FFC9C9C9FFCACACAFFCACACAFFC9C9
          C9FFC8C8C8FFC7C7C7FFC5C5C5FFC5C5C5FFBABABAFF818181BF959595EAB5B5
          B5FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFB9B9B9FFB8B8B8FFB8B8B8FFB5B5B5FF959595EA929293F5ADAD
          ADFFACACACFFACACACFFACACACFFB1B1B1FFB5B5B5FFB8B8B8FFB8B8B8FFB5B5
          B5FFB1B1B1FFACACACFFACACACFFACACACFFADADADFF929293F589898AF5A2A2
          A2FFA1A1A1FFA1A1A1FFABABABFFB5B5B5FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB5B5B5FFABABABFFA1A1A1FFA1A1A1FFA2A2A2FF89898AF57D7D7DEA9696
          96FF989898FFA4A4A4FFB3B3B3FFB4B4B4FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
          B3FFB4B4B4FFB3B3B3FFA4A4A4FF989898FF969696FF7D7D7DEA5F5F60BF8989
          89FF929292FFAEAEAEFFB6B6B6FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5
          B5FFB5B5B5FFB6B6B6FFAEAEAEFF929292FF898989FF5F5F60BF2D2D2D5E7878
          7AFF898989FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFB9B9B9FFB8B8B8FF898989FF78787AFF2D2D2D5E0505050C5050
          52BC7A7A7BFFB8B8B8FFC1C1C1FFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
          BEFFBEBEBEFFC1C1C1FFB8B8B8FF7A7A7BFF505052BC0505050C000000001616
          1632616162D9A1A1A1FFCFCECEFFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFCDCD
          CDFFCFCFCFFFCFCFCEFFA1A1A1FF616162D91616163200000000000000000000
          000018181832646464BCAFAEAFFFCECECEFFD7D7D7FFDEDEDEFFDEDEDEFFD7D7
          D7FFCECECEFFAFAFAFFF636464BC181818320000000000000000000000000000
          000000000000090909103636365F828282BEB2B3B3EABEBEBEF5BEBEBEF5B2B2
          B3EA828282BE3636365F09090910000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001C1D1D36323434856A6E6FF5575858F55656
          56F55B5B5BF5636363F56E6F6FF5808484F55E6061BF2D2E2F4D000000000000
          00000000000000000000000000005D5E5FB9616161FF616161FF797979FF9090
          90FFA9A9A9FFBCBCBCFFC8C8C8FFCAC9C9FFBDBDBCFF7E8080FF000000000000
          0000000000000000000000000000565656ADC8C8C8FF6B6B6BFF848484FF9595
          95FFA8A8A8FFBDBDBDFFD4D4D4FFE9E9E9FFFFFFFFFF808080F6000000000000
          00000000000000000000000000004F4F4FADE9E9E9FFBFBFBFFF6D6D6DFFA0A0
          A0FFB2B2B2FFC6C6C6FFDCDCDCFFEAEAEAFFFFFFFFFF8F8F8FF6000000000000
          00000000000000000000000000004E4F4FADCCCCCCFFE9E9E9FFAEAEAEFF7E7C
          7AFFC6C3BFFFD6D6D6FFE9E9E9FFF4F4F4FFFFFFFFFF979797F6000000000000
          0000000000000000000000000000534F4BAABFBDBAFFCECCC9FFE6E2DDFF8994
          A3FF778EA8FFB8B5B1FFC0C0C0FFD3D3D3FFF4F4F4FFA4A4A4FF0C4E94CE2369
          A7D63D79ACD65B86ABD0010C1A2933425BB97B8BA2FF6386B2FF4778B4FF286A
          BCFF173467B9181817299DA3A3D09A9E9FD6959595D6747474CE2D88CFFF69CF
          F9FF42A8E6FF3193D8FF2886CFFF1E7CCCFF1A7ACDFF1E82D6FF2492E5FF2CA1
          F3FF001F5FAA00000000000000000000000000000000000000003A90CFF68FEB
          FFFF6ADBFFFF61D6FFFF55D2FFFF4CCDFFFF43C6FFFF3EC1FFFF3BBCFFFF35B1
          FCFF022864AD0000000000000000000000000000000000000000479AD7F6A8F3
          FFFF79E1FEFF6DDAFEFF5ED4FEFF53CEFEFF4BC8FEFF43C2FEFF3DBEFFFF3FB8
          FBFF042F6BAD000000000000000000000000000000000000000049A0DDF6C8FE
          FFFF94EDFFFF83E6FFFF6FDEFEFF5FD7FEFF55D1FEFF51CEFFFF4DCBFFFF57C7
          FDFF02326FAD00000000000000000000000000000000000000004EADEAFF96D7
          F6FFA2E2FAFFA9EBFCFFAAF1FFFFA1F0FFFF8BE4FFFF72D4F9FF5BC1F1FF46A4
          E0FF1F5488B90000000000000000000000000000000000000000213A484D3E85
          AFBF60B3E4F552A9E1F54CA2DDF54A9FD9F5449BD6F5419BD4F552A0D3F51C47
          6A8518252F360000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000F8000000F8000000F8000000F8000000F8000000F800
          000000000000001F0000001F0000001F0000001F0000001F0000001F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000E0000006200000009000000000000
          00000000000000000000000000000000000000000000000000000303031E0707
          074700000000000000000101010A030303AD020202FF00000083000000000000
          00000000000000000000000000000000000000000000000000000D0E0E691C1C
          1CF107070744010101080B0B0BB00B0B0BFF070707E701010141000000000000
          0000000000000000000000000000000000000000000000000000171A1BAA2626
          26FF1E1E1EE6151515C1171717FF111111E70303033900000000000000000000
          00000F0C0912604D3E789A7D66C4A38269D6A5846AD4836C5ABE393735ED2C2D
          2DFF292929FF242424FF1C1C1CE9050505360000000000000000000000002820
          1830AD8B6ED1E6CBB4FFF8E9DCFFFFF7EFFFFFFEF4FFC5B9AFFF383737FF3637
          37FF323232FF2D2D2DFF252525E909090943000000000000000016100C19B68D
          68D5F6DDC7FFFFF0E1FFFFF1E5FFFFF0E4FFFFF7EAFFA19A94FF404141FF4444
          44FF3E3E3EFF383839FF333333FF2B2B2BF3090909350000000076553789ECC5
          A1FFFDE4CDFFFDE8D4FFFFECDDFFFFEEE1FFFEEDDFFF787572FF515252FF4F50
          50FF464749FF444546F42B2C2DB1121212500303031100000000C39060DCF7D5
          B6FFFBDFC5FFFDE6D1FFFFEAD9FFFFF0DFFFE0D0C3FF656565FF5A5B5CFF6E6C
          6AFF9D8E81FF7D6552C600000000000000000000000000000000D8A472F0FAD9
          BBFFFADABFFFFDE3CCFFFFE7D4FFFFEFDBFFCABBB0FF827F7CFFB9AA9EFFEDD1
          B9FFFFDFC2FFA7805FD200000000000000000000000000000000D9AA7CF1FBE2
          CBFFFADDC3FFFCE1C9FFFEE4CEFFFEE4CEFFF8DFCAFFF6DEC8FFFFE7CEFFFFE2
          C8FFFDE4CDFFA98363D600000000000000000000000000000000CCA075E1FAE4
          D0FFFDE8D6FFFDE9D9FFFEEADAFFFEEADAFFFFEBDBFFFFECDCFFFDE9D9FFFEEA
          D9FFF6E0CBFFA17D5EC5000000000000000000000000000000008B6B4D99F5D9
          BEFFFDEEE1FFFDEDDFFFFEEFE2FFFEEFE3FFFEEFE3FFFEEFE2FFFDEDE0FFFFF1
          E5FFEBCBAEFF644D397700000000000000000000000000000000251E1728D6AF
          8BE7FCEFE2FFFEF4ECFFFEF2E8FFFEF1E7FFFEF1E7FFFFF2E8FFFFF6EDFFFAE9
          DAFFB8916ED1130F0C1600000000000000000000000000000000000000004034
          2945D4B08EE5F6E0CCFFFDF2E8FFFFF9F5FFFFF9F4FFFCF1E6FFF2D9C0FFBD98
          72D22A221A2F0000000000000000000000000000000000000000000000000000
          0000231D17268C705599CEA985E0DDB58FF1DCB48CF1C59F7ADA7A5F45891611
          0D18000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFF80000FF300000FF000000FF010000C003000080030000000100000001
          0000000F0000000F0000000F0000000F0000000F0000000F0000801F0000C03F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000040404220A0A0A700A0A0AB0070808D4060606EB030405EB0203
          04D4030303B00404047001010122000000000000000000000000000000000202
          020A121212801A1A1BEB282727FF403E3DFF535252FF5E5C5CFF5D5B5AFF4E4C
          4CFF363432FF181717FF070708EB050505800101010A00000000040404142222
          22B24A4848FF918C87FFCCC3BCFFEADFD7FFEFD2B0FFEEBF86FFECBD83FFECCD
          ABFFE8DCD3FFC7BCB4FF867E79FF33312FFF0C0C0CB2020202142424248D8C89
          86FFE7DFD9FFFFF9F2FFFFF7F3FFF3D8B7FFE1A558FFDB9E4FFFD99B4CFFD89A
          4BFFEECFABFFFFF3ECFFFFF5EAFFE1D6CDFF77726EFF0F0F0F8D3E3D3D75FFFF
          FAFFFFFAF5FFFAF4EFFFFAF4F0FFEBBF88FFE3A95EFFE2A961FFDEA559FFDA9D
          4DFFE1B176FFF8EFE8FFF7EDE6FFFDF2EAFFFFF6EEFF32302F7543434275FFFF
          FFFFFFFDFBFFFBF8F5FFFBF9F6FFEEC18AFFF1CD9FFFF3DBBBFFE3AB64FFDEA1
          53FFE4B67DFFF9F4F0FFF9F2EDFFFEF7F1FFFFFAF4FF373635753636368DA3A2
          A2FFEEEDEDFFFFFFFFFFFFFFFFFFFAE3C6FFF3C993FFF1CC9BFFE7AC62FFE5AA
          5EFFF5DDBFFFFFFFFFFFFFFFFDFFEAE5E2FF8F8C8BFF2222228D080808144848
          48B27C7C7CFFB3B3B2FFE0E0E0FFF6F7F8FFFAE6CBFFFBD29FFFFAD2A1FFF8E3
          CAFFF5F4F4FFDBDADAFFA8A7A6FF656565FF333334B205050514000000000404
          040A37373780616161EB707070FF828283FF919296FF999C9FFF989A9DFF8C8E
          91FF797A7AFF636363FF4F5050EB2C2C2C800303030A00000000000000000000
          0000000000000F0F0F22333333704C4C4CB0585858D45F5F5FEB5D5D5DEB5454
          54D4464646B02D2D2D700D0D0D22000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000E00700008001000000000000000000000000
          000000000000000000000000000080010000E0070000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000004083E0019307C001A2C77001D2C7700202C7700222C7700222C770021
          2C77001F2C77001C2C77001C307C000A13520000000000000000000000000000
          00000E2B39865CDEFFFF42D0FFFF28C7FFFF17C3FFFF0CC0FFFF08BEFFFF07BD
          FFFF07BBFFFF09BBFFFF09C1FFFF0A5A7EBA0000000000000000000000000000
          00000A171C5C9FF2FFFF6CD0FFFF44B3FEFF36B5FEFF1DB7FFFF0BB1FFFF0BA4
          FDFF0999FDFF01A0FFFF00B6FFFF083A52940000000000000000000000000000
          00000105073089DBFFFF91CFFFFF71C0FCFF4BC1FBFF2CCBFDFF0BC4FDFF03A8
          F8FF0089F4FF046DF2FF02A0FFFF041A26650000000000000000000000000000
          00000000000E6BAFD7E9A7D5FFFFBEDCF9FFC6E2F9FFD9F4FFFFD6F4FFFFB5D9
          F6FF7BB2EBFF2363E7FF0178FFFF02080C390000000000000000000000000000
          000000000000427CA5C4B6DDFFFFF7EFF6FFF5F0F8FFFFFDFFFFFFFFFFFFF1EA
          F5FFE1D4E4FF809DE5FF005FE8F0000102120000000000000000000000000000
          000000000000091C2C2E3A5C7C7EF8F0F7FFF7F2F9FFFFFDFFFFFFFFFFFFF4EB
          F5FFE0D4E4FF425F93A108223D3D000000000000000000000000000000000000
          000000000000000000000B0F1314C9D8EBF1A9DFFCFF79DEFEFF4CD2FEFF5BC0
          F7FF8CB3E9FF131F383E00000000000000000000000000000000000000000000
          000000000000000000000000000073A1C3C56ED0FEFF3BCFFEFF00BEFDFF00A3
          F9FF0666DEED02060E1000000000000000000000000000000000000000000000
          00000000000000000000000000004C718A8C6CCFFDFF33CDFEFF00BEFDFF009F
          F8FF0A50B2BF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000002537434493D8FCFF8FE2FEFF77DEFEFF4BB4
          F6FF0F3979820000000000000000000000000000000000000000000000000000
          0000000000000000000000000000090A0C0DDCDAE3EAFFFEFFFFFFFFFFFFF1EA
          F4FF232832370000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000ACADB6BCFFFDFFFFFFFFFFFFCCCB
          D8E1040405060000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006F747D81BEECFEFFB5EBFEFF8B95
          A5AC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000283B42431FCBFDFF00BBFBFF183F
          666B000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000080E11111D83D4D50780E8EA0616
          2729000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C0030000C0030000C0030000C0030000C0030000E0030000E0070000F00F
          0000F80F0000F81F0000F81F0000F81F0000FC1F0000FC3F0000FC3F0000FC3F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000002E19093C77431996A86325CBC6762CE9C57329E9A65E
          1FCB733E14962B16073C00000000000000000000000000000000000000000000
          00000E08031178471D94E09449FAF3B46EFFF4C791FFF3CDA0FFF3CA9DFFF2BF
          86FFF0A85BFFDB8432FA703C13940C0602110000000000000000000000000E09
          04119A612EB6F2B36DFFF7D7B1FFEFEAE4FFEAEEF3FFE7EEF6FFE5ECF4FFE3E7
          ECFFE6DFD8FFF0C799FFED9C48FF8D4E1AB60C06021100000000000000007F52
          2894F4BA78FFF7E4CCFFF0F4F8FFEDEFF1FFEAE4DEFFE7D9CCFFE4D6C9FFE4E1
          DDFFE1E4E8FFE0E4E9FFEDD1B0FFED9D49FF713C1394000000003322113AE9AD
          68FAF9E1C1FFF4F7FBFFF2F5F8FFEEE1D4FFE29F5EFFDE934BFFDC8E44FFDC9A
          5CFFE4DDD6FFE2E4E7FFE0E5EAFFF0C89BFFDC8533FA2A16073A89613697F8CD
          97FFF9F6F1FFF6F8FAFFF5F6F6FFF2F1F0FFE7B582FFE09246FFDD8D40FFE1B2
          84FFE8E9E9FFE6E6E7FFE2E4E7FFE6E1D9FFF0A95EFF753F1597C08F56CDFBE0
          BCFFFAFCFFFFF9F9F9FFF8F7F7FFF6FBFFFFEDCBA9FFE2964AFFE09449FFE7CC
          B2FFEBF0F5FFE8E8E8FFE5E6E6FFE5E8EBFFF2C189FFA96022CDDEAC6EE9FCE8
          CDFFFCFEFFFFFBFBFAFFF9F9F9FFF8FEFFFFEFCFAEFFE59C51FFE39A50FFEACE
          B2FFEEF1F6FFEBEBEBFFE8E8E8FFE6EBF0FFF3CC9EFFC6772CE9E1B073E9FDEA
          D0FFFEFFFFFFFCFCFCFFFBFDFDFFF8F1E9FFECBA83FFE7A45BFFE59F55FFECD1
          B6FFF0F4F8FFEEEEEEFFEBEBEBFFE9EDF3FFF4CFA1FFC8792FE9C79C66CDFDE5
          C5FFFFFFFFFFFEFEFEFFFDFEFFFFF9F0E6FFEFC291FFEBB173FFE8A55EFFEED4
          B8FFF3F7FBFFF1F1F0FFEDEEEEFFECEFF2FFF4C791FFAC6828CD93734997FBDA
          ADFFFFFCF9FFFFFFFFFFFEFEFEFFFCFDFDFFF7E4CFFFF2D4B1FFF2D4B4FFF4EC
          E3FFF4F6F7FFF2F2F2FFEFF1F4FFF1ECE5FFF3B46DFF7B481C97382C1C3AF4CA
          90FAFDECD5FFFFFFFFFFFFFFFFFFFBF3E8FFF0BD80FFEEB26DFFEEB87CFFF6EB
          DFFFF7F8FAFFF4F4F6FFF3F6FAFFF7D7AFFFE2984AFA2E1B0B3A000000009072
          4A94FAD6A4FFFEF2E2FFFFFFFFFFFFFFFFFFFBEEDEFFF6D8B4FFF4D3ADFFF9F2
          EBFFF9FBFEFFF7FBFEFFF9E4CBFFF3B46AFF7D4E23940000000000000000110D
          0811B18E5DB6FBD6A3FFFDEBD3FFFEFBF7FFFFFFFFFFFFFFFFFFFEFFFFFFFDFF
          FFFFFBF7F2FFFBE0BDFFF5BA73FFA06A34B60E09041100000000000000000000
          0000110D081190724A94F4C98EFAFAD9AAFFFCE3C2FFFDE8CDFFFDE7CAFFFBDE
          B8FFF9CC92FFEDB068FA855A2E940F0904110000000000000000000000000000
          000000000000000000003A2D1C3C92724A96C59C65CBE3B174E9E2AF6EE9C192
          58CB8D6639963726143C00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F00F0000C003000080010000800100000000000000000000000000000000
          0000000000000000000000000000000000008001000080010000C0030000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000CD82
          46FFCC7F42FFC97B3DFFC77738FFC57333FFC36F2FFFC16C2BFFBF6A28FFBE67
          25FFBD6523FFBC6421FFBB621FFFBB621FFFBB621FFF0000000000000000EEAF
          77FFFFEDCAFFFFE9C4FFFFE8C1FFFFE6BEFFFFE6BCFFFFE4B9FFFFE3B6FFFFE2
          B3FFFFE1B0FFFFE0ADFFFFDEAAFFFFE5B2FFBB621FFF0000000000000000EEB0
          78FFFFE9CBFFFFE6C5FFFFE5C2FFFFE3BEFFFFE2BBFFFFE0B8FFFFDEB5FFFFDE
          B1FFFFDCAEFFFFDAABFFFFD9A7FFFFDFADFFBB6320FF0000000000000000EFB1
          7AFFFFEDD3FFD7AC75FFE7BB80FFE1B986FFC6A178FFA58360FF9D7C5AFFAB8D
          69FFD4B58CFFF9D8ACFFFFDCAEFFFFE2B3FFBC6522FF0000000000000000EFB3
          7DFFFFF1DCFFD4A35BFFD6BC9DFFB58858FFBD772EFFCC8A36FFCD9947FFA081
          4AFF715636FFB39872FFF8D9AEFFFFE5BAFFBE6725FF0000000000000000F0B6
          82FFFFF3E1FFDCA44CFF9D6623FFDA8F2FFFF59C35FFE59438FFEAA03FFFFFCD
          5FFFDCBD75FF7C603EFFD1B38CFFFFE8C1FFBF6A28FF0000000000000000F1B9
          87FFFFF4E5FFDFB97DFFF9B134FFEFA02CFFB37022FFB79471FFD6B48FFFC080
          38FFDFAC53FFA88753FFB2926DFFFFEAC7FFC16D2DFF0000000000000000F2BD
          8DFFFFF5E8FFF0E2CDFFE7B44BFFEEA62AFFBE7724FF9B5E20FFA36523FFB36F
          2BFFB97128FFA2672AFF9B795AFFFFEDCEFFC37132FF0000000000000000F3C2
          93FFFFF6EBFFEDE0CCFFEAD3A2FFF5C244FFCC8A23FFE2A95CFFE7B16AFFD38A
          30FFF9A036FFC88232FFA4876CFFFFEED1FFC67638FF0000000000000000F4C6
          9BFFFFF8EFFFE2D1B8FFECD5A1FFF7E2A7FFC19B42FF997853FFB79261FFD18C
          29FFF7A534FFAE7A3DFFDBC5A9FFFFEFD5FFC97C40FF0000000000000000F5CB
          A3FFFFFAF2FFFFF7EDFFE3D3B1FFF0DBA1FFF5DC86FFD7B03DFFDFA329FFF0A9
          2BFFD6973AFFC3A57EFFF8E5CCFFFFF0D7FFCD8349FF0000000000000000F7D0
          ABFFFFFBF5FFFFF9F1FFFDF5ECFFDECDABFFE3D091FFE9D26BFFE8BD45FFE6B7
          4AFFC5A67AFFE4CEABFFE4C99EFFFFF1D9FFD18B51FF0000000000000000F8D6
          B3FFFFFCF8FFFFFAF4FFFFFAF3FFFFF9F2FFF9F2E7FFF0E4D4FFEBDBC4FFEDD9
          B5FFE5CA98FFE4C792FFE9D2B3FFFFF1DBFFD6945DFF0000000000000000F9DB
          BBFFFFFDFBFFFFFBF6FFFFFBF5FFFFFAF5FFFFFAF4FFFFFAF3FFFFFAF3FFFFF8
          F0FFFFF7ECFFFFF3E6FFFFF1DEFFFFF2DEFFDB9D69FF0000000000000000FBE0
          C6FFFFFFFFFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFCFFFFFEFCFFFFFEFCFFFFFC
          F9FFFFFBF4FFFFF8EEFFFFF5E7FFFFF5E5FFDEA674FF0000000000000000FCE1
          C3FFFBE3C9FFFBE1C5FFFBDEC0FFFBDDBDFFFADBB9FFFAD9B6FFFAD7B3FFFAD6
          B1FFF9D4ADFFF9D3ABFFF8D0A7FFF8CEA4FFE4AD7AFF00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          0000800100008001000080010000800100008001000080010000800100008001
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000E00000014000000150000001700000018000000190000001B0000001C0000
          001E0000001F0000002000000021000000230000001C000000080000000BBF7F
          4DFFBE7E4CFFBE7D4BFFBD7D4AFFBD7C49FFBC7B49FFBC7B48FFBB7A48FFBB7A
          47FFBA7946FFBA7846FFB97846FFB97845FFB97744FF0000001C0000000CC181
          50FFF8DDC1FFFADDBFFFFBDFC1FFFCE1C3FFF9DBBDFFF0CEABFFECC8A4FFEBC6
          A3FFE9C4A0FFE8C29DFFE7BF9AFFE5BC97FFB87745FF000000210000000AC385
          54FFEFD1B4FFF9E1C6FFFFE9D0FFFFE9CEFFF2D4B4FFB87A47FFB77845FFB576
          43FFB47441FFB3733FFFB2713DFFB1703CFFB1703CFFB1703CFF00000008C589
          59FFFBE6D1FFF2D6BAFFF3D8BDFFFDE7CFFFEED0B2FFBD804EFFFFFFFFFFFFFF
          FFFFEEEEEEFFDEDEDEFFEEEEEEFFFFFFFFFFFFFFFFFFB1713DFF00000006C88B
          5DFFFFF1E1FFFFF0DEFFF8E2CDFFF1D6BCFFE7C5A7FFC18755FFFFFFFFFF9292
          92FF1C1C1CFF8C8C8CFFDEDEDEFFFFFFFFFFFFFFFFFFB47441FF00000005C98F
          62FFFFF4E8FFFFF3E5FFFFF3E4FFFDEDDAFFCA9C77FFC68D5DFFFFFFFFFF2A2A
          2AFFBFBFBFFF1F1F1FFFD9D9D9FFFFFFFFFFFFFFFFFFB77946FF00000004CB92
          66FFFFF7EDFFFFF5EAFFE9D1BAFFB58157FFB68359FFCB9464FFFFFFFFFF1414
          14FFD9D9D9FF050505FFD9D9D9FFFFFFFFFFFFFFFFFFBC7F4CFF00000003CD95
          69FFF6E9DDFFCBA281FFB57D51FFE2C9B4FFEEDBCAFFD09B6CFFFFFFFFFF1C1C
          1CFFD9D9D9FF0B0B0BFFD9D9D9FFFFFFFFFFFFFFFFFFC08553FF00000002C58C
          5FFFBD885EFFDDC0A8FFFCF7F1FFFFFBF7FFF2E4D6FFD4A173FFD39F70FF2525
          25FFCF996AFF121212FFCB9464FFC99161FFC78F5EFFC58C5BFF00000001CC98
          6FFFF9F2EBFFFFFDFBFFFFFDFBFFFFFDFAFFFBF6F0FFF2E5D9FFEEDECFFF2E2E
          2EFFEEDECFFFEEDDCEFFEEDDCEFFE7D1BEFFB97F50FF0000001000000001DBB0
          8DFFDAAF8BFFD8AD89FFD8AD88FFD6AB86FFD5A983FFD3A781FFD2A580FF3737
          37FFCFA17BFFCD9F78FF191919FFCA9A73FFC89870FF0000000B000000000000
          0000000000010000000200000002000000030000000400000005000000064141
          41FF0D0D0D450B0B0B45212121FF0000000B0000000900000003000000000000
          0000000000000000000000000000000000000000000000000000000000001919
          1955303030C0282828C00E0E0E55000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0000000FF87
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000E00000014000000150000001700000018000000190000001B0000001C0000
          001E0000001F0000002000000021000000230000001C000000080000000BBF7F
          4DFFBE7E4CFFBE7D4BFFBD7D4AFFBD7C49FFBC7B49FFBC7B48FFBB7A48FFBB7A
          47FFBA7946FFBA7846FFB97846FFB97845FFB97744FF0000001C0000000CC181
          50FFF8DDC1FFFADDBFFFFBDFC1FFFCE1C3FFFDE1C3FFFDE1C2FFFCE0C1FFFBDE
          BFFFF9DBBBFFF7D9B8FFF6D5B4FFF3D1B0FFBA7947FF000000210000000AC385
          54FFEFD1B4FFF9E1C6FFFFE9D0FFFFE9CEFFFFE8CDFFFFE7CCFFFFE7CBFFFFE6
          CAFFFFE5C8FFFDE3C5FFF7D8B9FFECC7A4FFBC7C49FF0000001F00000008C589
          59FFFBE6D1FFF2D6BAFFF3D8BDFFFDE7CFFFFFEBD3FFFFEBD2FFFFEAD1FFFFE9
          CFFFFDE4CAFFF3D4B4FFF0D0AFFFF8DCBFFFBE7E4DFF0000001D00000006C88B
          5DFFFFF1E1FFFFF0DEFFF8E2CDFFF1D6BCFFF6DDC5FFE9CDB1FFE9CDB2FFF6DC
          C2FFF0D2B5FFF7DEC4FFFFEBD3FFFFEAD1FFC08150FF0000001B00000005C98F
          62FFFFF4E8FFFFF3E5FFFFF3E4FFFDEDDAFFD1A987FF9D6130FF9D6130FFD0A9
          85FFFAE5CFFFFEECD7FFFFEED9FFFFEDD8FFC28453FF0000001900000004CB92
          66FFFFF7EDFFFFF5EAFFE9D1BAFFB58157FFB88961FFEEDBC9FFEEDBC8FFB685
          5DFFAF7B4EFFE3C3A3FFFBE6D0FFFDEDD9FFC48758FF0000001600000003CD95
          69FFF6E9DDFFCBA281FFB57D51FFE2C9B4FFFFF9F1FFFFF8F0FFFFF8EFFFFFF7
          EEFFDFC4ADFFA97042FFC1926AFFEDCFB2FFC78B5DFF0000001400000002C58C
          5FFFBD885EFFDDC0A8FFFCF7F1FFFFFBF7FFFFFBF5FFFFFAF4FFFFFAF4FFFFFA
          F3FFFFFAF2FFFBF3E9FFD5B498FFAA6E3FFFB77949FF0000001200000001CC98
          6FFFF9F2EBFFFFFDFBFFFFFDFBFFFFFDFAFFFFFDF9FFFFFCF9FFFFFCF8FFFFFC
          F8FFFFFCF7FFFFFBF6FFFFFBF6FFF6ECE2FFBC8355FF0000001000000001DBB0
          8DFFDAAF8BFFD8AD89FFD8AD88FFD6AB86FFD5A983FFD3A781FFD2A580FFD0A3
          7DFFCFA17BFFCD9F78FFCB9D76FFCA9A73FFC89870FF0000000B000000000000
          0000000000010000000200000002000000030000000400000005000000060000
          00060000000800000008000000090000000B0000000900000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0000000FFFF
          0000}
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
          2076696577426F783D2230203020343137203431372220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C672069643D224C6179657220312220786D6C3A73706163653D22707265
          7365727665223E262331333B262331303B3C6D657461646174612069643D2243
          6F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C672069
          643D225F323038373936373735383235362220786D6C3A73706163653D227072
          657365727665223E262331333B262331303B3C726563742066696C6C3D226E6F
          6E65222077696474683D2234313722206865696768743D22343137222F3E0D0A
          3C6720786D6C3A73706163653D227072657365727665223E202020203C706F6C
          79676F6E2066696C6C3D2223374444314542222066696C6C2D72756C653D226E
          6F6E7A65726F2220706F696E74733D223230382C333231203230382C33323120
          32382C313033203130312C313033203230362C323031203231332C3230312033
          31352C313033203338392C31303320222F3E0D0A0909093C2F673E0D0A09093C
          2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000D2D1D8004A41
          5A00231B34005E576C00FBFBFC00BCB2D500361E4A0020081C0027193600443B
          44004C211700461F180049221A005D2D2100693629006129180088839700433B
          55004039550069657E00FAFBFA00FFFFFF00D9D3DD00A89CB0008C81990080A3
          A90067665A00771C00005812000042160D00412116002E0F05009A96A600554E
          66003C3852008D8E9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0F3
          F50069A1A4004B413D00201414000B222600110E11002B323500DDDCE2008985
          9400635D6F009B98A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C3D6D80041818A00228C91002B6061003A2E2F005A626200E4E3E9007472
          8900605E7100EBEBED00FDFAFD00B2A5BA00C8C2CB00FCFCFC00FFFFFF00FFFF
          FF00FFFFFF00AED8D800328C8E0052595A006878730072605B009391A7005857
          6E008A889500FFFFFF00B9B0D2004A34630028192A0067606400D6D4D400FCFC
          FC00FFFFFF00CEE6E600407E7F00698988009B938E0039282500FBFBFE00A8A5
          B3008F8B9600FFFFFF00887CA70030233C001D1310001A1214001E171A008684
          8500F7F7F700E4F3F40052898B00819A9700797F7A00674B4400D9D9DF006E6E
          7D00908D9700FFFFFF0071667D001B0E21000F050800180506001E0B0A00170F
          120042383F00B3B9BF00569EA000608989008282800075757700D4D5DF00999B
          AA0083808D00DEDFE20077717800110609000B0104002308060029110E001516
          180013131600221B23003183880041757500808681006F7F8100FFFFFF00CBCC
          D20062677300B1B1B800676169000E0608000C0000001D282900285A5C002250
          55000F181B00352626005A9D9E0025A1A2003661610060565100FBFBFC00B7B8
          C20066697B00383850003A3150000B030D001D1611003F8B8A002D9CA000256D
          7400303B4100D9D3D40093A7A800204B500033566300407A8300FFFFFF00E3E2
          E9004E4D6900292D4100544D7500201032001C1D19002C5C5800216B70003166
          6A00433432009399A00086605700610A0000434045003A758200FFFFFF00F8F8
          FA00BAB9C40061647C00898D9E0063606400130F120020292900203E3D001D1B
          190017010000110C0F004F1E0B00832601004B1706002F0C0900FFFFFF00FFFF
          FF00FEFEFE00E0E0E800EDEDF300F3F3F300B8B9B9007B7C7D00313131001611
          1000191612001E1510002B1F1C00442B210058240F005D230C00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700E9E7E700C7C7
          C800999A9A006E767700516C6E00426E6F0042716D0040716E00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FEFEFE00FDFDFE00E8EBEC00B7C4C30093ADAA00769A9700}
        MaskColor = clBlack
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000030291F4BEEE9E1FFFBF8F4FFFAF7F3FFFAF6F2FFFCFAF5FFF4EE
          E6FFD2C4B7FFAD8C65FF66400EFF8E7E67FF9D998FFFF7F2EBFF000000000000
          00000000000000000000BAB8B3CAF9F4EDFFF7F2EAFFF9F3EBFFECE3D8FFC8B7
          A5FFB29676FF6D4816FF7B592CFFAD854CFFCCBFADFFFFFFFDFF000000000000
          000000000000000000006C6B697BF8F4ECFFFBF8F3FFE6DCD0FFC4B09DFFAD93
          7AFF86602EFF614116FFB58C56FFAF9B80FFFFFFFDFFFFF6EFFF000000000000
          0000000000000000000028282933F7F5F1FFE0D4C9FFBDA793FFA38A74FF9974
          46FF543408FFAF8953FF9F845EFFF9F6F2FFEFEDE7FFC7D5D0FF000000000000
          0000000000000000000002020304B0A295DEB79E87FF9D826CFF9F7E55FF5B39
          0AFF9C7847FF9D7C4EFFE8E4DEFFFFFEFAFFDBEEEDFF6BEAEEFF000000000000
          00000000000000000000000000006152449DA18670FFA18362FF6F4B1AFF815F
          31FFA37D49FFCFC6B9FFFFFEFBFFFAF4EDFFF7F1EAFF93F3F6FF000000000000
          0000000000000000000000000000231D1746A2866BFF876332FF66471BFFA881
          4BFFB5A48DFFFFFEFAFFF8F2EBFFF9F4EDFFFFF4EEFFBCF2F3FF000000000000
          000000000000000000000000000034302F5586653CFF5D3C0FFFA8814DFFA58E
          70FFFEFDFCFFFDFAF6FFFCF9F5FFFCF9F5FFFEF9F6FFE1F4F3FF000000000000
          00000000000000000000201F1F27B6A89AF656370EFF916D3BFF947549FFF5F2
          EEFFFDFAF8FFFAF5F0FFFAF5F0FFF9F3EEFFFBF5EFFFF5F3EEFF000000000000
          00000000000002010203A69B95CE634A2AFF825F2EFF906D3BFFD0C3B3FFFFFB
          F7FFF9F4EFFFFAF4EFFFFAF6F2FFFBF7F2FFFCF8F4FFFDF8F5FF000000000000
          000000000000716B688C857159FF644113FF9F7A48FFBAAC98FFFFFFFFFFFBF8
          F4FFFCF8F4FFFCF8F5FFFCF8F4FFFCF8F4FFFBF6F2FFFBF6F1FF000000000000
          000033303044A39281FF513107FFA88352FF34240E85C4C4C4C4FCF9F5FFFAF5
          EFFFFAF4EFFFF9F3EDFFFAF3EEFFFAF3EDFFFAF3EEFFFAF5F0FF000000000F0F
          0F13AA9C92E855370FFF9B7746FF5B4524AF0000000074737281FBF5F0FFFBF5
          F1FFFCF8F4FFFCF9F5FFFDFAF8FFFEFCFAFFFEFDFCFFFFFFFEFF000000000E0E
          0E0F8F8882F3887357FF7A5F3BC70000000A000000003030303DFAFAFAFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
          00003E3F3E735052517E02030309000000000000000002020207D2D2D2DDF3F3
          F3F8E7E7E7EFD5D5D5E1C0C0C0CDA9A9A9BA8F8F8F9F73737382000000000000
          00000000000000000000000000000000000000000000000000004B4B4B6E5252
          52702B2B2B430E0E0E2300000007000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000007000000180000002E0000003B0000003F0000
          0037000000270000001100000000000000000000000000000000000000000101
          01151C1C1C663A3A3A98555555C1636565D4695F5EDB6F6B69E1676969E16060
          60DC545454D7404040C8242424A30909096A0000002400000001121212287474
          74D78D8D8DFFA7A7A7FFAEAEAFFFB5AEACFF738F95FF848D90FFAAA4A3FF9798
          98FF939393FF7E7E7EFF7C7C7CFF6C6C6CFF242424B30000000E1212122A9595
          95EDB1B1B1FFB3B2B2FFADAEADFF988381FF28C6D5FF26A5BAFF997873FF999C
          9CFF959595FF878787FF828282FF7D7D7DFF2A2A2AA200000000000000006262
          62ACBABABAFFBEBEBEFF999999FFAC9F9FFF5FDEE0FF32D2EDFFAB908CFF8183
          83FF8D8D8DFF8E8E8EFF898989FF6C6C6CFF0A0A0A4600000000000000001212
          122B9C9C9CF2C7C7C7FFAAABABFFAFA3A4FFA8E1E0FF81E3E8FFCAB6B4FF9496
          97FF777777FF939393FF818181FF303030950000000000000000000000000000
          00001D1D1D397C7C7CD8A4A6A5FFB2A295FFB3D3D1FF5ED1E0FFD9C4B9FF9D98
          8BFF7E7E7EFF7F7F7FFD33333386000000000000000000000000000000000000
          0000000000000202020C3F3B346A7385B0F45793F8FF3786FEFF6C9AF3FF7A88
          AEFF454037B21212123100000000000000000000000000000000000000000000
          0000000000000000000015336F724692FBFB519CFFFF5C9DFFFF4A94FFFF4A90
          FFFF1E3979BF0000002700000000000000000000000000000000000000000000
          0000000000000D1A373D519AFCFF5DAEFFFF5AA9FFFF59A7FFFF58A2FFFF57A0
          FFFF5597FDFF172850A800000002000000000000000000000000000000000000
          000000000000295395975DB4FFFF62BDFFFF5FB7FFFF5DB0FFFF5AAAFFFF56A2
          FFFF5BA6FFFF3965B2E900000045000000000000000000000000000000000000
          0000000000002E67A0A057B0EAFF56B4E4FF5DC1F2FF65C9FFFF65C0FFFF60B7
          FFFF61B5FBFF254268FF000000AE000000080000000000000000000000000000
          000000000008101B24BC272A2FFF2D2E2EFF2D383BFF28434FFF458DAEFF3567
          87FF132130FF000001FF000000CE0000000D0000000000000000000000000000
          000000000017211F1CF462605EFF686665FF65605EFF58514DFF2E2827FF201B
          18FF1B1713FF020201FF0000008E000000000000000000000000000000000000
          000000000000040404583E3E3EE37C7C7CFF838383FF6E6E6FFF575757FF3535
          35F9161616E4020202980000000A000000000000000000000000000000000000
          000000000000000000000000002815151597313131DF2E2E2EEF141413C30000
          0060000000270000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000100200003311040050140500590D0300530000003D0000
          0018000300400003006400070060000000150000000000000000000000002412
          00416F3E069DA26218D0BA7B2FE1C88532EDD08C37F0CB7A13ECB76517DD9D62
          2BD1299A45E924AF47F30E6F19E80000001D0000000000000000592F0064E597
          33FFEDA547FFF2AA4FFFF8BC6CFFFABC6AFFE59B46FFAE7459FFD9C064FFC0AC
          5FFF4EC76BFF4CF78DFF188F2AF4000B006C000E005000020025532B0057EAA2
          45FBEEB365FFF4B970FFECB16EFFF1AC49FF9A5654FF2939C9FF3BD652FF25CB
          58FF45D86FFF4CE480FE34C95CFD29BB4FFF158925FA0002005E11070011CC86
          2FD8F2B873FFF7BE79FFDB9F5DFFFDCD6AFF785A9DFF293ECEFF4EEA61FF50FC
          98FF5AEE8BFF4AE47DFF52E986FF56EE88FF25A43EFA0000005500000000663C
          076CF5B463FFE5AA65FFF6BD7EFFFCC16BFF9291CEFF596CE8FFA2D36AFF8BA5
          4EFF58D371FF55FC93FF2AA23FF7193F19800A310D5C0002000E000000000000
          00008B521090E49D48FFFFBB6BFFFCBD5CFF7182E6FF6670D3FFFFC252FFF696
          33FF4CCE6DFF5BEF8DFF1C952DFB000000130000000000000000000000000000
          0000000000003922003991682CBF76ABC4FF3F9FFEFF49A5F8FF858979F94A26
          007208330F5113391563072B0953000000030000000000000000000000000000
          000000000000000D20202889D7D755B4FFFF6ABDFFFF67BDFFFF42B0FDFD0538
          65A9000000000000000000000000000000000000000000000000000000000000
          0000000A12253686C7DF75C5FFFF75C0FFFF7BC5FFFF78C2FFFF77C6FFFF4597
          D9FC00050B3F0000000000000000000000000000000000000000000000000000
          0000002A41783E96CFFF6CB6E9FF8AD1FFFF8FD2FFFF8ACFFFFF80CBFFFF57AC
          EFFF001125570000000000000000000000000000000000000000000000000000
          000001486799036EA2FF297EB0FFA1DEFBFFA7E1FFFF9CD9FBFF88CEFAFF5AAA
          EBFF000E214B0000000000000000000000000000000000000000000000000000
          0000004C6C9C008BBEFF0081B5FF2388B7FF2F90BEFF2283AFFF1779ABFF0F72
          A7FF0015216F0000000000000000000000000000000000000000000000000000
          000000304465008EC1FF0092C5FF0088BCFF0081B5FF007DB1FF007BAFFF006E
          9FFF001119490000000000000000000000000000000000000000000000000000
          00000003040700405B830088B9F4008EC1FF0088BBFF0082B5FF006D9BE7002A
          3E6E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000002B3F5E006F9CE10075A4F0004C6DA800111A2E0000
          0000000000000000000000000000000000000000000000000000}
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
          31303B203C672069643D2243616D61646120312220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C6D65746164617461206964
          3D22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C
          726563742066696C6C3D226E6F6E65222077696474683D223136303022206865
          696768743D2231363030222F3E0D0A3C6720786D6C3A73706163653D22707265
          7365727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D22
          6E6F6E6522207374726F6B653D222337444431454222207374726F6B652D7769
          6474683D22353122207374726F6B652D6D697465726C696D69743D2232322E39
          3235362220706F696E74733D2234322C333330203830372C333020313534392C
          33323920313534392C31323631203739332C313536382034332C313237312022
          2F3E0D0A3C706F6C79676F6E2069643D225F31222066696C6C3D227768697465
          2220706F696E74733D2234322C333330203830372C333020313534392C333239
          20313534392C31323631203739332C313536382034332C3132373120222F3E0D
          0A09093C2F673E0D0A3C706F6C79676F6E2066696C6C3D222337444431454222
          20706F696E74733D223532302C35303620313231392C32313820313531302C33
          3338203739342C36323020222F3E0D0A3C706F6C79676F6E2066696C6C3D2223
          3744443145422220706F696E74733D2238362C333434203334322C3433382031
          3035372C313630203830312C353920222F3E0D0A3C706F6C79676F6E2066696C
          6C3D22233744443145422220706F696E74733D223832382C3636392031353230
          2C33393720313533302C31323438203832342C3135323920222F3E0D0A3C706F
          6C79676F6E2066696C6C3D22233744443145422220706F696E74733D2237362C
          333935203332362C343930203333302C373039203335312C363939203337302C
          373236203339302C373139203431322C373337203432382C373331203435322C
          373633203435352C353431203737302C363634203737312C313533302036382C
          3132343320222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000080808091B1A191C0D0D0D0E080808090000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A67754C9D7803FFFB8682EFFD97B37FDA878
          54BD3F3A36410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C28150DAF48B3AFFF59346FFF79E5AFFFDA7
          62FFF59754FE916F579D0C0C0C0D000000000000000000000000020202034664
          7C7D45667D804562787F41536166BE8458D1FEA660FFFDB072FFF8AB6FFFFDB2
          75FFFDAB68FFEE8D45FF4D46405300000000000000000000000025292B2C009C
          FEFF00A1F5FF00A7F3FF008DE2FF4991AAFFF7A866FFFDB980FFF8BA8EFFF8BC
          8FFFFBB881FFF49044FF6B9F6BFA5275668D0A0A0A0B000000002022232400AD
          FEFF00C2FEFF0DC7FEFF1EB9F0FF11AAE3FF33A5CAFFD2AC89FFFAC79FFFF3A5
          76FFEFAD74FFDC9B58FF5AB082FF43BA89FF3D936DE0000000000707070826B9
          F0F123D4FEFF30D3FEFF2ECEFDFF2BC1F3FF1ABDEFFF4BA2BEFFEFB181FFF1A5
          64FFAE9D62FF61BF97FF68CFA7FF59C398FF38A978FC0000000000000000323D
          404137C8EBEC3BD9FEFF7CD4FEFF51CDFDFF20C9FBFFD59860FFFEC493FFFEBA
          76FFD5A25AFF85CBA9FF74C8A1FF54BB92FF42AB7FF300000000000000000000
          00001213131446A6C2C33AACFEFF1790FDFF439FC1C3DBB186F6FEDBB7FFFED8
          B1FFDDB076FF3C9468FF2B8856FF5E8B78AC3035333900000000000000000000
          0000171818192A9ED8DC05B8FEFF00A3FEFF3E525D5EC99973CAFED4A7FFFEE1
          C3FFCBB784FF2F9C69FF299960FF43534C600000000000000000000000000000
          00002A2E30311CCBFEFF4ADBFEFF20C6FEFF437482831A1A191B776B6078756F
          657D5AB58CFF7ACCA9FF59BC8EFF547265850000000000000000000000000000
          00002F37393A50DEFEFF9DEBFEFF81E4FEFF538B989900000000000000002D32
          303580D5B3FFB8EDD8FF9FE8CDFF5E7F728F0000000000000000000000000000
          00000909090A4FBAD2D391E8FEFF83D4E8E93641434400000000000000000404
          04056AA28CBB96ECCEFE85C2ACD02D312F330000000000000000000000000000
          000000000000010101021E202021030303040000000000000000000000000000
          0000000000000404040500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F87F0000F81F0000F80700000007000000010000000100000001
          000080010000C0010000C0030000C0030000C1830000C1830000E3EF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00002A28262C9E7457C1AE7B55CF846854A3926D51BB8F6C52AE756051801F1E
          1D20000000000000000000000000000000000000000000000000000000000000
          00008A6D5AA0CE7A3DFEDD813BFFC37033FECE7430FFEB8436FEDD7832FFDA88
          4AFA9D7A5EA31918181A00000000000000000000000000000000000000000000
          00008D705B9DE0823BFFF08839FFE88437FFFC9443FFF99549FFF59C56FFFEA7
          62FFF5914AFFE0955FEA5B4F4761020202030000000000000000000000000000
          00008469558DEE8639FEFC903DFFFD9D52FEFEA863FFF3A873FEFEAE6EFFFDAA
          68FEF9A262FFFCA159FEDC7534FF876A56920000000000000000000000000000
          00006A594D72F89548FFFEAE6EFFFEAC6AFFFCB57CFFF7A96EFFFDB275FFFEB4
          78FFFEAF6FFFFEAD6CFFED863AFF9E7456AA0000000000000000000000000000
          00001A19191CE4904DEDFEA965FFFDB67CFEFCB478FFFBAF74FEF3AF84FFF9B9
          85FEFCBE8BFFFAA562FEF48D3EFF957052A00000000000000000000000000000
          00000000000035312F37D29865DFFEBB83FFFEB980FFF9C6A0FFFAC7A5FFF8BD
          93FFFCBD8AFFEFA567FFF49246FF9A7152A00000000000000000000000000000
          00000000000000000000111111128F7B699AFCAE6FFEFCCCA3FEF9BA97FFF2A3
          73FEEFB582FFECA064FEDF9151EB39342E3D0000000000000000000000000000
          000000000000000000000000000001010102695F5579EBB185FFEAA679FFE99C
          63FFD1965CF45A53436C1818161A000000000000000000000000000000000000
          000000000000000000000000000014141416A57C5BC4F3B381FEF8B275FFF6A5
          5BFEDC8D42F00C0C0B0D00000000030303040000000000000000000000000000
          0000000000000000000000000000806A5890F1964EFFFEC18EFFFEC087FFFEB4
          69FFFD9E46FF322F293900000001000000010000000000000000000000000000
          000000000000000000000000000047423B50FEAA68FFFDD4B0FEFED8B2FFFDC7
          8FFEFEAF6AFF453E354C00000001000000010000000000000000000000000000
          00000000000000000000020203037564557CFEC597FFFED7ADFFFEE7CCFFFED7
          B0FFFEBC85FF524A405800000000000000000000000000000000000000000000
          000000000000000000000000000075635476FEBB84FFFDCC95FEFEE4C3FFFDE2
          C6FEFEC798FF534C425900000000000000000000000000000000000000000000
          00000000000000000000030304041919181ADEA678DFFECC9FFFFEDDBCFFFCD5
          AEFEA78E73AF0C0C0C0D00000000000000000000000000000000000000000000
          0000000000000000000001010102000000000C0C0C0D564F4957675E56683130
          2D34020202030000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C03F0000C00F0000C0030000C0030000C0030000C0030000E0030000F003
          0000F8070000F80B0000F8030000F8030000F00F0000F80F0000F00F0000F41F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000010000001B0303074E0709106D0C10197F14182288171C2387181E
          227E1014166B0404054800000022000000080000000000000000000000000000
          00000000012E263872F5354984FF3B4C7CFF4E6395FF6881AEFF819DC2FF9CC6
          DBFFA8CDE1FFE0E8EDFE1F232898000000140000000000000000000000000000
          00000001031F2B4083FF364A86FF3C4D7DFF4D6295FF6881ADFF829EC3FF9DC7
          DCFFABCFE3FFE9F1F5FF24282F7F000000000000000000000000000000000000
          00000001031F2A3E82FF354783FF3A497BFF4A5C90FF6379A8FF829EC3FF9DC7
          DCFFAACFE3FFE9F1F5FF24282F7F000000000000000000000000000000000000
          00000001031F293A7DFF32427EFF374478FF43538AFF6075A5FF829EC3FF9DC7
          DCFFAACFE3FFE9F1F5FF24282F7F000000000000000000000000000000000000
          00000001031F293678FF2F3B79FF333D74FF45568CFF6982AEFF829EC3FF9DC7
          DCFFABCFE3FFE9F1F5FF24282F7F000000000000000000000000000000000000
          00000101031F283173FF2C3573FF343E75FF566A9AFF738BB5FF89A4C7FF9FC9
          DEFFAACFE4FFE9F1F5FF24282F7F000000000000000000000000000000000000
          00000101031F38407AFE525E8AFF5B688DFF5A678DFF56648CFF58668DFF6070
          94FF7083A0FEB1BAC9FE21252D7E000000000000000000000000000000000000
          0000000000051C202EABA4A9B5FF8B90A2F436436CE537466FE936436CE73841
          5DE3AEAEB7FF6C7182E10202042C000000000000000000000000000000000000
          00000000000001010110ADB1BBFF69686CAF0000000000000000000000000606
          061FB2B2BBFF5A5A5C9900000000000000000000000000000000000000000000
          0000000000000101010BACB1BBFE6A6A6CAE0000000000000000000000000606
          061DB3B2BCFF6060629B00000000000000000000000000000000000000000000
          00000000000000000006AEB1BCFE696A6DB10000000000000000000000000606
          061DB4B5BEFF5757599600000000000000000000000000000000000000000000
          00000000000000000001ACAFB6EF94969BCE0000000000000000000000000B0B
          0B32B1B2BBFF4242438300000000000000000000000000000000000000000000
          000000000000000000006F6F70AD9DA2ABFE2D2C2D6F000000020101010F5251
          55AE88888DFF1313134100000000000000000000000000000000000000000000
          0000000000000000000005050521A1A6ACE6595863FF626372F05F606CF54344
          50FF4D4E4FB50000000100000000000000000000000000000000000000000000
          00000000000000000000000000000303031A4646478685878BC6808285BA2424
          266A000000050000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C0030000C0030000C0070000C0070000C0070000C0070000C0070000C007
          0000C0070000E38F0000E38F0000E38F0000E38F0000F00F0000F00F0000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000212A21D500DE00FF00DE
          00FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000031323145154315EA00DE00FF00DE
          00FF2E372E3B0000000000000000000000000000000000000000000000000000
          0000000000000000000008080809383D38AC037A04FF18ED18FF1DED1CFF13EA
          13FF12E112FF00DE00FF121212140C0C0C0D0D0D0D0E0C0C0C0D000000000000
          000000000000000000003F3F3F7A003200FF17C210FF11910CFF08B907FF0C97
          0BFD0F940AFF11B005FF021011FF157A9DE615B7D5E6266575CF000000000000
          0000000000000000000021251ED90A5F00FF298213ED11220EEF00B000FF3A78
          38A01D281ADF177700FF021011FF0073A9FF00C7F9FF296170CA021011FF0210
          11FF021011FF021011FF021011FF021011FF021011FF021011FF021011FF0210
          11FF021011FF021011FF021011FF0084B4FF00D2FFFF116582EC0084B4FF0084
          B4FF0084B4FF0084B4FF0084B4FF0084B4FF0084B4FF0084B4FF0084B4FF0084
          B4FF0084B4FF0084B4FF021011FF0089B6FF00D1FFFF126483EB0084B4FF0084
          B4FF0084B4FF0084B4FF0084B4FF0084B4FF0084B4FF0084B4FF0084B4FF0084
          B4FF0084B4FF0084B4FF021011FF0083B4FF00D2FFFF106584EE000000000000
          0000000000000000000010100F1228311DCD12B605FF21FF13FF21FF13FF00DE
          00FF36C92AD543623C6A021011FF0071A3FF00C9FAFF276070CD000000000000
          000000000000000000003C3A3C96006E00FF21FF21FF18DD18FF0DEB0DFF00DE
          00FF0000000000000000021011FF06789DF807C1E6F81D6375DB000000000000
          00000000000000000000282728CB0BB70BFF29EB29F1112C11F00EE80EFF00DE
          00FF0C4B0CFB00DE00FF00DE00FF1B1D1D201B1E1D201B1C1C1F000000000000
          000000000000000000002C2B2CC408AD08FF2CE52CEC121B12EB0EE80EFF0EE8
          0EFF0B4A0BFA00DE00FF00DE00FF000000000000000000000000000000000000
          000000000000000000003F413F78006500FF1FFF1FFF13B213FF0BCC0BFF099E
          09FF09CF09FF03D803FF2A302A34000000000000000000000000000000000000
          000000000000000000000909090A375337AF07AD07FF1DFF1DFF21FF21FF15FF
          15FF12DE12F84268427700000000000000000000000000000000000000000000
          00000000000000000000000000000000000031353144164F16EA0EE80EFF00DE
          00FF222622290000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000252E25CF0EE80EFF00DE
          00FF000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE3F0000FC1F0000F0000000F0000000F000000000000000000000000000
          0000F0000000F0300000F0000000F0070000F0070000F00F0000FC1F0000FE3F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000A3D5A3FFA3D5A3FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000A3D5A3FFA3D5A3FFCCEECCFFD0EDD0FFA3D5A3FF15140A1D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A3D5A3FFBCE7BCFFE6FFE5FFBDE4BDFFE6FFE5FFD4F0CFFFA3D5A3FF8082
          80FF00000000000000000000000000000000000000000000000000000000A3D5
          A3FFBDECBDFFE6FFE5FFB7E2B7FF95CA94FFB8DFB8FFE6FFE5FFD4F0CFFF8082
          80FF14B1ECFF00899E9E00000000000000000000000000000000A3D5A3FFBAF0
          BAFFE6FFE5FFB2E0B2FF95CA94FFC2E5C2FF95CA94FFB8E1B2FFE6FFE5FF8082
          80FF1B99DAFF21A5E4FF00A4C9C9000000000000000000000000A3D5A3FFE6FF
          E5FFABDEABFF95CA94FFC6EFC6FFECFFECFFE8F9E8FF95CA94FFB8E1B2FF8082
          80FF54BEEDFF3C98DDFF6DC7D6FFA3D5A3FF0000000000000000A3D5A3FFAEE2
          AEFF95CA94FFD1F9D1FFF1FFF1FFF5FFF5FFEFFFEFFFF4FFE7FF95CA94FF8082
          80FFC8FCFFFF54BEEDFF77DFE7FFD4F0D2FF9FCF9DFF00000000A3D5A3FF95CA
          94FFD1FFD1FFEDFFEEFF88B487FF96C695FFFFFFF9FFFFFFF9FF808280FFB2F0
          FCFFFFFDFFFFC8FCFFFF77DFE7FFCCEACBFFD4F0D2FF9FD09FFF95CA94FFD2FF
          D1FFD4FFD3FFE6FFE5FFCEF1CAFFE6FFE5FFFFFFF9FF808280FF78EDFFFFB6FC
          FFFFE0FFFFFFFFFFFFFF77DFE7FFE6FFE5FFCCEACBFF9DCC9DFB0000000095CA
          94FF95CA94FFDDFFCDFFE6FFE5FFFFFFF9FF808280FF36E7FFFF60E4FFFF8CEA
          FFFFB4F2FFFFC8FCFFFF77DFE7FFD3EDD2FFE6FFE5FF91C191EE000000000000
          00000000000095CA94FF95CA94FF808280FF00CDFFFF10D3FFFF48DDFFFF5BDF
          FFFF65E3FFFF96EBFFFFF6FDF6FF95CA94FFD3EDD2FF9CCF9CFF000000000000
          00000000000000000000004B616133DCFFFF24D2FFFF00CBFFFF04D3FFFF4FE0
          FFFFDBFAFDFFF6FDF6FFDAE9CBFFF7FEF4FF95CA94FF9DD19DFF000000000000
          0000000000000000000000000000000000000F7692922AD7FFFF5FDCE9FFDBFA
          FDFFFFFFFFFFFFFFFFFFFFFFFFFF95CA94FF95CA94FF00000000000000000000
          00000000000000000000000000000000000000000000000000000306040895CA
          94FFE4F3DBFFF6FDF6FF98CB98FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000095CA94FF95CA94FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F9FF0000E07F0000C03F0000800F00000007000000030000000100000000
          00000000000080000000E0000000F0000000FC010000FF070000FFCF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000115080A363D1E1C8849211CA7280C126E00000002000000000B15
          1F3F2C5379E1213C58A904070B18000000000000000000000000000000000000
          00001C0F0A389E7955E9D2C0A9FFCCB799FF87533CFA13040836000000001426
          386F378DBDFF3689BAFF111D2A58000000000000000000000000000000000A04
          041801000004140D0721705332AAD5C5ADFFA37B5FFE1505083C000000001B33
          4C923A9ACCFF377FABF2060A1022000000000000000000000000010100036E45
          2EC43A1119A000000000301D1056CAB392FFA1744FFF3C10139D010102072249
          6AB943A3D2FF2C5372BA0000000000000000000000000000000004030108AB95
          7BD7B69681FF68372ADBA0816AE8CBB496FFD6C1A9FFA7795AFF3F181DB63064
          90E851ABD6FF18293B710000000000000000000000000000000000000000745B
          41A7E5DFD4FFDBCFB9FFC0A787FAB5936EFAF6F6F7FFEFEAE0FFA67553FF5C4D
          5BFF4E87ADF2060D132600000000000000000000000000000000000000001A11
          082C7B5E3EB7765D41AC261A0D3F34221056AC8C6AEDEAE6DFFFE9E3D7FFA573
          52FF442A36D20101020800000000000000000000000000000000000000000000
          0000000000000000000000000000000000001F140733946F47D6E2D4C6FFE2D9
          C9FF996648FF2D0B107E00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001A1A1A4D907C62FFDECE
          B9FFDACDB7FF89543EFD1B060C51000000000000000000000000000000000202
          0207010101040000000000000000000000000000000015334F8E669EB9FF977C
          5CF0DACAB4FFCEB99DFF653125DF2D0D13802D0C127F1004072F1C1B1A427B78
          74D7676460C5201F1D4B0404030A0000000005090D1E3B79A1ED699CBEEC1513
          133A835E38C4CBB497FFCFB79FFFD0BCABFFC0A590FF5E2F2ACE72706CCDF0EE
          EDFFC7C5C2FFB8B7B5F5746F6AE14C48459C22374A9A68AED5FF2C4053880000
          000062402DA3DFD0BEFF99856DC4877052B8E2D8C6FF846252D29C9996F0FFFF
          FFFFC9C6C4FFF8F7F7FFC6C4C1FFA8A39EFF808D90FF628399E907090B1B140D
          0624CFBAA1F8C5AD98FF270E0A64000000009E805BDC5B44308D54524EA4A9A6
          A3F5A39F9BF9D6D3D1FFB0ADAAFFA19E9AFFE1DDD9FFA7A4A3F84846439E332A
          1F65A28665E5CEB89EFF6F3C35ED0E050626291B0E44160F0724010101040202
          02072928256095928DFEC2C0BDFFB9B6B3FFF0EEEDFFFFFFFFFFE1E0DEFF5756
          55B1100B071F47331D6C5C412792170C082F0000000000000000000000000000
          0000000000002322204D6A6763C485827EDB979591E28A8884D2474642880807
          0713000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C0870000C087000080870000100F0000000F0000800F0000800F0000FC0F
          0000FE0700009E0000000400000000400000000400000000000000030000E03F
          0000}
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
          2069643D225F323830323931333133313136382220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C706F6C79676F6E2066696C
          6C3D226E6F6E652220706F696E74733D22302C3020313630302C302031363030
          2C3136303020302C3136303020222F3E0D0A3C6720786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C706174682066696C6C3D22
          233744443145422220643D224D35323020353032632D33342C33202D36322C31
          34202D38312C3331202D32302C3137202D33302C3339202D33302C363520302C
          323520382C34362032332C36312031362C31352034352C32392038382C34336C
          30202D3230307A6D3734203537306333372C2D342036362C2D31342038382C2D
          33322032322C2D31382033322C2D34302033322C2D363720302C2D3237202D38
          2C2D3439202D32352C2D3634202D31372C2D3136202D34382C2D3331202D3935
          2C2D34356C30203230387A6D2D3734203230376C30202D3834632D3130352C2D
          3131202D3230302C2D3533202D3238342C2D3132366C3834202D313031633635
          2C3537203133322C3930203230302C3130316C30202D323235632D38372C2D32
          30202D3135312C2D3438202D3139312C2D3832202D34312C2D3333202D36312C
          2D3834202D36312C2D31353120302C2D36362032332C2D3132312037302C2D31
          36332034372C2D3432203130372C2D3636203138322C2D36396C30202D353820
          3734203020302035396338352C36203136352C3335203234312C38366C2D3735
          20313037632D35312C2D3336202D3130362C2D3539202D3136362C2D36376C30
          20323137203420306338382C3231203135332C3439203139352C38352034322C
          33352036332C38362036332C31353420302C3637202D32342C313232202D3732
          2C313635202D34382C3432202D3131312C3635202D3139302C36396C30203833
          202D373420307A222F3E0D0A3C706174682066696C6C3D227265642220643D22
          4D31313039203538376C302030632D35392C30202D3131322C3233202D313531
          2C3632202D33382C3339202D36322C3932202D36322C31353120302C35392032
          342C3131322036322C3135312033392C33392039322C3632203135312C363220
          35392C30203131322C2D3233203135312C2D36322033382C2D33392036322C2D
          39322036322C2D31353120302C2D3539202D32342C2D313132202D36322C2D31
          3531202D33392C2D3339202D39322C2D3632202D3135312C2D36326C3020307A
          6D2D31303220323334632D362C30202D31312C2D32202D31352C2D36202D332C
          2D34202D362C2D39202D362C2D313520302C2D3620332C2D313120362C2D3135
          20342C2D3420392C2D362031352C2D36203135362C302034382C30203230342C
          3020362C302031312C322031352C3620332C3420372C3920372C313520302C36
          202D342C3131202D372C3135202D342C34202D392C36202D31352C36202D3134
          322C30202D36322C30202D3230342C307A6D31303220323335632D37312C3020
          2D3133342C2D3239202D3138302C2D3736202D34372C2D3436202D37352C2D31
          3130202D37352C2D31383020302C2D37302032382C2D3133342037352C2D3138
          312034362C2D3436203130392C2D3735203138302C2D37352037312C30203133
          342C3239203138302C37352034372C34372037352C3131312037352C31383120
          302C3730202D32382C313334202D37352C313830202D34362C3437202D313039
          2C3736202D3138302C37366C3020307A222F3E0D0A0909093C2F673E0D0A0909
          3C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          2069643D225F323830313735383038363939322220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C706F6C79676F6E2066696C
          6C3D226E6F6E652220706F696E74733D22302C3020313630302C302031363030
          2C3136303020302C3136303020222F3E0D0A3C6720786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C706174682066696C6C3D22
          233744443145422220643D224D35323020353032632D33342C33202D36322C31
          34202D38312C3331202D32302C3137202D33302C3339202D33302C363520302C
          323520382C34362032332C36312031362C31352034352C32392038382C34336C
          30202D3230307A6D3734203537306333372C2D342036362C2D31342038382C2D
          33322032322C2D31382033322C2D34302033322C2D363720302C2D3237202D38
          2C2D3439202D32352C2D3634202D31372C2D3136202D34382C2D3331202D3935
          2C2D34356C30203230387A6D2D3734203230376C30202D3834632D3130352C2D
          3131202D3230302C2D3533202D3238342C2D3132366C3834202D313031633635
          2C3537203133322C3930203230302C3130316C30202D323235632D38372C2D32
          30202D3135312C2D3438202D3139312C2D3832202D34312C2D3333202D36312C
          2D3834202D36312C2D31353120302C2D36362032332C2D3132312037302C2D31
          36332034372C2D3432203130372C2D3636203138322C2D36396C30202D353820
          3734203020302035396338352C36203136352C3335203234312C38366C2D3735
          20313037632D35312C2D3336202D3130362C2D3539202D3136362C2D36376C30
          20323137203420306338382C3231203135332C3439203139352C38352034322C
          33352036332C38362036332C31353420302C3637202D32342C313232202D3732
          2C313635202D34382C3432202D3131312C3635202D3139302C36396C30203833
          202D373420307A222F3E0D0A3C706174682066696C6C3D226C696D652220643D
          224D31313039203538376C302030632D35392C30202D3131322C3233202D3135
          312C3632202D33382C3339202D36322C3932202D36322C31353120302C353920
          32342C3131322036322C3135312033392C33392039322C3632203135312C3632
          2035392C30203131322C2D3233203135312C2D36322033382C2D33392036322C
          2D39322036322C2D31353120302C2D3539202D32342C2D313132202D36322C2D
          313531202D33392C2D3339202D39322C2D3632202D3135312C2D36326C302030
          7A6D3020333336632D362C30202D31312C2D33202D31352C2D37202D342C2D33
          202D372C2D39202D372C2D31336C30202D3832202D38302030632D362C30202D
          31312C2D32202D31352C2D36202D332C2D34202D362C2D39202D362C2D313520
          302C2D3620332C2D313120362C2D313520342C2D3420392C2D362031352C2D36
          6C383020302030202D383263302C2D3520332C2D313020372C2D313420342C2D
          3320392C2D362031352C2D3620362C302031312C332031352C3620342C342036
          2C3920362C31346C30203832203831203063362C302031312C322031352C3620
          332C3420372C3920372C313520302C36202D342C3131202D372C3135202D342C
          34202D392C36202D31352C366C2D38312030203020383263302C34202D322C31
          30202D362C3133202D342C34202D392C37202D31352C376C3020307A6D302031
          3333632D37312C30202D3133342C2D3239202D3138302C2D3736202D34372C2D
          3436202D37352C2D313130202D37352C2D31383020302C2D37302032382C2D31
          33342037352C2D3138312034362C2D3436203130392C2D3735203138302C2D37
          352037312C30203133342C3239203138302C37352034372C34372037352C3131
          312037352C31383120302C3730202D32382C313334202D37352C313830202D34
          362C3437202D3130392C3736202D3138302C37366C3020307A222F3E0D0A0909
          093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000207030017140C04391F14085120140856180E
          044A0F0802320603011600000002000000000000000000000000000000000000
          0000000000000000000006030015392111977F5B3AE8797146F5797346F56A5D
          35EA472D17CA2D1B0C8E0703001A000000000000000000000000000000000000
          00000000000008010015580F05ACA9492EFDA35128FF6A582AFF385323FF3B5B
          29FF455327F62B210B930402000E000000000000000000000000000000000000
          00000C02001B841F0ADDA9541AFFC98C40FFC57E3FFFA77D3CFF3B612AFF396A
          2CFF3A712DFF3B6629FE1F170868000000000000000000000000000000000000
          000077220BC2B15A15FFDAA05DFFDCA252FFC9B690FF888580FF898A89FF7197
          6DFF3F7D36FF3F8735FF575522FA09100636000000000000000000000000280B
          0448B35A17FFD3863BFFE0AC60FFE4D4A6FF757566FF3F3E36FF373737FF7883
          78FF6EA16BFF449C3EFF547B2CFF32491BB20000000000000000000000004B30
          109FCE8236FFE5AA63FFE6C07CFF97967EFF33332BFF353422FF1E1E1EFF3737
          37FF6B8D6BFF6DB856FF72812BFF468730FA0101000B00000000000000003A5C
          23CCA39B51FFF6C783FFEBCD94FF747368FF456670FF214D5DFF174459FF1C31
          3BFF8E9678FFC58937FF86973CFF636B26FF090B042C00000000000000004177
          2ACAC8B66BFFFEDBA0FFECD9B1FF868988FF63A3B5FF5198AEFF5398AEFF5B7C
          88FFBCB499FFB4AC55FF88C25FFF6C9F41FF090D052A00000000000000003D6F
          29A0D7C57BFFFFE4B7FFF6E9CDFFE2DED3FFD1DBD9FFD3DBD6FFD5D7C7FF9ED8
          99FFA7D186FF90D974FF81D366FF65AE48F70102010800000000000000001F35
          164BCCCB79FFFFE6C0FFFFF4DFFFFFFAF2FFFFFCF8FFFFF8EDFFFFF4DFFFF7E3
          B2FFCED987FFB6C064FF8FAA47FF47702FAA0000000000000000000000000000
          00018D964FC1FEDAAEFFFFF1DBFFFFF9EEFFFFFBF4FFFFF8ECFFFFF1DBFFFFDB
          ADFFDFBF71FFC48635FF8A7333F20E0903210000000000000000000000000000
          00000B090413BF925BD1FEDCB4FFFFEDD6FFFFF2DFFFFFEED6FFFEDFB8FFFAC0
          83FFD49E4BFFAA4F1DF62B12084C000000000000000000000000000000000000
          0000000000000604020B895C3A91EEC586FAEFD496FFE5D790FFEEAF68FFBBA4
          4AFE678434C8161F0C3900000000000000000000000000000000000000000000
          00000000000000000000000000000D1009183B512E584F6336713D3A1C5C181D
          0D31000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F0070000F0070000E0070000C0070000C0030000800300008001
          00008001000080010000800100008003000080030000C0070000E00F0000F83F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000500000005000000040000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000000000000000000000000000000000
          0000000000000000000100000000000000000000000000000000000000000000
          000000000000000000000000000001010321070C0B590A0E1D800505115F0101
          0220000000000000000000000000000000000000000000000000000000000000
          00000000000A0000064703132BA70D3B52E8135464FF144A59FF000386FF0313
          54DE020A1A9C0000054D0000000F000000010000000000000000000000030000
          00000000001C0E287AEF10468FFF26803FFF29773AFC2F8325FB102F67FC1D5F
          53FF1B4D56FF1C5442FC143122CA0001022E0000000000000002000000060000
          0000010B00432A6E5BFF0A2D7FF82B882CFE389E18FE399D0DFE1C4843FE041D
          85FD185752FC2F7214F9124180FF021610760000000000000008000000090000
          0000051C01723AA126FE318F21F9389C1CFE34961FFF328512FF387E0CFF245C
          3BFE2B7829FE347D08FA2B6E37FC143E07B40000000000000007000000080000
          00000E33049A3EA120FF308711FA31861AFF2C821AFF237417FF28740FFF3481
          02FF337900FF347A05FC3F8E00FE1C4E00D10000000000000002000000030000
          00050D4710C62F9435FE229139FB21A04AFF20AC57FF24A749FF289431FF258F
          33FF248527FF297E20FC2C7B16FF164903DD0000000500000000000000002F3D
          364718B05FFC1EB264F81EBA69FD21BB69FE24BE6FFE26B25CFE29942CFE2A94
          2BFE2A962FFE289531FC289032F91D8426F62429253000000000000000002027
          233222BC68FF32C775FF30BD6EFF2EB668FF29AC5FFC25A051FC249A44FB279C
          40FC299A37FF2B9A32FF31A236FF229930FF181B192100000000000000010000
          000104261477176336BA157D3ADD179B48F925952EFF226900FF1B872BFF1BA9
          50FF1B963EF916732AD90E5224AE00190A640000000000000002000000000000
          000000000000000000000000000A070C09263454328B457C35C31A33216C101E
          154A070B09250000000700000000000000000000000000000000000000000000
          0000000000040000000200000000000000000000000000000000000000000000
          0000000000000000000000000003000000040000000000000000000000000000
          0000000000000000000000000000000000010000000200000001000000030000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000E7EF0000F83F0000C00300004002000040020000400200004002
          000000010000800100008001000000020000F00F0000CFF30000F81F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000060606121111
          11380000000000000000000000070000000705040553343434DE161616DA0202
          065A0000021A01010318030304101717194B2727265201010106292927882B2C
          3EFB1A1B5A86181A5F880F136CA3060A76B1484A7EE5959483FF101446FF0416
          ACFD2231A8EF1528AADE091456CC050B39FF040936FF080A278F50504CDA3E3E
          92FF464AFFFF3A3FFFFF2127FFFF0C12FFFF3E438EFF5C5B43FF0D1150FF0312
          99FF081C9FFF071EC6FF3646ABFF5A5E7BFF4D5072FF1B1F7CED50527DF30D0D
          BEFF0000F1FF0000E6FF0000E1FF0100DEFF2F2FA0FF323254FF5758A6FE868B
          ADFB6D76A9F83B46B8FA5D6AB8FF888C9EFF8C94C7FF101B8AE40909A1D00405
          CFFF0C0ECBFF252BD0FF070CD4FF0810DEFF0912DFFF171DE7FF504FD4FEDCDC
          D2FD9392CBFD2322E5FE1F1EC8FF2929C2FF2829BBFF2A2D4B841F2090A14B4F
          DFFF3F44E0FF3E46DAFF282FACFF080D70FB393CB3FF9294F6FFD4D3FCFFB8B8
          F2FF6666F9FF1111FCFF0000FFFF0000EBEB080875920D0D0D11131336361A1A
          74E50D0D1AC41C1B57DF333226DE605F5BFE9898B7F5DFDFD6F4A5A5A2FE3F3F
          45EB191920C0272743DF11114F9E00001D200000000000000000000000001212
          52810F0F15C1191947D8555555C49A9ACFFFC6C6D4EA9F9F95DE2E2E23FF0606
          00B10B0B1B9E16163B5600000000000000000000000000000000000000000000
          0203060638400A0A42771C1C728A12128A9A2929929F12126B92090954900A0A
          426D050523270000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF00003000000000000000000000000000
          0000000000000000000000030000800F0000801F0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000505
          05075F42306C3B261A4D212323370A0A0A0C0000000100000000000000000000
          000000000000000000000000000000000000000000000000000002020204130B
          0758F3A365FFF7C8A5FEE3AB81F8937C6AC45E4B3F7C2A2624461A1A1A361414
          14360D0D0D31070707280505051B020202070000000100000000000000003425
          1D5FF5B581FFFBE2CFFFFCEBDFFFEAE6E1FFE8E3DEFEDDB89EFAA4704CD05B3A
          2496201610560907073203030328010101110101010400000000000000007B64
          577FF6B785FFFADCC6FFFCE7D7FFCED0CEFFCBDADFFFD9E8EDFFDCEBF0FFD1DF
          E3FFD9AE8CFCB7703ED45F2F1288281B13380000000000000000000000009C78
          60A2F5AB6BFFF9CCA9FFFAD5BAFFC1B2A5FFD5D9D6FFC4DAE1FFBDD6DEFFC9E1
          E8FFC1DCE5FFC5CFCFFFEFCFB6FFE8A16CF41F1916240000000000000000BE8C
          68C5F5A764FFF8BF94FFF8C096FFF8C49CFFEBC7AAFFBAD0D5FFB4D3DDFFACCC
          D6FFB2D3DEFFB2D3DEFFB1D0DBFFE6C3A9F74C3526590000000000000000E09F
          6CE9F4A665FFF8C49DFFF9C7A1FFF8C59FFFD6AD8CFFA79E90FF94ABB0FFA0C6
          D3FFA2C8D4FF9FC6D2FFB7D6E0FFC4D6DAFD6F503C8C000000000E0E0D0FF7B7
          85FEF5AD73FFFAD1B3FFFAD1B3FFF9D2B4FFBCAB9CFFCAAD95FF9D8A76FF819C
          A2FFA9CBD6FFB8D7E1FFCAE0E8FFC7D9DEFEBECCD2EC191A1A1C342E2B36FBCB
          A1FFF5B17DFFFAD7C2FFFAD7C3FFFAD8C4FFDCC5B6FFC9BAAFFFCEB5A5FFAC91
          7DFFD1BCADFFBAC3C3FFC9D7DBFFCCDCE0FEB9B3A8F31010101357483F5AFDDB
          BAFFF5B688FFFBE1D2FFFBE2D2FFFBE2D3FFFAE3D4FFE5D4C9FFD9CCC2FFCBC2
          B9FFF0D0BCFFF5D3BEFFF6D3BEFFE0D6CFFEE2B89CF0211B1826352F2C37E8B0
          8BF1F6BE92FFF6C4A1FFF9DCC8FFFBEADFFFFBEAE0FFFCEBE0FFFBEBE0FFEDE0
          D8FFDDD6D0FFDED6D0FFFCECE3FFFBECE2FFEFDBCDF447322552000000006958
          4E7082E4EEFF9ADEDDFFB5C8B4FFD1BC9AFFF5BE96FFF5BF98FFF7CCADFFFBE6
          D8FFFCF1E9FFFCF1E9FFFCF1EAFFFCF1E9FFF4E9E1F76F4C3580000000002B27
          252C8C8376ADA7B0A0EBA6D1CAFF9CE8ECFFB0876DC4B88A72C0E6A279F2F3AA
          79FFF5B98FFFF6C09AFFF6C29CFFF8D3B7FFF5E4D9F887654D92000000000000
          0000000000000000000124211F2550433C531C1A191D0000000002020203322C
          29336D554972A87D67AFDCA384E6F2AA7FFE7F5A41861E1C1A1F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000D0D0D0E0000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF000081FF000000010000800100008003000080010000800100008001
          0000000000000000000000000000000000008000000080000000E1000000FFFB
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF69676593B6B3
          B1FFACAAA8FFACA9A7FFA8A5A3FFAEABA9FFA8A5A3FFAAA7A6FFABA8A6FFA8A6
          A4FFADAAA8FFA6A4A2FFA7A4A2FFA7A5A3FFACAAA8FFC1C1C1FFABA29EDA7E77
          72FFADA5A0FFB9B1ABFFC7BFB8FFB1A9A4FFC6BCB6FFBFB6B0FFBCB3AEFFC3BA
          B4FFB6ACA7FFCAC1BAFFCAC0BAFFC2B8B2FFA89E98FFB5B3B0FF1E1C1B422C2A
          29FF7F7B77FF6B6764FF817C7AFF5D5958FF9C9693FF898481FF7D7B78FF928F
          8CFF5F5C59FF9B9592FF9B9592FFB3ACA7FF77716DFFC9C5C2FF2C2928503533
          31FFA09C99FFBEB9B6DE4A484765423F3F6577747299898583FF7A7775FFE9E6
          E2FFD3CDC9FFE0DBD6FFE8E5E1FFB8B2AEFF7F7976FFC8C3C1FF2B2928503E3C
          3AFF6F6C6AFF8B8986FF363533AC373635AC726F6DFF979592FF787674FF5552
          50FF696866FF969391FF4B4947FF555452FF8C8783FFC7C3C1FF2B292850423F
          3DFF656261FF6A6967FF1B1A1AAE161616AE52504EFF9D9B9AFF7A7877FF2A28
          28FF464545FF7C7B7BFF1E1E1EFF444342FF908B88FFC7C4C3FF2C2A2850423F
          3EFF686665FF71706FFF212120AE1C1C1CAE585756FF9D9B9AFF7B7978FF3232
          31FF4D4D4CFF818080FF282727FF494848FF918C89FFC8C6C3FF2C2A29504240
          3FFF686866FF727170FF212121AE1C1C1CAE585857FF9D9C9CFF7B7B7AFF3233
          32FF4D4D4CFF828181FF292828FF4A4949FF928E8BFFC9C7C4FF2D2B2A504241
          40FF696968FF727271FF212121AE1C1C1CAE595858FF9D9D9DFF7B7B7BFF3232
          32FF4D4D4DFF828281FF282828FF4A4A49FF938F8CFFCAC7C6FF2D2B2A504342
          41FF6A6969FF737273FF222121AE1C1C1CAE595858FF9E9E9EFF7C7C7CFF3232
          32FF4E4E4EFF828282FF282929FF4B4B4AFF94918EFFCAC7C7FF2C2A29503C3B
          3AFF646362FF6E6D6CFF1C1C1CAE191919AE565554FF9A9999FF777676FF2F2F
          2FFF474747FF818080FF242323FF444343FF908C8AFFCAC7C6FF35333250726F
          6DFF8E8C8AFF969492FF454444AE444443AE858382FFB5B2B1FF9C9A99FF6B6A
          69FF7B7A79FF50504FA4646362FF787675FFABA6A2FFCBC9C7FF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000001211111B625E
          5E9D6C6666AD6C6767AA6D6767AA6F6969AC716B6BAD726C6CAE736C6CAE756E
          6EB175706FB1777170B2777171B2797272B37D7676B84F4A4A782F2D2D38E9E0
          E0F3F6EFEEFDF5ECECFDF5EBECFDF5EBEBFDF6EBEBFDF6EBEBFDF5EAE9FDF6EA
          E9FDF5E9E9FDF6EAE9FDF7EAE9FDF7E9E9FDF8E9E9FE999090BB2E2C2C37EFE8
          E8F4FDF2F2FFF5EAEAFFF6EBEAFFF6EAEAFFF7EAE9FFF7EAE9FFF7E9E9FFF8EB
          ECFFF8EAEAFFF9ECEDFFFCEEEFFFFDEEEEFFFFF0F0FF9D9393BD2C2B2B36EDE7
          E7F3FAF2F1FFF3E8E8FFF5E9E9FFF5EAE8FFF4E9E8FFF4E8E8FFF6E9E8FFF9E6
          E2FFF8E6E2FFF7E4E2FFF6E4E2FFF5E5E4FFFEF0F0FF9A9291BB2C2A2A35EDE7
          E7F3FDF5F6FFF7EEEDFFF2E8E8FFF3E8E8FFF5EAE9FFF7EDEDFFF2E5E4FF8467
          3DFF866A3BFF9D8354FFAD956BFFD7C9B5FFFFF5F7FF99908FBA2A282833EDE7
          E7F2FBF4F4FFF4ECEBFFF4EBEBFFF4EBEAFFF8EFEFFFFAF3F4FFF2E9E7FF7B89
          65FFAEB88EFFDDD6ABFFE7D8AFFFF7EDDCFFFEF2F4FF98908FB929272731ECE8
          E8F1FBF4F4FFF2EAEAFFF3EBEBFFF4EBEAFFF3EAE9FFF1E9E9FFF7EAE7FFFFC7
          91FFFFBE85FFFFC58DFFFFE2B2FFFFDAB2FFFEF3F6FF968E8DB828282830ECE8
          E8F1FCF6F6FFF4EEEFFFF4ECEEFFF4ECEEFFF5ECF0FFF5EDF1FFF8EEF1FFFDDF
          D6FFFCDBD1FFFCE1D9FFFCEBE3FFFCEDE7FFFEF3F4FF948D8DB62827272EEBE7
          E8F0FCFAF7FFF3F4E7FFEEE7DAFFEFECDEFFEAE5D5FFE6E0CCFFE2DDCAFFE0DD
          CEFFDED9CDFFDCD6CAFFDCD2C6FFE5DBD3FFFFF5F4FF928C8CB52726262CEBEA
          EBF0FBEEECFFEFD3C6FFF2F1E1FFE7CFBCFFE8DAC5FFE7DCC9FFE3D5C0FFDFD0
          BDFFDDD3C0FFDBD6C2FFDAD3C2FFE4DED3FFFFF5F7FF8F8A8AB32726272BE9E9
          E9EFFFF7F8FFF9C6C8FFFEE9ECFFDB918CFFEFCDCCFFFFF0F5FFFFE3E7FFFFE4
          E8FFFFE6EAFFFFEAEDFFFFE9ECFFFFECEDFFFFF7F7FF918B8BB62727272BE8E7
          E7EEFFFFFFFFFFFFFFFFFAD2D3FFE49C9BFFECC5C5FFFFF2F3FFFFE3E2FFFFE4
          E3FFFFE2E3FFFFE3E3FFFFE1E1FFFFE6E6FFFBF2F2FF8A8383AD2626262AE9E7
          E7EEFFFDFDFFFFFFFFFFFFFFFFFFF1B3B3FFF0B9B9FFFFF1F1FFFFE1E2FFFFE2
          E3FFFFE5E5FFF5DADAFFE1CFCFFFE1D5D5FFACA7A7D32220202F2726262AE9E9
          E9EEFFFFFFFFFFFDFEFFFFFEFFFFFFFBFBFFFCEBECFFFFFBFCFFFFF9F9FFFFF8
          F9FFFFFCFCFFE9E4E4FFE5E1E1FF959393AE0B0A0A120000000026262629E3E3
          E3E8F8F8F7F9F8F7F7F9F7F6F7F9F8F7F8F9F8F9F9F9F7F6F6F9F7F5F6F9F7F5
          F5F9F5F3F3FCC9C6C6E95A5858740000000000000000000000000B0B0B0E4949
          49565151515E5150505E5151515E5150505E5352536154535362555454635655
          55655655556A2726263600000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00050000000E010007350000032B000000090000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000705
          1D337165BAE9ADACD8FFB7B1DBFF7970A9C20202060B00000000000000000000
          00000000000000000000000000000000000000000000000000000100080E9389
          D8FF80D6E4FF65E5FCFF69E2F9FF9ACAD1FF6F67B6CA00000000000000020000
          00000000000E000000150000001D000000160000000C000000011D195C718C8C
          BDFF449DF2FF3BAEECFF33ACEAFF355BBEFF9C94BDFF8E8DA4E9CECECCF8605F
          5F980F100F2D326A15C71D2A1E433C636E761C252727000000003D3975837771
          B3FF343FD6FF2355E2FF3342DEFF2E3AB6FF8179AFFF9E9BC3FFD7D7D4FFE9E8
          EEFFADCEAAFF358D1BFF5FAE95EA0DC5F4FF23B0D3E20000000016162541A5A0
          D3FF6359C3FF4E57E7FF636CE2FF695FADFF7973CDFFCACACAFFD4D6D9FDD9CC
          B1FFC08810FFC6A539FF50699EFF1878FAFF3CB7F8FF0406061800000000C1BD
          E1F9BAB5DCFFB3B9DCFFC0BDD1FF8882C7FF9F9BCDFFCBCAC7FFC0BDBAFDD1A2
          4DFFC6952AFFB4712BFF4369CFFF1D68FCFF3170FFFF0001020500000000F0F1
          EDFAE3E1F2FFA5A0D7FF7E78C3FFB7B4CBFFD7D6D0FFCFCED5FFDCC6A3FFD0A0
          52FFCB9936FFBD937CFF4588FFFF2F70F6FF3163F9FF080D1C2800000000B9B8
          B9CEDEDEDEFFECECE8FFE5E4DFFFF2F2F1FFDDD7DDFF99B47DFFEEBE93FFCAA5
          54FFB8AFA4FFCFD2D9FF8DAAF7FF3B66E4F22451E2E808112C3A000000000000
          00000A0A0A1159585868A9A7A9BFE8DFE9FF66CC4BFF5CCB5FFF51C868FF54C5
          56FF92D97CFF53534F716265747B5D86E8E81C4CDEDF09112B38000000000000
          00000000000000000000000000002A541C7054D15CFF61E690FF8EDE91FF51E0
          85FF5CC75DFF3253177700000000343947472C44838300000102000000000000
          000000000000000000000000000059964AAE50E78FFF80D47DFFA1D69CFF7BD9
          7DFF5DE196FF4C8325AF00000000000000000000000000000000000000000000
          00000000000000000000000000005071477F82E48EFF56D373FF62C146FF64E1
          82FF83D98DFF3666168800000000000000000000000000000000000000000000
          000000000000000000000000000002040207A8E0A8EEA2E5A9FF6AEB9CFFA5E3
          A8FF81CD70F20307010C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000406030A64835E8D8CB185BF567F
          4C900509030E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0081FF000081FF000001400000000100000001000000000000800000008000
          000080000000C0000000F8080000F80F0000F80F0000F80F0000FC1F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00001F140934523A237D846446B1A48262CFB59273DCC19971E8B79269E4AD7F
          58DD987146CF76532FAD50351B7D1F140934000000000000000021150A386941
          23A1D09877FFF5CFBEFFFFEFE1FFFFEFE7FFFFF6E9FFFFE9D1FFFEE1BEFFF6DE
          AAFFEDC294FFE1B57DFFD5A26BFFC38A52FF674424A0271A0D415E3C2094BF80
          5AFFE2B09AFFF4D6C4FFFFF0E6FFFFF1E2FFFFF9F2FFFFF3DEFFF6E9C9FFF0D6
          B1FFE7C29FFFDCB188FFD5A477FFD19969FFB7814DF9614123975E3D2195BF83
          5FFFE3B7A4FFF4DED4FFFAEFEEFFF6EDDEFFE9E0CFFFD5CABDFFDABDB3FFD3B9
          A5FFDEBA9DFFD8B197FFD5AB8DFFD29D7AFFB98255FB614223975E3D2295BB7E
          5AFFCC9776FFCFA684FFD7B091FFDBA588FFDFAD7AFFDBA76FFFD4965AFFC596
          51FFC1874AFFBB8549FFBC7D4CFFC08152FFB77D54FC604125955C3A1C96B06B
          3FFFD59B7AFFF5CCB6FFFFEBE2FFFFF5DFFFFFF6E3FFFFE8D0FFFCDCBAFFF7D2
          AEFFF2CB96FFE3B581FFD8A16AFFC68A51FFAB6936FB5C3A1D945F3C2096BE7E
          59FFE0AE96FFF4D4C7FFFFF4EBFFFFF4EBFFFFF8F6FFFEF2E5FFFCEDCDFFF0D8
          BAFFE5C2A5FFDEB58CFFD4A47AFFD29A6EFFBB824FFB604022955E3D2195BF83
          5FFFE0B5A3FFF0D8CAFFF9E4DFFFE6D5C3FFE4CFB9FFD8B99FFFD0B393FFCFAD
          8DFFD4AA87FFD5A787FFD4A485FFD5A27EFFBB8357FC5F4024945D3C2194B779
          53FFC68E6BFFD2A481FFD9B495FFE3B691FFE7C19AFFE7BC94FFE3B582FFD9AB
          76FFCD9B62FFC68755FFBB7D43FFBC7A4CFFB2784DFB5F4024955B381C95B16B
          40FFD7A082FFF8D4C0FFFFF1EAFFFFEEE2FFFFF2E1FFFDE4C6FFF6DBB6FFEED0
          A7FFE9C196FFE0B883FFD9A870FFCD9058FFAC6A36FB5A391C915E3C2094BE7E
          59FFDEAC97FFF2D6C7FFFFF8F2FFFFF8F5FFFFFBF2FFFEF1E2FFF6E3C9FFF4D3
          B6FFE7C5A3FFDEB595FFD7A57EFFCE9C6CFFBA8352FD5E4023935E3D2195BE80
          5DFFDCB09AFFE9CCBBFFECD6C6FFE3C9B2FFD9C3A8FFDCBB9DFFD7B393FFCDAC
          86FFD0A881FFCDA07BFFCD9774FFCE9474FFB98157FB614124955E3D2195B77D
          56FFCFA485FFDFB79AFFE8C0A7FFEDC9AEFFF4D2B2FFF6D7B4FFF6DAB1FFF4DC
          AEFFF0D7A3FFE9D197FFDCBE82FFC49D63FFAF7348FA603F229760432795D4AB
          8CFFFFE5D6FFFFE4D3FFFFE2D1FFFFE2D0FFFFE4C9FFFFE5C5FFFFE8C1FFFFEA
          BEFFFFEFBCFFFFF3BAFFFFF7B9FFFFFDB8FFCFB272FA6347279722170C397256
          3BA1ECC9AFFFFEDECCFFFFE4D4FFFFE6D6FFFFE8D1FFFFEACBFFFFEDC7FFFFEF
          C4FFFFF4C0FFFFF5BCFFFEF0B0FFECD996FF725933A0281B0E41000000000000
          00001E140933553D267F84664AB2A68568D0BC997AE1C5A481E8C6A67FE8BB9D
          74E0A68A5ED0846844B2563F25801F140A340000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C00300000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C003
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000030302232D2D22882E2E238418182283000029841A1A25832F2F28822C2C
          2681282821802A2A25802C2C287F323231860F0F0D5200000000000000000000
          00000202011DAAAC83E7F1F2C4FFB9B9C1FF2424E7FF9F9FD0FFFFFFE4FFF7F7
          E6FFE8E8CAFFF2F2DCFFFFFFF9FFFFFFFFFF3030278200000000000000000000
          0000000000002E27197EE4E3C0FFE9EAD5FF8686D9FFCCCCE2FFFDFDEFFFFBFB
          F7FFF7F9F1FFFCFDF9FFFFFFFFFFC6C6B9ED0303022800000000000000000000
          0000000000000701002FA07B52ECF5F9DFFF8788D2FFB2B1CCFFFEFEF5FFFFFF
          FFFFFBF9F7FFD8AF9BFFE4BCA4FF3631258E0000000000000000000000000000
          00000000000000000000140500467F5B34C952529FFE95949BFFE7E7CBFFF7F4
          F1FFDA9774FFCF5F28FF6C2503C9070100370000000000000000000000000000
          0000000000000000001B07080B4F1B1C1E8B586562E6B2C6C6FFD8DDCDFFCFCD
          AFFF5C4329B3170A034A00000004000000000000000000000000000000000102
          03271C252E9861809DE79ACAF3FF9CCBEBFF91B6D3FE90BBE6FF87ABC9FF2225
          1E7F000000000000000000000000000000000000000000000000000000001217
          1D5593C2E6FFBAE3FFFFA3C9E4FF9DCCE3FFBAE7FEFFACD3FBFF87AED6FF0405
          0745000000000000000000000000000000000000000000000000000000000000
          000027333C85A9D8EFFF95BFD4FFAEDDEBFFAEDEF4FF92BBE8FF93BCE5FF1218
          1F7F000000000000000000000000000000000000000000000000000000000000
          0000000000064B6775BE86B4D3FF98C9DFFFA7DEF1FF91C2E9FF99B9DFFF363D
          5FE3010002490000000000000000000000000000000000000000000000000000
          0010220E0E835F3C41D0885A69FF7B4F5FFF7A6277FF7B86ABFF3D6DA2FF2B7D
          B6FF1C3F63DB0000001000000000000000000000000000000000000000000000
          000A562425AECA7C79FFAE6763FF8E4443FF782E2EFF752A2CFF574656FF2A9E
          C7FF154463C30000000400000000000000000000000000000000000000000000
          00042F160B897E94A6FF9FB8CAFFC3C4C3FFAB8571FF9F532DFF9E4217FF9A4D
          28FF6D351CE20100001F00000000000000000000000000000000000000002B0E
          0073CF855EFF83C0D9FF7D9BB0FFCC8059FFBE531DFFA73E0AFB742600CD6F21
          00B4461500920000001000000000000000000000000000000000000000000802
          00197B3716C8ED8D5DFF814122CE481A0489511D037D19090153000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000015060053230C026C00000006000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C0010000C0010000E0010000E0030000F0030000E0070000803F0000803F
          0000C03F0000C01F0000800F0000800F0000800F0000800F0000807F0000C7FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000D45310F4E05B
          15FFE05B14FFE05B14FFE05A14FFE05A14FFDF5A13FFDF5A13FFDF5A12FFDF59
          12FFDF5912FFDF5911FFDF5911FFDD5711FDD25310F000000000DA5611F9FDD9
          A0FEFDDCA3FFFBD89CFEFBD696FFF9CF8CFEF8C57AFFF4B766FEF2AB51FFEF9D
          3DFEED9129FFE98314FEE98708FFE87B13FFDD5711FD00000000B44611D3FEDA
          A1FFFDDCA3FFFCD99DFFFBD290FFF9CD86FFF7C274FFF4B661FFF2AB4EFFF09F
          3BFFED9328FFEA8815FFE98908FFE88121FFE05B13FF0000000018060626E270
          2EFCFDDAA0FFFBD89CFEFACE88FFF1AA5FFEE15B14FFE05912FFE05911FFE059
          11FFE05911FFE05911FFDF5911FFE05B14FFE1611BFF00000000000000002F0E
          0D3AE26823FEFCD799FFFBD696FFF8C97EFFEF8941FFE55B0FFF020100020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000320E0D3DE26823FEFBD493FFF9CF8CFEF6C06EFFEC8941FEDA5512F82606
          062E010000020000000000000000000000000200000400000000000000000000
          000000000000340E0D3FE26822FEFACF8AFFF8C57AFFF4B55CFFEC8A40FFDC58
          12FB000000000000000000000000000000000000000000000000000000000000
          000000000000000000003D110F47E5712AFFF7C479FFF4B766FEF1AB4AFFE984
          3DFED75613F50000000000000000000000000000000000000000000000000000
          00000000000004010108C35726DCF8C577FFF8C57AFFF5B865FFEFA142FFE861
          12FF0C06010C0000000000000000000000000000000000000000000000000000
          00000801020DC95E2CE1FACD86FFF9CF8CFEF7C478FFEFA24DFEE85F11FF381A
          0038000000000000000001000002000000000000000000000000000000000C02
          0313CF6633E7FBD391FFFBD696FFFACE89FFF1A355FFE95D10FF391900390000
          00000000000000000000000000000000000000000000000000000D030317D66F
          3AECFDD89CFFFBD89CFEFBD391FFF2AD64FEE65918FF301303320B05010C0000
          0000000000000000000000000000000000000000000000000000B94E18D7FEDA
          A1FFFDDCA3FFFCD99DFFFBD28FFFE67932FFE1611BFFE1611BFFE1611BFFE161
          1BFFE1611BFFE1611BFFE1611BFFE1611BFFDB5D1AF800000000E1611BFFFDD9
          A0FEFDDCA3FFFBD89CFEFBD696FFF9CF8CFEF8C57AFFF4B766FEF2AB51FFEF9D
          3DFEED9129FFE98314FEE8890AFFE97E15FFE1611BFF00000000E1611BFFF7B9
          8AFFF6B786FFF5B37EFFF3B076FFF2AB6DFFF0A35FFFEE9B51FFEC9243FFEB8A
          34FFE98226FFE77918FFE5780EFFE9862AFFE1611BFF00000000DE601BFCE161
          1BFFE1611BFFE1611BFFE1611BFFE1611BFFE1611BFFE1611BFFE1611BFFE161
          1BFFE1611BFFE1611BFFE1611BFFE1611BFFE1631FFE00000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000354B515C3B687B914B69738209171E3500000013375057693D6A7E954966
          708008141A2B000000000000000000000000000000000000000011110F143D55
          5C749BD5E6FF7CC1DFFFA0D6E9FF518DA6DA436068A29DD8E9FF7DC1DFFF9ED5
          E8FF4E8AA4D43639375935393954373C3B4A343937400C0E0E1150524D5B7EA7
          A7FF9BD7E9FF7DC2DFFFA7DDEEFF5F9DB2FF638991FFA3DEEEFF7CC0DFFFA7DB
          EEFF60A3B7FF789582FF759584FF6C877AFF88A397FF4547474951534E5B6993
          91FF97D5E9FF7ABFDEFF9ED5E9FF6BA9C0FF547F84FF96DCEFFF8DCFE7FF8AD1
          E7FF79BCD2FFCBDCD9FFB2C9C5FF475952FF678175FC4848484852534E5A6F9C
          98FF97D5E9FF81C3DFFF9FD7ECFF589DB3FF33504AFF85C8CCFF88C2D0FF95CC
          D6FFB2DBDFFFCEE0E0FFE8F6F9FF93AAA3FF658574FA484848485354505A729E
          99FF86D6E9FF8ED6EBFF88D3EAFF68AAB6FF1F241FFF75968AFF59706DFF6577
          6BFF81A596FF618E7EFFD6E5E6FFC8DBD8FF668874FA484848485458565A789A
          8AFF96BBB9FFA6D1D1FFD9F2F6FFC9DEDDFF233828FF768E86FF86A297FF95AE
          A1FFC4DAD8FFABC7C2FFE9F6F7FF899A97FF6C8C7BFA48484848585A5A5A7997
          86FF596F61FF768D7FFFF7FEFFFFEDF7F8FF688C78FF779886FF799D89FFBAD0
          CAFFFAFFFFFFFCFFFFFFA9BBB7FF4D5F59FF7A9485FA484848485B5B5B5B7494
          81FF3C4F48FF7D938AFFBACEC9FFAFC5C0FFA6BFB8FFA5BFB8FF9EB9B3FFAEC5
          C1FFB1C7C4FFB6CBC9FF6F8E7FFF445E4FFF7D9988FA494949495255555AACC6
          BBFF93ABA3FFA2BDB2FF9EB9ADFF9FBAAEFFA2BCB1FFA1BCB1FFA2BCB1FFA0BB
          B0FF9EB9AEFF9FBAAEFF9EBBAEFF93AFA3FFB4CFC5FF42444446090B0B0F4F64
          627F64807BA3607B779F607B779F607B779F607B789F607B789F617C789F617C
          789F617C789F617C789F627D789F66837EA44A5E5C770709080B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000014000000300000003D0000003E0000
          003D000000390000002400000000000000000000000000000000000000000000
          0000000000000000000D020000491A02028E310404C2471A1AD4391818D54219
          19D6411717CD2C0B0BB510000069000000050000000000000000000000000000
          0000000000001001017A572D2DF4743E3EFF1A0707FF643E3EFF704444FF8F6D
          6DFF916B6BFF785454FF683D3DFF361212950000000000000000000000000000
          0000000000034F1F1FE5846767FF855151FF3E3A3BFF888282FF8A5454FF7B47
          47FF8F6C6CFF765858FF7A5E5EFF5B2F30CD0000000000000000000000000000
          0000000000004B1E1EBF835656FF8F6262FF656868FF777877FFAE9F9FFF5F25
          25FF785353FF715555FF795857FF3E18189A0000000000000000000000000000
          0000000000001D05055B774949FFA99A99FF797B7AFF414343FFEFF0ECFF7C56
          55FF644343FF755757FF6E3E3FF6100100350000000000000000000000000000
          000000000000000000001D0C0C51B1AFAEF0A3B4D3FF5E7AA9FFBBCCE3FFDCD9
          D9FF715252FF4E2121C81100003D000000000000000000000000000000000000
          0000000000000000000000000000647DAADC6797E9FF5B8CE9FF4C73B8FF9EAA
          BAFB3928246A0000000000000000000000000000000000000000000000000000
          00000000000000000000171D2A3479A4EAFB84B5FBFF71A2F7FF588CEDFF657B
          A5E7000000000000000000000000000000000000000000000000000000000000
          000000000000000000002B374F5F80ACF1FF88B5F9FF84B0F6FF649AFDFF4968
          A3FE121416560000000000000000000000000000000000000000000000000000
          000000000000000000002B374F608DB4F1FFA9CAFBFFACCCFBFF81ABF8FF3F56
          82FF272B34BF0000000000000000000000000000000000000000000000000000
          0000000000000000000028354E5CA8C8FDFFE1F1FFFFEDFBFFFF8D9EBEFF2E2E
          2DFF222222E30000000000000000000000000000000000000000000000000000
          00000000000000000000242F44528BA1C6FFB4BBC6FFC9D0D6FF66696EFF4D4C
          4BFF242424E70000000000000000000000000000000000000000000000000000
          0000000000000000000015161794252423FF3F3F3FFF4A4B4CFF2E2D2CFF5C5C
          5CFF333333DF0000000000000000000000000000000000000000000000000000
          00000000000000000000030303260F0F0F91323232DB545454FE373737F71919
          19CE0909093F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000C0C0C191010104E030303440000
          0005000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000038251749593E2886926A4ACDB57E54FF654123A30805020E000000000104
          070B0E1A252E15273944080E16190E2914351E492C6E306B45A1206C3ABC183E
          1C7BD9A97AF4E7A878FFF0A66DFFE5A472FFAE6B39FE8E5E38CF5A92AACA73AF
          CFE388CFF4FF70B7E7FF408CC5EF70D298FF6DD58AFF52D07AFF3FB362FF249E
          3FFFCDC785FFFAB072FFF3954EFFE5A26DFFC77D47FFBB7E50FF8FCAE1FF9CE5
          FFFF6DD3FFFF78C5EEFF55B0DAFF8DDDB6FF73E192FF2DC75FFF4AC170FF2EB9
          4FFFCCCC8BFFFABE86FFF29B57FFE7A672FFD18249FFBE7F50FF9ACDE1FFB0EE
          FFFF6ED2FFFF82CEF3FF5BBFE7FF90DFB9FFA0EDB1FF36C966FF4DC876FF30BA
          51FFCDD195FFFCC993FFF3A15EFFE9A671FFD9864AFFC08050FF9ECDE1FFC5F4
          FFFF72D4FEFF81D1F6FF5CC7EDFF8CDDB6FFB8F6C1FF5DD882FF49C873FF30BA
          50FFCDD59CFFFDD3A2FFF4A765FFEAA771FFDE894BFFC18051FF9DCDE1FFDBFA
          FFFF77D6FEFF82D4F8FF5ECBF1FF8CDCB5FFB0F4BCFF6EE08EFF46C36FFF2BB6
          4AFFCED8A0FFFFDBB0FFF6AA68FFEBA873FFE18A4BFFC18051FF9ACDE1FFE8FD
          FFFF8ADBFEFF7FD4F9FF5ECCF1FF8DDEB4FFB7F6C2FF7FE49CFF62C882FF32B1
          4AFFCDD79EFFFFE3BCFFF6AD6DFFEBA873FFE18A4BFFC18051FF9ACDE1FFE8FD
          FFFFAAE5FFFF80D4F8FF63CCF6FF6CC6A3F9BCF3C5FFC8F7D2FFCEFAD8FF9ADA
          9CFFC7D398FEFFE9C4FFF7B67AFFEAA670FFDF8A4BFFC18051FF9ACCE1FFE5FB
          FFFFB2E8FFFF86D4F6FF65C8F5FF3662859A243B27404669507234523E592E38
          2449E1D2A9FBFFE8C4FFF7BD83FFE9A671FFDC874AFFC18050FF99CCE1FFE1FA
          FFFFAFE7FFFF86D1F4FF62C2EFFF375E84920000000000000000000000000A00
          000AF3D2B5FCFFE5C2FFF6BC83FFE8A773FFD58348FFBF7F50FF99CCE1FFDBF7
          FFFFACE6FFFF81CAEFFF5BB5E5FF386084940000000000000000000000001007
          0015F0D1B1FCFFE2BDFFF6B97FFFE6A673FFCB7E47FFBC7F50FF96CBE1FFE0F9
          FFFFBCEFFFFF9ED8F3FF71B7E1FF376186980000000000000000000000001007
          0015EFD0AFFCFEDCB6FFF6B77BFFE4A472FFBF7845FFB97E50FF507E93AF99CE
          DEF1B1EBF4FFB7EDF4FF9BD2E6FA315573860000000000000000000000001007
          0015F2D1B1FEFDD9B2FFF7BA7FFFE1A373FFAD693CFFB57B4EFF000000000610
          141B1A2E374414262E390D191F260407080A0000000000000000000000000D06
          0110DFB793F3FBE4CBFFFDEAD4FFF8E3C9FFDBB893FFB78254FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000035251640B29475BCF9DBBAFFE6C7A4E9BDA281BD81634698}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003A39
          394F5F5E5D7F6160607F6968677F605F5E7F5958587F5D5C5B7F5C5B5A7F5D5C
          5B7F5A59587F61605F7F6463627F3838374F000000000000000000000000A8A7
          A5D3ABAAA8FF9C9A99FF757473FFA3A19FFFC5C3C1FF9F9E9DFFA3A1A0FFA3A2
          A1FFB6B5B3FF9E9D9BFF8E8C8AFFAFADACD3000000000000000000000000BAB9
          B9D49D9C9CFF797877FF1D1D1EFF8A8989FFD4D3D2FFAAA9A8FF999898FF7B7A
          7AFFA8A8A7FF797978FF565656FFC8C8C7D4000000000000000000000000BCBB
          BBD4A5A4A4FF848383FF343333FF999898FFBDBCBCFF888786FF646463FF2929
          29FF787776FF80807FFF666565FFC8C8C8D4000000000000000000000000BCBC
          BBD4A9A9A8FF898888FF3E3D3DFF9E9D9DFFC3C2C2FF939291FF737372FF3F3F
          3EFF858483FF878685FF6D6C6BFFC9C8C8D4000000000000000000000000BEBE
          BDD4AEADADFF908F8EFF494847FFA5A4A3FFC7C6C6FF989797FF7B7A7AFF4A49
          49FF8C8B8AFF8D8C8CFF747373FFCBCAC9D4000000000000000000000000C0C0
          BFD4B2B1B1FF969493FF535351FFAAAAA9FFCBCBCAFF9E9D9DFF838281FF5453
          53FF939291FF939292FF7C7B7AFFCCCBCAD4000000000000000000000000C2C1
          C1D4B4B2B2FF969594FF535251FFACAAAAFFCDCCCCFFA09F9EFF848382FF5554
          53FF949392FF949392FF7C7B7AFFCDCDCDD4000000000000000000000000C1C0
          C0D4D6D5D4FFC8C8C7FFAAA8A8FFD2D0D0FFE1E0E0FFCDCCCCFFC0BFC0FFACAB
          AAFFCBC9C9FFC9C8C8FFBDBBBBFFC6C5C5D30000000000000000000000004646
          464F7978787F7B7B7B7F7F7F7F7F7979797F7777777F7A7A7A7F7C7C7C7F7F7F
          7F7F7B7B7B7F7B7B7B7F7D7C7C7F4545454F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000102020205050404090807060F1E1A15362F2722531411
          0E2401010002000000000000000000000000000000000000000000000000100E
          0C1D25201B3E3D352D635F544991847567C2A49384E6B8A899F9BDA996FF9E89
          77EB41372F730B0A08170000000000000000000000000000000000000000AD9A
          87F5C0AD9AFFC9B6A4FFD3C1AFFFE0CEBBFFE5DAD0FFDBD5D1FFD4C4B3FFC3AD
          97FFA8917CFF7E6B5BDC322A24600B090816000000000000000000000000D4C2
          B0FFE5D5C6FFE6DACCFFE9DED3FFE7DED7FFE6E0DAFFEEE9E8FFDDD9D8FFBAAF
          A5FFB19B89FF9E8672FF8B7460FF645447C2201B174506050510000000009088
          81ACDDDAD7FFDEDDDCFFDADBDBFFDADADAFFD6D7D8FFCDD6CEFFC9D2CDFFB7BB
          C0FFA2A09FFFA19386FF988470FF907963FF836E5BFF483E36AB000000000708
          0A10A5A6A6CCDCDBDCFFD9D8D6FFCDCAC8FFCAC9C9FFBAC4B6FFC4C3AEFFE1D4
          CCFFC5C4C6FF9F9D9FFF968B84FF988677FF9A836EFF706052FF000000000000
          00001C1C1C228181829CD6D5D5FFD1CDCAFFD4CDCBFFD9D9DDFFDCDEDCFFD5D4
          CBFFD0D5D7FFABBBC4FF949DA2FF918B8AFF9C8B7EFF62564CE0000000000000
          0000000000000000000049494956A4B5BDD6ABC9D4FF9EA8AEFF869196FF696E
          75FF4F5D5AFF578879FF8AC6D0FF8AB7CBFF788993FD1F1E1D65000000000000
          000000000000000000000000000015252C315B90A4D2729099FF5D7A81FF527B
          87FF51848EFF6AAFB1FF98E3EDFF9BE6FBFF54A1C5FF05172140000000000000
          0000000000000000000000000000000000000B222A346CA4B5D8B4D7DEFFD5F1
          F5FFC1D0D3FF82BED0EC7ED4EBF38BDAEDFF5398B2D404111824000000000000
          00000000000000000000000000000000000000000000313C3F4DD5D7D6ECFFFF
          FFFFEFE7E3FF849192E8384D54821523272D0E15171B00000101000000000000
          0000000000000000000000000000000000000000000001010001938C88A2EEE7
          E1FFEDE3DAFFBEB0A6FD4B433E75000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000012100F163A36
          314649433E5537322E3F0A09080C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
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
          2076696577426F783D2230203020343232203432322220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C672069643D2243616D61646120312220786D6C3A73706163653D227072
          657365727665223E262331333B262331303B3C6D657461646174612069643D22
          436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C6720
          69643D225F323733313330393839333032342220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C726563742066696C6C3D226E
          6F6E65222077696474683D2234323222206865696768743D22343232222F3E0D
          0A3C6720786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C726563742066696C6C3D226E6F6E652220783D2236322220793D2236
          32222077696474683D2232393922206865696768743D22323939222F3E0D0A3C
          706174682066696C6C3D22233744443145422220643D224D3939203130326C33
          3420313535202D313120323363302C30202D372C31342031372C31342032352C
          31203138392C30203138392C3020302C3020372C3020372C2D3720302C2D3620
          302C2D3620302C2D3620302C30202D312C2D39202D392C2D39202D382C30202D
          3137342C30202D3137342C306C35202D3130202D34202D313620313935202D32
          3363372C2D312031332C2D362031332C2D31336C30202D393363302C2D37202D
          362C2D3133202D31332C2D31336C2D3734203020302032382034322030202D38
          32203935202D3831202D393520343120302030202D3238202D37312030202D33
          202D313763302C30202D322C2D37202D31302C2D37202D31322C30202D32352C
          30202D33372C30202D362C30202D31312C35202D31312C313120302C3720352C
          31322031312C313220392C302031372C2D312032362C2D317A6D323134203139
          336331332C302032332C31312032332C323420302C3133202D31302C3233202D
          32332C3233202D31332C30202D32342C2D3130202D32342C2D323320302C2D31
          332031312C2D32342032342C2D32347A6D2D31363820306331332C302032342C
          31312032342C323420302C3133202D31312C3233202D32342C3233202D31332C
          30202D32332C2D3130202D32332C2D323320302C2D31332031302C2D32342032
          332C2D32347A222F3E0D0A3C706F6C79676F6E2066696C6C3D22234430383742
          39222066696C6C2D72756C653D226E6F6E7A65726F2220706F696E74733D2232
          30342C313034203230342C313432203137342C313432203233342C3231322032
          39352C313432203236352C313432203236352C31303420222F3E0D0A3C726563
          742066696C6C3D22234430383742392220783D223230342220793D2238302220
          77696474683D22363122206865696768743D223136222F3E0D0A0909093C2F67
          3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00020101012C79616DBAEEC7DBFFAA778FE9905E75DDC6A0B3ECC4A0B2E7A586
          95CD4F3A48810803071A00000000000000000000000000000000000000010000
          001B100D0E62B499A7E2F0CEE0FFC182A1FFD5A2BCFFE8C5D7FFE6C4D3FFC49E
          B7FFB072A9FF743F65C50D0B0B1A000000000000000000000000000000090000
          0020201C1E54C9AFBDE6EAC7D9FFC58CA7FFD4A8BEFFE6C5D6FFE1C3D0FFB88F
          AEFFA95F9FFFC388AFFF74646A8F000000000000000000000000000000040000
          000827232542D2B6C4EDE6C4D4FFCE9DB5FFDBB3C7FFE8CAD8FFE9D2DBFFAC75
          9FFFA45893FFE9CADBFFC0A1AFE61E0C14420000000000000000000000000000
          00002C252833E8DBE1F2ECD3DFFFCE9EB5FFE1BCCFFFE9CAD8FFD1ABC0FF8C37
          7BFFB673A3FFF5E1E7FFD5AABFFF764E61AC0000000000000000000000000000
          00000B090A0BB2A6ACBAE2C5D4FFD7ABC0FFDFB9CCFFE4C1D0FFCC92ACFF8B29
          6AFFD0A4BEFFF6E4E9FFDCB8C8FD846C78970000000000000000000000000000
          000000000000120F111680697496DFBFD0FDDBAFC2FFEBC5CFFFBCB6D4FFA48B
          B6FFEBC6D3FFF2DCE6FFDBC0CDF4544A4F5D0000000000000000000000000000
          000000000000000000000403040562585B68D0ACC0F18E9CD2FF6994D3FF7E9C
          D5FEDCBDD2FFFCE5E9FFCEBAC5E1231E21280000000000000000000000000000
          0000000000000000000000000000000000003E4564875D89D3FFA3BDE7FFA3C5
          F2FEB2B0D2F9D9B5C1F18F7D859C050505060000000000000000000000000000
          00000000000000000000000000000102050D1D38649E7F9FD8FFA1BAE4FFC5D8
          F5FFA7B5CDD8483843600D070810000000000000000000000000000000000000
          00000000000000000000000000000B1931894067ABFF6A8DC7FFABC5F0FFEFF6
          FFFFB2BECACC070E0E0E00000000000000000000000000000000000000000000
          000000000000000000000001020C051C30DC0C243EFF4A6BA4FFB0C9F1FFF2FC
          FFFFC4CBCBCB15171A1A00000000000000000000000000000000000000000000
          000000000000000000000002052A284353E8284556FF3D5F84FF547695FF5975
          8DFF586B80D90C0F122100000000000000000000000000000000000000000000
          000000000000000000000000010B1D3041B92C5470FF4A7B9EFF092A43FF0017
          2CFF081D2EB20000010800000000000000000000000000000000000000000000
          00000000000000000000000000000001021A112B3FA5164260F3062A43FD142A
          3CBE070C0F290000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000102030800091056071620670709
          0C14000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000004000100110000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000C0419035F25AA067B37CB0016053700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000D032B01491AA705AA3EFF0ED15FFF0C7A3BD5272C1282453724703722
          1763160903420704011700000000000000000000000000000000000000000000
          0000000C032B049439E600D85CFF00E96DFF17D36AFF385E29FF37591BFF4F67
          2DFF4C381AE81E0A065500000000000000000000000000000000000000000002
          0006025D22A500BB47FF00DC5FFE00DF5FFF00C845FF14AF56FF166014FF156C
          1AFF297224FF1F3B109F0000000000000000000000000000000000000000000A
          0314004D1C7E04752AC100B93FFE00C640FF309B37FF6F8E37FF2D8C31FF2086
          29FF218C2AFF3D7024FF292C0E7F000000000000000000000000000000000000
          000000000000494213C5009E2EFF00A52FFF3D923AFF5C9A3DFF37A645FF3EA6
          45FF37A640FF42A33FFF437827EC090E04230000000000000000000000000000
          00000B10002F487525FF1D963FFF009E25FF189F3CFF57C363FF65C96EFF5BC4
          66FF73C767FFA58E39FF578529FF25340E850000000000000000000000000000
          00000C23043F42993EFF78C18EFF51D477FF7DC481FFADEB9CFF86E587FF7EE0
          82FFC5B967FFBAA850FF759A42FF474D1BB30000000000000000000000000000
          00000B18042275B45AFD9EC9ACFF8BC199FFAFCBB2FFFFFFF6FFF1F2D2FFC3E4
          98FFBCD480FF8DDC76FF71C858FD244018620000000000000000000000000000
          0000000000007A9547BDF0D9AEFFF1F0DEFFF8F9F6FFFFFDFAFFFFF9EFFFFCE8
          C1FFD4D186FFA9B856FF678938D3050A040D0000000000000000000000000000
          0000000000001C1A0B25E4B47BECFFEFD5FFFFFEF6FFFFFAF4FFFFF5E4FFFFD9
          ACFFEB9D51FFAE571EFF230D0840000000000000000000000000000000000000
          000000000000000000001F130823B3855BB7F2D1A2F8F3E0B0FFF7CA90FFD4A9
          57FC788030CE2815094700000000000000000000000000000000000000000000
          00000000000000000000000000000000000049452559A1BD71D29B8E4DCA403A
          1466000402090000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001616161F3C3C3C6E06060617000000000000000000000000000000000000
          0000000000031A1A1A2B00000000000000000000000000000000000000000000
          00006E6E6E89898989AB767676A60202020A0000000100000004000000020000
          00005B5B5B956969698700000000000000000000000000000000000000000000
          00002424242B808080A7C8C8C8FF7575759B000000000000001C0000000B1919
          1930858585BE1B1B1B1E00000000000000000000000000000000000000000000
          0000000000000F0F0F1C7E7E7EB4D6D6D6FF7272728600000000000000086060
          6094282828360000000000000000000000000000000000000000000000000000
          000000000000000000000000000271717194EAEAEAFF7878787B313131544747
          475D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000625F626EDDDADCFF9E9E9ECA0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000024616F62CACAC8C9F67B7B
          7B95030303040000000000000000000000000000000000000000000000000000
          000000000000000000000000000000210F5756985BF93755307A2D2A2D40B3B2
          B3F68D8D8DB63B3B3B411212121E000000000000000000000000000000000000
          0000000000000000000000110630319559F88DD79FFF25352640000000004444
          4456BCBCBCFFB9BABAFFB8B8B8DE747475981717171E00000000000000000000
          000000000000000000080F6430C873C388FF4F7B5B9900000001000000000000
          0000888888C89B9D9DFFE5E5E6FFE2E2E2FF9E9E9EB000000000000000000000
          00000000000501340F894BA766FF75B180DD060C081500000000000000000000
          00006161617FA8A7A7C1BFBFBFE07C7C7C9A9F9F9FAF00000000000000000000
          00000000000D3E7E48CFA4D89FFD1E2E203F0000000000000000000000000000
          00000303030301010101525252594646464A1414141900000000000000000000
          0000000000012F3C2C465361496B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          04070000070C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          4F77000079CA000043760000284500000B170000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          6CA4001DADFF0048CFFF01009EEA0100ACF4010196D602026E9B0101364E0101
          0F1B000000000000000000000000000000000000000000000000000000000000
          6FA5001990D805AACDCD01568F920200212C0505687D020299B60404BAE50202
          BDF302029AD601016B9E00003858000000000000000000000000000000000000
          7AAC000076BE0514141413B3E3E3025C75750000000000000000000003030202
          2C3103035A6E010189B403037EAD010101010000000000000000000000000000
          7CAA01018BD0000000000B1C1D1D1DBBE1E1056682872B6B40A8215C3F820000
          0000000000000000000000000000000000000000000000000000000000000000
          7FAA020290D10000000000000000214A3C5F30D1E8FF187E92A765A787C9275A
          4182000000000000000000000000000000000000000000000000000000000000
          83AA020294D1000000001A49326C215839831228273020A9D2D23883A2A658A0
          70D00D4B6371007CB9B9000A1111000000000000000000000000000000000000
          82A70F109CD840704E8B1B54388100000000000000000F1D21212CA4D7D72BB1
          E1F71C7D96BB0E76919116ABD6D6000B13130000000000000000000000000000
          80A21723AAF33E5549600000000000000000000000000000000021292B2B4783
          9D9D51A381D5090C001726788A8A1C81ADAD0000000000000000000000000000
          87A9030191DB0000000000000000000000000000000000000000000000000000
          00005878698D4EA07ADD0002000805151B1B0000000000000000000000000000
          88A7010091E10000010200000000000000000000000000000000000000000000
          000006060606428068A44AA684D9010300070000000000000000000000000000
          87A6010190E40101020400000000000000000000000000000000000000000000
          000000000000000000004885779B4DA88AD9040D081700000000000000001414
          95AE0F0F9EF40202050800000000000000000000000000000000000000000000
          00000000000000000000000000003D7E66A1214F3B7000000000000000002222
          7E861A1A83A50000010200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000102020300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000009C8F
          82BCC4B5A9FFB5A699FFB6A79BFFB6A79BFFB6A79BFFB6A79BFFB6A79BFFB6A7
          9BFFB6A79BFFB6A79BFFB5A79AFF807063CF000000000000000000000000A79E
          94BCF6F6F7FFF1F1F1FFF1F1F1FFF1F1F1FFF1F2F2FFF1F2F2FFF1F2F2FFF1F2
          F2FFF1F2F2FFF1F1F1FFF7F9FAFF998E84CF000000000000000000000000A79E
          94BCF2F3F4FFE5E0DAFFE5DED6FFE5DDD5FFE9E5E1FFEDEEEFFFECECEDFFECEC
          EDFFECECEDFFEBEBEBFFF4F6F6FF988D84CF000000000000000000000000A79E
          94BCF6F7F8FFEAE4DFFFE7E0D8FFE7DFD7FFECE8E4FFF0F0EFFFF0EFEEFFF0EF
          EFFFEFEEECFFF0F0EFFFF8F9FAFF988D84CF000000000000000000000000A79E
          94BCF7F8F8FFDFD4C8FFE4DBD2FFE4DCD3FFE0D5C9FFE2D7CDFFE2D7CDFFE0D4
          C8FFE4DBD1FFDED2C6FFFAFAFBFF988D84CF000000000000000000000000A79E
          94BCF8F8F7FFE4DBD2FFFDFFFFFFFCFFFFFFEFEBE6FFF7F7F7FFF7F7F7FFEFEB
          E6FFFFFFFFFFE5DCD2FFFAFAF9FF988D84CF000000000000000000000000A79D
          94BCFBFBFBFFE2D6CAFFF0EAE5FFF0EBE5FFE9E0D6FFEDE6DFFFEDE6DFFFE9E0
          D6FFF1EDE7FFE1D5CAFFFDFDFDFF988D84CF000000000000000000000000A79D
          94BCFCFDFEFFDCCBBAFFE3D2C0FFE4D2C0FFE0D0BFFFE2D1C0FFE2D1C0FFE0D0
          BFFFE4D3C0FFDBCAB9FFFEFFFFFF988D84CF000000000000000000000000A79D
          93BCFEFFFFFFECE5DEFFE9E0D7FFEAE1D9FFE9E0D7FFE8DED5FFE9E0D7FFEAE1
          D9FFE9E0D7FFECE4DDFFFFFFFFFF988C84CF000000000000000000000000A79D
          93BCFFFFFFFFF6F3F0FFF4F0EDFFF4EFEBFFFAF9F7FFFFFFFFFFFAF9F8FFF3EF
          EBFFF4F0ECFFF6F2EFFFFFFFFFFF988C84CF000000000000000000000000A79D
          93BCFFFFFFFFF7F0E9FFF3ECE4FFEFE6DDFFF4F0EBFFFEFEFEFFF8F4F0FFF4EC
          E4FFF2EAE2FFF2ECE5FFFFFFFFFF968B81CF000000000000000000000000A79D
          93BCFFFFFFFFCACAC9FFC8C7C7FFE8E7E7FFFEFEFEFFFFFFFFFFE5E4E4FFB5B5
          B4FFD2D2D2FFEDECEAFFDCD8D5FF9E8F81D9000000000000000000000000A79D
          93BCFFFFFFFFD6D5D4FFD2D0CFFFE6E4E3FFFBFAFAFFFFFFFFFFEBEBEBFFD1D0
          CEFFC3BAB1FFC9C0B9FFC6B7AAFF50494162000000000000000000000000A79D
          93BCFFFFFFFFCFC4BBFFC9BCB2FFC1B4A9FFF1EEEBFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4F1EDFFE5DED8FF5049416200000000000000000000000000000000A79D
          93BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EE
          EBFFCBC0B5ED433E384F00000000000000000000000000000000000000009F91
          84BCE0D3C6FFE0D3C6FFE0D3C6FFE0D3C6FFE0D3C6FFE0D3C6FFE0D3C6FFD5C3
          B2FF4A433B5E0000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000101010265252
          52724C4C4C653E3E3E56323232492929293F1E1E1E361616162C0E0E0E220707
          071803030310000000070000000000000000000000000000000033333340E6E6
          E6FFE4E4E4FFE0E0E0FFDCDCDCFFDBDBDBFFD9D9D9FFD7D7D7FBD0D0D0F5CACA
          CAEFC5C5C5EABDBDBDE1B3B3B3D6A5A5A5CA979797BE3535355636363638E1E1
          E1EFEEEEEEFFEAEAEAFFE8E8E8FFE6E6E6FFE5E5E5FFE4E4E4FFE3E3E3FFE4E4
          E4FFE6E6E6FFEAEAEAFFECECECFFEDEDEDFFEDEDEDFF6767677136363639E7E7
          E7F0F4F4F4FFF3F3F3FFF0F0F0FFEEEEEEFFEDEDEDFFEEEEEEFFF1F1F1FFEFEF
          EFFFF1F1F1FFF2F2F2FFF3F3F3FFF5F5F5FFF6F6F6FF6565656937373739ECEC
          ECF0FBFBFBFFF9F9F9FFF5F5F5FFF2F2F2FFF3F3F3FFEDEDEDFFD8D8D8FFE4E4
          E4FFEFEFEFFFF7F7F7FFF9F9F9FFFAFAFAFFFAFAFAFF6767676A38383839F0F0
          F0F0FFFFFFFFFDFDFDFFFAFAFAFFF6F6F6FFE0E0E0FFD1D1D1FFE9E9E9FFFCFC
          FCFFEBEBEBFFEEEEEEFFFCFCFCFFFCFCFCFFFCFCFCFF6868686A38383839F0F0
          F0F0FFFFFFFFFFFFFFFFF3F3F3FFDCDCDCFFE5E5E5FFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFF1F1F1FFEDEDEDFFFDFDFDFFFDFDFDFF6868686A37373738F0F0
          F0F0FCFCFCFFEAEAEAFFE5E5E5FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF4F4F4FFEAEAEAFFF8F8F8FF6A6A6A6B3C3C3C3DF4F4
          F4FFE8E8E8FFEFEFEFFFFAFAFAFFFAFAFAFFFBFBFAFFFBFBFCFFFBFBFCFFFBFB
          FBFFFBFBFAFFF9F9F9FFFAFAFAFFF3F3F3FFE7E7E7FF6464646C1F1F1F217F7F
          7F8B8C8C8C92838383877A7A7A807777777B6E6E6E736666666B626262665B5B
          5B5F525252564D4D4D504646464A414141433838383C14141418000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
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
          79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C3020313630
          302C3020313630302C3136303020302C3136303020222F3E0D0A3C672069643D
          225F323830333131303136343736382220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D2223
          3744443145422220706F696E74733D223431382C333237203731372C33323720
          3731372C353631203830312C353631203830312C33333320313235372C333333
          20313235372C35393020313336342C3130313320313336362C31303231203133
          36362C3130353820313336362C31323733203233342C31323733203233342C31
          303538203233342C31303231203233362C31303133203335302C353631203431
          382C35363120222F3E0D0A3C706F6C79676F6E2066696C6C3D22776869746522
          20706F696E74733D223235382C31303231203237372C3130323120313332332C
          3130323120313334322C3130323120313334322C3130333920313334322C3132
          333920313334322C3132353720313332332C31323537203237372C3132353720
          3235382C31323537203235382C31323339203235382C3130333920222F3E0D0A
          3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D223131
          30362C38313920313231342C38313920313231342C39323620313130362C3932
          3620222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F69
          6E74733D223935342C38313920313036322C38313920313036322C3932362039
          35342C39323620222F3E0D0A3C706F6C79676F6E2066696C6C3D227768697465
          2220706F696E74733D223830312C383139203931302C383139203931302C3932
          36203830312C39323620222F3E0D0A3C706F6C79676F6E2066696C6C3D227768
          6974652220706F696E74733D22313130362C36373420313231342C3637342031
          3231342C37383120313130362C37383120222F3E0D0A3C706F6C79676F6E2066
          696C6C3D2277686974652220706F696E74733D223935342C3637342031303632
          2C36373420313036322C373831203935342C37383120222F3E0D0A3C706F6C79
          676F6E2066696C6C3D2277686974652220706F696E74733D223830312C363734
          203931302C363734203931302C373831203830312C37383120222F3E0D0A3C70
          6174682066696C6C3D2277686974652220643D224D343338203832366332392C
          302035322C32342035322C353320302C3239202D32332C3533202D35322C3533
          202D33302C30202D35332C2D3234202D35332C2D353320302C2D32392032332C
          2D35332035332C2D35337A222F3E0D0A3C706F6C79676F6E2066696C6C3D2277
          686974652220706F696E74733D223533342C383633203732322C383633203732
          322C383935203533342C38393520222F3E0D0A3C706F6C79676F6E2066696C6C
          3D2277686974652220706F696E74733D223434382C373037203638372C373037
          203638372C333538203434382C33353820222F3E0D0A3C706F6C79676F6E2066
          696C6C3D22233744443145422220706F696E74733D223237372C313233392031
          3332332C3132333920313332332C31303339203237372C3130333920222F3E0D
          0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D2231
          3236372C3131303520313239352C3131303520313239352C3131383020313236
          372C3131383020222F3E0D0A3C706F6C79676F6E2066696C6C3D227768697465
          2220706F696E74733D22313137312C3131303520313139392C31313035203131
          39392C3131383020313137312C3131383020222F3E0D0A3C706F6C79676F6E20
          66696C6C3D2277686974652220706F696E74733D22313037352C313130352031
          3130332C3131303520313130332C3131383020313037352C3131383020222F3E
          0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D22
          3937382C3131303520313030362C3131303520313030362C3131383020393738
          2C3131383020222F3E0D0A3C706F6C79676F6E2066696C6C3D22776869746522
          20706F696E74733D223838322C31313035203931302C31313035203931302C31
          313830203838322C3131383020222F3E0D0A3C706F6C79676F6E2066696C6C3D
          2277686974652220706F696E74733D223738362C31313035203831342C313130
          35203831342C31313830203738362C3131383020222F3E0D0A3C706F6C79676F
          6E2066696C6C3D2277686974652220706F696E74733D223639302C3131303520
          3731382C31313035203731382C31313830203639302C3131383020222F3E0D0A
          3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D223539
          342C31313035203632322C31313035203632322C31313830203539342C313138
          3020222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F69
          6E74733D223439372C31313035203532352C31313035203532352C3131383020
          3439372C3131383020222F3E0D0A3C706F6C79676F6E2066696C6C3D22776869
          74652220706F696E74733D223430312C31313035203432392C31313035203432
          392C31313830203430312C3131383020222F3E0D0A3C706F6C79676F6E206669
          6C6C3D2277686974652220706F696E74733D223330352C31313035203333332C
          31313035203333332C31313830203330352C3131383020222F3E0D0A3C706F6C
          79676F6E2066696C6C3D22233744443145422220706F696E74733D223536382C
          363332203635312C363332203635312C363539203536382C36353920222F3E0D
          0A3C706174682066696C6C3D22233744443145422220643D224D353133203538
          32632D342C31202D372C32202D382C33202D322C32202D332C34202D332C3720
          302C3220302C3420322C3620312C3120342C3320392C346C30202D32307A222F
          3E0D0A3C706174682066696C6C3D22233744443145422220643D224D35323020
          36333863332C3020362C2D3120382C2D3320332C2D3220342C2D3420342C2D37
          20302C2D32202D312C2D34202D332C2D36202D322C2D31202D352C2D33202D39
          2C2D346C302032307A222F3E0D0A3C706174682066696C6C3D22233744443145
          422220643D224D353133203635396C30202D39632D31312C2D31202D32302C2D
          35202D32382C2D31326C38202D313063362C362031332C392032302C31306C30
          202D3232632D392C2D32202D31352C2D35202D31392C2D38202D342C2D33202D
          362C2D38202D362C2D313520302C2D3720322C2D313220372C2D313620342C2D
          342031302C2D362031382C2D376C30202D35203720302030203563382C312031
          362C342032332C396C2D37203130632D352C2D33202D31302C2D36202D31362C
          2D366C302032312030203063392C322031352C352031392C3820342C3420362C
          3920362C313520302C37202D322C3132202D372C3137202D342C34202D31302C
          36202D31382C366C302039202D3720307A222F3E0D0A3C706F6C79676F6E2066
          696C6C3D22233744443145422220706F696E74733D223536382C353634203635
          312C353634203635312C353931203536382C35393120222F3E0D0A3C706F6C79
          676F6E2066696C6C3D22233744443145422220706F696E74733D223438352C34
          3037203635312C343037203635312C343333203438352C34333320222F3E0D0A
          3C706F6C79676F6E2066696C6C3D22233744443145422220706F696E74733D22
          3438352C343631203635312C343631203635312C343838203438352C34383820
          222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74
          733D223837372C35363220313137392C35363220313137392C35393420383737
          2C35393420222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D
          0A}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E0702260000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000065A422F77C89E7AE46846
          3198000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000003424183DB58966CDEBBB93FFECB98DFFDE9E
          6BFF53311FB40000000C00000000000000000000000000000000000000000000
          0000000000001D110A20966E53A3EAB892FFE8B288FFDE9E6BFBDD9960FBE7A4
          6BFBDB9865FF4E2E20BD00000014000000000000000000000000000000000300
          00036F4E3A78DEAA8AF0EAB998FFE3AA83FDDC9059FBDE955DFBE09B64FAE2A1
          6BFAEDAF77FAD89769FF4F3124B50000001300000000000000004932264FC798
          7FD4ECBDA1FFE8B697FFE3A783FBE2A076FCDE8E56FAE19760FAE29F6AFAE4A5
          71F9E5A773F7F0AF75F8D98F61FF553526A30000000B00000000F6C5ADFFEDC4
          AEFFE5B49AFBE4AD8EFBE7AE8CFDE6A883FBDF935EF9E29C68FAE49F6BF8E5A0
          6AF7E6A26AF6EBAA70F7F0AD71F7DD9869FE674A368D000000049677689AF7C8
          B3FFECBBA1FBE9B69BFAEAB89BFCE9B89AFBE29765F9E2945EF7E4985FF7E79D
          64F6ECA76CF7E7A56CF5E4A66CF9CB9665D7604A376600000004140E0B15DDB8
          A6E1F9CFBBFFF3CBB5FCEFC4ACFBEBBDA3FAE3935EF8E38D51F6E9995FF7E69C
          62F6E4A368FAD69D69E97F60448A110E0B140000000000000000000000005A48
          3E5DF6D9CAFAF4CEBBF9F2C4ACFAEFC3AAF9EA9B6EF6F28648F5E49A5FF8DDA1
          6BF89B7652AF2D241B3300000000000000000000000000000000000000000000
          0000AC9387AFEFD3C4F3F3CAB4F7F7C7B2F8D6D7B4FC80C988FFCD8855E2483A
          2B55000000000000000000000000000000000000000000000000000000000000
          0000281E1A29E3CBBFE5E3D2C5EEEEE0CEFFE6E1C0FF54714CA0170A041F0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000073645C74DECFC2ED90735E9E2A150A3200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000E07040F49291852000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000001A1A1A304343435D6868688A848484AD969696C3A0A0
          A0CFA1A1A1D56666668E00000000000000000000000000000000000000001010
          101C55555590949494CACECECEEADCDCDCFEDCDCDBFFD8D7D5FFD4D5D1FFCFD0
          CBFFC6C6C3FFC1C1C1F41212121C000000000000000000000000000000003434
          346A8D8D8DFF9E9E9EFFD5D5D5FFDFDDDBFFC5C1C5FFBEB9C1FFB6B3C1FFAFAF
          C8FFB6B6C4FFCECECBFF3D3D3D4A000000000000000000000000000000006868
          688BD6D6D6FFEEEEEEFFDCDCDCFFD2CDC3FF9B98D2FF8E8DD0FF9897D0FF9393
          CDFFA4A4C1FFD3D3CDFF6969697F000000000000000000000000000000006D6D
          6D91D4D4D4FFE4E4E4FFE4E4E5FFCFCAC5FFC3BFCEFF9E9FD7FFA8A9D7FFA1A1
          CFFF9594C6FFCBCAC6FF989999B6000000000000000000000000000000004949
          4967CCCCCCFFDDDDDDFFE4E5E5FFCFCBC6FFC4BFCCFF9695CFFFA7A6CEFFB0B1
          D4FFAAAACFFFC4C3C2FFC3C3C3E2020202080000000000000000000000002B2B
          2B40C6C6C6FFD6D6D6FFE6E6E6FFD1CDCBFFD9D6D3FF9C9CD7FF9C9CD5FFA1A1
          D6FF9A9BD7FFBFBFC3FFD8D8D7FB2020202C0000000000000000000000000F0F
          0F1BB7B7B7F4CFCFCFFFE4E4E4FFD5D3D1FFEAEAE6FFB0B1E0FFA7A8DAFFA5A6
          D5FF9B9DD5FFACADC7FFDDDCD8FF4F4F4F5F0000000000000000000000000000
          0000969696D0C9C9C9FFE0E0E0FFDAD7D7FFEAEAE4FFB4B4E4FFA0A2DCFFAEAF
          DAFFB0B1D8FFB7B8CCFFD9D8D5FF8484849C0000000000000000000000000000
          000065656592C4C4C4FFD9D9D9FFDCDAD9FFDAD7D7FFECECE7FFE5E5DCFFDDDB
          D2FFD7D4CAFFCDC9C1FFCED0D2FFB9B9B9D50000000200000000000000000000
          00003131314ABFBFBFFFD1D1D1FFE0E0E0FFD2CDCCFFD8D2CCFFCFC4B0FFCDC3
          B2FFCBC3B2FFCAC2ABFFCCCCC9FFD7D7D8F81414142000000000000000000000
          00000808080DACACACE9C9C9C9FFE1E1E1FFD3D2D3FFD3CECEFFCE9E84FFD197
          5EFFD9A75BFFDAA249FFC39C70FFDBDFE4FF3F3F3F5000000000000000000000
          00000000000070707096C5C5C5FFDDDDDDFFCECFCFFFD2D3D4FFDBC3BAFFC9A4
          8EFFC19E85FFC2A18CFFBDA89DFFD8DBDBFF6766667F00000000000000000000
          0000000000002323232EC6C6C6FFD1D1D1FFE2E2E2FFD6D6D6FFE7EAEBFFE1E7
          EAFFD4D6D9FFCDD0D3FFD1D4D7FFD2D2D2FF868686A000000000000000000000
          000000000000000000007A7A7AA0CECECEFFE1E1E1FFD6D6D6FFE0E0E0FFE3E2
          E2FFD2CFCEFFC8C3C2FFCCCCCBFDC3C3C3F25B5B5B6F00000000000000000000
          000000000000000000000B0B0B1079797999A2A2A2C773737387686868746E6C
          6C836562617E58565670464545563030303C0000000000000000}
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
          31303B203C672069643D2243616D61646120312220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C6D65746164617461206964
          3D22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C
          726563742066696C6C3D226E6F6E65222077696474683D223136303022206865
          696768743D2231363030222F3E0D0A3C6720786D6C3A73706163653D22707265
          7365727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D22
          6E6F6E6522207374726F6B653D222337444431454222207374726F6B652D7769
          6474683D22353122207374726F6B652D6D697465726C696D69743D2232322E39
          3235362220706F696E74733D2234322C333330203830372C333020313534392C
          33323920313534392C31323631203739332C313536382034332C313237312022
          2F3E0D0A3C706F6C79676F6E2069643D225F31222066696C6C3D227768697465
          2220706F696E74733D2234322C333330203830372C333020313534392C333239
          20313534392C31323631203739332C313536382034332C3132373120222F3E0D
          0A09093C2F673E0D0A3C706F6C79676F6E2066696C6C3D222337444431454222
          20706F696E74733D223532302C35303620313231392C32313820313531302C33
          3338203739342C36323020222F3E0D0A3C706F6C79676F6E2066696C6C3D2223
          3744443145422220706F696E74733D2238362C333434203334322C3433382031
          3035372C313630203830312C353920222F3E0D0A3C706F6C79676F6E2066696C
          6C3D22233744443145422220706F696E74733D223832382C3636392031353230
          2C33393720313533302C31323438203832342C3135323920222F3E0D0A3C706F
          6C79676F6E2066696C6C3D22233744443145422220706F696E74733D2237362C
          333935203332362C343930203333302C373039203335312C363939203337302C
          373236203339302C373139203431322C373337203432382C373331203435322C
          373633203435352C353431203737302C363634203737312C313533302036382C
          3132343320222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001126087A142E0C8C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000308041810331B771D572CB123713FCC2C8848F02C813BF01E4E
          1EAB0E2007610000000200000000000000000000000000000000000000000000
          0000000000000E2D19642DA266FF2DAC74FF27BD9BFF28AB83FB2CA169FF2DAB
          77FF338633FF1E4A16B200000008000000000000000000000000000000000000
          0000000000000D2E1F602CA46CFF1D5F37B705140E341A4E299D1E592EB60C2D
          1E69308D44FD338734FF10280C6B000000000000000000000000000000000000
          000000000000103B286E257641DE0000000000000000194F2C9319512DA10100
          00282D8B45FB329144FF1A451CA4000000000000000000000000000000000000
          0000000000001023076512250673000000000000000014442982247948DE267D
          48E42F9A58FF30974FFF1A4A23A7000000000000000000000000000000000000
          000000000000000000040000000000000000050E07301F764FC82DAC75FF2DA5
          6BFF2D9D60FF2F9E5DFF173E1894000000000000000000000000000000000000
          000000000000000000000000000010412E7E27A97FFA2AB689FF2AAD7CFF2BA7
          73FF2CAE7BFF2F8B48FE080D0036000000000000000000000000000000000000
          00000000000000000008187059B128C3A2FF28C09CFF28B68EFF29B891FF29BE
          99FF278D5BEB0B1B075000000000000000000000000000000000000000000000
          0000000000000C3B306825CDB4FF25C9AFFF26C7AAFF28C5A6FF25BD9FFB1769
          51AA030500210000000000000004000000000000000000000000000000000000
          0000000000001162599924DAC9FF25CFBAFF27C2A3FF25B89AF9186851AC0000
          000000000000154C319C07170E3C000000000000000000000000000000000000
          0000000000001358459A23E4DBFF25C6ACFC0E2612641359489217715CAC0000
          000007180F4127A77EFB06140C37000000000000000000000000000000000000
          0000000000001120076829BA91FF21DAD3FC0727235114605094187A66BB0A2D
          225F23B297EF27BD9CFF050E0734000000000000000000000000000000000000
          000000000000010000071E4716AD2AB58AFF24D4C2FF22D0C1FD24D0BEFF26C9
          AEFF2CB687FF2E7C31FC0507002A000000000000000000000000000000000000
          00000000000000000000000000000B1C0A55176047A11FC2B4EB22C1AEF21C67
          45B2132E0E7B0608002D00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000D392E720F46388D0000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000E060504200807052708070526080605270806052708060527080605270807
          062609070626080605280504031C000000000000000000000000000000005D55
          4C91776D61B581776BC17F766ABE7F756ABE80766BBE80766BBE81776CBE7B71
          63BD7D7365BE82796DC66D6357A83C373156000000000000000000000000BCB5
          ABE1D9D1C5FDDDD6CBFFDED8CEFFE0D9D0FFE1DAD1FFE1DAD1FFE1DBD2FFD8D0
          C4FFCBC1B1FFD0C7B5FFD2C9BDF18681799E000000000000000000000000C1BE
          B7D4EAE7E0F9F3F0E9FFF3F0EAFFF1ECE6FFEEE7DEFFEEE8E1FFEDE8DFFFEAE4
          DCFFD7CEC1FFDBD3C2FFE1DBCFED817D76930000000000000000000000009694
          8DABE1DDD8EFFAF8F3FFF9F6F1FFE9E2DAFFDBD0C6FFDFD6CCFFDED5CAFFE0D8
          CEFFD8CFC5FFD9D1C5FFC6C1B7DD514E495F000000000000000000000000817F
          7B8FE0DEDAE9F5F5F4FFF3F4F2FFEEE9E3FFE4DBD4FFE5DFD7FFE6DFD8FFE4DE
          D5FFE6DFD7FFE8E3DBFFBEBCB8D13E3D3C410000000000000000000000007271
          6F78CACAC8E5B0B0B0FFAEAEAEFFE1DFDBFFF6F1EAFFECE7E0FFECE7E1FFECE7
          E1FFEBE6DFFFEDE9E2FFBDBBB7C82F2F2D320000000000000000000000005E5E
          5E5E95978EDE85867BFF8A8C80FFD0D2C8FFFFFFFCFFF9F9E9FFFBF9EAFFF9F9
          EAFFF9F8E7FFFBF9E9FFBDBDB3BE222221230000000000000000000000004242
          4144B0AFAAD1CFCCD1FFD3D1D7FFEEEEEDFFFFFFFFFFFFFFFEFFFFFFFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFB2B2AFB2161514170000000000000000000000001B18
          282F7B6CD2D89485E5FF9888E4FF9884F3FF9681F3FF9682F4FF9581F7FF927F
          EAFF8D7EDCFF8A7BE3FF6255ADB80706080B0000000000000000000000000200
          141B1A0896AC33239CF336269AF72F18BCE73117C2E13219BFE32E15C4DF2D17
          ADEB312295FA29189DEF0F007991000001020000000000000000000000000202
          040807052A3E43415CA7474561B01D194D7119144B601A164C651511495D2B28
          55844E4C66B93736529602001E31000000000000000000000000000000000000
          000000000000393934503D3E3153080800080000000000000000000000001E1F
          17254546395B2C2C263C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
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
          2076696577426F783D22302030203135393820313539362220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E652220783D2232222077696474683D22313539
          3622206865696768743D2231353936222F3E0D0A3C672069643D225F32383234
          3238303230383232342220786D6C3A73706163653D227072657365727665223E
          262331333B262331303B3C6720786D6C3A73706163653D227072657365727665
          223E262331333B262331303B3C706174682066696C6C3D222346334632463122
          20643D224D3835332038323663322C3320342C3620342C313020302C37202D36
          2C3133202D31332C31336C2D35392030632D372C30202D31332C2D36202D3133
          2C2D313320302C2D3420322C2D3720342C2D3130202D322C2D32202D342C2D36
          202D342C2D3920302C2D3420322C2D3820342C2D3130202D322C2D32202D342C
          2D36202D342C2D313020302C2D3320322C2D3720342C2D39202D322C2D32202D
          342C2D36202D342C2D313020302C2D3320322C2D3720342C2D39202D322C2D33
          202D342C2D36202D342C2D313020302C2D3720362C2D31332031332C2D31336C
          3539203063372C302031332C362031332C313320302C34202D322C37202D342C
          313020322C3220342C3620342C3920302C34202D322C38202D342C313020322C
          3220342C3620342C3920302C34202D322C38202D342C313020322C3220342C36
          20342C313020302C33202D322C37202D342C397A222F3E0D0A3C6720786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C72656374
          2066696C6C3D22233744443145422220783D223737392220793D223735332220
          77696474683D22373122206865696768743D223132222072783D223722207279
          3D2236222F3E0D0A3C726563742066696C6C3D22233744443145422220783D22
          3737392220793D22373732222077696474683D22373122206865696768743D22
          3132222072783D2237222072793D2236222F3E0D0A3C726563742066696C6C3D
          22233744443145422220783D223737392220793D22373931222077696474683D
          22373122206865696768743D223132222072783D2237222072793D2236222F3E
          0D0A3C726563742066696C6C3D22233744443145422220783D22373739222079
          3D22383130222077696474683D22373122206865696768743D22313222207278
          3D2237222072793D2236222F3E0D0A3C726563742066696C6C3D222337444431
          45422220783D223737392220793D22383330222077696474683D223731222068
          65696768743D223132222072783D2237222072793D2236222F3E0D0A09090909
          3C2F673E0D0A3C636972636C652066696C6C3D2223463346324631222063783D
          22373835222063793D223830382220723D223431222F3E0D0A3C636972636C65
          2066696C6C3D2223374444314542222063783D22373835222063793D22383038
          2220723D223334222F3E0D0A3C706174682066696C6C3D222346334632463122
          20643D224D37383420373933632D322C30202D332C31202D342C32202D312C30
          202D322C31202D322C3320302C3120302C3220312C3320312C3120322C312035
          2C326C30202D31307A6D3320323863322C3020342C3020352C2D3120312C2D31
          20312C2D3220312C2D3420302C2D3120302C2D32202D312C2D33202D312C2D31
          202D322C2D31202D352C2D326C302031307A6D2D332031316C30202D35632D36
          2C30202D31302C2D32202D31352C2D366C35202D3563332C3320362C35203130
          2C356C30202D3131632D352C2D31202D382C2D32202D31302C2D34202D322C2D
          32202D332C2D34202D332C2D3820302C2D3320312C2D3620342C2D3820322C2D
          3220352C2D3320392C2D336C30202D33203320302030203363342C3020382C32
          2031322C346C2D342036632D322C2D32202D352C2D33202D382C2D346C302031
          312030203063352C3120382C322031302C3420322C3220332C3520332C382030
          2C33202D312C36202D332C38202D332C32202D362C33202D31302C336C302035
          202D3320307A222F3E0D0A0909093C2F673E0D0A3C6720786D6C3A7370616365
          3D227072657365727665223E262331333B262331303B3C706174682066696C6C
          3D22233744443145422220643D224D3535382038346C39333820306335352C30
          203130302C3435203130302C31303020302C3535202D34352C3939202D313030
          2C39396C2D3933382030632D35352C30202D3130302C2D3434202D3130302C2D
          393920302C2D35352034352C2D313030203130302C2D3130307A222F3E0D0A3C
          706174682066696C6C3D22233744443145422220643D224D383735203339316C
          36323120306335352C30203130302C3435203130302C31303020302C3534202D
          34352C3939202D3130302C39396C2D3430332030632D35362C2D3832202D3133
          312C2D313530202D3231382C2D3139397A222F3E0D0A3C706174682066696C6C
          3D22233744443145422220643D224D31313534203639386C3334322030633535
          2C30203130302C3435203130302C393920302C3535202D34352C313030202D31
          30302C3130306C2D3239302030632D372C2D3730202D32352C2D313337202D35
          322C2D3139397A222F3E0D0A3C706174682066696C6C3D222337444431454222
          20643D224D3132303820313030356C32383820306335352C30203130302C3434
          203130302C393920302C3535202D34352C313030202D3130302C3130306C2D33
          333220306332352C2D36322034302C2D3132392034342C2D3139397A222F3E0D
          0A3C706174682066696C6C3D22233744443145422220643D224D313131302031
          3331316C33383620306335352C30203130302C3435203130302C31303020302C
          3535202D34352C313030202D3130302C3130306C2D35383120306337392C2D35
          32203134352C2D313230203139352C2D3230307A222F3E0D0A0909093C2F673E
          0D0A3C636972636C652066696C6C3D2223374444314542222063783D22353533
          222063793D223936332220723D22353533222F3E0D0A3C706174682066696C6C
          3D2277686974652220643D224D35333220373236632D32372C33202D34392C31
          31202D36342C3235202D31362C3133202D32342C3331202D32342C353120302C
          323120362C33372031392C34392031322C31322033352C32332036392C33346C
          30202D3135397A6D3539203435346333302C2D332035332C2D31312037302C2D
          32362031382C2D31342032362C2D33322032362C2D353320302C2D3231202D37
          2C2D3339202D32302C2D3531202D31342C2D3133202D33392C2D3235202D3736
          2C2D33366C30203136367A6D2D3539203136356C30202D3637632D38342C2D39
          202D3135392C2D3432202D3232362C2D3130316C3637202D38306335322C3435
          203130352C3732203135392C38306C30202D313738632D36392C2D3137202D31
          32302C2D3339202D3135322C2D3636202D33322C2D3237202D34382C2D363720
          2D34382C2D31323020302C2D35332031382C2D39362035352C2D313330203338
          2C2D33342038362C2D3532203134352C2D35356C30202D343620353920302030
          2034376336382C34203133322C3238203139322C36396C2D3630203834632D34
          302C2D3238202D38342C2D3436202D3133322C2D35336C302031373320332030
          6337312C3137203132332C3339203135362C36372033332C32392035302C3730
          2035302C31323320302C3534202D31392C3938202D35382C313331202D33382C
          3334202D38382C3533202D3135312C35366C30203636202D353920307A222F3E
          0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000010101022B2721485C544692817665C19F9281DDB2A897EBBEB6ABEBBEBA
          B4DDA5A39DC175726C9234322E48010101020000000000000000000000000000
          00006C614DBA9E8D6EFFA9987BFFB5A58BFFC4B59FFFD2C6B4FFE3DCD1FFF4F2
          EEFFF9F7F5FFEDE9E2FFE0D8CCFF888073BA0000000000000000000000000000
          00008F7D5FF69E8D6DFFA9987BFFB9AA91FFCEC1AFFFDCD2C4FFE9E4DBFFF6F4
          F1FFF9F7F5FFEDE9E2FFE0D8CCFFC3B5A2F60000000000000000000000000000
          00009C8D72F6C3B9A8FFCAC2B5FFCAC2B5FFC4BBADFFC2B8A9FFC2B8A9FFC4BB
          ADFFCAC2B5FFD3CCC2FFDFD9CFFFC9BDACF60000000000000000000000000000
          0000C0B9AEF7897C65FF897C65FF897C65FF8A7D66FF8E826BFF8F836DFF8B7E
          67FF897C65FF897C65FF897C65FFC4BEB3F70000000000000000000000000000
          0000535049719B8E79FE97876BFFAE9E84FFC3B49EFFD2C6B4FFE3DCD1FFF3F0
          ECFFEAE7E3FFC7C0B4FFB7AFA1FE5A5752710000000000000000000000000000
          00007B6C53D19E8D6DFFA9987BFFB5A58BFFC4B59FFFD2C6B4FFE3DCD1FFF4F2
          EEFFF9F7F5FFEDE9E2FFE0D8CCFFA69C8BD10000000000000000000000000000
          00008F7D5FF69F8D6FFFB9AB94FFCFC4B3FFD9D0C2FFE1D9CDFFE9E3DBFFF2EF
          EBFFF9F7F5FFF0EDE7FFE1D9CDFFC3B5A2F60000000000000000000000000000
          0000AFA38EF6C3BBADFFB8AE9FFFB0A492FFAFA491FFAFA491FFAFA491FFAFA4
          91FFB0A492FFB8AE9FFFCAC3B7FFCDC5B6F60000000000000000000000000000
          0000B6B1A7E880745CFF80725AFF8D7F67FF998B74FFA39680FFA99E8BFFA99F
          8DFF9B907DFF83765FFF80745CFFB6B1A8E80000000000000000000000000000
          0000413D3462A79980FEA8977AFFB5A58BFFC4B59FFFD2C6B4FFE3DCD1FFF4F2
          EEFFF9F7F5FFEBE6DFFFD9D2C7FE4D4A44620000000000000000000000000000
          00008A795BEE9E8D6DFFA9987BFFB5A58BFFC4B59FFFD2C6B4FFE3DCD1FFF4F2
          EEFFF9F7F5FFEDE9E2FFE0D8CCFFBDAF9DEE0000000000000000000000000000
          00008F7D5FF6B3A58DFFD1C7B7FFE2DBD1FFEBE6DFFFEEE9E2FFEDE8E1FFECE7
          E0FFEDE8E1FFEDE9E2FFE6E0D6FFC3B5A2F60000000000000000000000000000
          0000CDC6B9F7E7E0D7FFEBE6DEFFF2EFEBFFF4F1EEFFEEEAE4FFE6DFD5FFDDD4
          C7FFD3C7B6FFCBBDA9FFCCC0ADFFD7CFC4F70000000000000000000000000000
          00009D9994BBD5CEC4FFE4DFD7FFF5F3F0FFF8F7F4FFF0ECE7FFE7E0D7FFDED5
          C8FFD4C8B7FFC6B8A5FFC1B6A5FF99968FBB0000000000000000000000000000
          0000020201023938364875736E92999690C1B3B0A9DDBEB9B2EBBBB6AEEBAEA9
          A1DD96918AC173706B9238373548020201020000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FEFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FAFAFA00FFFEFF00FFFFFF00FCFEFF00EBE3DD00E4E1
          DF00F7F9FA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00EBF3F000C4D4CC00B9C7BF00B7C1BB00DADADB00F1E6DF00F5C9AC00DEC1
          AF00DFDFDF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFE
          FD00C0D2C900C1CDCC00C4E7EB00ADD5D300A2C0B900AEB7B600D7B8A900F3BE
          9F00D2C6BE00E9EEF100FBFDFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8FB
          FA00CAD6CE00B6D1D700D7EAEF00F7FBFD00E3ECEB00ADC4BE00A7A09100E2B4
          9A00E9C0A900D6C3B900DED5D100EEF0F100FFFFFF00FFFFFF00FFFFFF00FCFE
          FD00CFDDD700C1D2D400EDEBEB00F6F5F400EDECED00E3DEDB00BEC7BC00A79A
          8D00E1B59C00F4C4A600E8BCA100D6CDC900F6F8F800FFFFFF00FFFFFF00FFFF
          FF00DEE9E400C1D2D100EAEBED00EDEEEF00E3DEDA00F2CFBA00F5DAC800BDBE
          AC00BAA18E00EDC1A800F5C5A700D9BDAC00E6EBEC00FFFFFF00FFFFFF00FFFF
          FF00F3F9F900C2D8D400D0D9DB00E4E5E600C7B8AE00DBC1AD00DABBAA00CEB7
          A600ABAB9700CAA69300F2C3A600E3C1AB00D5D7D900FCFDFD00FFFFFF00F8F9
          F800EEE0D900CDC9BB00B4B1A500E6D4CA00E5E1DF00DCCABE00EDD8C900F2E5
          DF00BAC3B900AB9C8900E5BAA300F4C6AA00D7BDB000E4E5E600FFFFFF00F2E0
          D500EFBE9F00F1C2A500CEBDA200C4A99600E4D1C600D6C8C000CCB09F00F1E5
          DE00DED6D000A9A89200CCAB9700EDBCA100E4AE9200DDD0C900FCFCFD00EAE2
          DB00DCBBA500EEC6AD00D7BBA400C1BAA100C6AD9700ECCDBC00F7E9DE00F6E7
          DD00EEC3AD00C0B9A100BCA59100EDBEA100DFBFAC00E9E5E200EEEEEE00E9EB
          ED00BCB8B700D1BBAB00CEC7C300CBAB9400CABEA300BBA69000DFB49B00F3C2
          A500FBC9AD00C6BFAB00B3ADA500C7CFCD00CBDADD00FEFEFF00EDEDED00D3D3
          D400DED9D600CFB8A800D8D6D500B5978600E2BDA500C9C3AF00B0AE9D00B5A5
          9300B7BBB3009BB4AC00ACC1C400B9DFE800EDF4F600FFFFFF00F8F8F800EEEE
          EE00CCCDCC00BFC0C000F4F5F600C6C0BB00B4AFAB00EFEDED00EBF0EC00CDDA
          D200C5D8D300D2E4E200D7F0F500EDF8FA00FFFFFF00FFFFFF00FFFFFF00FCFC
          FC00F3F3F300FEFEFE00FCFCFC00F9FBFB00F4F5F600FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000821260039A4B00052DEEF0038A1AC0007
          1E23000000000000000000000000000000000000000000000000000000000000
          000000000000001B5259006FFAFF008AFFFF008EFBFD008BFBFE008EFBFD008B
          FFFF006FFAFF002F8690005FE2EA0074F9FF0067F7FF00266C75000000000000
          00000043B8C3008CFFFF50A4E9FE77B4E8FE48A0EAFE0089FCFE0085FBFE7CB7
          E8FE7AB6E8FE0087F8FE008AFCFE005CE9F50000000000000000000000000028
          727B008AFCFE0089FCFEA8CDEBFEFBFBFBFE95C4EAFE0089FCFE007FF8FEFCFC
          FCFEFCFCFCFE007FF0FE008AFCFE004DCBD90000000000000000000000000074
          FBFF008AFBFE0089FCFEA8CDEBFEFBFBFBFE95C4EAFE0089FCFE007FF8FEFCFC
          FCFEFCFCFCFE007FF0FE0089FBFE0081FCFE0012373D000000000016464E0088
          FCFE0089FBFE0089FCFEA7CDEBFEFBFBFBFE8FC0E9FE0080FAFE0076F6FEFCFC
          FCFEFCFCFCFE007FF0FE008AFCFE008BFBFE005CEBF900000000003BA8B5008D
          FBFD0087FBFE2A9DFCFEB7D5EEFEFBFBFBFEFCFCFCFEFCFCFCFEFCFCFCFEFBFB
          FBFEFCFCFCFE007FF0FE0089FBFE008AFBFE0070FAFF00000000002C828D008B
          FCFE3AA3FBFE51AEFCFEBFDAF0FEFBFBFBFEFCFCFCFEFCFCFCFEFCFCFCFEFBFB
          FBFEFCFCFCFE0080F0FE008AFCFE008AFBFE0079FCFF00000000000105060081
          FFFF7FC4FBFE6EBBFCFEC8E0F2FEFBFBFBFEACD0EDFE2A9BF9FE0B8BF5FEFCFC
          FCFEFCFCFCFE0A89F1FE0089FBFE0089FBFE0070FAFF0000000000000000005B
          ECF893CDFAFD87C8FCFED2E4F3FEFBFBFBFEBDDAF1FE58B1FCFE3BA3F9FEFCFC
          FCFEFCFCFCFE2193F2FE008AFCFE008EFBFD0043B6C100000000000000000000
          02031986FDFFA7D5FAFDDAE9F5FEFBFBFBFEC9E0F3FE74BEFBFE5BB1F9FEFCFC
          FCFEFCFCFCFE41A3F3FE008AFAFD0076FCFF0000000000000000000000000000
          000000091D21348FFCFFC8E4F5FDB9DBF4FEA7D3F6FE8DCBFBFE7FC4FBFE98C9
          F1FE94C7F0FE239BF9FD007BFDFF000B24280000000000000000000000000000
          00000000000000000000004BCED85CAAFEFFA6D8FCFEB0DBFAFDA1D6FBFE72BF
          FCFE0786FFFF005DE6EF00000102000000000000000000000000000000000000
          000000000000000000000000000000000000001C636C0045D2E0004CDDEE002B
          808B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
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
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000434343498545454D50000003F0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A2FF9F9F9FFC7C7C7FF1818189F0000
          0001000000000000000000000009000000290000002000000000000000000000
          00000000000000000000000000002B2B2B58CBCBCBFFB3B3B3FF171717940000
          00000000000000000000266F98D96ED4EFFF155067DA0000000B000000000000
          00000000000000000000000000000D0D0D25E7E7E7FFBEBEBEFF030303730000
          000000000000010E15261F709CEC5CB6FBFF489DB1F00000000A000000000000
          000000000000000000000000000046464685CFCFCFFFC2C2C2FF000000590000
          00000000000002162357B1EEFEFF50B6F4FF02263B9700000000000000000000
          00000000000000000000000000005F5F5FC3B1B1B1FFBFBFBFFF000000410000
          0000000000077ACAE4FF43A9EBFF5DC0E3FE0000001500000000000000000000
          0000000000080000004C0000001AD1D1D1FF959595FFB0B0B0FF0000006A0000
          00034696B9E74DAFF3FF359BDCFF083450AA0000000000000000000000000000
          0000A3A3A3EDB8B8B8FF9B9B9BF3B4B4B4FF6B9DC2FF64CAFFFF4BADE2FC0723
          36B281E6FFFF298FE0FF53B9F0FF0000001C0000000000000000000000000000
          0002D9D9D9FFABABABFFEDEDEDFFE2E2E2FF6ED4FBFF3FA5FFFF75DBFFFF82E8
          FCFF54BAFFFF1B81C1FF104C75BF000000000000000000000000000000001313
          1325E2E2E2FF9C9C9CFF9F9F9FFF8CBDE5FF7AE0FFFF379DFFFF7BDEF1FF8DF3
          FFFF4EB4FAFF399FF5FF00000045000000000000000000000000000000002222
          2240E9E9E9FFA1A1A1FF939089FF7DE3FDFF43A9FFFF3598F6FF8C898DFF6AA9
          BCFF65C0FFFF42A8FFFF2770A0E8000000240000000000000000000000003939
          3961F2F2F2FFADADADFF879EB5FFE4F6FFFFABDAFFFF379DFEFF618CA1FFC09F
          9FFF2A668BED42A8FFFF3F98D0F2000000080000000000000000000000002E2E
          2E5F9A9794FFE5E5E5FFEBEBEBFFD1DAE3FF90CEFDFFCCF8FFFF78DCFFFF877A
          7AFF4C718AFF42A8FFFF0C2D4998000000000000000000000000000000001818
          183EDFBE9CFF000000781414143D4B4B4B94A2A2A2FF8ABEECFFBCF2F2FFBA9A
          9AFF5597CAFF399FF8FF0000001E000000000000000000000000000000000000
          00009B8B7DF8C0AF9EFE444444E2333333C7373737CA746E6EEEC6ADADFF7D98
          A1FF8AEBFFFF1D61A2CF00000002000000000000000000000000000000000000
          0000000000001C1C1C485B5A58B67A7A79DA6F6E6ED43332327A0808081C0001
          0202030A11140000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000040D0D35541D9CDD7A26DFFF822CEBFF7623D9FF4319
          65CC0E0B003D0000000000000000000000000000000000000000000000000000
          0000000000020D4847721B91A2FF701FCFFF7E27ECFF8B2FEDFF7C23F4FE7028
          9CFFB06B0DFF3C240E8200000005000000000000000000000000001B07200028
          0A2F18494B632BDCDEFF1FA0BEFF9024E3FFD57AFCFFF6A4FCFFBF61FFFF7423
          BEFFD37C14FFD8872EFF261F1152002309290000000000000000000601070051
          145F2E8284992CE9EEFF35C3D7FF8461B8FFF896F1FFFFA2FFFFE17CDDFF9855
          6BFFE59D36FFE98C2DFE474F289B00290A300000000000000000000000000035
          0D3E42B7B2CE74F3F7FFC6FFFFFF92EDEBFF578BB0FF713C70FFAE8958FFFDFD
          90FFFFFF9DFFF3C360FF57622AB8000200020000000000000000000000000000
          0000137A328B5AD98FEAAAFCEFFF8DCCCBFF556E69FF6C6056FF77744EFFCFCE
          72FFD0ED6FFF45C348DC012C0B3300000000000000000000000000000000001F
          082400C531E800D936FF0D782A8A2F2B2B6E9A7F7FE1AC9A9AFF6E6169D71922
          196100AA2AC800D936FF009B27B60009020B00000000000000000043114F00B1
          2CD000CA32ED00AA2AC80000000000000000161616214B454696060606100000
          000000300C3800CC33F000D134F6009726B2002A0A310000000000360D3F001F
          0824000E031000802097003E0F49000000000000000000000000000000000000
          00000084219B002D0B350012041500280A2F003D0F4800000000000000000000
          00000000000000290A3000C330E500320C3B0000000000000000000000000051
          145F009B27B60000000000000000000000000000000000000000000000000000
          0000000000000000000000AD2BCB00D836FE00260A2D000000000063197400D9
          36FF004411500000000000000000000000000000000000000000000000000000
          00000000000000000000004B135800D936FF0083219A0002000200CB32EE00C5
          31E8000601070000000000000000000000000000000000000000000000000000
          000000000000000000000009020A00C832EB00C732EA005E186F00D936FF0074
          1D88000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000751D8900D936FF00D134F600D736FD0025
          092B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000001E072300D034F400D936FF00A329C00000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000009020A00BF2FE000D936FF005515640000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000C160C1D336134774F974FBF1C3C1C560000
          0000112011280309030E00000000000000000000000000000000000000000000
          00000107011B332D11732456199D328E33E648B44CFF64CE67FF5FBF5FFF418A
          41C269C26AF14B964BC71227127B110E11660000000800000000000000000000
          0000012D0173B7B758FF61A23BFF28A034FF588E2AFF538E2AFF26932FFF39A4
          39FF3EAB3FFF69D16AFF54B855FF345434DB0000000600000000000000000000
          0000011B033F5B7C3FEEA0B469FF77B95CFF7E9E45FF9AA94FFF51AD42FF46B5
          47FF30A731FF63C563FF71CE71FF2A4D2ABE0000000000000000000000000000
          000000000000010405C419271AFF384430FF415A3AFF7B905FFFA6BD92FF88AB
          71FF4C7F4CFF365237FF232D23FF0E0E0EA80000000000000000000000000000
          0000000000001C1C1CB5575457FF464348FF262425FF777073FF6E6ECCFF7B6F
          6BFF272225FF211C21FF120E11FF080708910000000000000000000000000000
          0000000000001717176F979797FF868789FF605C51FFC9AB86FF7F67B2FFC6AA
          87FF53504AFF272729FF1B1B1BFF0404044E0000000000000000000000000000
          0000000000000000000737373789838486E99D9688FFE7DCC4FF6D83C1FFE5DB
          C7FF7B776CFF353638E10F0F0F72000000020000000000000000000000000000
          000000000000000000000000000000000120352D25516398B2E82791CFFF7497
          A4DD251E16470000001800000000000000000000000000000000000000000000
          000000000000000000000000000000000000001D35372395DEF15AC0FBFF57AE
          DEE807191F1F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000102D3F442181C1D53FADF3FF61BFF2FF7DD8
          FFFF438EBAC20C24333600000000000000000000000000000000000000000000
          00000000000000000000050606093F799FBE67BCF6FF85C7F2FF7FC9F2FF6FC5
          F4FF4FBBFDFF356B8FA600000000000000000000000000000000000000000000
          00000000000000000000000000000E161B806C9BBCFFA5D9FBFF94D2F9FF6CC7
          FFFF3789BFFF181B1D6600000000000000000000000000000000000000000000
          0000000000000000000000000000282625877B8389FF728491FF50738BFF357D
          AEFF325064FF221C185C00000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1B63615FA996928EEA74706EFF3834
          31FE110F0D8B0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000014121212300B0B
          0A29000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000C050A0E55050B129503080DB4010307BB0307
          0BAD03070B720101022500000000000000000000000000000000000000000E14
          19342E383D50131B2065102534CF132839FF131F32FF161C2EFF0C1324FF0D1A
          2EFF0F2034FF07131CEF02060A8918242D4F16222D4D0000000B000000002B46
          73B06F9AC3FF315161FF1F3550FF231E3AFF291727FF1F1A51FF16102CFF1516
          4BFF1E193AFF131B33FF081521FF2B4B6AFF2D52A1F90101092500000000172B
          48A6284C6FFF1F2E3DFF302026FF2B4D83FF2B53ABFF1D3C80FF15294BFF2444
          A1FF1B3885FF201B30FF15161EFF030F1CFF07133CED02040D1F000000001C32
          4DC31E3456FF0F0D22FF2B192EFF1C7A8DFF39BAFFFF216CBAFF146481FF32C3
          FFFF226DC6FF1A1A35FF181225FF060C21FF070D17FA0102033F0508092D2641
          6BFC171E46FF1E1B3FFF0D0310FF1093A2FF2FCBFFFF1E7EC5FF048AA8FF23ED
          FFFF2990DAFF0B0E30FF1B1527FF120F28FF18263EFF101C2997121F287F233A
          54FF0B0405FF190E0FFF081210FF0BB8D5FF15BDF6FF1199DCFF10B1ECFF09CE
          E8FF1DB1F1FF0D1843FF0C0401FF110606FF1E2837FF233C50C5172B3BB01E2E
          46FF0F0607FF1A0B0EFF0F3A3CFF08DAFAFF0C79B0FF0E99D3FF1A98EDFF0A8D
          B5FF0FCCFFFF0D2C63FF010000FF080203FF181E27FF2A4A5DD31427379F1F32
          4BFF1F1516FF2F1C1EFF1F7578FF0DD2FFFF134282FF1088AAFF2369D5FF135A
          85FF0BD9FEFF144D94FF010003FF000000FF131A23FF274455CD0A141B572845
          61FF2B2227FF2D191BFF119EA4FF13A2F9FF1D2D70FF226C79FF1F57C7FF0E2F
          4AFF09C0E4FF175AB2FF010008FF000000FF172636FF1E3648B00102020E2B50
          69E42F323FFF4F4343FF14BBDBFF1070DAFF2C315DFF586F86FF0F377EFF070D
          17FF09A2CBFF1950CEFF00000EFF000000FF1B334AFF0D192268000000002037
          4AA8405F73FF345060FF46BCEAFF396FB7FF40445CFF93909CFF303950FF2221
          2CFF278EB4FF54A0F5FF132050FF09131BFF1B324DF10306092600000000233C
          65AA5791BEFF367088FF4C697AFF606E7EFF636773FF9C9699FF766C6CFF5552
          5DFF2C405BFF1C3F5BFF1E3A5BFF31506BFF3A619FF804070F23000000002639
          4F7E6389A5C63A6A7ED4335770FF141826FF2E2F38FF6D6B6DFF685D5CFF4745
          51FF26334FFF1C2D42FF1C3247EB577180C54C698DB80001051B000000000000
          0000000000000000000B0C161E68122533CB162E3EF9315370FF294259FF2740
          52FF264255DF1829379404060923000000000000000000000000000000000000
          000000000000000000000000000000000000070B0D240811164B0B151A57070D
          0F34000000090000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000070500084C3600518F630096B07B00B7B47E00BEAA78
          00B5CF9100DBF1AA00FFEAA500F8C08800C9543B005900000000000000000000
          00000000000035250038BE8600C6FDB000FFFFB000FFFDAF00FFFCAE00FFFEAF
          00FFF7AA00FFF1A900FFF2AB00FFFEB300FFFCB200FF523A0057000000000000
          0000412D0045E8A400F1FFB200FFF4B319FFF8D37BFFFBE9BEFFFCECC7FFFADF
          A1FFF5C24AFFF1A800FFF1A900FFF0AA00FFFEB300FFC48900CF000000001D15
          001FDB9A00E5FEB100FFF2B321FFFCF1D5FFFFFFFFFFFFFEFDFFFEFAEEFFFFFF
          FFFFFFFFFFFFF7D37BFFF0A600FFF1AA00FFF2AB00FFEBA700FA000000008C63
          0093FFB700FFF0A500FFF9DE9CFFFFFFFFFFFCE9BEFFF3B424FFF2AE16FFF6CB
          62FFFEFDF8FFFEFCF8FFF3B625FFF0A600FFF1AA00FFEEA800FE0A07000BD797
          00E4FAB000FFF0A500FFFBE6B4FFFFFFFFFFF4BB31FFEF9E00FFEF9F00FFF1AD
          09FFFDF7E6FFFFFFFFFFF5C145FFF0A500FFF9AF00FFC98F00D62D200030F6AD
          00FFF3AC00FFF1A900FFF3B41EFFF3B82CFFF1A900FFF3B82EFFF6C960FFFBEA
          C0FFFFFFFFFFFEFDF9FFF3B727FFF0A600FFFCB200FFB58000C045300049FCB2
          00FFF2AB00FFF1AA00FFF0A400FFF4BE3EFFFBEAC1FFFFFFFEFFFFFFFFFFFFFF
          FFFFFEFBF2FFF7CE6EFFF0A700FFF1AA00FFF9B000FFC58B00D130210033F8AF
          00FFF3AB00FFF0A600FFF4BF3DFFFFFEFBFFFFFFFFFFFEFBF3FFFCEABFFFF8D2
          7AFFF3B726FFF0A400FFF1A900FFF1AA00FFFBB100FFC08700CB543B0058F6AD
          00FFF2AB00FFF0A500FFF9D98FFFFFFFFFFFFBE6B2FFF2B11CFFF0A300FFF1A7
          00FFFAE2A8FFF8D581FFF1A700FFF1AA00FFFFB400FFA27100ABD19300DDF3AB
          00FFF1AA00FFF0A500FFF8D47DFFFFFFFFFFFAE3ACFFF1AC12FFF1AC11FFF9D8
          8AFFFFFFFFFFFCEFCEFFF1A700FFF2AA00FFFFB500FF5C410061F7AE00FFF1AA
          00FFF1AA00FFF1A700FFF2B320FFFCF1D6FFFFFFFFFFFEFBF4FFFEF9ECFFFFFF
          FFFFFEFCF7FFF6C551FFF0A600FFFFB500FFC88D00D50D09000EB98300C5F8AF
          00FFF1A900FFF1AA00FFF0A600FFF2B219FFF8D37AFFFBE9BCFFFCECC6FFF9DD
          98FFF4BD38FFF1A600FFFFB400FFE9A300F23727003B0000000030220032F0AA
          00FDFBB100FFF1AA00FFF1AA00FFF0A700FFF2A600FFF4A900FFF3A800FFF5A9
          00FFFCAF00FFFFB600FFD39500DB3E2C00430000000000000000000000006245
          0068EFA900F5F8AF00FFF1AA00FFF3AC00FFF4AC00FFEBA600FAF2AA00FFE6A1
          00F3C78C00CF7C570080150F0017000000000000000000000000000000000000
          00002A1E002EB47F00BBF3AB00FFD49500DF5A40005F22180024291D002B1C13
          001D000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          00090000000E0000000F0000000F0000000F0000000F00000010000000100000
          00100000001000000012000000200713339E0F276AFF0A193A98000000087F57
          48C0B17864FFB07763FFAF7662FFAE7561FFAE7560FFAD735FFFAC735FFFAC72
          5EFFAA715CFFA26B57FF4D445EFF417CB9FF70C7FFFF265198FF0000000CB780
          6EFFF4ECE7FFF4EBE6FFF3EBE5FFF2EAE4FFF1E9E3FFEEE6E2FFEBE4E0FFE8E0
          DCFFE1D8D4FF6E7B9BFF4C83BCFF83CFFFFF5694CEFF142B4D990000000CB882
          70FFF6EEEAFFEEE0D9FFEDE0D8FFECE0DAFFDBCDC6FFA27D68FF8E5D41FF8C5C
          40FF795C52FF577EA6FF92D4FAFF619CD0FF64667FFF0000001C0000000BB984
          72FFF7F0ECFFEFE2DBFFEEE3DCFFDACBC2FF926246FFC8A583FFF0D9B9FFF0DC
          BEFFC7A88BFF895D43FF6891B2FF829BB6FFAD7967FF000000100000000ABB86
          75FFF8F2EFFF5E67E3FF656DDCFFAA8670FFC8A482FFF8DBADFFF7D6A6FFF8DB
          ACFFFAE3BFFFC8A88CFF83685CFFE5DFDBFFB6806FFF0000000D00000009BD88
          77FFF9F4F1FF626DE6FF787FE1FF98684BFFF2DBB9FFFCECCEFFFCEFD5FFF9E0
          B8FFF8DEB4FFF3E1C7FF8F5D41FFECE8E5FFB98370FF0000000C00000008BF8A
          79FFFAF6F4FF6672E8FF7E85E4FF9D6D51FFF4DEBDFFFEF8E8FFFEF7E5FFFDF0
          D9FFF8DEB6FFF3E2C8FF926145FFF0EBE8FFBA8572FF0000000B00000007C08D
          7BFFFBF8F6FF6B79EAFF7681E6FFB7947EFFCEAE90FFFCECD1FFFEFAEBFFFDF0
          D7FFFAE5C4FFCBAC90FFAD8974FFF3EEECFFBC8775FF0000000A00000007C28E
          7DFFFCF9F8FF717EECFF6D78E7FFE7DCD4FFA67757FFCFAF93FFF2DFC5FFF2DF
          C6FFCDAE92FFA17357FFDFD2CBFFF8F2F0FFBD8977FF0000000A00000006C391
          80FFFCFBF9FF7684EDFF6070E8FFF6F1EDFFDBBA8CFFB48864FFAA7D62FF9A79
          58FF878762FFE8DDD6FFF3EBE6FFF9F5F2FFBF8B7AFF0000000900000005C492
          82FFFDFCFBFFF8F3EEFFF8F2EDFFF8F1EDFFDEB676FFDAB078FFF6F1EEFF59CB
          96FF43B97DFFF5EEEAFFF4ECE7FFFAF7F5FFC08D7CFF0000000800000004C695
          84FFFEFDFCFFFAF4F1FFF9F3F0FFF8F3F0FFDCB067FFD3A257FFF7F2EDFF16BA
          70FF11AD5FFFF6F0EBFFF6EEEAFFFCF8F6FFC28F7EFF0000000700000004C797
          86FFFEFDFDFFFAF7F3FFFAF6F3FFFAF5F1FFDEB269FFD7A65CFFF9F4F0FFF8F2
          EFFFF8F2EEFFF7F2EDFFF7F1ECFFFCFAF8FFC39181FF0000000600000003C898
          88FFFEFEFDFFFEFEFDFFFEFEFDFFFEFDFDFFFEFDFCFFFEFDFCFFFEFDFCFFFEFC
          FBFFFDFCFBFFFDFCFBFFFDFBFAFFFDFBFAFFC59383FF00000005000000029673
          67BFCA9C8BFFCA9C8BFFCA9B8BFFCA9B8AFFC99A8AFFC99A8AFFC99A89FFC898
          89FFC89888FFC89787FFC79786FFC69686FF926F62C000000003}
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
          31303B203C672069643D2243616D61646120312220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C6D65746164617461206964
          3D22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C
          726563742066696C6C3D226E6F6E65222077696474683D223136303022206865
          696768743D2231363030222F3E0D0A3C706174682066696C6C3D222337444431
          4542222066696C6C2D72756C653D226E6F6E7A65726F2220643D224D34353220
          3635326338352C313830203234362C323737203335332C323737203130352C30
          203235332C2D3934203333392C2D3237312032302C2D34332033382C2D393820
          35312C2D3135322031342C2D34332032322C2D39372032322C2D31363720302C
          2D313834202D3138352C2D333339202D3431322C2D333339202D3232372C3020
          2D3431322C313535202D3431322C33333920302C343920342C39302031302C31
          323520382C36342032342C3133362034392C3138387A6D31313438203934386C
          2D3136303020302030202D33313263302C2D313732203432362C2D3331322036
          31382C2D3331326C3336322030633139322C30203632302C313430203632302C
          3331326C30203331327A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFD4B494FFD4B494FFD4B494FFD4B494FFD4B494FFD4B4
          94FFD4B494FFD4B494FFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFD4B494FFD4B494FFD4B494FFD4B494FFD4B494FFD4B4
          94FFD4B494FFD4B494FFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFD4B494FFD4B494FFD4B494FFD4B494FFD4B494FFD4B4
          94FFD4B494FFD4B494FFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFD4B494FFD4B494FFD4B494FFD4B494FFD4B494FFD4B4
          94FFD4B494FFD4B494FFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000020744558745469746C650047616E7474566965773B47616E74743B53
          63686564756C65723BEBE8C7280000034D49444154785E3D935B685C4518C7FF
          E7927637C96E36D14A63E2A5719BB4B0109B97D68A1712914611AD0F824F158B
          C4A8B5546A6A1405B5102F48212DC652DB0715A40F7D10AAA6D1B450A9226243
          93E896484CB2D9B3D9ED667793BD9DCBCE37E39C4132C36FCEF0CDF9FEDF9FF9
          CE3147BFFE7E9273DECBB900E724E1201F2270527B15132AA6F6973F3A76B00F
          FF0F930BDE3BF8FC3E0839A7E75288455B2184C0D4CD65746F6F873CC71F7F27
          D0D3D58E6C7E1D5F9EFFA1F7C9E3D7A0040587E957F627631C19F9C20EB60532
          E666F3A505C7735718A34A365740C5BEADB15CB5B70A4EDBEEB9A31186AEE366
          62152611F91525BE3D4884657B6CF67A92DA2E2F2C76A70A6E84311D93F3FFAE
          DD1DA1B4ED7857C706EED70F9D9DE5C409A65C2154A24470CBCA3BF15313D603
          B9B2086FD23D34057568003C42CB9F496AF110BD2BF6ECBB5D270FC6FE797878
          82F977A01CC8D57165E5D14BD6DE52D50DB5474CECDF7D27A2AD8D2046985B29
          E3D2F41A163246A825BAFBBBC8BDBB1EBA3AF2785639E0BE00D1E25F69D156A8
          78A1FB6EDF84A1FD9D08370430FCE167F8F8BDA308D5D7A1BDD9C4B7BF9B2857
          9DEDDB7A075E9D3AF7F2C8C61D48A154628DEF0A181A9E9695FD645DD3C01803
          002910407EBD843D1D0158B908566F459E0170C224AE1C80113945174DCD410D
          3BDBC22AD91F5E4D09281823B48675343404A1D5D5EF04B0D9E49CB02ADB572C
          97418C43D30C10F84692E37838706818B51A8149DE397658B59093B2A64B0131
          7EF6FCF83EC6BCA0C63A8A8C9A23B38BEBD8D355873AD3C499131FA0527590CA
          E6959BC53CA15C7551B38B0900641E7FE340FF5323BFE1E2DB7B8DBEB72EBE29
          4C67E4E799BCB25ABFD9448D31D8AEA73E69DBE3985E11985F4AC3CE252700D8
          2600704EEA111F3FF5C58E278EBC105F36BACEFDA2E191CE7A6C09E9EA5F4817
          39A652C0CCFC2D6433A9E5A52B63270154950091C0C0D875717AB0A7D4B8B5F3
          392FF6D8858AED46D385268464370C4347A9EA2061659149A792D6AFDFBCE814
          ACE59ED72E3025203887AE6B78E5CC0DFAFCA5EEF8CACC4F8F76F40D1ECEA45B
          FA8D4038E69F7BE5DC9C9D4F4E2E5D393DEAAEA512001C099400E38478625559
          7D70E8C7DAB54FFAD337BE7AFD7D009F4A82124D5293547C64E58DDEFE07A926
          023885781AD80000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB00003AF969545874584D4C3A636F6D
          2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D22
          EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B6339
          64223F3E0A3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E
          733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F7265
          20352E362D633036372037392E3135373734372C20323031352F30332F33302D
          32333A34303A34322020202020202020223E0A2020203C7264663A5244462078
          6D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F31393939
          2F30322F32322D7264662D73796E7461782D6E7323223E0A2020202020203C72
          64663A4465736372697074696F6E207264663A61626F75743D22220A20202020
          2020202020202020786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F220A202020202020202020202020786D6C
          6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
          702F312E302F6D6D2F220A202020202020202020202020786D6C6E733A737445
          76743D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F
          73547970652F5265736F757263654576656E7423220A20202020202020202020
          2020786D6C6E733A70686F746F73686F703D22687474703A2F2F6E732E61646F
          62652E636F6D2F70686F746F73686F702F312E302F220A202020202020202020
          202020786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F
          656C656D656E74732F312E312F220A202020202020202020202020786D6C6E73
          3A746966663D22687474703A2F2F6E732E61646F62652E636F6D2F746966662F
          312E302F220A202020202020202020202020786D6C6E733A657869663D226874
          74703A2F2F6E732E61646F62652E636F6D2F657869662F312E302F223E0A2020
          202020202020203C786D703A43726561746F72546F6F6C3E41646F6265205068
          6F746F73686F702043432032303135202857696E646F7773293C2F786D703A43
          726561746F72546F6F6C3E0A2020202020202020203C786D703A437265617465
          446174653E323031362D30322D31375431353A32353A31302B30333A30303C2F
          786D703A437265617465446174653E0A2020202020202020203C786D703A4D65
          746164617461446174653E323031362D30322D31375431353A32353A31302B30
          333A30303C2F786D703A4D65746164617461446174653E0A2020202020202020
          203C786D703A4D6F64696679446174653E323031362D30322D31375431353A32
          353A31302B30333A30303C2F786D703A4D6F64696679446174653E0A20202020
          20202020203C786D704D4D3A496E7374616E636549443E786D702E6969643A66
          626538346239312D333532342D633034622D383638342D666232306466313439
          3736663C2F786D704D4D3A496E7374616E636549443E0A202020202020202020
          3C786D704D4D3A446F63756D656E7449443E61646F62653A646F6369643A7068
          6F746F73686F703A37386635363431342D643537312D313165352D626635312D
          3933656437376465653334373C2F786D704D4D3A446F63756D656E7449443E0A
          2020202020202020203C786D704D4D3A4F726967696E616C446F63756D656E74
          49443E786D702E6469643A61633266646436312D633461652D396134332D3861
          62352D6336346534643131393662333C2F786D704D4D3A4F726967696E616C44
          6F63756D656E7449443E0A2020202020202020203C786D704D4D3A486973746F
          72793E0A2020202020202020202020203C7264663A5365713E0A202020202020
          2020202020202020203C7264663A6C69207264663A7061727365547970653D22
          5265736F75726365223E0A2020202020202020202020202020202020203C7374
          4576743A616374696F6E3E637265617465643C2F73744576743A616374696F6E
          3E0A2020202020202020202020202020202020203C73744576743A696E737461
          6E636549443E786D702E6969643A61633266646436312D633461652D39613433
          2D386162352D6336346534643131393662333C2F73744576743A696E7374616E
          636549443E0A2020202020202020202020202020202020203C73744576743A77
          68656E3E323031362D30322D31375431353A32353A31302B30333A30303C2F73
          744576743A7768656E3E0A2020202020202020202020202020202020203C7374
          4576743A736F6674776172654167656E743E41646F62652050686F746F73686F
          702043432032303135202857696E646F7773293C2F73744576743A736F667477
          6172654167656E743E0A2020202020202020202020202020203C2F7264663A6C
          693E0A2020202020202020202020202020203C7264663A6C69207264663A7061
          727365547970653D225265736F75726365223E0A202020202020202020202020
          2020202020203C73744576743A616374696F6E3E73617665643C2F7374457674
          3A616374696F6E3E0A2020202020202020202020202020202020203C73744576
          743A696E7374616E636549443E786D702E6969643A66626538346239312D3335
          32342D633034622D383638342D6662323064663134393736663C2F7374457674
          3A696E7374616E636549443E0A2020202020202020202020202020202020203C
          73744576743A7768656E3E323031362D30322D31375431353A32353A31302B30
          333A30303C2F73744576743A7768656E3E0A2020202020202020202020202020
          202020203C73744576743A736F6674776172654167656E743E41646F62652050
          686F746F73686F702043432032303135202857696E646F7773293C2F73744576
          743A736F6674776172654167656E743E0A202020202020202020202020202020
          2020203C73744576743A6368616E6765643E2F3C2F73744576743A6368616E67
          65643E0A2020202020202020202020202020203C2F7264663A6C693E0A202020
          2020202020202020203C2F7264663A5365713E0A2020202020202020203C2F78
          6D704D4D3A486973746F72793E0A2020202020202020203C70686F746F73686F
          703A446F63756D656E74416E636573746F72733E0A2020202020202020202020
          203C7264663A4261673E0A2020202020202020202020202020203C7264663A6C
          693E786D702E6469643A65323939376562612D316235312D376234302D613263
          372D6161666438643033306138663C2F7264663A6C693E0A2020202020202020
          202020203C2F7264663A4261673E0A2020202020202020203C2F70686F746F73
          686F703A446F63756D656E74416E636573746F72733E0A202020202020202020
          3C70686F746F73686F703A436F6C6F724D6F64653E333C2F70686F746F73686F
          703A436F6C6F724D6F64653E0A2020202020202020203C70686F746F73686F70
          3A49434350726F66696C653E735247422049454336313936362D322E313C2F70
          686F746F73686F703A49434350726F66696C653E0A2020202020202020203C64
          633A666F726D61743E696D6167652F706E673C2F64633A666F726D61743E0A20
          20202020202020203C746966663A4F7269656E746174696F6E3E313C2F746966
          663A4F7269656E746174696F6E3E0A2020202020202020203C746966663A5852
          65736F6C7574696F6E3E3732303030302F31303030303C2F746966663A585265
          736F6C7574696F6E3E0A2020202020202020203C746966663A595265736F6C75
          74696F6E3E3732303030302F31303030303C2F746966663A595265736F6C7574
          696F6E3E0A2020202020202020203C746966663A5265736F6C7574696F6E556E
          69743E323C2F746966663A5265736F6C7574696F6E556E69743E0A2020202020
          202020203C657869663A436F6C6F7253706163653E313C2F657869663A436F6C
          6F7253706163653E0A2020202020202020203C657869663A506978656C584469
          6D656E73696F6E3E31363C2F657869663A506978656C5844696D656E73696F6E
          3E0A2020202020202020203C657869663A506978656C5944696D656E73696F6E
          3E31363C2F657869663A506978656C5944696D656E73696F6E3E0A2020202020
          203C2F7264663A4465736372697074696F6E3E0A2020203C2F7264663A524446
          3E0A3C2F783A786D706D6574613E0A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020200A3C
          3F787061636B657420656E643D2277223F3EDD4153FC000000206348524D0000
          7A25000080830000F9FF000080E9000075300000EA6000003A980000176F925F
          C546000002474944415478DA8C934B6B945910869FAFD3CC42228A3FC2417F83
          BAF0B210CC424198CD2CBDAC5C880B2FC11BAD22881345181143A31214976E44
          10513B188382B814B2F7DE4927E9EEEF3BE754BD2E4EA71306063C50D4BDDEAA
          E25401D4811AABAFE0FFDF8A4F8003A9787D70ECD508EC7077DC85BB2377CC1D
          0077C72DEB32C72CC785945A7FBD7DB7BB5E2FD8B165FF5E504EC60D4C784A19
          CA0CCCB064900C4F0E9E9879F27C3B305277099951CE7DCA052C23CA6C50C071
          33643E944746D723E591EA72E1216029A194DB573234184169A5A023CF764543
          F2BC935B531F9492ABAA6C4865309503DEAFD22A95ABFAC4FDF702466B2965A4
          89660B474C345B20986B9CE1E3DF07986B8C5306E366739A2A66EE2E62B4DCC1
          B5C959A5942BF7CA94912BD3CBB13DEAF6A39EEEDCA6F9A54AF34B95DA8B957E
          762A2DF6822EDF7E23607D2D46C705379BD34870A3D90260DDE62D4C8FED62F4
          CFAD00DC999AC125EE3E9CC11D621CECE0E2AD964248EAF6A3967B514BBDA84E
          376861390C513BDDA0EF0BA5BE2D94FA3A5FAABD5869FCFA4B011B6A311802BE
          9D3A840B7E9C3E841CE6C70FE382CED92384E82C9F3F8A247A178E621231A6DC
          C1C9ABCF5586B40635A8BD58E947A75A83DAD79776A6CFEDBEBEB64B1D6F3C13
          B0B116A2E12E6E3F78834BDC99CA7CF2E10C2E683E7A8B04F71ECF22C1FDC7B3
          B8441AECA03876EEA9AE9CDACD726FF0F30AE55359B99AA1BA6A17D0F8E705FF
          5EDAB7A9DEEB2DB54E349E6D47CAFE61F24A7401ACF5653994DD692014C03AE0
          8FFF9C71F11BE71C80FEAF01007E4A1DC9D550C4910000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000019744558745469746C65005461626C654C61796F75743B
          4C61796F75743B168F48A50000022349444154785E6D524B6B135114BE77723B
          46057F86A01B71D7D4BCCA44F105C59D22B814C59D4297852EDCA9B813D18D62
          75557423C634B5CD34A5011157B506A1C2B4A6A11BFB32D399FBF21CE6E6360C
          3DCC071FF73B731E1F8712421C0025260CD7164637180C85A0E32FBFCE51C729
          632AE69B8F28251A8F6E0F5F78F0BC55731C564A84A48606AEA4F09FDCCD792C
          8A5539EF9D0251DBDE187E7DA5046428E6B454A89C84676A350DB97E6DB90834
          C3140CD2DDE5A6F241012925122AA5269D1D61DF555F4F08653F977FD7DB2B41
          850C86C6027C16F3DA3F56677FB5D7BCB4AE24FF82F570E8A30096324A030480
          035C5CE51023634048EF3D5DF0336CA8A0EDFC49081E379FDD2F5DBAF3B8F129
          C3DC7CDF3C0D4652AA098FA2C517E3A31EEBEDEB42E5EAE9F484A4FAE13BFE74
          E45FA8F3E7C740D707A2A69454DF7F3B8793333469639BC3A3E9917843945248
          1C21AC89F0991CD0A5342606ABC1DC7AD01DB5DDFB2E8B681EF7FC13ACCD775F
          6D964D739B2479D40026B0EF0940F6101323C03E9A6C742775A9216097DE7A58
          5B642C3B620ADB21791C2E4D4D5CBC7273B2FA91B9D99C59C1FECDA35EEBDDE4
          658FEDEC9191B1EB679233A5765132FD762907E4F8F61EC95DBB7196A0A0CC80
          14F8F4546B18A8CB8454A4B3C507AF30494E4C722498B90E26530D6FD8432726
          1A9DB2BFDD8EFFF9F54C91A442F27001F7DCDADC68D6DFCCE44D5D1B22EE35D1
          649CE998B93427750A1C613437ADF72FF13FCEB3248654FBCC93000000004945
          4E44AE426082}
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
          2069643D225F313830303831383136343830302220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C6720786D6C3A7370616365
          3D227072657365727665223E262331333B262331303B3C6720786D6C3A737061
          63653D227072657365727665223E262331333B262331303B3C70617468206669
          6C6C3D226E6F6E6522207374726F6B653D222337444431454222207374726F6B
          652D77696474683D223922207374726F6B652D6D697465726C696D69743D2232
          322E393235362220643D224D323436203434366C353338202D32313120353231
          20323130203020343430632D35352C2D3837202D3135322C2D313435202D3236
          332C2D313435202D3137332C30202D3331332C313430202D3331332C33313320
          302C39352034332C313830203131302C3233376C2D3635203236202D35323820
          2D3230392030202D3636317A222F3E0D0A3C706174682069643D225F31222066
          696C6C3D2277686974652220643D224D323436203434366C353338202D323131
          2035323120323130203020343430632D35352C2D3837202D3135322C2D313435
          202D3236332C2D313435202D3137332C30202D3331332C313430202D3331332C
          33313320302C39352034332C313830203131302C3233376C2D3635203236202D
          353238202D3230392030202D3636317A222F3E0D0A090909093C2F673E0D0A3C
          706F6C79676F6E2066696C6C3D22233744443145422220706F696E74733D2235
          38312C35373020313037332C33363720313237382C343532203737352C363530
          20222F3E0D0A3C706F6C79676F6E2066696C6C3D22233744443145422220706F
          696E74733D223237362C343536203435372C353232203935392C333237203737
          392C32353620222F3E0D0A3C706174682066696C6C3D22233744443145422220
          643D224D373938203638346C343837202D313931203420333639632D35372C2D
          3734202D3134372C2D313232202D3234372C2D313232202D39392C30202D3138
          372C3436202D3234352C3131386C31202D3137347A6D3237203539336C2D3330
          2031322030202D343463392C31312031392C32322033302C33327A222F3E0D0A
          3C706174682066696C6C3D22233744443145422220643D224D32373020343931
          6C313735203638203320313533203135202D36203133203139203134202D3620
          3136203133203131202D342031372032322032202D3135362032323220383720
          3020323431632D31382C3430202D32392C3834202D32392C31333120302C3436
          2031312C39312032392C3133316C3020313035202D343934202D323031203620
          2D3539377A222F3E0D0A0909093C2F673E0D0A3C636972636C652066696C6C3D
          22776869746522207374726F6B653D22776869746522207374726F6B652D7769
          6474683D223622207374726F6B652D6C696E656361703D22726F756E64222073
          74726F6B652D6C696E656A6F696E3D22726F756E6422207374726F6B652D6D69
          7465726C696D69743D2232322E39323536222063783D2231303432222063793D
          22313035332220723D22333132222F3E0D0A3C706174682066696C6C3D226C69
          6D652220643D224D31303432203833326C302030632D36312C30202D3131362C
          3235202D3135362C3635202D34302C3430202D36342C3934202D36342C313535
          20302C36322032342C3131362036342C3135362034302C34302039352C363520
          3135362C36352036312C30203131362C2D3235203135362C2D36352033392C2D
          34302036342C2D39342036342C2D31353620302C2D3631202D32352C2D313135
          202D36342C2D313535202D34302C2D3430202D39352C2D3635202D3135362C2D
          36356C3020307A6D3020333438632D362C30202D31312C2D33202D31362C2D37
          202D342C2D34202D362C2D3130202D362C2D31356C30202D3834202D38342030
          632D352C30202D31312C2D32202D31352C2D35202D332C2D35202D362C2D3130
          202D362C2D313720302C2D3620332C2D313120362C2D313520342C2D34203130
          2C2D362031352C2D366C383420302030202D383463302C2D3620322C2D313120
          362C2D313520342C2D342031302C2D362031362C2D3620362C302031322C3220
          31352C3620352C3420372C3920372C31356C30203834203834203063352C3020
          31312C322031342C3620342C3420382C3920382C313520302C37202D342C3132
          202D382C3137202D332C33202D392C35202D31342C356C2D3834203020302038
          3463302C35202D322C3131202D372C3135202D332C34202D392C37202D31352C
          376C3020307A6D3020313336632D37332C30202D3133382C2D3239202D313836
          2C2D3737202D34382C2D3438202D37382C2D313134202D37382C2D3138372030
          2C2D37322033302C2D3133382037382C2D3138362034382C2D3438203131332C
          2D3737203138362C2D37372037332C30203133382C3239203138362C37372034
          382C34382037372C3131342037372C31383620302C3733202D32392C31333920
          2D37372C313837202D34382C3438202D3131332C3737202D3138362C37376C30
          20307A222F3E0D0A09093C2F673E0D0A3C726563742066696C6C3D226E6F6E65
          222077696474683D223136303022206865696768743D2231363030222F3E0D0A
          093C2F673E0D0A3C2F7376673E0D0A}
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
          2069643D225F313830303135383439323730342220786D6C3A73706163653D22
          7072657365727665223E2020203C6720786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C726563742066696C6C3D222346304536
          32442220783D22313031332220793D22353034222077696474683D2233353222
          206865696768743D22323730222072783D223937222072793D223638222F3E0D
          0A3C726563742066696C6C3D22234430383742392220783D2231303133222079
          3D22373735222077696474683D2233353222206865696768743D223237302220
          72783D223937222072793D223638222F3E0D0A3C726563742066696C6C3D2223
          4630453632442220783D22313031332220793D2231303435222077696474683D
          2233353222206865696768743D22323730222072783D223937222072793D2236
          38222F3E0D0A3C726563742066696C6C3D22234430383742392220783D223130
          31332220793D22323334222077696474683D2233353222206865696768743D22
          323730222072783D223937222072793D223638222F3E0D0A3C70617468206669
          6C6C3D22233744443145422220643D224D333033203233346C39353120302030
          2031313332202D3935312030632D33372C30202D36382C2D3331202D36382C2D
          36396C30202D39393463302C2D33382033312C2D36392036382C2D36397A222F
          3E0D0A0909093C2F673E0D0A3C6720786D6C3A73706163653D22707265736572
          7665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D22776869
          74652220706F696E74733D223630342C363632203933322C3532372031303638
          2C353833203733332C37313520222F3E0D0A3C706F6C79676F6E2066696C6C3D
          2277686974652220706F696E74733D223430302C353836203532312C36333020
          3835362C353030203733362C34353220222F3E0D0A3C706F6C79676F6E206669
          6C6C3D2277686974652220706F696E74733D223734382C37333820313037332C
          36313020313037372C31303039203734362C3131343120222F3E0D0A3C706F6C
          79676F6E2066696C6C3D2277686974652220706F696E74733D223339362C3631
          30203531332C363534203531352C373537203532352C373532203533342C3736
          35203534332C373631203535332C373730203536312C373637203537322C3738
          32203537332C363738203732312C373336203732322C31313431203339322C31
          30303720222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A3C7265637420
          66696C6C3D226E6F6E65222077696474683D223136303022206865696768743D
          2231363030222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          2069643D225F313830303638313730373832342220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C706F6C79676F6E2066696C
          6C3D22233744443145422220706F696E74733D22313336362C34303820313336
          362C31313932203233342C31313932203233342C34303820222F3E0D0A3C706F
          6C79676F6E2066696C6C3D2277686974652220706F696E74733D22313330352C
          3131313220313238392C3131313220313238392C34383820313330352C343838
          20222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E
          74733D22313230372C3131313220313139312C3131313220313139312C343838
          20313230372C34383820222F3E0D0A3C706F6C79676F6E2066696C6C3D227768
          6974652220706F696E74733D22313235362C3131313220313232342C31313132
          20313232342C34383820313235362C34383820222F3E0D0A3C706F6C79676F6E
          2066696C6C3D2277686974652220706F696E74733D22313131302C3131313220
          313039332C3131313220313039332C34383820313131302C34383820222F3E0D
          0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D2231
          3032382C3131313220313031322C3131313220313031322C3438382031303238
          2C34383820222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220
          706F696E74733D22313135392C3131313220313132362C313131322031313236
          2C34383820313135392C34383820222F3E0D0A3C706F6C79676F6E2066696C6C
          3D2277686974652220706F696E74733D223937392C31313132203936332C3131
          3132203936332C343838203937392C34383820222F3E0D0A3C706F6C79676F6E
          2066696C6C3D2277686974652220706F696E74733D223834392C313131322038
          33332C31313132203833332C343838203834392C34383820222F3E0D0A3C706F
          6C79676F6E2066696C6C3D2277686974652220706F696E74733D223934372C31
          313132203931342C31313132203931342C343838203934372C34383820222F3E
          0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D22
          3830302C31313132203738342C31313132203738342C343838203830302C3438
          3820222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F69
          6E74733D223637302C31313132203635332C31313132203635332C3438382036
          37302C34383820222F3E0D0A3C706F6C79676F6E2066696C6C3D227768697465
          2220706F696E74733D223731392C31313132203638362C31313132203638362C
          343838203731392C34383820222F3E0D0A3C706F6C79676F6E2066696C6C3D22
          77686974652220706F696E74733D223632312C31313132203630342C31313132
          203630342C343838203632312C34383820222F3E0D0A3C706F6C79676F6E2066
          696C6C3D2277686974652220706F696E74733D223439302C3131313220343734
          2C31313132203437342C343838203439302C34383820222F3E0D0A3C706F6C79
          676F6E2066696C6C3D2277686974652220706F696E74733D223533392C313131
          32203530372C31313132203530372C343838203533392C34383820222F3E0D0A
          3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D223435
          382C31313132203434312C31313132203434312C343838203435382C34383820
          222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74
          733D223432352C31313132203336302C31313132203336302C34383820343235
          2C34383820222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220
          706F696E74733D223331312C31313132203239352C31313132203239352C3438
          38203331312C34383820222F3E0D0A09093C2F673E0D0A3C706F6C79676F6E20
          66696C6C3D226E6F6E652220706F696E74733D22302C3020313630302C302031
          3630302C3136303020302C3136303020222F3E0D0A093C2F673E0D0A3C2F7376
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
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C67
          2069643D225F313830303831393533353332382220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C636972636C652066696C6C
          3D2223374444314542222063783D22383030222063793D223539322220723D22
          323032222F3E0D0A3C6720786D6C3A73706163653D227072657365727665223E
          202020203C6720786D6C3A73706163653D227072657365727665223E26233133
          3B262331303B3C636972636C652066696C6C3D2223374444314542222063783D
          22333439222063793D223931332220723D22313134222F3E0D0A3C636972636C
          652066696C6C3D2223374444314542222063783D2231323531222063793D2239
          31332220723D22313134222F3E0D0A090909093C2F673E0D0A3C636972636C65
          2066696C6C3D2223374444314542222063783D22383030222063793D22313039
          362220723D22313134222F3E0D0A0909093C2F673E0D0A3C726563742066696C
          6C3D222337444431454222207472616E73666F726D3D226D617472697828302E
          39343433313320312E33393834202D312E333938333920302E39343433322036
          33362E313435203637302E31343229222077696474683D223331222068656967
          68743D22313731222F3E0D0A3C726563742066696C6C3D222337444431454222
          207472616E73666F726D3D226D6174726978282D302E39343433313320312E33
          39383420312E333938333920302E3934343332203936362E323434203637352E
          31363629222077696474683D22333122206865696768743D22313731222F3E0D
          0A3C726563742066696C6C3D222337444431454222207472616E73666F726D3D
          226D617472697828302E373138363939202D312E3538353131202D312E393639
          3332202D302E3537383439203733352E31393720313038382E37362922207769
          6474683D22333122206865696768743D22313731222F3E0D0A3C726563742066
          696C6C3D222337444431454222207472616E73666F726D3D226D617472697828
          2D302E373138363939202D312E353835313120312E3936393332202D302E3537
          383439203838362E39323720313038382E373629222077696474683D22333122
          206865696768743D22313731222F3E0D0A09093C2F673E0D0A3C726563742066
          696C6C3D226E6F6E65222077696474683D223136303022206865696768743D22
          31363030222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          2069643D225F313830303831393533393336302220786D6C3A73706163653D22
          7072657365727665223E2020203C6720786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C726563742066696C6C3D222337444431
          45422220783D223233342220793D22323334222077696474683D223432312220
          6865696768743D22343231222F3E0D0A3C726563742066696C6C3D2277686974
          652220783D223330302220793D22333030222077696474683D22323930222068
          65696768743D22323930222F3E0D0A0909093C2F673E0D0A3C6720786D6C3A73
          706163653D227072657365727665223E262331333B262331303B3C7265637420
          66696C6C3D22233744443145422220783D223539302220793D22323334222077
          696474683D2234323122206865696768743D22343231222F3E0D0A3C72656374
          2066696C6C3D2277686974652220783D223635352220793D2233303022207769
          6474683D2232393022206865696768743D22323930222F3E0D0A0909093C2F67
          3E0D0A3C6720786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C726563742066696C6C3D22233744443145422220783D22393435
          2220793D22323334222077696474683D2234323122206865696768743D223432
          31222F3E0D0A3C726563742066696C6C3D2277686974652220783D2231303130
          2220793D22333030222077696474683D2232393022206865696768743D223239
          30222F3E0D0A0909093C2F673E0D0A3C6720786D6C3A73706163653D22707265
          7365727665223E262331333B262331303B3C726563742066696C6C3D22233744
          443145422220783D223233342220793D22353930222077696474683D22343231
          22206865696768743D22343231222F3E0D0A3C726563742066696C6C3D227768
          6974652220783D223330302220793D22363535222077696474683D2232393022
          206865696768743D22323930222F3E0D0A0909093C2F673E0D0A3C6720786D6C
          3A73706163653D227072657365727665223E262331333B262331303B3C726563
          742066696C6C3D22233744443145422220783D223539302220793D2235393022
          2077696474683D2234323122206865696768743D22343231222F3E0D0A3C7265
          63742066696C6C3D2277686974652220783D223635352220793D223635352220
          77696474683D2232393022206865696768743D22323930222F3E0D0A0909093C
          2F673E0D0A3C6720786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C726563742066696C6C3D22233744443145422220783D2239
          34352220793D22353930222077696474683D2234323122206865696768743D22
          343231222F3E0D0A3C726563742066696C6C3D2277686974652220783D223130
          31302220793D22363535222077696474683D2232393022206865696768743D22
          323930222F3E0D0A0909093C2F673E0D0A3C6720786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C726563742066696C6C3D2223
          3744443145422220783D223233342220793D22393435222077696474683D2234
          323122206865696768743D22343231222F3E0D0A3C726563742066696C6C3D22
          77686974652220783D223330302220793D2231303130222077696474683D2232
          393022206865696768743D22323930222F3E0D0A0909093C2F673E0D0A3C6720
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          726563742066696C6C3D22233744443145422220783D223539302220793D2239
          3435222077696474683D2234323122206865696768743D22343231222F3E0D0A
          3C726563742066696C6C3D2277686974652220783D223635352220793D223130
          3130222077696474683D2232393022206865696768743D22323930222F3E0D0A
          0909093C2F673E0D0A3C6720786D6C3A73706163653D22707265736572766522
          3E262331333B262331303B3C726563742066696C6C3D22233744443145422220
          783D223934352220793D22393435222077696474683D22343231222068656967
          68743D22343231222F3E0D0A3C726563742066696C6C3D227768697465222078
          3D22313031302220793D2231303130222077696474683D223239302220686569
          6768743D22323930222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          2069643D225F313830303832343638343332302220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C706174682066696C6C3D22
          23374444314542222066696C6C2D72756C653D226E6F6E7A65726F2220643D22
          4D35303920313236306C30202D3831632D3130322C2D3130202D3139332C2D35
          30202D3237342C2D3132316C3831202D39366336332C3534203132372C383620
          3139332C39366C30202D323135632D38342C2D3230202D3134352C2D3437202D
          3138342C2D3739202D33392C2D3333202D35382C2D3831202D35382C2D313435
          20302C2D36342032322C2D3131372036372C2D3135372034352C2D3431203130
          332C2D3633203137352C2D36376C30202D353520373120302030203536633831
          2C36203135382C3334203233312C38346C2D373220313032632D34392C2D3335
          202D3130322C2D3537202D3135392C2D36356C3020323039203320306338352C
          3230203134382C3437203138382C38312034302C33342036302C38342036302C
          31343920302C3634202D32332C313137202D36392C313538202D34362C343120
          2D3130372C3633202D3138322C36366C30203830202D373120307A6D3731202D
          3139386333352C2D342036332C2D31342038342C2D33322032312C2D31372033
          312C2D33382033312C2D363420302C2D3236202D382C2D3436202D32342C2D36
          32202D31362C2D3135202D34372C2D3239202D39312C2D34326C30203230307A
          6D2D3731202D353438632D33342C33202D36302C3133202D37392C3239202D31
          392C3137202D32382C3338202D32382C363320302C323420372C34342032322C
          35382031352C31352034332C32392038352C34326C30202D3139327A222F3E0D
          0A3C6720786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C726563742066696C6C3D22233744443145422220783D223837382220
          793D22383637222077696474683D2234383622206865696768743D223535222F
          3E0D0A3C726563742066696C6C3D22233744443145422220783D223837382220
          793D22363738222077696474683D2234383622206865696768743D223535222F
          3E0D0A3C726563742066696C6C3D22233744443145422220783D223837382220
          793D2231303536222077696474683D2234383622206865696768743D22353522
          2F3E0D0A3C726563742066696C6C3D22233744443145422220783D2238373822
          20793D22343838222077696474683D2234383622206865696768743D22353522
          2F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A3C726563742066696C6C3D
          226E6F6E65222077696474683D223136303022206865696768743D2231363030
          222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          6174682066696C6C3D2223374444314542222066696C6C2D72756C653D226E6F
          6E7A65726F2220643D224D323334203437316C3234302030203020363538202D
          31353720302030202D343836202D383320302030202D3137327A6D3730382034
          39316C3020313637202D33373320302030202D31333720313636202D32333863
          31302C2D31352031392C2D33302032352C2D343520372C2D31352031312C2D32
          372031312C2D333820302C2D3131202D332C2D3230202D392C2D3236202D362C
          2D36202D31342C2D39202D32342C2D39202D31382C30202D33382C38202D3630
          2C3233202D32332C3135202D34362C3335202D36392C36326C2D3539202D3135
          376337332C2D3638203134332C2D313033203231322C2D3130332033332C3020
          36322C382038382C32332032372C31352034372C33362036332C36332031352C
          32372032322C35382032322C393220302C3336202D382C3731202D32342C3130
          37202D31362C3336202D33392C3735202D36392C3131366C2D37342031303020
          31373420307A6D333131202D3232366333342C31302036312C33312038322C36
          332032302C33322033312C37332033312C31323120302C3432202D392C383020
          2D32352C313133202D31362C3334202D33392C3539202D36392C3738202D3330
          2C3138202D36352C3238202D3130342C3238202D33372C30202D37332C2D3820
          2D3130392C2D3234202D33352C2D3136202D36362C2D3338202D39302C2D3634
          6C3536202D3134366334322C34392038352C3733203133302C37332033382C30
          2035372C2D31392035372C2D353820302C2D3139202D352C2D3334202D31342C
          2D3434202D31302C2D3130202D32342C2D3135202D34332C2D31356C2D383920
          302030202D313133203932202D313231202D31363320302030202D3135372033
          34382030203020313233202D3131322031333620323220377A222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C302031
          3630302C3020313630302C3136303020302C3136303020222F3E0D0A093C2F67
          3E0D0A3C2F7376673E0D0A}
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
          2069643D225F313830303637303937373834302220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C706174682066696C6C3D22
          23374444314542222066696C6C2D72756C653D226E6F6E7A65726F2220643D22
          4D313034302036393463302C313031202D34342C313634202D3133332C313931
          6C31363120323232202D3133322030202D313436202D323036202D3133352030
          203020323036202D31303420302030202D3631322032323820306339332C3020
          3136302C3136203230302C34382034302C33312036312C38312036312C313531
          7A6D2D323537203131346335392C302039382C2D39203131392C2D3238203231
          2C2D31382033322C2D34372033322C2D383720302C2D3339202D31312C2D3637
          202D33332C2D3832202D32312C2D3135202D36302C2D3232202D3131352C2D32
          326C2D31333120302030203231392031323820307A222F3E0D0A3C7061746820
          66696C6C3D22233744443145422220643D224D3830302031333636632D313537
          2C30202D3239372C2D3635202D3339392C2D313637202D3130332C2D31303220
          2D3136362C2D323433202D3136362C2D33393920302C2D3135362036332C2D32
          3937203136362C2D343030203130322C2D313031203234322C2D313636203339
          392C2D313636203135362C30203239362C3635203339392C313636203130322C
          313033203136362C323434203136362C34303020302C313536202D36342C3239
          37202D3136362C333939202D3130332C313032202D3234332C313637202D3339
          392C3136376C3020307A6D30202D313033386C302030632D3133322C30202D32
          34382C3533202D3333342C313339202D38362C3834202D3133372C323032202D
          3133372C33333320302C3133312035312C323438203133372C3333332038362C
          3836203230322C313339203333342C313339203133302C30203234382C2D3533
          203333342C2D3133392038362C2D3835203133372C2D323032203133372C2D33
          333320302C2D313331202D35312C2D323439202D3133372C2D333333202D3836
          2C2D3836202D3230342C2D313339202D3333342C2D3133396C3020307A222F3E
          0D0A09093C2F673E0D0A3C726563742066696C6C3D226E6F6E65222077696474
          683D223136303022206865696768743D2231363030222F3E0D0A093C2F673E0D
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
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70
          6174682066696C6C3D2223374444314542222066696C6C2D72756C653D226E6F
          6E7A65726F2220643D224D363535203430376334362C33392036392C38362036
          392C31343020302C3535202D32332C313032202D37302C313431202D34362C33
          39202D3130342C3538202D3137332C3538202D36392C30202D3132372C2D3139
          202D3137332C2D3537202D34362C2D3339202D36392C2D3836202D36392C2D31
          343020302C2D35352032342C2D3130322037302C2D3134312034372C2D333920
          3130342C2D3539203137332C2D35392036392C30203132372C3230203137332C
          35387A6D363533202D33366C2D38323220383730202D32303620302038323120
          2D3837302032303720307A6D2D373631203234326331382C2D31372032362C2D
          33382032362C2D363320302C2D3235202D392C2D3436202D32372C2D3633202D
          31382C2D3137202D34312C2D3236202D36372C2D3236202D32362C30202D3438
          2C39202D36352C3236202D31372C3137202D32352C3338202D32352C36332030
          2C323520392C34362032372C36332031382C31372034302C32352036362C3235
          2032372C302034382C2D382036352C2D32357A6D373435203239386334362C33
          392036392C38362036392C31343020302C3535202D32342C313032202D37302C
          313431202D34372C3339202D3130342C3539202D3137332C3539202D36392C30
          202D3132372C2D3230202D3137332C2D3538202D34362C2D3339202D36392C2D
          3836202D36392C2D31343020302C2D35352032332C2D3130322037302C2D3134
          312034362C2D3339203130342C2D3538203137332C2D35382036392C30203132
          372C3139203137332C35377A6D2D313035203230386331372C2D31372032362C
          2D33382032362C2D363320302C2D3234202D392C2D3435202D32372C2D363220
          2D31382C2D3137202D34312C2D3236202D36372C2D3236202D32362C30202D34
          382C39202D36352C3236202D31372C3137202D32352C3338202D32352C363220
          302C323520392C34362032372C36332031382C31372034302C32362036362C32
          362032372C302034382C2D392036352C2D32367A222F3E0D0A3C706F6C79676F
          6E2066696C6C3D226E6F6E652220706F696E74733D22302C3020313630302C30
          20313630302C3136303020302C3136303020222F3E0D0A093C2F673E0D0A3C2F
          7376673E0D0A}
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
          2069643D225F313830303637303430323836342220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C726563742066696C6C3D22
          6E6F6E65222077696474683D223136303022206865696768743D223136303022
          2F3E0D0A3C6720786D6C3A73706163653D227072657365727665223E26233133
          3B262331303B3C6720786D6C3A73706163653D227072657365727665223E2623
          31333B262331303B3C706F6C79676F6E2066696C6C3D226E6F6E652220737472
          6F6B653D222337444431454222207374726F6B652D77696474683D2235312220
          7374726F6B652D6D697465726C696D69743D2232322E393235362220706F696E
          74733D223237322C343732203830382C32363220313332382C34373120313332
          382C31313233203739382C31333338203237332C3131333020222F3E0D0A3C70
          6F6C79676F6E2069643D225F31222066696C6C3D2277686974652220706F696E
          74733D223237322C343732203830382C32363220313332382C34373120313332
          382C31313233203739382C31333338203237332C3131333020222F3E0D0A0909
          09093C2F673E0D0A3C706F6C79676F6E2066696C6C3D22233744443145422220
          706F696E74733D223630372C35393520313039362C33393320313330302C3437
          37203739392C36373520222F3E0D0A3C706F6C79676F6E2066696C6C3D222337
          44443145422220706F696E74733D223330332C343832203438322C3534372039
          38332C333533203830342C32383220222F3E0D0A3C706F6C79676F6E2066696C
          6C3D22233744443145422220706F696E74733D223832322C3730392031333037
          2C35313820313331342C31313134203831392C3133313120222F3E0D0A3C706F
          6C79676F6E2066696C6C3D22233744443145422220706F696E74733D22323936
          2C353137203437312C353834203437342C373337203438392C37333020353032
          2C373439203531362C373434203533312C373537203534332C37353220353539
          2C373735203536312C363139203738322C373036203738332C31333131203239
          302C3131313120222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F
          673E0D0A3C2F7376673E0D0A}
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
          2069643D225F313830303637303334353136382220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C706174682066696C6C3D22
          23374444314542222066696C6C2D72756C653D226E6F6E7A65726F2220643D22
          4D333535203537376C30202D3239632D34312C2D34202D37382C2D3138202D31
          31302C2D34336C3332202D33356332362C32302035312C33312037382C33356C
          30202D3737632D33342C2D37202D35382C2D3137202D37342C2D3238202D3136
          2C2D3132202D32342C2D3239202D32342C2D353220302C2D323320392C2D3431
          2032372C2D35362031382C2D31342034322C2D32322037312C2D32346C30202D
          3139203239203020302032306333332C322036342C31322039332C32396C2D32
          39203337632D32302C2D3133202D34312C2D3230202D36342C2D32336C302037
          34203120306333352C372036302C31372037362C32392031362C31322032352C
          33302032352C353320302C3233202D31302C3432202D32382C3536202D31392C
          3135202D34342C3233202D37342C32346C30203239202D323920307A6D323920
          2D37316331342C2D312032362C2D352033342C2D313120382C2D362031332C2D
          31342031332C2D323320302C2D39202D342C2D3137202D31302C2D3232202D37
          2C2D36202D31392C2D3131202D33372C2D31356C302037317A6D2D3239202D31
          3935632D31332C31202D32342C34202D33322C3130202D372C36202D31312C31
          34202D31312C323220302C3920332C313620392C323120362C352031372C3130
          2033342C31356C30202D36387A222F3E0D0A3C726563742066696C6C3D222337
          44443145422220783D223631322220793D22333639222077696474683D223735
          3322206865696768743D223838222F3E0D0A3C706174682066696C6C3D222337
          4444314542222066696C6C2D72756C653D226E6F6E7A65726F2220643D224D33
          3535203936346C30202D3239632D34312C2D34202D37382C2D3138202D313130
          2C2D34336C3332202D33346332362C31392035312C33302037382C33346C3020
          2D3737632D33342C2D37202D35382C2D3136202D37342C2D3238202D31362C2D
          3131202D32342C2D3239202D32342C2D353220302C2D323220392C2D34312032
          372C2D35362031382C2D31342034322C2D32322037312C2D32336C30202D3230
          203239203020302032306333332C322036342C31322039332C33306C2D323920
          3336632D32302C2D3132202D34312C2D3230202D36342C2D32336C3020373520
          3120306333352C372036302C31362037362C32392031362C31322032352C3239
          2032352C353220302C3234202D31302C3432202D32382C3537202D31392C3134
          202D34342C3232202D37342C32346C30203238202D323920307A6D3239202D37
          316331342C2D312032362C2D352033342C2D313120382C2D362031332C2D3134
          2031332C2D323320302C2D39202D342C2D3136202D31302C2D3232202D372C2D
          35202D31392C2D3130202D33372C2D31356C302037317A6D2D3239202D313935
          632D31332C31202D32342C35202D33322C3131202D372C35202D31312C313320
          2D31312C323220302C3920332C313620392C323120362C352031372C31302033
          342C31356C30202D36397A222F3E0D0A3C726563742066696C6C3D2223374444
          3145422220783D223631322220793D22373536222077696474683D2237353322
          206865696768743D223838222F3E0D0A3C706174682066696C6C3D2223374444
          314542222066696C6C2D72756C653D226E6F6E7A65726F2220643D224D333435
          20313335316C30202D3238632D34312C2D34202D37382C2D3139202D3131312C
          2D34346C3333202D33346332352C31392035312C33312037382C33346C30202D
          3736632D33342C2D38202D35392C2D3137202D37342C2D3238202D31362C2D31
          32202D32342C2D3239202D32342C2D353220302C2D323320392C2D3432203237
          2C2D35362031382C2D31352034322C2D32332037312C2D32346C30202D323020
          3239203020302032306333332C332036342C31322039332C33306C2D32392033
          37632D32302C2D3133202D34312C2D3230202D36342C2D32336C302037342031
          20306333352C372036302C31372037362C32392031362C31322032342C333020
          32342C353320302C3233202D392C3432202D32382C3536202D31382C3135202D
          34332C3233202D37332C32346C30203238202D323920307A6D3239202D373063
          31342C2D322032362C2D352033342C2D313120382C2D372031332C2D31342031
          332C2D323320302C2D3130202D342C2D3137202D31302C2D3232202D372C2D36
          202D31392C2D3131202D33372C2D31366C302037327A6D2D3239202D31393663
          2D31332C31202D32342C35202D33322C3131202D372C36202D31312C3133202D
          31312C323220302C3920332C313620392C323120362C352031372C3130203334
          2C31356C30202D36397A222F3E0D0A3C726563742066696C6C3D222337444431
          45422220783D223631322220793D2231313433222077696474683D2237353322
          206865696768743D223838222F3E0D0A09093C2F673E0D0A3C706F6C79676F6E
          2066696C6C3D226E6F6E652220706F696E74733D22302C3020313630302C3020
          313630302C3136303020302C3136303020222F3E0D0A093C2F673E0D0A3C2F73
          76673E0D0A}
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
          6174682066696C6C3D2223374444314542222066696C6C2D72756C653D226E6F
          6E7A65726F2220643D224D3431382038343863302C333220382C35372032332C
          37372031362C32302033352C33302035372C33302032322C302034302C2D3130
          2035342C2D32392031342C2D32302032312C2D34362032312C2D37386C30202D
          33383420313834203020302033383463302C3538202D31312C313038202D3332
          2C313532202D32322C3433202D35322C3737202D39312C313031202D33392C32
          34202D38342C3335202D3133372C3335202D35322C30202D39382C2D3131202D
          3133372C2D3335202D34302C2D3234202D37312C2D3538202D39332C2D313031
          202D32322C2D3434202D33332C2D3934202D33332C2D3135326C30202D333834
          2031383420302030203338347A6D373832202D3338346C313636203020302036
          3537202D3135342030202D323138202D333336203020333336202D3136362030
          2030202D36353720313533203020323139203333372030202D3333377A222F3E
          0D0A3C706F6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D2230
          2C3020313630302C3020313630302C3136303020302C3136303020222F3E0D0A
          093C2F673E0D0A3C2F7376673E0D0A}
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
          2076696577426F783D2230203020343232203432322220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C672069643D2243616D61646120312220786D6C3A73706163653D227072
          657365727665223E262331333B262331303B3C6D657461646174612069643D22
          436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C6720
          69643D225F323639353338373136353930342220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C706F6C79676F6E2066696C6C
          3D226E6F6E652220706F696E74733D22302C30203432322C30203432322C3432
          3220302C34323220222F3E0D0A3C6720786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D222337
          44443145422220706F696E74733D2238302C3632203334332C3632203334332C
          3336302038302C33363020222F3E0D0A3C6720786D6C3A73706163653D227072
          657365727665223E262331333B262331303B3C706174682066696C6C3D227768
          697465222066696C6C2D72756C653D226E6F6E7A65726F2220643D224D313636
          203136346C313520302030203839202D31362030202D3530202D363520302036
          35202D313520302030202D383920313520302035312036362030202D36367A6D
          34392031346C3020323420333920302030203134202D33392030203020333720
          2D313520302030202D383920353920302030203134202D343420307A222F3E0D
          0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D2231
          32332C313037203139362C313037203139362C313230203132332C3132302022
          2F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E7473
          3D223232362C313335203239392C313335203239392C313439203232362C3134
          3920222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F69
          6E74733D223132332C323639203234392C323639203234392C32383220313233
          2C32383220222F3E0D0A3C6720786D6C3A73706163653D227072657365727665
          223E262331333B262331303B3C706F6C79676F6E2066696C6C3D227768697465
          2220706F696E74733D223233392C333032203239392C333032203239392C3331
          36203233392C33313620222F3E0D0A3C706F6C79676F6E2066696C6C3D227768
          6974652220706F696E74733D223134312C333032203232302C33303220323230
          2C333136203134312C33313620222F3E0D0A09090909093C2F673E0D0A090909
          093C2F673E0D0A0909093C2F673E0D0A3C706174682066696C6C3D2223443038
          3742392220643D224D313736203132366334392C302038382C33392038382C38
          3820302C3133202D332C3236202D392C33376C3639203530202D313720323320
          2D3638202D3530632D31362C3137202D33382C3237202D36332C3237202D3438
          2C30202D38372C2D3339202D38372C2D383720302C2D34392033392C2D383820
          38372C2D38387A6D302031376333392C302037312C33312037312C373120302C
          3339202D33322C3730202D37312C3730202D33392C30202D37302C2D3331202D
          37302C2D373020302C2D34302033312C2D37312037302C2D37317A222F3E0D0A
          09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          2076696577426F783D2230203020343135203431352220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C672069643D2243616D61646120312220786D6C3A73706163653D227072
          657365727665223E262331333B262331303B3C6D657461646174612069643D22
          436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C6720
          69643D225F323639353531363035343537362220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C726563742066696C6C3D226E
          6F6E65222077696474683D2234313522206865696768743D22343135222F3E0D
          0A3C706F6C79676F6E2066696C6C3D22233744443145422220706F696E74733D
          2237382C3631203333372C3631203333372C323138203230332C323138203230
          332C323836203333372C323836203333372C3335352037382C33353520222F3E
          0D0A3C6720786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C706F6C79676F6E2066696C6C3D227768697465222066696C6C2D72
          756C653D226E6F6E7A65726F2220706F696E74733D223130312C313438203130
          312C313332203136312C313034203136312C313138203131362C313339203131
          362C313430203136312C313631203136312C31373520222F3E0D0A3C706F6C79
          676F6E2066696C6C3D227768697465222066696C6C2D72756C653D226E6F6E7A
          65726F2220706F696E74733D223232312C313034203232382C31303420313935
          2C313735203138372C31373520222F3E0D0A3C706F6C79676F6E2066696C6C3D
          227768697465222066696C6C2D72756C653D226E6F6E7A65726F2220706F696E
          74733D223331352C313332203331352C313438203235352C313735203235352C
          313631203239392C313430203239392C313339203235352C313138203235352C
          31303420222F3E0D0A0909093C2F673E0D0A3C726563742066696C6C3D222344
          30383742392220783D223135382220793D22323138222077696474683D223139
          3622206865696768743D223838222F3E0D0A3C706F6C79676F6E2066696C6C3D
          227768697465222066696C6C2D72756C653D226E6F6E7A65726F2220706F696E
          74733D223230372C323931203139332C323639203139332C323639203137382C
          323931203136362C323931203138362C323632203136382C323333203138302C
          323333203139332C323533203139332C323533203230362C323333203231382C
          323333203230302C323632203231392C32393120222F3E0D0A3C706F6C79676F
          6E2069643D225F31222066696C6C3D227768697465222066696C6C2D72756C65
          3D226E6F6E7A65726F2220706F696E74733D223233382C323931203232392C32
          3931203232392C323333203234342C323333203236312C323730203237392C32
          3333203239342C323333203239342C323931203238342C323931203238342C32
          3436203236342C323836203235392C323836203233382C32343620222F3E0D0A
          3C706F6C79676F6E2069643D225F32222066696C6C3D22776869746522206669
          6C6C2D72756C653D226E6F6E7A65726F2220706F696E74733D223331302C3239
          31203331302C323333203332302C323333203332302C323832203334362C3238
          32203334362C32393120222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F
          7376673E0D0A}
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
          2076696577426F783D2230203020343139203431392220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C6465667320786D6C3A73706163653D227072657365727665223E202020
          203C636C6970506174682069643D226964302220786D6C3A73706163653D2270
          72657365727665223E20202020203C7061746820643D224D37392036316C3236
          312030203020313336632D31342C2D37202D33302C2D3131202D34372C2D3131
          202D36312C30202D3131312C3439202D3131312C31313020302C323320372C34
          342031392C36316C2D31323220302030202D3239367A222F3E0D0A09093C2F63
          6C6970506174683E0D0A093C2F646566733E0D0A3C672069643D2243616D6164
          6120312220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C6D657461646174612069643D22436F72656C436F727049445F3043
          6F72656C2D4C61796572222F3E0D0A3C672069643D225F323639353531383231
          393230302220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C726563742066696C6C3D226E6F6E65222077696474683D223431
          3922206865696768743D22343139222F3E0D0A3C706174682066696C6C3D2223
          3744443145422220643D224D37392036316C3236312030203020313336632D31
          342C2D37202D33302C2D3131202D34372C2D3131202D36312C30202D3131312C
          3439202D3131312C31313020302C323320372C34342031392C36316C2D313232
          20302030202D3239367A222F3E0D0A3C6720636C69702D706174683D2275726C
          2823696430292220786D6C3A73706163653D227072657365727665223E202020
          203C6720786D6C3A73706163653D227072657365727665223E20202020203C67
          20786D6C3A73706163653D227072657365727665223E262331333B262331303B
          3C706174682069643D225F31222066696C6C3D2277686974652220643D224D39
          39203238306C38352030632D312C37202D312C3134202D322C32316C2D383320
          302030202D32317A222F3E0D0A3C706174682066696C6C3D2277686974652220
          643D224D3939203231386C3131362030632D342C37202D382C3134202D31312C
          32326C2D31303520302030202D32327A222F3E0D0A3C706F6C79676F6E206669
          6C6C3D2277686974652220706F696E74733D2239392C313537203332302C3135
          37203332302C3137382039392C31373820222F3E0D0A3C706F6C79676F6E2066
          696C6C3D2277686974652220706F696E74733D2239392C3935203332302C3935
          203332302C3131372039392C31313720222F3E0D0A09090909093C2F673E0D0A
          090909093C2F673E0D0A0909093C2F673E0D0A3C706174682066696C6C3D226E
          6F6E652220643D224D37392036316C3236312030203020313336632D31342C2D
          37202D33302C2D3131202D34372C2D3131202D36312C30202D3131312C343920
          2D3131312C31313020302C323320372C34342031392C36316C2D313232203020
          30202D3239367A222F3E0D0A3C706174682066696C6C3D222344303837423922
          20643D224D323238203233396C3137203736202D3520313263302C30202D342C
          3720382C372031322C302039332C302039332C3020302C3020342C2D3120342C
          2D3420302C2D3320302C2D3320302C2D3320302C30202D312C2D34202D352C2D
          34202D332C30202D38362C30202D38362C306C33202D35202D32202D38203936
          202D313163342C2D3120362C2D3320362C2D376C30202D343663302C2D33202D
          322C2D36202D362C2D366C2D352030202D33312030202D34302030202D333220
          30202D332030202D31202D3863302C30202D312C2D34202D352C2D34202D362C
          30202D31332C30202D31382C30202D332C30202D362C33202D362C3620302C33
          20332C3520362C3520342C3020382C302031322C307A6D31303620393563362C
          302031322C352031322C313220302C36202D362C3131202D31322C3131202D37
          2C30202D31322C2D35202D31322C2D313120302C2D3720352C2D31322031322C
          2D31327A6D2D3833203063372C302031322C352031322C313220302C36202D35
          2C3131202D31322C3131202D362C30202D31312C2D35202D31312C2D31312030
          2C2D3720352C2D31322031312C2D31327A222F3E0D0A09093C2F673E0D0A093C
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
          2076696577426F783D2230203020343439203434392220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C672069643D2243616D61646120312220786D6C3A73706163653D227072
          657365727665223E262331333B262331303B3C6D657461646174612069643D22
          436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C6720
          69643D225F323733313331393736393334342220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C706F6C79676F6E2066696C6C
          3D226E6F6E652220706F696E74733D22302C30203434392C30203434392C3434
          3920302C34343920222F3E0D0A3C706F6C79676F6E2066696C6C3D226E6F6E65
          2220706F696E74733D22302C30203434392C30203434392C34343920302C3434
          3920222F3E0D0A3C706F6C79676F6E2066696C6C3D2223374444314542222070
          6F696E74733D2238352C3636203336342C3636203336342C3338332038352C33
          383320222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F
          696E74733D223133312C313133203230392C313133203230392C313237203133
          312C31323720222F3E0D0A3C706F6C79676F6E2066696C6C3D22776869746522
          20706F696E74733D223234302C313434203331382C313434203331382C313538
          203234302C31353820222F3E0D0A3C706F6C79676F6E2066696C6C3D22776869
          74652220706F696E74733D223234352C323839203238362C323839203238362C
          323938203234352C32393820222F3E0D0A3C6720786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C706F6C79676F6E2066696C6C
          3D2277686974652220706F696E74733D223234352C333432203330382C333432
          203330382C333536203234352C33353620222F3E0D0A3C706F6C79676F6E2066
          696C6C3D2277686974652220706F696E74733D223134312C333432203232342C
          333432203232342C333536203134312C33353620222F3E0D0A0909093C2F673E
          0D0A3C706174682066696C6C3D227768697465222066696C6C2D72756C653D22
          6E6F6E7A65726F2220643D224D313031203138336C3233203020323220343820
          3233202D343820323220302030203832202D313820302030202D3532202D3230
          203434202D31332030202D3230202D34342030203532202D313920302030202D
          38327A6D313339203063382C302031352C322032312C3520372C342031322C39
          2031352C313520342C3620352C313320352C323120302C38202D312C3135202D
          352C3231202D342C36202D392C3131202D31352C3135202D362C33202D31342C
          35202D32322C356C2D333320302030202D383220333420307A6D302036346334
          2C3020382C302031312C2D3220332C2D3220352C2D3520372C2D3920322C2D33
          20322C2D3720322C2D313220302C2D3520302C2D39202D322C2D3132202D322C
          2D34202D352C2D37202D382C2D38202D332C2D32202D372C2D33202D31312C2D
          336C2D31332030203020343620313420307A6D3531202D36346C353920302030
          203137202D33382030203020313820333520302030203137202D333520302030
          203330202D323120302030202D38327A222F3E0D0A3C706174682066696C6C3D
          227768697465222066696C6C2D72756C653D226E6F6E7A65726F2220643D224D
          333530203239386C2D3338203063312C3420322C3620352C3920332C3220362C
          332031302C3320362C302031312C2D322031342C2D366C362036632D362C3620
          2D31322C38202D32302C38202D372C30202D31332C2D32202D31382C2D36202D
          342C2D35202D372C2D3131202D372C2D313820302C2D3820332C2D313420382C
          2D313820342C2D352031302C2D372031362C2D3720372C302031322C32203137
          2C3620352C3420372C3920372C31366C3020377A6D2D3338202D386C32382030
          63302C2D34202D312C2D37202D342C2D39202D322C2D32202D362C2D33202D39
          2C2D33202D342C30202D372C31202D31302C33202D332C32202D352C35202D35
          2C397A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
  object DS: TDataSource
    Left = 268
    Top = 344
  end
  object TimerTooltip: TTimer
    Enabled = False
    Interval = 150
    OnTimer = TimerTooltipTimer
    Left = 440
    Top = 296
  end
  object Historico_Notificacao: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'SELECT U.USUARIO, iif(COALESCE(HN.LIDO, 0) = 1, '#39'S'#39', '#39'N'#39') as LID' +
        'O'
      'FROM HISTORICO_NOTIFICACAO HN'
      'LEFT JOIN USUARIO U ON U.CODIGO = HN.CODUSUARIO'
      'WHERE HN.CODHISTORICO_SLA = :CODIGO')
    Left = 268
    Top = 372
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
end
