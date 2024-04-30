object FrmNFeDuplicidade: TFrmNFeDuplicidade
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Duplicidade de Nota Fiscal'
  ClientHeight = 429
  ClientWidth = 559
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
    Width = 559
    Height = 429
    Align = alClient
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 10
      Top = 33
      Caption = 
        'O sistema fez uma busca e encontrou uma nota que possivelmente '#233 +
        ' a nota correta. Verifique os dados da nota'
      Style.HotTrack = False
      Transparent = True
    end
    object BtnSEFAZAbrirSite: TcxButton
      Left = 22
      Top = 257
      Width = 515
      Height = 25
      Caption = 'Abrir site da SEFAZ'
      TabOrder = 9
      OnClick = BtnSEFAZAbrirSiteClick
    end
    object cxTextEdit1: TcxTextEdit
      Left = 22
      Top = 137
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Text = 'cxTextEdit1'
      Width = 352
    end
    object cxButton2: TcxButton
      Left = 380
      Top = 121
      Width = 157
      Height = 37
      Caption = 'Visualizar Nota'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B093C7374796C6520747970653D22746578742F6373732220786D6C
        3A73706163653D227072657365727665223E2E426C61636B7B66696C6C3A2337
        32373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
        233131373744373B7D262331333B262331303B2623393B2E57686974657B6669
        6C6C3A234646464646463B7D262331333B262331303B2623393B2E7374307B6F
        7061636974793A302E33353B7D3C2F7374796C653E0D0A093C672069643D2250
        72696E7476696577223E0D0A09093C7061746820636C6173733D22426C61636B
        2220643D224D31382C313463302D332E332C322E372D362C362D365632483276
        3236683232762D384332302E372C32302C31382C31372E332C31382C31347A22
        2F3E0D0A09093C7061746820636C6173733D2257686974652220643D224D3138
        2C313463302D322E362C312E372D342E382C342D352E37563448347632326831
        38762D362E334331392E372C31382E382C31382C31362E362C31382C31347A22
        2F3E0D0A09093C7061746820636C6173733D22426C61636B2220643D224D3230
        2C32304C382C33326C2D322D326C31322D31324331382C31382C32302E322C32
        302C32302C32307A222F3E0D0A09093C7061746820636C6173733D22426C7565
        2220643D224D32342C36632D342E342C302D382C332E362D382C3873332E362C
        382C382C3873382D332E362C382D385332382E342C362C32342C367A204D3234
        2C3230632D332E332C302D362D322E372D362D3673322E372D362C362D367336
        2C322E372C362C3620202623393B2623393B5332372E332C32302C32342C3230
        7A222F3E0D0A09093C6720636C6173733D22737430223E0D0A0909093C706174
        6820636C6173733D22426C61636B2220643D224D32362C382E334332352E342C
        382E312C32342E372C382C32342C38632D332E332C302D362C322E372D362C36
        73322E372C362C362C3663302E372C302C312E342D302E312C322D302E335638
        2E337A222F3E0D0A0909093C7061746820636C6173733D225768697465222064
        3D224D31382C313463302C332E332C322E372C362C362C3656384332302E372C
        382C31382C31302E372C31382C31347A222F3E0D0A09093C2F673E0D0A093C2F
        673E0D0A093C672069643D22D0A1D0BBD0BED0B95F32222F3E0D0A3C2F737667
        3E0D0A}
      TabOrder = 6
    end
    object cxTextEdit2: TcxTextEdit
      Left = 22
      Top = 92
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Text = 'cxTextEdit2'
      Width = 261
    end
    object cxCurrencyEdit1: TcxCurrencyEdit
      Left = 416
      Top = 92
      AutoSize = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 121
    end
    object cxDateEdit1: TcxDateEdit
      Left = 289
      Top = 92
      AutoSize = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Height = 21
      Width = 121
    end
    object cxLabel3: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Houve um problema de Duplicidade com esta nota'
      Style.HotTrack = False
      Transparent = True
    end
    object EdtCaminhoXML: TcxButtonEdit
      Left = 22
      Top = 306
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EdtCaminhoXMLPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 10
      Width = 515
    end
    object EdtSEFAZChave: TcxTextEdit
      Left = 22
      Top = 212
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 355
    end
    object BtnCopiarChave: TcxButton
      Left = 383
      Top = 208
      Width = 74
      Height = 25
      Hint = 'Copiar Chave para a '#193'rea de Transfer'#234'ncia'
      Caption = 'Copiar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000025744558745469746C6500436F70793B426172733B5269
        62626F6E3B5374616E646172643B436C6F6E656D0EDF5B000000644944415478
        5EEDD2310E8030088651EFE41599B9014773E5100EC59088F91B2D51D251922F
        4CBC2E5DCCAC8B886C503BF78A378FC0681C60E6CD912AE06B47E43ACA52D500
        BA00C85F159140A26F804F202500CB81BC49C00F447500BFFD5CE05D77E00041
        2F543873A5691C0000000049454E44AE426082}
      TabOrder = 8
      OnClick = BtnCopiarChaveClick
    end
    object BtnSEFAZConcluir: TcxButton
      Left = 22
      Top = 351
      Width = 515
      Height = 25
      Caption = 'Concluir'
      TabOrder = 11
      OnClick = BtnSEFAZConcluirClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 3
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoSEFAZ
      CaptionOptions.Text = 
        '2'#186' Passo: Abra o site da SEFAZ, cole a chave no campo indicado e' +
        ' consulte a nota'
      CaptionOptions.Layout = clTop
      Control = BtnSEFAZAbrirSite
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Chave da NFe'
      CaptionOptions.Layout = clTop
      Control = cxTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 37
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Destinat'#225'rio'
      CaptionOptions.Layout = clTop
      Control = cxTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Total da Nota'
      CaptionOptions.Layout = clTop
      Control = cxCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Data de Emiss'#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoNotaEncontrada: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Dados da nota encontrada'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoNotaEncontrada
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = GrupoNotaEncontrada
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Visible = False
      Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = GrupoSEFAZ
      CaptionOptions.Text = '3'#186' Passo: Fa'#231'a o download do arquivo XML e carregue-o aqui'
      CaptionOptions.Layout = clTop
      Control = EdtCaminhoXML
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoSEFAZ: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'SEFAZ'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      Index = 3
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = '1'#186' Passo: Copie esta Chave de Acesso'
      CaptionOptions.Layout = clTop
      Control = EdtSEFAZChave
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 355
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = BtnCopiarChave
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = GrupoSEFAZ
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = GrupoSEFAZ
      CaptionOptions.Text = '4'#186' Passo: Clique em Concluir para usar esta nota'
      CaptionOptions.Layout = clTop
      Control = BtnSEFAZConcluir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
end
