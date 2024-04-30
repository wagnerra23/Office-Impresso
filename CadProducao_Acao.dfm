inherited FrmProducao_Acao: TFrmProducao_Acao
  Caption = 'Cadastro de A'#231#245'es de Produ'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 31
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 29
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 30
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 852
      Height = 579
      TabOrder = 28
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 852
      ExplicitHeight = 579
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de A'#231#245'es de Produ'#231#227'o'
    end
    object chkTem_Trabalhando: TcxDBCheckBox [25]
      Left = 193
      Top = 117
      Hint = 'Quantidade ou Devolu'#231#227'o'
      TabStop = False
      DataBinding.DataField = 'TEM_TRABALHANDO'
      DataBinding.DataSource = DS
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 21
      Transparent = True
    end
    object chkTem_Finalizar: TcxDBCheckBox [26]
      Left = 193
      Top = 139
      Hint = 'Quantidade ou Devolu'#231#227'o'
      TabStop = False
      DataBinding.DataField = 'TEM_FINALIZAR'
      DataBinding.DataSource = DS
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 22
      Transparent = True
    end
    object chkTem_Arquivar: TcxDBCheckBox [27]
      Left = 193
      Top = 161
      Hint = 'Quantidade ou Devolu'#231#227'o'
      TabStop = False
      DataBinding.DataField = 'TEM_ARQUIVADO'
      DataBinding.DataSource = DS
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 23
      Transparent = True
    end
    object chkTem_Observacao: TcxDBCheckBox [28]
      Left = 193
      Top = 183
      Hint = 'Quantidade ou Devolu'#231#227'o'
      TabStop = False
      DataBinding.DataField = 'TEM_OBSERVACAO'
      DataBinding.DataSource = DS
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 24
      Transparent = True
    end
    object cxbUsuario: TcxDBLookupComboBox [29]
      Left = 13
      Top = 249
      AutoSize = False
      DataBinding.DataField = 'CODUSUARIO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ListColumns = <>
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 27
      Height = 27
      Width = 142
    end
    object cxDBCheckBox2: TcxDBCheckBox [30]
      Left = 193
      Top = 227
      Hint = 'Insere OS em Fila'
      TabStop = False
      AutoSize = False
      BiDiMode = bdRightToLeft
      DataBinding.DataField = 'TEM_PAUSAR'
      DataBinding.DataSource = DS
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment = taLeftJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 26
      Transparent = True
      Height = 21
      Width = 21
    end
    object cxDBCheckBox3: TcxDBCheckBox [31]
      Left = 193
      Top = 205
      Hint = 'Insere OS em Fila'
      TabStop = False
      AutoSize = False
      BiDiMode = bdRightToLeft
      DataBinding.DataField = 'TEM_PLAY'
      DataBinding.DataSource = DS
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 25
      Transparent = True
      Height = 21
      Width = 21
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignVert = avClient
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = dxLayoutGroup1TabChanged
      Index = 3
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Op'#231#245'es'
      ItemIndex = 6
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Ativar Trabalhando Automaticamente'
      Control = chkTem_Trabalhando
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Concluir Automaticamente'
      Control = chkTem_Finalizar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Arquivar Automaticamente'
      Control = chkTem_Arquivar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Pede Observa'#231#227'o'
      Control = chkTem_Observacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      Control = cxbUsuario
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 142
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'O.S. parada'
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Insere O.S. para Produzindo'
      Control = cxDBCheckBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 2
    FormClassCadastro = 'TFrmProducao_Acao'
    FormClassConsulta = 'TConsuProducao_Acao'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUCAO_ACAO'
      'where CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUCAO_STATUS'
    Modulo = 'PRODUCAO'
  end
end
