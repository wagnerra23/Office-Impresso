object FormUnidade_Teste_Conversao: TFormUnidade_Teste_Conversao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Teste sua f'#243'rmula de convers'#227'o de medida'
  ClientHeight = 307
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTestarFormula: TPanel
    Left = 0
    Top = 0
    Width = 798
    Height = 307
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    Color = 16505534
    ParentBackground = False
    TabOrder = 0
    object dxLayoutControl2: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 798
      Height = 307
      Align = alClient
      TabOrder = 0
      object edtComp_Rendimento: TcxDBCurrencyEdit
        Left = 223
        Top = 144
        AutoSize = False
        DataBinding.DataField = 'COMP_COMPOSICAO'
        DataBinding.DataSource = DS
        ParentShowHint = False
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.00#'
        Properties.OnValidate = edtComp_RendimentoPropertiesValidate
        ShowHint = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clWindow
        Style.HotTrack = False
        TabOrder = 11
        Height = 21
        Width = 68
      end
      object edtLarg_Rendimento: TcxDBCurrencyEdit
        Left = 297
        Top = 144
        AutoSize = False
        DataBinding.DataField = 'LARG_COMPOSICAO'
        DataBinding.DataSource = DS
        ParentShowHint = False
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.00#'
        Properties.OnValidate = edtLarg_RendimentoPropertiesValidate
        ShowHint = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 12
        Height = 21
        Width = 68
      end
      object edtEspessura_Rendimento: TcxDBCurrencyEdit
        Left = 371
        Top = 144
        AutoSize = False
        DataBinding.DataField = 'ESPESSURA'
        DataBinding.DataSource = DS
        ParentShowHint = False
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.00#'
        Properties.OnValidate = edtEspessura_RendimentoPropertiesValidate
        ShowHint = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 13
        Height = 21
        Width = 62
      end
      object edtRendimento: TcxDBCurrencyEdit
        Left = 439
        Top = 144
        AutoSize = False
        DataBinding.DataField = 'QUANT'
        DataBinding.DataSource = DS
        ParentShowHint = False
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.00#'
        Properties.ReadOnly = True
        ShowHint = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clSilver
        Style.HotTrack = False
        TabOrder = 14
        Height = 21
        Width = 68
      end
      object edtQtdaDePeca: TcxDBCurrencyEdit
        Left = 149
        Top = 144
        AutoSize = False
        DataBinding.DataField = 'QTDADEPECA_COMPOSICAO'
        DataBinding.DataSource = DS
        ParentShowHint = False
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.00#'
        Properties.OnValidate = edtQtdaDePeca_RendimentoPropertiesValidate
        ShowHint = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clWindow
        Style.HotTrack = False
        TabOrder = 10
        Height = 21
        Width = 68
      end
      object edtUNIDADE: TcxDBComboBox
        Left = 22
        Top = 46
        DataBinding.DataField = 'UNIDADE'
        DataBinding.DataSource = DS
        Enabled = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 20
        Properties.OnChange = edtUNIDADEPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 121
      end
      object edtFormula: TcxDBComboBox
        Left = 523
        Top = 46
        AutoSize = False
        DataBinding.DataField = 'FORMULA'
        DataBinding.DataSource = DS
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 20
        Properties.Items.Strings = (
          'A CADA'
          'BARRAS'
          'PER'#205'METRO'
          'PERSONALIZADA'
          'PROPORCIONAL'
          'SEM F'#211'RMULA'
          'IGUAL'
          'ILH'#211'S')
        Properties.OnChange = edtFormulaPropertiesChange
        Properties.OnValidate = edtFormulaPropertiesValidate
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 6
        Height = 21
        Width = 243
      end
      object edtPAIPecas: TcxCurrencyEdit
        Left = 149
        Top = 46
        EditValue = 1.000000000000000000
        Properties.DecimalPlaces = 8
        Properties.DisplayFormat = '0.00######;- ,0.00######'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clInfoBk
        Style.HotTrack = False
        TabOrder = 1
        Width = 71
      end
      object edtPAIComprimento: TcxCurrencyEdit
        Left = 226
        Top = 46
        EditValue = 1.000000000000000000
        Properties.DecimalPlaces = 8
        Properties.DisplayFormat = '0.00######;- ,0.00######'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clInfoBk
        Style.HotTrack = False
        TabOrder = 2
        Width = 75
      end
      object edtPAIEspessura: TcxCurrencyEdit
        Left = 379
        Top = 46
        EditValue = 1.000000000000000000
        Properties.DecimalPlaces = 8
        Properties.DisplayFormat = '0.00######;- ,0.00######'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clInfoBk
        Style.HotTrack = False
        TabOrder = 4
        Width = 54
      end
      object edtPAILargura: TcxCurrencyEdit
        Left = 307
        Top = 46
        EditValue = 1.000000000000000000
        Properties.DecimalPlaces = 8
        Properties.DisplayFormat = '0.00######;- ,0.00######'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clInfoBk
        Style.HotTrack = False
        TabOrder = 3
        Width = 66
      end
      object edtPAIQuant: TcxCurrencyEdit
        Left = 439
        Top = 46
        Properties.DecimalPlaces = 8
        Properties.DisplayFormat = '0.00######;- ,0.00######'
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clSilver
        Style.HotTrack = False
        TabOrder = 5
        Width = 68
      end
      object lblExpressaoCalculada: TcxLabel
        Left = 10
        Top = 85
        Caption = 'Express'#227'o'
        Style.HotTrack = False
        Style.TextColor = clBlue
        Style.TransparentBorder = True
        Transparent = True
      end
      object lblExpressaoSimples: TcxLabel
        Left = 70
        Top = 85
        Caption = 'Express'#227'o:'
        Style.HotTrack = False
      end
      object edtFormula_Avancada: TcxTextEdit
        Left = 10
        Top = 209
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 16
        Width = 778
      end
      object cxLabel1: TcxLabel
        Left = 10
        Top = 183
        Caption = 'F'#243'rmula do Rendimento'
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
        AnchorX = 399
      end
      object cxLabel3: TcxLabel
        Left = 10
        Top = 236
        Caption = 
          '{pai.qtdadepeca} {pai.comp} {pai.larg} {pai.espessura} {pai.quan' +
          't} '
        Style.HotTrack = False
        Style.TextColor = clBlue
        Style.TransparentBorder = True
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 352
        Top = 236
        Caption = '{qtdadepeca} {comp} {larg} {espessura} {quant}'
        Style.HotTrack = False
        Style.TextColor = clBlue
        Style.TransparentBorder = True
        Transparent = True
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 22
        Top = 144
        AutoSize = False
        DataBinding.DataField = 'UNIDADE'
        DataBinding.DataSource = DS
        Enabled = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 20
        Properties.OnChange = edtUNIDADEPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 9
        Height = 21
        Width = 121
      end
      object cxButton1: TcxButton
        Left = 10
        Top = 259
        Width = 778
        Height = 25
        Caption = 'Fechar'
        TabOrder = 19
        OnClick = cxButton1Click
      end
      object dxLayoutGroup1: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 2
        ShowBorder = False
        Index = -1
      end
      object GrupoProdutoComposto: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Dimens'#227'o do produto composto'
        ButtonOptions.Buttons = <>
        ItemIndex = 6
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = GrupoProdutoComposto
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Pe'#231'as'
        CaptionOptions.Layout = clTop
        Control = edtPAIPecas
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 71
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lIedtPAIComprimento: TdxLayoutItem
        Parent = GrupoProdutoComposto
        AlignVert = avBottom
        CaptionOptions.Text = 'Comprimento'
        CaptionOptions.Layout = clTop
        Control = edtPAIComprimento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object lIedtPAILargura: TdxLayoutItem
        Parent = GrupoProdutoComposto
        AlignVert = avBottom
        CaptionOptions.Text = 'Largura'
        CaptionOptions.Layout = clTop
        Control = edtPAILargura
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 66
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object LIedtPAIEspessura: TdxLayoutItem
        Parent = GrupoProdutoComposto
        AlignVert = avBottom
        CaptionOptions.Text = 'Espessura'
        CaptionOptions.Layout = clTop
        Control = edtPAIEspessura
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 54
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object LiedtPAIQuant: TdxLayoutItem
        Parent = GrupoProdutoComposto
        AlignVert = avBottom
        CaptionOptions.Text = 'Quant'
        CaptionOptions.Layout = clTop
        Control = edtPAIQuant
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 68
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = lblExpressaoCalculada
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 54
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = lblExpressaoSimples
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 58
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup1
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object LiCbUnidade: TdxLayoutItem
        Parent = GrupoProdutoComposto
        AlignVert = avBottom
        CaptionOptions.Text = 'Unidade'
        CaptionOptions.Layout = clTop
        Padding.AssignedValues = [lpavLeft, lpavRight]
        Control = edtUNIDADE
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = GrupoProdutoComposto
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'F'#243'rmula'
        CaptionOptions.Layout = clTop
        Padding.Left = 10
        Padding.Right = 10
        Padding.AssignedValues = [lpavLeft, lpavRight]
        Control = edtFormula
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object liedtFormula_Avancada: TdxLayoutItem
        Parent = dxLayoutGroup1
        Control = edtFormula_Avancada
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Visible = False
        Control = cxLabel1
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 155
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxLabel3
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 336
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = cxLabel2
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 243
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup1
        LayoutDirection = ldHorizontal
        Index = 5
      end
      object LiedtQtdaDePeca_Rendimento: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Pe'#231'as'
        CaptionOptions.Layout = clTop
        Padding.AssignedValues = [lpavLeft, lpavRight]
        Control = edtQtdaDePeca
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 68
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Dimens'#245'es da Mat'#233'ria prima'
        ButtonOptions.Buttons = <>
        ItemIndex = 2
        LayoutDirection = ldHorizontal
        Index = 2
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'Sub-Unidade'
        CaptionOptions.Layout = clTop
        Control = cxDBComboBox1
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object LiedtComp_Rendimento: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignVert = avClient
        CaptionOptions.Text = 'Comprimento'
        CaptionOptions.Layout = clTop
        Padding.AssignedValues = [lpavLeft, lpavRight]
        Control = edtComp_Rendimento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 68
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object LiedtLarg_Rendimento: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignVert = avClient
        CaptionOptions.Text = 'Largura'
        CaptionOptions.Layout = clTop
        Padding.AssignedValues = [lpavLeft, lpavRight]
        Control = edtLarg_Rendimento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 68
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object LiedtEspessura_Rendimento: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignVert = avClient
        CaptionOptions.Text = 'Espessura'
        CaptionOptions.Layout = clTop
        Padding.AssignedValues = [lpavLeft, lpavRight]
        Control = edtEspessura_Rendimento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 62
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignVert = avClient
        CaptionOptions.Text = 'Rendimento'
        CaptionOptions.Layout = clTop
        Padding.AssignedValues = [lpavLeft, lpavRight]
        Control = edtRendimento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 68
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Visible = False
        Control = cxButton1
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 6
      end
    end
  end
  object DS: TDataSource
    Left = 121
    Top = 64
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 149
    Top = 64
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
      LookAndFeel.NativeStyle = True
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
  end
  object WRCalc: TWRCalculaConfiguracoes
    DSVendaOuCompra = DS
    TipoCalculo = tcCompra
    SPrTipoCalc = tssCalcCompra
    Left = 93
    Top = 63
  end
  object DSPai: TDataSource
    Left = 121
    Top = 96
  end
end
