object FormExtras: TFormExtras
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'Extras (Impostos/Descontos/Acr'#233'scimos)'
  ClientHeight = 485
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 300
    Height = 485
    TabOrder = 0
    AutoSize = True
    object edtNf_vICMSST: TcxDBCurrencyEdit
      Left = 84
      Top = 25
      AutoSize = False
      DataBinding.DataField = 'NF_VICMSST'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtNf_vICMSSTPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 1
      Height = 21
      Width = 138
    end
    object edtCalc_VCompra_Extra: TcxDBCurrencyEdit
      Left = 10
      Top = 382
      AutoSize = False
      DataBinding.DataField = 'CALC_VCOMPRA_EXTRA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 18
      Height = 21
      Width = 280
    end
    object cxButton1: TcxButton
      Left = 0
      Top = 454
      Width = 300
      Height = 25
      Caption = 'Fechar'
      TabOrder = 20
      OnClick = cxButton1Click
    end
    object cxLabel1: TcxLabel
      Left = 0
      Top = 2
      Caption = 'Impostos de Entrada (R$)'
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
      AnchorX = 150
    end
    object edtNF_IPI_VIPI: TcxDBCurrencyEdit
      Left = 84
      Top = 47
      DataBinding.DataField = 'NF_IPI_VIPI'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtNF_IPI_VIPIPropertiesValidate
      Style.HotTrack = False
      TabOrder = 3
      Width = 138
    end
    object edtNF_VFrete: TcxDBCurrencyEdit
      Left = 84
      Top = 97
      Margins.Top = 0
      DataBinding.DataField = 'NF_VFRETE'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtNF_VFretePropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 6
      Width = 206
    end
    object edtVOutro: TcxDBCurrencyEdit
      Left = 84
      Top = 119
      Margins.Top = 0
      DataBinding.DataField = 'VOUTRO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVOutroPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 7
      Width = 206
    end
    object edtVDesc: TcxDBCurrencyEdit
      Left = 84
      Top = 141
      Margins.Top = 0
      DataBinding.DataField = 'VDESC'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 8
      Width = 206
    end
    object edtVDesc_Manual: TcxDBCurrencyEdit
      Left = 84
      Top = 305
      Margins.Top = 0
      DataBinding.DataField = 'CALC_VDESC_MANUAL'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDesc_ManualPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 15
      Width = 206
    end
    object edtVOutro_Manual: TcxDBCurrencyEdit
      Left = 84
      Top = 327
      Margins.Top = 0
      DataBinding.DataField = 'CALC_VOUTRO_MANUAL'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVOutro_ManualPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 16
      Width = 206
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 233
      Top = 25
      AutoSize = False
      DataBinding.DataField = 'NF_VICMSST'
      DataBinding.DataSource = DataSource1
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      ShowHint = True
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 2
      Height = 21
      Width = 57
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 233
      Top = 47
      AutoSize = False
      DataBinding.DataField = 'NF_IPI_VIPI'
      DataBinding.DataSource = DataSource1
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 57
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 416
      Caption = 
        'Obs.: A edi'#231#227'o destes valores '#233' de uso exclusivo da TELA DE COMP' +
        'RA.'
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Properties.WordWrap = True
      Transparent = True
      Width = 221
    end
    object cxLabel3: TcxLabel
      Left = 0
      Top = 282
      Caption = 'Informados manualmente (R$)'
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
      AnchorX = 150
    end
    object cxLabel4: TcxLabel
      Left = 0
      Top = 74
      Caption = 'Rateados da Compra (R$)'
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
      AnchorX = 150
    end
    object cxLabel5: TcxLabel
      Left = 0
      Top = 359
      Caption = 'TOTAL (R$)'
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
      AnchorX = 150
    end
    object cxLabel6: TcxLabel
      Left = 0
      Top = 168
      Caption = 'Conhecimento Frete (R$)'
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
      AnchorX = 150
    end
    object edtVFreteCTe: TcxDBCurrencyEdit
      Left = 84
      Top = 191
      Margins.Top = 0
      DataBinding.DataField = 'CALC_VFRETE_CTE'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVFreteCTePropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 10
      Width = 206
    end
    object edtPDifal: TcxDBCurrencyEdit
      Left = 10
      Top = 255
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PDIFAL'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtPDifalPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 12
      Width = 135
    end
    object cxLabel7: TcxLabel
      Left = 0
      Top = 218
      Caption = 'DIFAL'
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
      AnchorX = 150
    end
    object edtVDifal: TcxDBCurrencyEdit
      Left = 156
      Top = 255
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CALC_VDIFAL'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDifalPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 13
      Height = 21
      Width = 134
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 7
      ShowBorder = False
      Index = -1
    end
    object LiedtNf_vICMSST: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'ICMS ST'
      Control = edtNf_vICMSST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtCalc_VCompra_Extra: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 7
      Padding.Left = 10
      Padding.Right = 10
      Padding.Top = 2
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Total Extras'
      CaptionOptions.Visible = False
      Control = edtCalc_VCompra_Extra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 5
      Padding.AssignedValues = [lpavBottom]
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 2
      Padding.Top = 2
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtNF_IPI_VIPI: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'IPI'
      Control = edtNF_IPI_VIPI
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtNF_VFrete: TdxLayoutItem
      Parent = Rateados
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Frete'
      Control = edtNF_VFrete
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtVOutro: TdxLayoutItem
      Parent = Rateados
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Outros'
      Control = edtVOutro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtVDesc: TdxLayoutItem
      Parent = Rateados
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Descontos'
      Control = edtVDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LiedtVDesc_Manual: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight, lpavTop]
      CaptionOptions.Text = 'Desc. Manual'
      Control = edtVDesc_Manual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object LiedtVOutro_Manual: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      CaptionOptions.Text = 'Acr'#233'sc. Manual'
      Control = edtVOutro_Manual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avClient
      Visible = False
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      Visible = False
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiLblTextoExclusivoCompra: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      Visible = False
      Padding.Bottom = 7
      Padding.Left = 10
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavTop]
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.AlignHorz = ahCenter
      ControlOptions.AlignVert = avCenter
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 221
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object Rateados: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Rateados da Compra'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Padding.AssignedValues = [lpavRight]
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object TdxLayoutItem
      Index = -1
    end
    object TdxLayoutItem
      Index = -1
    end
    object TdxLayoutItem
      Index = -1
    end
    object TdxLayoutItem
      Index = -1
    end
    object TdxLayoutItem
      Index = -1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 2
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Text = 'cxLabel3'
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = Rateados
      Padding.Bottom = 2
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Text = 'cxLabel4'
      CaptionOptions.Visible = False
      Control = cxLabel4
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Visible = False
      Control = cxLabel5
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 2
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Visible = False
      Control = cxLabel6
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 172
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LiedtVFreteCTe: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 10
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Frete CTe'
      Control = edtVFreteCTe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LiedtPDifal: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      Padding.Left = 10
      Padding.Right = 5
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Porcentagem (%)'
      CaptionOptions.Layout = clTop
      Control = edtPDifal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 2
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Visible = False
      Control = cxLabel7
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 166
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LiedtVDifal: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Left = 5
      Padding.Right = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Valor (R$)'
      CaptionOptions.Layout = clTop
      Control = edtVDifal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 7
    end
  end
  object cxButton2: TcxButton
    Left = 8
    Top = 80
    Width = 49
    Height = 25
    Caption = 'Locate'
    TabOrder = 1
    Visible = False
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 8
    Top = 120
    Width = 57
    Height = 25
    Caption = 'Refresh'
    TabOrder = 2
    Visible = False
    OnClick = cxButton3Click
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
    Left = 77
    Top = 62
  end
  object DataSource1: TDataSource
    Left = 145
    Top = 112
  end
end
