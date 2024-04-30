object Frame_Encargos: TFrame_Encargos
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Extras (Impostos/Descontos/Acr'#233'scimos)'
  ClientHeight = 329
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 298
    Top = 95
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Label'
    Color = 16505534
    ParentColor = False
    Transparent = False
  end
  object lblPCustoMateriais: TLabel
    Left = 0
    Top = 22
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = '0,00'
    Color = 16505534
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object lblVSaldoSemMateriais: TLabel
    Left = 190
    Top = 44
    Width = 28
    Height = 16
    Alignment = taRightJustify
    Caption = '0,00'
    Color = 16505534
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 323
    Height = 329
    Align = alClient
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 0
      Top = 303
      Width = 161
      Height = 25
      Caption = 'Fechar'
      TabOrder = 13
      OnClick = cxButton1Click
    end
    object cxLabel1: TcxLabel
      Left = 0
      Top = 0
      Caption = 'Encargos'
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
      AnchorX = 162
    end
    object cxLabel2: TcxLabel
      Left = 0
      Top = 139
      Caption = 'Mensal ('#247'12)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3815994
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 162
    end
    object cxLabel3: TcxLabel
      Left = 0
      Top = 27
      Caption = 'Anual'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3815994
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 162
    end
    object edtDecimoTerceiroAnual: TcxDBCurrencyEdit
      Left = 108
      Top = 49
      DataBinding.DataField = 'DECIMO_TERCEIRO_ANUAL'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 195
    end
    object edtFeriasAnual: TcxDBCurrencyEdit
      Left = 108
      Top = 69
      DataBinding.DataField = 'FERIAS_ANUAL'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 195
    end
    object edtBeneficiosAnual: TcxDBCurrencyEdit
      Left = 108
      Top = 89
      DataBinding.DataField = 'BENEFICIOS_ANUAL'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 195
    end
    object edtOutrosEncargosAnual: TcxDBCurrencyEdit
      Left = 108
      Top = 109
      DataBinding.DataField = 'OUTROS_ENCARGOS_ANUAL'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 195
    end
    object edtDecimoTerceiroMensal: TcxDBCurrencyEdit
      Left = 108
      Top = 161
      DataBinding.DataField = 'DECIMO_TERCEIRO_MENSAL'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 195
    end
    object edtFeriasMensal: TcxDBCurrencyEdit
      Left = 108
      Top = 181
      DataBinding.DataField = 'FERIAS_MENSAL'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 195
    end
    object edtBeneficiosMensal: TcxDBCurrencyEdit
      Left = 108
      Top = 201
      DataBinding.DataField = 'BENEFICIOS_MENSAL'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Width = 195
    end
    object edtOutrosEncargosMensal: TcxDBCurrencyEdit
      Left = 108
      Top = 221
      DataBinding.DataField = 'OUTROS_ENCARGOS_MENSAL'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 195
    end
    object cxLabel4: TcxLabel
      Left = 0
      Top = 251
      Caption = 'Total Encargos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3815994
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 162
    end
    object edtTotalEncargos: TcxDBCurrencyEdit
      Left = 20
      Top = 273
      DataBinding.DataField = 'TOTAL_ENCARGOS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.OnValidate = edtValoresValidate
      Style.Color = clScrollBar
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 283
    end
    object cxButton2: TcxButton
      Left = 162
      Top = 303
      Width = 161
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 14
      OnClick = cxButton1Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Hidden = True
      ItemIndex = 14
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 5
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 5
      Padding.AssignedValues = [lpavBottom]
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      Padding.Left = 20
      Padding.Right = 20
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = '13'#176' Sal'#225'rio: '
      Control = edtDecimoTerceiroAnual
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 20
      Padding.Right = 20
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'F'#233'rias:'
      Control = edtFeriasAnual
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 20
      Padding.Right = 20
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Benef'#237'cios:'
      Control = edtBeneficiosAnual
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 20
      Padding.Right = 20
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Outros Encargos: '
      Control = edtOutrosEncargosAnual
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 20
      Padding.Right = 20
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = '13'#176' Sal'#225'rio: '
      Control = edtDecimoTerceiroMensal
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 20
      Padding.Right = 20
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'F'#233'rias: '
      Control = edtFeriasMensal
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 20
      Padding.Right = 20
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Benef'#237'cios: '
      Control = edtBeneficiosMensal
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 20
      Padding.Right = 20
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Outros Encargos:'
      Control = edtOutrosEncargosMensal
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 5
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Visible = False
      Control = cxLabel4
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 10
      Padding.Left = 20
      Padding.Right = 20
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Control = edtTotalEncargos
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 14
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
end
