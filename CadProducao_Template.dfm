inherited FrmProducao_Template: TFrmProducao_Template
  Caption = 'Cadastro de Templates de Produ'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 27
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 26
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 828
      TabOrder = 25
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 828
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Templates de Produ'#231#227'o'
    end
    object cxDBMemo1: TcxDBMemo [24]
      Left = 3
      Top = 97
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 21
      Height = 186
      Width = 588
    end
    object cxDBImage1: TcxDBImage [25]
      Left = 592
      Top = 97
      DataBinding.DataField = 'IMAGEM'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 23
      Height = 218
      Width = 283
    end
    object GridConsulta: TcxGrid [26]
      Left = 13
      Top = 352
      Width = 852
      Height = 344
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
      LookAndFeel.NativeStyle = False
      object GridConsultaDBTableView1: TcxGridDBTableView
        DragMode = dmAutomatic
        Navigator.Buttons.CustomButtons = <>
        FindPanel.ClearFindFilterTextOnClose = False
        FindPanel.DisplayMode = fpdmManual
        FindPanel.InfoText = 'Pesquisa...'
        FindPanel.UseExtendedSyntax = True
        DataController.DataModeController.GridModeBufferCount = 50
        DataController.DataSource = DSTemplate
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'Quantidade Total: 0'
            Kind = skSum
            FieldName = 'QUANT'
            Column = GridConsultaDBTableView1QUANT
          end
          item
            Kind = skCount
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Grouping = dtgByDate
        FilterRow.InfoText = 'Click aqui para definir um filtro'
        NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
        OptionsBehavior.IncSearch = True
        OptionsBehavior.FixedGroups = True
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.GroupBySorting = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow]
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 1
        OptionsView.DataRowHeight = 30
        OptionsView.GridLines = glNone
        OptionsView.GroupRowStyle = grsOffice11
        OptionsView.RowSeparatorColor = clMoneyGreen
        OptionsView.RowSeparatorWidth = 1
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Assunto'
          DataBinding.FieldName = 'DESCRICAO'
          Options.Editing = False
          Options.FilteringAddValueItems = False
          Width = 263
        end
        object GridConsultaDBTableView1TEM_LOGO: TcxGridDBColumn
          Caption = 'Aviso'
          DataBinding.FieldName = 'TEM_LOGO'
          Width = 36
        end
        object GridConsultaDBTableView1PRIORIDADE: TcxGridDBColumn
          Caption = 'Prioridade'
          DataBinding.FieldName = 'PRIORIDADE'
          PropertiesClassName = 'TdxRatingControlProperties'
          Options.Editing = False
          Options.FilteringAddValueItems = False
          Options.SortByDisplayText = isbtOn
          SortIndex = 0
          SortOrder = soDescending
          Width = 95
        end
        object GridConsultaDBTableView1TEM_PLAY: TcxGridDBColumn
          Caption = 'Trabalhando'
          DataBinding.FieldName = 'TEM_PLAY'
          PropertiesClassName = 'TdxToggleSwitchProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 68
        end
        object GridConsultaDBTableView1CODPRODUCAO: TcxGridDBColumn
          Caption = 'O.P'
          DataBinding.FieldName = 'CODPRODUCAO'
          Options.Editing = False
          Options.FilteringAddValueItems = False
          Width = 53
        end
        object GridConsultaDBTableView1SITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'SITUACAO'
          Options.Editing = False
          Width = 140
        end
        object GridConsultaDBTableView1CODVENDA: TcxGridDBColumn
          Caption = 'Venda'
          DataBinding.FieldName = 'CODVENDA'
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1CENTROTRABALHO: TcxGridDBColumn
          Caption = 'Centro de Trabalho'
          DataBinding.FieldName = 'CENTROTRABALHO'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
          Width = 184
        end
        object GridConsultaDBTableView1PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTO'
          Options.Editing = False
          Options.FilteringAddValueItems = False
          Width = 233
        end
        object GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 223
        end
        object GridConsultaDBTableView1DT_INICIO: TcxGridDBColumn
          Caption = 'Previs'#227'o de In'#237'cio'
          DataBinding.FieldName = 'DT_INICIO'
          Width = 173
        end
        object GridConsultaDBTableView1DT_PRAZO_FINAL: TcxGridDBColumn
          Caption = 'Prazo da O.S.'
          DataBinding.FieldName = 'DT_PRAZO_FINAL'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
          Width = 92
        end
        object GridConsultaDBTableView1PRAZOENTREGA: TcxGridDBColumn
          Caption = 'Prazo da O.P.'
          DataBinding.FieldName = 'PRAZOENTREGA'
          Options.Editing = False
          Options.FilteringAddValueItems = False
          Width = 122
        end
        object GridConsultaDBTableView1QUANT: TcxGridDBColumn
          Caption = 'A Produzir'
          DataBinding.FieldName = 'QUANT'
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'O.S'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn
          Caption = 'Codigo Centro de Trabalho'
          DataBinding.FieldName = 'CODCENTRO_TRABALHO'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1ORDENACAO: TcxGridDBColumn
          Caption = 'Ordena'#231#227'o'
          DataBinding.FieldName = 'ORDENACAO'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1DT_EMISSAO: TcxGridDBColumn
          Caption = 'Data de Emiss'#227'o'
          DataBinding.FieldName = 'DT_EMISSAO'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1EMISSAO_OP: TcxGridDBColumn
          Caption = 'Data de Emiss'#227'o OP'
          DataBinding.FieldName = 'EMISSAO_OP'
        end
        object GridConsultaDBTableView1DT_FIM: TcxGridDBColumn
          Caption = 'Data Fim'
          DataBinding.FieldName = 'DT_FIM'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1DT_FINALIZADO: TcxGridDBColumn
          Caption = 'Data Finalizado'
          DataBinding.FieldName = 'DT_FINALIZADO'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1TEMPO_ESTIMADO: TcxGridDBColumn
          Caption = 'Tempo Estimado'
          DataBinding.FieldName = 'TEMPO_ESTIMADO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn
          Caption = 'C'#243'digo Usu'#225'rio'
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1PCONCLUSAO: TcxGridDBColumn
          Caption = 'Conclus'#227'o'
          DataBinding.FieldName = 'PCONCLUSAO'
          PropertiesClassName = 'TcxProgressBarProperties'
          Properties.PeakValue = 100.000000000000000000
          Options.Editing = False
          Options.FilteringAddValueItems = False
          Width = 94
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'digo do Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1LARG: TcxGridDBColumn
          Caption = 'Largura'
          DataBinding.FieldName = 'LARG'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1COMP: TcxGridDBColumn
          Caption = 'Comprimento'
          DataBinding.FieldName = 'COMP'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1ESPESSURA: TcxGridDBColumn
          Caption = 'Espessura'
          DataBinding.FieldName = 'ESPESSURA'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1QTDADEPECA: TcxGridDBColumn
          Caption = 'Quatidade de Pe'#231'a'
          DataBinding.FieldName = 'QTDADEPECA'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1PATH: TcxGridDBColumn
          Caption = 'Caminho do Arquivo'
          DataBinding.FieldName = 'PATH'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1LOCAL: TcxGridDBColumn
          Caption = 'Aplica'#231#227'o/Acabamento'
          DataBinding.FieldName = 'LOCAL'
          Visible = False
          Options.Editing = False
          Options.FilteringAddValueItems = False
        end
        object GridConsultaDBTableView1ARQUIVADO: TcxGridDBColumn
          Caption = 'Arquivado'
          DataBinding.FieldName = 'ARQUIVADO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1TEMPO_INICIADO: TcxGridDBColumn
          DataBinding.FieldName = 'TEMPO_INICIADO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1PROTOCOLO: TcxGridDBColumn
          Caption = 'Protocolo'
          DataBinding.FieldName = 'PROTOCOLO'
          Width = 151
        end
        object GridConsultaDBTableView1QUANT_OS_EM_ANDAMENTO: TcxGridDBColumn
          Caption = 'O.S'#39's Em Andamento'
          DataBinding.FieldName = 'QUANT_OS_EM_ANDAMENTO'
          HeaderHint = 
            'Quantidade de outras Ordens de Servi'#231'o em andamento da mesma Ord' +
            'em de Produ'#231#227'o'
        end
        object GridConsultaDBTableView1DT_PREVISAO_ENTREGA: TcxGridDBColumn
          DataBinding.FieldName = 'DT_PREVISAO_ENTREGA'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1PODE_ENCAMINHAR: TcxGridDBColumn
          Caption = 'Pode Encaminhar'
          DataBinding.FieldName = 'PODE_ENCAMINHAR'
          Options.Editing = False
        end
        object GridConsultaDBTableView1PODE_CANCELAR: TcxGridDBColumn
          Caption = 'Pode Cancelar'
          DataBinding.FieldName = 'PODE_CANCELAR'
          Options.Editing = False
        end
        object GridConsultaDBTableView1PODE_LIBERAR: TcxGridDBColumn
          Caption = 'Liberado'
          DataBinding.FieldName = 'PODE_LIBERAR'
          PropertiesClassName = 'TdxToggleSwitchProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
        end
        object GridConsultaDBTableView1TOTAL_DESPERDICIO: TcxGridDBColumn
          Caption = 'R$ Total Desperd'#237'cio'
          DataBinding.FieldName = 'TOTAL_DESPERDICIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object GridConsultaDBTableView1COLOR: TcxGridDBColumn
          DataBinding.FieldName = 'COLOR'
        end
        object GridConsultaDBTableView1PESSOA_FUNCIONARIO_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
        end
        object GridConsultaDBTableView1PESSOA_FUNCIONARIO_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_FUNCIONARIO_TIPO'
        end
        object GridConsultaDBTableView1PESSOA_FUNCIONARIO_SEQUENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_FUNCIONARIO_SEQUENCIA'
        end
        object GridConsultaDBTableView1FRENTE_VERSO: TcxGridDBColumn
          DataBinding.FieldName = 'FRENTE_VERSO'
        end
        object GridConsultaDBTableView1CODTIPO_IMPRESSAO: TcxGridDBColumn
          DataBinding.FieldName = 'CODTIPO_IMPRESSAO'
        end
        object GridConsultaDBTableView1TIPO_IMPRESSAO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO_IMPRESSAO'
        end
        object GridConsultaDBTableView1CODACABAMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODACABAMENTO'
        end
        object GridConsultaDBTableView1ACABAMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'ACABAMENTO'
        end
        object GridConsultaDBTableView1TEMPO_INICIO: TcxGridDBColumn
          DataBinding.FieldName = 'TEMPO_INICIO'
        end
        object GridConsultaDBTableView1TEMPO_FIM: TcxGridDBColumn
          DataBinding.FieldName = 'TEMPO_FIM'
        end
        object GridConsultaDBTableView1UNIDADE: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDADE'
        end
        object GridConsultaDBTableView1PRE_REQUISITO_CENTRO_TRABALHO: TcxGridDBColumn
          DataBinding.FieldName = 'PRE_REQUISITO_CENTRO_TRABALHO'
        end
        object GridConsultaDBTableView1OBS_PRODUCAO: TcxGridDBColumn
          DataBinding.FieldName = 'OBS_PRODUCAO'
        end
        object GridConsultaDBTableView1ACTUAL_START: TcxGridDBColumn
          DataBinding.FieldName = 'ACTUAL_START'
        end
        object GridConsultaDBTableView1ACTUAL_FINISH: TcxGridDBColumn
          DataBinding.FieldName = 'ACTUAL_FINISH'
        end
        object GridConsultaDBTableView1EVENT_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'EVENT_TYPE'
        end
        object GridConsultaDBTableView1GROUP_ID: TcxGridDBColumn
          DataBinding.FieldName = 'GROUP_ID'
        end
        object GridConsultaDBTableView1LOCATION: TcxGridDBColumn
          DataBinding.FieldName = 'LOCATION'
        end
        object GridConsultaDBTableView1OPTIONS: TcxGridDBColumn
          DataBinding.FieldName = 'OPTIONS'
        end
        object GridConsultaDBTableView1PARENT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT_ID'
        end
        object GridConsultaDBTableView1RECURRENCE_INDEX: TcxGridDBColumn
          DataBinding.FieldName = 'RECURRENCE_INDEX'
        end
        object GridConsultaDBTableView1RECURRENCE_INFO: TcxGridDBColumn
          DataBinding.FieldName = 'RECURRENCE_INFO'
        end
        object GridConsultaDBTableView1REMINDER_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'REMINDER_DATE'
        end
        object GridConsultaDBTableView1REMINDER_MINUTES: TcxGridDBColumn
          DataBinding.FieldName = 'REMINDER_MINUTES'
        end
        object GridConsultaDBTableView1REMINDER_RESOURCES: TcxGridDBColumn
          DataBinding.FieldName = 'REMINDER_RESOURCES'
        end
        object GridConsultaDBTableView1STATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
        end
        object GridConsultaDBTableView1TASK_INDEX: TcxGridDBColumn
          DataBinding.FieldName = 'TASK_INDEX'
        end
        object GridConsultaDBTableView1TASK_LINKS: TcxGridDBColumn
          DataBinding.FieldName = 'TASK_LINKS'
        end
        object GridConsultaDBTableView1TASK_STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'TASK_STATUS'
        end
        object GridConsultaDBTableView1DURACAO_ORCADA: TcxGridDBColumn
          DataBinding.FieldName = 'DURACAO_ORCADA'
        end
        object GridConsultaDBTableView1DURACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DURACAO'
        end
        object GridConsultaDBTableView1CODPRODUCAO_OS_PRE_REQUISITO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUCAO_OS_PRE_REQUISITO'
        end
        object GridConsultaDBTableView1TEMPO: TcxGridDBColumn
          DataBinding.FieldName = 'TEMPO'
        end
        object GridConsultaDBTableView1TEM_REVERSO: TcxGridDBColumn
          DataBinding.FieldName = 'TEM_REVERSO'
        end
        object GridConsultaDBTableView1VALOR: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR'
        end
        object GridConsultaDBTableView1CODLOCAL: TcxGridDBColumn
          DataBinding.FieldName = 'CODLOCAL'
        end
        object GridConsultaDBTableView1CUSTO_VENDA: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO_VENDA'
        end
        object GridConsultaDBTableView1SEQUENCIA_PROTOCOLO: TcxGridDBColumn
          DataBinding.FieldName = 'SEQUENCIA_PROTOCOLO'
        end
        object GridConsultaDBTableView1CENTRO_TRABALHO: TcxGridDBColumn
          DataBinding.FieldName = 'CENTRO_TRABALHO'
        end
        object GridConsultaDBTableView1CODEQUIPAMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODEQUIPAMENTO'
        end
        object GridConsultaDBTableView1EQUIPAMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'EQUIPAMENTO'
        end
      end
      object GridConsultaDBLayoutView1: TcxGridDBLayoutView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSTemplate
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ItemHotTrack = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.ScrollBars = ssNone
        OptionsView.MinValueWidth = 8
        OptionsView.RecordBorderWidth = 2
        OptionsView.RecordCaption.Visible = False
        OptionsView.RecordIndent = 0
        OptionsView.SeparatorColor = clBtnShadow
        OptionsView.SeparatorWidth = 0
        OptionsView.ViewMode = lvvmMultiColumn
        object GridConsultaDBLayoutView1PRODUTO: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PRODUTO'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          LayoutItem = GridConsultaDBLayoutView1LayoutItem17
        end
        object GridConsultaDBLayoutView1DESCRICAO: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'DESCRICAO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem5
        end
        object GridConsultaDBLayoutView1PRIORIDADE: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PRIORIDADE'
          LayoutItem = GridConsultaDBLayoutView1LayoutItem13
        end
        object GridConsultaDBLayoutView1RAZAOSOCIAL: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'RAZAOSOCIAL'
          LayoutItem = GridConsultaDBLayoutView1LayoutItem78
        end
        object GridConsultaDBLayoutView1COLOR: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'COLOR'
          PropertiesClassName = 'TdxColorEditProperties'
          LayoutItem = GridConsultaDBLayoutView1LayoutItem12
        end
        object GridConsultaDBLayoutView1PATH: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PATH'
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem23
        end
        object GridConsultaDBLayoutView1QUANT: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'QUANT'
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem18
        end
        object GridConsultaDBLayoutView1LARG: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'LARG'
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem19
        end
        object GridConsultaDBLayoutView1COMP: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'COMP'
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem20
        end
        object GridConsultaDBLayoutView1ESPESSURA: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'ESPESSURA'
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem21
        end
        object GridConsultaDBLayoutView1QTDADEPECA: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'QTDADEPECA'
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem22
        end
        object GridConsultaDBLayoutView1PESSOA_FUNCIONARIO_CODIGO: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
          LayoutItem = GridConsultaDBLayoutView1LayoutItem25
        end
        object GridConsultaDBLayoutView1LOCAL: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'LOCAL'
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem24
        end
        object GridConsultaDBLayoutView1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Template Card'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem5: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1Group3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Visible = False
          SizeOptions.Height = 29
          SizeOptions.Width = 229
          Index = 0
        end
        object GridConsultaDBLayoutView1LayoutItem12: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1AutoCreatedGroup1
          AlignVert = avClient
          CaptionOptions.Visible = False
          SizeOptions.Width = 66
          Index = 1
        end
        object GridConsultaDBLayoutView1LayoutItem13: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1AutoCreatedGroup1
          AlignHorz = ahLeft
          CaptionOptions.Visible = False
          SizeOptions.Width = 95
          Index = 0
        end
        object GridConsultaDBLayoutView1LayoutItem17: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1Group_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Visible = False
          SizeOptions.Width = 342
          Index = 0
        end
        object GridConsultaDBLayoutView1LayoutItem18: TcxGridLayoutItem
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem19: TcxGridLayoutItem
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem20: TcxGridLayoutItem
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem21: TcxGridLayoutItem
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem22: TcxGridLayoutItem
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem23: TcxGridLayoutItem
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem24: TcxGridLayoutItem
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem25: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1AutoCreatedGroup1
          AlignVert = avClient
          CaptionOptions.Visible = False
          SizeOptions.Width = 115
          Index = 2
        end
        object GridConsultaDBLayoutView1LayoutItem78: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1Group_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Visible = False
          SizeOptions.Width = 343
          Index = 1
        end
        object GridConsultaDBLayoutView1Group3: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Centro de Trabalho'
          ButtonOptions.Buttons = <>
          ShowBorder = False
          Index = -1
        end
        object GridConsultaDBLayoutView1AutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = GridConsultaDBLayoutView1Group_Root
          LayoutDirection = ldHorizontal
          Index = 2
        end
      end
      object GridConsultaWinExplorerView1: TcxGridWinExplorerView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Relat'#243'rio'
        GridView = GridConsultaDBLayoutView1
      end
    end
    object btnWizard: TcxButton [27]
      AlignWithMargins = True
      Left = 3
      Top = 284
      Width = 116
      Height = 25
      Hint = 'Start Wizard'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 15
      Caption = 'Start Wizard'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = ImgListBotoes16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 4
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Index = 1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 5
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 186
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Foto'
      CaptionOptions.Layout = clTop
      Control = cxDBImage1
      ControlOptions.OriginalHeight = 218
      ControlOptions.OriginalWidth = 283
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoLogAlteracoes
      AlignVert = avClient
      CaptionOptions.Text = 'Template'
      CaptionOptions.Visible = False
      Control = GridConsulta
      ControlOptions.OriginalHeight = 305
      ControlOptions.OriginalWidth = 1110
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = btnWizard
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      Index = 0
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
    FormClassCadastro = 'TFrmProducao_Template'
    FormClassConsulta = 'TConsuProducao_Template'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUCAO_TEMPLATE'
      'WHERE CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object CadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object CadastroMODELO_GRID: TBlobField
      FieldName = 'MODELO_GRID'
      Origin = 'MODELO_GRID'
    end
    object CadastroATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object CadastroDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object CadastroOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 1000
    end
    object CadastroIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUCAO_TEMPLATE'
    Modulo = 'PRODUCAO'
  end
  object Consulta: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    CachedUpdates = True
    AggregatesActive = True
    Connection = DMBanco.Banco
    UpdateTransaction = TransaFD
    ResourceOptions.AssignedValues = [rvStoreItems]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select PO.*, P.DT_EMISSAO as EMISSAO_OP, V.RAZAOSOCIAL, V.CODIGO' +
        ' as CODVENDA, '
      
        ' CT.DESCRICAO as CENTROTRABALHO, P.DT_PREVISAO_ENTREGA as PRAZOE' +
        'NTREGA '
      'from PRODUCAO_OS PO '
      
        'left join CENTRO_TRABALHO CT on (CT.CODIGO = PO.CODCENTRO_TRABAL' +
        'HO) '
      'left join PRODUCAO P on (P.CODIGO = PO.CODPRODUCAO) '
      'left join VENDA V on (V.CODIGO = P.CODVENDA)')
    Left = 339
    Top = 457
    object ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaCODPRODUCAO: TIntegerField
      FieldName = 'CODPRODUCAO'
      Origin = 'CODPRODUCAO'
    end
    object ConsultaCODCENTRO_TRABALHO: TIntegerField
      FieldName = 'CODCENTRO_TRABALHO'
      Origin = 'CODCENTRO_TRABALHO'
    end
    object ConsultaORDENACAO: TFloatField
      FieldName = 'ORDENACAO'
      Origin = 'ORDENACAO'
    end
    object ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 600
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaDT_EMISSAO: TSQLTimeStampField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object ConsultaDT_INICIO: TSQLTimeStampField
      FieldName = 'DT_INICIO'
      Origin = 'DT_INICIO'
    end
    object ConsultaDT_FIM: TSQLTimeStampField
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
    object ConsultaDT_FINALIZADO: TSQLTimeStampField
      FieldName = 'DT_FINALIZADO'
      Origin = 'DT_FINALIZADO'
    end
    object ConsultaDT_PREVISAO_ENTREGA: TSQLTimeStampField
      FieldName = 'DT_PREVISAO_ENTREGA'
      Origin = 'DT_PREVISAO_ENTREGA'
    end
    object ConsultaCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object ConsultaPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
    end
    object ConsultaPCONCLUSAO: TIntegerField
      FieldName = 'PCONCLUSAO'
      Origin = 'PCONCLUSAO'
    end
    object ConsultaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
    end
    object ConsultaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 300
    end
    object ConsultaQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'QUANT'
    end
    object ConsultaLARG: TFloatField
      FieldName = 'LARG'
      Origin = 'LARG'
    end
    object ConsultaCOMP: TFloatField
      FieldName = 'COMP'
      Origin = 'COMP'
    end
    object ConsultaESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
      Origin = 'ESPESSURA'
    end
    object ConsultaQTDADEPECA: TFloatField
      FieldName = 'QTDADEPECA'
      Origin = 'QTDADEPECA'
    end
    object ConsultaPATH: TStringField
      FieldName = 'PATH'
      Origin = 'PATH'
      Size = 255
    end
    object ConsultaLOCAL: TStringField
      FieldName = 'LOCAL'
      Origin = 'LOCAL'
      Size = 150
    end
    object ConsultaPESSOA_FUNCIONARIO_CODIGO: TStringField
      FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
      Origin = 'PESSOA_FUNCIONARIO_CODIGO'
      Size = 10
    end
    object ConsultaPESSOA_FUNCIONARIO_TIPO: TStringField
      FieldName = 'PESSOA_FUNCIONARIO_TIPO'
      Origin = 'PESSOA_FUNCIONARIO_TIPO'
      Size = 3
    end
    object ConsultaPESSOA_FUNCIONARIO_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_FUNCIONARIO_SEQUENCIA'
      Origin = 'PESSOA_FUNCIONARIO_SEQUENCIA'
    end
    object ConsultaFRENTE_VERSO: TStringField
      FieldName = 'FRENTE_VERSO'
      Origin = 'FRENTE_VERSO'
      Size = 1
    end
    object ConsultaCODTIPO_IMPRESSAO: TIntegerField
      FieldName = 'CODTIPO_IMPRESSAO'
      Origin = 'CODTIPO_IMPRESSAO'
    end
    object ConsultaTIPO_IMPRESSAO: TStringField
      FieldName = 'TIPO_IMPRESSAO'
      Origin = 'TIPO_IMPRESSAO'
      Size = 100
    end
    object ConsultaCODACABAMENTO: TIntegerField
      FieldName = 'CODACABAMENTO'
      Origin = 'CODACABAMENTO'
    end
    object ConsultaACABAMENTO: TStringField
      FieldName = 'ACABAMENTO'
      Origin = 'ACABAMENTO'
      Size = 150
    end
    object ConsultaTEMPO_INICIO: TSQLTimeStampField
      FieldName = 'TEMPO_INICIO'
      Origin = 'TEMPO_INICIO'
    end
    object ConsultaTEMPO_FIM: TSQLTimeStampField
      FieldName = 'TEMPO_FIM'
      Origin = 'TEMPO_FIM'
    end
    object ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object ConsultaPRE_REQUISITO_CENTRO_TRABALHO: TIntegerField
      FieldName = 'PRE_REQUISITO_CENTRO_TRABALHO'
      Origin = 'PRE_REQUISITO_CENTRO_TRABALHO'
    end
    object ConsultaOBS_PRODUCAO: TStringField
      FieldName = 'OBS_PRODUCAO'
      Origin = 'OBS_PRODUCAO'
      Size = 500
    end
    object ConsultaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 150
    end
    object ConsultaACTUAL_START: TIntegerField
      FieldName = 'ACTUAL_START'
      Origin = 'ACTUAL_START'
    end
    object ConsultaACTUAL_FINISH: TIntegerField
      FieldName = 'ACTUAL_FINISH'
      Origin = 'ACTUAL_FINISH'
    end
    object ConsultaEVENT_TYPE: TIntegerField
      FieldName = 'EVENT_TYPE'
      Origin = 'EVENT_TYPE'
    end
    object ConsultaGROUP_ID: TIntegerField
      FieldName = 'GROUP_ID'
      Origin = 'GROUP_ID'
    end
    object ConsultaLOCATION: TStringField
      FieldName = 'LOCATION'
      Origin = 'LOCATION'
      Size = 255
    end
    object ConsultaOPTIONS: TIntegerField
      FieldName = 'OPTIONS'
      Origin = 'OPTIONS'
    end
    object ConsultaPARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
      Origin = 'PARENT_ID'
    end
    object ConsultaRECURRENCE_INDEX: TIntegerField
      FieldName = 'RECURRENCE_INDEX'
      Origin = 'RECURRENCE_INDEX'
    end
    object ConsultaRECURRENCE_INFO: TBlobField
      FieldName = 'RECURRENCE_INFO'
      Origin = 'RECURRENCE_INFO'
    end
    object ConsultaREMINDER_DATE: TSQLTimeStampField
      FieldName = 'REMINDER_DATE'
      Origin = 'REMINDER_DATE'
    end
    object ConsultaREMINDER_MINUTES: TIntegerField
      FieldName = 'REMINDER_MINUTES'
      Origin = 'REMINDER_MINUTES'
    end
    object ConsultaREMINDER_RESOURCES: TBlobField
      FieldName = 'REMINDER_RESOURCES'
      Origin = 'REMINDER_RESOURCES'
    end
    object ConsultaSTATE: TIntegerField
      FieldName = 'STATE'
      Origin = 'STATE'
    end
    object ConsultaTASK_INDEX: TIntegerField
      FieldName = 'TASK_INDEX'
      Origin = 'TASK_INDEX'
    end
    object ConsultaTASK_LINKS: TBlobField
      FieldName = 'TASK_LINKS'
      Origin = 'TASK_LINKS'
    end
    object ConsultaTASK_STATUS: TIntegerField
      FieldName = 'TASK_STATUS'
      Origin = 'TASK_STATUS'
    end
    object ConsultaDURACAO_ORCADA: TIntegerField
      FieldName = 'DURACAO_ORCADA'
      Origin = 'DURACAO_ORCADA'
    end
    object ConsultaDURACAO: TIntegerField
      FieldName = 'DURACAO'
      Origin = 'DURACAO'
    end
    object ConsultaCODPRODUCAO_OS_PRE_REQUISITO: TIntegerField
      FieldName = 'CODPRODUCAO_OS_PRE_REQUISITO'
      Origin = 'CODPRODUCAO_OS_PRE_REQUISITO'
    end
    object ConsultaTEMPO_ESTIMADO: TIntegerField
      FieldName = 'TEMPO_ESTIMADO'
      Origin = 'TEMPO_ESTIMADO'
    end
    object ConsultaTEMPO: TIntegerField
      FieldName = 'TEMPO'
      Origin = 'TEMPO'
    end
    object ConsultaARQUIVADO: TStringField
      FieldName = 'ARQUIVADO'
      Origin = 'ARQUIVADO'
      Size = 1
    end
    object ConsultaTEM_REVERSO: TStringField
      FieldName = 'TEM_REVERSO'
      Origin = 'TEM_REVERSO'
      Size = 1
    end
    object ConsultaTEM_LOGO: TStringField
      FieldName = 'TEM_LOGO'
      Origin = 'TEM_LOGO'
      Size = 1
    end
    object ConsultaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'CODUSUARIO'
    end
    object ConsultaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object ConsultaCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
      Origin = 'CODLOCAL'
    end
    object ConsultaCUSTO_VENDA: TFloatField
      FieldName = 'CUSTO_VENDA'
      Origin = 'CUSTO_VENDA'
    end
    object ConsultaSEQUENCIA_PROTOCOLO: TIntegerField
      FieldName = 'SEQUENCIA_PROTOCOLO'
      Origin = 'SEQUENCIA_PROTOCOLO'
    end
    object ConsultaPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 50
    end
    object ConsultaCENTRO_TRABALHO: TStringField
      FieldName = 'CENTRO_TRABALHO'
      Origin = 'CENTRO_TRABALHO'
      Size = 50
    end
    object ConsultaPODE_ENCAMINHAR: TStringField
      FieldName = 'PODE_ENCAMINHAR'
      Origin = 'PODE_ENCAMINHAR'
      Size = 1
    end
    object ConsultaPODE_CANCELAR: TStringField
      FieldName = 'PODE_CANCELAR'
      Origin = 'PODE_CANCELAR'
      Size = 1
    end
    object ConsultaPODE_LIBERAR: TStringField
      FieldName = 'PODE_LIBERAR'
      Origin = 'PODE_LIBERAR'
      Size = 1
    end
    object ConsultaCODEQUIPAMENTO: TIntegerField
      FieldName = 'CODEQUIPAMENTO'
      Origin = 'CODEQUIPAMENTO'
    end
    object ConsultaEQUIPAMENTO: TStringField
      FieldName = 'EQUIPAMENTO'
      Origin = 'EQUIPAMENTO'
      Size = 100
    end
    object ConsultaTEM_PLAY: TStringField
      FieldName = 'TEM_PLAY'
      Origin = 'TEM_PLAY'
      Size = 1
    end
    object ConsultaTEM_MENSAGEM: TIntegerField
      FieldName = 'TEM_MENSAGEM'
      Origin = 'TEM_MENSAGEM'
    end
    object ConsultaEMISSAO_OP: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'EMISSAO_OP'
      Origin = 'DT_EMISSAO'
      ProviderFlags = []
    end
    object ConsultaRAZAOSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaCODVENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODVENDA'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaCENTROTRABALHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CENTROTRABALHO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaPRAZOENTREGA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'PRAZOENTREGA'
      Origin = 'DT_PREVISAO_ENTREGA'
      ProviderFlags = []
    end
    object ConsultaMinData: TAggregateField
      FieldName = 'MinData'
      Active = True
      DisplayName = ''
    end
    object ConsultaMaxData: TAggregateField
      FieldName = 'MaxData'
      Active = True
      DisplayName = ''
    end
  end
  object DSTemplate: TDataSource
    DataSet = Consulta
    Left = 367
    Top = 457
  end
end
