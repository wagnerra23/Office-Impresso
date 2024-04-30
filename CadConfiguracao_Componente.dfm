inherited FrmConfiguracao_Componente: TFrmConfiguracao_Componente
  Caption = 'Cadastro de Componentes da Tela do Sistema'
  ClientWidth = 999
  ExplicitWidth = 1015
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    Width = 999
    inherited btnNovo: TcxButton
      Left = 968
      ExplicitLeft = 968
    end
    inherited btnConfirmar: TcxButton
      Left = 968
      ExplicitLeft = 968
    end
    inherited btnAlterar: TcxButton
      Left = 968
      ExplicitLeft = 968
    end
    inherited btnCancelar: TcxButton
      Left = 968
      ExplicitLeft = 968
    end
    inherited btnExcluir: TcxButton
      Left = 968
      ExplicitLeft = 968
    end
    inherited btnConsultar: TcxButton
      Left = 968
      ExplicitLeft = 968
    end
    inherited btnSair: TcxButton
      Left = 968
      Top = 664
      ExplicitLeft = 968
      ExplicitTop = 664
    end
    inherited edtCodigo: TcxDBTextEdit
      Properties.OnChange = edtCodigoPropertiesChange
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 567
      TabOrder = 21
      ExplicitLeft = 567
    end
    inherited edtDescricao: TcxDBTextEdit
      AutoSize = False
      DataBinding.DataField = 'COMPONENTE'
      Properties.CharCase = ecNormal
      ExplicitWidth = 329
      Width = 329
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 968
      ExplicitLeft = 968
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 1027
      ExplicitLeft = 1027
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 57
    end
    inherited BtnSeguidores: TcxButton
      Left = 1039
      TabOrder = 55
      ExplicitLeft = 1039
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 1046
      ExplicitLeft = 1046
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 56
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 931
      Height = 420
      TabOrder = 38
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 931
      ExplicitHeight = 420
    end
    inherited BtnImprimir: TcxButton
      Left = 1059
      ExplicitLeft = 1059
    end
    inherited BtnDesativar: TcxButton
      Left = 968
      ExplicitLeft = 968
    end
    inherited BtnAtivar: TcxButton
      Left = 968
      ExplicitLeft = 968
    end
    inherited BtnAjuda: TcxButton
      Left = 968
      ExplicitLeft = 968
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 523
      TabOrder = 20
      ExplicitLeft = 523
    end
    inherited BtnImprimirPadrao: TcxButton
      Left = 968
      ExplicitLeft = 968
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Componentes da Tela do Sistema'
      ExplicitWidth = 951
    end
    inherited btnSeguidoresNovo: TcxButton
      Left = 1007
      ExplicitLeft = 1007
    end
    object EdtCampo: TcxDBTextEdit [25]
      Left = 194
      Top = 115
      AutoSize = False
      DataBinding.DataField = 'CAMPO'
      DataBinding.DataSource = DS
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 24
      Height = 21
      Width = 199
    end
    object EdtHint: TcxDBTextEdit [26]
      Left = 282
      Top = 181
      AutoSize = False
      DataBinding.DataField = 'HINT'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 29
      Height = 21
      Width = 334
    end
    object EdtTabela: TcxDBTextEdit [27]
      Left = 15
      Top = 115
      AutoSize = False
      DataBinding.DataField = 'TABELA'
      DataBinding.DataSource = DS
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 178
    end
    object EdtTela: TcxDBTextEdit [28]
      Left = 386
      Top = 61
      AutoSize = False
      DataBinding.DataField = 'FORM'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 19
      Height = 21
      Width = 136
    end
    object EdtFormatacao: TcxDBTextEdit [29]
      Left = 617
      Top = 181
      AutoSize = False
      DataBinding.DataField = 'FORMATACAO'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 30
      Height = 21
      Width = 79
    end
    object CkUnico: TcxDBCheckBox [30]
      Left = 827
      Top = 167
      AutoSize = False
      DataBinding.DataField = 'UNICO'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 32
      Transparent = True
      Height = 21
      Width = 21
    end
    object CkPadrao: TcxDBCheckBox [31]
      Left = 686
      Top = 61
      Caption = 'Padr'#227'o'
      DataBinding.DataField = 'TEM_PADRAO'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 22
      Transparent = True
    end
    object cxDBTextEdit2: TcxDBTextEdit [32]
      Left = 15
      Top = 181
      AutoSize = False
      DataBinding.DataField = 'CAPTION'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 28
      Height = 21
      Width = 266
    end
    object edtObservacao: TcxDBRichEdit [33]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Properties.AutoURLDetect = True
      Properties.ScrollBars = ssBoth
      Style.HotTrack = False
      TabOrder = 37
      Visible = False
      Height = 406
      Width = 931
    end
    object cxGridCSS: TcxGrid [34]
      Left = 10000
      Top = 10000
      Width = 931
      Height = 384
      TabOrder = 44
      Visible = False
      object cxGridCSSViewCSS: TcxGridDBTableView
        DragMode = dmAutomatic
        OnDragDrop = cxGridCSSViewCSSDragDrop
        OnDragOver = cxGridCSSViewCSSDragOver
        OnStartDrag = cxGridCSSViewCSSStartDrag
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSConfiguracao_CSS
        DataController.KeyFieldNames = 'ORDEM'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.DragHighlighting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        object cxGridCSSViewCSSCODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGridCSSViewCSSCODCONFIGURACAO_COMPONENTE: TcxGridDBColumn
          DataBinding.FieldName = 'CODCONFIGURACAO_COMPONENTE'
          Visible = False
        end
        object cxGridCSSViewCSSORDEM: TcxGridDBColumn
          DataBinding.FieldName = 'ORDEM'
          SortIndex = 0
          SortOrder = soAscending
          Width = 87
        end
        object cxGridCSSViewCSSDESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 193
        end
        object cxGridCSSViewCSSCOR: TcxGridDBColumn
          Caption = 'Cor'
          DataBinding.FieldName = 'COR'
          PropertiesClassName = 'TdxColorEditProperties'
          Width = 115
        end
        object cxGridCSSViewCSSCSS: TcxGridDBColumn
          Caption = 'Estilo'
          DataBinding.FieldName = 'CSS'
          PropertiesClassName = 'TcxRichEditProperties'
          Width = 344
        end
      end
      object cxGridCSSLevel1: TcxGridLevel
        GridView = cxGridCSSViewCSS
      end
    end
    object cxButton1: TcxButton [35]
      Left = 10000
      Top = 10000
      Width = 35
      Height = 35
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 41
      Visible = False
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton [36]
      Left = 10000
      Top = 10000
      Width = 35
      Height = 35
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 42
      Visible = False
      OnClick = cxButton2Click
    end
    object edtDescricao_CSS: TcxTextEdit [37]
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 39
      Visible = False
      Width = 468
    end
    object cxButton3: TcxButton [38]
      Left = 10000
      Top = 10000
      Width = 115
      Height = 35
      Caption = 'Configura Estilo '
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 43
      Visible = False
      OnClick = cxButton3Click
    end
    object edtCor: TdxColorEdit [39]
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 40
      Width = 86
    end
    object cxButton4: TcxButton [40]
      AlignWithMargins = True
      Left = 647
      Top = 101
      Width = 116
      Height = 35
      Hint = 'Consultar'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 15
      Caption = 'Criar Campo SQL'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = ImgListBotoes16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 27
      OnClick = cxButton4Click
    end
    object cxDBCheckBox1: TcxDBCheckBox [41]
      Left = 697
      Top = 167
      AutoSize = False
      DataBinding.DataField = 'TEM_NA_CONSULTA'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 31
      Transparent = True
      Height = 21
      Width = 30
    end
    object cxDBTextEdit1: TcxDBTextEdit [42]
      Left = 394
      Top = 115
      AutoSize = False
      DataBinding.DataField = 'CAMPO'
      DataBinding.DataSource = DS
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 25
      Height = 21
      Width = 130
    end
    object cxDBCheckBox2: TcxDBCheckBox [43]
      Left = 697
      Top = 189
      AutoSize = False
      DataBinding.DataField = 'GEN'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 33
      Transparent = True
      Height = 21
      Width = 21
    end
    object cxDBRichEdit1: TcxDBRichEdit [44]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Properties.AutoURLDetect = True
      Properties.ScrollBars = ssBoth
      Properties.StreamModes = [resmTextIzed]
      Style.HotTrack = False
      TabOrder = 45
      Visible = False
      Height = 420
      Width = 931
    end
    object cxGrid1: TcxGrid [45]
      Left = 10000
      Top = 10000
      Width = 931
      Height = 384
      TabOrder = 52
      Visible = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSAcoes_Regra
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object cxGrid1DBTableView1ACOES: TcxGridDBColumn
          Caption = 'Ac'#245'es'
          DataBinding.FieldName = 'ACOES'
        end
        object cxGrid1DBTableView1CODCONFIGURACAO_COMPONENTE: TcxGridDBColumn
          DataBinding.FieldName = 'CODCONFIGURACAO_COMPONENTE'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1CODCONFIGURACAO_REGRA: TcxGridDBColumn
          DataBinding.FieldName = 'CODCONFIGURACAO_REGRA'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1CODCONFIGURACAO_ACOES: TcxGridDBColumn
          DataBinding.FieldName = 'CODCONFIGURACAO_ACOES'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1TAB: TcxGridDBColumn
          DataBinding.FieldName = 'TAB'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1CSS: TcxGridDBColumn
          DataBinding.FieldName = 'CSS'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1OBRIGATORIO: TcxGridDBColumn
          Caption = 'Obrigat'#243'rio?'
          DataBinding.FieldName = 'OBRIGATORIO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 98
        end
        object cxGrid1DBTableView1OBRIGATORIO_EXPRESSAO: TcxGridDBColumn
          DataBinding.FieldName = 'OBRIGATORIO_EXPRESSAO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1SQLCAMPOSADICIONAIS: TcxGridDBColumn
          DataBinding.FieldName = 'SQLCAMPOSADICIONAIS'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1IMPEDIR_DUPLICIDADE_SQL: TcxGridDBColumn
          DataBinding.FieldName = 'IMPEDIR_DUPLICIDADE_SQL'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1TEM_CAPTIONOUHINT: TcxGridDBColumn
          DataBinding.FieldName = 'TEM_CAPTIONOUHINT'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1CODCONFIGURACAO_FORM: TcxGridDBColumn
          DataBinding.FieldName = 'CODCONFIGURACAO_FORM'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1TEM_PADRAO: TcxGridDBColumn
          Caption = 'Padr'#227'o?'
          DataBinding.FieldName = 'TEM_PADRAO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Properties.OnEditValueChanged = cxGrid1DBTableView1TEM_PADRAOPropertiesEditValueChanged
          Width = 81
        end
        object cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 67
        end
        object cxGrid1DBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btnAdicionarRegra: TcxButton [46]
      Left = 10000
      Top = 10000
      Width = 33
      Height = 35
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 50
      Visible = False
      OnClick = btnAdicionarRegraClick
    end
    object btnRemoverRegra: TcxButton [47]
      Left = 10000
      Top = 10000
      Width = 33
      Height = 33
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 51
      TabStop = False
      Visible = False
    end
    object edtValor_Inicial: TcxTextEdit [48]
      Left = 525
      Top = 115
      AutoSize = False
      Style.HotTrack = False
      TabOrder = 26
      Height = 21
      Width = 121
    end
    object cbxCodConfiguracao_Acoes: TcxLookupComboBox [49]
      Left = 10000
      Top = 10000
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Style.HotTrack = False
      TabOrder = 46
      Visible = False
      Width = 145
    end
    object edtInformacao: TcxTextEdit [50]
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 47
      Visible = False
      Width = 121
    end
    object chkObrigatorio: TcxCheckBox [51]
      Left = 10000
      Top = 10000
      AutoSize = False
      Style.HotTrack = False
      TabOrder = 49
      Transparent = True
      Visible = False
      Height = 21
      Width = 106
    end
    object chkMultEmpresa: TcxCheckBox [52]
      Left = 849
      Top = 189
      AutoSize = False
      Style.HotTrack = False
      TabOrder = 35
      Transparent = True
      Height = 21
      Width = 28
    end
    object cxDBCheckBox3: TcxDBCheckBox [53]
      Left = 769
      Top = 189
      AutoSize = False
      DataBinding.DataField = 'POSSUI_PK'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 34
      Transparent = True
      Height = 21
      Width = 21
    end
    object edtCondicao: TcxTextEdit [54]
      Left = 10000
      Top = 10000
      AutoSize = False
      Style.HotTrack = False
      TabOrder = 48
      Visible = False
      Height = 21
      Width = 121
    end
    object cxGrid2: TcxGrid [55]
      Left = 13
      Top = 273
      Width = 931
      Height = 384
      TabOrder = 54
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSAcoes_Regra
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = 'Cod. Regra'
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          Caption = 'Descri'#231#227'o Regra'
          Width = 486
        end
        object cxGridDBTableView1Column3: TcxGridDBColumn
          Caption = 'Ativo'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxLabel1: TcxLabel [56]
      Left = 10000
      Top = 10000
      Caption = 'cxLabel1'
      Style.HotTrack = False
      Style.TransparentBorder = False
      Visible = False
    end
    object cxLabel2: TcxLabel [57]
      Left = 13
      Top = 259
      Caption = '*Regras vinculadas ao campo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 5
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 6
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      AlignVert = avBottom
      Index = 4
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 10
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'Componente'
      ControlOptions.OriginalWidth = 329
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 5
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    inherited LicbxAtivo: TdxLayoutItem
      AlignVert = avBottom
      Index = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Campo'
      CaptionOptions.Layout = clTop
      Control = EdtCampo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 199
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Hint'
      CaptionOptions.Layout = clTop
      Control = EdtHint
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 334
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Tabela'
      CaptionOptions.Layout = clTop
      Control = EdtTabela
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 178
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'Tela'
      CaptionOptions.Layout = clTop
      Control = EdtTela
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Formata'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = EdtFormatacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'Impedir Duplicidade'
      CaptionOptions.Layout = clRight
      Control = CkUnico
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = CkPadrao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Caption'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 266
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Configura'#231#227'o padr'#227'o'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Origem da informa'#231#227'o'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object LiedtObservacao: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Manual sobre o campo'
      CaptionOptions.Layout = clTop
      Control = edtObservacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 6
      LayoutDirection = ldTabbed
      ShowBorder = False
      UseIndent = False
      Index = 6
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Estilo'
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGridCSS
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup4
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricao_CSS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 468
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtCor: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Cor'
      CaptionOptions.Layout = clTop
      Control = edtCor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Aparece na Consuta'
      CaptionOptions.Layout = clRight
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Campo vinculado no mover'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Generator'
      CaptionOptions.Layout = clRight
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Sql Com os Campos Automatizados'
      Index = 4
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      Control = cxDBRichEdit1
      ControlOptions.OriginalHeight = 475
      ControlOptions.OriginalWidth = 852
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Validate'
      Index = 5
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnAdicionarRegra
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnRemoverRegra
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtValor_Inicial: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Valor Inicial'
      CaptionOptions.Layout = clTop
      Control = edtValor_Inicial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object licbxCodConfiguracao_Acoes: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'A'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cbxCodConfiguracao_Acoes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtInformacao: TdxLayoutItem
      Parent = dxLayoutGroup7
      Visible = False
      CaptionOptions.Text = 'Informa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtInformacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lichkObrigatorio: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'Obrigat'#243'rio'
      CaptionOptions.Layout = clTop
      Control = chkObrigatorio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lichkMultEmpresa: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avClient
      CaptionOptions.Text = 'Mult Empresa'
      CaptionOptions.Layout = clRight
      Control = chkMultEmpresa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 28
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      Index = 3
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avClient
      CaptionOptions.Text = 'Primary Key'
      CaptionOptions.Layout = clRight
      Control = cxDBCheckBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup4
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object liedtCondicao: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Condi'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtCondicao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Regras'
      Index = 6
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Layout = clTop
      Control = cxGrid2
      ControlOptions.OriginalHeight = 384
      ControlOptions.OriginalWidth = 931
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxLabel1
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = '*Regras vinculadas ao campo'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxLabel2
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Width = 999
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 2
    FormClassCadastro = 'TFrmConfiguracao_Componente'
    FormClassConsulta = 'TConsuConfiguracao_Componente'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * from CONFIGURACAO_COMPONENTE'
      'WHERE CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'CONFIGURACAO_COMPONENTE'
    Modulo = 'CONFIGURACAO'
  end
  object Configuracao_CSS: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODCONFIGURACAO_COMPONENTE'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from CONFIGURACAO_COMPONENTE_CSS'
      'where (CODCONFIGURACAO_COMPONENTE = :CODIGO)')
    Left = 311
    Top = 156
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Configuracao_CSSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Configuracao_CSSCODCONFIGURACAO_COMPONENTE: TIntegerField
      FieldName = 'CODCONFIGURACAO_COMPONENTE'
      Origin = 'CODCONFIGURACAO_COMPONENTE'
    end
    object Configuracao_CSSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object Configuracao_CSSCSS: TMemoField
      FieldName = 'CSS'
      Origin = 'CSS'
      BlobType = ftMemo
    end
    object Configuracao_CSSCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object Configuracao_CSSORDEM: TFloatField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
    end
  end
  object DSConfiguracao_CSS: TDataSource
    DataSet = Configuracao_CSS
    Left = 339
    Top = 156
  end
  object Acoes_Regra: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODCONFIGURACAO_COMPONENTE'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select car.*, ca.descricao as Acoes from configuracao_acoes_regr' +
        'a car'
      
        'left join configuracao_acoes ca on ca.codigo = car.codconfigurac' +
        'ao_acoes '
      ' where car.codconfiguracao_componente = :Codigo')
    Left = 311
    Top = 128
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object DSAcoes_Regra: TDataSource
    DataSet = Acoes_Regra
    Left = 339
    Top = 128
  end
end
