inherited FrmAgendaEditorRapido: TFrmAgendaEditorRapido
  Caption = 'FrmAgendaEditorRapido'
  ClientHeight = 485
  ExplicitHeight = 524
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Height = 400
    ExplicitHeight = 400
    inherited cxGroupBox1: TcxGroupBox
      ExplicitWidth = 263
      Width = 263
      inherited lbInformation: TcxLabel
        ExplicitWidth = 254
        Width = 254
      end
    end
    inherited btnFindTime: TcxButton
      Left = 279
      Width = 153
      Caption = 'Encontrar tempo dispon'#237'vel'
      ExplicitLeft = 279
      ExplicitWidth = 153
    end
    inherited teSubject: TcxTextEdit
      Left = 76
      ExplicitLeft = 76
      ExplicitWidth = 356
      Width = 356
    end
    inherited icbLabel: TcxImageComboBox
      Left = 271
      ExplicitLeft = 271
      ExplicitWidth = 161
      Width = 161
    end
    inherited deStart: TcxDateEdit
      Left = 76
      ExplicitLeft = 76
    end
    inherited teStart: TcxTimeEdit
      Left = 203
      ExplicitLeft = 203
      ExplicitWidth = 64
      Width = 64
    end
    inherited cbAllDayEvent: TcxCheckBox
      Left = 273
      Caption = 'Evento para o dia inteiro'
      ExplicitLeft = 273
      ExplicitWidth = 138
    end
    inherited deEnd: TcxDateEdit
      Left = 76
      ExplicitLeft = 76
    end
    inherited teEnd: TcxTimeEdit
      Left = 203
      ExplicitLeft = 203
      ExplicitWidth = 64
      Width = 64
    end
    inherited cbxTaskStatus: TcxComboBox
      Left = 243
      ExplicitLeft = 243
    end
    inherited cbReminder: TcxCheckBox
      Caption = 'Lembrete:'
    end
    inherited icbShowTimeAs: TcxImageComboBox
      Left = 290
      ExplicitLeft = 290
      ExplicitWidth = 142
      Width = 142
    end
    inherited meMessage: TcxMemo
      ExplicitHeight = 41
      Height = 41
    end
    inherited btnOk: TcxButton
      Default = False
    end
    inherited btnCancel: TcxButton
      Caption = 'Cancelar'
    end
    inherited btnDelete: TcxButton
      Caption = '&Excluir'
    end
    inherited btnRecurrence: TcxButton
      Caption = '&Recorr'#234'ncia'
    end
    inherited dxLayoutItem1: TdxLayoutItem
      ControlOptions.OriginalWidth = 153
    end
    inherited lbSubject: TdxLayoutItem
      CaptionOptions.Text = 'T'#237'tulo:'
    end
    inherited lbLocation: TdxLayoutItem
      CaptionOptions.Text = 'Localiza'#231#227'o:'
    end
    inherited lbLabel: TdxLayoutItem
      CaptionOptions.Text = 'R'#243'tulo:'
      ControlOptions.OriginalWidth = 161
    end
    inherited lbStartTime: TdxLayoutItem
      CaptionOptions.Text = 'Data In'#237'cio:'
    end
    inherited liStart: TdxLayoutItem
      ControlOptions.OriginalWidth = 64
    end
    inherited dxLayoutItem4: TdxLayoutItem
      ControlOptions.OriginalWidth = 138
    end
    inherited lbEndTime: TdxLayoutItem
      CaptionOptions.Text = 'Data Fim:'
    end
    inherited liFinish: TdxLayoutItem
      ControlOptions.OriginalWidth = 64
    end
    inherited lbTaskComplete: TdxLayoutItem
      CaptionOptions.Text = 'Conclus'#227'o:'
    end
    inherited lbTaskStatus: TdxLayoutItem
      CaptionOptions.Text = 'Status:'
      Left = 280
    end
    inherited lbRecurrence: TdxLayoutItem
      CaptionOptions.Text = 'Recorr'#234'ncia:'
    end
    inherited lbResource: TdxLayoutItem
      CaptionOptions.Text = 'Recurso(s):'
    end
    inherited lbShowTimeAs: TdxLayoutItem
      CaptionOptions.Text = 'Mostrar como:'
    end
    inherited pnlButtons: TdxLayoutGroup
      Top = 447
    end
  end
  object EdtResponsavelÎPessoas: TcxButtonEdit [1]
    Left = 56
    Top = 6
    Properties.Buttons = <
      item
        Enabled = False
        Kind = bkText
      end
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnChange = EdtResponsavelÎPessoasPropertiesChange
    TabOrder = 1
    Width = 81
  end
  object BtnSkype: TcxButton [2]
    Left = 420
    Top = 4
    Width = 25
    Height = 25
    Anchors = [akTop, akRight]
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360400000000000036000000280000001000000010000000010020000000
      000000000000C40E0000C40E0000000000000000000000000000000000000000
      000000000000070500084C3600518F630096B07B00B7B47E00BEAA7800B5CF91
      00DBF1AA00FFEAA500F8C08800C9543B00590000000000000000000000000000
      000035250038BE8600C6FDB000FFFFB000FFFDAF00FFFCAE00FFFEAF00FFF7AA
      00FFF1A900FFF2AB00FFFEB300FFFCB200FF523A00570000000000000000412D
      0045E8A400F1FFB200FFF4B319FFF8D37BFFFBE9BEFFFCECC7FFFADFA1FFF5C2
      4AFFF1A800FFF1A900FFF0AA00FFFEB300FFC48900CF000000001D15001FDB9A
      00E5FEB100FFF2B321FFFCF1D5FFFFFFFFFFFFFEFDFFFEFAEEFFFFFFFFFFFFFF
      FFFFF7D37BFFF0A600FFF1AA00FFF2AB00FFEBA700FA000000008C630093FFB7
      00FFF0A500FFF9DE9CFFFFFFFFFFFCE9BEFFF3B424FFF2AE16FFF6CB62FFFEFD
      F8FFFEFCF8FFF3B625FFF0A600FFF1AA00FFEEA800FE0A07000BD79700E4FAB0
      00FFF0A500FFFBE6B4FFFFFFFFFFF4BB31FFEF9E00FFEF9F00FFF1AD09FFFDF7
      E6FFFFFFFFFFF5C145FFF0A500FFF9AF00FFC98F00D62D200030F6AD00FFF3AC
      00FFF1A900FFF3B41EFFF3B82CFFF1A900FFF3B82EFFF6C960FFFBEAC0FFFFFF
      FFFFFEFDF9FFF3B727FFF0A600FFFCB200FFB58000C045300049FCB200FFF2AB
      00FFF1AA00FFF0A400FFF4BE3EFFFBEAC1FFFFFFFEFFFFFFFFFFFFFFFFFFFEFB
      F2FFF7CE6EFFF0A700FFF1AA00FFF9B000FFC58B00D130210033F8AF00FFF3AB
      00FFF0A600FFF4BF3DFFFFFEFBFFFFFFFFFFFEFBF3FFFCEABFFFF8D27AFFF3B7
      26FFF0A400FFF1A900FFF1AA00FFFBB100FFC08700CB543B0058F6AD00FFF2AB
      00FFF0A500FFF9D98FFFFFFFFFFFFBE6B2FFF2B11CFFF0A300FFF1A700FFFAE2
      A8FFF8D581FFF1A700FFF1AA00FFFFB400FFA27100ABD19300DDF3AB00FFF1AA
      00FFF0A500FFF8D47DFFFFFFFFFFFAE3ACFFF1AC12FFF1AC11FFF9D88AFFFFFF
      FFFFFCEFCEFFF1A700FFF2AA00FFFFB500FF5C410061F7AE00FFF1AA00FFF1AA
      00FFF1A700FFF2B320FFFCF1D6FFFFFFFFFFFEFBF4FFFEF9ECFFFFFFFFFFFEFC
      F7FFF6C551FFF0A600FFFFB500FFC88D00D50D09000EB98300C5F8AF00FFF1A9
      00FFF1AA00FFF0A600FFF2B219FFF8D37AFFFBE9BCFFFCECC6FFF9DD98FFF4BD
      38FFF1A600FFFFB400FFE9A300F23727003B0000000030220032F0AA00FDFBB1
      00FFF1AA00FFF1AA00FFF0A700FFF2A600FFF4A900FFF3A800FFF5A900FFFCAF
      00FFFFB600FFD39500DB3E2C004300000000000000000000000062450068EFA9
      00F5F8AF00FFF1AA00FFF3AC00FFF4AC00FFEBA600FAF2AA00FFE6A100F3C78C
      00CF7C570080150F001700000000000000000000000000000000000000002A1E
      002EB47F00BBF3AB00FFD49500DF5A40005F22180024291D002B1C13001D0000
      00000000000000000000000000000000000000000000}
    SpeedButtonOptions.CanBeFocused = False
    SpeedButtonOptions.Transparent = True
    TabOrder = 2
    OnClick = BtnSkypeClick
  end
  object MemoMensagem: TcxMemo [3]
    Left = 0
    Top = 403
    Align = alBottom
    TabOrder = 3
    OnKeyPress = MemoMensagemKeyPress
    Height = 82
    Width = 442
  end
  object cxSplitter1: TcxSplitter [4]
    Left = 0
    Top = 400
    Width = 442
    Height = 3
    AlignSplitter = salBottom
  end
  object HTMLViewer1: THtmlViewer [5]
    Left = 0
    Top = 0
    Width = 442
    Height = 400
    BorderStyle = htNone
    DefBackground = clWhite
    DefFontName = 'Times New Roman'
    DefPreFontName = 'Courier New'
    HistoryMaxCount = 0
    ImageCacheCount = 0
    MarginHeight = 0
    NoSelect = False
    PrintMarginBottom = 2.000000000000000000
    PrintMarginLeft = 2.000000000000000000
    PrintMarginRight = 2.000000000000000000
    PrintMarginTop = 2.000000000000000000
    PrintScale = 1.000000000000000000
    ScrollBars = ssVertical
    ViewImages = False
    VisitedMaxCount = 0
    Align = alClient
    TabOrder = 5
    Touch.InteractiveGestures = [igPan]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia]
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object TransaEditor: TFDTransaction
    Options.AutoStop = False
    Connection = DMBanco.Banco
    Left = 224
    Top = 217
  end
  object MenuSkype: TPopupMenu
    OnPopup = MenuSkypePopup
    Left = 252
    Top = 217
    object V1: TMenuItem
      Caption = 'Vincular <> a este cliente'
      OnClick = V1Click
    end
  end
end
