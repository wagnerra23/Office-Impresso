inherited FrmNF_CST: TFrmNF_CST
  Caption = 'Cadastro do CST - C'#243'digo da Situa'#231#227'o Tribut'#225'ria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      Properties.ReadOnly = False
      Style.Color = clSkyBlue
      ExplicitWidth = 78
      Width = 78
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 644
      TabOrder = 21
      ExplicitLeft = 644
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 82
      ExplicitLeft = 82
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 31
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 30
    end
    inherited PnlFrameHistorico: TPanel
      Top = 241
      Height = 453
      TabOrder = 29
      ExplicitTop = 241
      ExplicitHeight = 453
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 600
      TabOrder = 20
      ExplicitLeft = 600
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro do CST - C'#243'digo da Situa'#231#227'o Tribut'#225'ria'
    end
    object cxDBComboBox1: TcxDBComboBox [24]
      Left = 489
      Top = 61
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'CST'
        'CST_IPI'
        'CSOSN'
        'PIS_COFINS')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 19
      Height = 21
      Width = 110
    end
    object cxDBMemo1: TcxDBMemo [25]
      Left = 3
      Top = 97
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 22
      Height = 89
      Width = 872
    end
    object cxDBComboBox2: TcxDBComboBox [26]
      Left = 3
      Top = 201
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TEM_TRIBUTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 54
    end
    object cxDBComboBox3: TcxDBComboBox [27]
      Left = 58
      Top = 201
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TEM_BC'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 24
      Height = 21
      Width = 54
    end
    object cxDBComboBox4: TcxDBComboBox [28]
      Left = 113
      Top = 201
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TEM_CALCULO_ICMS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 25
      Height = 21
      Width = 54
    end
    object cxDBComboBox5: TcxDBComboBox [29]
      Left = 168
      Top = 201
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TEM_ST'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 26
      Height = 21
      Width = 54
    end
    object cxDBComboBox6: TcxDBComboBox [30]
      Left = 223
      Top = 201
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TEM_REDUCAO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 27
      Height = 21
      Width = 54
    end
    object cxDBComboBox7: TcxDBComboBox [31]
      Left = 278
      Top = 201
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TEM_BASE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 28
      Height = 21
      Width = 54
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited LiedtCodigo: TdxLayoutItem
      ControlOptions.OriginalWidth = 78
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 4
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      AlignVert = avBottom
      Index = -1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      AlignVert = avClient
      Index = 5
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tributado'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Base ICMS'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Calc. ICMS'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Sub. Trib.'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Redu'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'na Base'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 4
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
    FormClassCadastro = 'TFrmNF_CST'
    FormClassConsulta = 'TConsuNF_CST'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM NF_CST'
      'WHERE (CODIGO = :Codigo)and(Tipo = :Tipo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    CampoPK3 = 'TIPO'
    Tabela = 'NF_CST'
    Modulo = 'NOTA_FISCAL'
  end
end
