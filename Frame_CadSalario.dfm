inherited Frame_Salario: TFrame_Salario
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 822
      TabOrder = 5
      ExplicitLeft = 822
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 655
      TabOrder = 3
      ExplicitLeft = 655
      ExplicitWidth = 122
      Width = 122
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 29
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 30
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 778
      TabOrder = 4
      ExplicitLeft = 778
    end
    object edtSalarioMensal: TcxDBCurrencyEdit [6]
      Left = 30
      Top = 82
      DataBinding.DataField = 'SALARIO'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 90
    end
    object edtDecimoTerceiroAnual: TcxDBCurrencyEdit [7]
      Left = 121
      Top = 83
      DataBinding.DataField = 'DECIMO_TERCEIRO_ANUAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 72
    end
    object edtFuncionarioÎPessoas: TcxDBButtonEdit [8]
      Tag = 37
      Left = 71
      Top = 24
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'PESSOA_FUNCIONARIO_SEQUENCIA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.Buttons = <
        item
          Enabled = False
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.OnValidate = edtFuncionarioÎPessoasPropertiesValidate
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 23
      Width = 82
    end
    object edtFuncionarioÎPessoasÎRAZAOSOCIAL: TcxLabel [9]
      Left = 154
      Top = 24
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      Height = 23
      Width = 500
    end
    object edtFeriasAnual: TcxDBCurrencyEdit [10]
      Left = 194
      Top = 83
      DataBinding.DataField = 'FERIAS_ANUAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 84
    end
    object edtEncargosAnual: TcxDBCurrencyEdit [11]
      Left = 480
      Top = 82
      AutoSize = False
      DataBinding.DataField = 'OUTROS_ENCARGOS_ANUAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Height = 20
      Width = 135
    end
    object edtOutrosVenctos: TcxDBCurrencyEdit [12]
      Left = 279
      Top = 82
      AutoSize = False
      DataBinding.DataField = 'BENEFICIOS_ANUAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Height = 20
      Width = 200
    end
    object edtHorasTrabalhadas: TcxDBCurrencyEdit [13]
      Left = 30
      Top = 147
      DataBinding.DataField = 'QTD_HORAS_TRABALHADAS_MENSAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.OnValidate = edtValoresValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Width = 138
    end
    object edtValorHora: TcxDBCurrencyEdit [14]
      Left = 358
      Top = 193
      AutoSize = False
      DataBinding.DataField = 'VALOR_HORA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0.00;-,0.00'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 19
      Height = 53
      Width = 236
    end
    object edtDecimoTerceiro: TcxDBCurrencyEdit [15]
      Left = 30
      Top = 245
      DataBinding.DataField = 'DECIMO_TERCEIRO_MENSAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Width = 157
    end
    object edtFeriasMensal: TcxDBCurrencyEdit [16]
      Left = 30
      Top = 279
      DataBinding.DataField = 'FERIAS_MENSAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Width = 157
    end
    object edtEncargosMensal: TcxDBCurrencyEdit [17]
      Left = 30
      Top = 347
      DataBinding.DataField = 'OUTROS_ENCARGOS_MENSAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Width = 157
    end
    object edtOutrosMensal: TcxDBCurrencyEdit [18]
      Left = 30
      Top = 313
      DataBinding.DataField = 'BENEFICIOS_MENSAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Width = 157
    end
    object edtSalario: TcxDBCurrencyEdit [19]
      Left = 30
      Top = 211
      DataBinding.DataField = 'SALARIO'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Width = 157
    end
    object edtHoras: TcxDBCurrencyEdit [20]
      Left = 200
      Top = 227
      AutoSize = False
      DataBinding.DataField = 'QTD_HORAS_TRABALHADAS_MENSAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      Height = 19
      Width = 157
    end
    object edtTotalMensal: TcxDBCurrencyEdit [21]
      Left = 200
      Top = 193
      DataBinding.DataField = 'TOTAL_MENSAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      Width = 157
    end
    object edtAviso: TcxLabel [22]
      Left = 200
      Top = 252
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
      AnchorX = 397
    end
    object btnAtualizarPreco: TcxButton [23]
      AlignWithMargins = True
      Left = 30
      Top = 463
      Width = 116
      Height = 33
      Hint = 'Finalizar'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 15
      Caption = 'Atualizar Pre'#231'o'
      OptionsImage.Images = ImgListBotoes16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 25
      OnClick = btnAtualizarPrecoClick
    end
    object edtCodProdutoÎPRODUTO: TcxDBButtonEdit [24]
      Left = 30
      Top = 411
      AutoSize = False
      DataBinding.DataField = 'CODSERVICO_VINCULADO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 113
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 21
      Height = 21
      Width = 62
    end
    object edtCodProdutoÎPRODUTOÎDESCRICAO: TcxTextEdit [25]
      Left = 93
      Top = 411
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      Width = 261
    end
    object edtValorAtualizado: TcxDBCurrencyEdit [26]
      Left = 152
      Top = 477
      AutoSize = False
      DataBinding.DataField = 'SERVICO_VALOR_ATUALIZADO'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 26
      Height = 19
      Width = 157
    end
    object edtValorAnterior: TcxDBCurrencyEdit [27]
      Left = 310
      Top = 477
      AutoSize = False
      DataBinding.DataField = 'SERVICO_VALOR_ANTERIOR'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = ',0.00;-,0.00'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 27
      Height = 19
      Width = 157
    end
    object lblAlteracao: TcxLabel [28]
      Left = 30
      Top = 502
      Caption = 'Alterado por ADMINISTRADOR em 10/10/2022 15:00:00.'
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
      AnchorX = 249
    end
    object btnNovoServico: TcxButton [29]
      AlignWithMargins = True
      Left = 355
      Top = 398
      Width = 116
      Height = 33
      Hint = 'Finalizar'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 15
      Caption = 'Criar Novo Servi'#231'o'
      OptionsImage.Images = ImgListBotoes16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 23
      OnClick = btnNovoServicoClick
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [30]
      Left = 484
      Top = 379
      AutoSize = False
      DataBinding.DataField = 'CODIGO'
      DataBinding.DataSource = DSProduto
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 113
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 24
      Height = 65
      Width = 62
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 5
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited LiedtDescricao: TdxLayoutItem
      Visible = False
      ControlOptions.OriginalWidth = 122
      Index = 3
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 4
    end
    object liedtSalarioMensal: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Sal'#225'rio Mensal(R$)'
      CaptionOptions.Layout = clTop
      Control = edtSalarioMensal
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtDecimoTerceiroAnual: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = '13'#176' Anual (R$)'
      CaptionOptions.Layout = clTop
      Control = edtDecimoTerceiroAnual
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtFuncionarioÎPessoas: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'd. Funcion'#225'rio'
      CaptionOptions.Layout = clTop
      Control = edtFuncionarioÎPessoas
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtFuncionarioÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtFuncionarioÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 1433
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtFeriasAnual: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'F'#233'rias Anual (R$)'
      CaptionOptions.Layout = clTop
      Control = edtFeriasAnual
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtEncargosAnual: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Outros Encargos Anual (R$)'
      CaptionOptions.Layout = clTop
      Control = edtEncargosAnual
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 135
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Valores'
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object liedtOutrosVenctos: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Benef'#237'cios Anual(R$)'
      CaptionOptions.Layout = clTop
      Control = edtOutrosVenctos
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Horas Trabalhadas Mensais'
      CaptionOptions.Layout = clTop
      Control = edtHorasTrabalhadas
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Produ'#231#227'o'
      Index = 4
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'Valor/Hora'
      CaptionOptions.Layout = clTop
      Control = edtValorHora
      ControlOptions.OriginalHeight = 48
      ControlOptions.OriginalWidth = 236
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtDecimoTerceiro: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Text = '13'#176' Mensal (R$)'
      CaptionOptions.Layout = clTop
      Control = edtDecimoTerceiro
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtFeriasMensal: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'F'#233'rias Mensal (R$)'
      CaptionOptions.Layout = clTop
      Control = edtFeriasMensal
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtEncargosMensal: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Outros Encargos Mensal (R$)'
      CaptionOptions.Layout = clTop
      Control = edtEncargosMensal
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtOutrosMensal: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Benef'#237'cios Mensal (R$)'
      CaptionOptions.Layout = clTop
      Control = edtOutrosMensal
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtSalario: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Sal'#225'rio (R$)'
      CaptionOptions.Layout = clTop
      Control = edtSalario
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtHoras: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Horas Mensais'
      CaptionOptions.Layout = clTop
      Control = edtHoras
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'C'#225'lculo do Valor/Hora'
      ItemIndex = 3
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Total Mensal (R$)'
      CaptionOptions.Layout = clTop
      Control = edtTotalMensal
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liedtAviso: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      Visible = False
      Padding.Top = 5
      Padding.AssignedValues = [lpavTop]
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = edtAviso
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAtualizarPreco
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
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
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 261
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup7
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
      Parent = dxLayoutGroup7
      AlignVert = avBottom
      CaptionOptions.Text = 'Valor Anterior'
      CaptionOptions.Layout = clTop
      Control = edtValorAnterior
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lilblAlteracao: TdxLayoutItem
      Parent = dxLayoutGroup6
      Offsets.Top = 5
      Visible = False
      CaptionOptions.Visible = False
      Control = lblAlteracao
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 357
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Atualizar Pre'#231'os'
      Index = 7
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Servi'#231'o Vinculado'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignVert = avCenter
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnNovoServico
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 6
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIO_SALARIO'
      'WHERE CODIGO = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'FUNCIONARIO_SALARIO'
    Modulo = 'FINANCEIRO'
  end
  object Produto: TFDQuery
    MasterSource = DS
    MasterFields = 'CODSERVICO_VINCULADO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'SELECT P.* FROM PRODUTO P'
      'WHERE P.CODIGO = :CODSERVICO_VINCULADO')
    Left = 312
    Top = 160
    ParamData = <
      item
        Name = 'CODSERVICO_VINCULADO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
  end
  object DSProduto: TDataSource
    DataSet = Produto
    Left = 340
    Top = 160
  end
  object UCHist_Produto: TUCHist_DataSet
    OnAddHistorico = UCHist_SeguidorAddHistorico
    DataSet = Produto
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    Left = 368
    Top = 160
  end
  object Usuario: TFDQuery
    MasterSource = DS
    MasterFields = 'CODUSUARIO_ATUALIZACAO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'SELECT U.USUARIO FROM USUARIO U'
      'WHERE U.CODIGO = :CODUSUARIO_ATUALIZACAO')
    Left = 312
    Top = 188
    ParamData = <
      item
        Name = 'CODUSUARIO_ATUALIZACAO'
        ParamType = ptInput
      end>
  end
end
