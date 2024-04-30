inherited Frame_Equipamento_Veiculo: TFrame_Equipamento_Veiculo
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 680
      TabOrder = 4
      ExplicitLeft = 680
    end
    inherited edtDescricao: TcxDBTextEdit
      ExplicitWidth = 225
      Width = 225
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 25
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 26
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 636
      TabOrder = 3
      ExplicitLeft = 636
    end
    object EdtClienteÎPessoas: TcxDBButtonEdit [6]
      Left = 297
      Top = 24
      Hint = 'F2 - Consulta / Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'PESSOA_CLIENTE_SEQUENCIA'
      DataBinding.DataSource = DS
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
      Style.HotTrack = False
      TabOrder = 2
      Height = 21
      Width = 71
    end
    object EdtClienteÎPessoasÎRAZAOSOCIAL: TLabel [7]
      Left = 369
      Top = 26
      Width = 266
      Height = 19
      AutoSize = False
      Color = 16505534
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object edtChassi: TcxDBTextEdit [8]
      Left = 30
      Top = 83
      DataBinding.DataField = 'CHASSI'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 5
      Width = 135
    end
    object edtHP: TcxDBTextEdit [9]
      Left = 166
      Top = 83
      DataBinding.DataField = 'HP'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 6
      Width = 126
    end
    object edtCilindrada: TcxDBTextEdit [10]
      Left = 293
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'CILINDRADA'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 125
    end
    object edtCombustivel: TcxDBTextEdit [11]
      Left = 419
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'COMBUSTIVEL'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 8
      Height = 21
      Width = 126
    end
    object edtMotor: TcxDBTextEdit [12]
      Left = 546
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'MOTOR'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 9
      Height = 21
      Width = 190
    end
    object edtRenavam: TcxDBTextEdit [13]
      Left = 737
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'RENAVAN'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 10
      Height = 21
      Width = 191
    end
    object edtAnoMod: TcxDBTextEdit [14]
      Left = 30
      Top = 119
      AutoSize = False
      DataBinding.DataField = 'ANO_MODELO'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 11
      Height = 21
      Width = 105
    end
    object edtAnoFab: TcxDBTextEdit [15]
      Left = 136
      Top = 119
      AutoSize = False
      DataBinding.DataField = 'ANO_FABRICACAO'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 12
      Height = 21
      Width = 104
    end
    object edtKilometragem: TcxDBTextEdit [16]
      Left = 241
      Top = 119
      AutoSize = False
      DataBinding.DataField = 'KM'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 13
      Height = 21
      Width = 126
    end
    object edtNrPassageiros: TcxDBTextEdit [17]
      Left = 368
      Top = 119
      AutoSize = False
      DataBinding.DataField = 'PASSAGEIROS'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 14
      Height = 21
      Width = 127
    end
    object edtPlaca: TcxDBTextEdit [18]
      Left = 496
      Top = 119
      AutoSize = False
      DataBinding.DataField = 'PLACA'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 15
      Height = 21
      Width = 143
    end
    object edtPesoLiquido: TcxDBTextEdit [19]
      Left = 640
      Top = 119
      AutoSize = False
      DataBinding.DataField = 'PESO_LIQUIDO'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 16
      Height = 21
      Width = 144
    end
    object edtPesoBruto: TcxDBTextEdit [20]
      Left = 785
      Top = 119
      AutoSize = False
      DataBinding.DataField = 'PESO_BRUTO'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 17
      Height = 21
      Width = 143
    end
    object edtNrSerie: TcxDBTextEdit [21]
      Left = 30
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'NUMERO_SERIE'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 18
      Height = 21
      Width = 149
    end
    object edtCMOD: TcxDBTextEdit [22]
      Left = 180
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'CMOD'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 19
      Height = 21
      Width = 149
    end
    object edtTipo: TcxDBTextEdit [23]
      Left = 330
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 149
    end
    object edtEspecie: TcxDBTextEdit [24]
      Left = 480
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'ESPECIE'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 148
    end
    object edtDIST: TcxDBTextEdit [25]
      Left = 629
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'DIST'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 22
      Height = 21
      Width = 149
    end
    object edtCondicao: TcxDBTextEdit [26]
      Left = 779
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'CONDICAO_VEICULO'
      DataBinding.DataSource = DSEquipamento_Veiculo
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 149
    end
    object MemoObservacao: TcxDBMemo [27]
      Left = 30
      Top = 207
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 24
      Height = 89
      Width = 898
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited LiedtDescricao: TdxLayoutItem
      ControlOptions.OriginalWidth = 225
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = EdtClienteÎPessoas
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = EdtClienteÎPessoasÎRAZAOSOCIAL
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 266
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Chassi'
      CaptionOptions.Layout = clTop
      Control = edtChassi
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'HP'
      CaptionOptions.Layout = clTop
      Control = edtHP
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Cilindrada'
      CaptionOptions.Layout = clTop
      Control = edtCilindrada
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Combust'#237'vel'
      CaptionOptions.Layout = clTop
      Control = edtCombustivel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Motor'
      CaptionOptions.Layout = clTop
      Control = edtMotor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 144
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Renavam'
      CaptionOptions.Layout = clTop
      Control = edtRenavam
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 144
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Ano/Mod.'
      CaptionOptions.Layout = clTop
      Control = edtAnoMod
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Ano/Fab.'
      CaptionOptions.Layout = clTop
      Control = edtAnoFab
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Kilometragem'
      CaptionOptions.Layout = clTop
      Control = edtKilometragem
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'N'#176' Passageiros'
      CaptionOptions.Layout = clTop
      Control = edtNrPassageiros
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Placa'
      CaptionOptions.Layout = clTop
      Control = edtPlaca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Peso L'#237'quido'
      CaptionOptions.Layout = clTop
      Control = edtPesoLiquido
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Peso Bruto'
      CaptionOptions.Layout = clTop
      Control = edtPesoBruto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'N'#176' de S'#233'rie'
      CaptionOptions.Layout = clTop
      Control = edtNrSerie
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'CMOD'
      CaptionOptions.Layout = clTop
      Control = edtCMOD
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = edtTipo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Esp'#233'cie'
      CaptionOptions.Layout = clTop
      Control = edtEspecie
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'DIST'
      CaptionOptions.Layout = clTop
      Control = edtDIST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Condi'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtCondicao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Informa'#231#245'es do Ve'#237'culo'
      Offsets.Top = 3
      Index = 3
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup5
      Control = MemoObservacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Observa'#231#227'o'
      Index = 4
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmEquipamento'
    FormClassConsulta = 'TFrmEquipamento'
  end
  inherited Cadastro: TFDQuery
    AfterEdit = CadastroAfterEdit
    SQL.Strings = (
      'SELECT E.* FROM EQUIPAMENTO E'
      'WHERE E.CODIGO = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    Tabela = 'EQUIPAMENTO'
  end
  inherited UCHist_Seguidor: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = ''
    CampoPK3 = ''
    Tabela = 'EQUIPAMENTO'
  end
  object Equipamento_Veiculo: TFDQuery
    BeforeEdit = Equipamento_VeiculoBeforeEdit
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 5000
    SQL.Strings = (
      'SELECT EV.* FROM EQUIPAMENTO_VEICULO EV'
      'WHERE EV.CODIGO = :CODIGO')
    Left = 312
    Top = 136
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object DSEquipamento_Veiculo: TDataSource
    DataSet = Equipamento_Veiculo
    Left = 340
    Top = 136
  end
  object UCHist_Equipamento_Veiculo: TUCHist_DataSet
    OnAddHistorico = UCHist_CadastroAddHistorico
    DataSet = Equipamento_Veiculo
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    DS = DSEquipamento_Veiculo
    Tabela = 'EQUIPAMENTO_VEICULO'
    Modulo = 'EQUIPAMENTO'
    Left = 368
    Top = 136
  end
end
