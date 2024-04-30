inherited FrmBI_KPI: TFrmBI_KPI
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      Properties.OnChange = edtCodigoPropertiesChange
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 700
      TabOrder = 6
      ExplicitLeft = 700
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
      ExplicitWidth = 281
      Width = 281
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 30
    end
    inherited PnlFrameHistorico: TPanel
      Width = 590
      TabOrder = 25
      ExplicitWidth = 590
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 656
      TabOrder = 5
      ExplicitLeft = 656
    end
    object cxDBComboBox1: TcxDBComboBox [6]
      Left = 40
      Top = 170
      AutoSize = False
      DataBinding.DataField = 'GRAFICO_PERIODO'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        ''
        'dgp1Dia'
        'dgp15Dias'
        'dgp1Mes'
        'dgp3Meses'
        'dgp6Meses'
        'dgp1Ano')
      Properties.OnValidate = edtGrafico_TipoPropertiesValidate
      Style.HotTrack = False
      TabOrder = 11
      Height = 21
      Width = 79
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [7]
      Left = 154
      Top = 272
      AutoSize = False
      DataBinding.DataField = 'QUANT_REGISTROS'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Style.HotTrack = False
      TabOrder = 15
      Height = 21
      Width = 76
    end
    object edtFormato: TcxDBComboBox [8]
      Left = 120
      Top = 94
      AutoSize = False
      DataBinding.DataField = 'FORMATO'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'ddfContador'
        'ddfFinanceiro'
        'ddfPercentual'
        'ddfQuantidade')
      Style.HotTrack = False
      TabOrder = 9
      Height = 21
      Width = 112
    end
    object edtCampo: TcxDBTextEdit [9]
      Left = 40
      Top = 308
      AutoSize = False
      DataBinding.DataField = 'CAMPO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 16
      Height = 21
      Width = 265
    end
    object chkTem_Periodo: TcxDBCheckBox [10]
      Left = 28
      Top = 116
      AutoSize = False
      DataBinding.DataField = 'TEM_PERIODO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = chkTem_PeriodoPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Transparent = True
      Height = 21
      Width = 22
    end
    object chkTem_Registro: TcxDBCheckBox [11]
      Left = 40
      Top = 272
      AutoSize = False
      DataBinding.DataField = 'TEM_QUANT_REGISTROS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 14
      Transparent = True
      Height = 21
      Width = 113
    end
    object edtAba: TcxDBComboBox [12]
      Left = 581
      Top = 24
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'ABA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Items.Strings = (
        'KPI')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 74
    end
    object edtHeigth: TcxDBCurrencyEdit [13]
      Left = 74
      Top = 94
      AutoSize = False
      DataBinding.DataField = 'HEIGHT'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.OnValidate = edtGrafico_TipoPropertiesValidate
      Style.HotTrack = False
      TabOrder = 8
      Height = 21
      Width = 45
    end
    object edtWidth: TcxDBCurrencyEdit [14]
      Left = 28
      Top = 94
      AutoSize = False
      DataBinding.DataField = 'WIDTH'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.OnValidate = edtGrafico_TipoPropertiesValidate
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 45
    end
    object edtGrafico_Tipo: TcxDBComboBox [15]
      Left = 40
      Top = 236
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'GRAFICO_TIPO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        ''
        'dgtPizza'
        'dgtBarrasHorizontais'
        'dgtColunasVerticais'
        'dgtStackedBar'
        'dgtStackedColumn')
      Properties.OnValidate = edtGrafico_TipoPropertiesValidate
      Style.HotTrack = False
      TabOrder = 13
      Height = 21
      Width = 265
    end
    object edtForm: TcxDBLookupComboBox [16]
      Left = 435
      Top = 24
      AutoSize = False
      DataBinding.DataField = 'CODCONFIGURACAO_FORM'
      DataBinding.DataSource = DS
      Properties.ListColumns = <>
      TabOrder = 3
      Height = 21
      Width = 145
    end
    object edtSql: TcxDBRichEdit [17]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'SQL'
      DataBinding.DataSource = DS
      Properties.PlainText = True
      Properties.ScrollBars = ssBoth
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Height = 346
      Width = 580
    end
    object edtBloco: TcxDBComboBox [18]
      Left = 353
      Top = 24
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'BLOCO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'SIMPLES'
        'GR'#193'FICO')
      Properties.OnChange = cxDBComboBox2PropertiesChange
      Properties.OnValidate = edtGrafico_TipoPropertiesValidate
      Style.HotTrack = False
      TabOrder = 2
      Height = 21
      Width = 81
    end
    object btnAtualizar: TcxButton [19]
      Left = 10000
      Top = 10000
      Width = 116
      Height = 35
      Caption = 'Atualizar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000011744558745469746C6500446F776E3B4172726F773BBD
        FC82580000021E49444154785E6591316814411885BF99DDBD530435510B0BC3
        555E95144A8C46F48AEBA2A43016F65A182CB4104CAF9D8D6550B4B2B4508895
        0A625288A26050E4AC0425C110C9C588DEEDEECCEFF90FC31679ECEE3FF398FF
        EDFBE799B987CB2F8DB52D2F20FA0A4E40BCE009A4F75AF08272225016F9E2FD
        2B13EDF47F73FBD821D0C328C4104E0736D05E79A50B272C2C7E3D0524A90079
        E1F8F0FD37C1016050886EA23691A4797057DC9B543C7CFAB2C6FAAF1C412058
        0551ABCA89AE4DA840BFBB151549F76EAC327BAEC5DFBE0BA43188F794AED406
        630C6992626CB405F52CE1F6FCB3E0C0791F6C63102318449BEF2C7488B83AD5
        24AB6720AA1FEEC27B6DB2DEABADF0B79884F3ACAC6C70E6EC513A9D55BC4477
        5552DE4910709A110A2F425114F4F2FEA03ADEAD09CE09BD5E9FBC9F23311901
        ED03AC739A2C106C3D78FA911BF7DE52964ED3C952CBF5F937DC7DB23CE04A84
        00EF258EE0ABAC314C4F8ED0FDB1CEE1F649F24268B627D95AFFC9F956036B6D
        8CB7BA03E784A860AC65FFF01E2E4D8FF2FAF10B7AA51FD4E7CCCE8C313CB41B
        6393102FA61A411D082132046B138E1F69307AC0F079E93DE32375C6C71A2469
        169A0540AA1182928041950D50ABD5B97CE10443DD6F5C9C99A056DF01860815
        F11204527141354BACE61B3E967D83516E5D9B22491275054284203111493737
        375FCDDD7C745A88EA02FA5491C5855021EFFF59020A03EC0432C0B21DC1F876
        085000BD7F8CA0608FE53C7C9B0000000049454E44AE426082}
      TabOrder = 31
      Visible = False
      OnClick = btnAtualizarClick
    end
    object edtAgrupamento: TcxDBTextEdit [20]
      Left = 40
      Top = 344
      DataBinding.DataField = 'AGRUPAMENTO'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 17
      Width = 265
    end
    object edtFiltro: TcxDBRichEdit [21]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'FILTRO'
      DataBinding.DataSource = DS
      Properties.PlainText = True
      Properties.ScrollBars = ssBoth
      Style.HotTrack = False
      TabOrder = 22
      Visible = False
      Height = 254
      Width = 580
    end
    object cxDBTextEdit1: TcxDBTextEdit [22]
      Left = 120
      Top = 170
      AutoSize = False
      DataBinding.DataField = 'CAMPOPERIODO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 12
      Height = 21
      Width = 185
    end
    object edtCampo2: TcxDBTextEdit [23]
      Left = 40
      Top = 380
      AutoSize = False
      DataBinding.DataField = 'CAMPO_CATEGORIA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 18
      Height = 21
      Width = 265
    end
    object DashboardBlocoGrafico1: TDashboardBlocoGrafico [24]
      Left = 653
      Top = 46
      Width = 285
      Height = 244
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 26
      OnClick = DashboardBlocoGrafico1Click
      Codigo = 'TFrmProdutoDashboard-Categoria'
      Descricao = 'T'#237'tulo'
      SQL.Strings = (
        
          'select first :QtRegistros coalesce(PC.DESCRICAO, '#39'<Sem Categoria' +
          '>'#39') as DESCRICAO, count(1) as QUANT'
        'from PRODUTO P'
        
          'left join PRODUTO_CATEGORIA PC on (PC.CODIGO = P.CODPRODUTO_CATE' +
          'GORIA)'
        'where (P.ATIVO is distinct from '#39'N'#39')'
        'group by 1')
      TesteConnection = DMBanco.Banco
      Tipo = dgtPizza
      Grupos = <
        item
          Campo = 'DESCRICAO'
        end>
      Series = <
        item
          Campo = 'QUANT'
          DisplayFormat = ddfContador
          TipoSumario = skNone
          Ordenar = soAscending
        end>
      Filtros.Periodo = dgp6Meses
      Filtros.Dt_Inicio = 44228.000000000000000000
      Filtros.Dt_Fim = 44409.000000000000000000
      Filtros.QuantRegistros = 10
      FiltrosMostrar.QuantRegistros = True
    end
    object btnTestar: TcxButton [25]
      Left = 653
      Top = 380
      Width = 285
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Testar'
      TabOrder = 28
      OnClick = btnTestarClick
    end
    object edtObservacao: TcxDBRichEdit [26]
      Left = 10000
      Top = 10000
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 24
      Visible = False
      Height = 617
      Width = 580
    end
    object cxRTTIInspector1: TcxRTTIInspector [27]
      Left = 653
      Top = 408
      Width = 285
      Height = 162
      OptionsView.RowHeaderWidth = 173
      TabOrder = 29
      Version = 1
    end
    object cxGrid1: TcxGrid [28]
      Left = 10000
      Top = 10000
      Width = 449
      Height = 617
      TabOrder = 23
      Visible = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OnColumnHeaderClick = cxGrid1DBTableView1ColumnHeaderClick
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object DashboardBlocoSimples1: TDashboardBlocoSimples [29]
      Left = 653
      Top = 290
      Width = 285
      Height = 90
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 27
      Codigo = 'TFrmProdutoDashboard-ProdutosCadastrados'
      Descricao = 'T'#237'tulo'
      SQL.Strings = (
        'select count(1) as QUANT'
        'from PRODUTO P'
        'left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO)'
        'where (P.ATIVO is distinct from '#39'N'#39')'
        '      and (PT.CLASSIFICACAO = '#39'PRODUTO'#39')')
      TesteConnection = DMBanco.Banco
      CampoValor = 'QUANT'
      DisplayFormat = ddfQuantidade
    end
    object cxDBCheckBox1: TcxDBCheckBox [30]
      Left = 52
      Top = 420
      AutoSize = False
      Caption = 'Mostra %'
      DataBinding.DataField = 'TEM_PERIODO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 19
      Transparent = True
      Height = 21
      Width = 241
    end
    object cxDBCheckBox2: TcxDBCheckBox [31]
      Left = 52
      Top = 442
      AutoSize = False
      Caption = 'Mostra Quantidade'
      DataBinding.DataField = 'TEM_PERIODO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 20
      Transparent = True
      Height = 21
      Width = 241
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 6
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignVert = avBottom
      ControlOptions.OriginalWidth = 281
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = dxLayoutAutoCreatedGroup1
      Visible = True
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Parent = dxLayoutGroup1
      Index = 4
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 5
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoPeriodo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Per'#237'odo'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtFormato: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Formato:'
      CaptionOptions.Layout = clTop
      Control = edtFormato
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtCampo: TdxLayoutItem
      Parent = GrupoConfigGrafico
      Visible = False
      CaptionOptions.Text = 'Campo:'
      CaptionOptions.Layout = clTop
      Control = edtCampo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LichkTem_Periodo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Tem Per'#237'odo'
      CaptionOptions.Layout = clRight
      Control = chkTem_Periodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LichkTem_Registro: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Limita Quant. Registro?'
      CaptionOptions.Layout = clTop
      Control = chkTem_Registro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liAba: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Aba'
      CaptionOptions.Layout = clTop
      Control = edtAba
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Configura'#231#227'o do DashBoard'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object LiedtHeigth: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Altura'
      CaptionOptions.Layout = clTop
      Control = edtHeigth
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtWidth: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Largura'
      CaptionOptions.Layout = clTop
      Control = edtWidth
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = GrupoConfigGrafico
      CaptionOptions.Text = 'Tipo de Gr'#225'fico'
      CaptionOptions.Layout = clTop
      Control = edtGrafico_Tipo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtForm: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Tela'
      CaptionOptions.Layout = clTop
      Control = edtForm
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      Control = edtSql
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 550
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtBloco: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Bloco'
      CaptionOptions.Layout = clTop
      Control = edtBloco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoConfigGrafico: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Config Gr'#225'fico'
      ItemIndex = 2
      Index = 3
    end
    object LibtnAtualizar: TdxLayoutItem
      Offsets.Top = 20
      CaptionOptions.Visible = False
      Control = btnAtualizar
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoConfigGrafico
      CaptionOptions.Text = 'Campo N'#237'vel 1 (Agrupador do Grid)'
      CaptionOptions.Layout = clTop
      Control = edtAgrupamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 210
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = GrupoConfigGrafico
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Filtro da Tela'
      CaptionOptions.Layout = clTop
      Control = edtFiltro
      ControlOptions.OriginalHeight = 55
      ControlOptions.OriginalWidth = 375
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoPeriodo
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Campo do Filtro do Per'#237'odo'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoConfigGrafico
      CaptionOptions.Text = 'Campo N'#237'vel 2 (Campo Categoria Sub-Agrupador Grid)'
      CaptionOptions.Layout = clTop
      Control = edtCampo2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'SQL'
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Configura'#231#245'es'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object LiDashboardBlocoGrafico1: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avTop
      Control = DashboardBlocoGrafico1
      ControlOptions.OriginalHeight = 244
      ControlOptions.OriginalWidth = 381
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      Index = 0
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnTestar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Visible = False
      Control = edtObservacao
      ControlOptions.OriginalHeight = 224
      ControlOptions.OriginalWidth = 412
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Dados'
      Index = 2
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutGroup2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxRTTIInspector1
      ControlOptions.OriginalHeight = 513
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiDashboardBlocoSimples1: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avTop
      Control = DashboardBlocoSimples1
      ControlOptions.OriginalHeight = 90
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSplitterItem2: TdxLayoutSplitterItem
      Parent = dxLayoutAutoCreatedGroup5
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Mostra %'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = GrupoConfigGrafico
      CaptionOptions.Text = 'Legenda do Gr'#225'fico de Pizza'
      ItemIndex = 1
      Index = 5
    end
    object GrupoPeriodo: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Informe dados do filtro por per'#237'odo'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 2
    FormClassCadastro = 'TFrmAtalho_Rapido'
    FormClassConsulta = 'TConsuAtalho_Rapido'
  end
  inherited Cadastro: TFDQuery
    OnCalcFields = CadastroCalcFields
    SQL.Strings = (
      'select * from ATALHO_RAPIDO'
      'where Codigo = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object CadastroForm: TStringField
      FieldKind = fkCalculated
      FieldName = 'Form'
      Calculated = True
    end
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'ATALHO_RAPIDO'
    Modulo = 'RELATORIO'
  end
end
