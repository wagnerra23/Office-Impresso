inherited Frame_Equipamento_Impressora: TFrame_Equipamento_Impressora
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 672
      TabOrder = 4
      ExplicitLeft = 672
    end
    inherited edtDescricao: TcxDBTextEdit
      ExplicitWidth = 217
      Width = 217
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 11
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 12
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 628
      TabOrder = 3
      ExplicitLeft = 628
    end
    object edtValor: TcxDBCurrencyEdit [6]
      Left = 772
      Top = 83
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DSEquipamento_Impressora
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 9
      Width = 156
    end
    object edtTempoPagto: TcxDBTextEdit [7]
      Left = 617
      Top = 83
      DataBinding.DataField = 'TEMPO_PAGTO_DESEJADO'
      DataBinding.DataSource = DSEquipamento_Impressora
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 8
      Width = 154
    end
    object edtQuantCores: TcxDBTextEdit [8]
      Left = 472
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'QUANT_CORES'
      DataBinding.DataSource = DSEquipamento_Impressora
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 144
    end
    object edtModelo: TcxDBTextEdit [9]
      Left = 251
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'MODELO'
      DataBinding.DataSource = DSEquipamento_Impressora
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 220
    end
    object edtMarca: TcxDBTextEdit [10]
      Left = 30
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'MARCA'
      DataBinding.DataSource = DSEquipamento_Impressora
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 5
      Height = 21
      Width = 220
    end
    object EdtClienteÎPessoas: TcxDBButtonEdit [11]
      Left = 289
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
    object EdtClienteÎPessoasÎRAZAOSOCIAL: TLabel [12]
      Left = 361
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
    object MemoObservacao: TcxDBMemo [13]
      Left = 30
      Top = 135
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 10
      Height = 89
      Width = 898
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited LiedtDescricao: TdxLayoutItem
      ControlOptions.OriginalWidth = 217
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'R$ Valor'
      CaptionOptions.Layout = clTop
      Control = edtValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Tempo para Pagto. (meses)'
      CaptionOptions.Layout = clTop
      Control = edtTempoPagto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Quant. Cores'
      CaptionOptions.Layout = clTop
      Control = edtQuantCores
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Modelo'
      CaptionOptions.Layout = clTop
      Control = edtModelo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 191
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Marca'
      CaptionOptions.Layout = clTop
      Control = edtMarca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 192
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Informa'#231#245'es da Impressora'
      Offsets.Top = 3
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = EdtClienteÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
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
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      Control = MemoObservacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 903
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
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
  object Equipamento_Impressora: TFDQuery
    BeforeEdit = Equipamento_ImpressoraBeforeEdit
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 5000
    SQL.Strings = (
      'SELECT EI.* FROM EQUIPAMENTO_IMPRESSORA EI'
      'WHERE EI.CODIGO = :CODIGO')
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
  object DSEquipamento_Impressora: TDataSource
    DataSet = Equipamento_Impressora
    Left = 340
    Top = 136
  end
  object UCHist_Equipamento_Impresso: TUCHist_DataSet
    OnAddHistorico = UCHist_CadastroAddHistorico
    DataSet = Equipamento_Impressora
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    DS = DSEquipamento_Impressora
    Tabela = 'EQUIPAMENTO_IMPRESSORA'
    Modulo = 'EQUIPAMENTO'
    Left = 368
    Top = 136
  end
end
