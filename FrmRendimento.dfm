object FormRendimento: TFormRendimento
  Left = 0
  Top = 0
  Align = alCustom
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Rendimento'
  ClientHeight = 411
  ClientWidth = 578
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 270
    Height = 334
    Align = alClient
    TabOrder = 0
    object edtQtdaDePeca: TcxDBCurrencyEdit
      Left = 107
      Top = 333
      AutoSize = False
      DataBinding.DataField = 'QTDADEPECA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 16
      Properties.DisplayFormat = '0.00##############'
      Properties.OnValidate = edtQtdaDePeca_RendimentoPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 11
      Height = 21
      Width = 129
    end
    object edtComp: TcxDBCurrencyEdit
      Left = 107
      Top = 355
      AutoSize = False
      DataBinding.DataField = 'COMP'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 16
      Properties.DisplayFormat = '0.00##############'
      Properties.OnValidate = edtComp_RendimentoPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 12
      Height = 21
      Width = 129
    end
    object edtLarg: TcxDBCurrencyEdit
      Left = 107
      Top = 377
      AutoSize = False
      DataBinding.DataField = 'LARG'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 16
      Properties.DisplayFormat = '0.00##############'
      Properties.OnValidate = edtLarg_RendimentoPropertiesValidate
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 13
      Height = 21
      Width = 129
    end
    object edtEspessura: TcxDBCurrencyEdit
      Left = 107
      Top = 399
      AutoSize = False
      DataBinding.DataField = 'ESPESSURA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 16
      Properties.DisplayFormat = '0.00##############'
      Properties.OnValidate = edtEspessura_RendimentoPropertiesValidate
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 14
      Height = 21
      Width = 121
    end
    object edtRendimento: TcxDBCurrencyEdit
      Left = 107
      Top = 421
      AutoSize = False
      DataBinding.DataField = 'RENDIMENTO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 15
      Height = 21
      Width = 129
    end
    object edtUNIDADE: TcxDBComboBox
      Left = 94
      Top = 87
      DataBinding.DataField = 'UNIDADE'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 20
      Style.HotTrack = False
      TabOrder = 3
      Width = 154
    end
    object cxLabel1: TcxLabel
      Left = 0
      Top = 0
      AutoSize = False
      Caption = 'Convers'#227'o de Unidade de Medida'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3815994
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      Height = 42
      Width = 258
      AnchorX = 129
    end
    object edtQuant_Compra: TcxDBCurrencyEdit
      Left = 107
      Top = 448
      AutoSize = False
      DataBinding.DataField = 'QUANT_COMPRA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 16
      Height = 21
      Width = 129
    end
    object edtQuant: TcxDBCurrencyEdit
      Left = 107
      Top = 492
      AutoSize = False
      DataBinding.DataField = 'QUANT'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 18
      Height = 21
      Width = 129
    end
    object edtUN_SUBUNIDADE: TcxDBComboBox
      Left = 94
      Top = 65
      DataBinding.DataField = 'UN_SUBUNIDADE'
      DataBinding.DataSource = DS
      Properties.OnEditValueChanged = edtUN_SUBUNIDADEPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Width = 154
    end
    object edtQTDADEPECA_RENDIMENTO: TcxDBCurrencyEdit
      Left = 107
      Top = 470
      AutoSize = False
      DataBinding.DataField = 'QTDADEPECA_RENDIMENTO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 17
      Height = 21
      Width = 129
    end
    object cxLabel3: TcxLabel
      Left = 10
      Top = 174
      AutoSize = False
      Caption = 'A Convers'#227'o ser'#225':'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clGray
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      Height = 29
      Width = 238
      AnchorX = 129
    end
    object cxLabel4: TcxLabel
      Left = 10
      Top = 241
      Caption = 'Quantidade p/ estoque:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clGray
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 129
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 94
      Top = 131
      AutoSize = False
      DataBinding.DataField = 'QTDADEPECA_SUBUNIDADE'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 16
      Properties.DisplayFormat = '0.00##############'
      Properties.OnValidate = edtQtdaDePeca_RendimentoPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 5
      Height = 21
      Width = 154
    end
    object lblConversor: TcxLabel
      Left = 10
      Top = 204
      AutoSize = False
      Caption = 'X00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      Height = 36
      Width = 238
      AnchorX = 129
    end
    object cxDBLabel1: TcxDBLabel
      Left = 10
      Top = 267
      DataBinding.DataField = 'QUANT'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -33
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clGreen
      Style.IsFontAssigned = True
      Transparent = True
      Height = 47
      Width = 238
      AnchorX = 129
    end
    object lblEspecificacao: TcxLabel
      Left = 10
      Top = 153
      Caption = 'lblEspecificacao'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clGray
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 129
    end
    object WRButtonFlat1: TWRButtonFlat
      Left = 0
      Top = 552
      Width = 25
      Height = 25
      Colors.Default = clYellow
      Colors.DefaultText = clYellow
      Colors.Normal = clYellow
      Colors.NormalText = clYellow
      Colors.Hot = clYellow
      Colors.HotText = clYellow
      Colors.Pressed = clYellow
      Colors.PressedText = clYellow
      Colors.Disabled = clYellow
      Colors.DisabledText = clYellow
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 20
    end
    object WRButtonFlat2: TWRButtonFlat
      Left = 0
      Top = 578
      Width = 25
      Height = 25
      Colors.Default = clRed
      Colors.DefaultText = clRed
      Colors.Normal = clRed
      Colors.NormalText = clRed
      Colors.Hot = clRed
      Colors.HotText = clRed
      Colors.Pressed = clRed
      Colors.PressedText = clRed
      Colors.Disabled = clRed
      Colors.DisabledText = clRed
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 21
    end
    object WRButtonFlat3: TWRButtonFlat
      Left = 0
      Top = 526
      Width = 49
      Height = 25
      Colors.Default = clLime
      Colors.DefaultText = clLime
      Colors.Normal = clLime
      Colors.NormalText = clLime
      Colors.Hot = clLime
      Colors.HotText = clLime
      Colors.Pressed = clLime
      Colors.PressedText = clLime
      Colors.Disabled = clLime
      Colors.DisabledText = clLime
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 19
    end
    object lblNF_UNIDADE: TcxDBLabel
      Left = 94
      Top = 43
      DataBinding.DataField = 'NF_UNIDADE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      Style.TextColor = clRed
      Height = 21
      Width = 154
    end
    object cbxUn_SubUnidade_Descricao: TcxComboBox
      Left = 94
      Top = 109
      Properties.OnEditValueChanged = cbxUn_SubUnidade_DescricaoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 4
      Text = 'Sem Form'#250'la'
      Width = 154
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object LiedtQtdaDePeca_Rendimento: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Pe'#231'as'
      Control = edtQtdaDePeca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtComp_Rendimento: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Comprimento'
      Control = edtComp
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtLarg_Rendimento: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Largura'
      Control = edtLarg
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtEspessura_Rendimento: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      Visible = False
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Espessura'
      Control = edtEspessura
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Rendimento'
      Control = edtRendimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LiCbUnidade: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Converter para:'
      Control = edtUNIDADE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 154
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 42
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtQuant_Compra: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      Padding.Left = 10
      Padding.Right = 10
      Padding.Top = 5
      Padding.AssignedValues = [lpavLeft, lpavRight, lpavTop]
      CaptionOptions.Text = 'Quant Compra'
      Control = edtQuant_Compra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LiedtQuant: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Rendimento Total'
      Control = edtQuant
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtNF_UNIDADE: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Unidade Compra:'
      Control = edtUN_SUBUNIDADE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Quant Compra_R'
      Control = edtQTDADEPECA_RENDIMENTO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = GrupoLabel
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = GrupoLabel
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Visible = False
      Control = cxLabel4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 49
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Quantidade:'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = GrupoLabel
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'X1'
      CaptionOptions.Visible = False
      Control = lblConversor
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 23
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = GrupoLabel
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'cxDBLabel1'
      CaptionOptions.Visible = False
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 47
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object GrupoLabel: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup6
      CaptionOptions.Text = 'New Group'
      ItemIndex = 5
      ShowBorder = False
      Index = 6
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = GrupoLabel
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = lblEspecificacao
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      Visible = False
      CaptionOptions.Text = ' Convers'#227'o correta, mas n'#227'o '#233' padr'#227'o do material'
      CaptionOptions.Layout = clRight
      Control = WRButtonFlat1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      Visible = False
      CaptionOptions.Text = ' A unidade de compra '#233' diferente da unidade de entrada'
      CaptionOptions.Layout = clRight
      Control = WRButtonFlat2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      Visible = False
      CaptionOptions.Text = ' Convers'#227'o correta, '#233' o padr'#227'o do material'
      CaptionOptions.Layout = clRight
      Control = WRButtonFlat3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object lilblNF_UNIDADE: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      Visible = False
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Unidade(Nota)'
      Control = lblNF_UNIDADE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoLabel
      CaptionOptions.Text = 'New Group'
      Visible = False
      Index = 5
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Formula'
      Control = cbxUn_SubUnidade_Descricao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object tcMenu: TdxTileControl
    Left = 270
    Top = 0
    Width = 308
    Height = 334
    Align = alRight
    OptionsBehavior.ItemMoving = False
    OptionsView.CenterContentHorz = True
    OptionsView.GroupBlockMaxColumnCount = 1
    OptionsView.GroupIndent = 0
    OptionsView.GroupLayout = glVertical
    OptionsView.IndentHorz = 0
    OptionsView.IndentVert = 30
    OptionsView.ItemWidth = 300
    TabOrder = 1
    object dxTileControlGroup1: TdxTileControlGroup
      Index = 0
    end
    object tcCadastraUnidade: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 0
      Style.GradientBeginColor = clRed
      Style.GradientEndColor = 4605695
      Text1.Align = oaTopLeft
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = ANSI_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -17
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = '1'#186' PASSO       ATEN'#199#195'O'
      Text2.Align = oaTopCenter
      Text2.Alignment = taCenter
      Text2.AssignedValues = [avTextColor]
      Text2.IndentVert = 40
      Text2.Value = 'Unidade de compra N'#195'O CADASTRADA. Selecione uma Unidade v'#225'lida'
      Text2.TextColor = clWhite
      Text2.WordWrap = True
      Text3.Align = oaTopCenter
      Text3.AssignedValues = []
      Text3.IndentVert = 65
      Text3.Value = 'ou'
      Text4.Align = oaBottomCenter
      Text4.Alignment = taCenter
      Text4.AssignedValues = []
      Text4.IndentVert = 13
      Text4.Value = 'CLIQUE AQUI para CADASTRAR a Unidade no Office Impresso'
      Text4.WordWrap = True
      OnClick = tcCadastraUnidadeClick
    end
    object tcMenuItem1: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 1
      Style.BorderColor = 540330879
      Style.GradientBeginColor = 537833300
      Style.GradientEndColor = 537969256
      Text1.Align = oaTopCenter
      Text1.Alignment = taCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -15
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.IndentVert = 2
      Text1.Value = 'CLIQUE AQUI PARA CRIAR UMA NOVA SUBUNIDADE'
      Text1.WordWrap = True
      Text2.Align = oaTopCenter
      Text2.AssignedValues = [avFont]
      Text2.Font.Charset = DEFAULT_CHARSET
      Text2.Font.Color = clDefault
      Text2.Font.Height = -16
      Text2.Font.Name = 'Segoe UI'
      Text2.Font.Style = []
      Text2.IndentVert = 25
      Text2.WordWrap = True
      Text3.Align = oaBottomCenter
      Text3.Alignment = taCenter
      Text3.AssignedValues = [avFont]
      Text3.Font.Charset = DEFAULT_CHARSET
      Text3.Font.Color = clDefault
      Text3.Font.Height = -13
      Text3.Font.Name = 'Segoe UI'
      Text3.Font.Style = []
      Text3.IndentVert = 5
      Text3.Value = 
        'Se UNIDADE de medida ENVIADA pelo fornecedor for DIFERENTE da un' +
        'idade utilizada pela Empresa, '#233' importante CRIAR ou SELECIONAR u' +
        'ma nova SUBUNIDADE'
      Text3.WordWrap = True
      Text4.AssignedValues = []
      OnClick = tcMenuItem1Click
    end
    object tcSubUnidadeOK: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 2
      Style.BorderColor = 49601
      Style.GradientBeginColor = 49601
      Style.GradientEndColor = 49601
      Text1.Align = oaTopCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -21
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Convers'#227'o OK'
      Text2.Align = oaMiddleCenter
      Text2.Alignment = taCenter
      Text2.AssignedValues = [avFont]
      Text2.Font.Charset = DEFAULT_CHARSET
      Text2.Font.Color = clDefault
      Text2.Font.Height = -15
      Text2.Font.Name = 'Segoe UI Semibold,12,[B],DEFAULT_CHARSET,clDefault'
      Text2.Font.Style = []
      Text2.Value = 
        'A Convers'#227'o foi feita com sucesso, mas esse n'#227'o '#233' um padr'#227'o defi' +
        'nido'
      Text2.WordWrap = True
      Text3.Align = oaBottomCenter
      Text3.Alignment = taCenter
      Text3.AssignedValues = [avFont]
      Text3.Font.Charset = DEFAULT_CHARSET
      Text3.Font.Color = clDefault
      Text3.Font.Height = -16
      Text3.Font.Name = 'Segoe UI'
      Text3.Font.Style = []
      Text3.Value = 'Voc'#234' pode definir um padr'#227'o no cadastro do produto'
      Text3.WordWrap = True
      Text4.AssignedValues = []
    end
  end
  object dxTileControl1: TdxTileControl
    Left = 0
    Top = 334
    Width = 578
    Height = 77
    Align = alBottom
    OptionsView.CenterContentHorz = True
    OptionsView.IndentVert = 10
    OptionsView.ItemHeight = 50
    OptionsView.ItemWidth = 220
    TabOrder = 2
    object dxTileControl1Group1: TdxTileControlGroup
      Index = 0
    end
    object dxTileControl1Item1: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 0
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -20
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Fechar'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = dxTileControl1Item1Click
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
  object Unidade_SubUnidade: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select * from UNIDADE_SUBUNIDADE US '
      'where US.UN_SUBUNIDADE_DESCRICAO = :Un_SubUnidade_Descricao')
    Left = 96
    Top = 104
    ParamData = <
      item
        Name = 'UN_SUBUNIDADE_DESCRICAO'
        ParamType = ptInput
      end>
  end
  object DSUnidade_SubUnidade: TDataSource
    DataSet = Unidade_SubUnidade
    Left = 128
    Top = 104
  end
  object TransaFD: TFDTransaction
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 160
    Top = 104
  end
end
