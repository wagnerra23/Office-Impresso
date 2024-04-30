inherited Frame_Equipamento_Eletrodomestico: TFrame_Equipamento_Eletrodomestico
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 736
      TabOrder = 4
      ExplicitLeft = 736
    end
    inherited edtDescricao: TcxDBTextEdit
      ExplicitWidth = 281
      Width = 281
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 10
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 11
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 692
      TabOrder = 3
      ExplicitLeft = 692
    end
    object edtNumSerie: TcxDBTextEdit [6]
      Left = 30
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'NUMERO_SERIE'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 5
      Height = 21
      Width = 218
    end
    object edtNumNF: TcxDBTextEdit [7]
      Left = 249
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'NUMERO_NF'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 189
    end
    object edtModelo: TcxDBTextEdit [8]
      Left = 439
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'MODELO'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 189
    end
    object edtDtCompra: TcxDBDateEdit [9]
      Left = 629
      Top = 83
      DataBinding.DataField = 'DT_COMPRA'
      DataBinding.DataSource = DSEquipamento_Computador
      Style.HotTrack = False
      TabOrder = 8
      Width = 171
    end
    object MemoObservacao: TcxDBMemo [10]
      Left = 30
      Top = 135
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 9
      Height = 89
      Width = 898
    end
    object EdtClienteÎPessoas: TcxDBButtonEdit [11]
      Left = 353
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
      Left = 425
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
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited LiedtDescricao: TdxLayoutItem
      ControlOptions.OriginalWidth = 281
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'N'#250'mero S'#233'rie'
      CaptionOptions.Layout = clTop
      Control = edtNumSerie
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 218
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'N'#250'mero NF'
      CaptionOptions.Layout = clTop
      Control = edtNumNF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 189
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Informa'#231#245'es do Eletrodom'#233'stico'
      Offsets.Top = 3
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Modelo'
      CaptionOptions.Layout = clTop
      Control = edtModelo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 189
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Data Compra'
      CaptionOptions.Layout = clTop
      Control = edtDtCompra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 171
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      Control = MemoObservacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 903
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      CaptionOptions.Text = 'Observa'#231#227'o'
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
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
    Modulo = 'EQUIPAMENTO'
  end
  object Equipamento_Eletrodomestico: TFDQuery
    BeforeEdit = Equipamento_EletrodomesticoBeforeEdit
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 5000
    SQL.Strings = (
      'SELECT EE.* FROM EQUIPAMENTO_ELETRODOMESTICO EE'
      'WHERE EE.CODIGO = :CODIGO')
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
  object DSEquipamento_Computador: TDataSource
    DataSet = Equipamento_Eletrodomestico
    Left = 340
    Top = 136
  end
  object UCHist_Equipamento_Eletrodomestico: TUCHist_DataSet
    OnAddHistorico = UCHist_CadastroAddHistorico
    DataSet = Equipamento_Eletrodomestico
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    DS = DSEquipamento_Computador
    Tabela = 'EQUIPAMENTO_ELETRODOMESTICO'
    Modulo = 'EQUIPAMENTO'
    Left = 368
    Top = 136
  end
end
