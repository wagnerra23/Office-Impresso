inherited Menu_Mestre: TMenu_Mestre
  BorderStyle = bsNone
  Caption = 'Menu_APP'
  ClientHeight = 749
  ClientWidth = 1370
  FormStyle = fsStayOnTop
  Position = poDefaultSizeOnly
  Visible = False
  ExplicitWidth = 1386
  ExplicitHeight = 788
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Width = 1370
    Height = 749
    BorderStyle = cxcbsDefault
    Images = imgMenu
    OptionsView.CenterContentVert = False
    OptionsView.GroupBlockMaxColumnCount = 1
    OptionsView.GroupIndent = 1
    OptionsView.GroupLayout = glVertical
    OptionsView.GroupMaxRowCount = 1000
    OptionsView.IndentVert = 3
    OptionsView.ItemHeight = 19
    OptionsView.ItemIndent = 0
    OptionsView.ItemWidth = 115
    Style.GradientBeginColor = 5187110
    Style.GradientEndColor = 5187110
    Style.FocusedColor = 11141290
    Title.Text = ''
    OnMouseLeave = tcBaseMouseLeave
    OnMouseMove = tcBaseMouseMove
    ExplicitWidth = 1818
    ExplicitHeight = 1206
    inherited tiBasePadrao: TdxTileControlItem
      Visible = False
    end
  end
  object pnlSaldoContas: TPanel
    Left = 36
    Top = 223
    Width = 236
    Height = 217
    BevelKind = bkFlat
    Caption = 'Frame Imforma'#231#227'o'
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object dxTileControl3: TdxTileControl
      Left = 1
      Top = 1
      Width = 230
      Height = 211
      Cursor = crHandPoint
      OptionsBehavior.ItemMoving = False
      OptionsBehavior.ScrollMode = smScrollButtons
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 1000
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 19
      OptionsView.ItemIndent = 0
      OptionsView.ItemWidth = 115
      Style.GradientBeginColor = 5187110
      Style.GradientEndColor = 5187110
      Style.FocusedColor = 11141290
      TabOrder = 0
      Title.IndentHorz = 0
      Title.IndentVert = 0
      object dxTileControlGroup2: TdxTileControlGroup
        Index = 0
      end
      object dxTileControlItem6: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentHorz = 170
        GroupIndex = 0
        IndexInGroup = 8
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleRight
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentVert = 0
        Text1.Value = '+56.0K'
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentVert = 0
        Text4.Value = '03 - Caixa Feira'
        Text4.TextColor = 17028
      end
      object dxTileControlItem7: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 5
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = 'Caixas'
        Text1.TextColor = 13092807
        Text2.Align = oaMiddleLeft
        Text2.AssignedValues = [avTextColor]
        Text2.IndentHorz = 140
        Text2.IndentVert = 0
        Text2.TextColor = 13092807
        Text3.Align = oaMiddleRight
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -11
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = [fsBold]
        Text3.IndentVert = 0
        Text3.TextColor = clGreen
        Text4.Align = oaMiddleRight
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = ANSI_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI Semibold'
        Text4.Font.Style = [fsBold]
        Text4.IndentVert = 0
        Text4.Value = '+45K'
        Text4.TextColor = clGreen
      end
      object dxTileControlItem8: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 10
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentVert = 0
        Text1.Value = 'Contas banc'#225'rias'
        Text1.TextColor = 20639
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleRight
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentVert = 0
        Text4.Value = '-326K'
        Text4.TextColor = clRed
      end
      object dxTileControlItem9: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 14
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clSilver
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentVert = 0
        Text1.Value = 'Saldo'
        Text1.TextColor = 20639
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object dxTileControlItem10: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentHorz = 170
        GroupIndex = 0
        IndexInGroup = 7
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleRight
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentVert = 0
        Text1.Value = '+17.3K'
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentVert = 0
        Text4.Value = '02 - Caixa Interno'
        Text4.TextColor = 17028
      end
      object dxTileControlItem12: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentHorz = 170
        GroupIndex = 0
        IndexInGroup = 6
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleRight
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentVert = 0
        Text1.Value = '+19.9K'
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentVert = 0
        Text4.Value = '01 - Caixa Loja'
        Text4.TextColor = 17028
      end
      object dxTileControlItem13: TdxTileControlItem
        Glyph.ImageIndex = 6
        Glyph.IndentHorz = 60
        Glyph.Mode = ifmStretch
        Glyph.Images = imgMenu
        GroupIndex = 0
        IndexInGroup = 9
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 16447995
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = ' '
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object dxTileControlItem16: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentHorz = 170
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 13
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleRight
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 0
        Text1.IndentVert = 0
        Text1.Value = '-11.4K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentVert = 0
        Text4.Value = 'Banco Inter'
        Text4.TextColor = 17028
      end
      object dxTileControlItem18: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentHorz = 170
        GroupIndex = 0
        IndexInGroup = 11
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleRight
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentVert = 0
        Text1.Value = '+141K '
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentVert = 0
        Text4.Value = 'Conta Banco do Brasil'
        Text4.TextColor = 17028
      end
      object dxTileControlItem20: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC100000EC101B8916BED00000010744558745469
          746C65004D61696C3B506F73743BAC0E6BE30000005149444154785EDDCF410E
          00100C4451177429A77288DEA9960D53432312B1985DFF0B49558FF610904BD5
          C87AC010D98865F60259237603C078C062F70BFEA11F13000388398008C40C60
          BB0DC4F711D00012EECC832E4611960000000049454E44AE426082}
        Glyph.ImageIndex = 22
        GroupIndex = 0
        IndexInGroup = 4
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = 'Balan'#231'o:'
        Text1.TextColor = 13092807
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleRight
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = ANSI_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI Semibold'
        Text4.Font.Style = [fsBold]
        Text4.IndentVert = 0
        Text4.Value = '+23K'
        Text4.TextColor = clGreen
      end
      object dxTileControlItem21: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentHorz = 170
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 12
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleRight
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = '-341'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentVert = 0
        Text4.Value = 'Banco Caixa Economica Federal'
        Text4.TextColor = 17028
      end
      object dxTileControlItem23: TdxTileControlItem
        GroupIndex = -1
        IndexInGroup = -1
        Text1.AssignedValues = []
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object dxTileControlItem24: TdxTileControlItem
        Tag = 2
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Produto Composto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
      object dxTileControlItem25: TdxTileControlItem
        Tag = 3
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Produto Personalizado'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
      object dxTileControlItem26: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Produto Precifica'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
    end
  end
  object pnlHint: TPanel
    Left = 301
    Top = 1
    Width = 236
    Height = 605
    BevelKind = bkFlat
    Caption = 'Frame Imforma'#231#227'o'
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object tcMenu: TdxTileControl
      Left = 1
      Top = 1
      Width = 230
      Height = 417
      Cursor = crHandPoint
      Align = alTop
      OptionsBehavior.ItemMoving = False
      OptionsBehavior.ScrollMode = smScrollButtons
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 1000
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 19
      OptionsView.ItemIndent = 0
      OptionsView.ItemWidth = 115
      Style.GradientBeginColor = 5187110
      Style.GradientEndColor = 5187110
      Style.FocusedColor = 11141290
      TabOrder = 0
      Title.IndentHorz = 0
      Title.IndentVert = 0
      object dxTileControlGroup1: TdxTileControlGroup
        Index = 0
      end
      object tcmTituloRecebido: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 17
        GroupIndex = 0
        IndexInGroup = 9
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = 'Recebidas'
        Text1.TextColor = 20639
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = '+353K'
        Text4.TextColor = clGreen
      end
      object tcmSaldoBalanco: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        OptionsAnimate.AnimateText = True
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = 'Patrim'#244'nio:'
        Text1.TextColor = 13092807
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = ANSI_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI Semibold'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 96
        Text4.IndentVert = 0
        Text4.Value = '19K'
        Text4.TextColor = 13092807
      end
      object tcmRecebido5: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 14
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '+56.0K'
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Conv'#234'nios'
        Text4.TextColor = 17028
      end
      object tcmAreceberEVencidas: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 7
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = 'A Receber:'
        Text1.TextColor = 13092807
        Text2.Align = oaMiddleLeft
        Text2.AssignedValues = [avTextColor]
        Text2.IndentHorz = 140
        Text2.IndentVert = 0
        Text2.Value = 'Atrasadas'
        Text2.TextColor = 13092807
        Text3.Align = oaMiddleRight
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -11
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = [fsBold]
        Text3.IndentVert = 0
        Text3.Value = '+35K'
        Text3.TextColor = clGreen
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = ANSI_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI Semibold'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 92
        Text4.IndentVert = 0
        Text4.Value = '+45K'
        Text4.TextColor = clGreen
      end
      object tcmTituloPago: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 16
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentVert = 0
        Text1.Value = 'Pagas'
        Text1.TextColor = 20639
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = '-326K'
        Text4.TextColor = clRed
      end
      object tcmTitulo: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 14
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clSilver
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentVert = 0
        Text1.Value = 'Dinheiro'
        Text1.TextColor = 20639
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcmRecebido4: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 13
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '+17.3K'
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Atacado'
        Text4.TextColor = 17028
      end
      object tcmRecebido6: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 15
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '+53.7K'
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Outros'
        Text4.TextColor = 17028
      end
      object tcmRecebido3: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 12
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '+19.9K'
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'A Vista'
        Text4.TextColor = 17028
      end
      object tcmSeparador: TdxTileControlItem
        Glyph.Align = oaMiddleCenter
        Glyph.Image.SourceWidth = 160
        Glyph.ImageIndex = 6
        Glyph.IndentHorz = 0
        Glyph.IndentVert = 0
        Glyph.Mode = ifmStretch
        Glyph.Images = imgMenu
        GroupIndex = 0
        IndexInGroup = 6
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 16447995
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = ' '
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcmIntegracoes: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 19
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-55.5K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Juros'
        Text4.TextColor = 17028
      end
      object tcmEmpresa: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 18
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-144K'
        Text1.TextColor = clRed
        Text2.Align = oaMiddleLeft
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text2.Value = ' '
        Text3.AssignedValues = []
        Text3.IndentVert = 0
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Alugu'#233'is'
        Text4.TextColor = 17028
      end
      object tcmUsuarios: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 21
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-11.4K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Despesas Var'#225'veis'
        Text4.TextColor = 17028
      end
      object tcmBaseDeConhecimento: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 20
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-57.5K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Despesas Fixas'
        Text4.TextColor = 17028
      end
      object tcmRecebido1: TdxTileControlItem
        Glyph.Align = oaMiddleRight
        Glyph.ImageIndex = 1
        Glyph.IndentHorz = 10
        Glyph.IndentVert = 0
        Glyph.Images = imgMenu
        GroupIndex = 0
        IndexInGroup = 10
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '+141K '
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Mensalidade'
        Text4.TextColor = 17028
      end
      object tcmPago1: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 17
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-56.9K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Impostos'
        Text4.TextColor = 17028
      end
      object tcmSubTitulo: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC100000EC101B8916BED00000010744558745469
          746C65004D61696C3B506F73743BAC0E6BE30000005149444154785EDDCF410E
          00100C4451177429A77288DEA9960D53432312B1985DFF0B49558FF610904BD5
          C87AC010D98865F60259237603C078C062F70BFEA11F13000388398008C40C60
          BB0DC4F711D00012EECC832E4611960000000049454E44AE426082}
        Glyph.ImageIndex = 22
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = 'Balan'#231'o:'
        Text1.TextColor = 13092807
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaTopLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = ANSI_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI Semibold'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 76
        Text4.IndentVert = 0
        Text4.Value = '+23K'
        Text4.TextColor = clGreen
      end
      object tcmRelatorio: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 22
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-341'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Compras fornecedor'
        Text4.TextColor = 17028
      end
      object tcmRecebido2: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 11
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '+65.3K'
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Credi'#225'rio'
        Text4.TextColor = 17028
      end
      object t: TdxTileControlItem
        GroupIndex = -1
        IndexInGroup = -1
        Text1.AssignedValues = []
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcmProdutoComposto: TdxTileControlItem
        Tag = 2
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Produto Composto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
      object tcmProdutoPresonalizados: TdxTileControlItem
        Tag = 3
        GroupIndex = 0
        IndexInGroup = 4
        Size = tcisLarge
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Produto Personalizado'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
      object tcmProdutoPrecificacao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 5
        Size = tcisLarge
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Produto Precifica'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
      object tcMenuItem1: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 8
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor]
        Text1.IndentVert = 0
        Text1.Value = 'A Pagar:'
        Text1.TextColor = 13092807
        Text2.Align = oaMiddleLeft
        Text2.AssignedValues = [avTextColor, avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -11
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentHorz = 100
        Text2.IndentVert = 0
        Text2.Value = '34K'
        Text2.TextColor = clRed
        Text3.Align = oaMiddleLeft
        Text3.AssignedValues = [avTextColor]
        Text3.IndentHorz = 140
        Text3.IndentVert = 0
        Text3.Value = 'Atrasadas:'
        Text3.TextColor = 13092807
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentVert = 0
        Text4.Value = '-24K'
        Text4.TextColor = clRed
      end
    end
    object GridGrafico: TcxGrid
      Left = 1
      Top = 418
      Width = 230
      Height = 182
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      TabOrder = 1
      object GridGraficoViewColunas: TcxGridDBChartView
        DiagramBar.Legend.Position = cppNone
        DiagramBar.AxisCategory.GridLines = False
        DiagramBar.AxisCategory.TickMarkKind = tmkNone
        DiagramBar.AxisValue.GridLines = False
        DiagramBar.AxisValue.TickMarkKind = tmkNone
        DiagramBar.AxisValue.TickMarkLabels = False
        DiagramBar.AxisValue.Visible = False
        DiagramBar.Values.BorderWidth = 0
        DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
        DiagramColumn.Active = True
        DiagramColumn.Legend.Position = cppNone
        DiagramColumn.AxisCategory.GridLines = False
        DiagramColumn.AxisCategory.TickMarkKind = tmkNone
        DiagramColumn.AxisCategory.Visible = False
        DiagramColumn.AxisValue.GridLines = False
        DiagramColumn.AxisValue.TickMarkKind = tmkNone
        DiagramColumn.AxisValue.TickMarkLabels = False
        DiagramColumn.AxisValue.Visible = False
        DiagramColumn.Values.BorderWidth = 0
        DiagramPie.Legend.Position = cppNone
        DiagramPie.SeriesCaptions = False
        DiagramPie.Values.CaptionPosition = pdvcpOutsideEnd
        DiagramPie.Values.CaptionItems = [pdvciCategory, pdvciPercentage]
        DiagramPie.Values.CaptionItemSeparator = ' '
        DiagramPie.Values.PercentageCaptionFormat = '(0%)'
        OptionsCustomize.DataDrillDown = False
        OptionsCustomize.DataGroupMoving = False
        OptionsCustomize.OptionsCustomization = False
        OptionsCustomize.SeriesCustomization = False
        ToolBox.Visible = tvNever
        object GridGraficoViewColunasDataGroup1: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'PrimeiroDiaSemana'
        end
        object GridGraficoViewColunasSeries1: TcxGridDBChartSeries
          DataBinding.FieldName = 'TOTAL'
          ValueCaptionFormat = 'R$ #,##0.00'
        end
      end
      object GridGraficoLevel1: TcxGridLevel
        GridView = GridGraficoViewColunas
      end
    end
  end
  object Panel2: TPanel
    Left = 543
    Top = 3
    Width = 689
    Height = 572
    BevelKind = bkFlat
    Caption = 'Frame Imforma'#231#227'o'
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object dxTileControl4: TdxTileControl
      Left = 1
      Top = 1
      Width = 683
      Height = 566
      Cursor = crHandPoint
      Align = alTop
      OptionsBehavior.ItemMoving = False
      OptionsBehavior.ScrollMode = smScrollButtons
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 1000
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 19
      OptionsView.ItemIndent = 0
      OptionsView.ItemWidth = 550
      Style.GradientBeginColor = 5187110
      Style.GradientEndColor = 5187110
      Style.FocusedColor = 11141290
      TabOrder = 0
      Title.IndentHorz = 0
      Title.IndentVert = 0
      object dxTileControlGroup3: TdxTileControlGroup
        Index = 0
      end
      object dxTileControlItem3: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 14
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = 'Receita de venda l'#237'quida'
        Text1.TextColor = 13092807
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 155
        Text4.IndentVert = 0
        Text4.Value = '+353K'
        Text4.TextColor = clGreen
      end
      object dxTileControlItem5: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 4
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        OptionsAnimate.AnimateText = True
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = 'Faturamento bruto:'
        Text1.TextColor = 13092807
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaTopLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = ANSI_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI Semibold'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 135
        Text4.IndentVert = 0
        Text4.Value = '19K'
        Text4.TextColor = clGreen
      end
      object dxTileControlItem11: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 19
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-56.0K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Despesas Comerciais (inclui publicidade e propaganda, deprecia'#231#227 +
          'o de ve'#237'culos de vendas/entregas, fretes/seguros sobre vendas, s' +
          'al'#225'rios de vendedores, despesa de provis'#227'o para devedores duvido' +
          'sos etc...)'
        Text4.TextColor = 17028
      end
      object dxTileControlItem15: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 18
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentVert = 0
        Text1.Value = 'Resultado operacional bruto'
        Text1.TextColor = 13092807
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 180
        Text4.IndentVert = 0
        Text4.Value = '-326K'
        Text4.TextColor = clRed
      end
      object dxTileControlItem17: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 14
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clSilver
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentVert = 0
        Text1.Value = 'Demonstra'#231#227'o do resultado do exerc'#237'cio'
        Text1.TextColor = 20639
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object dxTileControlItem19: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 17
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-17.3K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Custo dos Servi'#231'os Prestados (CSP)'
        Text4.TextColor = 17028
      end
      object dxTileControlItem22: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 20
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-53.7K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Despesas Gerais e Administrativas (inclui impostos e alugu'#233'is so' +
          'bre pr'#233'dios administrativos, deprecia'#231#245'es em geral, sal'#225'rios de ' +
          'executivos, honor'#225'rios de diretoria etc..)'
        Text4.TextColor = 17028
      end
      object dxTileControlItem27: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 16
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-19.9K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Custo das Mercadorias Vendidas (CMV, inclui frete/seguros sobre ' +
          'compras de mercadorias)'
        Text4.TextColor = 17028
      end
      object dxTileControlItem28: TdxTileControlItem
        Glyph.ImageIndex = 6
        Glyph.IndentHorz = 60
        Glyph.Mode = ifmStretch
        Glyph.Images = imgMenu
        GroupIndex = 0
        IndexInGroup = 6
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 16447995
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = ' '
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object dxTileControlItem29: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 9
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-55.5K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Descontos INCONDICIONAIS Condedidos'
        Text4.TextColor = 17028
      end
      object dxTileControlItem30: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 8
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-144K'
        Text1.TextColor = clRed
        Text2.Align = oaMiddleLeft
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text2.Value = ' '
        Text3.AssignedValues = []
        Text3.IndentVert = 0
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Impostos e Contribui'#231#245'es Incidentes sobre Mercadorias e Servi'#231'os' +
          ' (ISS, ICMS, PIS/COFINS)'
        Text4.TextColor = 17028
      end
      object dxTileControlItem31: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 12
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-11.4K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Abatimentos sobre Vendas (SEM REVERS'#194'O dos impostos sobre a part' +
          'e abatida)'
        Text4.TextColor = 17028
      end
      object dxTileControlItem32: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 10
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-57.5K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Devolu'#231#245'es de Vendas'
        Text4.TextColor = 17028
      end
      object dxTileControlItem33: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 11
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '+141K '
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Revers'#227'o dos Impostos Sobre Devolu'#231#245'es de Vendas'
        Text4.TextColor = 17028
      end
      object dxTileControlItem34: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 7
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = 'Receita de Vendas bruta'
        Text1.TextColor = 13092807
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 160
        Text4.IndentVert = 0
        Text4.Value = '44K'
        Text4.TextColor = clGreen
      end
      object dxTileControlItem35: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC100000EC101B8916BED00000010744558745469
          746C65004D61696C3B506F73743BAC0E6BE30000005149444154785EDDCF410E
          00100C4451177429A77288DEA9960D53432312B1985DFF0B49558FF610904BD5
          C87AC010D98865F60259237603C078C062F70BFEA11F13000388398008C40C60
          BB0DC4F711D00012EECC832E4611960000000049454E44AE426082}
        Glyph.ImageIndex = 22
        GroupIndex = 0
        IndexInGroup = 5
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 0
        Text1.Value = '+23K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = ANSI_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI Semibold'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'IPI (imposto por fora):'
        Text4.TextColor = 17028
      end
      object dxTileControlItem36: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 13
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-341'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = []
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Compras fornecedor'
        Text4.TextColor = 17028
      end
      object dxTileControlItem37: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 15
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -11
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-65.3K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Custo dos Produtos Vendidos (CPV, inclui frete/seguros sobre com' +
          'pras de insumos)'
        Text4.TextColor = 17028
      end
      object dxTileControlItem38: TdxTileControlItem
        GroupIndex = -1
        IndexInGroup = -1
        Text1.AssignedValues = []
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object dxTileControlItem39: TdxTileControlItem
        Tag = 2
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Produto Composto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
      object dxTileControlItem40: TdxTileControlItem
        Tag = 3
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Produto Personalizado'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
      object dxTileControlItem41: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Produto Precifica'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
      object dxTileControl4Item1: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 22
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Outras Receitas Operacionais (inclui receitas de equival'#234'ncia pa' +
          'trimonial, receitas de ajuste ao valor de mercado, alugu'#233'is ativ' +
          'os, revers'#227'o de provis'#227'o para devedores duvidosos etc...)'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item2: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 24
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-455K'
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Receitas Financeiras (inclui varia'#231#245'es monet'#225'rias ATIVAS, descon' +
          'tos CONDICIONAIS OBTIDOS etc...)'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item3: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 21
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Outras Despesas Operacionais (inclui despesas de equival'#234'ncia pa' +
          'trimonial, despesas de ajuste ao valor de mercado etc...)'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item4: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 23
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Despesas Financeiras (inclui IOF, varia'#231#245'es monet'#225'rias PASSIVAS,' +
          ' descontos CONDICIONAIS CONCEDIDOS etc..)'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item5: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 25
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Outras DESPESAS (inclui custo de venda de ativo imobilizado etc.' +
          '..)'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item6: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 26
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clGreen
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Outras RECEITAS (inclui receita de venda de ativo imobilizado et' +
          'c...)'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item7: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 27
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentVert = 0
        Text1.Value = 'Resultado antes do Imposto'
        Text1.TextColor = 13092807
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 180
        Text4.IndentVert = 0
        Text4.Value = '345K'
        Text4.TextColor = clGreen
      end
      object dxTileControl4Item8: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 28
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Despesa com Provis'#227'o de Imposto de Renda'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item9: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 29
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 
          'Despesa com Provis'#227'o de Contribui'#231#227'o Social Sobre o Lucro L'#237'quid' +
          'o'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item10: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 30
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentVert = 0
        Text1.Value = 'Resultado antes das parcip...'
        Text1.TextColor = 13092807
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 180
        Text4.IndentVert = 0
        Text4.Value = '345K'
        Text4.TextColor = clRed
      end
      object dxTileControl4Item11: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 31
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Deb'#234'ntures (dedut'#237'vel do Imposto de Renda)'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item12: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 32
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Empregados (dedut'#237'vel do Imposto de Renda)'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item13: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 33
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Administradores'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item14: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 34
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Partes Benefici'#225'rias'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item15: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 35
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentHorz = 21
        Text1.IndentVert = 0
        Text1.Value = '-45K'
        Text1.TextColor = clRed
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 66
        Text4.IndentVert = 0
        Text4.Value = 'Fundos de Assist'#234'ncia e Previd'#234'ncia para Empregados'
        Text4.TextColor = 17028
      end
      object dxTileControl4Item16: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.AlignWithText = itaRight
        Glyph.ImageIndex = 4
        Glyph.IndentVert = 0
        GroupIndex = 0
        IndexInGroup = 36
        Size = tcisLarge
        Style.BorderColor = 5187110
        Style.GradientBeginColor = 5187110
        Style.GradientEndColor = 5187110
        Text1.AssignedValues = [avTextColor]
        Text1.IndentVert = 0
        Text1.Value = 'Resultado l'#237'quido do Exerc'#237'cio'
        Text1.TextColor = 13092807
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaMiddleLeft
        Text4.AssignedValues = [avTextColor, avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 185
        Text4.IndentVert = 0
        Text4.Value = '344K'
        Text4.TextColor = clGreen
      end
    end
  end
  object KPI_Menu: TFDQuery
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmFetched
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * '
      'FROM KPI_MENU'
      'where (TABELA = '#39'PRODUTO'#39')AND(COMPETENCIA = :Competencia)AND'
      '(ATIVO = '#39'S'#39')')
    Left = 146
    Top = 121
    ParamData = <
      item
        Name = 'COMPETENCIA'
        ParamType = ptInput
      end>
  end
  object KPI: TFDQuery
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmFetched
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * '
      'FROM KPI'
      
        'where ((descricao = '#39'BTNKPI_PRODUTO_GRUPO'#39')or(descricao = '#39'BTNKP' +
        'I_PRODUTO_CATEGORIA'#39'))'
      'AND(COMPETENCIA = :Competencia)AND(ATIVO = '#39'S'#39')')
    Left = 145
    Top = 87
    ParamData = <
      item
        Name = 'COMPETENCIA'
        ParamType = ptInput
      end>
  end
  object imgMenu: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 13434950
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000011744558745469746C65005461736B3B436865636B3B5DF4CC7F0000
          00CB49444154785EB5CE3B0AC2401804E0F50ADECAC2223E8E2078012F20EBA3
          175B7B6F20A692E003D1C642C107D82906C5264550F39B09AC4B587037110786
          BFD9F95846442C5F1FA46906370238E7645A64B977A9D69B5108643F8069302E
          368718A35301241E171AD1CD29C02B088CC68B9D0B80C580D3CDA36AD7A1D5F1
          AA1D2331C07F3CA9D21941A552CB06F2758C8DF283F1FA4C56F848207DE7101B
          0313510091C94622A832D6000A62C96F6B010529B76D9A6F2F309303C8DDF371
          5203C85F011C0924AF047EEA1BCBE72010EC813DAB0000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F760000017A494441
          54789C63F9FFFF3F032580059F6460E0A212464606D675EBE2DA4936C0C9A991
          455050B115C864D6D56DECBD7CB9FE174906080ACAB9022936105B4D4DCE1948
          6DC76B00D4B98E0C0CFF9702696BA0C5190865CC5B828317CD0206D7192027E6
          FFFF7F3BD6AF4FE8841BC0C4C4C41818B82006C8D4676060F442B2E02294068A
          3364000D060346462601A09EAE7FFFFEFD071B0062F8FBCF766161615B0F94B6
          0189016D8B0206DE72103B2868512450F332A8F8DEEFDFFF8481F4A07861E3C6
          D437C1C10BE7039920032EC0348300880DF442199069003462E1F6ED49EF0806
          22B1006E00D00B22402F2442B9062067A379C1001A02F19E9EF3B6C25C811C88
          7BA081050D28866540679743D9C8E2CE5C5C2C7B817A8C500211188D4B80924F
          11D1C8988164E03F204689468C405CBF3EAE0748F540B940DBE76F01C6FF3608
          F7AFCFDAB589B08434176B18A083F7EF1FED06266550F265BE75EBD15E828188
          0EF6EDABFF03F456352833E1CA07780D0001A8B7F00200B67598FFE2EE42E200
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000F744558745469746C6500416E616C797369733BC35957A300000095
          49444154785E9592C10D80200C45DDC915B872740546D0BB2736304EE00A5EB9
          BB53854469E52B5892973484FF280D1D115519B7C5462871D5692F67146196A0
          00838F300B51D2BA19058CAD09E80F1A814F680412276A0F023BEFF485080E11
          73D50708705129E88BDB511042C814022F442642AA0EF210F909ABAE031EE4C4
          025D074E8A5A334001FE03FD0C24AA7F900EB438013E5CBCDC323506DA000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000C744558745469746C650041626F75743B5544671B000000B1494441
          54785EA5D3410A82401480615785D1510A0221BA4497EA02B5CA04418FD122DA
          D515828CE81445E1F8FADF4290B718D0597CABF7F85166265A6F8E56820C0F38
          7C5021C7D2EE7703636468201E05621B18E16C167D2E98740329A4A7B20DCCE0
          20B022E589AC74B8830C546AE00619F8054F1D7E0302BFB000427FE1A5C36D40
          A0688FB11E106890B40B7B484FB9BDCAA71E81ABBDCA2AC601CE13702830ED3E
          266B8E14156ABC71478E85DDFF03D9F341904319D2FC0000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC100000EC101B8916BED00000010744558745469
          746C65004D61696C3B506F73743BAC0E6BE30000005149444154785EDDCF410E
          00100C4451177429A77288DEA9960D53432312B1985DFF0B49558FF610904BD5
          C87AC010D98865F60259237603C078C062F70BFEA11F13000388398008C40C60
          BB0DC4F711D00012EECC832E4611960000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000B1100000B11017F645F910000001A744558745469
          746C6500456D706C6F79656541776172643B41776172643B5EBE79FA0000004F
          49444154785EC592B10900200C04DD298338AD4BB9C48B95C505523CC1E2B0BA
          83240E4916A9B0D754461EA01C4F02814021171106548D70DFFF017B07D615BA
          FE0129650608653FE08FD0B2448B03681DF11FB7030A570000000049454E44AE
          426082}
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002828
          2829545454557272727386868687929292939E9E9E9FA6A6A6A7A6A6A6A7A6A6
          A6A79E9E9E9F929292938686868770707071535353542525252600000001C3C3
          C3C4EFEFEFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEFC0C0C0C1000000000000
          0000000000000E0E0E0F232323242F2F2F303B3B3B3C43434344434343444343
          43443B3B3B3C2F2F2F30232323240C0C0C0D0000000000000000000000000000
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
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    Left = 1159
    Top = 235
  end
end
