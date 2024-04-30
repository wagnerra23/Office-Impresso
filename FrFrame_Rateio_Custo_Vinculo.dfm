object Frame_Rateio_Custo_Vinculo: TFrame_Rateio_Custo_Vinculo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Centro de Custo Financeiro'
  ClientHeight = 440
  ClientWidth = 810
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 810
    Height = 440
    Align = alClient
    TabOrder = 0
    OnMouseMove = dxLayoutControl1MouseMove
    DesignSize = (
      810
      440)
    object edtSalarioMensal: TcxDBCurrencyEdit
      Left = 148
      Top = 133
      DataBinding.DataField = 'SALARIO'
      DataBinding.DataSource = DSExterno
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtSalarioMensalPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      OnKeyPress = edtSalarioMensalKeyPress
      Width = 90
    end
    object edtDecimoTerceiroAnual: TcxDBCurrencyEdit
      Left = 244
      Top = 133
      DataBinding.DataField = 'DECIMO_TERCEIRO_ANUAL'
      DataBinding.DataSource = DSExterno
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtSalarioMensalPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      OnKeyPress = edtSalarioMensalKeyPress
      Width = 72
    end
    object edtFuncionario: TcxLabel
      Left = 10
      Top = 42
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Height = 23
      Width = 790
    end
    object edtFeriasAnual: TcxDBCurrencyEdit
      Left = 322
      Top = 133
      DataBinding.DataField = 'FERIAS_ANUAL'
      DataBinding.DataSource = DSExterno
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtSalarioMensalPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      OnKeyPress = edtSalarioMensalKeyPress
      Width = 84
    end
    object edtEncargosAnual: TcxDBCurrencyEdit
      Left = 618
      Top = 133
      AutoSize = False
      DataBinding.DataField = 'OUTROS_ENCARGOS_ANUAL'
      DataBinding.DataSource = DSExterno
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtSalarioMensalPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      OnKeyPress = edtSalarioMensalKeyPress
      Height = 20
      Width = 135
    end
    object edtOutrosVenctos: TcxDBCurrencyEdit
      Left = 412
      Top = 134
      AutoSize = False
      DataBinding.DataField = 'BENEFICIOS_ANUAL'
      DataBinding.DataSource = DSExterno
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtSalarioMensalPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      OnKeyPress = edtSalarioMensalKeyPress
      Height = 20
      Width = 200
    end
    object edtHorasTrabalhadas: TcxDBCurrencyEdit
      Left = 10
      Top = 133
      AutoSize = False
      DataBinding.DataField = 'QTD_HORAS_TRABALHADAS_MENSAL'
      DataBinding.DataSource = DSExterno
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtSalarioMensalPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      OnKeyPress = edtSalarioMensalKeyPress
      Height = 21
      Width = 132
    end
    object edtValorHora: TcxDBCurrencyEdit
      Left = 173
      Top = 226
      AutoSize = False
      DataBinding.DataField = 'VALOR_HORA'
      DataBinding.DataSource = DSExterno
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0.00;-,0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 13
      OnKeyPress = edtSalarioMensalKeyPress
      Height = 64
      Width = 236
    end
    object edtHoras: TcxDBCurrencyEdit
      Left = 10
      Top = 271
      AutoSize = False
      DataBinding.DataField = 'QTD_HORAS_TRABALHADAS_MENSAL'
      DataBinding.DataSource = DSExterno
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      OnKeyPress = edtSalarioMensalKeyPress
      Height = 19
      Width = 157
    end
    object edtTotalMensal: TcxDBCurrencyEdit
      Left = 10
      Top = 226
      DataBinding.DataField = 'TOTAL_MENSAL'
      DataBinding.DataSource = DSExterno
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      OnKeyPress = edtSalarioMensalKeyPress
      OnMouseMove = edtTotalMensalMouseMove
      Width = 157
    end
    object edtAviso: TcxLabel
      Left = 415
      Top = 245
      AutoSize = False
      Caption = 'Insira os valores e Horas trabalhas para calcular o Valor/Hora.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clRed
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      Height = 13
      Width = 378
      AnchorX = 604
    end
    object btnAtualizarPreco: TcxButton
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Width = 116
      Height = 25
      Hint = 'Finalizar'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 15
      Caption = 'Atualizar Pre'#231'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      Visible = False
    end
    object edtCodProdutoÎPRODUTO: TcxDBButtonEdit
      Left = 10
      Top = 362
      AutoSize = False
      DataBinding.DataField = 'CODSERVICO_VINCULADO'
      DataBinding.DataSource = DSExterno
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 113
      Properties.OnEditValueChanged = edtCodProdutoÎPRODUTOPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 16
      OnKeyPress = edtSalarioMensalKeyPress
      Height = 21
      Width = 62
    end
    object edtCodProdutoÎPRODUTOÎDESCRICAO: TcxTextEdit
      Left = 78
      Top = 362
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      OnKeyPress = edtSalarioMensalKeyPress
      Width = 261
    end
    object edtValorAtualizado: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'SERVICO_VALOR_ATUALIZADO'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 21
      Visible = False
      Height = 19
      Width = 157
    end
    object edtValorAnterior: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'SERVICO_VALOR_ANTERIOR'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      Visible = False
      Height = 19
      Width = 157
    end
    object btnNovoServico: TcxButton
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Width = 116
      Height = 33
      Hint = 'Finalizar'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 15
      Caption = 'Criar Novo Servi'#231'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 23
      Visible = False
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 15
      Caption = 'Funcion'#225'rio'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 88
      Caption = 'Preencher Valores'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 10
      Top = 181
      Caption = 'Valores Calculados'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 10
      Top = 317
      AutoSize = False
      Caption = 'Vincular Servi'#231'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 18
      Width = 790
    end
    object btnFechar: TcxButton
      Left = 662
      Top = 405
      Width = 138
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
    object btnBuscaServico: TcxButton
      Left = 345
      Top = 358
      Width = 232
      Height = 25
      Caption = 'Buscar servi'#231'o vinculado ao Funcion'#225'rio'
      TabOrder = 18
      OnClick = btnBuscaServicoClick
    end
    object btnCriarServico: TcxButton
      Left = 583
      Top = 358
      Width = 146
      Height = 25
      Caption = 'Criar Servi'#231'o Vinculado'
      TabOrder = 19
      OnClick = btnCriarServicoClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 5
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Valores'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object liedtSalarioMensal: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Sal'#225'rio Mensal(R$)'
      CaptionOptions.Layout = clTop
      Control = edtSalarioMensal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtDecimoTerceiroAnual: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = '13'#176' Anual (R$)'
      CaptionOptions.Layout = clTop
      Control = edtDecimoTerceiroAnual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtFeriasAnual: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'F'#233'rias Anual (R$)'
      CaptionOptions.Layout = clTop
      Control = edtFeriasAnual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtOutrosVenctos: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Benef'#237'cios Anual(R$)'
      CaptionOptions.Layout = clTop
      Control = edtOutrosVenctos
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtEncargosAnual: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Outros Encargos Anual (R$)'
      CaptionOptions.Layout = clTop
      Control = edtEncargosAnual
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 135
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Horas Trabalhadas Mensais'
      CaptionOptions.Layout = clTop
      Control = edtHorasTrabalhadas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 132
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Total Mensal (R$)'
      CaptionOptions.Layout = clTop
      Control = edtTotalMensal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtHoras: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Horas Mensais'
      CaptionOptions.Layout = clTop
      Control = edtHoras
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avClient
      CaptionOptions.Text = 'Valor/Hora'
      CaptionOptions.Layout = clTop
      Control = edtValorHora
      ControlOptions.OriginalHeight = 48
      ControlOptions.OriginalWidth = 236
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtAviso: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      Visible = False
      Padding.Top = 5
      Padding.AssignedValues = [lpavTop]
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = edtAviso
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 378
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Servi'#231'o Vinculado'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo do'
      CaptionOptions.Layout = clTop
      Control = edtCodProdutoÎPRODUTO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Servi'#231'o'
      CaptionOptions.Layout = clTop
      Control = edtCodProdutoÎPRODUTOÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 261
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnNovoServico
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object liAtualizarValor: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = liAtualizarValor
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAtualizarPreco
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = liAtualizarValor
      AlignVert = avClient
      Offsets.Left = 5
      CaptionOptions.Text = 'Valor Atualizado'
      CaptionOptions.Layout = clTop
      Control = edtValorAtualizado
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = liAtualizarValor
      AlignVert = avBottom
      CaptionOptions.Text = 'Valor Anterior'
      CaptionOptions.Layout = clTop
      Control = edtValorAnterior
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtFuncionarioÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Funcion'#225'rio'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtFuncionario
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 500
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 3
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 3
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 3
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 3
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Visible = False
      Control = cxLabel4
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      Padding.Top = 10
      Padding.AssignedValues = [lpavTop]
      CaptionOptions.Text = 'Separator'
      Index = 6
    end
    object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      Padding.Top = 10
      Padding.AssignedValues = [lpavTop]
      CaptionOptions.Text = 'Separator'
      Index = 9
    end
    object dxLayoutSeparatorItem4: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      Padding.Top = 10
      Padding.AssignedValues = [lpavTop]
      CaptionOptions.Text = 'Separator'
      Index = 12
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnFechar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object libtnBuscaServico: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnBuscaServico
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 232
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 11
    end
    object libtnCriarServico: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Visible = False
      Control = btnCriarServico
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 146
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object pnlValorHora: TPanel
    Left = 167
    Top = 86
    Width = 200
    Height = 276
    Caption = 'pnlValorHora'
    TabOrder = 1
    Visible = False
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 198
      Height = 274
      Align = alClient
      TabOrder = 0
      object edtDecimoTerceiro: TcxDBCurrencyEdit
        Left = 22
        Top = 96
        DataBinding.DataField = 'DECIMO_TERCEIRO_MENSAL'
        DataBinding.DataSource = DSExterno
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = cl3DLight
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        Width = 154
      end
      object edtFeriasMensal: TcxDBCurrencyEdit
        Left = 22
        Top = 141
        DataBinding.DataField = 'FERIAS_MENSAL'
        DataBinding.DataSource = DSExterno
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = cl3DLight
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 2
        Width = 154
      end
      object edtEncargosMensal: TcxDBCurrencyEdit
        Left = 22
        Top = 231
        DataBinding.DataField = 'OUTROS_ENCARGOS_MENSAL'
        DataBinding.DataSource = DSExterno
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = cl3DLight
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 4
        Width = 154
      end
      object edtOutrosMensal: TcxDBCurrencyEdit
        Left = 22
        Top = 186
        DataBinding.DataField = 'BENEFICIOS_MENSAL'
        DataBinding.DataSource = DSExterno
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = cl3DLight
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 3
        Width = 154
      end
      object edtSalario: TcxDBCurrencyEdit
        Left = 22
        Top = 51
        DataBinding.DataField = 'SALARIO'
        DataBinding.DataSource = DSExterno
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = cl3DLight
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 0
        Width = 154
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutGroup5: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'C'#225'lculo do Valor/Hora'
        Index = 0
      end
      object liedtSalario: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignVert = avBottom
        CaptionOptions.Text = 'Sal'#225'rio (R$)'
        CaptionOptions.Layout = clTop
        Control = edtSalario
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 157
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object liedtDecimoTerceiro: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignVert = avBottom
        CaptionOptions.Text = '13'#176' Mensal (R$)'
        CaptionOptions.Layout = clTop
        Control = edtDecimoTerceiro
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 138
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liedtFeriasMensal: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignVert = avBottom
        CaptionOptions.Text = 'F'#233'rias Mensal (R$)'
        CaptionOptions.Layout = clTop
        Control = edtFeriasMensal
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 138
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object liedtOutrosMensal: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignVert = avBottom
        CaptionOptions.Text = 'Benef'#237'cios Mensal (R$)'
        CaptionOptions.Layout = clTop
        Control = edtOutrosMensal
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 138
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object liedtEncargosMensal: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignVert = avBottom
        CaptionOptions.Text = 'Outros Encargos Mensal (R$)'
        CaptionOptions.Layout = clTop
        Control = edtEncargosMensal
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 138
        ControlOptions.ShowBorder = False
        Index = 4
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 429
    Top = 224
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
  object DS: TDataSource
    DataSet = RateioFuncionarioSalario
    Left = 401
    Top = 224
  end
  object RateioFuncionarioSalario: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSExterno
    MasterFields = 'PESSOA_FUNCIONARIO_CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT FS.*, CT.DESCRICAO AS EQUIPE FROM FUNCIONARIO_SALARIO FS'
      'LEFT JOIN CENTRO_TRABALHO CT ON CT.CODIGO = FS.CODEQUIPE'
      'WHERE FS.COMPETENCIA BETWEEN :D1 AND :D2'
      'AND FS.PESSOA_FUNCIONARIO_CODIGO = :PESSOA_FUNCIONARIO_CODIGO'
      'AND COALESCE(FS.CODEQUIPE, 0) <> 0'
      '')
    Left = 373
    Top = 224
    ParamData = <
      item
        Name = 'D1'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'D2'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'PESSOA_FUNCIONARIO_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object DSExterno: TDataSource
    Left = 400
    Top = 196
  end
  object TransaFD: TFDTransaction
    Options.Isolation = xiReadCommitted
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 428
    Top = 196
  end
  object DSPessoaSelecionada: TDataSource
    Left = 456
    Top = 196
  end
end
