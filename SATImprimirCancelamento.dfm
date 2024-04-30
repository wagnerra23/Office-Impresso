object FrmSATImprimir: TFrmSATImprimir
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'WR2 Sistemas - Office Impresso'
  ClientHeight = 206
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 41
    Width = 507
    Height = 165
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 120
    ExplicitTop = 40
    ExplicitWidth = 300
    ExplicitHeight = 250
    object RbCancelamento: TcxRadioButton
      Left = 10
      Top = 50
      Width = 487
      Height = 17
      Caption = 'Extrato do Cancelamento'
      Checked = True
      TabOrder = 3
      TabStop = True
    end
    object RbCupom: TcxRadioButton
      Left = 10
      Top = 73
      Width = 487
      Height = 17
      Caption = 'Extrato do Cupom'
      TabOrder = 4
    end
    object LbPergunta: TcxLabel
      Left = 10
      Top = 10
      Caption = 
        'O cupom que voc'#234' est'#225' imprimindo est'#225' Cancelado. Qual extrato vo' +
        'c'#234' deseja imprimir?'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object BtnImprimir: TcxButton
      Left = 363
      Top = 130
      Width = 134
      Height = 25
      Caption = 'Imprimir'
      Default = True
      ModalResult = 1
      TabOrder = 6
    end
    object BtnCancelar: TcxButton
      Left = 282
      Top = 130
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 5
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object LiRbCancelamento: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Offsets.Top = 15
      Control = RbCancelamento
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiRbCupom: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Visible = False
      Control = RbCupom
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiLbTitulo: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = LbPergunta
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 467
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiBtnImprimir: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = BtnImprimir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiBtnCancelar: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = BtnCancelar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
  end
  object PnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 507
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 18
    ExplicitTop = 18
    ExplicitWidth = 516
    object LbTitulo: TcxLabel
      AlignWithMargins = True
      Left = 10
      Top = 3
      Margins.Left = 10
      Align = alClient
      Caption = 'Impress'#227'o de SAT Cancelado'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = []
      Style.TextColor = 12615680
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 514
      ExplicitHeight = 39
      AnchorY = 21
    end
  end
end
