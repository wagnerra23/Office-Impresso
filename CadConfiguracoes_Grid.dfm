inherited FrmConfiguracoes_Grid: TFrmConfiguracoes_Grid
  Caption = 'Cadastro Layout da Consulta'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 398
      ExplicitLeft = 398
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.ReadOnly = True
      ExplicitWidth = 297
      Width = 297
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 26
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 25
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      TabOrder = 24
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 354
      ExplicitLeft = 354
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro Layout da Consulta'
    end
    object cxDBMemo1: TcxDBMemo [24]
      Left = 13
      Top = 117
      DataBinding.DataField = 'ARQUIVO_INI'
      DataBinding.DataSource = DS
      Properties.ScrollBars = ssBoth
      Style.HotTrack = False
      TabOrder = 23
      Height = 579
      Width = 852
    end
    object cxDBTextEdit1: TcxDBTextEdit [25]
      Left = 517
      Top = 61
      AutoSize = False
      DataBinding.DataField = 'FORM'
      DataBinding.DataSource = DS
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 143
    end
    object cxDBTextEdit2: TcxDBTextEdit [26]
      Left = 661
      Top = 61
      AutoSize = False
      DataBinding.DataField = 'CODUSUARIO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 22
      Height = 21
      Width = 38
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 5
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited LiedtDescricao: TdxLayoutItem
      ControlOptions.OriginalWidth = 297
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      AlignVert = avBottom
      Index = -1
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Index = 1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoLogAlteracoes
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Configura'#231#245'es do Grid'
      CaptionOptions.Visible = False
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Form'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Usu'#225'rio'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 38
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
    FormClassCadastro = 'TFrmConfiguracoes_Grid'
    FormClassConsulta = 'TConsuConfiguracoes_Grid'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from CONFIGURACOES_GRID'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'CONFIGURACOES_GRID'
    Modulo = 'CONFIGURACAO'
  end
end
