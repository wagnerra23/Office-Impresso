object FrmPDV_Pagamento: TFrmPDV_Pagamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PDV'
  ClientHeight = 681
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCPF: TPanel
    Left = 251
    Top = 142
    Width = 411
    Height = 171
    Caption = 'CPF na Nota?'
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object dxLayoutControl3: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 409
      Height = 169
      Align = alClient
      TabOrder = 0
      object edtCPF: TcxTextEdit
        Left = 10
        Top = 28
        AutoSize = False
        ParentFont = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 43
        Width = 389
      end
      object btnCancelaCPF: TWRButtonFlat
        Left = 10
        Top = 128
        Width = 75
        Height = 25
        Caption = 'Cancelar(Esc)'
        Colors.Default = 5198809
        Colors.DefaultText = clWhite
        Colors.Hot = 5198809
        Colors.Pressed = 5198809
        ModalResult = 2
        SpeedButtonOptions.GroupIndex = 22
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelaCPFClick
      end
      object btnConfirmaCPF: TWRButtonFlat
        Tag = 2
        Left = 295
        Top = 128
        Width = 104
        Height = 25
        Caption = 'Confirmar(ENTER)'
        Colors.Default = 12024371
        Colors.DefaultText = clWhite
        Colors.Hot = 12024371
        Colors.Pressed = 12024371
        ModalResult = 1
        SpeedButtonOptions.GroupIndex = 22
        SpeedButtonOptions.Down = True
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        OnClick = btnConfirmaCPFClick
      end
      object btnCPFPinPad: TWRButtonFlat
        Tag = 1
        Left = 91
        Top = 128
        Width = 198
        Height = 25
        Caption = 'Solicitar CPF no PinPad (F2)'
        Colors.Default = 4958790
        Colors.NormalText = clWhite
        ModalResult = 6
        TabOrder = 3
      end
      object cxbFuncionarioCliente: TcxDBLookupComboBox
        Left = 10
        Top = 95
        AutoSize = False
        DataBinding.DataField = 'PESSOA_FUNCIONARIO_CODIGO'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.DropDownAutoSize = True
        Properties.DropDownSizeable = True
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clCream
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.SkinName = ''
        Style.Shadow = False
        Style.TextStyle = []
        Style.TransparentBorder = False
        Style.ButtonStyle = bts3D
        Style.ButtonTransparency = ebtAlways
        Style.PopupBorderStyle = epbsFrame3D
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 1
        Height = 27
        Width = 389
      end
      object dxLayoutControl3Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'grupo3'
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object liedtCPF: TdxLayoutItem
        Parent = dxLayoutControl3Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Informe o N'#250'mero do CPF do Cliente:'
        CaptionOptions.Layout = clTop
        Control = edtCPF
        ControlOptions.OriginalHeight = 43
        ControlOptions.OriginalWidth = 343
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem28: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup8
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = btnCancelaCPF
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem29: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup8
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnConfirmaCPF
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 104
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl3Group_Root
        LayoutDirection = ldHorizontal
        Index = 2
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup8
        AlignHorz = ahClient
        CaptionOptions.Text = 'Solicitar CPF no PinPad'
        CaptionOptions.Visible = False
        Control = btnCPFPinPad
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem71: TdxLayoutItem
        Parent = dxLayoutControl3Group_Root
        CaptionOptions.Text = 'Funcion'#225'rio'
        CaptionOptions.Layout = clTop
        Control = cxbFuncionarioCliente
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object pnlAcrescimo: TPanel
    Left = 240
    Top = 82
    Width = 321
    Height = 202
    Caption = 'Aplicar Acr'#233'scimo Sobre a Venda'
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    Visible = False
    object dxLayoutControl4: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 319
      Height = 200
      Align = alClient
      TabOrder = 0
      object lblOutroTotalAPagar: TLabel
        Left = 10
        Top = 28
        Width = 299
        Height = 25
        Caption = 'R$0,00'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object edtValorAcrescimo: TcxCurrencyEdit
        Left = 10
        Top = 77
        Margins.Left = 0
        Margins.Top = 0
        AutoSize = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = 'R$0.00;-R$0.00'
        Properties.OnValidate = edtValorAcrescimoPropertiesValidate
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 36
        Width = 147
      end
      object edtPercAcrescimo: TcxCurrencyEdit
        Left = 163
        Top = 77
        Margins.Left = 0
        Margins.Top = 0
        AutoSize = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '%0.00;-%0.00'
        Properties.OnValidate = edtPercAcrescimoPropertiesValidate
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 36
        Width = 146
      end
      object edtAcresObservacao: TcxTextEdit
        Left = 10
        Top = 137
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Text = 'Acr'#233'scimo Autorizado'
        Width = 299
      end
      object btnCancelaAcrescimo: TWRButtonFlat
        Left = 10
        Top = 164
        Width = 75
        Height = 25
        Caption = 'Cancelar(Esc)'
        Colors.Default = 5198809
        Colors.DefaultText = clWhite
        Colors.Hot = 5198809
        Colors.Pressed = 5198809
        ModalResult = 2
        SpeedButtonOptions.GroupIndex = 22
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object btnConfirmaAcrescimo: TWRButtonFlat
        Left = 197
        Top = 164
        Width = 112
        Height = 25
        Caption = 'Confirmar(ENTER)'
        Colors.Default = 12024371
        Colors.DefaultText = clWhite
        Colors.Hot = 12024371
        Colors.Pressed = 12024371
        ModalResult = 1
        SpeedButtonOptions.GroupIndex = 22
        SpeedButtonOptions.Down = True
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        OnClick = btnConfirmaAcrescimoClick
      end
      object dxLayoutGroup8: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Valor Total'
        Hidden = True
        ItemIndex = 3
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem15: TdxLayoutItem
        Parent = dxLayoutGroup8
        AlignHorz = ahClient
        CaptionOptions.Text = 'Valor Total'
        CaptionOptions.Layout = clTop
        Control = lblOutroTotalAPagar
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 3
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem18: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahClient
        CaptionOptions.Text = 'Valor do Acr'#233'scimo'
        CaptionOptions.Layout = clTop
        Control = edtValorAcrescimo
        ControlOptions.OriginalHeight = 36
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem19: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahClient
        CaptionOptions.Text = '% do Acr'#233'scimo'
        CaptionOptions.Layout = clTop
        Control = edtPercAcrescimo
        ControlOptions.OriginalHeight = 36
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup8
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = dxLayoutGroup8
        CaptionOptions.Text = 'Observa'#231#227'o'
        CaptionOptions.Layout = clTop
        Control = edtAcresObservacao
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem27: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup9
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = btnCancelaAcrescimo
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem31: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup9
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnConfirmaAcrescimo
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 112
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup8
        LayoutDirection = ldHorizontal
        Index = 3
      end
    end
  end
  object pnlDesconto: TPanel
    Left = 268
    Top = 94
    Width = 365
    Height = 203
    Caption = 'Aplicar Desconto Sobre a Venda'
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 363
      Height = 201
      Align = alClient
      TabOrder = 0
      object lblDescTotalAPagar: TLabel
        Left = 10
        Top = 28
        Width = 343
        Height = 25
        Caption = 'R$0,00'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object edtValorDesconto: TcxCurrencyEdit
        Left = 10
        Top = 77
        Margins.Left = 0
        Margins.Top = 0
        AutoSize = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = 'R$0.00;-R$0.00'
        Properties.OnValidate = edtValorDescontoPropertiesValidate
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 36
        Width = 169
      end
      object edtPercDesconto: TcxCurrencyEdit
        Left = 185
        Top = 77
        Margins.Left = 0
        Margins.Top = 0
        AutoSize = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '%0.00;-%0.00'
        Properties.OnValidate = edtPercDescontoPropertiesValidate
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 36
        Width = 168
      end
      object edtDescObservacao: TcxTextEdit
        Left = 10
        Top = 137
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Text = 'Desconto Autorizado'
        Width = 343
      end
      object btnCancelaDesconto: TWRButtonFlat
        Left = 10
        Top = 164
        Width = 75
        Height = 25
        Caption = 'Cancelar(Esc)'
        Colors.Default = 5198809
        Colors.DefaultText = clWhite
        Colors.Hot = 5198809
        Colors.Pressed = 5198809
        ModalResult = 2
        SpeedButtonOptions.GroupIndex = 22
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object btnConfirmaDesconto: TWRButtonFlat
        Left = 241
        Top = 164
        Width = 112
        Height = 25
        Caption = 'Confirmar(ENTER)'
        Colors.Default = 12024371
        Colors.DefaultText = clWhite
        Colors.Hot = 12024371
        Colors.Pressed = 12024371
        ModalResult = 1
        SpeedButtonOptions.GroupIndex = 22
        SpeedButtonOptions.Down = True
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        OnClick = btnConfirmaDescontoClick
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Valor Total'
        Hidden = True
        ItemIndex = 3
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem22: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Valor Total'
        CaptionOptions.Layout = clTop
        Control = lblDescTotalAPagar
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 3
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem21: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Valor do Desconto'
        CaptionOptions.Layout = clTop
        Control = edtValorDesconto
        ControlOptions.OriginalHeight = 36
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem23: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = '% do Desconto'
        CaptionOptions.Layout = clTop
        Control = edtPercDesconto
        ControlOptions.OriginalHeight = 36
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl2Group_Root
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutItem24: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'Observa'#231#227'o'
        CaptionOptions.Layout = clTop
        Control = edtDescObservacao
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem25: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = btnCancelaDesconto
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem26: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnConfirmaDesconto
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 112
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl2Group_Root
        LayoutDirection = ldHorizontal
        Index = 3
      end
    end
  end
  object pImpressao: TPanel
    Left = 125
    Top = 0
    Width = 525
    Height = 253
    BevelOuter = bvNone
    Constraints.MinWidth = 230
    TabOrder = 6
    object lSaidaImpressao: TLabel
      Left = 0
      Top = 76
      Width = 525
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Sa'#237'da de Impress'#227'o'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
      ExplicitWidth = 142
    end
    object mImpressao: TMemo
      Left = 0
      Top = 96
      Width = 525
      Height = 123
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Lucida Console'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
      Visible = False
      WordWrap = False
    end
    object pMensagem: TPanel
      Left = 0
      Top = 96
      Width = 525
      Height = 123
      Align = alClient
      AutoSize = True
      BevelInner = bvLowered
      BevelWidth = 2
      BorderStyle = bsSingle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
      object pMensagemOperador: TPanel
        Left = 4
        Top = 4
        Width = 513
        Height = 111
        Align = alClient
        TabOrder = 0
        Visible = False
        object lTituloMsgOperador: TLabel
          Left = 1
          Top = 1
          Width = 511
          Height = 13
          Align = alTop
          Caption = 'Mensagem Operador'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
          ExplicitWidth = 117
        end
        object lMensagemOperador: TLabel
          Left = 1
          Top = 14
          Width = 511
          Height = 96
          Align = alClient
          Alignment = taCenter
          Caption = 'lMensagemOperador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
          ExplicitWidth = 203
          ExplicitHeight = 25
        end
      end
      object pMensagemCliente: TPanel
        Left = 4
        Top = 4
        Width = 513
        Height = 111
        Align = alClient
        TabOrder = 1
        Visible = False
        object lTituloMensagemCliente: TLabel
          Left = 1
          Top = 1
          Width = 511
          Height = 13
          Align = alTop
          Caption = 'Mensagem Cliente'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 104
        end
        object lMensagemCliente: TLabel
          Left = 1
          Top = 14
          Width = 511
          Height = 96
          Align = alClient
          Alignment = taCenter
          Caption = 'lMensagemCliente'
          Layout = tlCenter
          WordWrap = True
          ExplicitWidth = 148
          ExplicitHeight = 20
        end
      end
    end
    object pImpressoraBotes: TPanel
      Left = 0
      Top = 219
      Width = 525
      Height = 34
      Align = alBottom
      TabOrder = 2
      Visible = False
      DesignSize = (
        525
        34)
      object btImprimir: TBitBtn
        Left = 356
        Top = 2
        Width = 80
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Imprimir'
        TabOrder = 0
        Visible = False
        OnClick = btImprimirClick
      end
      object btLimparImpressora: TBitBtn
        Left = 439
        Top = 2
        Width = 80
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Limpar'
        TabOrder = 1
        Visible = False
        OnClick = btLimparImpressoraClick
      end
      object cbEnviarImpressora: TCheckBox
        Left = 8
        Top = 8
        Width = 113
        Height = 19
        Caption = 'Enviar Impressora'
        Checked = True
        State = cbChecked
        TabOrder = 2
        Visible = False
        OnClick = cbEnviarImpressoraClick
      end
    end
    object pQRCode: TPanel
      Left = 0
      Top = 0
      Width = 525
      Height = 76
      Align = alTop
      TabOrder = 3
      Visible = False
      object imgQRCode: TImage
        Left = 1
        Top = 1
        Width = 523
        Height = 74
        Align = alClient
        Center = True
        Proportional = True
        Stretch = True
        ExplicitLeft = 13
        ExplicitTop = 86
        ExplicitHeight = 207
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 41
    Width = 801
    Height = 640
    Align = alClient
    TabOrder = 0
    object edtParcela: TcxTextEdit
      Left = 213
      Top = 88
      AutoSize = False
      Style.HotTrack = False
      TabOrder = 2
      Height = 21
      Width = 49
    end
    object cbxCondicaoPagto: TcxLookupComboBox
      Left = 18
      Top = 88
      AutoSize = False
      Properties.ListColumns = <>
      Properties.OnEditValueChanged = cbxCondicaoPagtoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Height = 21
      Width = 189
    end
    object edtIntervalo: TcxTextEdit
      Left = 268
      Top = 88
      AutoSize = False
      Style.HotTrack = False
      TabOrder = 3
      Height = 21
      Width = 54
    end
    object chkIntervalo_Mensal: TcxCheckBox
      Left = 328
      Top = 88
      Caption = 'M'#234's'
      Style.HotTrack = False
      TabOrder = 4
    end
    object lblSubTotal: TcxLabel
      Left = 564
      Top = 63
      AutoSize = False
      Caption = '0,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -30
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 8404992
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Transparent = True
      Height = 42
      Width = 219
      AnchorX = 783
    end
    object lblAcrescimo: TcxLabel
      Left = 564
      Top = 142
      AutoSize = False
      Caption = '0,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 12615808
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Transparent = True
      Height = 35
      Width = 219
      AnchorX = 783
    end
    object cxLabel5: TcxLabel
      Left = 564
      Top = 179
      AutoSize = False
      Caption = '0,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 12615808
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Transparent = True
      Height = 34
      Width = 219
      AnchorX = 783
    end
    object lblTroco: TLabel
      Left = 564
      Top = 306
      Width = 219
      Height = 41
      Alignment = taRightJustify
      Caption = '0,00'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227327
      Font.Height = -30
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblQtdItens: TcxLabel
      Left = 66
      Top = 331
      AutoSize = False
      Caption = '0'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 8404992
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 403
    end
    object lblDesconto: TcxLabel
      Left = 564
      Top = 107
      AutoSize = False
      Caption = '0,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 16744576
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Transparent = True
      Height = 33
      Width = 219
      AnchorX = 783
    end
    object lblVendaCPF: TLabel
      Left = 66
      Top = 481
      Width = 402
      Height = 14
      Caption = 'N'#227'o identificado'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object GridFinanceiro: TcxGrid
      Left = 18
      Top = 117
      Width = 451
      Height = 53
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      TabOrder = 6
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      object cxGridViewFinanceiro: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Hint = 'Primeiro'
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Hint = 'P'#225'gina anterior'
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Hint = 'Anterior'
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Hint = 'Pr'#243'ximo'
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Hint = 'Pr'#243'xima Pagina'
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Hint = 'Ultimo'
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Hint = 'Inserir'
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Hint = 'Adicionar'
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Hint = 'Deletar'
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Hint = 'Editar'
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Hint = 'Confirmar'
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Hint = 'Cancelar'
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Hint = 'Atualizar'
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Hint = 'Marcar'
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Hint = 'Ir para'
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Hint = 'Filtar'
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DS_Financeiro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'VALOR'
            Column = cxGridViewFinanceiroVALOR
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
        object cxGridViewFinanceiroPARCELA: TcxGridDBColumn
          Caption = 'Parcela'
          DataBinding.FieldName = 'PARCELA'
          SortIndex = 0
          SortOrder = soAscending
          Width = 60
        end
        object cxGridViewFinanceiroCODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGrid1DBTableView1TIPOPAGTO: TcxGridDBColumn
          Caption = 'Tipo Pagto'
          DataBinding.FieldName = 'TIPOPAGTO'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            'DINHEIRO'
            'CHEQUE'
            'CHEQUE-PR'#201
            'DEP'#211'SITO'
            'BOLETO'
            'CART'#195'O DE CR'#201'DITO'
            'CART'#195'O DE D'#201'BITO'
            'CREDI'#193'RIO'
            'NOTA SIMPLES'
            'NOTA PROMISS'#211'RIA'
            'PERMUTA'
            'CR'#201'DITO'
            'DEP.RETORNO'
            'DUPLICATA'
            'TRANSFERENCIA'
            'NOTA FISCAL'
            'RECIBO SIMPLES'
            'RECIBO CONTABIL'
            'DEBITO EM CONTA')
          Width = 116
        end
        object cxGridViewFinanceiroVALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          Width = 86
        end
        object cxGrid1DBTableView1VENCTO: TcxGridDBColumn
          Caption = 'Vencto'
          DataBinding.FieldName = 'VENCTO'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 97
        end
        object cxGrid1DBTableView1DATAPAGTO: TcxGridDBColumn
          Caption = 'Dt. Pagto'
          DataBinding.FieldName = 'DATAPAGTO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Kind = ckDateTime
          Visible = False
          Options.Editing = False
          Width = 125
        end
        object cxGrid1DBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object cxGrid1DBTableView1CODCONTA: TcxGridDBColumn
          Caption = 'C'#243'd. Conta'
          DataBinding.FieldName = 'CODCONTA'
          Visible = False
          Width = 69
        end
        object cxGrid1DBTableView1CONTA: TcxGridDBColumn
          Caption = 'Conta'
          DataBinding.FieldName = 'CONTA'
          Visible = False
        end
        object cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Visible = False
        end
        object cxGrid1DBTableView1CODCONDICAOPAGTO: TcxGridDBColumn
          Caption = 'C'#243'd. Cond. Pagto.'
          DataBinding.FieldName = 'CODCONDICAOPAGTO'
          Visible = False
        end
        object cxGrid1DBTableView1JUROS: TcxGridDBColumn
          Caption = 'Juros'
          DataBinding.FieldName = 'JUROS'
          Visible = False
        end
        object cxGrid1DBTableView1DESCONTO: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'DESCONTO'
          Visible = False
        end
        object cxGrid1DBTableView1DOCUMENTO: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'DOCUMENTO'
          Visible = False
          Width = 60
        end
        object cxGrid1DBTableView1EMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'EMISSAO'
          Visible = False
        end
        object cxGrid1DBTableView1CODCHEQUE: TcxGridDBColumn
          Caption = 'Cheque C'#243'd.'
          DataBinding.FieldName = 'CODCHEQUE'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_NUMERO: TcxGridDBColumn
          Caption = 'Cheque N'#186
          DataBinding.FieldName = 'CHEQUE_NUMERO'
          Visible = False
          Width = 59
        end
        object cxGrid1DBTableView1CHEQUE_DT_CADASTRO: TcxGridDBColumn
          Caption = 'Cheque Dt. Cadastro'
          DataBinding.FieldName = 'CHEQUE_DT_CADASTRO'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_TIPO: TcxGridDBColumn
          Caption = 'Cheque Tipo'
          DataBinding.FieldName = 'CHEQUE_TIPO'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_CNPJCPF: TcxGridDBColumn
          Caption = 'Cheque CNPJ/CPF'
          DataBinding.FieldName = 'CHEQUE_CNPJCPF'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_DT_BOM_PARA: TcxGridDBColumn
          Caption = 'Cheque Dt. Bom Para'
          DataBinding.FieldName = 'CHEQUE_DT_BOM_PARA'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_C3: TcxGridDBColumn
          Caption = 'Cheque C3'
          DataBinding.FieldName = 'CHEQUE_C3'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_C2: TcxGridDBColumn
          Caption = 'Cheque C2'
          DataBinding.FieldName = 'CHEQUE_C2'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_C1: TcxGridDBColumn
          Caption = 'Cheque C1'
          DataBinding.FieldName = 'CHEQUE_C1'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_CONTA: TcxGridDBColumn
          Caption = 'Cheque Conta'
          DataBinding.FieldName = 'CHEQUE_CONTA'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_AGENCIA: TcxGridDBColumn
          Caption = 'Cheque Ag'#234'ncia'
          DataBinding.FieldName = 'CHEQUE_AGENCIA'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_COMPE: TcxGridDBColumn
          Caption = 'Cheque Compe.'
          DataBinding.FieldName = 'CHEQUE_COMPE'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_CODBANCO: TcxGridDBColumn
          Caption = 'Cheque C'#243'd. Banco'
          DataBinding.FieldName = 'CHEQUE_CODBANCO'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_REPASSADO: TcxGridDBColumn
          Caption = 'Cheque Repassado'
          DataBinding.FieldName = 'CHEQUE_REPASSADO'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_DT_REPASSADO: TcxGridDBColumn
          Caption = 'Cheque Dt. Repassado'
          DataBinding.FieldName = 'CHEQUE_DT_REPASSADO'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_NOME: TcxGridDBColumn
          Caption = 'Cheque Nome'
          DataBinding.FieldName = 'CHEQUE_NOME'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_BANCO: TcxGridDBColumn
          Caption = 'Cheque Banco'
          DataBinding.FieldName = 'CHEQUE_BANCO'
          Visible = False
        end
        object cxGrid1DBTableView1CHEQUE_STATUS: TcxGridDBColumn
          Caption = 'Cheque Status'
          DataBinding.FieldName = 'CHEQUE_STATUS'
          Visible = False
        end
        object cxGrid1DBTableView1CODRESPONSAVEL: TcxGridDBColumn
          Caption = 'C'#243'd. Respons'#225'vel'
          DataBinding.FieldName = 'CODRESPONSAVEL'
          Visible = False
        end
        object cxGrid1DBTableView1STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
          Visible = False
        end
        object cxGrid1DBTableView1HISTORICO: TcxGridDBColumn
          Caption = 'Hist'#243'rico'
          DataBinding.FieldName = 'HISTORICO'
          Visible = False
        end
        object cxGrid1DBTableView1CODPLANOCONTAS: TcxGridDBColumn
          Caption = 'C'#243'd. Plano de Contas'
          DataBinding.FieldName = 'CODPLANOCONTAS'
          Visible = False
          Options.ShowEditButtons = isebAlways
          Options.SortByDisplayText = isbtOn
        end
        object cxGrid1DBTableView1CONDICAOPAGTO: TcxGridDBColumn
          Caption = 'Cond. Pagto'
          DataBinding.FieldName = 'CONDICAOPAGTO'
          Visible = False
        end
        object cxGrid1DBTableView1CODTIPOPAGTO: TcxGridDBColumn
          Caption = 'C'#243'd. Tipo Pagto'
          DataBinding.FieldName = 'CODTIPOPAGTO'
          Visible = False
        end
        object cxGrid1DBTableView1CONTATOS: TcxGridDBColumn
          Caption = 'Contatos'
          DataBinding.FieldName = 'CONTATOS'
          Visible = False
        end
        object cxGridViewFinanceiroTotal: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
          Visible = False
        end
        object cxGridViewFinanceiroDATA: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_VENCTO: TcxGridDBColumn
          Caption = 'Fin. Vencto'
          DataBinding.FieldName = 'FIN_VENCTO'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_DATAPAGTO: TcxGridDBColumn
          Caption = 'Fin. Data Pagto'
          DataBinding.FieldName = 'FIN_DATAPAGTO'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_STATUS: TcxGridDBColumn
          Caption = 'Fin. Status'
          DataBinding.FieldName = 'FIN_STATUS'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_TIPO: TcxGridDBColumn
          Caption = 'Fin. Tipo'
          DataBinding.FieldName = 'FIN_TIPO'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_TOTAL: TcxGridDBColumn
          Caption = 'Fin. Total'
          DataBinding.FieldName = 'FIN_TOTAL'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_VALOR: TcxGridDBColumn
          Caption = 'Fin. Valor'
          DataBinding.FieldName = 'FIN_VALOR'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_DESCONTO: TcxGridDBColumn
          Caption = 'Fin. Desconto'
          DataBinding.FieldName = 'FIN_DESCONTO'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_JUROS: TcxGridDBColumn
          Caption = 'Fin. Juros'
          DataBinding.FieldName = 'FIN_JUROS'
          Visible = False
        end
        object cxGridViewFinanceiroNSU: TcxGridDBColumn
          DataBinding.FieldName = 'NSU'
          Width = 77
        end
        object cxGridViewFinanceiroFIN_COUNTFIN: TcxGridDBColumn
          Caption = 'Fin. Quant'
          DataBinding.FieldName = 'FIN_COUNTFIN'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGridViewFinanceiroMsgFinanceiro: TcxGridDBColumn
          DataBinding.FieldName = 'MsgFinanceiro'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridViewFinanceiro
      end
    end
    object lblVendaRazaoSocial: TLabel
      Left = 66
      Top = 503
      Width = 402
      Height = 14
      Caption = 'N'#227'o identificado'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object pnlPrinci: TPanel
      Left = 10000
      Top = 10000
      Width = 781
      Height = 596
      Color = clMenuBar
      ParentBackground = False
      TabOrder = 19
      Visible = False
      object dxLayoutControl5: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 779
        Height = 594
        Align = alClient
        TabOrder = 0
        object dxTileControl1: TdxTileControl
          Left = 10
          Top = 10
          Width = 135
          Height = 574
          Align = alNone
          OptionsBehavior.ItemMoving = False
          OptionsView.GroupBlockMaxColumnCount = 1
          OptionsView.GroupLayout = glVertical
          OptionsView.GroupMaxRowCount = 5
          OptionsView.IndentHorz = 0
          OptionsView.IndentVert = 0
          OptionsView.ItemHeight = 80
          OptionsView.ItemIndent = 0
          OptionsView.ItemWidth = 128
          TabOrder = 0
          object dxTileControl1Group1: TdxTileControlGroup
            Index = 0
          end
          object tiOperadoraTEF: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 0
            Style.BorderColor = 551663654
            Style.GradientBeginColor = 551332608
            Style.GradientEndColor = 551796480
            Text1.Align = oaTopCenter
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = ANSI_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -20
            Text1.Font.Name = 'Segoe UI Semibold'
            Text1.Font.Style = [fsBold]
            Text1.IndentVert = 12
            Text1.Value = 'Operadora'
            Text2.Align = oaBottomCenter
            Text2.AssignedValues = [avFont]
            Text2.Font.Charset = DEFAULT_CHARSET
            Text2.Font.Color = clDefault
            Text2.Font.Height = -20
            Text2.Font.Name = 'Segoe UI'
            Text2.Font.Style = []
            Text2.IndentVert = 15
            Text2.Value = 'TEF'
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = tiOperadoraTEFClick
          end
          object tiImpressora: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 1
            Style.BorderColor = 541559278
            Style.GradientBeginColor = 538992358
            Style.GradientEndColor = 541559278
            Text1.Align = oaMiddleCenter
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = ANSI_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -20
            Text1.Font.Name = 'Segoe UI Semibold'
            Text1.Font.Style = [fsBold]
            Text1.Value = 'Impressora'
            Text2.AssignedValues = []
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = tiOperadoraTEFClick
          end
          object tiFormaPagamento: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 2
            Style.BorderColor = 540330879
            Style.GradientBeginColor = 537833300
            Style.GradientEndColor = 537969256
            Text1.Align = oaTopCenter
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = ANSI_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -16
            Text1.Font.Name = 'Segoe UI Semibold'
            Text1.Font.Style = []
            Text1.IndentVert = 12
            Text1.Value = 'Forma de'
            Text2.Align = oaBottomCenter
            Text2.AssignedValues = [avFont]
            Text2.Font.Charset = DEFAULT_CHARSET
            Text2.Font.Color = clDefault
            Text2.Font.Height = -20
            Text2.Font.Name = 'Segoe UI'
            Text2.Font.Style = [fsBold]
            Text2.IndentVert = 20
            Text2.Value = 'Pagamento'
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = tiOperadoraTEFClick
          end
          object tiNotaFiscal: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 3
            Style.BorderColor = 539409370
            Style.GradientBeginColor = 56038
            Style.GradientEndColor = 538626272
            Text1.Align = oaTopCenter
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -16
            Text1.Font.Name = 'Segoe UI Semibold'
            Text1.Font.Style = []
            Text1.IndentVert = 14
            Text1.Value = 'Nota'
            Text2.Align = oaBottomCenter
            Text2.AssignedValues = [avFont]
            Text2.Font.Charset = DEFAULT_CHARSET
            Text2.Font.Color = clDefault
            Text2.Font.Height = -20
            Text2.Font.Name = 'Segoe UI'
            Text2.Font.Style = [fsBold]
            Text2.IndentVert = 18
            Text2.Value = 'Fiscal'
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = tiOperadoraTEFClick
          end
          object tiImpressoes: TdxTileControlItem
            GroupIndex = 0
            IndexInGroup = 4
            Text1.Align = oaMiddleCenter
            Text1.Alignment = taCenter
            Text1.AssignedValues = [avFont]
            Text1.Font.Charset = DEFAULT_CHARSET
            Text1.Font.Color = clDefault
            Text1.Font.Height = -20
            Text1.Font.Name = 'Segoe UI'
            Text1.Font.Style = [fsBold]
            Text1.Value = 'Impress'#245'es'
            Text2.AssignedValues = [avFont]
            Text2.Font.Charset = DEFAULT_CHARSET
            Text2.Font.Color = clDefault
            Text2.Font.Height = -20
            Text2.Font.Name = 'Segoe UI'
            Text2.Font.Style = [fsBold]
            Text3.AssignedValues = []
            Text4.AssignedValues = []
            OnClick = tiOperadoraTEFClick
          end
        end
        object cbxGP: TComboBox
          Left = 177
          Top = 186
          Width = 316
          Height = 21
          Style = csDropDownList
          TabOrder = 2
          OnChange = cbxGPChange
        end
        object edCodigoLoja: TEdit
          Left = 500
          Top = 185
          Width = 121
          Height = 21
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvSpace
          BorderStyle = bsNone
          TabOrder = 3
        end
        object btTestarTEF: TBitBtn
          Left = 628
          Top = 157
          Width = 115
          Height = 50
          Caption = 'Testar TEF'
          TabOrder = 4
          OnClick = btTestarTEFClick
        end
        object btnSerial: TSpeedButton
          Left = 10000
          Top = 10000
          Width = 25
          Height = 23
          Visible = False
          OnClick = btnSerialClick
        end
        object btnProcurarImpressora: TSpeedButton
          Left = 10000
          Top = 10000
          Width = 25
          Height = 23
          Visible = False
          OnClick = btnProcurarImpressoraClick
        end
        object btTestarPosPrinter: TBitBtn
          Left = 10000
          Top = 10000
          Width = 112
          Height = 52
          Caption = 'Testar Impressora'
          Layout = blGlyphTop
          TabOrder = 23
          Visible = False
          OnClick = btTestarPosPrinterClick
        end
        object cbxPorta: TComboBox
          Left = 10000
          Top = 10000
          Width = 161
          Height = 21
          TabOrder = 22
          Visible = False
        end
        object cbxModeloPosPrinter: TComboBox
          Left = 10000
          Top = 10000
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 21
          Visible = False
          Items.Strings = (
            'ecfEscECF')
        end
        object seEspLinhas: TSpinEdit
          Left = 10000
          Top = 10000
          Width = 111
          Height = 22
          MaxValue = 255
          MinValue = 0
          TabOrder = 24
          Value = 0
          Visible = False
        end
        object seLinhasPular: TSpinEdit
          Left = 10000
          Top = 10000
          Width = 75
          Height = 22
          MaxValue = 255
          MinValue = 0
          TabOrder = 25
          Value = 0
          Visible = False
        end
        object seColunas: TSpinEdit
          Left = 10000
          Top = 10000
          Width = 75
          Height = 22
          MaxValue = 999
          MinValue = 1
          TabOrder = 26
          Value = 48
          Visible = False
        end
        object cbxPagCodigo: TComboBox
          Left = 10000
          Top = 10000
          Width = 76
          Height = 21
          Hint = 'Pagina de c'#243'digo usada pela Impressora POS'
          Style = csDropDownList
          TabOrder = 27
          Visible = False
        end
        object cbIMprimirViaReduzida: TCheckBox
          Left = 177
          Top = 340
          Width = 136
          Height = 19
          Caption = 'Imprimir Via Reduzida'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 8
        end
        object cbSuportaDesconto: TCheckBox
          Left = 177
          Top = 365
          Width = 114
          Height = 19
          Caption = 'Suporta Desconto'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 11
        end
        object cbSuportaSaque: TCheckBox
          Left = 318
          Top = 365
          Width = 141
          Height = 19
          Caption = 'Suporta Saque'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 15
        end
        object cbSuportaReajusteValor: TCheckBox
          Left = 465
          Top = 365
          Width = 138
          Height = 19
          Caption = 'Suporta Reajuste Valor'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 17
        end
        object cbConfirmarAntesComprovantes: TCheckBox
          Left = 319
          Top = 340
          Width = 171
          Height = 19
          Caption = 'Confirmar Antes Comprovantes'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 9
        end
        object cbMultiplosCartoes: TCheckBox
          Left = 496
          Top = 340
          Width = 247
          Height = 19
          Caption = 'Multiplos Cart'#245'es'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 10
        end
        object cbxQRCode: TComboBox
          Left = 177
          Top = 408
          Width = 135
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 12
          Text = 'Auto'
          Items.Strings = (
            'N'#227'o Suportado'
            'Auto'
            'Exibir no PinPad'
            'Exibir na Tela'
            'Imprimir')
        end
        object seMaxCartoes: TSpinEdit
          Left = 465
          Top = 408
          Width = 133
          Height = 22
          MaxValue = 20
          MinValue = 0
          TabOrder = 18
          Value = 0
        end
        object seTrocoMaximo: TSpinEdit
          Left = 465
          Top = 454
          Width = 138
          Height = 22
          MaxValue = 100000
          MinValue = 0
          TabOrder = 19
          Value = 0
        end
        object cbxTransacaoPendenteInicializacao: TComboBox
          Left = 318
          Top = 410
          Width = 141
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 14
          Text = 'Processar Pendentes'
          Items.Strings = (
            'N'#227'o Fazer nada'
            'Processar Pendentes'
            'Cancelar/Estornar')
        end
        object cbxImpressaoViaCliente: TComboBox
          Left = 177
          Top = 453
          Width = 135
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 13
          Text = 'Imprimir'
          Items.Strings = (
            'Imprimir'
            'Perguntar'
            'N'#227'o Imprimir')
        end
        object cbxTransacaoPendente: TComboBox
          Left = 318
          Top = 455
          Width = 141
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 16
          Text = 'Confirmar'
          Items.Strings = (
            'Confirmar'
            'Estornar'
            'Perguntar')
        end
        object btSalvarParametros: TBitBtn
          Left = 633
          Top = 556
          Width = 136
          Height = 28
          Caption = 'Salvar Par'#226'metros'
          TabOrder = 56
          OnClick = btSalvarParametrosClick
        end
        object edRegistro: TEdit
          Left = 179
          Top = 279
          Width = 310
          Height = 21
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvSpace
          BorderStyle = bsNone
          TabOrder = 5
        end
        object cxGrid1: TcxGrid
          Left = 10000
          Top = 10000
          Width = 566
          Height = 200
          TabOrder = 30
          Visible = False
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSTipoPagamento_Configuracao
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid1DBTableView1ACEITA_NO_CAIXA_ATUAL: TcxGridDBColumn
              Caption = 'Aceita no Caixa Atual'
              DataBinding.FieldName = 'ACEITA_NO_CAIXA_ATUAL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Properties.OnEditValueChanged = cxGrid1DBTableView1ACEITA_NO_CAIXA_ATUALPropertiesEditValueChanged
              Width = 111
            end
            object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 159
            end
            object cxGrid1DBTableView1TEM_TEF: TcxGridDBColumn
              Caption = 'Usa TEF ?'
              DataBinding.FieldName = 'TEM_TEF'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'S'
              Properties.DisplayUnchecked = 'N'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Width = 53
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object Label10: TLabel
          Left = 165
          Top = 69
          Width = 303
          Height = 39
          Caption = 
            '1'#186' Passo: Escolha a Operadora em Gerenciador TEF; '#13#10'2'#186' Passo: In' +
            'forme o C'#243'digo de Loja informado pela Operadora;'#13#10'3'#186' Passo: Cliq' +
            'ue em Testar TEF;'
          Color = clBtnFace
          ParentColor = False
        end
        object Label11: TLabel
          Left = 10000
          Top = 10000
          Width = 210
          Height = 39
          Caption = 
            '1'#186' Passo: Escolha o Modelo da Impressora; '#13#10'2'#186' Passo: Escolha a ' +
            'Porta da Impressora;'#13#10'3'#186' Passo: Clique em Testar Impressora;'
          Color = clBtnFace
          ParentColor = False
          Visible = False
        end
        object Label12: TLabel
          Left = 10000
          Top = 10000
          Width = 351
          Height = 39
          Caption = 
            '1'#186' Passo: Defina Quais Tipos de Pagamento ser'#227'o aceitos no caixa' +
            ' atual;'#13#10'2'#186' Passo: Defina Quais Tipos de Pagamento Ir'#227'o Utilizar' +
            ' o TEF; '#13#10
          Color = clBtnFace
          ParentColor = False
          Visible = False
        end
        object Edit1: TEdit
          Left = 499
          Top = 279
          Width = 121
          Height = 21
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvSpace
          BorderStyle = bsNone
          TabOrder = 6
        end
        object Label17: TLabel
          Left = 10000
          Top = 10000
          Width = 506
          Height = 19
          Caption = 
            'Aten'#231#227'o! Essa Configura'#231#227'o '#233' V'#225'lida APENAS para o Caixa selecion' +
            'ado.'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label19: TLabel
          Left = 165
          Top = 44
          Width = 294
          Height = 19
          Caption = 'Informar Dados Enviados pela Operadora'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object btTestarPinPad: TBitBtn
          Left = 628
          Top = 252
          Width = 115
          Height = 50
          Caption = 'Testar PinPad'
          TabOrder = 7
          OnClick = btTestarPinPadClick
        end
        object BitBtn1: TBitBtn
          Left = 640
          Top = 69
          Width = 115
          Height = 50
          Caption = 'Administra'#231#227'o'
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object btnVoltar: TBitBtn
          Left = 491
          Top = 556
          Width = 136
          Height = 28
          Caption = 'Escolher outro Caixa'
          TabOrder = 55
          OnClick = btnVoltarClick
        end
        object tcTiposPagto: TdxTileControl
          Left = 10000
          Top = 10000
          Width = 566
          Height = 50
          Align = alNone
          OptionsView.CenterContentVert = True
          OptionsView.IndentHorz = 1
          OptionsView.IndentVert = 0
          OptionsView.ItemHeight = 40
          OptionsView.ItemIndent = 3
          OptionsView.ItemWidth = 80
          TabOrder = 29
          Visible = False
          object dxTileControl2Group3: TdxTileControlGroup
            Index = 0
          end
        end
        object ceTrocoMaximo: TcxCurrencyEdit
          Left = 609
          Top = 455
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 20
          Width = 121
        end
        object ccbTiposNotaFiscal: TcxCheckComboBox
          Left = 10000
          Top = 10000
          Properties.Items = <
            item
              Description = 'NF-e'
            end
            item
              Description = 'NFC-e'
            end
            item
              Description = 'NFS-e'
            end>
          Properties.OnClickCheck = ccbTiposNotaFiscalPropertiesClickCheck
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 31
          Visible = False
          Width = 590
        end
        object lblTituloDANFCe: TcxLabel
          Left = 10000
          Top = 10000
          Caption = 'Impress'#227'o do DANFe da NFC-e (65)'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
        end
        object cbImpressoraNFCe: TcxComboBox
          Left = 10000
          Top = 10000
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 42
          Visible = False
          Width = 408
        end
        object seNumeroCopiasNFCe: TcxSpinEdit
          Left = 10000
          Top = 10000
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 43
          Visible = False
          Height = 21
          Width = 121
        end
        object edtMensagemNFCe: TcxTextEdit
          Left = 10000
          Top = 10000
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 44
          Visible = False
          Width = 535
        end
        object chkVisualizarNFCe: TcxCheckBox
          Left = 10000
          Top = 10000
          Caption = 'Visualizar antes de imprimir'
          Properties.NullStyle = nssUnchecked
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 41
          Visible = False
        end
        object lblTituloDANFe: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 'Impress'#227'o do DANFe da NF-e (55)'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
          Height = 21
          Width = 281
        end
        object chkVisualizarNFe: TcxCheckBox
          Left = 10000
          Top = 10000
          Caption = 'Visualizar antes de imprimir'
          Properties.NullStyle = nssUnchecked
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 46
          Visible = False
        end
        object cbImpressoraNFe: TcxComboBox
          Left = 10000
          Top = 10000
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 47
          Visible = False
          Width = 408
        end
        object seNumeroCopiasNFe: TcxSpinEdit
          Left = 10000
          Top = 10000
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 48
          Visible = False
          Height = 21
          Width = 121
        end
        object edtMensagemNFe: TcxTextEdit
          Left = 10000
          Top = 10000
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 49
          Visible = False
          Width = 535
        end
        object cbImpressoraNFSe: TcxComboBox
          Left = 10000
          Top = 10000
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 52
          Visible = False
          Width = 408
        end
        object lblTituloDANFSe: TcxLabel
          Left = 10000
          Top = 10000
          Caption = 'Impress'#227'o do DANFe da NFS-e'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
        end
        object chkVisualizarNFSe: TcxCheckBox
          Left = 10000
          Top = 10000
          Caption = 'Visualizar antes de imprimir'
          Properties.NullStyle = nssUnchecked
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 51
          Visible = False
        end
        object seNumeroCopiasNFSe: TcxSpinEdit
          Left = 10000
          Top = 10000
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 53
          Visible = False
          Height = 21
          Width = 121
        end
        object edtMensagemNFSe: TcxTextEdit
          Left = 10000
          Top = 10000
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 54
          Visible = False
          Width = 535
        end
        object lblTituloNaoFiscal: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 'Impress'#227'o N'#227'o Fiscal'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
          Height = 21
          Width = 281
        end
        object chkVisualizarNaoFiscal: TcxCheckBox
          Left = 10000
          Top = 10000
          Caption = 'Visualizar antes de imprimir'
          Properties.NullStyle = nssUnchecked
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 34
          Visible = False
        end
        object cbImpressoraNaoFiscal: TcxComboBox
          Left = 10000
          Top = 10000
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 36
          Visible = False
          Width = 408
        end
        object seNumeroCopiasNaoFiscal: TcxSpinEdit
          Left = 10000
          Top = 10000
          AutoSize = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 37
          Visible = False
          Height = 21
          Width = 121
        end
        object edtMensagemNaoFiscal: TcxTextEdit
          Left = 10000
          Top = 10000
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 39
          Visible = False
          Width = 535
        end
        object cbSelecionarImpressaoNaoFiscal: TcxLookupComboBox
          Left = 10000
          Top = 10000
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 38
          Visible = False
          Width = 535
        end
        object chkObrigatorioNaoFiscal: TcxCheckBox
          Left = 10000
          Top = 10000
          Caption = 'Imprime automaticamente ao Finalizar a Venda no PDV.'
          Properties.NullStyle = nssUnchecked
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 35
          Visible = False
        end
        object cbNFSemTEF: TcxComboBox
          Left = 10000
          Top = 10000
          Properties.Items.Strings = (
            'Pergunta'
            'Emite'
            'N'#227'o Emite')
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 32
          Text = 'cbNFSemTEF'
          Visible = False
          Width = 590
        end
        object chkObrigatorioImprimirNaoFiscal: TcxCheckBox
          Left = 10000
          Top = 10000
          Caption = 'Obrigat'#243'rio impress'#227'o N'#227'o Fiscal'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 28
          Visible = False
        end
        object dxLayoutGroup12: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          Hidden = True
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem33: TdxLayoutItem
          Parent = dxLayoutGroup12
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = '12'
          CaptionOptions.Visible = False
          Control = dxTileControl1
          ControlOptions.OriginalHeight = 241
          ControlOptions.OriginalWidth = 135
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem34: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup14
          AlignHorz = ahClient
          AlignVert = avBottom
          LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
          CaptionOptions.Text = 'Gerenciador TEF'
          CaptionOptions.Layout = clTop
          Control = cbxGP
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem35: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup14
          AlignVert = avBottom
          LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
          CaptionOptions.Text = 'C'#243'digo Loja'
          CaptionOptions.Layout = clTop
          Control = edCodigoLoja
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          Index = 1
        end
        object dxLayoutItem36: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup14
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = btTestarTEF
          ControlOptions.OriginalHeight = 50
          ControlOptions.OriginalWidth = 115
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object GrupoConfigGeral: TdxLayoutGroup
          Parent = GrupoGeral
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Configura'#231#245'es Gerais'
          Index = 2
        end
        object GrupoConfigImpressora: TdxLayoutGroup
          Parent = GrupoImpressora
          CaptionOptions.Text = 'Configurar Impressora'
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutItem37: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahRight
          CaptionOptions.Visible = False
          Control = btnSerial
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 25
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object libtnProcuraImpressora: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahRight
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = btnProcurarImpressora
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 25
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem38: TdxLayoutItem
          Parent = GrupoConfigImpressora
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = btTestarPosPrinter
          ControlOptions.OriginalHeight = 52
          ControlOptions.OriginalWidth = 112
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem39: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahLeft
          AlignVert = avTop
          LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
          CaptionOptions.Text = 'Porta'
          CaptionOptions.Layout = clTop
          Control = cbxPorta
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 161
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem40: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
          CaptionOptions.Text = 'Modelo'
          CaptionOptions.Layout = clTop
          Control = cbxModeloPosPrinter
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = GrupoConfigImpressora
          Index = 0
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = GrupoConfigImpressora
          AlignHorz = ahLeft
          Index = 1
        end
        object dxLayoutItem41: TdxLayoutItem
          Parent = GrupoConfigImprAvancado
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Espa'#231'o Entre as Linhas'
          CaptionOptions.Layout = clTop
          Control = seEspLinhas
          ControlOptions.OriginalHeight = 22
          ControlOptions.OriginalWidth = 111
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem42: TdxLayoutItem
          Parent = GrupoConfigImprAvancado
          AlignHorz = ahLeft
          AlignVert = avBottom
          CaptionOptions.Text = 'Linhas Pular'
          CaptionOptions.Layout = clTop
          Control = seLinhasPular
          ControlOptions.OriginalHeight = 22
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem43: TdxLayoutItem
          Parent = GrupoConfigImprAvancado
          AlignVert = avBottom
          CaptionOptions.Text = 'Colunas'
          CaptionOptions.Layout = clTop
          Control = seColunas
          ControlOptions.OriginalHeight = 22
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object GrupoConfigImprAvancado: TdxLayoutGroup
          Parent = GrupoImpressora
          CaptionOptions.Text = 'Impressora Avan'#231'ado'
          ButtonOptions.ShowExpandButton = True
          ItemIndex = 3
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object dxLayoutItem44: TdxLayoutItem
          Parent = GrupoConfigImprAvancado
          AlignVert = avBottom
          CaptionOptions.Text = 'P'#225'g. de C'#243'digo'
          CaptionOptions.Layout = clTop
          Control = cbxPagCodigo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 76
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object GrupoImpressora: TdxLayoutGroup
          Parent = dxLayoutGroup14
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Impressora'
          Visible = False
          ItemIndex = 2
          Index = 1
        end
        object GrupoGeralAvancado: TdxLayoutGroup
          Parent = GrupoGeral
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Avan'#231'ado'
          ButtonOptions.ShowExpandButton = True
          ItemIndex = 1
          Index = 3
        end
        object dxLayoutItem45: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          AlignHorz = ahLeft
          CaptionOptions.Visible = False
          Control = cbIMprimirViaReduzida
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 19
          ControlOptions.OriginalWidth = 136
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem46: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup11
          AlignHorz = ahLeft
          CaptionOptions.Visible = False
          Control = cbSuportaDesconto
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 19
          ControlOptions.OriginalWidth = 114
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem47: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup12
          CaptionOptions.Visible = False
          Control = cbSuportaSaque
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 19
          ControlOptions.OriginalWidth = 96
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem48: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup13
          CaptionOptions.Visible = False
          Control = cbSuportaReajusteValor
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 19
          ControlOptions.OriginalWidth = 138
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem49: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = cbConfirmarAntesComprovantes
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 19
          ControlOptions.OriginalWidth = 171
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem50: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = cbMultiplosCartoes
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 19
          ControlOptions.OriginalWidth = 105
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = GrupoGeralAvancado
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
          Parent = GrupoGeralAvancado
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutItem51: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup11
          CaptionOptions.Text = 'QR Code'
          CaptionOptions.Layout = clTop
          Control = cbxQRCode
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 128
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahLeft
          Index = 0
        end
        object dxLayoutItem52: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup13
          AlignHorz = ahLeft
          AlignVert = avBottom
          CaptionOptions.Text = 'Numero Maximo de Cart'#245'es'
          CaptionOptions.Layout = clTop
          Control = seMaxCartoes
          ControlOptions.OriginalHeight = 22
          ControlOptions.OriginalWidth = 133
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup2
          Index = 1
        end
        object dxLayoutItem53: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup13
          AlignVert = avBottom
          Visible = False
          CaptionOptions.Text = 'Troco M'#225'ximo'
          CaptionOptions.Layout = clTop
          Control = seTrocoMaximo
          ControlOptions.OriginalHeight = 22
          ControlOptions.OriginalWidth = 73
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup2
          Index = 2
        end
        object dxLayoutItem54: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup12
          AlignVert = avBottom
          CaptionOptions.Text = 'Pendencia na Inicializa'#231#227'o*'
          CaptionOptions.Layout = clTop
          Control = cbxTransacaoPendenteInicializacao
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 135
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem55: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup11
          CaptionOptions.Text = 'Imprimir Via Cliente*'
          CaptionOptions.Layout = clTop
          Control = cbxImpressaoViaCliente
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 135
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem56: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup12
          AlignHorz = ahLeft
          AlignVert = avBottom
          CaptionOptions.Text = 'Transa'#231#227'o Pendente*'
          CaptionOptions.Layout = clTop
          Control = cbxTransacaoPendente
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 141
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object GrupoGeral: TdxLayoutGroup
          Parent = dxLayoutGroup14
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Geral'
          ItemIndex = 3
          Index = 0
        end
        object dxLayoutGroup13: TdxLayoutGroup
          Parent = dxLayoutGroup15
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Finalizar'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutItem57: TdxLayoutItem
          Parent = dxLayoutGroup13
          AlignHorz = ahRight
          AlignVert = avTop
          CaptionOptions.Visible = False
          Control = btSalvarParametros
          ControlOptions.OriginalHeight = 28
          ControlOptions.OriginalWidth = 136
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem58: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup16
          AlignHorz = ahClient
          AlignVert = avBottom
          Visible = False
          CaptionOptions.Text = 'Registro'
          CaptionOptions.Layout = clTop
          Control = edRegistro
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 84
          Index = 0
        end
        object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
          Parent = GrupoConfigGeral
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object GrupoTipoPagamento: TdxLayoutGroup
          Parent = GrupoTipoPagto
          CaptionOptions.Text = 'Configurar Tipo de Pagamento'
          ItemIndex = 1
          Index = 0
        end
        object dxLayoutItem59: TdxLayoutItem
          Parent = GrupoTipoPagamento
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'grid'
          CaptionOptions.Visible = False
          Control = cxGrid1
          ControlOptions.OriginalHeight = 200
          ControlOptions.OriginalWidth = 250
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem61: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup15
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Label10'
          CaptionOptions.Visible = False
          Control = Label10
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 39
          ControlOptions.OriginalWidth = 37
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem62: TdxLayoutItem
          Parent = GrupoImpressora
          CaptionOptions.Visible = False
          Control = Label11
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 39
          ControlOptions.OriginalWidth = 65
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem63: TdxLayoutItem
          Parent = GrupoTipoPagamento
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = Label12
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 39
          ControlOptions.OriginalWidth = 210
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object liCodPinPad: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup16
          AlignVert = avBottom
          Visible = False
          CaptionOptions.Text = 'C'#243'digo PinPad'
          CaptionOptions.Layout = clTop
          Control = Edit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          Index = 1
        end
        object dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup
          Parent = GrupoConfigGeral
          AlignHorz = ahClient
          AlignVert = avClient
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutItem64: TdxLayoutItem
          Parent = GrupoTipoPagamento
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Label17'
          CaptionOptions.Visible = False
          Control = Label17
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 16
          ControlOptions.OriginalWidth = 37
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem65: TdxLayoutItem
          Parent = GrupoGeral
          CaptionOptions.Visible = False
          Control = Label19
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 19
          ControlOptions.OriginalWidth = 65
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object GrupoTipoPagto: TdxLayoutGroup
          Parent = dxLayoutGroup14
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Tipo Pagamento'
          Visible = False
          Index = 2
        end
        object dxLayoutGroup14: TdxLayoutGroup
          Parent = dxLayoutGroup15
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldTabbed
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup15: TdxLayoutGroup
          Parent = dxLayoutGroup12
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          ShowBorder = False
          Index = 1
        end
        object dxLayoutItem17: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup16
          AlignVert = avBottom
          CaptionOptions.Visible = False
          Control = btTestarPinPad
          ControlOptions.OriginalHeight = 50
          ControlOptions.OriginalWidth = 115
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem60: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup15
          CaptionOptions.Visible = False
          Control = BitBtn1
          ControlOptions.OriginalHeight = 50
          ControlOptions.OriginalWidth = 115
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
          Parent = GrupoGeral
          AlignVert = avClient
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutGroup13
          AlignHorz = ahRight
          AlignVert = avClient
          Visible = False
          CaptionOptions.Visible = False
          Control = btnVoltar
          ControlOptions.OriginalHeight = 28
          ControlOptions.OriginalWidth = 136
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = GrupoTipoPagamento
          AlignVert = avTop
          CaptionOptions.Text = 'dxTileControl2'
          CaptionOptions.Visible = False
          Control = tcTiposPagto
          ControlOptions.OriginalHeight = 50
          ControlOptions.OriginalWidth = 400
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignVert = avBottom
          CaptionOptions.Text = 'Troco M'#225'ximo'
          CaptionOptions.Layout = clTop
          Control = ceTrocoMaximo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object GrupoNotaFiscal: TdxLayoutGroup
          Parent = dxLayoutGroup14
          CaptionOptions.Text = 'Nota Fiscal'
          Visible = False
          Index = 3
        end
        object cbTiposNota: TdxLayoutItem
          Parent = GrupoNotaFiscal
          CaptionOptions.Text = 'Marque os tipos de NF Dispon'#237'veis para seu Caixa PDV'
          CaptionOptions.Layout = clTop
          Control = ccbTiposNotaFiscal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object GrupoImpressoes: TdxLayoutGroup
          Parent = dxLayoutGroup14
          CaptionOptions.Text = 'Impress'#245'es'
          ScrollOptions.Vertical = smAuto
          Index = 4
        end
        object LilblTituloDANFCE: TdxLayoutItem
          Parent = GrupoImpressaoNFCe1
          AlignHorz = ahClient
          CaptionOptions.Text = 'cxLabel6'
          CaptionOptions.Visible = False
          CaptionOptions.Width = 10
          Control = lblTituloDANFCe
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object ImpressaoNFCe: TdxLayoutGroup
          Parent = GrupoImpressoes
          CaptionOptions.Text = 'New Group'
          Visible = False
          LayoutDirection = ldTabbed
          ShowBorder = False
          TabbedOptions.HideTabs = True
          Index = 1
        end
        object LicbImpressoraNFCe: TdxLayoutItem
          Parent = GrupoImpressaoNFCe2
          AlignHorz = ahClient
          CaptionOptions.Text = 'Imprimir em'
          CaptionOptions.Layout = clTop
          Control = cbImpressoraNFCe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object LiseNumeroCopiasNFCe: TdxLayoutItem
          Parent = GrupoImpressaoNFCe2
          AlignVert = avClient
          CaptionOptions.Text = 'C'#243'pias'
          CaptionOptions.Layout = clTop
          Control = seNumeroCopiasNFCe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object LiedtMensagemNFCe: TdxLayoutItem
          Parent = dxLayoutGroup17
          Padding.Bottom = 5
          Padding.Top = 5
          Padding.AssignedValues = [lpavBottom, lpavTop]
          CaptionOptions.Text = 'Imprimir Mensagem'
          CaptionOptions.Layout = clTop
          Control = edtMensagemNFCe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object LicbVisualizarNFCe: TdxLayoutItem
          Parent = GrupoImpressaoNFCe1
          AlignHorz = ahClient
          CaptionOptions.Visible = False
          CaptionOptions.Width = 5
          Control = chkVisualizarNFCe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 88
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object GrupoImpressaoNFCe1: TdxLayoutGroup
          Parent = dxLayoutGroup17
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object GrupoImpressaoNFCe2: TdxLayoutGroup
          Parent = dxLayoutGroup17
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup17: TdxLayoutGroup
          Parent = ImpressaoNFCe
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 0
        end
        object ImpressaoNFe: TdxLayoutGroup
          Parent = GrupoImpressoes
          CaptionOptions.Text = 'New Group'
          Visible = False
          LayoutDirection = ldTabbed
          ShowBorder = False
          TabbedOptions.HideTabs = True
          Index = 2
        end
        object LilblTituloDANFE: TdxLayoutItem
          Parent = GrupoImpressaoNFe1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'cxLabel7'
          CaptionOptions.Visible = False
          Control = lblTituloDANFe
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object LicbVisualizarNFe: TdxLayoutItem
          Parent = GrupoImpressaoNFe1
          AlignHorz = ahClient
          CaptionOptions.Text = 'cxCheckBox1'
          CaptionOptions.Visible = False
          Control = chkVisualizarNFe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 88
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object LicbImpressoraNFe: TdxLayoutItem
          Parent = GrupoImpressaoNFe2
          AlignHorz = ahClient
          CaptionOptions.Text = 'Imprimir em'
          CaptionOptions.Layout = clTop
          Control = cbImpressoraNFe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object LiseNumeroCopiasNFe: TdxLayoutItem
          Parent = GrupoImpressaoNFe2
          AlignVert = avClient
          CaptionOptions.Text = 'C'#243'pias'
          CaptionOptions.Layout = clTop
          Control = seNumeroCopiasNFe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object LiedtMensagemNFe: TdxLayoutItem
          Parent = dxLayoutGroup11
          Padding.Bottom = 5
          Padding.Top = 5
          Padding.AssignedValues = [lpavBottom, lpavTop]
          CaptionOptions.Text = 'Informa'#231#245'es Complementares - Padr'#227'o para NF-e'
          CaptionOptions.Layout = clTop
          Control = edtMensagemNFe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object GrupoImpressaoNFe1: TdxLayoutGroup
          Parent = dxLayoutGroup11
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object GrupoImpressaoNFe2: TdxLayoutGroup
          Parent = dxLayoutGroup11
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup11: TdxLayoutGroup
          Parent = ImpressaoNFe
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 0
        end
        object ImpressaoNFSe: TdxLayoutGroup
          Parent = GrupoImpressoes
          CaptionOptions.Text = 'New Group'
          Visible = False
          LayoutDirection = ldTabbed
          ShowBorder = False
          TabbedOptions.HideTabs = True
          Index = 3
        end
        object LicbImpressoraNFSe: TdxLayoutItem
          Parent = GrupoImpressaoNFSe2
          AlignHorz = ahClient
          CaptionOptions.Text = 'Imprimir em'
          CaptionOptions.Layout = clTop
          Control = cbImpressoraNFSe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object LilblTituloDANFSE: TdxLayoutItem
          Parent = GrupoImpressaoNFSe1
          AlignHorz = ahClient
          CaptionOptions.Text = 'cxLabel6'
          CaptionOptions.Visible = False
          Control = lblTituloDANFSe
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object LicbVisualizarNFSe: TdxLayoutItem
          Parent = GrupoImpressaoNFSe1
          AlignHorz = ahClient
          CaptionOptions.Text = 'cxCheckBox1'
          CaptionOptions.Visible = False
          Control = chkVisualizarNFSe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 88
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object LiseNumeroCopiasNFSe: TdxLayoutItem
          Parent = GrupoImpressaoNFSe2
          AlignVert = avClient
          CaptionOptions.Text = 'C'#243'pias'
          CaptionOptions.Layout = clTop
          Control = seNumeroCopiasNFSe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object LiedtMensagemNFSe: TdxLayoutItem
          Parent = dxLayoutGroup10
          Padding.Bottom = 5
          Padding.Top = 5
          Padding.AssignedValues = [lpavBottom, lpavTop]
          CaptionOptions.Text = 'Informa'#231#245'es Adicionais'
          CaptionOptions.Layout = clTop
          Control = edtMensagemNFSe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object GrupoImpressaoNFSe2: TdxLayoutGroup
          Parent = dxLayoutGroup10
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object GrupoImpressaoNFSe1: TdxLayoutGroup
          Parent = dxLayoutGroup10
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup10: TdxLayoutGroup
          Parent = ImpressaoNFSe
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup3: TdxLayoutGroup
          Parent = ImpressaoNaoFiscal
          CaptionOptions.Text = 'New Group'
          ItemIndex = 2
          ShowBorder = False
          Index = 0
        end
        object LilblTituloNaoFiscal: TdxLayoutItem
          Parent = GrupoNaoFiscal1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Impress'#227'o N'#227'o-Fiscal'
          CaptionOptions.Visible = False
          Control = lblTituloNaoFiscal
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object LicbVisualizarNaoFiscal: TdxLayoutItem
          Parent = GrupoNaoFiscal1
          AlignHorz = ahClient
          CaptionOptions.Text = 'cxCheckBox1'
          CaptionOptions.Visible = False
          Control = chkVisualizarNaoFiscal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 88
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object LicbImpressoraNaoFiscal: TdxLayoutItem
          Parent = GrupoNaoFiscal2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Imprimir em'
          CaptionOptions.Layout = clTop
          Control = cbImpressoraNaoFiscal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object LiseNumeroCopiasNaoFiscal: TdxLayoutItem
          Parent = GrupoNaoFiscal2
          AlignVert = avClient
          CaptionOptions.Text = 'C'#243'pias'
          CaptionOptions.Layout = clTop
          Control = seNumeroCopiasNaoFiscal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object LiedtMensagemNaoFiscal: TdxLayoutItem
          Parent = dxLayoutGroup3
          Padding.Bottom = 5
          Padding.Top = 5
          Padding.AssignedValues = [lpavBottom, lpavTop]
          CaptionOptions.Text = 'Observa'#231#227'o'
          CaptionOptions.Layout = clTop
          Control = edtMensagemNaoFiscal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object LicbSelecionarImpressaoNaoFiscal: TdxLayoutItem
          Parent = dxLayoutGroup3
          Padding.Top = 5
          Padding.AssignedValues = [lpavTop]
          CaptionOptions.Text = 'Modelo de Impress'#227'o'
          CaptionOptions.Layout = clTop
          Control = cbSelecionarImpressaoNaoFiscal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object LichkObrigatorioNaoFiscal: TdxLayoutItem
          Parent = dxLayoutGroup3
          Padding.Bottom = 5
          Padding.Top = 5
          Padding.AssignedValues = [lpavBottom, lpavTop]
          CaptionOptions.Text = 'cxCheckBox1'
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = chkObrigatorioNaoFiscal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object GrupoNaoFiscal2: TdxLayoutGroup
          Parent = dxLayoutGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object GrupoNaoFiscal1: TdxLayoutGroup
          Parent = dxLayoutGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object ImpressaoNaoFiscal: TdxLayoutGroup
          Parent = GrupoImpressoes
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldTabbed
          ShowBorder = False
          TabbedOptions.HideTabs = True
          Index = 0
        end
        object dxLayoutItem69: TdxLayoutItem
          Parent = GrupoNotaFiscal
          CaptionOptions.Text = 'Configura'#231#227'o NF para venda sem TEF'
          CaptionOptions.Layout = clTop
          Control = cbNFSemTEF
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem70: TdxLayoutItem
          Parent = GrupoImpressora
          CaptionOptions.Text = 'cxCheckBox1'
          CaptionOptions.Visible = False
          Control = chkObrigatorioImprimirNaoFiscal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 88
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
    end
    object tcMenuPagamento: TdxTileControl
      Left = 10
      Top = 360
      Width = 781
      Height = 92
      Align = alNone
      OptionsBehavior.ItemCheckMode = tcicmNone
      OptionsBehavior.ItemMoving = False
      OptionsBehavior.ScrollMode = smScrollButtons
      OptionsView.CenterContentHorz = True
      OptionsView.CenterContentVert = True
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupIndent = 8
      OptionsView.GroupMaxRowCount = 1
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 80
      OptionsView.ItemIndent = 1
      OptionsView.ItemWidth = 80
      Style.CheckedItemCheckMarkColor = clGreen
      Style.CheckedItemFrameColor = clGreen
      Style.FocusedColor = clGreen
      TabOrder = 15
      object tcMenuGroup1: TdxTileControlGroup
        Index = 0
      end
      object tcDinheiro: TdxTileControlItem
        Tag = 1
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000002A0000002008060000006458EA
          3D00000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F7600000701494441
          54789CC5977D4CD65514C77FC0C3BB2020EF105252064E124A534BCD0C67EAD4
          01596673463ACDFED1B596535161CDB656EB65ADF5A62BA7F607ACB9A786C613
          01132751829491A08C3008E54D40DE5FFB1C9EDF433F7EFE1E7C62A5773BCFBD
          CFF9DD7BEEF79E73EE39E79A3A3B3B43BCBCBC3E5414255AB9FB6D68646424CB
          D9D9F91DFD07132077D2A7DE055086CDC9C9E9D1BEBEBEAFDDDDDD6BB47C13E4
          6F30BF1D7AEF0EE07A107A56CF44A37E7A9EC98E0033273BE8C84EBDBDBD516E
          6E6EAB987F1F66EB84CA2A2B2B4FC7C5C5F5DF6E6D7F7F7F9CABABEB2D408D9A
          11D08BDDDDDDAF797B7B2B191919CE070E1C18365A585151E1161B1BFB1626DA
          C15F57E1017694E0D70D0D0D6D737171C99968730E58C1C18E304CFB37407F19
          1E1E4E2F2F2F3F95989838808063FBF7EF7F8EBE9C6FB97CB3D4D4D49C8D8989
          E993C9F4312AC05AC57A114F40F7428BA048CC6766CD06FAAC89006466666E4D
          4F4F2FE680724F963B02B4060D9801A90C0C0CC49B4CA68D2A3F51880D77CF98
          31A30BE0859045C023FC1599D0D0D0E0151616D62D63CC198B39E57B04DF8F60
          9D222E6C833D00AAC53E63DE379E9E9E76E719FA2880ED9DCC1B5A0980958051
          00FC97000E0909B17475757D8FBB3462CEDF0707075391B1826F491E1E1E5BE9
          33ED0170B41902058811D06B00DBC7B7A7180B0542E1D066789BD1DA30DF2F28
          564D5BAAABABDFC43B0E969595B98A95A4B5B5B54DA51D67D8D7D8D8B8890376
          4D1A685D5D9D674444C4E33A763397633DEE7086F161B9647BF7EE1577580EA8
          24780B2137C5C04DE6CC9963C11D72E5E2F8F9F9B5132377628DE5010101D1CC
          FD6DD240F135B90C9E10FB8C6C949083260AA64D9B76D33647F5AB9F553A74FD
          FA75EFC0C0C0250014D0628D38C58E9B88FFF6F4F4648B9B68F7E5BBC81C825C
          1C022A5A528717197F2503404E785AD584392A496CBD070D26A9DA9ED04D34D1
          A4B1A3A32388032CE33237C8E1EC01ED54FB24B5CF9D109D41E3122DE2123D4D
          6C0DE3EF0D40641311D24243436739E22653A64CB1202397835CD3CB1E03CAC4
          024C124688982DFFD924974D1D028806A703EE28F3176BF980D885BFD722EB45
          C68714C7DDA44E14459F47D174DAD7D7B7750CA8383CA144163BC9DE68E24C64
          64E4D8A6ADADADBEFEFEFEAFB3B8824D8EDBF8C43F395C81F24FF5D50B952856
          FFDD064D67FE292EE34A0EF283836E221BA7C14BF3F1F1E9C01516DA805E02E4
          5540D8CC2E207BB4DAE1C64AAADCC3E211349F0F38B91C0AFD071A909D089D8B
          F9DA7372721AD7AD5B9705B82FE0CF04EC5122CAFD7AB9ECFB279DA4D123AC4D
          20B294EA0CE68B8CA536A016043971EA51A0009658386E36BC1278923E2FD7D7
          D7B7480695820493276BA6E5121F6B3177557272723AFF7D2049A1FBA088F0F0
          F0F5F45F2A761A7BF418F1719DF302F4268342E2DB438C43D40FC5001F3759CC
          D6D4D414585858D8939A9A2A61448A8AC7E8B41363E547622EF3A5CE5DAF95C1
          41174F04147997007B8EE1020DBBEDE4C9932526B4F23E0EDB46087A5903EA34
          60B703F69856505050502720B52C7DDC8A459BF9C84CC68CAF62D66878F334DF
          8D6ADF718DB5CFB0EE28C32755569E28C6848FD541A2766DDAF4E6F487D17231
          A6BD624F286BAE695CA41A126DBC8066E6C39FCA05DDC0B85AB364ACE8A8ADAD
          F5E050B3D156A9CD42D2C0525F5A5ABA222121A185BF3E5200C91EA33E6A276D
          BA112A56D1BF6F0F2897AA90002D7EEB0E351219761019F2101C243CFA710945
          82BB2DE445454565D3AD4A4949F9847EBB765E7C7CFC7CC5EADF52C9E5A22C2B
          D0E0E060A9233D0CB04CB507521A01BA89137FCE50CABD05E4EF73DCF84D5452
          D504ED600EFAB166FAAF454545DF2E59B2C4F63F54ED43F47235D5DB65DBDB69
          14A8D96CAEE46466866BB40BD04806405E52ACC1574AB93CE25A8B764E7373F3
          6E02B8F8E15C6816E1650F15D25A657CD66BE100CF0372D0C6C0AD52E409431C
          CEE2C07AACB63069B1314685A93EB296C5D152D9007019FF85E4B244415BE06D
          41A03C67CF0B706EB6A5AAAAAA98B751674B4BCB32B4F9B6627D52A4E8362DC4
          7C5B017559CBE4C2C8CBE0233D48F27D00CA7844C6DAEC38CE8750F31F749F0A
          656767BB10B01FD6E4680919522988F6E621601F6F2379CC15E09716C0BC0BF8
          0C64C85CC92C6DFC3FCBC12F0052AF31BB0DE0A2204137D0DEDE9E8F026E05AA
          6DAA964B547A03ADF9909D966A72F40322175ACD41564B8E86AE2A13B889234D
          558AB41F01D961E3DB05AA6F6A3D6A564999A49B183EA1D5AA6B97622D05670A
          4F9F1D1D06AA6F9370939B6C9E2F159194729285448EA46DF5597D4B28D366C7
          4903D536BD9B48A5C5CD7F42E7261217D77090356A2937EA26CC596880E30689
          E0276D16FC4F80EA9BEA5B466E22C0C54D24958EBA891D1179DA6CF5BF01D537
          07DD64ACA1EDEFF4D5DB1D01AA6DB77113A9AEAEF00A38C12373DCBABF0105EA
          552748308EE90000000049454E44AE426082}
        GroupIndex = 0
        IndexInGroup = 0
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 540330879
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Text1.Align = oaBottomCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'dinheiro'
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clWindow
        Text2.Font.Height = -13
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.Value = 'F6'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcDinheiroClick
      end
      object tcCartao: TdxTileControlItem
        Tag = 3
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000002E0000001E080600000053C32C
          9A00000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F760000030F494441
          54789CED984B68134118C7F3D83CC8EB90401224E8A1F19040118A820F2496AA
          78F28141348A7A9292A2040F8A28841C2C289450104FDE2428521B1115516F22
          0541A35EAA62040B019B5A429BC4BC37FEBF6603DB6D927645320DF887C9378F
          6F767F33FBCD6467B97ABDAE20E5F379BB5EAFDFA5542A8D8AF5A76AAD56FBAC
          D1683E342B38FAE1793E683018C600AD67C7D6592A954A81497E9C4EA7030E87
          23CF55AB559F5AADBE0568256BB8D504C48376BB7D0CD9610ED0A77B015AA453
          91482448A1E2644D2247B40643A19085C07B69B6974411C265B3D9931CC7E958
          C3C851341A5DE02C164B8635885C85C3E1C676D88BFA0FDE6DF52E38FE46C761
          77B20691A34C26334433BE19DBE256D6307284ED5BDDBBA1C21AE06FD5121C71
          5F85B907FB9A7C104A37607FA27C1776066537EC595857175997690538E016F1
          D27E007134452F8D288FA2FA5932993CE376BB4B4DBFF9F9F99B56AB75123E7B
          BB4A2CA815F86582A67CA150D880535120954A79C4D0249BCD96CDE572278C46
          6312F0966E0137B50C1CD03CB69A18A096CA3A9D6E1FCC2397CB5568D5D96432
          FD429FE7C81E13FAA761EE2055446EF4F6790883DB82F657C8BF915CC68C1414
          FC6E232D4ADA77A0EFFE8EE05081665254B6E166B3AB9C336645F9187CAF4A1D
          107A9F706099A8542A235AADF6ABB41DF7E85734D6D245695BA954EAC3047EEB
          084E2FE9C5627113C2E38770C1EF38EB1DED440D7945F973E8E3802D8BEA7009
          D5206570D89D40FB3B497F0AB321E17E93300BE2460C74A0D54D57C438467709
          6684F23898BE703A9DE3C2A893525F9C57B76126079B65E10B41A0DD08D14E33
          DBDFAE1D3AD2A1AD33382E1EC4C8E7A6A7A747BD5EEF6F3CE6F318F5133CE6E3
          98B18F22E8DD80BE0F7FD55A6FF62FD5721F074CD8E3F10C63005378CCE4B311
          3BCD7B94DF223F83D407E8019687ECB6FF9C60A2583D2CA9DE2E24E622F039D6
          107284A75E4A2412598EE7F907F46D8535900C3DF4F97C55FA20F414A3B88E8A
          2BAC16DA5A456B0CFFD617CC667323C6017CAD5C2EC7B000F7A0B81E3F7A5600
          FD251E8FBFF4FBFD35AAF803E33F0A8FA2046CBB0000000049454E44AE426082}
        GroupIndex = 0
        IndexInGroup = 1
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = 13355828
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Text1.Align = oaBottomCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'cr'#233'dito'
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clWindow
        Text2.Font.Height = -13
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.Value = 'F7'
        Text3.Align = oaMiddleCenter
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -11
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.IndentVert = 14
        Text3.Value = 'TEF'
        Text4.Align = oaTopCenter
        Text4.AssignedValues = [avFont]
        Text4.Font.Charset = DEFAULT_CHARSET
        Text4.Font.Color = clDefault
        Text4.Font.Height = -11
        Text4.Font.Name = 'Segoe UI'
        Text4.Font.Style = [fsBold]
        Text4.IndentHorz = 49
        Text4.IndentVert = 9
        OnClick = tcDinheiroClick
      end
      object tcCrediario: TdxTileControlItem
        Tag = 5
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000002A00000022080600000029904B
          3600000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F7600000353494441
          54789CED985F4853511CC7EFB6AB735B6DA3B9E95EC4C020ED1F8444F55810A5
          0FEDA540224A212288FE3CD44BB0059A48048114D44369490491ECCDA04024A1
          1E02E90F14BD580D2C48A4A5A9A9FBD3E78CDD71679BB9EDDC0AEA0B3F7EE7DC
          7BCEEF7CCFEFFCCEB9E777D56432A968A07C01558D7E1E8FC7873B3B3B5F8642
          A184F217405D546F30994C0144319BCD4A30188C42FA0932B8B0B010B65AADA3
          7F84A5F233D12C40D88D6A423741F2128447909EC9C9C93EB7DBFDF537714C61
          49A28B01E1CD425C2E5717846FCCCECE76D9EDF64F4691D3A320A21A20EB409D
          B0D96CAD894422D8DEDEDE6D742CAB6C9A00F17888017B445C160208AF442E13
          CBBBC6C7C7F77BBDDE6F06F15454065A93DE408F8B3542DF3D1E8FA78D62B744
          6E59286AE9F3A0B0E5281082A849922DC389CA82AC09E7C4BFE9D1F9F9F9B565
          65653D126D6A7828D5A3EC7E3BB25592BD0CF8B88CCA8E51C30E7DD9C753F297
          AD8A84CCA5FFEF5101A91E25E8531E45C7515F24D8B4A52F40F23C8A41E1516D
          E9DF53AF2BD52617A533D8B928CAB263545B7A3F5E7D50B2419369B556961DA3
          89F40076D46E89B60D8B51119F5725D8DCC6A4778A4296472391488BDFEFAFB5
          582C7534D88434F2783BDAB70CA3FA5D3F453278A754967C8EADA80CD1944721
          73A406E08D17DCFA47489507447AC1ADDF343737B71EF27B69B30FD998C76EE6
          1CA54D4D7979F99B5289EA91F128C6EB51F5BA547902D2C3B158EC11DE196076
          1DBCEFE0E2D140F928E5C3B475EA6C9993FA9F049291374621E14189142540AA
          2CE2EE15729F67777976321A8D06C946CF523F4DDDA6E83C4ABB77D3D3D35B4A
          25E770388E633BA4115D16E8B04108DE3C2F3CED743A6F8E8D8D755456565E63
          225D8A6E3381550C72AE54A2A0512BA82C65AFAAAA8379C855894C73D16341E6
          3BA43EFB7CBEDA742C1EC08355848C25DDCF853A258168066A454545041DC9F5
          1232B719F4609E773188BD450FB0D9AEE0C1C8CCCC4CB54C7259448BEDC80444
          DF754258FA636CBA1D90CE39611990F26582F40A8EAF002164441A9242C944F1
          E204EA3A47582FF17A4F02A79C2888687A577F445E234FB9DD8873F60327410B
          F22CBD890CC19244FBFBFB5BBD5E6F9B561F1A1A4AE87F8685C3614B73737335
          27C72D48F6E9BA9A1589E933CE98FA01E791326E6C3601910000000049454E44
          AE426082}
        GroupIndex = 0
        IndexInGroup = 7
        Text1.Align = oaBottomCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'credi'#225'rio'
        Text2.AssignedValues = []
        Text2.Value = 'Shift+X'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcCrediarioClick
      end
      object tcMenuItem2: TdxTileControlItem
        Tag = 4
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000002E0000001E080600000053C32C
          9A00000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F760000030F494441
          54789CED984B68134118C7F3D83CC8EB90401224E8A1F19040118A820F2496AA
          78F28141348A7A9292A2040F8A28841C2C289450104FDE2428521B1115516F22
          0541A35EAA62040B019B5A429BC4BC37FEBF6603DB6D927645320DF887C9378F
          6F767F33FBCD6467B97ABDAE20E5F379BB5EAFDFA5542A8D8AF5A76AAD56FBAC
          D1683E342B38FAE1793E683018C600AD67C7D6592A954A81497E9C4EA7030E87
          23CF55AB559F5AADBE0568256BB8D504C48376BB7D0CD9610ED0A77B015AA453
          91482448A1E2644D2247B40643A19085C07B69B6974411C265B3D9931CC7E958
          C3C851341A5DE02C164B8635885C85C3E1C676D88BFA0FDE6DF52E38FE46C761
          77B20691A34C26334433BE19DBE256D6307284ED5BDDBBA1C21AE06FD5121C71
          5F85B907FB9A7C104A37607FA27C1776066537EC595857175997690538E016F1
          D27E007134452F8D288FA2FA5932993CE376BB4B4DBFF9F9F99B56AB75123E7B
          BB4A2CA815F86582A67CA150D880535120954A79C4D0249BCD96CDE572278C46
          6312F0966E0137B50C1CD03CB69A18A096CA3A9D6E1FCC2397CB5568D5D96432
          FD429FE7C81E13FAA761EE2055446EF4F6790883DB82F657C8BF915CC68C1414
          FC6E232D4ADA77A0EFFE8EE05081665254B6E166B3AB9C336645F9187CAF4A1D
          107A9F706099A8542A235AADF6ABB41DF7E85734D6D245695BA954EAC3047EEB
          084E2FE9C5627113C2E38770C1EF38EB1DED440D7945F973E8E3802D8BEA7009
          D5206570D89D40FB3B497F0AB321E17E93300BE2460C74A0D54D57C438467709
          6684F23898BE703A9DE3C2A893525F9C57B76126079B65E10B41A0DD08D14E33
          DBDFAE1D3AD2A1AD33382E1EC4C8E7A6A7A747BD5EEF6F3CE6F318F5133CE6E3
          98B18F22E8DD80BE0F7FD55A6FF62FD5721F074CD8E3F10C63005378CCE4B311
          3BCD7B94DF223F83D407E8019687ECB6FF9C60A2583D2CA9DE2E24E622F039D6
          107284A75E4A2412598EE7F907F46D8535900C3DF4F97C55FA20F414A3B88E8A
          2BAC16DA5A456B0CFFD617CC667323C6017CAD5C2EC7B000F7A0B81E3F7A5600
          FD251E8FBFF4FBFD35AAF803E33F0A8FA2046CBB0000000049454E44AE426082}
        GroupIndex = 0
        IndexInGroup = 2
        Text1.Align = oaBottomCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'd'#233'bito'
        Text2.AssignedValues = []
        Text2.Value = 'F8'
        Text3.Align = oaMiddleCenter
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -11
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.IndentVert = 14
        Text3.Value = 'TEF'
        Text4.AssignedValues = []
        Text4.IndentVert = 30
        OnClick = tcDinheiroClick
      end
      object tcMenuItem1: TdxTileControlItem
        Tag = 5
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000002E0000001E080600000053C32C
          9A00000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F76000003DE494441
          54789CDD985B48544118C775F7ACB7D574592FA1499058682028860FE6E52189
          6A4B96482282A85EAC5EB2AC94621F12E9252AAC8428452282882D22021FA2CB
          562F5DF6A5C0A40231C94C5959AF7859B7DFA8A74CCF39BB9A76A43FCCCE9C6F
          E6CCFCCE9C99EF9BB392DFEF0F11EAEBEBB398CDE68DA1A1A1B121CB4FBE8989
          892F6161616FC8278125F1C345594C4CCC75A057E8CBA72E83C110E2F3F95C03
          03033BA3A3A37BA4D1D1D14C93C9748B3A1FB37F95F45D6F48051998D4CDA442
          564503D7A512D07B309898F50A9EEA2A65BD2115E576BBCF6567677FA068EBEF
          EFB78AA5B2525400EEE655E44892F45C5F4445BDCCC9C9D9C26A78CFC4AE0D0F
          0F4F12E0F214FB314AA4683D099504B0CCE4976D924E2C7FADA0C179EA2F646D
          2433298B3713B55450C1282038C0AEF1F1F10A36B15BB6757676462525259503
          5FA3D7036882037DDBE572EDCBCFCFCFA37C1F5316C90BF4FDEEEEEE0B56ABF5
          85D1687CA2C7BE500507B4ADBDBDFD6041418170978D24A35C47393B3131D1DE
          DBDB5B1C1717779CEB6BFF06F7B7B4C0EBE2E3E35700553F135A9680B7582C0E
          DE48556161612DD7F12AFDB4917D5E009B18334F6D29AA82E3D39F4546466EE3
          46B346E76545454595C0BDA25CAAD4607070708308D1F3429E16B1E528E35F54
          AAD302F7B07E1303F42DD77BD41A10A2CF8AE01618738E4498DFAB56A90A4E04
          4D65263F06E85CAE5FA5D680C10F2DC53142159CD92E6D6969399D9191F18981
          D395DA887DC069CDCA52285874B200D27287E5696969F5F8703BB3FF08F8D572
          857FEA107F91435923D057A88B50EB84A6F7C8DE2F804DBCA6DDE26C322F70E1
          9B39B83F1A1919D9ECF178D6272424884E26FD38EBFF010FF38EB57B0CF8235A
          A37BBDDE03B84CEF02C0C5E6FCC19857E6053E2D0F8029049CAF941B7EDD2449
          211D1D1D91C9C9C966667450CBF3C4C6C63E0E62AF28496CCE12B54A2D3F7EDE
          E97456D96CB614D6FB654C5B49A9A461921BE81B353535B5D5D5D54E8E03CD0C
          92AAD40FF65CB2DC05806B4A111CE8BB0C78C26EB797B0149C946366549B48C5
          D88A1D0E47191B78577A7AFA76DEC26B6C618B0DA8A639E0404FF039779224BC
          C59D59D07F88BA1D781D07F919EE139F7F079694768694667C984D798AB40620
          4B107D1C06DA4ABE6691D93435077C7AA39507DBC1F4C305DD7EB1F4FF7F01E9
          2CFF6C83009F3CB9E13DD6E1196E767575A96E46BD34343434DED4D464C08B4D
          46D1B1B1B11E892878173F5DC95ABD44784FC1FE4D67CE39E24BCB08B44D446E
          1CC1534E9C3F9864E9ADF83308E37966BD566F482D8908CC11647F4444C4D41A
          07B80EC34322E0262E97E59F9EE25F86D6D6D6E6CCCCCC5161F8091EDC5E4A3F
          931D020000000049454E44AE426082}
        GroupIndex = 0
        IndexInGroup = 3
        Text1.Align = oaBottomCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'conv'#234'nio'
        Text2.AssignedValues = []
        Text2.Value = 'F9'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcDinheiroClick
      end
      object tcMenuItem3: TdxTileControlItem
        Tag = 2
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000003000000020080600000054D4FB
          1C00000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F76000004B8494441
          54789CCD986D689B5514C7D3BCB44D9BD6244D66B583A2D2920A2A2D22EDE21A
          AD73666B33EA5A70E0F6A17E70E8A7810C0B854211F583586122B2C150D08942
          7D61EDC6A62846041586066A0BF51DECCA34529BB0B6E96BFC9DF0B43E799697
          A7499BECC0C3B9F7E4DC73FFFF7BCF7D8B391E8F1B6E568946A34E9BCD76B0A4
          A4A42B12891CB7DBED11AD8FB918C032C9F2F2B2C76C361F0274675555D51E74
          02637575F5C7A80FB4FE4527100C06CD0F2246A3314035505A5ADA90CA4F66C1
          70B31020351CA4C60119E5F6F676D10E1DCD0E0A599FCFB7AA36168C00A9D140
          6A0494D4D88BB66CA53DFE4EAFD7BB87E2576AFB8E1118191931757777B7994C
          26498D2E52E3EE7C632AB1768EC0ECEC6C353B855F46B9A7A747760FD776C647
          641D9C541BF226B0B4B47487C56249A486C3E178085D9A6B2CB6F4755424DD9A
          C0EE915464367FDEB06D99C0D0D090716060A095E9ECA4DA555656766FAE8045
          003D8FFA0C3DBAB8B878C16AB5CA20BC9FCE5FD6116A78B3AEA79370386C733A
          9DFBD9EA3A0707073BE9E0D63C415F458DAEAFAF8F4E4F4F7F515F5F1F23A6D8
          DDD833C656B6D3EC04D4A05D2E5707A6F2FFFB8F5FCB01B7801E5B5D5D3DCFAC
          FD00F838B368A8A9A971513E02B0406565652B3EC62CF11B049BDBEDBE9E9180
          E2F091F26D9BB05E0C00DEAC731EFC837A5BF97409D836CB66F26E3723B26FFB
          20EE9C30337F336B17D50BD94CE13ED2E4AD6283D32310F8167591857C8053F9
          7739958B7E17CA51EC727F427F9996006C97D6D6D6F6C336584060BA45B9FCDD
          4800E0FFF2BD08F84B2CB88995959566F2CEC72EF12C5F6311B0A61321F05C12
          013954D8E6DA01FE632814B2B4B4B4C8AE11E2A7D0E4E4E49B4D4D4D9390B8AB
          387893051C0D89B783C6FE9E8067F43B9A9B9BCF7121DBCD9DE64FECEF7A3C9E
          192D78088FB1259E653ACF51BD42F9B57C8111EB79FA69CDE647DF736446A376
          067E931391207EAAB7888DFA6DA893624F21BF12E413DAC91DFDAA94F32540AC
          63D97CD8FA4F4F4D4DBD4C86AC241100649DE8858585572B2A2ADCA99B27C9D3
          74F824BA8AEF30E5704EA893A53A9B0327F65F92DE22DA143ACAA23D83C338E5
          BEDEDE5E03E9E4674604E491148F9019BEF13C01B712B716F29728C7F81EE0BB
          5D6F63ED0CD8D936BF23D86916F33BAC87EF498BCBFC7499FA29CA9FE3A31EA1
          31EA27F2414F5FE75101D2A28F59BF46FD43EA877322A090B0A24E40E4385767
          1BB7CFD709FE02C1AF083143F283622FB657F22180245E6A5CA30795ABF53D5B
          699CEA1C989399D8A8CBFE4F7021F514BF4DA817336549C4965C91AB8558CF28
          FD87F9BE4EE336A1356877A1E1582C365C5E5EFE06D57D8A4D24A400DFA5F13F
          333F3F3FA017246BEB2C710E6571FB149FA37A636A098C33D8726FEF06D82E52
          28DEDFDFDFC86DF5171E1ED6BABABA3E4D7B2B97C1ADBC7B753D37596FF7B3DE
          BE51996638B41E111C1909C8AD14124F70209D8A46A341797470EBFBC3EBF5FA
          00FF1223D3A4F6A77E0C0259F7ED5C64E31F39F0CCB0333E9A0AFC0D0494867E
          D8FB6B6B6BAF7312DB39891737821548EEA47F7936269E9E80EF60907E4AE79C
          099815F0170A0C5E06B00DD5A607BC485A700432A11EDB6E807A04F0D3E4FCC3
          E9D2462D4220260D0A804BAFCC01FE713DE045FE03A961E5F4D5B57BD0000000
          0049454E44AE426082}
        GroupIndex = 0
        IndexInGroup = 4
        Text1.Align = oaBottomCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'cheque'
        Text2.AssignedValues = []
        Text2.Value = 'F10'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcDinheiroClick
      end
      object tcMenuItem5: TdxTileControlItem
        Tag = 17
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000002200000025080600000027423B
          7A00000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F76000003FC494441
          54789CDD9859485451188067B98E36A2D618A6298A8E056D320A055258D14390
          B4A8D34652D0F2900F1159D28328198C048505A1852D524991BED4433DB54A14
          643D5428920DA40995E520AED3E8D87752E37A693934F74674E0E79CFB9FFFFC
          FF77CF76FF19A5A1A1C15A505070D66432E52116937EA5736464A4302C2CEC85
          8CB1929F9FEF369BCDBB7404982CD31545394D9D230502C47C0320268BB46FC5
          EFF79F83FCB6412023F89603318DEF0B396B038B121E1EBE9BE52935C2F9D8D8
          988FCA21056204C09F94FF1784E5E8A77A88B4D0FEC8B2FF5D10111429EFEEEE
          BE9C909030D8DFDF1FCF8989E154C64645457DFE2B2000DC1D1818D862B55A6D
          7171719ED1D1D14DCC44BCE8B3D96CA2FF3572C9E7F39D8A8D8DED330484000F
          3A3A3A72939292D6582C968B00446B6DD0CD418E3A1C8E3D5CFBF9CCD4335D41
          80E8191C1CDC0CC46A20AE13CCAAEA7B1B0C06F7A23F833E7902289959BB1308
          0496F10D7AA5278807094ECC8475423704C05602DE40842A85C02E66E13C3659
          480CEDFAC6C6C62CB7DB3D1A320801BFB0212FB0118B713E43D555CBDBDE649F
          5C65193C04AD04B40E7DF2A401F61979149A8D2183509E454747FB002AD000BE
          6D6E6E167E9713F00492CBCCE46A0703E7D60BA4ADBDBD3DDCE974CE552B09BC
          D6EBF59E4A4B4B9B47300B33568F7A03FA48CDF80CF5432820431C553B01A624
          533CAF20D17ACECCD4747676D6316B851CED38BBDD7E5BEC1195A95D2F909955
          5555BD656565430498A681C9406A1213139F02749C4B6D7D444444254BD4A032
          FBA017486679797990404F68AF9C54F22CD6BD0D29164C48766464A4F8020734
          E31FE902C21BA7732C17F1961768AB415E363535795C2ED7F1E1E1E1004BE36C
          6D6DFD98999959ABB219E344D571BA4207F93658514A2A2A2A76B03C45C0640B
          1DFBF3484E4ECE769A37E83F26F21D2036D2BF4035B4569B54877AC56F2B2D2D
          BDC49B6F640F3C24589A50523BA90EB041A7D3DEA91EC064DCEFEAEADACF6D3C
          F5A542A1308B2363B15CE3CD5771D56713B816D53A55FF770800C42D5ACD77A9
          2425256558EB2BE48F1EC11C80DC67AF88E559CFDA2FA6BD992E1712837C121B
          9AFD7485657A03C40FFDE8920688EF07524FC02266A8BAAFAFCFC326ED51F59B
          80F8A50F5D3334022E15C26D2A0EC67B54EF785E2233D6909CD53C9E1F260013
          213BE6DF499EC91D1EB3AE270DF23F240DC20EBF457DCB2010E92266E4104BBA
          CF20FFBDF85E280522925D24E957466CBA5EAA7B1AF5029114FF669C3607F939
          88B097B0F312344F13E41855C96FC6C9F81E07C1A157E2D7D86CEC2A35BAE512
          FEDF488390D65D25DD135FC7353F33A26F16D56159A7A2885F7E24D007A5FF1F
          494F4FF753E7B6B4B4D8486074FB0F2D3535D5CF41905E9AAF96777F123D74DC
          440000000049454E44AE426082}
        GroupIndex = 0
        IndexInGroup = 5
        Text1.Align = oaBottomCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'carteira'
        Text2.AssignedValues = []
        Text2.Value = 'F11'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcDinheiroClick
      end
      object tcMenuItem6: TdxTileControlItem
        Tag = 5
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000002600000022080600000033ACAB
          B800000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F7600000785494441
          54789CAD980B4CD5551CC72F7091A7BC1549025B94E99278CC6CA5E8D5E65A92
          6960A86599929AA2999AB5445196D31E3A15A7468AAED92C8D28B1E8E154302D
          0C61BAC0603A86434112E32D82609F1FFE2F9DFBF78F5E5A673BF7FFFF9FF37B
          7CCFEF75CEB9E65BB76E997ADB0A0B0B9DC3C3C31F7774741CEEE0E0F0204381
          74177A2BBD0699173A3B3B4F9D3871E2D4E8D1A36FF65A01CDDC1BE2F6F6F647
          CD66F3FCC8C8C80400F9F544C79C09D0A69898985A407E75F3E6CD6DCECECE67
          FF7760ADADADA12E2E2E1F012ADE41B4DAD920F5E73117BE3900FCFAC68D1B4B
          5D5D5D2BFE1760B86436A036A3C4C35E400600653171C8790679CBB0E68EFF0C
          6CCD9A358EAB56AD4A43C8FC9E68B042278F0BF4727A135DC03F400F038BA301
          400FFA76F8A2333333E7C5C7C777F40A18601C3A3A3A762164660F804ED27734
          37377FDFB76FDF5AFD7C434383AFA7A7E704F85FA7C718004C8C8B8B7345CF2B
          58D030FB0C8111ACC946A000731E410B9D9C9C7E10EF00CA88DDE4E5E5F5378F
          BDD259A00500DBA07F4407EE65E6C4DAABED0206A81814DF410CA82FAF5EBD9A
          D8AF5FBF26FD9C948FA8A8A83668D6A1F03D750E5947ABAAAAA2070C1890CEDC
          4B3AD664F41D2139F2AC03245A487E7EFE651B60A2805290AE8F0F146E47C102
          BDD9291F11089D0ECF63DAD03468EFA3E7E1E66FAD6E0E0A0A6AC16A33B0D05F
          C85E6CE5E71DB14E7B9B9A9AA2DCDCDCC2A15940828CB7582C5E36C022222266
          413C58072A273535354905A525C6264025A9E583D7413C06F17C9518DB0AEF4E
          E26D95B7B7779DF0A37809E042987F41E1B9DFC3C3A39CA7A7A6AF5468CD3A65
          CB74A01AAE5FBF3E2B2525A5531D876E3582162A74557C07F1BCCEA7ABC3EDE6
          C6F7020066317654E844214013B1E458E67D14709E8AF88BF2D30D2C3939F969
          08C24CB62DCDDDDDBD5A1DA8ADADEDEBE7E7F7B606A81D650967CE9C392431C6
          D026169246119D8E2CA1F94C62CCCA2BF10BA8952A28835661034C568AA25698
          5C35A51D54EA7494D870E196482B0DED67148B459CADF32CA48AC7062C935159
          59D93C74E850536363A33F963B88EB9FBC0B2093A6F7A244473730141C24989F
          8279BFB631E702EAA29E913967E533506A5E4141C11D0AA464082869920458EB
          5D747C2E31750F6CFF5A4C6A13A00E911185757575D1586517C87F35DA16DBDA
          DACE01F8961647D10473267DFDBD2CC1828F63B9482C9701DFC49EE8C462DDC0
          209CDAA74F9F5400CEF1F1F1398015A6507BDC030303EF6024AD2FC3BC8FD7E9
          1AEF64944ED6A62D808CA7DEE5C0DBACE715CB217B12D67B13BE0FE87DF434CC
          5560D96E573E240149DF8FD26DE5E5E54B8D045BDBA54B9712070E1C2867AF99
          6ACDE3FD09841EE8DFBF7F23723EADAFAF4F65A1F52AAF56763601E038B45FA8
          0927715D5C5C5C492299CC57AE5CF100443F45F8FC90909091B82C012BFE6904
          2C383858CAC26C683EE69CF51AEFB1F00D5164C85EB5849098D8D2D2324A9FD9
          D2B0F2E96BD7AE45FBFAFAEE807E9A365C05A8F6AE79527F909E09C2701416B0
          BA244CBFA727CB01FC1C8FE5EC182BB42D2957160EFF184D4E18AE7F9FD7443D
          AFB68D35F03A1D3D87A1DD62D26A58173014871A29D58E28BB51369698996FB4
          471AB493B257CA190EB93BB5B1094684EC32B3E5F843582CC20319245F3EAE9D
          644D38332F86C014803302020246C038152B16C9182E1C4C865DF6F7F76F34E2
          C14D1924C1362DB80D8FE0CC3D4B7F8E581D81BC2958BF98E1E26E1976D41511
          F230CAF6B2315B64E3C53D870981260278AE7A32B03614452B1957A99F67D30E
          607F1CAFC91EC6827F672109582CA71B187DE0DD4061EE225CB3362B2BEB1B39
          71CAA68EB060CD32B97CFF825BB235F2306857A0608922629F5E26C920870517
          65E1922CEE2A8D000BBE0BA83A52DE22290FA8AE31B6A97914E2DD08B3684247
          4AD7DEA74857F84FD5D4D4AC53EB21059C64F55EAAD353555A5A9A6DDD29ACC0
          8214820E7195B2121F846C30295925B71C027B1C3117CB73114363A0B3393E21
          4762EF93EAEAEA14398BA973C84B83BEBF8E7E33A0DAF416F365E2347D0BB191
          8B357E837180026E36EE2901C446EB985624C57DD9D4222F9445C92902190788
          950FCBCACACE8A2240D97800BE957260D481AAA496A6E969CD087A9E58392569
          2A2709BE67C29CA31E00F9DE80003F6E3629FA9B0D49D0404D3A21D59A761E59
          05AA4BA46927E38DC84932E91A6017E9ADDA054C40A903ACFC47406CE2F52D75
          1C9C2BB8D9C4E0C237C8A262754EAA35B1E84BFCB48686DA561F327738A0B6CB
          86AF578E9E74EDD8744733BC25E5E5E52DE77A2FFB67AC0EDC281672168159AC
          740F817DC4BA5A393ED3BBE82A2A2A5C299AE3B150228A638D6EEFC8F8A9A8A8
          2849B3B47DC0E48F90929292B8214386C8F9295E074E36ED3814C671F3916DE8
          0FD3ED0BAF6CFA92F283D86B87A9E5C0005436153FC1BA2FDA0D4C9A042F2B7E
          1157BC8392354647146D2C4AEBF76C00927F7ED672B949D5DF23EC06264DCBBE
          F564EB41E24AD27CAC3D007A0095C72217CBB606A87BD2DBF56F0FFB58098F71
          081E8D0BE576147B37572960E4CCF61D0BDC0ADF3140D9A3CE7E60DDC46C413C
          72B5DA3506578FE05BAEFE5230C5AD5D7FDCD1CB00934FA61E93722227D2DEB6
          7F002F1589DD921047DD0000000049454E44AE426082}
        GroupIndex = 0
        IndexInGroup = 6
        Text1.Align = oaBottomCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'cr'#233'dito'
        Text2.AssignedValues = []
        Text2.Value = 'F12'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcDinheiroClick
      end
    end
    object cxbFuncionario: TcxDBLookupComboBox
      Left = 474
      Top = 500
      AutoSize = False
      DataBinding.DataField = 'PESSOA_FUNCIONARIO_CODIGO'
      DataBinding.DataSource = DS
      Enabled = False
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ListColumns = <>
      Style.Color = clCream
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.SkinName = ''
      Style.Shadow = False
      Style.TextStyle = []
      Style.TransparentBorder = False
      Style.ButtonTransparency = ebtAlways
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 16
      Height = 27
      Width = 309
    end
    object tcMenuRodape: TdxTileControl
      Left = 10
      Top = 535
      Width = 781
      Height = 57
      Align = alNone
      LookAndFeel.ScrollbarMode = sbmDefault
      OptionsBehavior.ScrollMode = smDefault
      OptionsView.CenterContentHorz = True
      OptionsView.CenterContentVert = True
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupIndent = 50
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 45
      OptionsView.ItemIndent = 4
      OptionsView.ItemWidth = 142
      TabOrder = 17
      object dxTileControl2Group1: TdxTileControlGroup
        Index = 0
      end
      object dxTileControl2Group2: TdxTileControlGroup
        Index = 1
      end
      object tiAcrescimo: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D4948445200000021000000180806000000749194
          0A00000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F76000002ED494441
          54789CBD964F68926118C0F7E9379DD284B9D4838E908D86EE923B9483C28A2C
          D8A12D4651117469308A8222EA5449D1213282188B086297EA22516B51B1D3E8
          52D0561DB215A37510A21D24846CEAD47EEFF609A67E9B7F361FF87CDEEFFDF3
          BCBFEF7DFEBCCAD96CB6A15249A7D37EAD563B51F14215912B991C0A85B40303
          03231A8D6613AFF58788442206001E4992D4CFE9BD5A2B80B22162B1588BDD6E
          7F06C00EA52B535788858585B6E6E6E6970074E575571E48D542A452A92EBD5E
          2F00DA0A86EA03B1B8B8B85D96E531005A4A0CEB12898493D848C7E3F1DF66B3
          39B6E610A4603F292882D0506A9CFEBD9CD077D16E6A6A6A00E617CD29F40470
          2183C110A9092293C90C928277D9485BAE11E6DA50BDE85EA082C08C739281C6
          C6C68F1543B03800C0957237570112F07DB8723FF6EECDCFCF9FB7D96C7F5685
          508AD03006866A01288091504356AB75773299ECD3E97433AA10F94568AD000A
          6036E39637649A5FCD3DB2C56211FE74AF07401EC846DCF39AA0F512D0734510
          74FEA022F65090424CDEB58E20565CF2647676D6DBD1D191F80F42FC984CA6E8
          F4F4F43E8FC733C2E413EB08B2A5BDBDFD1ACD0B451042BABBBB53A84152F42B
          936FF068D48C11F51F502FD08965DBD206742B4F278F8BF7D61558CE12A8A39C
          4AB8082227A4689062F50DFD50315E4ADE31766939018AD64BDC379DC4C01EC6
          8FD0D523E54DA42913A0D7691E50851042B51C239A45D97E5EE2DE58DA4BED33
          394971AFCC28CF305FED66D38BB48FE59D6E9FB897E8FFAC0A2184099FB817B6
          51829FB2786BB91085A21CFB712AE81D3EEE3EB63CE264F8C093F49F5A114288
          D168FC491DD9C97F8951D61DAA0622276C3A150E87BD2E972B88ADD3741D2553
          CE894C59F5FF84C3E1F88B9F0F13275F78BDACF8B76208216EB73B893A83CBE6
          3073CBE974FA791F2FEB9F95E2E780C81CF4836A2172C247DDC69609DD5B3644
          DEE2C7F8760EDF1EAC054208EEB9CAE9DE5C6A57B1F8EDE4E4E47B9FCF571384
          385D023F188D460DFF002C9009B6CF41B64F0000000049454E44AE426082}
        GroupIndex = 0
        IndexInGroup = 1
        Style.BorderColor = 16744576
        Style.GradientBeginColor = 12615808
        Style.GradientEndColor = 12615808
        Text1.Align = oaBottomRight
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Acr'#233'scimo'
        Text2.Align = oaTopRight
        Text2.AssignedValues = []
        Text2.Value = 'F2'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiAcrescimoClick
      end
      object tiEstornar: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D49484452000000210000002008060000009CB811
          CA00000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F76000006C1494441
          54789CA5980B4CD57514C7795CDE6F905720543E12B426D4F2555C3749DCB486
          E362BA3527D3A9F9CA5E0686122B2A1F0B53CBA9E59A3DA479475A5A5B4E54C6
          E6562D490B99E28C6206F21088F7B3CFC1DFFFF6E372F1D2FA6F87DFEB9CF3FB
          9EC7EFFC7E17D3E0E0A0CB58BF8A8A0ACFC99327CF7473739BE1EAEA3A89A930
          C80B6A876AD075B5AFAFAFD4D3D3F3DA9895F299C6C2D4DBDB3BD564326D4E48
          48C864F3A0D1F8587301800B602AA02377EEDC39141616F6F7FF02D1D1D111ED
          E3E3B30B00CBD8C06D2C801598446877686868CEC0C0C01BC5C5C5072C164BFF
          7F06D1DFDFBF10004751166ABF8695B534E5D02DA8070A802640D3E1F7D6C084
          41FB3232322C18B4CCD7D7F7AF318300FD7AE2BE57B79E8D5B680E12F34F3D3C
          3C7E7524575353E3131D1D9D86EC1A8669AE129FBB60CC1874B1A7A76701E1AA
          740A0200AB51B25FDB5C32F7705B5BDBD680808046000CDB342222229EB55BB8
          BE353636B693E91342809DE5EEEE7E10000F2B20F1C89EEDEEEE9EE3E5E5F5FB
          A820103423F8A11DAED328580380119647454525932F65C1C1C1CB18160D536C
          325DACAEAE7E3C2E2EEE30F2CF2920F7E18993809FA9000F07D1D8D81880359F
          C3E8AE3CD047DF042DA29F4F9B27F37575757EE1E1E1598C9F01B061E51E78B2
          A0F39CA4222CBD29F3F1F1F15D787539F9D505CF2AC5FB484C4CCCBB745F1801
          0200DB6088D1C220717D90B9D7A1ED84A90B4F5971FF6955236C1FE3489AF9B4
          F3B1F44D643F23115FF3F3F3AB436ED06AB5AE253927B23E5789AC07EC4784E7
          8A0D04310D4760BD06E06B2C38A2FADE08BFCCF86D845EA23F4ECDCBA9B8CE78
          2AFD3AFAE3C48B428C33E02D10C709AF1CCFAEAEAEE578A882757FE1215CDB58
          5A6203C1D159C182AF52DE0FCA57A4E8C887CB5FC59D5EAC6FD0005C23C15251
          142739C178737B7BFB190C590E4F36E31CE4AFEBDEF2F6F6FE93F942BADBD4D4
          62BC15C5DEB526E5CE6735FE53BA0271275ED80490B9F04D53D3974429E18933
          F8E4E4D0143635357D2C27C5C5C1C7A6FBD9341B3D1E926FE8C8647A9FA9B5B5
          351405495A288AD4F1B67D0284AF94EE34033473A7E8DEB4DF683400F2E1A9DB
          E829A19BA6F4CC1B02C1C274BD287576769E636E840284AFE8E0E81F2554FB47
          303AF9D0730ED934351C325E8EE0048DA14132DA91301E3B161414B41DFE6805
          42106D54FD0CC2D550565676DE6C36F7390151A10DC757555579494E046B93F5
          A30953905A28BBF3C87AA92549FA1A630B5EB1A4A4A4D412A6C2CACACA3D8989
          893DA380B8ADC9B952F00205847E3B0EDCCB0A12F66A7E7EFE63B9B9B90B49D6
          2CA69E9604D39446413BB8F2D3296A4F454646B63B50336C0F490551A02752D8
          BD40C8979797274ABE112204A978E08CB27050BBB06651D4B608BBBDBCDCACFA
          983747AB09593DC3235B5A5A82897DB333306AE34ED556A17C226DAF1C3FB59C
          3E0A888734F95AB9434CC4F932D7ACC1E0EAEFEFFF04DD538E36A5EA8D97FAE0
          00CC3B34EB107F5437C8910E789ED48697E58F0900B75052C9E2149920D6998E
          405098665376CFC27B8882946BF76CEBA0F4A761C08FE87940CD8DA817EA925C
          A0812F91081A4975DCE5DF72BA84CA96ADBF8228C9918CBF52AFA64D285A8A82
          4F006C1CE7588EB6853650DB33062F2748321B132121212BD1E1A7000C723D58
          31EC2E08988FC09CA3AE6E6FBC93CFF46A43988A7A1B4FECA05B20EB5004FD2D
          46F102CC2EDD62B9DCE42E92470CBACD720D506742D093A3B19D05C08DA170C8
          1F79E9C8F54B7785625849E65BC9FCEF6520659BE63D2EAD9328CCA5BF547F4B
          6A9BCBC9B102B8808BED848446BDA6CC002850E0873EF4BF058F8B0D847C94EB
          AD7860B13CE9E5ECF21DC35D66FD3DA99067D5D7D76F242429F02C84771D9B1F
          87BEC3EA1212B75A9E806C3C0FC017581F4FFB336DB006F64B005C30C6361092
          0358FC3CCC5FC8585ED9309660D522DA1F748B7959B5D17CCB5A0B6B02A21840
          4500B0F1C8EB0A50A900BA6407A0861CDB4012DB7887BD31C57A98E442DBA280
          84139252C06D2F2F2F2F4C4E4EEED5F949E0AB24E46236FBC938E6C627C71920
          EF19EF1405A08D306400A041E71DF1DA66D36C187D10362E2779D0EC484A4A5A
          0598DDCDCDCD45C6751D1818D84473420700A02958BF1600AB91B32D00A015F9
          747BAF3A04A1927013ED0D94EC843C159849D0418ED95E145E64AA9C568E7137
          14A0DE9DB388FF247B9DF05D27749980FBC57ECD2108E32334EF9398A5203FC0
          06338C79F10CCD5C21FBC78F83CDE5A7DF070E8ADBD840C82749C5AD399B5B33
          1D502F3235C7D5D9CE773797C42DC2889D522300704F7EA7BFCAD5AD592CC4B1
          BB1F60A9CA337211E9FF1AF803FA8D30963534349C936BDC782C3BFBFE01DD00
          1B896EB2B7200000000049454E44AE426082}
        GroupIndex = 1
        IndexInGroup = 0
        Style.GradientBeginColor = 5592575
        Style.GradientEndColor = clRed
        Text1.Align = oaTopRight
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Estornar'#13
        Text2.Align = oaTopRight
        Text2.AssignedValues = []
        Text2.IndentVert = 0
        Text2.Value = 'F4'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Text4.Value = #10'pagamentos'
        OnClick = tiEstornarClick
      end
      object tcIdentifcaCPF: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F76000002B0494441
          54789CED964B68534114866F929BF7134A1EE8425D881B414144A82454105484
          8226A215BA12A4A845C422822E44C49D8254370A2E5C2862211614B1142120AE
          142A5241105130843458AB799867E3372D8592B6B9AF6A5C78E0303337C3FCDF
          9CCC9C3972B3D994B458369B750783C1FD2693A99BE17A5CC6A75867A25AAD8E
          3A1C8E2F5AD693D54E4CA55272341A3D1B0A85CE330CB4FE0E9064B7DBAF0332
          522E97879C4EE7D75503989E9EF6C562B151BA3D0A532DF861A2B0BB5EAFF7CA
          B2FCCA3080D96C36351A8D872AC4175B97C562795AA954B611954F8600D8C921
          9ABD1AC4172C60B3D9AED11E3004C07F7B4C87F882F5168BC590DBED9ED20D80
          6D310060E63C6CA67D610440F54D59C1AC4617FF8977E955E75A7E370AF019DF
          A0537FB650287C080496A40D4D0093F82E9D00AF11FFD16E822200217CC94D38
          A513605C698222403E9F7FEEF3F97ED1756A552787DCB75ADB9E416500BFDF3F
          4314EED23DA9517F0CF149A549AAAE58A954BAEC72B944460CA914AFB2FB21A5
          DDAB0610998CF7A09F77E189A470AF8511B17388BF53B3B6EA24C3E33206C451
          20EE49EDCFC355E6DC50BBAEA62C07C448AD56FBC8337B9BE1F6969F73ECFC34
          E20FB4ACA939CD12DA09447600D243BB874F6E84DFE472B947E170B8A8753D55
          0064B32015CE56F281C888010E98597C477886467884326D70161363BEA729CF
          DEAAA98A96051045080B7413F204C37D1CC24DAAB724CD9767BC820250D487CF
          E07A9C4C26C7138944A32D4026937111C6E31CB6130C376A115DC1D6E1036C68
          201E8FA701B9437D70D3EBF57E5B0280E8C14824324C77CD2A082F676B89CC25
          8FC77306908B1CE45BB4CD3900427505CA0B7F48B8D5FC800CB3E19D54DAFD32
          9DC45F145F6C4728F3DFCB88F775407CCE88449FF80B5C9D0210DA46EB3DC3F6
          1FE09F00C84AF3956F272CFD1B6969E8DCF381C4D80000000049454E44AE4260
          82}
        GroupIndex = 0
        IndexInGroup = 0
        Style.GradientBeginColor = 11119888
        Style.GradientEndColor = 12630034
        Text1.Align = oaTopRight
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Identificar'#13
        Text2.Align = oaBottomCenter
        Text2.AssignedValues = []
        Text2.IndentVert = 5
        Text3.Align = oaTopRight
        Text3.AssignedValues = []
        Text3.IndentVert = 0
        Text3.Value = 'F1'
        Text4.AssignedValues = []
        Text4.Value = #10'pessoa'
        OnClick = tcIdentifcaCPFClick
      end
      object tiOperacao: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D4948445200000021000000180806000000749194
          0A00000A3769434350735247422049454336313936362D322E310000789C9D96
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
          8F70662A000000097048597300002E2300002E230178A53F76000002ED494441
          54789CBD964F68926118C0F7E9379DD284B9D4838E908D86EE923B9483C28A2C
          D8A12D4651117469308A8222EA5449D1213282188B086297EA22516B51B1D3E8
          52D0561DB215A37510A21D24846CEAD47EEFF609A67E9B7F361FF87CDEEFFDF3
          BCBFEF7DFEBCCAD96CB6A15249A7D37EAD563B51F14215912B991C0A85B40303
          03231A8D6613AFF58788442206001E4992D4CFE9BD5A2B80B22162B1588BDD6E
          7F06C00EA52B535788858585B6E6E6E6970074E575571E48D542A452A92EBD5E
          2F00DA0A86EA03B1B8B8B85D96E531005A4A0CEB12898493D848C7E3F1DF66B3
          39B6E610A4603F292882D0506A9CFEBD9CD077D16E6A6A6A00E617CD29F40470
          2183C110A9092293C90C928277D9485BAE11E6DA50BDE85EA082C08C739281C6
          C6C68F1543B03800C0957237570112F07DB8723FF6EECDCFCF9FB7D96C7F5685
          508AD03006866A01288091504356AB75773299ECD3E97433AA10F94568AD000A
          6036E39637649A5FCD3DB2C56211FE74AF07401EC846DCF39AA0F512D0734510
          74FEA022F65090424CDEB58E20565CF2647676D6DBD1D191F80F42FC984CA6E8
          F4F4F43E8FC733C2E413EB08B2A5BDBDFD1ACD0B451042BABBBB53A84152F42B
          936FF068D48C11F51F502FD08965DBD206742B4F278F8BF7D61558CE12A8A39C
          4AB8082227A4689062F50DFD50315E4ADE31766939018AD64BDC379DC4C01EC6
          8FD0D523E54DA42913A0D7691E50851042B51C239A45D97E5EE2DE58DA4BED33
          394971AFCC28CF305FED66D38BB48FE59D6E9FB897E8FFAC0A2184099FB817B6
          51829FB2786BB91085A21CFB712AE81D3EEE3EB63CE264F8C093F49F5A114288
          D168FC491DD9C97F8951D61DAA0622276C3A150E87BD2E972B88ADD3741D2553
          CE894C59F5FF84C3E1F88B9F0F13275F78BDACF8B76208216EB73B893A83CBE6
          3073CBE974FA791F2FEB9F95E2E780C81CF4836A2172C247DDC69609DD5B3644
          DEE2C7F8760EDF1EAC054208EEB9CAE9DE5C6A57B1F8EDE4E4E47B9FCF571384
          385D023F188D460DFF002C9009B6CF41B64F0000000049454E44AE426082}
        GroupIndex = 1
        IndexInGroup = 1
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaTopRight
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.IndentVert = 16
        Text1.Value = 'Venda'
        Text2.Align = oaTopRight
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -13
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentVert = 0
        Text2.Value = 'Esc'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiOperacaoClick
      end
      object tiDesconto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Style.BorderColor = 16744576
        Style.GradientBeginColor = 12615808
        Style.GradientEndColor = 12615808
        Text1.Align = oaBottomRight
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Desconto'
        Text2.Align = oaTopRight
        Text2.AssignedValues = []
        Text2.Value = 'F3'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiDescontoClick
      end
      object tiCancelar: TdxTileControlItem
        Enabled = False
        GroupIndex = 0
        IndexInGroup = 3
        RowCount = 2
        Size = tcisSmall
        Style.BorderColor = clRed
        Style.GradientBeginColor = clRed
        Style.GradientEndColor = clRed
        Text1.AssignedValues = []
        Text1.Value = 'Teste Cancelar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiCancelarClick
      end
    end
    object cxLabel3: TcxLabel
      Left = 483
      Top = 36
      Caption = 'Confirma'#231#227'o de pagamento'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold, fsItalic]
      Style.HotTrack = False
      Style.TextColor = 12615808
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 18
      Top = 36
      Caption = 'Pagamentos realizados'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 12615808
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lblTotalAPagar: TLabel
      Left = 564
      Top = 258
      Width = 219
      Height = 41
      Alignment = taRightJustify
      Caption = '0,00'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227327
      Font.Height = -30
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblValorPago: TLabel
      Left = 564
      Top = 215
      Width = 219
      Height = 41
      Alignment = taRightJustify
      Caption = '0,00'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11579392
      Font.Height = -30
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object mLog: TMemo
      Left = 19
      Top = 237
      Width = 449
      Height = 85
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Lines.Strings = (
        'mLog')
      TabOrder = 8
    end
    object GridTransacoesTef: TcxGrid
      Left = 18
      Top = 197
      Width = 451
      Height = 31
      TabOrder = 7
      object GridTransacoesTefDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSVenda_Financeiro_Tef
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsView.GroupByBox = False
        object GridTransacoesTefDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object GridTransacoesTefDBTableView1CODVENDA: TcxGridDBColumn
          Caption = 'C'#243'd. Venda'
          DataBinding.FieldName = 'CODVENDA'
          Visible = False
        end
        object GridTransacoesTefDBTableView1NSU: TcxGridDBColumn
          DataBinding.FieldName = 'NSU'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 61
        end
        object GridTransacoesTefDBTableView1TEF_STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'TEF_STATUS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 68
        end
        object GridTransacoesTefDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DT_ALTERACAO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 68
        end
        object GridTransacoesTefDBTableView1REDE: TcxGridDBColumn
          Caption = 'Rede'
          DataBinding.FieldName = 'REDE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 65
        end
        object GridTransacoesTefDBTableView1VALOR_TOTAL: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
        end
        object GridTransacoesTefDBTableView1QTD_PARCELAS: TcxGridDBColumn
          Caption = 'Qtd Parcelas'
          DataBinding.FieldName = 'QTD_PARCELAS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 41
        end
        object GridTransacoesTefDBTableView1CNPJ_CREDENCIADORA: TcxGridDBColumn
          DataBinding.FieldName = 'CNPJ_CREDENCIADORA'
          Visible = False
        end
        object GridTransacoesTefDBTableView1ARQ_RESPOSTA: TcxGridDBColumn
          DataBinding.FieldName = 'ARQ_RESPOSTA'
          Visible = False
        end
        object GridTransacoesTefDBTableView1BtnReimprimir: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Buttons = <
            item
              ImageIndex = 1
              Kind = bkGlyph
              Stretchable = False
              Width = 20
            end>
          Properties.Images = IconListTEF
          Properties.ViewStyle = vsButtonsAutoWidth
          Properties.OnButtonClick = GridTransacoesTefDBTableView1BtnReimprimirPropertiesButtonClick
          Options.ShowEditButtons = isebAlways
          Width = 33
          IsCaptionAssigned = True
        end
        object GridTransacoesTefDBTableView1BtnCancelar: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              ImageIndex = 0
              Kind = bkGlyph
            end>
          Properties.Images = IconListTEF
          Properties.ViewStyle = vsButtonsOnly
          Properties.OnButtonClick = GridTransacoesTefDBTableView1BtnCancelarPropertiesButtonClick
          Visible = False
          Options.ShowEditButtons = isebAlways
          Width = 30
        end
        object GridTransacoesTefDBTableView1MOTIVO: TcxGridDBColumn
          Caption = 'Motivo'
          DataBinding.FieldName = 'MOTIVO'
          Width = 1000
        end
      end
      object GridTransacoesTefLevel1: TcxGridLevel
        GridView = GridTransacoesTefDBTableView1
      end
    end
    object lblTipoVenda1: TcxLabel
      Left = 362
      Top = 610
      Caption = 'lblTipoVenda'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btnAdicionarProduto: TcxButton
      Left = 375
      Top = 76
      Width = 75
      Height = 33
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 5
      OnClick = btnAdicionarProdutoClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutCxLookAndFeel1
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object LiParcelas: TdxLayoutItem
      Parent = MenuCondicaoPagto
      CaptionOptions.Text = 'Parcelas'
      CaptionOptions.Layout = clTop
      Control = edtParcela
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 49
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = MenuCondicaoPagto
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Condi'#231#227'o de Pagamento'
      CaptionOptions.Layout = clTop
      Control = cbxCondicaoPagto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 189
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiIntervalo: TdxLayoutItem
      Parent = MenuCondicaoPagto
      AlignVert = avClient
      CaptionOptions.Text = 'Intervalo'
      CaptionOptions.Layout = clTop
      Control = edtIntervalo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoParcelas: TdxLayoutGroup
      Parent = TabCrediario
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object LiMes: TdxLayoutItem
      Parent = MenuCondicaoPagto
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkIntervalo_Mensal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 41
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object GrupoTabs: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Grupoo Tabs'
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelCinza
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object TabCrediario: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Credi'#225'rio'
      Offsets.Left = 8
      ItemIndex = 1
      Padding.AssignedValues = [lpavLeft]
      ShowBorder = False
      Index = 0
    end
    object tabOpercao: TdxLayoutGroup
      Parent = GrupoTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Opera'#231#227'o'
      ScrollOptions.Vertical = smAuto
      Index = 0
    end
    object tgidentificaCliente: TdxLayoutGroup
      Parent = tgIdentifica
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Offsets.Left = 8
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object tgIdentifica: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco
      Offsets.Top = 8
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lilblSubTotal: TdxLayoutItem
      Parent = grupoInformaValores
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'SubTotal'
      Control = lblSubTotal
      ControlOptions.OriginalHeight = 42
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lilblAcrescimo: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Acr'#233'scimo'
      Control = lblAcrescimo
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = grupoInformaValores
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Frete'
      Control = cxLabel5
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object TabMenuConfiguracoes: TdxLayoutGroup
      Parent = GrupoTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Configura'#231#245'es'
      Index = 1
    end
    object lilblTroco: TdxLayoutItem
      Parent = grupoInformaValores
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Troco'
      Control = lblTroco
      ControlOptions.AlignVert = avCenter
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 41
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object lilblQtdItens: TdxLayoutItem
      Parent = GrupoParcelas
      CaptionOptions.Text = 'Itens: '
      Control = lblQtdItens
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lilblDesconto: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Desconto'
      Control = lblDesconto
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = tgidentificaCliente
      CaptionOptions.Text = 'CPF: '
      Control = lblVendaCPF
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 31
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = GrupoParcelas
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridFinanceiro
      ControlOptions.OriginalHeight = 228
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = tgidentificaCliente
      CaptionOptions.Text = 'Cliente:'
      Control = lblVendaRazaoSocial
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutGroup5
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = TabMenuConfiguracoes
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Configuracao'
      CaptionOptions.Visible = False
      Control = pnlPrinci
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 511
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object tgIdentificaFuncionario: TdxLayoutGroup
      Parent = tgIdentifica
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grupoInformaValores: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      Offsets.Right = 8
      SizeOptions.Width = 300
      ItemIndex = 2
      Padding.AssignedValues = [lpavRight]
      ShowBorder = False
      UseIndent = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup16
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = grupoInformaValores
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = grupoInformaValores
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem66: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignVert = avBottom
      Offsets.Bottom = 8
      Control = tcMenuPagamento
      ControlOptions.OriginalHeight = 92
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = tabOpercao
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = tgIdentificaFuncionario
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Right = 8
      CaptionOptions.Text = 'Funcion'#225'rio - F1'
      CaptionOptions.Layout = clTop
      Control = cxbFuncionario
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 309
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      Offsets.Bottom = 8
      CaptionOptions.Visible = False
      Control = tcMenuRodape
      ControlOptions.OriginalHeight = 57
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = grupoInformaValores
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'cxLabel3'
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = TabCrediario
      CaptionOptions.Text = 'cxLabel4'
      CaptionOptions.Visible = False
      Control = cxLabel4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MenuCondicaoPagto: TdxLayoutGroup
      Parent = GrupoParcelas
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Visible = False
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem67: TdxLayoutItem
      Parent = grupoInformaValores
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Total a pagar'
      Control = lblTotalAPagar
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 41
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem68: TdxLayoutItem
      Parent = grupoInformaValores
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Valor pago'
      Control = lblValorPago
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 41
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = tabOpercao
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco
      Offsets.Top = 8
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = GrupoParcelas
      Visible = False
      CaptionOptions.Text = 'Memo1'
      CaptionOptions.Visible = False
      Control = mLog
      ControlOptions.OriginalHeight = 85
      ControlOptions.OriginalWidth = 185
      Index = 3
    end
    object cxGridTransacoesTef: TdxLayoutItem
      Parent = GrupoParcelas
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Transa'#231#245'es TEF'
      CaptionOptions.Layout = clTop
      Control = GridTransacoesTef
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = tabOpercao
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco
      Offsets.Top = 5
      LayoutDirection = ldHorizontal
      Padding.AssignedValues = [lpavBottom]
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahCenter
      Padding.Bottom = 2
      Padding.Left = 5
      Padding.AssignedValues = [lpavBottom, lpavLeft]
      CaptionOptions.Text = 'cxLabel7'
      CaptionOptions.Visible = False
      Control = lblTipoVenda1
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = MenuCondicaoPagto
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnAdicionarProduto
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object pnlUltimasTransações: TPanel
    Left = 817
    Top = 122
    Width = 477
    Height = 347
    Caption = 'pnlUltimasTransa'#231#245'es'
    TabOrder = 5
    object cxGrid2: TcxGrid
      Left = 0
      Top = 26
      Width = 473
      Height = 283
      TabOrder = 0
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSVenda_Financeiro_Tef
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnGrouping = False
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1PARCELA: TcxGridDBColumn
          Caption = 'Parcela'
          DataBinding.FieldName = 'PARCELA'
          Options.Editing = False
          Width = 54
        end
        object cxGrid2DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGrid2DBTableView1CODVENDA: TcxGridDBColumn
          DataBinding.FieldName = 'CODVENDA'
          Visible = False
        end
        object cxGrid2DBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
        end
        object cxGrid2DBTableView1DOCUMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'DOCUMENTO'
          Visible = False
        end
        object cxGrid2DBTableView1VENCTO: TcxGridDBColumn
          DataBinding.FieldName = 'VENCTO'
          Visible = False
          Width = 67
        end
        object cxGrid2DBTableView1STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'STATUS'
          Visible = False
        end
        object cxGrid2DBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Options.Editing = False
        end
        object cxGrid2DBTableView1DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          Visible = False
        end
        object cxGrid2DBTableView1RAZAOSOCIAL: TcxGridDBColumn
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Visible = False
        end
        object cxGrid2DBTableView1HISTORICO: TcxGridDBColumn
          DataBinding.FieldName = 'HISTORICO'
          Visible = False
        end
        object cxGrid2DBTableView1EMISSAO: TcxGridDBColumn
          DataBinding.FieldName = 'EMISSAO'
          Visible = False
        end
        object cxGrid2DBTableView1DATAPAGTO: TcxGridDBColumn
          DataBinding.FieldName = 'DATAPAGTO'
          Visible = False
        end
        object cxGrid2DBTableView1CODPLANOCONTAS: TcxGridDBColumn
          DataBinding.FieldName = 'CODPLANOCONTAS'
          Visible = False
        end
        object cxGrid2DBTableView1TIPOPAGTO: TcxGridDBColumn
          Caption = 'Tipo de pagamento'
          DataBinding.FieldName = 'TIPOPAGTO'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 118
        end
        object cxGrid2DBTableView1CODCONDICAOPAGTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODCONDICAOPAGTO'
          Visible = False
        end
        object cxGrid2DBTableView1CONDICAOPAGTO: TcxGridDBColumn
          DataBinding.FieldName = 'CONDICAOPAGTO'
          Visible = False
        end
        object cxGrid2DBTableView1CONTATOS: TcxGridDBColumn
          DataBinding.FieldName = 'CONTATOS'
          Visible = False
        end
        object cxGrid2DBTableView1CODCHEQUE: TcxGridDBColumn
          DataBinding.FieldName = 'CODCHEQUE'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_CODBANCO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_CODBANCO'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_BANCO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_BANCO'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_NOME: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_NOME'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_REPASSADO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_REPASSADO'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_CNPJCPF: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_CNPJCPF'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_STATUS'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_COMPE: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_COMPE'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_AGENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_AGENCIA'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_C1: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_C1'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_CONTA: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_CONTA'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_NUMERO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_NUMERO'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_C2: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_C2'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_C3: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_C3'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_DT_CADASTRO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_DT_CADASTRO'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_DT_BOM_PARA: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_DT_BOM_PARA'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_DT_REPASSADO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_DT_REPASSADO'
          Visible = False
        end
        object cxGrid2DBTableView1CHEQUE_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_TIPO'
          Visible = False
        end
        object cxGrid2DBTableView1ATUALIZADO: TcxGridDBColumn
          DataBinding.FieldName = 'ATUALIZADO'
          Visible = False
        end
        object cxGrid2DBTableView1DT_ALTERACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
        end
        object cxGrid2DBTableView1CODCONTA: TcxGridDBColumn
          DataBinding.FieldName = 'CODCONTA'
          Visible = False
        end
        object cxGrid2DBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
          Visible = False
        end
        object cxGrid2DBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_TIPO'
          Visible = False
        end
        object cxGrid2DBTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
          Visible = False
        end
        object cxGrid2DBTableView1PESSOA_FORNECEDOR_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_FORNECEDOR_CODIGO'
          Visible = False
        end
        object cxGrid2DBTableView1PESSOA_FORNECEDOR_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_FORNECEDOR_TIPO'
          Visible = False
        end
        object cxGrid2DBTableView1PESSOA_FORNECEDOR_SEQUENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_FORNECEDOR_SEQUENCIA'
          Visible = False
        end
        object cxGrid2DBTableView1PREVISAO: TcxGridDBColumn
          DataBinding.FieldName = 'PREVISAO'
          Visible = False
        end
        object cxGrid2DBTableView1GERADO_DO_FINANCEIRO: TcxGridDBColumn
          DataBinding.FieldName = 'GERADO_DO_FINANCEIRO'
          Visible = False
        end
        object cxGrid2DBTableView1PARCELA_ALTERADA: TcxGridDBColumn
          DataBinding.FieldName = 'PARCELA_ALTERADA'
          Visible = False
        end
        object cxGrid2DBTableView1NSU: TcxGridDBColumn
          DataBinding.FieldName = 'NSU'
          Options.Editing = False
          Width = 38
        end
        object cxGrid2DBTableView1REDE: TcxGridDBColumn
          DataBinding.FieldName = 'REDE'
          Visible = False
          Width = 44
        end
        object cxGrid2DBTableView1CNPJ_CREDENCIADORA: TcxGridDBColumn
          DataBinding.FieldName = 'CNPJ_CREDENCIADORA'
          Visible = False
        end
        object cxGrid2DBTableView1TEF_STATUS: TcxGridDBColumn
          Caption = 'Status do TEF'
          DataBinding.FieldName = 'TEF_STATUS'
          Options.Editing = False
          Width = 77
        end
        object cxGrid2DBTableView1LANCAMENTO_FUTURO: TcxGridDBColumn
          DataBinding.FieldName = 'LANCAMENTO_FUTURO'
          Visible = False
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 801
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 13273666
    ParentBackground = False
    TabOrder = 1
    object lblStatus: TcxLabel
      AlignWithMargins = True
      Left = 240
      Top = 8
      AutoSize = False
      Caption = 'CLIQUE PARA CONFIGURAR UM CAIXA'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMenuText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clWindow
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Height = 27
      Width = 327
      AnchorX = 404
    end
    object lblEmpresa: TcxLabel
      Left = 64
      Top = 0
      Caption = 'Empresa Selecionada'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clMoneyGreen
      Style.IsFontAssigned = True
    end
    object lblFuncionario: TcxLabel
      Left = 66
      Top = 18
      Caption = 'Sem Operador'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMenuText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clMoneyGreen
      Style.IsFontAssigned = True
    end
    object cxLabel1: TcxLabel
      Left = 5
      Top = 18
      Caption = 'Operador:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMenuText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clMoneyGreen
      Style.IsFontAssigned = True
    end
    object btnMenu: TcxButton
      Left = 1165
      Top = 0
      Width = 49
      Height = 42
      Caption = 'Menu'
      TabOrder = 4
      OnClick = btnMenuClick
    end
    object cxLabel2: TcxLabel
      Left = 6
      Top = 0
      Caption = 'Empresa:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMenuText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clMoneyGreen
      Style.IsFontAssigned = True
    end
    object pnlOperacao: TPanel
      Left = 614
      Top = 0
      Width = 187
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      Color = 13273666
      ParentBackground = False
      TabOrder = 6
      DesignSize = (
        187
        41)
      object cxButton1: TcxButton
        Left = 1165
        Top = 0
        Width = 49
        Height = 42
        Caption = 'Menu'
        TabOrder = 0
        OnClick = btnMenuClick
      end
      object lblDataConta: TcxLabel
        Left = 3
        Top = 0
        Anchors = [akTop, akRight]
        Caption = 'DataCaixa'
        Style.TextColor = clMoneyGreen
      end
      object lblTipoVenda: TcxLabel
        Left = 3
        Top = 18
        Caption = 'Sem Tipo de Venda Selecionado'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMenuText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clMoneyGreen
        Style.IsFontAssigned = True
      end
      object lblNumOperacao: TcxLabel
        Left = 116
        Top = 0
        Anchors = [akTop, akRight]
        Caption = '000000'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMenuText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clMoneyGreen
        Style.IsFontAssigned = True
      end
      object dxTileControl2: TdxTileControl
        Left = 104
        Top = 0
        Width = 83
        Height = 42
        Align = alNone
        OptionsView.CenterContentHorz = True
        OptionsView.CenterContentVert = True
        OptionsView.IndentHorz = 0
        OptionsView.IndentVert = 0
        OptionsView.ItemHeight = 40
        OptionsView.ItemIndent = 0
        OptionsView.ItemWidth = 75
        Style.CheckedItemFrameColor = clGreen
        Style.FocusedColor = clGreen
        TabOrder = 4
        Transparent = True
        object dxTileControl2Group4: TdxTileControlGroup
          Index = 0
        end
        object tiNF_PDV: TdxTileControlItem
          Tag = -1
          GroupIndex = 0
          IndexInGroup = 0
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clDefault
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.GradientBeginColor = clMedGray
          Text1.Align = oaMiddleCenter
          Text1.Alignment = taCenter
          Text1.AssignedValues = []
          Text1.Value = 'Selecionar Tipo NF'
          Text1.WordWrap = True
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = tiNF_PDVClick
        end
      end
      object dxTileControl3: TdxTileControl
        Left = 16
        Top = 0
        Width = 85
        Height = 44
        Align = alNone
        OptionsView.CenterContentHorz = True
        OptionsView.CenterContentVert = True
        OptionsView.IndentHorz = 0
        OptionsView.IndentVert = 0
        OptionsView.ItemHeight = 40
        OptionsView.ItemIndent = 0
        OptionsView.ItemWidth = 75
        Style.CheckedItemFrameColor = clGreen
        Style.FocusedColor = clGreen
        TabOrder = 5
        Transparent = True
        object dxTileControlGroup1: TdxTileControlGroup
          Index = 0
        end
        object tiCaixa: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 0
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clDefault
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.GradientBeginColor = clMedGray
          Text1.Align = oaMiddleCenter
          Text1.Alignment = taCenter
          Text1.AssignedValues = []
          Text1.Value = 'Caixa'
          Text1.WordWrap = True
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = tiCaixaClick
        end
      end
    end
  end
  object tcNotaFiscal: TdxTileControl
    Left = 657
    Top = 41
    Width = 143
    Height = 252
    Align = alNone
    OptionsView.CenterContentHorz = True
    OptionsView.GroupBlockMaxColumnCount = 1
    OptionsView.GroupIndent = 0
    OptionsView.GroupLayout = glVertical
    OptionsView.IndentHorz = 0
    OptionsView.IndentVert = 0
    OptionsView.ItemHeight = 80
    OptionsView.ItemIndent = 0
    OptionsView.ItemWidth = 135
    TabOrder = 7
    Transparent = True
    Visible = False
    object dxTileControl3Group1: TdxTileControlGroup
      Index = 0
    end
    object tiNFe: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 0
      Style.BorderColor = 551663654
      Style.GradientBeginColor = 551332608
      Style.GradientEndColor = 551796480
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'NF-e'
      Text2.Align = oaBottomLeft
      Text2.AssignedValues = []
      Text2.IndentVert = 15
      Text2.Value = 'Emitir Nota Fiscal de Produto.'
      Text2.WordWrap = True
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = EmitirNotaFiscalTile
    end
    object tiNFCe: TdxTileControlItem
      Tag = 1
      GroupIndex = 0
      IndexInGroup = 1
      Style.BorderColor = 539409370
      Style.GradientBeginColor = 56038
      Style.GradientEndColor = 538626272
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'NFC-e'
      Text2.Align = oaBottomLeft
      Text2.AssignedValues = []
      Text2.IndentVert = 15
      Text2.Value = 'Emitir Nota Fiscal de Consumidor.'
      Text2.WordWrap = True
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = EmitirNotaFiscalTile
    end
    object tiNFSe: TdxTileControlItem
      Tag = 2
      GroupIndex = 0
      IndexInGroup = 2
      Style.BorderColor = 541559278
      Style.GradientBeginColor = 538992358
      Style.GradientEndColor = 541559278
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'NFS-e'
      Text2.Align = oaBottomLeft
      Text2.AssignedValues = []
      Text2.IndentVert = 12
      Text2.Value = 'Emitir Nota Fiscal de Servi'#231'o.'
      Text2.WordWrap = True
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = EmitirNotaFiscalTile
    end
  end
  object Venda_Financeiro_Tef: TFDQuery
    AfterOpen = Venda_Financeiro_TefAfterOpen
    AfterPost = Venda_Financeiro_TefAfterPost
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODVENDA'
    Connection = DMBanco.Banco
    Transaction = TransaFinanceiroTEF
    SQL.Strings = (
      
        'SELECT * FROM VENDA_FINANCEIRO_TEF VFT WHERE (VFT.CODVENDA = :CO' +
        'DIGO) AND VFT.TIPO <> '#39'Cancelamento'#39)
    Left = 64
    Top = 204
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 93
    Top = 104
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
    object dxLayoutSkinLookAndFeelCinza: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = clMenuBar
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
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmDefault
      PixelsPerInch = 96
    end
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      GroupOptions.Color = clSilver
      PixelsPerInch = 96
    end
  end
  object DS: TDataSource
    Left = 92
    Top = 176
  end
  object dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList
    Left = 64
    Top = 104
    object dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 0
      Offsets.ItemsAreaOffsetHorz = 4
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = True
      PixelsPerInch = 96
    end
  end
  object ACBrTEFD1: TACBrTEFD
    Identificacao.NomeAplicacao = 'Office Impresso'
    Identificacao.VersaoAplicacao = '2022'
    Identificacao.SoftwareHouse = 'WR2 Sistemas'
    Identificacao.RazaoSocial = 'WR Comercial LTDA'
    AutoFinalizarCupom = False
    EsperaSTS = 7
    ConfirmarAntesDosComprovantes = True
    TEFPayGo.LogDebug = True
    TEFPayGo.ArqTemp = 'C:\PAYGO\REQ\intpos.tmp'
    TEFPayGo.ArqReq = 'C:\PAYGO\REQ\intpos.001'
    TEFPayGo.ArqSTS = 'C:\PAYGO\RESP\intpos.sts'
    TEFPayGo.ArqResp = 'C:\PAYGO\RESP\intpos.001'
    TEFPayGoWeb.SuportaViasDiferenciadas = True
    TEFPayGoWeb.UtilizaSaldoTotalVoucher = False
    TEFPayGoWeb.ConfirmarTransacoesPendentes = True
    TEFPayGoWeb.PerguntarCartaoDigitadoAposCancelarLeitura = False
    TEFPayGoWeb.OnExibeMenu = ACBrTEFD1PayGoWebExibeMenu
    TEFPayGoWeb.OnObtemCampo = ACBrTEFD1PayGoWebObtemCampo
    TEFPayGoWeb.OnExibeMensagem = ACBrTEFD1PayGoWebExibeMensagem
    TEFPayGoWeb.OnAguardaPinPad = ACBrTEFD1PayGoWebAguardaPinPad
    TEFPayGoWeb.OnAvaliarTransacaoPendente = ACBrTEFD1PayGoWebAvaliarTransacaoPendente
    TEFDial.ArqTemp = 'C:\TEF_DIAL\req\intpos.tmp'
    TEFDial.ArqReq = 'C:\TEF_DIAL\req\intpos.001'
    TEFDial.ArqSTS = 'C:\TEF_DIAL\resp\intpos.sts'
    TEFDial.ArqResp = 'C:\TEF_DIAL\resp\intpos.001'
    TEFDial.GPExeName = 'C:\TEF_DIAL\tef_dial.exe'
    TEFDisc.ArqTemp = 'C:\TEF_Disc\req\intpos.tmp'
    TEFDisc.ArqReq = 'C:\TEF_Disc\req\intpos.001'
    TEFDisc.ArqSTS = 'C:\TEF_Disc\resp\intpos.sts'
    TEFDisc.ArqResp = 'C:\TEF_Disc\resp\intpos.001'
    TEFDisc.GPExeName = 'C:\TEF_Disc\tef_Disc.exe'
    TEFHiper.ArqTemp = 'c:\HiperTEF\req\IntPos.tmp'
    TEFHiper.ArqReq = 'C:\HiperTEF\req\IntPos.001'
    TEFHiper.ArqSTS = 'C:\HiperTEF\resp\IntPos.sts'
    TEFHiper.ArqResp = 'C:\HiperTEF\resp\IntPos.001'
    TEFHiper.GPExeName = 'C:\HiperTEF\HiperTEF.exe'
    TEFCliSiTef.ArqLOG = 'CliSiTef.log'
    TEFCliSiTef.EnderecoIP = 'localhost'
    TEFCliSiTef.CodigoLoja = '00000000'
    TEFCliSiTef.NumeroTerminal = 'SE000001'
    TEFCliSiTef.CNPJSoftwareHouse = '08061860000147'
    TEFCliSiTef.OnExibeMenu = ACBrTEFD1CliSiTefExibeMenu
    TEFCliSiTef.OnObtemCampo = ACBrTEFD1CliSiTefObtemCampo
    TEFVeSPague.EnderecoIP = 'localhost'
    TEFVeSPague.Porta = '60906'
    TEFVeSPague.TemPendencias = False
    TEFVeSPague.TransacaoCRT = 'Cartao Vender'
    TEFVeSPague.TransacaoCHQ = 'Cheque Consultar'
    TEFVeSPague.TransacaoCNC = 'Administracao Cancelar'
    TEFVeSPague.TransacaoReImpressao = 'Administracao Reimprimir'
    TEFVeSPague.TransacaoPendente = 'Administracao Pendente'
    TEFGPU.ArqTemp = 'C:\TEF_GPU\req\intpos.tmp'
    TEFGPU.ArqReq = 'C:\TEF_GPU\req\intpos.001'
    TEFGPU.ArqSTS = 'C:\TEF_GPU\resp\intpos.sts'
    TEFGPU.ArqResp = 'C:\TEF_GPU\resp\intpos.001'
    TEFGPU.GPExeName = 'C:\TEF_GPU\GPU.exe'
    TEFBanese.ArqTemp = 'C:\bcard\req\pergunta.tmp'
    TEFBanese.ArqReq = 'C:\bcard\req\pergunta.txt'
    TEFBanese.ArqSTS = 'C:\bcard\resp\status.txt'
    TEFBanese.ArqResp = 'C:\bcard\resp\resposta.txt'
    TEFBanese.ArqRespBkp = 'C:\bcard\resposta.txt'
    TEFBanese.ArqRespMovBkp = 'C:\bcard\copiamovimento.txt'
    TEFAuttar.ArqTemp = 'C:\Auttar_TefIP\req\intpos.tmp'
    TEFAuttar.ArqReq = 'C:\Auttar_TefIP\req\intpos.001'
    TEFAuttar.ArqSTS = 'C:\Auttar_TefIP\resp\intpos.sts'
    TEFAuttar.ArqResp = 'C:\Auttar_TefIP\resp\intpos.001'
    TEFAuttar.GPExeName = 'C:\Program Files (x86)\Auttar\IntegradorTEF-IP.exe'
    TEFGood.ArqTemp = 'C:\good\gettemp.dat'
    TEFGood.ArqReq = 'C:\good\getreq.dat'
    TEFGood.ArqSTS = 'C:\good\getstat.dat'
    TEFGood.ArqResp = 'C:\good\getresp.dat'
    TEFGood.GPExeName = 'C:\good\GETGoodMed.exe'
    TEFFoxWin.ArqTemp = 'C:\FwTEF\req\intpos.tmp'
    TEFFoxWin.ArqReq = 'C:\FwTEF\req\intpos.001'
    TEFFoxWin.ArqSTS = 'C:\FwTEF\rsp\intpos.sts'
    TEFFoxWin.ArqResp = 'C:\FwTEF\rsp\intpos.001'
    TEFFoxWin.GPExeName = 'C:\FwTEF\bin\FwTEF.exe'
    TEFCliDTEF.ArqResp = ''
    TEFPetrocard.ArqTemp = 'C:\CardTech\req\intpos.tmp'
    TEFPetrocard.ArqReq = 'C:\CardTech\req\intpos.001'
    TEFPetrocard.ArqSTS = 'C:\CardTech\resp\intpos.sts'
    TEFPetrocard.ArqResp = 'C:\CardTech\resp\intpos.001'
    TEFPetrocard.GPExeName = 'C:\CardTech\sac.exe'
    TEFCrediShop.ArqTemp = 'C:\tef_cshp\req\intpos.tmp'
    TEFCrediShop.ArqReq = 'C:\tef_cshp\req\intpos.001'
    TEFCrediShop.ArqSTS = 'C:\tef_cshp\resp\intpos.sts'
    TEFCrediShop.ArqResp = 'C:\tef_cshp\resp\intpos.001'
    TEFCrediShop.GPExeName = 'C:\tef_cshp\vpos_tef.exe'
    TEFTicketCar.ArqTemp = 'C:\TCS\TX\INTTCS.tmp'
    TEFTicketCar.ArqReq = 'C:\TCS\TX\INTTCS.001'
    TEFTicketCar.ArqSTS = 'C:\TCS\RX\INTTCS.RET'
    TEFTicketCar.ArqResp = 'C:\TCS\RX\INTTCS.001'
    TEFTicketCar.GPExeName = 'C:\TCS\tcs.exe'
    TEFTicketCar.NumLoja = 0
    TEFTicketCar.NumCaixa = 0
    TEFTicketCar.AtualizaPrecos = False
    TEFConvCard.ArqTemp = 'C:\ger_convenio\tx\crtsol.tmp'
    TEFConvCard.ArqReq = 'C:\ger_convenio\tx\crtsol.001'
    TEFConvCard.ArqSTS = 'C:\ger_convenio\rx\crtsol.ok'
    TEFConvCard.ArqResp = 'C:\ger_convenio\rx\crtsol.001'
    TEFConvCard.GPExeName = 'C:\ger_convcard\convcard.exe'
    TEFCliSiTefModular.ArqTemp = 'C:\Client\req\intpos.tmp'
    TEFCliSiTefModular.ArqReq = 'C:\Client\req\intpos.001'
    TEFCliSiTefModular.ArqSTS = 'C:\Client\resp\intpos.sts'
    TEFCliSiTefModular.ArqResp = 'C:\Client\resp\intpos.001'
    TEFCliSiTefModular.GPExeName = 'C:\Client\ClientSiTef.exe'
    TEFDirecao.ArqTemp = 'C:\TEF_DIAL\req\intpos.tmp'
    TEFDirecao.ArqReq = 'C:\TEF_DIAL\req\intpos.001'
    TEFDirecao.ArqSTS = 'C:\TEF_DIAL\resp\intpos.sts'
    TEFDirecao.ArqResp = 'C:\TEF_DIAL\resp\intpos.001'
    TEFDirecao.GPExeName = 'C:\DPOS8\Bin\GPDirecao.exe'
    OnAguardaResp = ACBrTEFD1AguardaResp
    OnExibeMsg = ACBrTEFD1ExibeMsg
    OnExibeQRCode = ACBrTEFD1ExibeQRCode
    OnBloqueiaMouseTeclado = ACBrTEFD1BloqueiaMouseTeclado
    OnComandaECF = ACBrTEFD1ComandaECF
    OnComandaECFSubtotaliza = ACBrTEFD1ComandaECFSubtotaliza
    OnComandaECFPagamento = ACBrTEFD1ComandaECFPagamento
    OnComandaECFAbreVinculado = ACBrTEFD1ComandaECFAbreVinculado
    OnComandaECFImprimeVia = ACBrTEFD1ComandaECFImprimeVia
    OnInfoECF = ACBrTEFD1InfoECF
    OnAntesFinalizarRequisicao = ACBrTEFD1AntesFinalizarRequisicao
    OnDepoisConfirmarTransacoes = ACBrTEFD1DepoisConfirmarTransacoes
    OnAntesCancelarTransacao = ACBrTEFD1AntesCancelarTransacao
    OnDepoisCancelarTransacoes = ACBrTEFD1DepoisCancelarTransacoes
    OnGravarLog = ACBrTEFD1GravarLog
    Left = 63
    Top = 144
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    Device.OnStatus = ACBrPosPrinter1ACBrDeviceStatus
    Device.HookAtivar = ACBrPosPrinter1ACBrDeviceHookAtivar
    Device.HookDesativar = ACBrPosPrinter1ACBrDeviceHookDesativar
    Device.HookEnviaString = ACBrPosPrinter1ACBrDeviceHookEnviaString
    Device.HookLeString = ACBrPosPrinter1ACBrDeviceHookLeString
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 91
    Top = 144
  end
  object DSVenda_Financeiro_Tef: TDataSource
    DataSet = Venda_Financeiro_Tef
    Left = 92
    Top = 204
  end
  object DSTipoPagamento_Configuracao: TDataSource
    DataSet = Tipo_Pagamento_Configuracao
    Left = 92
    Top = 232
  end
  object Transa: TFDTransaction
    Connection = DMBanco.Banco
    Left = 91
    Top = 296
  end
  object dxLayoutLookAndFeelList3: TdxLayoutLookAndFeelList
    Left = 32
    Top = 104
    object dxLayoutStandardLookAndFeel3: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object DS_Financeiro: TDataSource
    Left = 92
    Top = 260
  end
  object ImageList1: TImageList
    Left = 62
    Top = 174
    Bitmap = {
      494C01010D000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F30000000000A0A0A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003C3C3C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B4B4B400202020000000000040404000000000003C3C3C00000000007070
      7000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0A0
      A0000000000000000000000000000000000000000000000000006C6C6C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E7000000
      0000E3E3E3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001C1C
      1C00000000000000000000000000000000000000000000000000585858000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007C7C
      7C000000000000000000000000000000000000000000000000001C1C1C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004848
      4800000000000000000000000000000000000000000000000000444444000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000444444000000
      000000000000000000000000000000000000A0A0A00000000000DFDFDF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004848
      48000000000014141400606060000C0C0C0000000000CFCFCF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000054545400000000000000000000000000FBFBFB0000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F30060606000181818001C1C1C0068686800F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F30060606000181818001C1C1C0068686800F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F3005C5C5C00181818001C1C1C0064646400F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000101010000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000101010000000000000000000000000000000000000000000000000001818
      18000000000000000000000000000000000000000000B4B4B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DBDBDB00000000000000000000000000000000000000
      0000101010000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000003C3C
      3C00000000000000000000000000000000000000000000000000000000000000
      0000545454000000000000000000000000000000000000000000000000003C3C
      3C00000000000000000000000000000000000000000000000000000000000000
      0000545454000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101000000000000000000000000000000000003C3C
      3C00000000000000000000000000000000000000000000000000000000000000
      0000545454000000000000000000000000000000000000000000101010000000
      0000000000000000000000000000404040004040400000000000000000000000
      0000000000002424240000000000000000000000000000000000101010000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002424240000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010000000
      00000000000050505000000000000000000000000000000000004C4C4C000000
      00000000000024242400000000000000000000000000F3F3F300000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300000000000000
      00005050500000000000909090000000000000000000ACACAC00000000003030
      3000000000000000000000000000000000000000000060606000000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      0000000000000000000080808000000000000000000060606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C5C5C00000000000000
      000000000000909090000000000090909000ACACAC0000000000707070000000
      000000000000000000007C7C7C00000000000000000018181800000000000000
      0000404040008080800080808000BFBFBF00BFBFBF0080808000808080004040
      4000000000000000000038383800000000000000000018181800000000000000
      0000404040008080800080808000808080008080800080808000808080004040
      4000000000000000000038383800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018181800000000000000
      0000000000000000000090909000000000000000000070707000000000000000
      000000000000000000003838380000000000000000001C1C1C00000000000000
      0000404040008080800080808000BFBFBF00BFBFBF0080808000808080004040
      400000000000000000003C3C3C0000000000000000001C1C1C00000000000000
      0000404040008080800080808000808080008080800080808000808080004040
      400000000000000000003C3C3C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C00000000000000
      00000000000000000000ACACAC00000000000000000090909000000000000000
      000000000000000000003C3C3C00000000000000000068686800000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      0000000000000000000088888800000000000000000068686800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000088888800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000064646400000000000000
      000000000000ACACAC0000000000707070009090900000000000909090000000
      00000000000000000000848484000000000000000000F7F7F700000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700000000000000
      00004C4C4C000000000070707000000000000000000090909000000000003030
      3000000000000000000000000000000000000000000000000000181818000000
      0000000000000000000000000000404040004040400000000000000000000000
      0000000000003030300000000000000000000000000000000000181818000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003030300000000000000000000000000098989800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00000000000000000000000000181818000000
      0000000000003030300000000000000000000000000000000000303030000000
      0000000000003030300000000000000000000000000000000000000000005454
      5400000000000000000000000000000000000000000000000000000000000000
      0000707070000000000000000000000000000000000000000000000000005454
      5400000000000000000000000000000000000000000000000000000000000000
      0000707070000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005454
      5400000000000000000000000000000000000000000000000000000000000000
      0000707070000000000000000000000000000000000000000000000000000000
      0000242424000000000000000000000000000000000000000000000000003030
      3000000000000000000000000000000000000000000000000000000000000000
      0000242424000000000000000000000000000000000000000000000000003030
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000002C2C2C0000000000000000000000000000000000303030000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000242424000000000000000000000000000000000000000000000000003030
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000383838003C3C3C0088888800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000383838003C3C3C0088888800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB002C2C2C0000000000000000004C4C4C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007C7C7C00383838003C3C3C0084848400000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F30060606000181818001C1C1C0068686800F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000101010000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000003C3C
      3C00000000000000000000000000000000000000000000000000000000000000
      0000545454000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000000000000000000000000000101010000000
      0000000000000000000028282800000000000000000000000000000000000000
      0000000000002424240000000000000000000000000000000000000000000000
      0000707070000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300000000000000
      0000000000002828280000000000E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060606000000000000000
      00002828280000000000E7E7E700000000002828280000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018181800000000000000
      000000000000E7E7E700000000003C3C3C000000000028282800000000000000
      0000000000000000000038383800000000000000000000000000000000008888
      8800000000000000000000000000000000000000000000000000000000000000
      0000909090000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010100000000000000000001C1C1C00000000000000
      0000282828000000000000000000000000003C3C3C0000000000E7E7E7000000
      000000000000000000003C3C3C00000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A0A0A000000000000000000068686800000000000000
      000000000000000000000000000000000000000000003C3C3C0000000000E7E7
      E700000000000000000088888800000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000909090001010
      1000000000000000000000000000000000000000000000000000000000000000
      000010101000A0A0A000000000000000000000000000F7F7F700000000000000
      00000000000000000000000000000000000000000000000000003C3C3C000000
      0000282828000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000181818000000
      0000000000000000000000000000000000000000000000000000000000003C3C
      3C0000000000303030000000000000000000000000000000000000000000BFBF
      BF00000000008080800080808000404040004040400080808000808080000000
      0000BFBFBF000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005454
      5400000000000000000000000000000000000000000000000000000000000000
      0000707070000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BFBFBF00BFBFBF0000000000000000000000
      0000000000000000000000000000000000000000000080808000808080006868
      6800000000000000000000000000686868008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000242424000000000000000000000000000000000000000000000000003030
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000383838003C3C3C0088888800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000000000000000000000000000000000000000000000000000B4B4
      B400000000000000000000000000000000000000000000000000000000000000
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
      0000CFCFCF00E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400000000000000000000000000F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004C4C4C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006C6C6C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404000000
      0000000000000000000000000000F7F7F7000000000058585800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8A8A800000000000000000000000000000000000000
      0000000000000000000000000000444444003838380000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC0000000000000000000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000282828000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000141414000000
      000000000000000000000000000000000000D7D7D70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBEB00FBFBFB0000000000040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ACACAC0000000000000000008C8C8C00000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E7000000000000000000000000000000000000000000D7D7D700000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000242424001C1C1C0000000000000000000000
      00000000000000000000000000000000000000000000DBDBDB00000000000000
      0000000000000000000000000000000000000000000000000000D7D7D7000000
      000000000000000000000000000000000000000000000C0C0C00000000000000
      0000000000000000000000000000000000000000000028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB000000
      00000000000034343400D7D7D70000000000EFEFEF005C5C5C00000000000000
      000000000000000000000000000000000000EBEBEB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007878
      7800E7E7E7000000000000000000000000007C7C7C0000000000000000003C3C
      3C00282828000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CBCBCB00505050002020200040404000B0B0B000000000000000
      000000000000E7E7E70000000000000000006C6C6C00000000003C3C3C000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E7000000000000000000FBFBFB00000000000000
      0000000000001818180000000000000000000404040000000000000000000000
      0000000000000000000000000000000000000000000098989800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00000000000000000000000000000000004040
      4000808080008080800080808000808080008080800080808000000000000000
      0000909090000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181800000000000000000000000000F3F3F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000686868000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7D7
      D700000000000000000000000000505050000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00D3D3D30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFF7000000000000FFE3000000000000FFCF000000000000F08F000000000000
      E01F000000000000C73F000000000000CF9F000000000000CF9F000000000000
      CF9F000000000000CF1F000000000000E03F000000000000F07F000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFFFFFFFFF81FF81FFFFFF81F
      F00FF00F8001F00FE007E0078001E007C003C0038001C0038003800380018423
      8001800180018241800180018001818180018001800181818001800180018241
      8003800380018423C003C0038001C003E007E007F99FE007F00FF00FF81FF00F
      FC3FFC3FF83FFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FF81FFFFF
      F00FF00FF81FFFFFF00FE007F81FC0FF87E1C003F00FC04787E18203F00FC07F
      87E18501F00FC07F80018881E007C04380098041E007C07F80018021E007C041
      C0038013E007C041F00FC003E007807FF00FE007F66F807FF00FF00FF00FFFFF
      FFFFFC3FF00FFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFF1FFFFFFFFFFFF
      FFE0FFFFC003FFFFFFC08001C003FFFFFF039FF9C3C3FFFFFF079FF9C3C39F01
      F20F9FF9C1838F81C00F9FF9C0038FC1803F8001C003C101007F8001C003F001
      007F8001CFC3F839187F9FF9CFC3FFFDB87F8001C007FFFFF07FFFFFC00FFFFF
      E0FFFFFFFFFFFFFFF3FFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object UCControls1: TUCControls
    GroupName = 'Caixas'
    UserControl = FrmPrincipal.UserControl
    Components = ''
    MostraMessagemErroValidacao = False
    Left = 96
    Top = 420
  end
  object Tipo_Pagamento_Configuracao: TFDQuery
    FieldOptions.AutoCreateMode = acCombineComputed
    Connection = DMBanco.Banco
    SQL.Strings = (
      
        'SELECT TP.CODIGO, TP.DESCRICAO,TP.NF_TIPO_PAGTO as CODNF_TIPO_PA' +
        'GTO, NFT.DESCRICAO AS NF_TIPO_PAGTO, TEM_TEF, OBRIGACAO_DOC_FISC' +
        'AL, TIPO_DOC_FISCAL, '#39'N'#39' AS ACEITA_NO_CAIXA_ATUAL FROM TIPO_PAGA' +
        'MENTO TP'
      'LEFT JOIN NF_TIPO_PAGAMENTO NFT ON NFT.CODIGO = TP.NF_TIPO_PAGTO'
      'WHERE TP.ATIVO = '#39'S'#39
      'AND TP.NF_TIPO_PAGTO = :CODNF_TIPO_PAGTO'
      '')
    Left = 64
    Top = 232
    ParamData = <
      item
        Name = 'CODNF_TIPO_PAGTO'
        ParamType = ptInput
      end>
  end
  object TransaFinanceiroTEF: TFDTransaction
    Options.Isolation = xiReadCommitted
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 116
    Top = 296
  end
  object IconListTEF: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 27328576
    ImageInfo = <
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
          8F70662A000000097048597300002E2300002E230178A53F7600000186494441
          54789C7D53BD4A034110DE392E8D604423F1248D9D28DADB1992E033041BC90B
          88E003F80E3E8508160A626548699742C5D6E6C26920E6470362B2E3B73F8777
          7B89037B3337FBCD37DFECEDF9CC2C5CEB95CB5B39DF3F4EE67E2693F39556EB
          C5C5FA7130A854363CA20B842514E7E1F349207287A36A75883094CCF5A566F3
          354580E20613751176339262233258211A70672902141F607B6F6E71C2805DCD
          101073A83B303FC1EFD8F4BBF545EB1FB17635D6DA9F02CC4686FD14FE56ED21
          77A7C98538525B528813C8BF57D8B90424655178DE1BC292A3FC03EA9695CA99
          045E9CF4BC00CF6806418406410A9B24C0A7093DC31EA05344F6C4530444418C
          CD2A984E3BE82E7417A2C8AD56A4C8AF6BAC945982F170182E140A0AA8081E32
          F56A2CE64DA56C3C1874165D82B576FB6B54ABF5511CB09937656454ED63F515
          36A3C09A9216B09411611CF70C8439C430999C45B08DEE9FBAABB90BF1DFD617
          E6423DCF25B07781D0FDC6A6EAA479B45D61E5F85F05525EE24B7CBBDA1DCC75
          F2F517C6628BE5D0E4A0DA0000000049454E44AE426082}
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
          8F70662A000000097048597300002E2300002E230178A53F760000016F494441
          54789C95933D4BC35014869BF4DE10A54B2717D14D517090EAA016C4C5C526E0
          24A2BF416717510471109C9D9CBA083A247EE12282BAE81F70129C7412319821
          98F85C6820A637951E38BCB7E7BEE73D1F3715499294526B341A338661ACE046
          A9C0E01FFBBE7F93FE16D94BD334B7811748CF05F955B4B740BD0026493EA1C2
          952E9B0E071198CBC6F2025D9B705D770ADCA0B2447D0CDF711C675D4766C41E
          6084FB4BF007DB531DACE24E666F131D76A8EC338EE303C4968410CB82CA9D96
          DE66F0BFA87C8FC028E7A1AE7740B17ECBB2DE38F62270A813580882E05A975C
          A954E68173754C636D02A8C6109BE074AEF203B1A3FCB86A0717609D0B090EA8
          6018866BE572B99A2532F7876DDBE31CBFF157F222952BCE3002CA4B3CE9AD42
          88FB08D6739DDD014DFCC9F3BCD9C211944551B449077DB90EDEA594C379AE56
          802DAB0F6B321B43F091D8E97F02315E6B11FF905BFFDA5A8BA317E00BDB65F6
          45F5D6BACE12F54470B2B15F463998AC16A79F340000000049454E44AE426082}
      end>
  end
  object WREventosCadastro: TWREventosCadastro
    OnImpressaoBeforePrint = WREventosCadastroImpressaoBeforePrint
    Versao_Configuracao = 6
    Empresa = 0
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    Left = 119
    Top = 144
  end
end
