object FrmSelecao_Lote: TFrmSelecao_Lote
  Left = 0
  Top = 0
  Caption = 'Sele'#231#227'o de Lote'
  ClientHeight = 208
  ClientWidth = 466
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 466
    Height = 208
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object LblCliente: TcxLabel
      Left = 5
      Top = 175
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Transparent = True
      Height = 28
      Width = 456
    end
    object btnConfirmar: TcxButton
      Left = 5
      Top = 134
      Width = 91
      Height = 25
      Caption = 'Confirmar'
      ModalResult = 1
      TabOrder = 5
    end
    object cxButton1: TcxButton
      Left = 97
      Top = 134
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 6
    end
    object EdtLoteÎProduto_Lote: TcxButtonEdit
      Left = 17
      Top = 23
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnChange = EdtLoteÎProduto_LotePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object LblLoteÎProduto_LoteÎDESCRICAO: TcxLabel
      Left = 17
      Top = 46
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Height = 22
      Width = 400
    end
    object LblLoteÎProduto_LoteÎREFERENCIA: TcxLabel
      Left = 139
      Top = 23
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Height = 22
      Width = 278
    end
    object EdtResponsavelRazaoSocial: TcxLabel
      Left = 139
      Top = 99
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Height = 22
      Width = 278
    end
    object EdtResponsavel: TcxButtonEdit
      Left = 17
      Top = 99
      Hint = 'O Cliente '#233' selecionado no cadastro de lote'
      AutoSize = False
      Properties.Buttons = <
        item
          Enabled = False
          Kind = bkText
        end
        item
          Default = True
          Enabled = False
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnChange = EdtResponsavelÎPessoasPropertiesChange
      Style.HotTrack = False
      TabOrder = 3
      Height = 22
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Offsets.Bottom = 5
      Offsets.Left = 5
      Offsets.Right = 5
      Offsets.Top = 5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'N'#186' do Lote / Serial:'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object GrupoCliente: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Est'#225' vinculado ao Cliente:'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoCliente
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = LblCliente
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 338
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnConfirmar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoCliente
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'N'#186' do Lote / Serial:'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Layout = clTop
      Control = EdtLoteÎProduto_Lote
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = LblLoteÎProduto_LoteÎDESCRICAO
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = LblLoteÎProduto_LoteÎREFERENCIA
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 278
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Cliente'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = EdtResponsavelRazaoSocial
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 278
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avClient
      Visible = False
      Control = EdtResponsavel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 183
    Top = 5
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
end
