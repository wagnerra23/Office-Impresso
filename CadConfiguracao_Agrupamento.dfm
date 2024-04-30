inherited FrmConfiguracao_Agrupamento: TFrmConfiguracao_Agrupamento
  Caption = 'Cadastro de Campos Agrupados nas Consultas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 606
      TabOrder = 21
      ExplicitLeft = 606
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
      ExplicitWidth = 281
      Width = 281
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 37
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 32
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 33
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 31
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 562
      TabOrder = 20
      ExplicitLeft = 562
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Campos Agrupados nas Consultas'
    end
    object edtForm: TcxDBTextEdit [25]
      Left = 338
      Top = 61
      DataBinding.DataField = 'FORM'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 19
      Width = 223
    end
    object edtObservacao: TcxDBRichEdit [26]
      Left = 3
      Top = 207
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 28
      Height = 89
      Width = 872
    end
    object edtCodConfiguracao_FiltroÎConfiguracao_Filtro: TcxDBButtonEdit [27]
      Left = 3
      Top = 311
      DataBinding.DataField = 'CODCONFIGURACAO_FILTRO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 29
      Width = 70
    end
    object LblCodConfiguracao_FiltroÎConfiguracao_FiltroÎDESCRICAO: TcxLabel [28]
      Left = 74
      Top = 309
      AutoSize = False
      ParentColor = False
      Style.Color = clBtnFace
      Style.HotTrack = False
      Height = 23
      Width = 801
    end
    object edtCampo1: TcxDBTextEdit [29]
      Left = 3
      Top = 97
      DataBinding.DataField = 'CAMPO1'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 22
      Width = 281
    end
    object edtOrdem1: TcxDBTextEdit [30]
      Left = 285
      Top = 97
      DataBinding.DataField = 'ORDEM1'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 23
      Width = 281
    end
    object edtOrdem2: TcxDBTextEdit [31]
      Left = 285
      Top = 135
      AutoSize = False
      DataBinding.DataField = 'ORDEM2'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 25
      Height = 21
      Width = 281
    end
    object edtCampo2: TcxDBTextEdit [32]
      Left = 3
      Top = 135
      AutoSize = False
      DataBinding.DataField = 'CAMPO2'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 24
      Height = 21
      Width = 281
    end
    object edtOrdem3: TcxDBTextEdit [33]
      Left = 285
      Top = 171
      AutoSize = False
      DataBinding.DataField = 'ORDEM3'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 27
      Height = 21
      Width = 281
    end
    object edtCampo3: TcxDBTextEdit [34]
      Left = 3
      Top = 171
      AutoSize = False
      DataBinding.DataField = 'CAMPO3'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 26
      Height = 21
      Width = 281
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 4
    end
    inherited LiedtDescricao: TdxLayoutItem
      ControlOptions.OriginalWidth = 281
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 4
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Index = 9
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 3
    end
    object LiedtForm: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Tela do Sistema'
      CaptionOptions.Layout = clTop
      Control = edtForm
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 223
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtObservacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Filtro Padr'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtCodConfiguracao_FiltroÎConfiguracao_Filtro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = LblCodConfiguracao_FiltroÎConfiguracao_FiltroÎDESCRICAO
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 863
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 8
    end
    object LiedtCampo1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Campo 1'
      CaptionOptions.Layout = clTop
      Control = edtCampo1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 281
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtOrdem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Ordem 1'
      CaptionOptions.Layout = clTop
      Control = edtOrdem1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 281
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object LiedtOrdem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Ordem 2'
      CaptionOptions.Layout = clTop
      Control = edtOrdem2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 281
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtCampo2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Campo 2'
      CaptionOptions.Layout = clTop
      Control = edtCampo2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 281
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object LiedtOrdem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Ordem 3'
      CaptionOptions.Layout = clTop
      Control = edtOrdem3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 281
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtCampo3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Campo 3'
      CaptionOptions.Layout = clTop
      Control = edtCampo3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 281
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
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
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 2
    FormClassCadastro = 'TFrmConfiguracao_Agrupamento'
    FormClassConsulta = 'TConsuConfiguracao_Agrupamento'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CONFIGURACAO_AGRUPAMENTO'
      'WHERE CODIGO  = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'CONFIGURACAO_AGRUPAMENTO'
    Modulo = 'CONFIGURACAO'
  end
end
