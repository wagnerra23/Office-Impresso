object FrmProduto_Personalizado_Panel: TFrmProduto_Personalizado_Panel
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Adicionar caracter'#237'stica ao produto'
  ClientHeight = 418
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 479
    Height = 418
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
    object edtQuantInicial: TcxDBCurrencyEdit
      Left = 154
      Top = 177
      AutoSize = False
      DataBinding.DataField = 'DE'
      DataBinding.DataSource = DSProduto_Preco
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.########'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 5
      Height = 21
      Width = 174
    end
    object lblTitulo: TcxLabel
      Left = 0
      Top = 0
      Caption = 'Varia'#231#227'o por TipoVariacao'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3815994
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 240
    end
    object tcMenu: TdxTileControl
      Left = 351
      Top = 60
      Width = 128
      Height = 283
      Align = alNone
      OptionsBehavior.ItemMoving = False
      OptionsView.CenterContentHorz = True
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupIndent = 0
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 400
      OptionsView.IndentHorz = 4
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 35
      TabOrder = 10
      Transparent = True
      object dxTileControlGroup1: TdxTileControlGroup
        Index = 0
      end
      object btnNovo: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Adicionar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnNovoClick
      end
      object btnSair: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 5
        Style.BorderColor = 8075648
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Fechar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnSairClick
      end
      object btnExcluir: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Excluir'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnExcluirClick
      end
      object btnAlterar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = []
        Text1.Value = 'Alterar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnAlterarClick
      end
      object btnConfirmar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Confirmar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnConfirmarClick
      end
      object btnCancelar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Cancelar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnCancelarClick
      end
    end
    object edtDescricao: TcxLabel
      Left = 10
      Top = 21
      AutoSize = False
      Caption = 'Descri'#231#227'o'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4194304
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 38
      Width = 459
      AnchorX = 240
      AnchorY = 40
    end
    object edtReferencia: TcxDBTextEdit
      Left = 154
      Top = 78
      DataBinding.DataSource = DSProduto_Preco
      Style.HotTrack = False
      TabOrder = 2
      Width = 174
    end
    object edtSKU: TcxDBTextEdit
      Left = 154
      Top = 99
      DataBinding.DataSource = DSProduto_Preco
      Style.HotTrack = False
      TabOrder = 3
      Width = 174
    end
    object cbTipoCalculo: TcxDBComboBox
      Left = 154
      Top = 156
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = DSProduto_Preco
      Properties.Items.Strings = (
        'At'#233
        'Acima de')
      Properties.OnChange = cbTipoCalculoPropertiesChange
      Style.HotTrack = False
      TabOrder = 4
      Width = 174
    end
    object edtQuant: TcxDBCurrencyEdit
      Left = 154
      Top = 198
      AutoSize = False
      DataBinding.DataField = 'QUANT'
      DataBinding.DataSource = DSProduto_Preco
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.########'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 174
    end
    object edtValorInicial: TcxDBCurrencyEdit
      Left = 154
      Top = 255
      AutoSize = False
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.########'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clActiveBorder
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 174
    end
    object edtPercDesc: TcxDBCurrencyEdit
      Left = 154
      Top = 276
      AutoSize = False
      DataBinding.DataField = 'PORCENTAGEM'
      DataBinding.DataSource = DSProduto_Preco
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.########'
      Properties.OnEditValueChanged = edtPercDescPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 8
      Height = 21
      Width = 174
    end
    object edtValorFinal: TcxCurrencyEdit
      Left = 154
      Top = 302
      AutoSize = False
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = 'R$ 0.00'
      Properties.OnValidate = edtValorFinalPropertiesValidate
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 30
      Width = 174
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object LiedtEspessura: TdxLayoutItem
      Parent = Grupo_Ate
      AlignHorz = ahClient
      CaptionOptions.Text = 'Quantidade Inicial'
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight]
      Control = edtQuantInicial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Grupo_Padrao: TdxLayoutGroup
      Parent = Grupo_Medidas
      CaptionOptions.Text = 'Geral'
      ButtonOptions.Buttons = <>
      UseIndent = False
      Index = 0
    end
    object Grupo_Quantidade: TdxLayoutGroup
      Parent = Grupo_Medidas
      CaptionOptions.Text = 'Configurar Quantidade'
      Offsets.Top = 5
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 500
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Padding.AssignedValues = [lpavTop]
      UseIndent = False
      Index = 1
    end
    object Grupo_Valor: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Configurar Valor'
      Offsets.Top = 5
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      ButtonOptions.Buttons = <>
      Padding.AssignedValues = [lpavTop]
      UseIndent = False
      Index = 1
    end
    object Grupo_Medidas: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Configura'#231#227'o'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Width = 350
      SizeOptions.MaxWidth = 500
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultWidth = 100
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Visible = False
      Control = lblTitulo
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      SizeOptions.Width = 350
      Control = tcMenu
      ControlOptions.OriginalHeight = 283
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = Grupo_Descricao
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Visible = False
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtDescricao
      ControlOptions.OriginalHeight = 38
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = Grupo_Padrao
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Digite a Refer'#234'ncia (P/M/G)'
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtReferencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = Grupo_Padrao
      AlignHorz = ahClient
      CaptionOptions.Text = 'C'#243'digo EAN (C'#243'd. Barras)'
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtSKU
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = Grupo_Quantidade
      AlignHorz = ahClient
      CaptionOptions.Text = 'Qual o tipo de C'#225'lculo?'
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = cbTipoCalculo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = Grupo_Quantidade
      AlignHorz = ahClient
      CaptionOptions.Text = 'Quantidade'
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtQuant
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = Grupo_Valor
      AlignHorz = ahClient
      CaptionOptions.Text = 'Valor Inicial'
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtValorInicial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = Grupo_Valor
      AlignHorz = ahClient
      CaptionOptions.Text = '% Desconto'
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtPercDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = Grupo_Valor
      AlignHorz = ahClient
      CaptionOptions.Text = 'Valor Final'
      Offsets.Top = 5
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtValorFinal
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object Grupo_Ate: TdxLayoutGroup
      Parent = Grupo_Quantidade
      CaptionOptions.Text = 'New Group'
      Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object Grupo_Descricao: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      Index = 0
    end
  end
  object cxLabel3: TcxLabel
    Left = 0
    Top = 880
    AutoSize = False
    Caption = 'Peso Unit'#225'rio (KG)'
    Style.HotTrack = False
    Style.Shadow = False
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Properties.Alignment.Horz = taCenter
    Transparent = True
    Visible = False
    Height = 21
    Width = 149
    AnchorX = 75
  end
  object DS: TDataSource
    Left = 349
    Top = 17
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 377
    Top = 19
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
    object dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = 7237230
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.Padding.AssignedValues = [lpavTop]
      ItemOptions.Padding.Top = 2
      ItemOptions.ControlBorderStyle = lbsFlat
      LookAndFeel.Kind = lfStandard
      LookAndFeel.ScrollbarMode = sbmDefault
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = 7237230
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderStyle = lbsFlat
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = True
      LookAndFeel.ScrollbarMode = sbmDefault
      PixelsPerInch = 96
    end
    object dxLayoutStandardLookAndFeelEquacao: TdxLayoutStandardLookAndFeel
      ItemOptions.ControlBorderColor = clBlack
      PixelsPerInch = 96
    end
  end
  object DSProduto_Preco: TDataSource
    OnStateChange = DSProduto_PrecoStateChange
    Left = 349
    Top = 47
  end
end
