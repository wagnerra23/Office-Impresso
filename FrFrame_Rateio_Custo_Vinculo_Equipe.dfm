object Frame_Rateio_Custo_Vinculo_Equipe: TFrame_Rateio_Custo_Vinculo_Equipe
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Centro de Custo Financeiro'
  ClientHeight = 340
  ClientWidth = 427
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
    Width = 427
    Height = 340
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 877
    ExplicitHeight = 362
    DesignSize = (
      427
      340)
    object edtEquipe: TcxLabel
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
      Width = 407
    end
    object edtValorHora: TcxCurrencyEdit
      Left = 173
      Top = 125
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = cl3DLight
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 64
      Width = 236
    end
    object edtHoras: TcxCurrencyEdit
      Left = 10
      Top = 170
      AutoSize = False
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 19
      Width = 157
    end
    object edtTotalMensal: TcxCurrencyEdit
      Left = 10
      Top = 125
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 157
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
      TabOrder = 10
      Visible = False
    end
    object edtCodProdutoÎPRODUTO: TcxDBButtonEdit
      Left = 10
      Top = 261
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO'
      DataBinding.DataSource = DSExterno
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 113
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 8
      Height = 21
      Width = 62
    end
    object edtCodProdutoÎPRODUTOÎDESCRICAO: TcxTextEdit
      Left = 78
      Top = 261
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
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
      TabOrder = 11
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
      TabOrder = 12
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
      TabOrder = 13
      Visible = False
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 15
      Caption = 'Equipe'
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
      Top = 216
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
      Width = 407
    end
    object btnFechar: TcxButton
      Left = 279
      Top = 305
      Width = 138
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 83
      Caption = 'C'#225'lculo Valores'
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
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 4
      ShowBorder = False
      Index = -1
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
      CaptionOptions.Text = 'Custo Total Mensal (R$)'
      CaptionOptions.Layout = clTop
      Control = edtTotalMensal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtHoras: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Total Horas Mensais'
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
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Servi'#231'o Vinculado'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
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
      Control = edtEquipe
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
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
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
      Index = 7
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      Padding.Top = 10
      Padding.AssignedValues = [lpavTop]
      CaptionOptions.Text = 'Separator'
      Index = 6
    end
    object dxLayoutSeparatorItem4: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      Padding.Top = 10
      Padding.AssignedValues = [lpavTop]
      CaptionOptions.Text = 'Separator'
      Index = 9
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
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 4
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
end
