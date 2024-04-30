inherited FrmProjeto: TFrmProjeto
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 649
      TabOrder = 4
      ExplicitLeft = 649
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 951
      TabOrder = 35
      ExplicitLeft = 951
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10095
      Width = 997
      Height = 427
      TabOrder = 31
      ExplicitLeft = 10095
      ExplicitWidth = 997
      ExplicitHeight = 427
    end
    object cxGrid1: TcxGrid [6]
      Left = 10000
      Top = 10000
      Width = 997
      Height = 427
      TabOrder = 28
      Visible = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSProducao
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1CODVENDA: TcxGridDBColumn
          Caption = 'Venda'
          DataBinding.FieldName = 'CODVENDA'
          Width = 80
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO'
          Visible = False
        end
        object cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'd. Produto'
          DataBinding.FieldName = 'CODPRODUTO'
        end
        object cxGrid1DBTableView1PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTO'
          Width = 290
        end
        object cxGrid1DBTableView1PRIORIDADE: TcxGridDBColumn
          Caption = 'Prioridade'
          DataBinding.FieldName = 'PRIORIDADE'
          Width = 134
        end
        object cxGrid1DBTableView1QTDADEPECA: TcxGridDBColumn
          DataBinding.FieldName = 'QTDADEPECA'
          Visible = False
        end
        object cxGrid1DBTableView1LARG: TcxGridDBColumn
          DataBinding.FieldName = 'LARG'
          Visible = False
        end
        object cxGrid1DBTableView1COMP: TcxGridDBColumn
          DataBinding.FieldName = 'COMP'
          Visible = False
        end
        object cxGrid1DBTableView1ESPESSURA: TcxGridDBColumn
          DataBinding.FieldName = 'ESPESSURA'
          Visible = False
        end
        object cxGrid1DBTableView1QUANT: TcxGridDBColumn
          Caption = 'Quant'
          DataBinding.FieldName = 'QUANT'
        end
        object cxGrid1DBTableView1UNIDADE: TcxGridDBColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'UNIDADE'
          Width = 50
        end
        object cxGrid1DBTableView1DT_EMISSAO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_EMISSAO'
          Visible = False
        end
        object cxGrid1DBTableView1DT_FIM: TcxGridDBColumn
          DataBinding.FieldName = 'DT_FIM'
          Visible = False
        end
        object cxGrid1DBTableView1CALENDARIO_DT_PREVISAO_FIM: TcxGridDBColumn
          Caption = 'Previs'#227'o de Entrega'
          DataBinding.FieldName = 'CALENDARIO_DT_PREVISAO_FIM'
        end
        object cxGrid1DBTableView1SITUACAO: TcxGridDBColumn
          DataBinding.FieldName = 'SITUACAO'
          Visible = False
        end
        object cxGrid1DBTableView1CALENDARIO_DT_PREVISAO_INICIO: TcxGridDBColumn
          DataBinding.FieldName = 'CALENDARIO_DT_PREVISAO_INICIO'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object edtObservacao: TcxDBMemo [7]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 29
      Visible = False
      Height = 408
      Width = 997
    end
    object edtDT_Entrada: TcxDBDateEdit [8]
      Left = 902
      Top = 24
      Margins.Top = 0
      TabStop = False
      DataBinding.DataField = 'DT_FIM'
      DataBinding.DataSource = DS
      Properties.Kind = ckDateTime
      Style.HotTrack = False
      TabOrder = 6
      Width = 133
    end
    object cxDBDateEdit1: TcxDBDateEdit [9]
      Left = 768
      Top = 24
      Margins.Top = 0
      TabStop = False
      DataBinding.DataField = 'DT_INICIO'
      DataBinding.DataSource = DS
      Properties.Kind = ckDateTime
      Style.HotTrack = False
      TabOrder = 5
      Width = 133
    end
    object tokProducao_Marcador: TdxDBTokenEdit [10]
      Left = 9918
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'TOKEN_PROJETO_MARCADOR'
      DataBinding.DataSource = DS
      Properties.Lookup.FilterSources = [tefsDisplayText]
      Properties.Tokens = <
        item
          DisplayText = '1'
          Text = 'Token0'
        end
        item
          DisplayText = '2'
          Text = 'Token1'
        end
        item
          DisplayText = '3'
          Text = 'Token2'
        end
        item
          DisplayText = '4'
          Text = 'Token3'
        end
        item
          DisplayText = '5'
          Text = 'Token4'
        end
        item
          DisplayText = '6'
          Text = 'Token5'
        end
        item
          DisplayText = '7'
          Text = 'Token6'
        end
        item
          DisplayText = '8'
          Text = 'Token7'
        end>
      Style.Color = clWhite
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      TabOrder = 36
      Visible = False
      Height = 22
      Width = 120
    end
    object cxGrid2: TcxGrid [11]
      Left = 10000
      Top = 10000
      Width = 331
      Height = 337
      TabOrder = 19
      Visible = False
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DS_Produtos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CODIGO'
          Width = 49
        end
        object cxGridDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descric'#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 115
        end
        object cxGridDBTableView1QUANT: TcxGridDBColumn
          Caption = 'Quant'
          DataBinding.FieldName = 'QUANT'
          Width = 55
        end
        object cxGridDBTableView1UNIDADE: TcxGridDBColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'UNIDADE'
          Width = 55
        end
        object cxGridDBTableView1TEM_PRODUCAO_ENVIADO: TcxGridDBColumn
          Caption = 'Em Produ'#231#227'o '
          DataBinding.FieldName = 'TEM_PRODUCAO_ENVIADO'
          Width = 55
        end
      end
      object cxGrid2DBChartView1: TcxGridDBChartView
        Categories.DataBinding.FieldName = 'SITUACAO'
        DataController.DataSource = DS_Produtos
        DiagramPie.Active = True
        DiagramPie.Legend.Orientation = cpoVertical
        DiagramPie.SeriesCaptions = False
        DiagramPie.Values.CaptionPosition = pdvcpOutsideEndWithLeaderLines
        DiagramPie.Values.CaptionItems = [pdvciCategory, pdvciPercentage]
        Title.Text = 'Situa'#231#227'o'
        ToolBox.Visible = tvNever
        object cxGrid2DBChartView1DataGroup1: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'SITUACAO'
        end
        object cxGrid2DBChartView1Series1: TcxGridDBChartSeries
          DataBinding.FieldName = 'CODIGO'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cbxSituacao: TcxDBComboBox [12]
      Left = 522
      Top = 24
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'SITUACAO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Aberto'
        'Aguardando'
        'Cancelado'
        'Completo')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 3
      Height = 21
      Width = 126
    end
    object edtResponsavelÎPessoas: TcxDBButtonEdit [13]
      Left = 18
      Top = 60
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'PESSOA_RESPONSAVEL_SEQUENCIA'
      DataBinding.DataSource = DS
      ParentShowHint = False
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
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 79
    end
    object edtResponsavelÎPessoasÎRAZAOSOCIAL: TcxDBTextEdit [14]
      Left = 98
      Top = 60
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'RAZAOSOCIAL'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      Properties.ValidationErrorIconAlignment = taRightJustify
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      ShowHint = True
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 21
      Width = 307
    end
    object edtVOutro: TcxDBCurrencyEdit [15]
      Left = 406
      Top = 60
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DS
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 8
      Style.HotTrack = False
      TabOrder = 9
      Height = 21
      Width = 98
    end
    object tbrPConclusao: TcxDBTrackBar [16]
      Left = 505
      Top = 60
      AutoSize = False
      DataBinding.DataField = 'PCONCLUSAO'
      DataBinding.DataSource = DS
      Properties.AutoSize = False
      Properties.Frequency = 5
      Properties.Max = 100
      Properties.ShowPositionHint = True
      Properties.ShowTicks = False
      Properties.TrackSize = 11
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Height = 21
      Width = 128
    end
    object cxGrid3: TcxGrid [17]
      Left = 10000
      Top = 10000
      Width = 332
      Height = 337
      TabOrder = 18
      Visible = False
      object cxGridDBTableView2: TcxGridDBTableView
        OnDblClick = cxGridDBTableView2DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = cxGridDBTableView2CellClick
        DataController.DataSource = DSVenda
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGridDBTableView2TOTAL
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.OnAfterSummary = cxGridDBTableView2DataControllerSummaryAfterSummary
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView2CODIGO: TcxGridDBColumn
          Caption = 'C'#243'd.'
          DataBinding.FieldName = 'CODIGO'
          Width = 64
        end
        object cxGridDBTableView2DT_EMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'DT_EMISSAO'
          Width = 72
        end
        object cxGridDBTableView2VENDA_TIPO: TcxGridDBColumn
          Caption = 'Tipo de Venda'
          DataBinding.FieldName = 'VENDA_TIPO'
          Width = 82
        end
        object cxGridDBTableView2TOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 70
        end
        object cxGridDBTableView2VOUTRO: TcxGridDBColumn
          Caption = 'Acr'#233'scimo'
          DataBinding.FieldName = 'VOUTRO'
          Width = 70
        end
        object cxGridDBTableView2VDESC: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'VDESC'
          Width = 69
        end
        object cxGridDBTableView2NOTAFISCAL: TcxGridDBColumn
          Caption = 'NF'
          DataBinding.FieldName = 'NOTAFISCAL'
          Width = 69
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object cxLabel1: TcxLabel [18]
      Left = 634
      Top = 46
      AutoSize = False
      Caption = 'Situa'#231#227'o: Em produ'#231#227'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 35
      Width = 401
      AnchorY = 64
    end
    object cxGrid4: TcxGrid [19]
      Left = 10000
      Top = 10000
      Width = 332
      Height = 337
      TabOrder = 20
      Visible = False
      object cxGridDBTableView3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSFinanceiro_Venda
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView3CODIGO: TcxGridDBColumn
          Caption = 'C'#243'd.'
          DataBinding.FieldName = 'CODIGO'
          Width = 49
        end
        object cxGridDBTableView3DOCUMENTO: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'DOCUMENTO'
          Width = 95
        end
        object cxGridDBTableView3DATAPAGTO: TcxGridDBColumn
          Caption = 'Pagamento'
          DataBinding.FieldName = 'DATAPAGTO'
          Width = 108
        end
        object cxGridDBTableView3VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 62
        end
        object cxGridDBTableView3TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Width = 62
        end
        object cxGridDBTableView3STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
          Width = 120
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView3
      end
    end
    object lblDespesas: TcxLabel [20]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'R$ 7.000,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      OnClick = lblDespesasClick
      Height = 35
      Width = 87
      AnchorY = 10018
    end
    object cxLabel3: TcxLabel [21]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'R$ 10.000,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clGreen
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
      Height = 16
      Width = 88
    end
    object cxLabel4: TcxLabel [22]
      Left = 10000
      Top = 10000
      Caption = 'R$ 3.000,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      AnchorY = 10008
    end
    object cxLabel5: TcxLabel [23]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = '1 Cota'#231#227'o em Aberto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      Height = 35
      Width = 200
      AnchorY = 10018
    end
    object cxButton1: TcxButton [24]
      Left = 10000
      Top = 10000
      Width = 95
      Height = 35
      Caption = 'Ver Cota'#231#245'es'
      TabOrder = 17
      Visible = False
    end
    object cxLabel6: TcxLabel [25]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'R$ 800,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      Height = 35
      Width = 87
      AnchorY = 10018
    end
    object cxGrid5: TcxGrid [26]
      Left = 10000
      Top = 10000
      Width = 997
      Height = 361
      TabOrder = 27
      Visible = False
      object cxGridDBTableView4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSFinanceiro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGridDBTableView4Credito
          end
          item
            Kind = skSum
            Column = cxGridDBTableView4Debito
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.OnAfterSummary = cxGridDBTableView4DataControllerSummaryAfterSummary
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        object cxGridDBTableView4CODPEDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPEDIDO'
          Width = 39
        end
        object cxGridDBTableView4DOCUMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'DOCUMENTO'
          Width = 75
        end
        object cxGridDBTableView4RAZAOSOCIAL: TcxGridDBColumn
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 248
        end
        object cxGridDBTableView4TIPOPAGTO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOPAGTO'
          Width = 347
        end
        object cxGridDBTableView4TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO'
          Width = 71
        end
        object cxGridDBTableView4NOTAFISCAL: TcxGridDBColumn
          DataBinding.FieldName = 'NOTAFISCAL'
          Width = 142
        end
        object cxGridDBTableView4TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Width = 73
        end
        object cxGridDBTableView4Credito: TcxGridDBColumn
          DataBinding.FieldName = 'Credito'
        end
        object cxGridDBTableView4Debito: TcxGridDBColumn
          DataBinding.FieldName = 'Debito'
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxGridDBTableView4
      end
    end
    object cxLabel2: TcxLabel [27]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'Total de Despesas:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      Height = 35
      Width = 153
      AnchorY = 10018
    end
    object cxLabel7: TcxLabel [28]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'R$ 7000,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      Height = 35
      Width = 99
      AnchorY = 10018
    end
    object cxLabel8: TcxLabel [29]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'Total dispon'#237'vel:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      Height = 35
      Width = 130
      AnchorY = 10018
    end
    object cxLabel9: TcxLabel [30]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'R$ 800,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      Height = 35
      Width = 99
      AnchorY = 10018
    end
    object cxGrid6: TcxGrid [31]
      Left = 28
      Top = 170
      Width = 997
      Height = 373
      TabOrder = 22
      object cxGridDBTableView5: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGridDBTableView5CustomDrawCell
        DataController.DataSource = DSVenda_produto
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
        object cxGridDBTableView5CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object cxGridDBTableView5CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'd. Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object cxGridDBTableView5DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 270
        end
        object cxGridDBTableView5VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
        end
        object cxGridDBTableView5COMP: TcxGridDBColumn
          Caption = 'Comp'
          DataBinding.FieldName = 'COMP'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Properties.ReadOnly = True
        end
        object cxGridDBTableView5LARG: TcxGridDBColumn
          Caption = 'Larg'
          DataBinding.FieldName = 'LARG'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Properties.ReadOnly = True
        end
        object cxGridDBTableView5ESPESSURA: TcxGridDBColumn
          Caption = 'Esp'
          DataBinding.FieldName = 'ESPESSURA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Properties.ReadOnly = True
        end
        object cxGridDBTableView5QTDADEPECA: TcxGridDBColumn
          Caption = 'Qtda. Pe'#231'a'
          DataBinding.FieldName = 'QTDADEPECA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Properties.ReadOnly = True
        end
        object cxGridDBTableView5QUANT: TcxGridDBColumn
          Caption = 'Quant'
          DataBinding.FieldName = 'QUANT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Properties.ReadOnly = True
        end
        object cxGridDBTableView5QUANTFATURADA: TcxGridDBColumn
          Caption = 'Quant Faturada'
          DataBinding.FieldName = 'QUANTFATURADA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Properties.ReadOnly = True
        end
      end
      object cxGridLevel5: TcxGridLevel
        GridView = cxGridDBTableView5
      end
    end
    object dxTileBar1: TdxTileBar [32]
      Left = 28
      Top = 116
      Width = 997
      Height = 53
      FocusedItem = dxTileBar1dxTileBarItem1
      OptionsView.ItemHeight = 30
      TabOrder = 21
      object dxTileBar1Group1: TdxTileControlGroup
        Index = 0
      end
      object dxTileBar1dxTileBarItem1: TdxTileBarItem
        GroupIndex = 0
        IndexInGroup = 0
        Size = tbisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Emitir NF'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = dxTileBar1dxTileBarItem1Click
      end
    end
    object PnlFrameAnexos: TPanel [33]
      Left = 10000
      Top = 10000
      Width = 997
      Height = 427
      Caption = 'Carregando...'
      Color = 16505534
      ParentBackground = False
      TabOrder = 30
      Visible = False
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 4
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Parent = dxLayoutGroup1
      Index = 10
    end
    object MainLayoutItem17: TdxLayoutItem
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      Control = cxGrid1
      ControlOptions.OriginalHeight = 308
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = dxLayoutGroup1TabChanged
      Index = 3
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Visao Geral'
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avClient
      Offsets.Top = 5
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtObservacao
      ControlOptions.OriginalHeight = 78
      ControlOptions.OriginalWidth = 387
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Data Limite'
      CaptionOptions.Layout = clTop
      Control = edtDT_Entrada
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 133
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Data in'#237'cio'
      CaptionOptions.Layout = clTop
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 133
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem7: TdxLayoutItem
      Control = tokProducao_Marcador
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Lista de Tarefas'
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Itens'
      CaptionOptions.Layout = clTop
      Control = cxGrid2
      ControlOptions.OriginalHeight = 197
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Centro de Trabalhos'
      Visible = False
      Index = 4
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Gantt'
      Visible = False
      Index = 5
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Anota'#231#245'es'
      Index = 6
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Arquivos'
      Index = 7
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Coment'#225'rio'
      Visible = False
      Index = 8
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Planinha de horas'
      Visible = False
      Index = 9
    end
    object LicbxSituacao: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Situa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cbxSituacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'digo'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      Control = edtResponsavelÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 307
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Valor'
      CaptionOptions.Layout = clTop
      Control = edtVOutro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Percentual'
      CaptionOptions.Layout = clTop
      Control = tbrPConclusao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 128
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Vendas'
      CaptionOptions.Layout = clTop
      Control = cxGrid3
      ControlOptions.OriginalHeight = 197
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Financeiro'
      CaptionOptions.Layout = clTop
      Control = cxGrid4
      ControlOptions.OriginalHeight = 197
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Descontos'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblDespesas
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Valor de Venda'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxLabel3
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Receita'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cxLabel4
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup14
      CaptionOptions.Text = 'Despesas'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Sobrou'
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Offsets.Bottom = 5
      Offsets.Top = 5
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Padding.AssignedValues = [lpavBottom]
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxLabel5
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup14
      CaptionOptions.Text = 'Cota'#231#245'es'
      Visible = False
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxLabel6
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup14
      CaptionOptions.Text = 'Valor Dispon'#237'vel'
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object GrupoDespesas: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Financeiro'
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = GrupoDespesas
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid5
      ControlOptions.OriginalHeight = 228
      ControlOptions.OriginalWidth = 332
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 153
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxLabel7
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = GrupoDespesas
      AlignHorz = ahCenter
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup20
      CaptionOptions.Visible = False
      Control = cxLabel8
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'New Group'
      Offsets.Right = 30
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxLabel9
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignVert = avClient
      Control = cxGrid6
      ControlOptions.OriginalHeight = 427
      ControlOptions.OriginalWidth = 997
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Produtos'
      Index = 1
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup21
      CaptionOptions.Text = 'dxTileBar1'
      CaptionOptions.Visible = False
      Control = dxTileBar1
      ControlOptions.OriginalHeight = 53
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = PnlFrameAnexos
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 353
      ControlOptions.OriginalWidth = 1847
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Visible = False
  end
  inherited pnlMenuCadastro: TPanel
    inherited tcCadastro: TdxTileControl
      inherited BtnImprimirPadrao: TdxTileControlItem
        Left = 1034
      end
    end
    inherited tcCadastroMenu: TdxTileControl
      inherited BtnConfiguracoes: TdxTileControlItem
        Left = 1112
      end
    end
    inherited tcCadastroAcoes: TdxTileControl
      inherited btnNovo: TdxTileControlItem
        Left = 1034
      end
      inherited btnConfirmar: TdxTileControlItem
        Left = 1034
      end
      inherited btnExcluir: TdxTileControlItem
        Left = 1034
      end
      inherited btnAlterar: TdxTileControlItem
        Left = 1034
      end
      inherited btnCancelar: TdxTileControlItem
        Left = 1034
      end
      inherited BtnAtivar: TdxTileControlItem
        Left = 1034
      end
      inherited BtnDesativar: TdxTileControlItem
        Left = 1034
      end
    end
    inherited tcCadastro_Consulta: TdxTileControl
      inherited btnConsultar: TdxTileControlItem
        Left = 1034
      end
    end
    inherited tcCadastro_Anterior_Proximo: TdxTileControl
      inherited btnNavegacaoAnterior: TdxTileControlItem
        Left = 1034
      end
      inherited btnNavegacaoProximo: TdxTileControlItem
        Left = 1093
      end
    end
  end
  object Panel1: TPanel [5]
    Left = 281
    Top = 142
    Width = 480
    Height = 359
    Caption = 'Panel1'
    Color = 16505534
    ParentBackground = False
    TabOrder = 5
    object cxGrid8: TcxGrid
      Left = 0
      Top = 0
      Width = 481
      Height = 313
      TabOrder = 0
      object cxGrid8DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        object cxGrid8DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
        end
        object cxGrid8DBTableView1CODPRODUTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO'
        end
        object cxGrid8DBTableView1DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO'
        end
        object cxGrid8DBTableView1QUANT: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT'
        end
        object cxGrid8DBTableView1QUANTSELECIONADA: TcxGridDBColumn
          DataBinding.FieldName = 'QUANTSELECIONADA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Properties.OnValidate = cxGrid8DBTableView1QUANTSELECIONADAPropertiesValidate
        end
      end
      object cxGrid8Level1: TcxGridLevel
        GridView = cxGrid8DBTableView1
      end
    end
    object cxButton2: TcxButton
      Left = 376
      Top = 319
      Width = 75
      Height = 25
      Caption = 'cxButton2'
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 295
      Top = 319
      Width = 75
      Height = 25
      Caption = 'cxButton2'
      TabOrder = 2
      OnClick = cxButton3Click
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 2
    FormClassCadastro = 'TFrmProjeto'
    FormClassConsulta = 'TConsuProjeto'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from PROJETO'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PROJETO'
    Modulo = 'PRODUCAO'
  end
  inherited MenuRegra_Acoes: TPopupMenu
    Left = 624
    Top = 144
  end
  object Produtos: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select vp.codigo, vp.descricao, vp.quant, vp.unidade, vp.tem_pro' +
        'ducao_enviado from venda_produto vp'
      'where vp.codvenda = :CODIGO')
    Left = 312
    Top = 184
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object ProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object ProdutosQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'QUANT'
    end
    object ProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 10
    end
    object ProdutosTEM_PRODUCAO_ENVIADO: TStringField
      FieldName = 'TEM_PRODUCAO_ENVIADO'
      Origin = 'TEM_PRODUCAO_ENVIADO'
      Size = 1
    end
  end
  object DS_Produtos: TDataSource
    DataSet = Produtos
    Left = 340
    Top = 184
  end
  object Financeiro_Venda: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select F.* from venda v'
      'left join financeiro f on f.codpedido = v.codigo'
      'where v.codigo = :CODIGO'
      'and V.STATUS like '#39'ATIVO%'#39
      'and not(V.DT_FATURAMENTO is null)')
    Left = 312
    Top = 216
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSFinanceiro_Venda: TDataSource
    DataSet = Financeiro_Venda
    Left = 340
    Top = 216
  end
  object Venda: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'SELECT V.* FROM VENDA V'
      'WHERE V.codprojeto = :CODIGO and v.is_venda = '#39'S'#39)
    Left = 312
    Top = 248
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object DSVenda: TDataSource
    DataSet = Venda
    Left = 340
    Top = 248
  end
  object Venda_Produto: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select VP.CODIGO, VP.CODPRODUTO, VP.DESCRICAO, VP.VALOR, VP.COMP' +
        ', VP.LARG, VP.ESPESSURA,'
      '       VP.QTDADEPECA, VP.QUANT,'
      '       (select sum(vp2.quant) from venda v2'
      'left join venda_produto vp2 on vp2.codvenda = v2.codigo'
      'where v2.codprojeto = :CODIGO and not(V2.DT_FATURAMENTO is null)'
      'and (vp.codigo = vp2.codigo)) as QUANTFATURADA'
      'from VENDA V'
      'left join VENDA_PRODUTO VP on VP.CODVENDA = V.CODIGO'
      'where V.CODPROJETO = :CODIGO'
      '      and V.STATUS like '#39'ATIVO%'#39
      '      and V.IS_PEDIDO = '#39'S'#39
      '      and V.IS_VENDA <> '#39'S'#39)
    Left = 312
    Top = 280
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Venda_ProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object Venda_ProdutoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
    end
    object Venda_ProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object Venda_ProdutoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object Venda_ProdutoCOMP: TFloatField
      FieldName = 'COMP'
      Origin = 'COMP'
    end
    object Venda_ProdutoLARG: TFloatField
      FieldName = 'LARG'
      Origin = 'LARG'
    end
    object Venda_ProdutoESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
      Origin = 'ESPESSURA'
    end
    object Venda_ProdutoQTDADEPECA: TFloatField
      FieldName = 'QTDADEPECA'
      Origin = 'QTDADEPECA'
    end
    object Venda_ProdutoQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'QUANT'
    end
    object Venda_ProdutoQUANTFATURADA: TFloatField
      FieldName = 'QUANTFATURADA'
      Origin = 'QUANTFATURADA'
    end
  end
  object DSVenda_produto: TDataSource
    DataSet = Venda_Produto
    Left = 340
    Top = 280
  end
  object Financeiro: TFDQuery
    OnCalcFields = FinanceiroCalcFields
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select F.codpedido, f.documento, f.razaosocial, f.tipopagto, f.t' +
        'ipo, f.notafiscal, (F.VALOR - coalesce(F.DESCONTO, 0) + coalesce' +
        '(F.JUROS, 0)) as total from venda v'
      'left join financeiro f on f.codpedido = v.codigo'
      'where v.codprojeto = :CODIGO'
      'and f.status like '#39'ATIVO%'#39)
    Left = 312
    Top = 312
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
      end>
    object FinanceiroCODPEDIDO: TStringField
      FieldName = 'CODPEDIDO'
      Origin = 'CODPEDIDO'
      Size = 10
    end
    object FinanceiroDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object FinanceiroRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 150
    end
    object FinanceiroTIPOPAGTO: TStringField
      FieldName = 'TIPOPAGTO'
      Origin = 'TIPOPAGTO'
      Size = 50
    end
    object FinanceiroTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object FinanceiroNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'NOTAFISCAL'
    end
    object FinanceiroTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object FinanceiroCredito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Credito'
      Calculated = True
    end
    object FinanceiroDebito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Debito'
      Calculated = True
    end
  end
  object DSFinanceiro: TDataSource
    DataSet = Financeiro
    Left = 340
    Top = 312
  end
  object FDQuery1: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select *'
      '    from VENDA_PRODUTO VP '
      '    where VP.CODVENDA = :CODIGO')
    Left = 368
    Top = 280
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 396
    Top = 280
  end
  object Producao: TFDQuery
    OnCalcFields = FinanceiroCalcFields
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select * from producao p where p.codprojeto = :CODIGO')
    Left = 312
    Top = 344
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
      end>
    object ProducaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProducaoCODPRODUCAO: TIntegerField
      FieldName = 'CODPRODUCAO'
      Origin = 'CODPRODUCAO'
    end
    object ProducaoCODCENTRO_TRABALHO: TIntegerField
      FieldName = 'CODCENTRO_TRABALHO'
      Origin = 'CODCENTRO_TRABALHO'
    end
    object ProducaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 600
    end
    object ProducaoPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
    end
    object ProducaoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
    end
    object ProducaoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 300
    end
    object ProducaoQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'QUANT'
    end
    object ProducaoLARG: TFloatField
      FieldName = 'LARG'
      Origin = 'LARG'
    end
    object ProducaoCOMP: TFloatField
      FieldName = 'COMP'
      Origin = 'COMP'
    end
    object ProducaoESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
      Origin = 'ESPESSURA'
    end
    object ProducaoQTDADEPECA: TFloatField
      FieldName = 'QTDADEPECA'
      Origin = 'QTDADEPECA'
    end
    object ProducaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object ProducaoDT_EMISSAO: TSQLTimeStampField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object ProducaoDT_FIM: TSQLTimeStampField
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
    object ProducaoCALENDARIO_DT_PREVISAO_FIM: TSQLTimeStampField
      FieldName = 'CALENDARIO_DT_PREVISAO_FIM'
      Origin = 'CALENDARIO_DT_PREVISAO_FIM'
    end
    object ProducaoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 150
    end
    object ProducaoCALENDARIO_DT_PREVISAO_INICIO: TSQLTimeStampField
      FieldName = 'CALENDARIO_DT_PREVISAO_INICIO'
      Origin = 'CALENDARIO_DT_PREVISAO_INICIO'
    end
  end
  object DSProducao: TDataSource
    DataSet = Producao
    Left = 340
    Top = 344
  end
end
