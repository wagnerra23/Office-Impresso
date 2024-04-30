object FrmLogo: TFrmLogo
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Altera'#231#227'o de Logo'
  ClientHeight = 310
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 360
    Height = 310
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object ImgLogo: TcxImage
      Left = 5
      Top = 5
      Properties.PopupMenuLayout.MenuItems = [pmiDelete, pmiSave]
      Properties.ShowFocusRect = False
      Style.HotTrack = False
      TabOrder = 0
      Height = 223
      Width = 350
    end
    object btnAlteraLogo: TcxButton
      Left = 5
      Top = 247
      Width = 350
      Height = 25
      Caption = 'Alterar'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = FrmPrincipal.ImgListBotoes16
      TabOrder = 2
      OnClick = btnAlteraLogoClick
    end
    object BtnFecharLogo: TcxButton
      Left = 245
      Top = 280
      Width = 110
      Height = 25
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes16
      TabOrder = 4
      OnClick = BtnFecharLogoClick
    end
    object btnLogoConfirmar: TcxButton
      Left = 134
      Top = 280
      Width = 110
      Height = 25
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = FrmPrincipal.ImgListBotoes16
      TabOrder = 3
      OnClick = btnLogoConfirmarClick
    end
    object lblStatus: TcxLabel
      Left = 5
      Top = 229
      Caption = 'Status'
      Style.HotTrack = False
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      Padding.Bottom = 5
      Padding.Left = 5
      Padding.Right = 5
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxImage1'
      CaptionOptions.Visible = False
      Control = ImgLogo
      ControlOptions.OriginalHeight = 178
      ControlOptions.OriginalWidth = 226
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = btnAlteraLogo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Visible = False
      Control = BtnFecharLogo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Visible = False
      Control = btnLogoConfirmar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = lblStatus
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 203
    Top = 69
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
      PixelsPerInch = 96
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Imagens|*.jpg;*.bmp;*.png'
    Left = 96
    Top = 64
  end
end
