inherited FrmPrecificacao: TFrmPrecificacao
  Width = 1201
  ExplicitWidth = 1201
  inherited MainLayout: TdxLayoutControl
    Width = 1093
    ExplicitWidth = 1093
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 755
      TabOrder = 5
      ExplicitLeft = 755
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 7973
      TabOrder = 44
      ExplicitLeft = 7973
    end
    inherited PnlFrameHistorico: TPanel
      Width = 1454
      Height = 461
      TabOrder = 43
      ExplicitWidth = 1454
      ExplicitHeight = 461
    end
    object cbCompetencia: TcxDBLookupComboBox [6]
      Left = 522
      Top = 24
      AutoSize = False
      DataBinding.DataField = 'CODCOMPETENCIA'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.OnEditValueChanged = cbCompetenciaPropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 21
      Width = 86
    end
    object cbEmpresa: TcxDBLookupComboBox [7]
      Left = 609
      Top = 24
      AutoSize = False
      DataBinding.DataField = 'CODEMPRESA'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Height = 21
      Width = 145
    end
    object GridFuncao: TcxGrid [8]
      Left = 257
      Top = 143
      Width = 1225
      Height = 348
      TabOrder = 37
      object GridFuncaoDBTableView1: TcxGridDBTableView
        DragMode = dmAutomatic
        OnDblClick = GridFuncaoDBTableView1DblClick
        OnMouseMove = GridFuncaoDBTableView1MouseMove
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = GridFuncaoDBTableView1CellClick
        OnCustomDrawCell = GridFuncaoDBTableView1CustomDrawCell
        DataController.DataSource = DSFuncionarioSalario
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridFuncaoDBTableView1CODFUNCIONARIO: TcxGridDBColumn
          Caption = 'C'#243'd.Pessoa'
          DataBinding.FieldName = 'CODFUNCIONARIO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 62
        end
        object GridFuncaoDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Funcion'#225'rio'
          DataBinding.FieldName = 'DESCRICAO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 153
        end
        object GridFuncaoDBTableView1SALARIO: TcxGridDBColumn
          Caption = 'Sal'#225'rio'
          DataBinding.FieldName = 'SALARIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 63
        end
        object GridFuncaoDBTableView1TOTAL_ENCARGOS: TcxGridDBColumn
          Caption = 'Total Encargos'
          DataBinding.FieldName = 'TOTAL_ENCARGOS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Options.ShowEditButtons = isebAlways
          Width = 76
        end
        object GridFuncaoDBTableView1TOTAL_MENSAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL_MENSAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.ReadOnly = True
          Width = 60
        end
        object GridFuncaoDBTableView1QTD_HORAS_TRABALHADAS_MENSAL: TcxGridDBColumn
          Caption = 'Horas'
          DataBinding.FieldName = 'QTD_HORAS_TRABALHADAS_MENSAL'
          Width = 64
        end
        object GridFuncaoDBTableView1VALOR_HORA: TcxGridDBColumn
          Caption = 'Valor/Hora'
          DataBinding.FieldName = 'VALOR_HORA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Width = 60
        end
        object GridFuncaoDBTableView1CODSERVICO_VINCULADOÎProduto: TcxGridDBColumn
          Caption = 'Servi'#231'o'
          DataBinding.FieldName = 'CODSERVICO_VINCULADO'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = GridFuncaoDBTableView1CODSERVICO_VINCULADOÎProdutoPropertiesButtonClick
          Width = 42
        end
        object GridFuncaoDBTableView1PERC_RATEIO: TcxGridDBColumn
          Caption = '% Rateio'
          DataBinding.FieldName = 'PERC_RATEIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Properties.ReadOnly = True
        end
        object GridFuncaoDBTableView1QTD_HORAS_RATEADAS: TcxGridDBColumn
          Caption = 'Horas Efetivas'
          DataBinding.FieldName = 'QTD_HORAS_RATEADAS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Properties.ReadOnly = True
          Width = 65
        end
        object GridFuncaoDBTableView1TIPO_RATEIO: TcxGridDBColumn
          Caption = 'Tipo Rateio'
          DataBinding.FieldName = 'TIPO_RATEIO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
        end
        object GridFuncaoDBTableView1BtnEditar: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Buttons = <
            item
              Caption = 'Editar'
              Default = True
              Glyph.SourceDPI = 96
              Glyph.Data = {
                3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
                462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
                332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
                727665222077696474683D223136707822206865696768743D22313670782220
                76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
                656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
                673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
                646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
                6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
                2076696577426F783D22302030203136303020313630302220786D6C6E733A78
                6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
                6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
                2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
                31303B203C672069643D224C617965722031223E0D0A09093C6D657461646174
                612069643D22436F72656C436F727049445F30436F72656C2D4C61796572222F
                3E0D0A09093C726563742066696C6C3D226E6F6E65222077696474683D223136
                303022206865696768743D2231363030222F3E0D0A09093C672069643D225F31
                383632333731343030313932223E0D0A0909093C706174682066696C6C3D2223
                3043383546352220643D224D3132303520306C2D3833342030202D3333372033
                33372030203137382030203137392030203738332033363620302035202D3233
                6331322C2D35342032352C2D3130392033372C2D31363320332C2D313720372C
                2D33342031312C2D353120382C2D33342031322C2D33332033332C2D35352038
                322C2D3834203136372C2D313636203234392C2D3235302038332C2D38342031
                36392C2D313636203235312C2D3235302034322C2D34332038332C2D38352031
                32362C2D3132362031372C2D31372035392C2D36332039332C2D39366C30202D
                3436337A6D2D33323320313437376C33323320302030202D333233632D34322C
                3432202D38342C3834202D3132372C313236202D36362C3635202D3133312C31
                3332202D3139362C3139377A222F3E0D0A09093C2F673E0D0A09093C70617468
                2066696C6C3D22234430383742392220643D224D34313820313630306332332C
                2D33203330352C2D3637203335392C2D37392032392C2D372032322C2D372033
                392C2D32332038352C2D3833203136352C2D313637203234392C2D3235302038
                352C2D3833203136362C2D313636203235302C2D3234396C313838202D313838
                6332312C2D32312034312C2D34332036332C2D3633202D342C2D3130202D3238
                352C2D323837202D3239342C2D323936202D31312C35202D3130382C31303620
                2D3132352C313233202D34332C3431202D38342C3833202D3132362C31323520
                2D38332C3835202D3136372C313636202D3235302C323531202D38332C383520
                2D3136372C313635202D3235302C323530202D31352C3135202D31382C313120
                2D32342C3338202D342C3138202D382C3335202D31312C3532202D31302C3435
                202D36352C323835202D36382C3330397A222F3E0D0A09093C70617468206669
                6C6C3D2277686974652220643D224D35313420313530346C323037202D343563
                2D32352C2D3138202D38392C2D3330202D3132362C2D3334202D31322C2D3339
                202D31342C2D3932202D33342C2D313235202D352C35202D362C3134202D382C
                3232202D322C39202D332C3137202D352C3236202D392C3338202D33312C3132
                38202D33342C3135367A222F3E0D0A09093C706174682066696C6C3D22776869
                74652220643D224D313038312037343363392C31372037372C37392039352C39
                382031342C31342038382C39312039382C39366C3434202D3433632D342C2D39
                202D3138362C2D313930202D3139332C2D3139346C2D34342034337A222F3E0D
                0A09093C706174682066696C6C3D2277686974652220643D224D313137382036
                34376C313932203139336331302C2D362033372C2D33352034372C2D34352031
                302C2D31312034312C2D33382034362C2D34396C2D313931202D313931632D39
                2C33202D39302C3835202D39342C39327A222F3E0D0A09093C70617468206669
                6C6C3D2277686974652220643D224D353939203132323563362C31352033362C
                33322035372C3133352033372C31332036352C3132203130372C33372031312C
                372032312C31382032392C32326C343239202D343239202D313932202D313933
                202D343330203432387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsAutoWidth
          Properties.OnButtonClick = GridFuncaoDBTableView1Column1PropertiesButtonClick
          Options.ShowEditButtons = isebAlways
        end
      end
      object GridFuncaoLevel1: TcxGridLevel
        GridView = GridFuncaoDBTableView1
      end
    end
    object btnBuscar: TcxButton [9]
      Left = 28
      Top = 82
      Width = 116
      Height = 60
      Caption = 'Buscar Valores da Folha de Pagto'
      Enabled = False
      TabOrder = 31
      WordWrap = True
      OnClick = btnBuscarClick
    end
    object edtValorTotal: TcxCurrencyEdit [10]
      Left = 100
      Top = 510
      Properties.DisplayFormat = ',0.00;-,0.00'
      Style.HotTrack = False
      TabOrder = 38
      Width = 87
    end
    object edtHorasTotais: TcxCurrencyEdit [11]
      Left = 254
      Top = 510
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 39
      Width = 87
    end
    object edtMediaHora: TcxCurrencyEdit [12]
      Left = 435
      Top = 510
      Properties.DisplayFormat = ',0.00'
      Style.HotTrack = False
      TabOrder = 40
      Width = 87
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [13]
      Left = 9598
      Top = 10000
      DataBinding.DataField = 'COMPETENCIA_DESPESAS'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 45
      Visible = False
      Width = 164
    end
    object GridPlanoContas: TcxGrid [14]
      Left = 9598
      Top = 10000
      Width = 84
      Height = 96
      TabOrder = 46
      Visible = False
      object GridPlanoContasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object GridPlanoContasDBTableView1CODPLANOCONTAS: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODPLANOCONTAS'
          Width = 81
        end
        object GridPlanoContasDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Despesa'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 358
        end
        object GridPlanoContasDBTableView1TOTAL: TcxGridDBColumn
          Caption = 'R$ Total'
          DataBinding.FieldName = 'TOTAL'
          Width = 121
        end
      end
      object GridPlanoContasLevel1: TcxGridLevel
        GridView = GridPlanoContasDBTableView1
      end
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [15]
      Left = 9598
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'TOTAL_DESPESA_FIXA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 47
      Visible = False
      Height = 21
      Width = 136
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [16]
      Left = 9598
      Top = 10000
      DataBinding.DataField = 'TOTAL_SALARIO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 48
      Visible = False
      Width = 87
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [17]
      Left = 9598
      Top = 10000
      DataBinding.DataField = 'TOTAL_ENCARGOS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 49
      Visible = False
      Width = 87
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit [18]
      Left = 9598
      Top = 10000
      DataBinding.DataField = 'TOTAL_HORAS'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0 Hrs'
      Style.HotTrack = False
      TabOrder = 51
      Visible = False
      Width = 87
    end
    object cxDBCurrencyEdit8: TcxDBCurrencyEdit [19]
      Left = 9598
      Top = 10000
      DataBinding.DataField = 'TOTAL_DESPESA_FIXA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 53
      Visible = False
      Width = 87
    end
    object cxDBCurrencyEdit9: TcxDBCurrencyEdit [20]
      Left = 9598
      Top = 10000
      DataBinding.DataField = 'CUSTO_HORA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 55
      Visible = False
      Width = 87
    end
    object cxDBCurrencyEdit10: TcxDBCurrencyEdit [21]
      Left = 9598
      Top = 10000
      DataBinding.DataField = 'PERC_CUSTO_FIXO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 56
      Visible = False
      Width = 87
    end
    object cxDBCurrencyEdit11: TcxDBCurrencyEdit [22]
      Left = 9598
      Top = 10000
      DataBinding.DataField = 'PERC_CUSTO_VARIAVEL'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 57
      Visible = False
      Width = 87
    end
    object cxDBCurrencyEdit12: TcxDBCurrencyEdit [23]
      Left = 9598
      Top = 10000
      DataBinding.DataField = 'PERC_CUSTO_FINANCEIRO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 50
      Visible = False
      Width = 87
    end
    object cxDBCurrencyEdit13: TcxDBCurrencyEdit [24]
      Left = 9598
      Top = 10000
      DataBinding.DataField = 'PERC_MIN_LUCRO_DESEJADO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 52
      Visible = False
      Width = 87
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [25]
      Left = 9598
      Top = 10000
      DataBinding.DataField = 'METODO_CALCULO_CUSTO_PRODUTO'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 54
      Visible = False
      Width = 145
    end
    object btnAcessar_Folha: TcxButton [26]
      Left = 145
      Top = 82
      Width = 143
      Height = 60
      Caption = 'Acessar Folha de Pagamento Aberta'
      TabOrder = 32
      WordWrap = True
      OnClick = btnAcessar_FolhaClick
    end
    object lblAviso: TcxLabel [27]
      Left = 299
      Top = 105
      Caption = 
        'A Folha de Pagamento Referente a esta compet'#234'ncia est'#225' em aberto' +
        '. Obrigat'#243'rio realizar o fechamento.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clRed
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 112
    end
    object GridSubGrid: TcxGrid [28]
      Left = 28
      Top = 143
      Width = 228
      Height = 348
      BorderStyle = cxcbsNone
      TabOrder = 36
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmHybrid
      LookAndFeel.SkinName = 'TheBezier'
      object GridSubGridView: TcxGridDBLayoutView
        OnDragDrop = GridSubGridViewDragDrop
        OnDragOver = GridSubGridViewDragOver
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSSubGrid
        DataController.KeyFieldNames = 'CODIGO'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ItemHotTrack = False
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ScrollBars = ssVertical
        OptionsView.CellBorders = False
        OptionsView.ItemPadding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
        OptionsView.ItemPadding.Bottom = 0
        OptionsView.ItemPadding.Left = 0
        OptionsView.ItemPadding.Right = 0
        OptionsView.ItemPadding.Top = 0
        OptionsView.RecordCaption.Visible = False
        OptionsView.RecordIndent = 1
        OptionsView.SeparatorWidth = 0
        OptionsView.ShowOnlyEntireRecords = False
        OptionsView.ViewMode = lvvmSingleColumn
        object GridSubGridViewCODIGO: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          LayoutItem = GridSubGridViewLayoutItem1
        end
        object GridSubGridViewDESCRICAO: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'DESCRICAO'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          LayoutItem = GridSubGridViewLayoutItem2
          Options.Editing = False
          Options.Focusing = False
        end
        object GridSubGridViewQUANT: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'QUANT'
          LayoutItem = GridSubGridViewLayoutItem3
          Options.Editing = False
          Options.Focusing = False
        end
        object GridSubGridViewSEQUENCIA: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'SEQUENCIA'
          Visible = False
          LayoutItem = GridSubGridViewLayoutItem4
          SortIndex = 0
          SortOrder = soAscending
        end
        object GridSubGridViewCODSERVICO_VINCULADO: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'CODSERVICO_VINCULADO'
          PropertiesClassName = 'TcxHyperLinkEditProperties'
          Properties.AutoSelect = True
          Properties.ReadOnly = True
          Properties.SingleClick = True
          Properties.OnStartClick = GridSubGridViewCODSERVICO_VINCULADOPropertiesStartClick
          LayoutItem = GridSubGridViewLayoutItem5
        end
        object GridSubGridViewGroup_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Template Layout'
          Hidden = True
          ItemIndex = 1
          ShowBorder = False
          Index = -1
        end
        object GridSubGridViewLayoutItem1: TcxGridLayoutItem
          Index = -1
        end
        object GridSubGridViewLayoutItem2: TcxGridLayoutItem
          Parent = GridSubGridViewGroup1
          AlignHorz = ahLeft
          AlignVert = avClient
          SizeOptions.Height = 21
          SizeOptions.Width = 121
          CaptionOptions.Visible = False
          Index = 0
        end
        object GridSubGridViewLayoutItem3: TcxGridLayoutItem
          Parent = GridSubGridViewGroup1
          AlignHorz = ahLeft
          AlignVert = avTop
          SizeOptions.Height = 55
          CaptionOptions.Visible = False
          Index = 1
        end
        object GridSubGridViewLayoutItem4: TcxGridLayoutItem
          Index = -1
        end
        object GridSubGridViewLayoutItem5: TcxGridLayoutItem
          Parent = GridSubGridViewGroup_Root
          CaptionOptions.Visible = False
          Index = 1
        end
        object GridSubGridViewGroup1: TdxLayoutGroup
          Parent = GridSubGridViewGroup_Root
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
      end
      object GridSubGridLevel1: TcxGridLevel
        GridView = GridSubGridView
      end
    end
    object rbTipoRateio: TcxDBRadioGroup [29]
      Left = 1297
      Top = 82
      Caption = 'Detalhar por'
      DataBinding.DataField = 'TIPO_RATEIO'
      DataBinding.DataSource = DS
      ParentBackground = False
      ParentColor = False
      Properties.Columns = 2
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Funcionario'
          Value = 'FUNCIONARIO'
        end
        item
          Caption = 'Equipe'
          Value = 'EQUIPE'
        end>
      Style.Color = 16505534
      Style.TransparentBorder = False
      TabOrder = 35
      Transparent = True
      OnClick = rbTipoRateioClick
      Height = 55
      Width = 185
    end
    object chkGeraServicoFunc: TcxDBCheckBox [30]
      Left = 1309
      Top = 510
      Caption = 'Gerar Servi'#231'o por Funcion'#225'rio'
      DataBinding.DataField = 'ATUALIZA_FUNCIONARIO'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 42
      Transparent = True
    end
    object chkGeraServicoEquipe: TcxDBCheckBox [31]
      Left = 1159
      Top = 510
      Caption = 'Gerar Servi'#231'o por Equipe'
      DataBinding.DataField = 'ATUALIZA_EQUIPE'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 41
      Transparent = True
    end
    object cxLabel1: TcxLabel [32]
      Left = 902
      Top = 105
      Caption = 
        'Busque o custo dos funcion'#225'rios diretamente da folha de pagament' +
        'o.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBackground
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 112
    end
    object edtRespFechamento: TcxDBTextEdit [33]
      Left = 874
      Top = 25
      AutoSize = False
      DataBinding.DataField = 'USUARIO_FECHAMENTO'
      DataBinding.DataSource = DS
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Height = 19
      Width = 145
    end
    object edtNf_vICMSST: TcxDBCurrencyEdit [34]
      Left = 10000
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Height = 25
      Width = 95
    end
    object edtCalc_VCompra_Extra: TcxDBCurrencyEdit [35]
      Left = 10315
      Top = 10000
      AutoSize = False
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 61
      Visible = False
      Height = 21
      Width = 121
    end
    object cxButton1: TcxButton [36]
      Left = 10315
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 58
      Visible = False
    end
    object edtNF_VFrete: TcxDBCurrencyEdit [37]
      Left = 10000
      Top = 10000
      Margins.Top = 0
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 27
      Visible = False
      Height = 25
      Width = 96
    end
    object edtVOutro: TcxDBCurrencyEdit [38]
      Left = 10000
      Top = 10000
      Margins.Top = 0
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Height = 25
      Width = 96
    end
    object edtVDesc: TcxDBCurrencyEdit [39]
      Left = 10315
      Top = 10000
      Margins.Top = 0
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 66
      Visible = False
      Width = 121
    end
    object edtLucro: TcxDBCurrencyEdit [40]
      Left = 10315
      Top = 10000
      Margins.Top = 0
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Style.Color = 11333821
      Style.HotTrack = False
      TabOrder = 59
      Visible = False
      Width = 121
    end
    object edtNF_Calc_VCompra_Extra: TcxDBCurrencyEdit [41]
      Left = 10000
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Height = 25
      Width = 96
    end
    object edtCusto_Variavel: TcxDBCurrencyEdit [42]
      Left = 10000
      Top = 10000
      Margins.Top = 0
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Height = 25
      Width = 96
    end
    object edtCusto_Financeiro: TcxDBCurrencyEdit [43]
      Left = 10000
      Top = 10000
      Margins.Top = 0
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      Height = 25
      Width = 96
    end
    object edtCusto_Representante: TcxDBCurrencyEdit [44]
      Left = 10000
      Top = 10000
      Margins.Top = 0
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Height = 25
      Width = 96
    end
    object edtComissaoFuncionario: TcxDBCurrencyEdit [45]
      Left = 10000
      Top = 10000
      Margins.Top = 0
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Height = 25
      Width = 96
    end
    object edtComissao_Agencia: TcxDBCurrencyEdit [46]
      Left = 10000
      Top = 10000
      Margins.Top = 0
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 23
      Visible = False
      Height = 25
      Width = 96
    end
    object edtComissaoProducao: TcxDBCurrencyEdit [47]
      Left = 10000
      Top = 10000
      Margins.Top = 0
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 25
      Visible = False
      Height = 25
      Width = 96
    end
    object lblPVendaTotal: TcxDBCurrencyEdit [48]
      Left = 10315
      Top = 10000
      AutoSize = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 60
      Visible = False
      Height = 21
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [49]
      Left = 10315
      Top = 10000
      Margins.Top = 0
      DataBinding.DataField = 'CALC_VENDA_MINIMO_VALOR'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.ReadOnly = True
      Style.Color = 13303807
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 63
      Visible = False
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [50]
      Left = 10315
      Top = 10000
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PMARGEM_CONTRIBUICAO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Style.Color = 10542997
      Style.HotTrack = False
      TabOrder = 68
      Visible = False
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [51]
      Left = 10315
      Top = 10000
      Margins.Top = 0
      DataBinding.DataField = 'CALC_VVENDA_SUGERIDO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.ReadOnly = True
      Style.Color = 13303807
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 62
      Visible = False
      Width = 121
    end
    object cxButton2: TcxButton [52]
      Left = 10315
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Aplicar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
        72733B526962626F6E3B6463C8680000037D49444154785E4D8E7F4C94051CC6
        3FEF7B77E02073EA92742577579B684891E62AB6C4526B6013696BC9DC5A0B33
        D0322DA716D3CA94A21A8E96E976AEB654688E409B46B859CC249500E3F81588
        234EE0F875DC1DF7A3BB7BDFF7DBC16AEBD9F3D9BEFF3CCFF7C13555CB58A801
        40014CC5E5696BF638D24FBEF7EDF2D683550F7B0E5666B4969C5A5EBBEBCB65
        2F0209803A116E6438F82377A66A60385007A0E4EFB2A5BC51B1B4AEF4EC5AB9
        D476583A87AA642C7055BA47CE4A43F72752713157F67D93DE54B0DFBE04308D
        867E9E290050725F4BBDB7F8E8B29EAA86B7C4E5BF203DDEE3D23E71585AC6F6
        48E7E4C7D2E777C870A05E7E68DE277B4F668C6EDE6BCF00D4017F350A607EF5
        48DAB99CECBC9CF4343BC3E1264CAA60C282AAA8288A028A30313E852DE509EE
        0C4D72EEF26967CD17FD4F0EDE0A064DF9BBEDEB6CD6C51F3C9DF5382EFF1540
        104014216E500C2ED6DDA4F67C3BEDB79BC9C95EC3E8F8784AD28288BBADC1D3
        6C4E98652A7C2C7D2543816674430304C4885B0755E1CC99EBCC51D750F14E35
        DBCB32E91DF98DCCA5ABE8FCB36733E0500D3132EF9EAB108C7AE9ED1BA6B4AC
        969F2E39896A11CE5F68212529975D5B4A395A59C40B79CF6049D0489AAD81AA
        3C0A9854436741140FE148809AEA16CA8AAEA34C65F1E9E7F524EBEBD99A7F80
        53751FB2707118EB836642311F31C63174497C286BEE6C55D3F48971DF2088C1
        A60D6BF9BAB6849D0547D8FD520D2F3F5F822FD8C7AFCEEF58B16A11FEC82831
        3DC6A87F8868C488745C9D0C9AF5A8D2E51EF15BE72FD248B127E2F5FE8DE3FB
        FDEC28280755E1FDCFB691BF310B6FC48566C4C030F08D458984B40E4057837E
        ADAAA7CB87A0E2090EB2E491594C1A4DD45C2EC779AB0E53B287C4399384A353
        718288A8F4767B09F8F4F380069094BBDD7AB3E474869CB8B1428E5DCB90AAB6
        0DB2E59055B2B621C72EAF93134D99723C8EE3F79572A83A5336EEB439EF9A67
        990FA82A1071F7855EF9E35AC0D3EB0C010A9EF000799B56F1EEDBAFC7BF87D0
        0D411185BEEE30AD8DFE88AB2B501CF0C4FC5706DE34CC0D7F15E9AB53BF6A17
        784ED78C4AB72BF6803DDD82B6B013D5A420064CB875FABB628CB8A21DEEDBA1
        A2D6FAB11B8066480C7EE92F045000737CD6BCA736DFB77F7D616A63EE769BCC
        B0C326CF6E4D6D5B5D70FF47C9732CF700164099CE4D3373FCA76CAB43052CFF
        62065440001D884E130F19FC4FFF00FE20CB5D5DF1FFF30000000049454E44AE
        426082}
      TabOrder = 65
      Visible = False
    end
    object cxButton3: TcxButton [53]
      Left = 10315
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Aplicar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
        72733B526962626F6E3B6463C8680000037D49444154785E4D8E7F4C94051CC6
        3FEF7B77E02073EA92742577579B684891E62AB6C4526B6013696BC9DC5A0B33
        D0322DA716D3CA94A21A8E96E976AEB654688E409B46B859CC249500E3F81588
        234EE0F875DC1DF7A3BB7BDFF7DBC16AEBD9F3D9BEFF3CCFF7C13555CB58A801
        40014CC5E5696BF638D24FBEF7EDF2D683550F7B0E5666B4969C5A5EBBEBCB65
        2F0209803A116E6438F82377A66A60385007A0E4EFB2A5BC51B1B4AEF4EC5AB9
        D476583A87AA642C7055BA47CE4A43F72752713157F67D93DE54B0DFBE04308D
        867E9E290050725F4BBDB7F8E8B29EAA86B7C4E5BF203DDEE3D23E71585AC6F6
        48E7E4C7D2E777C870A05E7E68DE277B4F668C6EDE6BCF00D4017F350A607EF5
        48DAB99CECBC9CF4343BC3E1264CAA60C282AAA8288A028A30313E852DE509EE
        0C4D72EEF26967CD17FD4F0EDE0A064DF9BBEDEB6CD6C51F3C9DF5382EFF1540
        104014216E500C2ED6DDA4F67C3BEDB79BC9C95EC3E8F8784AD28288BBADC1D3
        6C4E98652A7C2C7D2543816674430304C4885B0755E1CC99EBCC51D750F14E35
        DBCB32E91DF98DCCA5ABE8FCB36733E0500D3132EF9EAB108C7AE9ED1BA6B4AC
        969F2E39896A11CE5F68212529975D5B4A395A59C40B79CF6049D0489AAD81AA
        3C0A9854436741140FE148809AEA16CA8AAEA34C65F1E9E7F524EBEBD99A7F80
        53751FB2707118EB836642311F31C63174497C286BEE6C55D3F48971DF2088C1
        A60D6BF9BAB6849D0547D8FD520D2F3F5F822FD8C7AFCEEF58B16A11FEC82831
        3DC6A87F8868C488745C9D0C9AF5A8D2E51EF15BE72FD248B127E2F5FE8DE3FB
        FDEC28280755E1FDCFB691BF310B6FC48566C4C030F08D458984B40E4057837E
        ADAAA7CB87A0E2090EB2E491594C1A4DD45C2EC779AB0E53B287C4399384A353
        718288A8F4767B09F8F4F380069094BBDD7AB3E474869CB8B1428E5DCB90AAB6
        0DB2E59055B2B621C72EAF93134D99723C8EE3F79572A83A5336EEB439EF9A67
        990FA82A1071F7855EF9E35AC0D3EB0C010A9EF000799B56F1EEDBAFC7BF87D0
        0D411185BEEE30AD8DFE88AB2B501CF0C4FC5706DE34CC0D7F15E9AB53BF6A17
        784ED78C4AB72BF6803DDD82B6B013D5A420064CB875FABB628CB8A21DEEDBA1
        A2D6FAB11B8066480C7EE92F045000737CD6BCA736DFB77F7D616A63EE769BCC
        B0C326CF6E4D6D5B5D70FF47C9732CF700164099CE4D3373FCA76CAB43052CFF
        62065440001D884E130F19FC4FFF00FE20CB5D5DF1FFF30000000049454E44AE
        426082}
      TabOrder = 64
      Visible = False
    end
    object cxLabel3: TcxLabel [54]
      Left = 10234
      Top = 10000
      Caption = 'Lucro e Margem de Contribui'#231#227'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3815994
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      Visible = False
      AnchorX = 10341
    end
    object edtPPerdasProducao: TcxDBCurrencyEdit [55]
      Left = 10000
      Top = 10000
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CALC_PVENDA_PERDA_PRODUCAO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 29
      Visible = False
      Height = 25
      Width = 96
    end
    object btnAcessarImpostos: TcxButton [56]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 8
      Visible = False
    end
    object btnAcessarCustosFixos: TcxButton [57]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 12
      Visible = False
    end
    object btnAcessarCustosVariaveis: TcxButton [58]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 14
      Visible = False
    end
    object btnAcessarCustosFinanceiros: TcxButton [59]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 16
      Visible = False
    end
    object btnAcessarOutrosCustos: TcxButton [60]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 18
      Visible = False
    end
    object btnAcessarComissaoRep: TcxButton [61]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 20
      Visible = False
    end
    object btnAcessarComissaoFunc: TcxButton [62]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 22
      Visible = False
    end
    object btnAcessarComissaoAgencia: TcxButton [63]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 24
      Visible = False
    end
    object btnAcessarComissaoProd: TcxButton [64]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 26
      Visible = False
    end
    object btnAcessarFrete: TcxButton [65]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 28
      Visible = False
    end
    object btnAcessarPerdaProducao: TcxButton [66]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 30
      Visible = False
    end
    object edtPMaoDeObra: TcxDBCurrencyEdit [67]
      Left = 10000
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Visible = False
      Height = 25
      Width = 94
    end
    object btnMaoDeObra: TcxButton [68]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = 'Acessar'
      TabOrder = 10
      Visible = False
      OnClick = btnMaoDeObraClick
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 6
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = dxLayoutGroup2
      Visible = True
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Compet'#234'ncia'
      CaptionOptions.Layout = clTop
      Control = cbCompetencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Empresa'
      CaptionOptions.Layout = clTop
      Control = cbEmpresa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = GrupoMain
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = dxLayoutGroup2TabChanged
      Index = 3
    end
    object GrupoMaoDeObra: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Funcion'#225'rios (M'#227'o de Obra)'
      Index = 1
    end
    object MainLayoutGroup7: TdxLayoutGroup
      Parent = GrupoMaoDeObra
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object MainLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      Control = GridFuncao
      ControlOptions.OriginalHeight = 184
      ControlOptions.OriginalWidth = 870
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object libtnBuscar: TdxLayoutItem
      Parent = MainLayoutGroup7
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = btnBuscar
      ControlOptions.OriginalHeight = 39
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object MainLayoutGroup5: TdxLayoutGroup
      Parent = GrupoMaoDeObra
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Sub-Total'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object MainLayoutItem3: TdxLayoutItem
      Parent = MainLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Custo Total:'
      Control = edtValorTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem5: TdxLayoutItem
      Parent = MainLayoutGroup5
      Offsets.Left = 10
      CaptionOptions.Text = 'Total Horas'
      Control = edtHorasTotais
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem18: TdxLayoutItem
      Parent = MainLayoutGroup5
      Offsets.Left = 10
      CaptionOptions.Text = 'Valor M'#233'dio/Hora'
      Control = edtMediaHora
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Despesas Fixas e Vari'#225'veis'
      ItemIndex = 3
      Index = -1
    end
    object MainLayoutItem34: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Compet'#234'ncia das Despesas:'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 164
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutGroup8: TdxLayoutGroup
      Parent = MainLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object MainLayoutItem2: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridPlanoContas
      ControlOptions.OriginalHeight = 96
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutGroup6: TdxLayoutGroup
      Parent = MainLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 3
    end
    object MainLayoutItem19: TdxLayoutItem
      Parent = MainLayoutGroup6
      AlignHorz = ahRight
      CaptionOptions.Text = 'Total:'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Resumo'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object MainLayoutGroup10: TdxLayoutGroup
      Parent = MainLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object MainLayoutItem28: TdxLayoutItem
      Parent = MainLayoutGroup10
      CaptionOptions.Text = 'Sal'#225'rio:'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem29: TdxLayoutItem
      Parent = MainLayoutGroup10
      CaptionOptions.Text = 'Encargos:'
      Control = cxDBCurrencyEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem30: TdxLayoutItem
      Parent = MainLayoutGroup10
      CaptionOptions.Text = 'Horas:'
      Control = cxDBCurrencyEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutItem31: TdxLayoutItem
      Parent = MainLayoutGroup10
      CaptionOptions.Text = 'Despesas:'
      Control = cxDBCurrencyEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object MainLayoutItem32: TdxLayoutItem
      Parent = MainLayoutGroup10
      CaptionOptions.Text = 'Custo / Hora'
      Control = cxDBCurrencyEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object MainLayoutGroup11: TdxLayoutGroup
      Parent = MainLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Percentuais de Custo e Lucro'
      Index = 1
    end
    object MainLayoutItem37: TdxLayoutItem
      Parent = MainLayoutGroup11
      CaptionOptions.Text = 'Custo Fixo'
      Control = cxDBCurrencyEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem38: TdxLayoutItem
      Parent = MainLayoutGroup11
      CaptionOptions.Text = 'Custo Vari'#225'vel'
      Control = cxDBCurrencyEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem39: TdxLayoutItem
      Parent = MainLayoutGroup11
      CaptionOptions.Text = 'Custo Financeiro'
      Control = cxDBCurrencyEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutItem40: TdxLayoutItem
      Parent = MainLayoutGroup11
      CaptionOptions.Text = 'Lucro Min. Desejado'
      Control = cxDBCurrencyEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object MainLayoutItem41: TdxLayoutItem
      Parent = MainLayoutGroup11
      CaptionOptions.Text = 'M'#233'todo de C'#225'lculo'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object libtnAcessar_Folha: TdxLayoutItem
      Parent = MainLayoutGroup7
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Visible = False
      Control = btnAcessar_Folha
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lilblAviso: TdxLayoutItem
      Parent = MainLayoutGroup7
      AlignVert = avCenter
      Visible = False
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft]
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = lblAviso
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 592
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liGridSubGrid: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      Visible = False
      Control = GridSubGrid
      ControlOptions.OriginalHeight = 584
      ControlOptions.OriginalWidth = 228
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMaoDeObra
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = MainLayoutGroup7
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = rbTipoRateio
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 55
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lichkGeraServicoFunc: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkGeraServicoFunc
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 161
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lichkGeraServicoEquipe: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = chkGeraServicoEquipe
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 139
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liComoBuscar: TdxLayoutItem
      Parent = MainLayoutGroup7
      AlignVert = avCenter
      Visible = False
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft]
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 394
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      Padding.Bottom = 1
      Padding.AssignedValues = [lpavBottom]
      CaptionOptions.Text = 'Respons'#225'vel Fechamento'
      CaptionOptions.Layout = clTop
      Control = edtRespFechamento
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = MainLayoutGroup5
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Markup'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LiedtNf_vICMSST: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avClient
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Impostos'
      Control = edtNf_vICMSST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object LiedtNF_Calc_VCompra_Extra: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avClient
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Custos Fixos'
      Control = edtNF_Calc_VCompra_Extra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object LiedtNF_Calc_VCusto_Variavel: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahLeft
      AlignVert = avClient
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Custos Vari'#225'veis'
      Control = edtCusto_Variavel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object LiedtCALC_PVENDA_CUSTO_FINANCEIRO: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Custos Financeiros'
      Control = edtCusto_Financeiro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object LiedtVOutro: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahLeft
      AlignVert = avClient
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Outros Custos'
      Control = edtVOutro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object LiedtCALC_PVENDA_COMISSAO_REP: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahLeft
      AlignVert = avClient
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Comiss'#227'o Rep.'
      Control = edtCusto_Representante
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object LiedtCALC_PVENDA_COMISSAO_FUN: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avClient
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Comiss'#227'o Funcion'#225'rio'
      Control = edtComissaoFuncionario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
    end
    object LiedtCALC_PVENDA_COMISSAO_AGENCIA: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      AlignVert = avClient
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Comiss'#227'o Ag'#234'ncia'
      Control = edtComissao_Agencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 11
    end
    object LiedtLiedtCALC_PVENDA_COMISSAO_PRODUCAO: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahLeft
      AlignVert = avClient
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Comiss'#227'o Produ'#231#227'o'
      Control = edtComissaoProducao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 12
    end
    object LiedtNF_VFrete: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahLeft
      AlignVert = avClient
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Frete'
      Control = edtNF_VFrete
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 13
    end
    object LiedtPPerdasProducao: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahLeft
      AlignVert = avClient
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft]
      CaptionOptions.Text = 'Perdas de Produ'#231#227'o'
      Control = edtPPerdasProducao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 14
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup4
      Padding.Bottom = 2
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiLucro: TdxLayoutItem
      Parent = dxLayoutGroup4
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight, lpavTop]
      CaptionOptions.Text = 'Lucro Previsto'
      Control = edtLucro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Total % Sobre a Venda'
      Control = lblPVendaTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtCalc_VCompra_Extra: TdxLayoutItem
      Parent = dxLayoutGroup4
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Markup'
      Control = edtCalc_VCompra_Extra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Pre'#231'o M'#237'nimo Venda'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LibtnAplicaPrecoMinimo: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtVDesc: TdxLayoutItem
      Parent = dxLayoutGroup4
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Desconto Permitido %'
      Control = edtVDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LiedtCALC_PMARGEM_CONTRIBUICAO: TdxLayoutItem
      Parent = dxLayoutGroup4
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Margem Contribui'#231#227'o%'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahClient
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Valor Sugerido de Venda'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LibtnAplicaValorSugerido: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      ItemIndex = 14
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = btnAcessarImpostos
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAcessarCustosFixos
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAcessarCustosVariaveis
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAcessarCustosFinanceiros
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAcessarOutrosCustos
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAcessarComissaoRep
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAcessarComissaoFunc
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAcessarComissaoAgencia
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAcessarComissaoProd
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAcessarFrete
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAcessarPerdaProducao
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      Padding.Left = 31
      Padding.AssignedValues = [lpavLeft]
      CaptionOptions.Text = 'M'#227'o de Obra'
      Control = edtPMaoDeObra
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnMaoDeObra
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup22
      LayoutDirection = ldHorizontal
      Index = 3
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Width = 1201
    ExplicitWidth = 1201
  end
  inherited pnlMenuCadastro: TPanel
    Left = 1093
    ExplicitLeft = 1093
    inherited tcCadastro: TdxTileControl
      Top = 440
      Height = 90
      Align = alBottom
      ExplicitTop = 440
      ExplicitHeight = 90
    end
    inherited dxTileControl1: TdxTileControl
      Top = 304
      Height = 136
      ExplicitTop = 304
      ExplicitHeight = 136
    end
    object edtDT_Faturamento: TcxDBTextEdit
      Left = 0
      Top = 283
      TabStop = False
      Align = alTop
      DataBinding.DataField = 'DT_FECHAMENTO'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clActiveBorder
      Style.HotTrack = False
      TabOrder = 7
      Width = 108
    end
    object dxTileControl2: TdxTileControl
      Left = 0
      Top = 304
      Width = 108
      Height = 136
      Images = ImgListMenuConfig
      OptionsBehavior.ItemMoving = False
      OptionsBehavior.ScrollMode = smScrollButtons
      OptionsView.GroupIndent = 20
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 40
      OptionsView.IndentHorz = 4
      OptionsView.IndentVert = 2
      OptionsView.ItemHeight = 40
      OptionsView.ItemIndent = 0
      OptionsView.ItemWidth = 50
      TabOrder = 8
      object dxTileControlGroup7: TdxTileControlGroup
        Index = 0
      end
      object tiFecharMes: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Style.BorderColor = 540330879
        Style.GradientBeginColor = 540330879
        Style.GradientEndColor = 540330879
        Text1.AssignedValues = []
        Text1.Value = 'Fechar M'#234's'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiFecharMesClick
      end
      object tiCancelarFechamento: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Style.GradientBeginColor = clRed
        Style.GradientEndColor = 5460991
        Text1.AssignedValues = []
        Text1.Value = 'Cancelar Fechamento'
        Text1.WordWrap = True
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiCancelarFechamentoClick
      end
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 2
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * from PRECIFICACAO'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRECIFICACAO'
    Modulo = 'FINANCEIRO'
  end
  object FuncionarioSalario: TFDQuery
    AfterOpen = FuncionarioSalarioAfterOpen
    BeforeClose = FuncionarioSalarioBeforeClose
    BeforeEdit = FuncionarioSalarioBeforeEdit
    BeforePost = FuncionarioSalarioBeforePost
    AfterPost = FuncionarioSalarioAfterPost
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIO_SALARIO'
      'WHERE COMPETENCIA BETWEEN :D1 AND :D2'
      ' '
      ' '
      ' ')
    Left = 312
    Top = 144
    ParamData = <
      item
        Name = 'D1'
        ParamType = ptInput
      end
      item
        Name = 'D2'
        ParamType = ptInput
      end>
  end
  object DSFuncionarioSalario: TDataSource
    DataSet = FuncionarioSalario
    Left = 340
    Top = 144
  end
  object UCHist_FuncionarioSalario: TUCHist_DataSet
    OnAddHistorico = UCHist_SeguidorAddHistorico
    DataSet = FuncionarioSalario
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    Tabela = 'FUNCIONARIO_SALARIO'
    Modulo = 'FINANCEIRO'
    Left = 368
    Top = 144
  end
  object Pessoa: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select P.CODIGO, P.SEQUENCIA_FUN, P.RAZAOSOCIAL, P.FANTASIA, P.S' +
        'ALARIO,'
      '       P.DATA_ADMISSAO, P.FUNCIONARIO_HORAS_MENSSAL'
      'from PESSOAS P'
      'where (P.IS_FUN = '#39'S'#39')'
      '      and ((p.DATA_ADMISSAO <= :DATAREFERENCIA)'
      '           or (P.DATA_ADMISSAO is null))'
      '      and ((coalesce(p.ATIVO, '#39'S'#39') <> '#39'N'#39'))'
      'order by P.RAZAOSOCIAL')
    Left = 313
    Top = 172
    ParamData = <
      item
        Name = 'DATAREFERENCIA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object DSPessoa: TDataSource
    DataSet = Pessoa
    Left = 341
    Top = 172
  end
  object FolhaPagamento: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT FP.CODIGO'
      'FROM FOLHA_PAGAMENTO FP'
      'WHERE'
      'FP.DT_REFERENCIA BETWEEN :d1 AND :d2 AND'
      'FP.DT_FINANCEIRO IS NULL AND'
      'FP.ATIVO = '#39'S'#39)
    Left = 313
    Top = 200
    ParamData = <
      item
        Name = 'D1'
        ParamType = ptInput
      end
      item
        Name = 'D2'
        ParamType = ptInput
      end>
  end
  object SubGrid: TFDQuery
    BeforeOpen = SubGridBeforeOpen
    AfterOpen = SubGridAfterOpen
    AfterClose = SubGridAfterClose
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evItems]
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, 10 as QUANT FROM CENTRO_TRABALHO'
      'WHERE ATIVO = '#39'S'#39)
    Left = 103
    Top = 201
  end
  object DSSubGrid: TDataSource
    DataSet = SubGrid
    Left = 131
    Top = 201
  end
  object PessoaSelecionada: TFDQuery
    BeforeOpen = PessoaSelecionadaBeforeOpen
    AfterOpen = PessoaSelecionadaAfterOpen
    BeforePost = FuncionarioSalarioBeforePost
    AfterPost = PessoaSelecionadaAfterPost
    MasterSource = DSFuncionarioSalario
    MasterFields = 'PESSOA_FUNCIONARIO_CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIO_SALARIO'
      'WHERE COMPETENCIA BETWEEN :D1 AND :D2'
      'AND PESSOA_FUNCIONARIO_CODIGO = :PESSOA_FUNCIONARIO_CODIGO'
      ''
      ' '
      ' ')
    Left = 280
    Top = 144
    ParamData = <
      item
        Name = 'D1'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'D2'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'PESSOA_FUNCIONARIO_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object Produto: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'SELECT P.* FROM PRODUTO P'
      'WHERE P.CODIGO = :CODSERVICO_VINCULADO')
    Left = 312
    Top = 280
    ParamData = <
      item
        Name = 'CODSERVICO_VINCULADO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
  end
  object DSProduto: TDataSource
    DataSet = Produto
    Left = 340
    Top = 280
  end
  object UCHist_Produto: TUCHist_DataSet
    OnAddHistorico = UCHist_SeguidorAddHistorico
    DataSet = Produto
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    Left = 368
    Top = 280
  end
  object Centro_Trabalho: TFDQuery
    BeforeEdit = Centro_TrabalhoBeforeEdit
    MasterSource = DSSubGrid
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'SELECT CT.* FROM CENTRO_TRABALHO CT'
      'WHERE CT.CODIGO = :CODIGO')
    Left = 312
    Top = 308
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object DataSource1: TDataSource
    DataSet = Produto
    Left = 340
    Top = 308
  end
  object UCHist_CentroTrabalho: TUCHist_DataSet
    OnAddHistorico = UCHist_SeguidorAddHistorico
    DataSet = Centro_Trabalho
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    Tabela = 'Centro_Trabalho'
    Left = 368
    Top = 308
  end
  object dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList
  end
end
