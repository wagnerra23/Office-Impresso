inherited FrmConfiguracao_Filtro: TFrmConfiguracao_Filtro
  Caption = 'Cadastro de Filtros de Consulta'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 670
      TabOrder = 21
      ExplicitLeft = 670
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
      ExplicitWidth = 345
      Width = 345
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 26
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 25
    end
    inherited PnlFrameHistorico: TPanel
      Top = 243
      Height = 451
      TabOrder = 24
      ExplicitTop = 243
      ExplicitHeight = 451
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 626
      TabOrder = 20
      ExplicitLeft = 626
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Filtros de Consulta'
    end
    object edtForm: TcxDBTextEdit [24]
      Left = 402
      Top = 61
      AutoSize = False
      DataBinding.DataField = 'FORM'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 19
      Height = 21
      Width = 223
    end
    object edtObservacao: TcxDBRichEdit [25]
      Left = 3
      Top = 99
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 22
      Height = 89
      Width = 872
    end
    object cxDBTextEdit1: TcxDBTextEdit [26]
      Left = 3
      Top = 203
      AutoSize = False
      DataBinding.DataField = 'SQLWHERE'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 872
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 5
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 4
    end
    inherited LiedtDescricao: TdxLayoutItem
      ControlOptions.OriginalWidth = 345
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      AlignVert = avClient
      Index = 6
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Tela do Sstema'
      CaptionOptions.Layout = clTop
      Control = edtForm
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 223
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtObservacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 872
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Text = 'SQL Where'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 223
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 2
    FormClassCadastro = 'TFrmConfiguracao_Filtro'
    FormClassConsulta = 'TConsuConfiguracao_Filtro'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CONFIGURACAO_FILTRO'
      'WHERE CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'CONFIGURACAO_FILTRO'
    Modulo = 'CONFIGURACAO'
  end
end
