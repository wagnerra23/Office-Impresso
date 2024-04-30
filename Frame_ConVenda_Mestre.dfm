inherited Frame_ConsuVenda_Mestre: TFrame_ConsuVenda_Mestre
  Width = 1380
  Height = 688
  Color = clDefault
  ParentBackground = False
  ParentColor = False
  ExplicitWidth = 1380
  ExplicitHeight = 688
  object LbUCLiberarVerTodasVendas: TLabel [0]
    Left = 40
    Top = -68
    Width = 188
    Height = 13
    Caption = 'Permitir usu'#225'rio de ver todas as vendas.'
  end
  object PnlMigraVendaTipo: TPanel [1]
    Left = 240
    Top = 104
    Width = 449
    Height = 129
    Caption = 'Encaminhamento de Venda'
    TabOrder = 6
    Visible = False
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 447
      Height = 127
      Align = alClient
      TabOrder = 0
      object CbMigraModelo: TcxComboBox
        Left = 10
        Top = 28
        Properties.DropDownListStyle = lsFixedList
        Properties.OnChange = CbMigraModeloPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 121
      end
      object BtnMigraCancelar: TcxButton
        Left = 316
        Top = 92
        Width = 121
        Height = 25
        Caption = 'Cancelar'
        ModalResult = 2
        TabOrder = 3
      end
      object BtnMigraConfirmar: TcxButton
        Left = 261
        Top = 92
        Width = 176
        Height = 25
        Caption = 'Executar Migra'#231#227'o'
        TabOrder = 4
        OnClick = BtnMigraConfirmarClick
      end
      object CbMigraVendaTipo: TcxLookupComboBox
        Left = 137
        Top = 28
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 15
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DSMigraTiposDeVenda
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 1
        Width = 267
      end
      object BtnMigraCadastroVendaTipo: TcxButton
        Left = 410
        Top = 27
        Width = 27
        Height = 22
        Hint = 'Cadastro de Tipo de Venda'
        Caption = '...'
        TabOrder = 2
        OnClick = BtnMigraCadastroVendaTipoClick
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object liCbMigraModelo: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Modelo'
        CaptionOptions.Layout = clTop
        Control = CbMigraModelo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahRight
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = BtnMigraCancelar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
        Parent = dxLayoutControl2Group_Root
        AlignVert = avBottom
        CaptionOptions.Text = 'Separator'
        Index = 1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        CaptionOptions.Text = 'Tipo de Venda'
        CaptionOptions.Layout = clTop
        Control = CbMigraVendaTipo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl2Group_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = BtnMigraCadastroVendaTipo
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 27
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  inherited pnlFiltros: TPanel [2]
  end
  inherited pnlIniciar: TPanel [3]
    inherited tcMenuAcoes: TdxTileControl
      inherited tiImprimir: TdxTileControlItem
        OnClick = tiImprimirClick
      end
    end
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlFiltroData: TPanel [4]
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [5]
    Width = 1380
    Height = 688
    ExplicitWidth = 1380
    ExplicitHeight = 688
    DesignSize = (
      1380
      688)
    inherited GridConsulta: TcxGrid
      Left = 230
      Top = 37
      Width = 1105
      Height = 438
      PopupMenu = MenuConfiguracoes
      ExplicitLeft = 230
      ExplicitTop = 37
      ExplicitWidth = 1105
      ExplicitHeight = 438
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        DragMode = dmAutomatic
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        OnSelectionChanged = GridConsultaDBTableView1SelectionChanged
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'Quant = 0'
            Kind = skCount
          end
          item
            Format = 'Total = ##,##0.00'
            Kind = skSum
            FieldName = 'TOTAL'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'TOTAL'
            Column = GridConsultaDBTableView1TOTAL
          end
          item
            Kind = skSum
            Column = GridConsultaDBTableView1VDESC
          end>
        DataController.Summary.OnAfterSummary = GridConsultaDBTableView1DataControllerSummaryAfterSummary
        OptionsSelection.CellSelect = True
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
        OptionsSelection.ShowCheckBoxesDynamically = True
        object GridConsultaDBTableView1DT_EMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'DT_EMISSAO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DateButtons = []
          Properties.Kind = ckDateTime
          Properties.ShowTime = False
          DateTimeGrouping = dtgByDate
          SortIndex = 0
          SortOrder = soDescending
          Width = 115
        end
        object GridConsultaDBTableView1NOTAFISCAL: TcxGridDBColumn
          Caption = 'Nota Fiscal'
          DataBinding.FieldName = 'NOTAFISCAL'
          Width = 67
        end
        object GridConsultaDBTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn
          Caption = 'C'#243'd. Cliente'
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
          Width = 67
        end
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'Codigo Original'
          DataBinding.FieldName = 'CODIGO'
          Width = 55
        end
        object GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 365
        end
        object GridConsultaDBTableView1FANTASIA: TcxGridDBColumn
          Caption = 'Fantasia'
          DataBinding.FieldName = 'FANTASIA'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'd. Cadastro'
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1TELEFONE: TcxGridDBColumn
          Caption = 'Telefone'
          DataBinding.FieldName = 'TELEFONE'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1TOTAL: TcxGridDBColumn
          Caption = 'R$ Total'
          DataBinding.FieldName = 'TOTAL'
          Width = 100
        end
        object GridConsultaDBTableView1VENDA_TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'VENDA_TIPO'
          Width = 165
        end
        object GridConsultaDBTableView1DT_FATURAMENTO: TcxGridDBColumn
          Caption = 'Dt. Faturamento'
          DataBinding.FieldName = 'DT_FATURAMENTO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DateButtons = []
          Properties.ShowTime = False
          DateTimeGrouping = dtgByDate
          Width = 114
        end
        object GridConsultaDBTableView1STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
          Width = 186
        end
        object GridConsultaDBTableView1CONDICAOPAGTO: TcxGridDBColumn
          Caption = 'Condi'#231#227'o de Pagamento'
          DataBinding.FieldName = 'CONDICAOPAGTO'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1PROJETO_DT_FIM: TcxGridDBColumn
          Caption = 'Dt. Prometido'
          DataBinding.FieldName = 'PROJETO_DT_FIM'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1PLACA: TcxGridDBColumn
          Caption = 'Placa'
          DataBinding.FieldName = 'PLACA'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1CHASSI: TcxGridDBColumn
          Caption = 'Chassi'
          DataBinding.FieldName = 'CHASSI'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1MOTORISTA_DOCUMENTO_NUMERO: TcxGridDBColumn
          Caption = 'N'#186' Documento'
          DataBinding.FieldName = 'MOTORISTA_DOCUMENTO_NUMERO'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1CLIENTE_GRUPO: TcxGridDBColumn
          Caption = 'Grupo do Cliente'
          DataBinding.FieldName = 'CLIENTE_GRUPO'
          Visible = False
          Width = 130
        end
        object GridConsultaDBTableView1FUNCIONARIO: TcxGridDBColumn
          Caption = 'Funcion'#225'rio'
          DataBinding.FieldName = 'FUNCIONARIO'
          Visible = False
          Width = 241
        end
        object GridConsultaDBTableView1NF_DT_EMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o NF'
          DataBinding.FieldName = 'NF_DT_EMISSAO'
          Visible = False
          Width = 113
        end
        object GridConsultaDBTableView1CONTATO: TcxGridDBColumn
          Caption = 'Contato'
          DataBinding.FieldName = 'CONTATO'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1REPRESENTANTE: TcxGridDBColumn
          Caption = 'Representante'
          DataBinding.FieldName = 'REPRESENTANTE'
          Visible = False
          Width = 250
        end
        object GridConsultaDBTableView1PEDIDO_COMPRA: TcxGridDBColumn
          Caption = 'Pedido de Compra'
          DataBinding.FieldName = 'PEDIDO_COMPRA'
          Visible = False
          Width = 112
        end
        object GridConsultaDBTableView1PEDIDO_REP: TcxGridDBColumn
          Caption = 'Pedido Representante'
          DataBinding.FieldName = 'PEDIDO_REP'
          Visible = False
          Width = 123
        end
        object GridConsultaDBTableView1CODVENDA: TcxGridDBColumn
          Caption = 'Pedido Principal'
          DataBinding.FieldName = 'CODVENDA'
        end
        object GridConsultaDBTableView1SEQUENCIA: TcxGridDBColumn
          Caption = 'Sequ'#234'ncia'
          DataBinding.FieldName = 'SEQUENCIA'
          Visible = False
        end
        object GridConsultaDBTableView1SITUACAOFINANCEIRA: TcxGridDBColumn
          Caption = 'Situa'#231#227'o Financeira'
          DataBinding.FieldName = 'SITUACAOFINANCEIRA'
          Width = 367
        end
        object GridConsultaDBTableView1CNPJCPF: TcxGridDBColumn
          Caption = 'CNPJ/CPF'
          DataBinding.FieldName = 'CNPJCPF'
          Visible = False
        end
        object GridConsultaDBTableView1SITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'SITUACAO'
        end
        object GridConsultaDBTableView1DT_COMPETENCIA: TcxGridDBColumn
          Caption = 'Dt. Compet'#234'ncia'
          DataBinding.FieldName = 'DT_COMPETENCIA'
        end
        object GridConsultaDBTableView1IS_NOTAFISCAL: TcxGridDBColumn
          Caption = 'Nota Fiscal'
          DataBinding.FieldName = 'IS_NOTAFISCAL'
          Visible = False
        end
        object GridConsultaDBTableView1IS_VENDA: TcxGridDBColumn
          Caption = 'Venda'
          DataBinding.FieldName = 'IS_VENDA'
          Visible = False
        end
        object GridConsultaDBTableView1IS_ORCAMENTO: TcxGridDBColumn
          Caption = 'Or'#231'amento'
          DataBinding.FieldName = 'IS_ORCAMENTO'
          Visible = False
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          DataBinding.FieldName = 'OBSERVACAO'
          Visible = False
        end
        object GridConsultaDBTableView1PESSOA_FUNCIONARIO_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'd. Funcion'#225'rio'
          DataBinding.FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1PESSOA_REPRESENTANTE_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'd. Representante'
          DataBinding.FieldName = 'PESSOA_REPRESENTANTE_CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1VDESC: TcxGridDBColumn
          Caption = 'R$ Desconto'
          DataBinding.FieldName = 'VDESC'
        end
        object GridConsultaDBTableView1VOUTRO: TcxGridDBColumn
          Caption = 'R$ Acr'#233'scimo'
          DataBinding.FieldName = 'VOUTRO'
          Visible = False
        end
        object GridConsultaDBTableView1NF_VFRETE: TcxGridDBColumn
          Caption = 'R$ Frete'
          DataBinding.FieldName = 'NF_VFRETE'
          Visible = False
        end
        object GridConsultaDBTableView1PROJETO: TcxGridDBColumn
          Caption = 'Projeto'
          DataBinding.FieldName = 'PROJETO'
          Visible = False
        end
        object GridConsultaDBTableView1VENDA_ESTAGIO: TcxGridDBColumn
          Caption = 'Est'#225'gio'
          DataBinding.FieldName = 'VENDA_ESTAGIO'
        end
        object GridConsultaDBTableView1FATURAMENTO_DT_ENVIO: TcxGridDBColumn
          Caption = 'Dt Env. Faturamento'
          DataBinding.FieldName = 'FATURAMENTO_DT_ENVIO'
        end
        object GridConsultaDBTableView1CODVENDA_VINCULADA: TcxGridDBColumn
          Caption = 'Referente a'
          DataBinding.FieldName = 'CODVENDA_VINCULADA'
          Width = 80
        end
        object GridConsultaDBTableView1FATURA_PREVISAO: TcxGridDBColumn
          Caption = 'Fatura Previs'#227'o'
          DataBinding.FieldName = 'FATURA_PREVISAO'
        end
        object GridConsultaDBTableView1FATURAMENTO_CANCELADO: TcxGridDBColumn
          Caption = 'Faturamento Cancelado'
          DataBinding.FieldName = 'IS_FATURAMENTO_CANCELADO'
        end
        object GridConsultaDBTableView1PREVISAO_CLIENTE: TcxGridDBColumn
          Caption = 'Previs'#227'o Cliente'
          DataBinding.FieldName = 'PREVISAO_CLIENTE'
        end
        object GridConsultaDBTableView1PESSOA_AGENCIA_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'd. Ag'#234'ncia'
          DataBinding.FieldName = 'PESSOA_AGENCIA_CODIGO'
        end
        object GridConsultaDBTableView1AGENCIA: TcxGridDBColumn
          Caption = 'Ag'#234'ncia'
          DataBinding.FieldName = 'AGENCIA'
        end
        object GridConsultaDBTableView1CODIGOVENDA: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGOVENDA'
          Visible = False
        end
        object GridConsultaDBTableView1TOTAL_FATURA: TcxGridDBColumn
          Caption = 'Total da Fatura'
          DataBinding.FieldName = 'TOTAL_FATURA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Properties.ReadOnly = True
          Visible = False
        end
      end
      object GridConsultaDBChartView1: TcxGridDBChartView [2]
        OnDblClick = GridConsultaDBChartView1DblClick
        Categories.DataBinding.FieldName = 'VENDA_TIPO'
        DataController.DataSource = DSGrafico
        DiagramBar.Active = True
        DiagramBar.Values.VaryColorsByCategory = True
        DiagramBar.Values.BorderWidth = 2
        DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
        OptionsCustomize.DataGroupHiding = True
        ToolBox.CustomizeButton = True
        object GridConsultaDBChartView1DataGroup1: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'VENDA_TIPO'
        end
        object GridConsultaDBChartView1DataGroup8: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'STATUS'
          SortOrder = soNone
          Visible = False
        end
        object GridConsultaDBChartView1DataGroup4: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'VENDEDOR'
        end
        object GridConsultaDBChartView1DataGroup2: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'FUNCIONARIO'
          SortOrder = soNone
          Visible = False
        end
        object GridConsultaDBChartView1DataGroup9: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'REPRESENTANTE'
          SortOrder = soNone
          Visible = False
        end
        object GridConsultaDBChartView1DataGroup3: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'AGENCIA'
          SortOrder = soNone
          Visible = False
        end
        object GridConsultaDBChartView1DataGroup6: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'UF'
        end
        object GridConsultaDBChartView1DataGroup10: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'CIDADE'
        end
        object GridConsultaDBChartView1DataGroup5: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'RAZAOSOCIAL'
        end
        object GridConsultaDBChartView1DataGroup7: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'CODIGO'
          DisplayText = 'VENDA N'#186
        end
        object GridConsultaDBChartView1Series1: TcxGridDBChartSeries
          DataBinding.FieldName = 'TOTAL'
          SortOrder = soAscending
          ValueCaptionFormat = '###,###,##0.00'
        end
        object GridConsultaDBChartView1Series2: TcxGridDBChartSeries
          DataBinding.FieldName = 'VALOR_DESC'
          DisplayText = 'Desconto'
          ValueCaptionFormat = '###,###,##0.00'
        end
      end
      object GridConsultaDBChartView2: TcxGridDBChartView [3]
        OnDblClick = GridConsultaDBChartView2DblClick
        DataController.DataSource = DSGraficoProduto
        DiagramBar.Active = True
        DiagramBar.Values.VaryColorsByCategory = True
        DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
        OptionsCustomize.DataGroupHiding = True
        ToolBox.CustomizeButton = True
        object GridConsultaDBChartView2DataGroup1: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'PRODUTO'
        end
        object GridConsultaDBChartView2DataGroup2: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'NCM'
          SortOrder = soNone
          Visible = False
        end
        object GridConsultaDBChartView2DataGroup3: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'GRUPOPRODUTO'
          SortOrder = soNone
          Visible = False
        end
        object GridConsultaDBChartView2DataGroup4: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'PESSOAVENDA'
          DisplayText = 'VENDEDOR'
        end
        object GridConsultaDBChartView2DataGroup5: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBChartView2Series1: TcxGridDBChartSeries
          DataBinding.FieldName = 'VALOR'
          SortOrder = soAscending
          ValueCaptionFormat = '###,###,##0.00'
        end
        object GridConsultaDBChartView2Series2: TcxGridDBChartSeries
          DataBinding.FieldName = 'QUANT'
          ValueCaptionFormat = '###,###,##0.00'
        end
      end
    end
    inherited LbTotalRegistros: TcxLabel
      Left = 230
      Top = 663
      ExplicitLeft = 230
      ExplicitTop = 663
    end
    inherited GridSubGrid: TcxGrid
      Top = 37
      Height = 651
      ExplicitTop = 37
      ExplicitHeight = 651
    end
    inherited pnlFlipRotate: TPanel
      Left = 1339
      Top = 37
      Width = 41
      Height = 651
      Color = clBtnFace
      TabOrder = 20
      ExplicitLeft = 1339
      ExplicitTop = 37
      ExplicitWidth = 41
      ExplicitHeight = 651
    end
    inherited tcAcoes: TdxTileControl
      Width = 1002
      ExplicitWidth = 1002
      object tiReativar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Reativar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiReativarClick
      end
      object tiArquivar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Arquivar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiArquivarClick
      end
      object tiEmcaminhar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Encaminhar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiEmcaminharClick
      end
      object tiFaturamentoParcial: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Text1.AssignedValues = []
        Text1.Value = 'Faturamento Parcial'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiFaturamentoParcialClick
      end
    end
    inherited cbxQuantidadeItens: TcxComboBox
      Left = 1244
      ExplicitLeft = 1244
    end
    inherited lblQuantidadeItens_Mostrar: TcxLabel
      Left = 1208
      ExplicitLeft = 1208
    end
    inherited lblQuantidadeItens_Registros: TcxLabel
      Left = 1304
      ExplicitLeft = 1304
    end
    inherited Bevel2: TBevel
      Width = 1380
      ExplicitWidth = 1380
    end
    inherited btnDataFiltro: TcxButton
      Left = 1085
      ExplicitLeft = 1085
    end
    inherited btnMenuOpcoes: TcxButton
      Left = 1353
      ExplicitLeft = 1353
    end
    inherited btnAgruparFiltro: TcxButton
      Left = 1126
      ExplicitLeft = 1126
    end
    inherited btnFiltro_Filtro: TcxButton
      Left = 1167
      ExplicitLeft = 1167
    end
    inherited btnImprimir_Filtro: TcxButton
      Left = 1044
      ExplicitLeft = 1044
    end
    inherited btnAtualizar: TcxButton
      Left = 1003
      ExplicitLeft = 1003
    end
    object BtnProxima222: TSpeedButton [15]
      Left = 10000
      Top = 10000
      Width = 33
      Height = 33
      Flat = True
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001E1E1E8100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF1E1E1E81000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E81000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E810000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E8100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E7E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF1E1E1E7E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001E1E1E7E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Visible = False
    end
    object GridVendaProduto1: TcxGrid [16]
      Left = 230
      Top = 479
      Width = 1007
      Height = 175
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmHybrid
      object GridProdutos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCanSelectRecord = GridProdutosCanSelectRecord
        OnEditChanged = GridProdutosEditChanged
        DataController.DataModeController.GridModeBufferCount = 50
        DataController.DataSource = DSVendaProduto
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoInsertOnNewItemRowFocusing]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Click aqui para definir um filtro'
        NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
        OptionsBehavior.IncSearch = True
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 1
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.RowSeparatorColor = clMoneyGreen
        OptionsView.RowSeparatorWidth = 1
        object GridProdutosCODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosVENDA_TIPO: TcxGridDBColumn
          Caption = 'Tipo da Venda'
          DataBinding.FieldName = 'VENDA_TIPO'
          Visible = False
          Options.Editing = False
          Width = 112
        end
        object GridProdutosPRODUTO_TIPO: TcxGridDBColumn
          Caption = 'Tipo Produto'
          DataBinding.FieldName = 'PRODUTO_TIPO'
          Options.Editing = False
          Width = 84
        end
        object GridProdutosCODVENDA: TcxGridDBColumn
          Caption = 'C'#243'd. Venda'
          DataBinding.FieldName = 'CODVENDA'
          Visible = False
          Options.Editing = False
          Width = 79
        end
        object GridProdutosTEM_PRODUCAO_ENVIADO: TcxGridDBColumn
          Caption = 'Em Produ'#231#227'o'
          DataBinding.FieldName = 'EM_PRODUCAO'
          Options.Editing = False
          Width = 71
        end
        object GridProdutosPRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'DESCRICAO'
          Options.Editing = False
          Width = 272
        end
        object GridProdutosMedidas: TcxGridDBColumn
          DataBinding.FieldName = 'Medidas'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 115
        end
        object GridProdutosQUANT: TcxGridDBColumn
          Caption = 'Quant.'
          DataBinding.FieldName = 'QUANT'
          Options.Editing = False
        end
        object GridProdutosVALOR: TcxGridDBColumn
          Caption = 'R$ Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Width = 73
        end
        object GridProdutosTOTAL: TcxGridDBColumn
          Caption = 'R$ Total'
          DataBinding.FieldName = 'TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
          Width = 108
        end
        object GridProdutosCOMP: TcxGridDBColumn
          DataBinding.FieldName = 'COMP'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosLARG: TcxGridDBColumn
          DataBinding.FieldName = 'LARG'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosESPESSURA: TcxGridDBColumn
          DataBinding.FieldName = 'ESPESSURA'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosREPRESENTANTE: TcxGridDBColumn
          Caption = 'Representante'
          DataBinding.FieldName = 'REPRESENTANTE'
          Visible = False
          Options.Editing = False
          Width = 157
        end
        object GridProdutosPESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'd. Respons'#225'vel'
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object GridProdutosATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object GridProdutosPEDIDO_COMPRA: TcxGridDBColumn
          Caption = 'Pedido Compra'
          DataBinding.FieldName = 'PEDIDO_COMPRA'
          Visible = False
          Options.Editing = False
          Width = 90
        end
        object GridProdutosPEDIDO_REP: TcxGridDBColumn
          Caption = 'Pedido Rep.'
          DataBinding.FieldName = 'PEDIDO_REP'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosUNIDADE: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDADE'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosQTDADEPECA: TcxGridDBColumn
          DataBinding.FieldName = 'QTDADEPECA'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosSITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'SituacaoProducao'
          Options.Editing = False
          Width = 117
        end
        object GridProdutosCODPRODUTO: TcxGridDBColumn
          Caption = 'Cod. Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosOBS_FATURAMENTO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o de Faturamento'
          DataBinding.FieldName = 'OBS_FATURAMENTO'
          Visible = False
          Options.Editing = False
          Width = 330
        end
        object GridProdutosNF_OBS_NOTAFISCAL: TcxGridDBColumn
          Caption = 'Observa'#231#227'o de Notas'
          DataBinding.FieldName = 'NF_OBS_NOTAFISCAL'
          Visible = False
          Options.Editing = False
          Width = 270
        end
        object GridProdutosCODVENDA_ORIGINAL: TcxGridDBColumn
          Caption = 'Venda Original'
          DataBinding.FieldName = 'CODVENDA_ORIGINAL'
          Options.Editing = False
        end
        object GridProdutosCODVENDA_FATURADO: TcxGridDBColumn
          Caption = 'Venda de Faturamento'
          DataBinding.FieldName = 'CODVENDA_FATURADO'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosPODE_FATURAR: TcxGridDBColumn
          Caption = 'Pode Faturar'
          DataBinding.FieldName = 'PODE_FATURAR'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosCODPRODUCAO: TcxGridDBColumn
          Caption = 'Cod. Produ'#231#227'o'
          DataBinding.FieldName = 'CODPRODUCAO'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosSITUACAO1: TcxGridDBColumn
          DataBinding.FieldName = 'SITUACAO'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosQuant_original: TcxGridDBColumn
          Caption = 'Quant. original do pedido'
          DataBinding.FieldName = 'quant_original'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosTotal_original: TcxGridDBColumn
          Caption = 'R$ Total original do pedido'
          DataBinding.FieldName = 'Total_original'
          Visible = False
          Options.Editing = False
        end
        object GridProdutosQUANTFATURADA: TcxGridDBColumn
          Caption = 'Quant. Faturada'
          DataBinding.FieldName = 'QUANTFATURADA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
        end
      end
      object cxGridDBLayoutView1: TcxGridDBLayoutView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
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
        OptionsView.ShowOnlyEntireRecords = False
        OptionsView.ViewMode = lvvmMultiColumn
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Hidden = True
          ShowBorder = False
          Index = -1
        end
      end
      object cxGridLevel2: TcxGridLevel
        Caption = 'Relat'#243'rio'
        GridView = GridProdutos
      end
    end
    object MemoObservacao: TDBMemo [17]
      Left = 1242
      Top = 480
      Width = 92
      Height = 173
      BorderStyle = bsNone
      DataField = 'OBSERVACAO'
      DataSource = DS
      ScrollBars = ssBoth
      TabOrder = 13
    end
    object LblTotal: TcxLabel [18]
      Left = 656
      Top = 655
      AutoSize = False
      Caption = 'Total:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clGray
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 33
      Width = 64
      AnchorY = 672
    end
    object EdtTotalSelecionado: TcxCurrencyEdit [19]
      Left = 476
      Top = 655
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Height = 33
      Width = 180
    end
    object btnTodos: TcxButton [20]
      Left = 9885
      Top = 10000
      Width = 75
      Height = 31
      Colors.DefaultText = 3026478
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000251A
        0F33B8824DFFB8824DFF251A0F330000000000000000848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FFFFFFFFFFFFFFFFFFF1E6DBFFB882
        4DFFB8824DFFB8824DFFB8824DFF251A0F3300000000848484FFFFFFFFFFFFFF
        FFFFCCCCCCFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFF1E6DBFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F33848484FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFB8824DFFF1E6
        DBFFB8824DFFB8824DFF251A0F33B8824DFFB8824DFF848484FFCCCCCCFFFFFF
        FFFFB8824DFFB8824DFFB8824DFFB8824DFFFFFFFFFFB8824DFFF1E6DBFFFFFF
        FFFFB8824DFFB8824DFF00000000251A0F33B8824DFF848484FFFFFFFFFFFFFF
        FFFFB8824DFFFFFFFFFFFFFFFFFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB8824DFFB8824DFF000000000000000000000000848484FFFFFFFFFFFFFF
        FFFFB8824DFFFFFFFFFFFFFFFFFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB8824DFFB8824DFF000000000000000000000000848484FFCCCCCCFFFFFF
        FFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFFFFF
        FFFFB8824DFFB8824DFF000000000000000000000000848484FFFFFFFFFFFFFF
        FFFFB8824DFFFFFFFFFFFFFFFFFFB8824DFFFFFFFFFFFFFFFFFFB8824DFFFFFF
        FFFFB8824DFFB8824DFF000000000000000000000000848484FFFFFFFFFFFFFF
        FFFFB8824DFFFFFFFFFFFFFFFFFFB8824DFFFFFFFFFFFFFFFFFFB8824DFFFFFF
        FFFFB8824DFFB8824DFF000000000000000000000000848484FFCCCCCCFFFFFF
        FFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFFFFF
        FFFFB8824DFFB8824DFF000000000000000000000000848484FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB8824DFFB8824DFF000000000000000000000000848484FFFFFFFFFFFFFF
        FFFFCCCCCCFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFCCCCCCFFFFFF
        FFFFB8824DFFB8824DFF000000000000000000000000848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
        FFFFB8824DFFB8824DFF000000000000000000000000848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
        FFFFB8824DFFB8824DFF000000000000000000000000}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 24
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object AtvCarregandoTotal: TdxActivityIndicator [21]
      Left = 782
      Top = 657
      Width = 121
      Height = 29
      PropertiesClassName = 'TdxActivityIndicatorElasticCircleProperties'
      Properties.ArcThickness = 1
      Transparent = True
    end
    object EdtTotal: TcxCurrencyEdit [22]
      Left = 720
      Top = 655
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 18
      Height = 33
      Width = 230
    end
    object TreeListUsuarios: TcxDBTreeList [23]
      Left = 9885
      Top = 10000
      Width = 212
      Height = 537
      ParentCustomHint = False
      BorderStyle = cxcbsNone
      Bands = <
        item
        end>
      DataController.DataSource = DSMemTreeList
      DataController.ImageIndexField = 'IMAGEINDEX'
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'CODIGO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Images = cxImageListTreeList
      LookAndFeel.ScrollbarMode = sbmHybrid
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsBehavior.DragFocusing = True
      OptionsBehavior.HotTrack = True
      OptionsData.Editing = False
      OptionsData.AnsiSort = True
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRect = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Headers = False
      OptionsView.TreeLineColor = clWhite
      OptionsView.TreeLineStyle = tllsNone
      ParentFont = False
      RootValue = -1
      ScrollbarAnnotations.CustomAnnotations = <>
      Styles.Background = EstiloRoxinhoFundo
      Styles.Content = EstiloRoxinhoFundo
      Styles.Inactive = EstiloRoxinhoFonte
      Styles.Selection = EstiloRoxinhoFonte
      Styles.BandBackground = EstiloRoxinhoFundo
      Styles.BandContent = EstiloRoxinhoFundo
      Styles.HotTrack = EstiloRoxinhoFonte
      TabOrder = 25
      Visible = False
      OnClick = TreeListUsuariosClick
      OnDragDrop = TreeListUsuariosDragDrop
      OnDragOver = TreeListUsuariosDragOver
      object cxDBTreeListCODIGO: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CODIGO'
        Width = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        SortOrder = soAscending
        SortIndex = 1
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListPARENT: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'PARENT'
        Width = 100
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        SortOrder = soAscending
        SortIndex = 1
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListDESCRICAO: TcxDBTreeListColumn
        Caption.Text = 'Filtro'
        DataBinding.FieldName = 'DESCRICAO'
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListUsuarioscxDBTreeListTABELA: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'TABELA'
        Width = 100
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListUsuarioscxDBTreeListCHAVE_PK1: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CHAVE_PK1'
        Width = 100
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListUsuarioscxDBTreeListQUANT: TcxDBTreeListColumn
        DataBinding.FieldName = 'QUANT'
        MinWidth = 15
        Width = 15
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListUsuarioscxDBTreeListCHAVE_PK2: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CHAVE_PK2'
        Width = 100
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object liTotalSelecionado: TcxLabel [24]
      Left = 311
      Top = 655
      AutoSize = False
      Caption = 'Total Selecionado:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clGray
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 33
      Width = 165
      AnchorY = 672
    end
    object cxButton3: TcxButton [25]
      Left = 9964
      Top = 10000
      Width = 88
      Height = 21
      Anchors = [akTop, akRight]
      Caption = 'A'#231#245'es'
      Colors.DefaultText = clWhite
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      LookAndFeel.NativeStyle = True
      OptionsImage.Spacing = 0
      PopupMenu = MenuAcoes
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 26
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton3Click
    end
    inherited LiGridConsulta: TdxLayoutItem
      Parent = GrupoFlip
    end
    inherited GrupoView: TdxLayoutGroup
      Index = 1
    end
    inherited GrupoFrame: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
    end
    inherited GrupoDados: TdxLayoutGroup
      Index = 0
    end
    inherited GrupoFlip: TdxLayoutGroup
      Parent = GrupoMeio
      AlignHorz = ahClient
      AlignVert = avClient
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    inherited GrupoFooter: TdxLayoutGroup
      Parent = GrupoFlip
      Index = 3
    end
    object LiBtnProxima: TdxLayoutItem
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = BtnProxima222
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object SplitterRodape: TdxLayoutSplitterItem
      Parent = GrupoFlip
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object GrupoRodape: TdxLayoutGroup
      Parent = GrupoFlip
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 2
    end
    object GrupoProdutosObs: TdxLayoutGroup
      Parent = GrupoRodape
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LiGridVendaProduto: TdxLayoutItem
      Parent = GrupoProdutosObs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = GridVendaProduto1
      ControlOptions.OriginalHeight = 175
      ControlOptions.OriginalWidth = 810
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object SplitterVendaProdutoObservacao: TdxLayoutSplitterItem
      Parent = GrupoProdutosObs
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object LiMemoObservacao: TdxLayoutItem
      Parent = GrupoProdutosObs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = MemoObservacao
      ControlOptions.MinHeight = 70
      ControlOptions.OriginalHeight = 91
      ControlOptions.OriginalWidth = 74
      Index = 2
    end
    object GrupoTotal: TdxLayoutGroup
      Parent = GrupoFooter
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = LookBrancoWeb
      Visible = False
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 1
    end
    object LayoutControlLiTotal: TdxLayoutItem
      Parent = GrupoTotal
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = LblTotal
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liEdtTotalSelecionado: TdxLayoutItem
      Parent = GrupoTotal
      AlignHorz = ahRight
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Visible = False
      CaptionOptions.Text = 'Total Selecionado'
      CaptionOptions.Visible = False
      Control = EdtTotalSelecionado
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoDataTodos: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object liBtnTodos: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnTodos
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LiAtvCarregandoTotal: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = AtvCarregandoTotal
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = GrupoTotal
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object LiEdtTotal: TdxLayoutItem
      Parent = dxLayoutGroup6
      Offsets.Right = 16
      CaptionOptions.Layout = clTop
      Control = EdtTotal
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 230
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiTreeListUsuarios: TdxLayoutItem
      AlignVert = avClient
      Control = TreeListUsuarios
      ControlOptions.OriginalHeight = 537
      ControlOptions.OriginalWidth = 212
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LayoutControlLiTotalSelecao: TdxLayoutItem
      Parent = GrupoTotal
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = liTotalSelecionado
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 165
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = -1
    end
  end
  inherited pnlImpressoes: TPanel [6]
  end
  inherited pnlAgrupador: TPanel [7]
    Height = 523
    ExplicitHeight = 523
    inherited tcAgrupador: TdxTileControl
      Height = 521
      OptionsView.GroupMaxRowCount = 40
      ExplicitHeight = 521
      object tcAgrupadorItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Situa'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
      object tcAgrupadorItem2: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 5
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Status'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
      object tcAgrupadorItem3: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Tipo de Venda'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
      object tcAgrupadorItem4: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Funcionario'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
      object tcAgrupadorItem5: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 6
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Ag'#234'ncia'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
      object tcAgrupadorItem6: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Representante'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 279
    Top = 281
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44278.691192476850000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited PopupMenu_Imprimir: TPopupMenu
    Left = 335
    Top = 309
  end
  inherited Transa: TFDTransaction
    Left = 307
    Top = 225
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 335
    Top = 225
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = True
      LookAndFeel.ScrollbarMode = sbmHybrid
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited TimerPesquisa: TTimer
    Left = 391
    Top = 281
  end
  inherited cxEditStyleController1: TcxEditStyleController
    Left = 307
    Top = 253
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    Left = 391
    Top = 310
    PixelsPerInch = 96
  end
  inherited cxHintStyleController1: TcxHintStyleController
    Left = 447
    Top = 309
  end
  inherited RespositorioEstilos: TcxStyleRepository
    Left = 571
    Top = 239
    PixelsPerInch = 96
    object EstiloValorGrafico: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clGreen
      TextColor = clGreen
    end
  end
  inherited MenuConfiguracoes: TPopupMenu
    Images = ImgListActions
    Left = 419
    Top = 309
    object Visualizao1: TMenuItem
      Caption = 'Visualiza'#231#227'o'
      ImageIndex = 1
      object Vendas2: TMenuItem
        Action = ActViewPadrao
        AutoCheck = True
      end
      object VendasemGrfico1: TMenuItem
        Action = ActViewGrafico
        AutoCheck = True
      end
      object GrficoporProduto1: TMenuItem
        Action = ActViewGraficoProdutos
        AutoCheck = True
      end
    end
    object VisualizarObservacoes1: TMenuItem
      Caption = 'Visualizar Observa'#231#245'es'
      OnClick = VisualizarObservacoes1Click
    end
    object VisualizarTodasEmpresas1: TMenuItem
      Caption = 'Visualizar Todas Empresas'
      OnClick = VisualizarTodasEmpresas1Click
    end
    object VisualizarTotalVenda1: TMenuItem
      Caption = 'Visualizar Total Venda'
      OnClick = VisualizarTotalVenda1Click
    end
    object VisualizarProdutosVenda1: TMenuItem
      AutoCheck = True
      Caption = 'Visualizar Produtos Venda'
      OnClick = VisualizarProdutosVenda1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  inherited MenuAcoes: TPopupMenu
    Left = 363
    Top = 281
    object Faturar1: TMenuItem [0]
      Caption = 'Faturar'
    end
    object NotaFiscal1: TMenuItem [1]
      Caption = 'Nota Fiscal'
    end
    object N6: TMenuItem [2]
      Caption = '-'
    end
    object MigrarTipodeVenda1: TMenuItem [3]
      Action = ActMigraVentaTipo
    end
    object N2: TMenuItem [4]
      Caption = '-'
    end
    inherited Imprimir1: TMenuItem
      Caption = 'Tela'
      Visible = False
    end
    object Desagrupar1: TMenuItem [11]
      Caption = 'Desagrupar'
    end
  end
  inherited ActListConsulta: TActionList
    Images = ImgListActions
    Left = 307
    Top = 309
    object ActViewPadrao: TAction
      Category = 'Views'
      AutoCheck = True
      Caption = 'Vendas'
      Checked = True
      GroupIndex = 5
      ImageIndex = 0
      OnExecute = ActViewPadraoExecute
    end
    object ActFiltroFaturadas: TAction
      Category = 'Filtros Venda'
      AutoCheck = True
      Caption = 'ActFiltroFaturadas'
    end
    object ActFiltroNaoFaturadas: TAction
      Category = 'Filtros Venda'
      AutoCheck = True
      Caption = 'ActFiltroNaoFaturadas'
    end
    object ActFiltroPorCliente: TAction
      Category = 'Filtros Venda'
      AutoCheck = True
      Caption = 'Por Cliente'
      GroupIndex = 1
    end
    object ActFiltroPorRepresentante: TAction
      Category = 'Filtros Venda'
      AutoCheck = True
      Caption = 'Por Representante'
      GroupIndex = 1
      OnExecute = ActFiltroPorRepresentanteExecute
    end
    object ActFiltroPorFuncionario: TAction
      Category = 'Filtros Venda'
      AutoCheck = True
      Caption = 'Por Funcionario'
      GroupIndex = 1
      OnExecute = ActFiltroPorFuncionarioExecute
    end
    object ActFiltroOrcamentoSituacao: TAction
      Category = 'Filtros Orcamento'
      AutoCheck = True
      Caption = 'Or'#231'amento - Situa'#231#227'o'
      GroupIndex = 1
      OnExecute = ActFiltroOrcamentoSituacaoExecute
    end
    object ActFiltroEmitidas: TAction
      Category = 'Filtros Nota Fiscal'
      AutoCheck = True
      Caption = 'Emitidas'
      GroupIndex = 1
      OnExecute = ActFiltroEmitidasExecute
    end
    object ActFiltroNaoEmitidas: TAction
      Category = 'Filtros Nota Fiscal'
      AutoCheck = True
      Caption = 'N'#227'o Emitidas'
      GroupIndex = 1
      OnExecute = ActFiltroNaoEmitidasExecute
    end
    object ActFiltroNotaTodas: TAction
      Category = 'Filtros Nota Fiscal'
      AutoCheck = True
      Caption = 'Todas'
      GroupIndex = 1
      OnExecute = ActFiltroNotaTodasExecute
    end
    object ActFiltroNotaFiscal: TAction
      Category = 'BotaoFiltro'
      AutoCheck = True
      Caption = 'Nota Fiscal'
      GroupIndex = 1
      OnExecute = ActFiltroNotaFiscalExecute
    end
    object ActFiltroVenda: TAction
      Category = 'BotaoFiltro'
      AutoCheck = True
      Caption = 'Venda'
      GroupIndex = 1
      OnExecute = ActFiltroVendaExecute
    end
    object ActFiltroOrcamento: TAction
      Category = 'BotaoFiltro'
      AutoCheck = True
      Caption = 'Or'#231'amento'
      GroupIndex = 1
      OnExecute = ActFiltroOrcamentoExecute
    end
    object ActFiltroTipoVenda: TAction
      Category = 'Filtros Venda'
      AutoCheck = True
      Caption = 'Por Tipo'
      OnExecute = ActFiltroTipoVendaExecute
    end
    object ActViewGrafico: TAction
      Category = 'Views'
      AutoCheck = True
      Caption = 'Vendas em Gr'#225'fico'
      GroupIndex = 5
      ImageIndex = 1
      OnExecute = ActViewGraficoExecute
    end
    object ActViewGraficoProdutos: TAction
      Category = 'Views'
      AutoCheck = True
      Caption = 'Gr'#225'fico por Produto'
      GroupIndex = 5
      ImageIndex = 2
      OnExecute = ActViewGraficoProdutosExecute
    end
    object ActMigraVentaTipo: TAction
      Caption = 'Encaminhar'
    end
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
    DesignInfo = 18416063
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000023232394353535E01A1A1A7000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
          0000000000000E0E0E3C2121218E313131D03B3B3BF9313131D0303030CD3838
          38ED3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          00001616165C333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000E0E
          0E3C333333D73C3C3CFF2525259F111111470202020A111111472525259F3C3C
          3CFF3C3C3CFF383838ED00000000000000000000000000000000000000002121
          218E3C3C3CFF2525259F02020207000000003C3C3CFF00000000020202072525
          259F3C3C3CFF303030CD00000000000000000000000000000000000000003131
          31D03C3C3CFF1111114700000000000000003C3C3CFF00000000000000001111
          11473C3C3CFF313131D000000000000000000000000000000000000000003B3B
          3BF93C3C3CFF0202020A3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0202
          020A3C3C3CFF3B3B3BF900000000000000000000000000000000000000003131
          31D03C3C3CFF1111114700000000000000003C3C3CFF00000000000000001111
          11473C3C3CFF313131D000000000000000000000000000000000000000002121
          218E3C3C3CFF2525259F02020207000000003C3C3CFF00000000020202072525
          259F3C3C3CFF2121218E00000000000000000000000000000000000000000E0E
          0E3C333333D73C3C3CFF2525259F111111470202020A111111472525259F3C3C
          3CFF333333D70E0E0E3C00000000000000000000000000000000000000000000
          00001616165C333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3333
          33D71616165C0000000000000000000000000000000000000000000000000000
          0000000000000E0E0E3C2121218E313131D03B3B3BF9313131D02121218E0E0E
          0E3C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000023232394353535E01A1A1A7000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
          0000000000000E0E0E3C2121218E313131D03B3B3BF9313131D0303030CD3838
          38ED3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          00001616165C333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000E0E
          0E3C333333D73C3C3CFF2525259F111111470202020A111111472525259F3C3C
          3CFF3C3C3CFF383838ED00000000000000000000000000000000000000002121
          218E3C3C3CFF2525259F02020207000000000000000000000000020202072525
          259F3C3C3CFF303030CD00000000000000000000000000000000000000003131
          31D03C3C3CFF1111114700000000000000000000000000000000000000001111
          11473C3C3CFF313131D000000000000000000000000000000000000000003B3B
          3BF93C3C3CFF0202020A3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0202
          020A3C3C3CFF3B3B3BF900000000000000000000000000000000000000003131
          31D03C3C3CFF1111114700000000000000000000000000000000000000001111
          11473C3C3CFF313131D000000000000000000000000000000000000000002121
          218E3C3C3CFF2525259F02020207000000000000000000000000020202072525
          259F3C3C3CFF2121218E00000000000000000000000000000000000000000E0E
          0E3C333333D73C3C3CFF2525259F111111470202020A111111472525259F3C3C
          3CFF333333D70E0E0E3C00000000000000000000000000000000000000000000
          00001616165C333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3333
          33D71616165C0000000000000000000000000000000000000000000000000000
          0000000000000E0E0E3C2121218E313131D03B3B3BF9313131D02121218E0E0E
          0E3C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000041251AFF563322FF563322FF563322FF563322FF563322FF563322FF5633
          22FF563322FF563322FF563322FF41251AFF0000000000000000000000000000
          000041251AFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000563322FF0000000000000000000000000000
          000041251AFF000000000000000000000000070700FF00000000000000000000
          0000000000000000000000000000563322FF0000000000000000000000000000
          000041251AFF0000000000000000070700FF000000FF070700FF000000000000
          0000000000000000000000000000563322FF0000000000000000000000000000
          000041251AFF00000000070700FF000000FF070700FF000000FF070700FF0000
          0000000000000000000000000000563322FF0000000000000000000000000000
          000041251AFF00000000070700FF070700FF00000000070700FF000000FF0707
          00FF000000000000000000000000563322FF0000000000000000000000000000
          000041251AFF0000000000000000000000000000000000000000070700FF0000
          00FF070700FF0000000000000000563322FF0000000000000000000000000000
          000041251AFF0000000000000000000000000000000000000000000000000707
          00FF000000FF070700FF00000000563322FF0000000000000000000000000000
          000041251AFF0000000000000000000000000000000000000000000000000000
          0000070700FF070700FF00000000563322FF0000000000000000000000000000
          000041251AFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000563322FF0000000000000000000000000000
          000041251AFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000563322FF0000000000000000000000000000
          000041251AFF41251AFF41251AFF41251AFF41251AFF41251AFF41251AFF4125
          1AFF41251AFF41251AFF41251AFF41251AFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A000E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
          E300E3E3E300E3E3E300E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A000696969006969690069696900696969006969690069696900696969006969
          69006969690069696900E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0
          A000A0A0A000A0A0A000A0A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A000E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
          E300E3E3E300E3E3E300E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF000000000000000000FFFFFF0000000000000000000000
          0000FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          000000000000FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A00069696900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A000696969006969690069696900696969006969690069696900696969006969
          69006969690069696900E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0
          A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0
          A000A0A0A000A0A0A000A0A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004F4F
          4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
          4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF00000000000000004F4F
          4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
          4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF00000000000000004F4F
          4FFF4F4F4FFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000004F4F4FFF4F4F4FFF00000000000000004F4F
          4FFF4F4F4FFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000004F4F4FFF4F4F4FFF00000000000000004F4F
          4FFF4F4F4FFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000004F4F4FFF4F4F4FFF00000000000000004F4F
          4FFF4F4F4FFF0000000000000000000000000000000000000000101010334F4F
          4FFF101010330000000000000000000000000000000000000000000000004F4F
          4FFF4F4F4FFF00000000000000000000000000000000000000004F4F4FFF4F4F
          4FFF4F4F4FFF10101033000000004F4F4FFF4F4F4FFF00000000000000004F4F
          4FFF4F4F4FFF0000000000000000000000000000000000000000101010334F4F
          4FFF4F4F4FFF4F4F4FFF101010334F4F4FFF4F4F4FFF00000000000000004F4F
          4FFF4F4F4FFF0000000000000000000000000000000000000000000000001010
          10334F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF00000000000000004F4F
          4FFF4F4F4FFF0000000000000000000000000000000000000000000000000000
          0000101010334F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF00000000000000004F4F
          4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF000000004F4F
          4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF00000000000000004F4F
          4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF000000004F4F
          4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005C5048630000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001A17191A3B35383F17151717000000007D6B5B7EE6BE9FF03F33
          2C44000000000000000000000000000000000000000000000000000000000000
          000019201B2A88B390F47CB995FF7BA78CFA969A94DCFED2B5FFFFD7B4FFDFB4
          93EC000000000000000000000000000000000000000000000000000000000000
          0000567C5AB098D3C5FF65CEC8FFB0D8BFFF57AD86FF7CA790FFFFCEAFFFFACC
          A8FF5C4739650000000000000000000000000000000000000000000000000000
          0000729473CE76CDC9FFABCFCFFFFFFFFFFFECE6DCFF6F9F6CFF9EA079FFF3C3
          A6FFF6C39AFFCF9D7BDF745C4C7E000000000000000000000000000000000000
          0000577657A470C2B9FF9ECCCAFFFBF5F5FFEFE7E2FFDED6CFFF82BB95FF6973
          54FFF4C7ABFFFDD8B4FFF0BB94FF302620340000000000000000000000000000
          00002A3B295178BAA3FF77C6C6FFFDF5F7FFD3C5B8FFFFE1C1FFFFE6CAFF87B5
          82FFBFAD8CFFFFD7B9FFF8CBA4FF8D6C57980000000000000000000000000000
          00000000000073A17FE161BCB8FFE3EEEDFFA99484FFCBB09BFFCAAD99FFBAAD
          95FF6E9E6DFFE4BD9FFFFDD2AEFFB68D71C30000000000000000000000000606
          060745352D49445E487C8CA179FFF6ECE6FFD2CFCBFFE9DDD1FFFAEDDDFFF6ED
          ECFF809579FF95A779FFFCCEB1FFECB187FC46372F4C00000000110F0E12BE99
          80C9F4C29CFFE9BB97F494B988FFD5C5ADFFD5CECBFF9F846EFFD5B292FFF3F0
          EBFFC7A896FF90B582FFCEB696FFFBCCA8FFDBA279EE4639314B63544766FDD6
          B4FDFFD9B8FFFFDBB9FFE7D7B1FF87AE7CFFEACEBCFFF0E7E0FFE4E0DCFFF2E3
          D3FFFDCEABFFD0CEA6FF91A377FFFFD1B2FFF4BD91FFCB9E81DD2F2D2C38C7AC
          96E7F4D0B2FFDAB89DFFF1CAAFFFB5BB97FF90AE80FFEEC1A4FFFFDCBBFFFED3
          AFFFFFD8B6FFFCD7B4FF8CAC7BFFD9B696FFB39A85C7261F1B2AC4C4C5C6ABAA
          ABFEF8F8F6FFB0A296FFDBD5CFFFB8937FFFB7C298FF8BAC80FFE5BB9EFFFFD4
          B4FFFFD4B0FFFFE0CAFFA5C19BFF72B3A4FF71878AAA000000006F6F6F6FD2D4
          D4FBDDDAD6FFBEB4A9FFDED4C9FFCEC8C3FFCEB0A1FFC5C69DFF94B384FF89A9
          8DFF9DB6B1FFEBE1E9FFA5C5A5FF6FC2BBFF61777798000000001B1B1B1BD1D1
          D1D3C2C0BEEDCAC7C2ECC0B4AAE6D6D3D1FABBB6B1F2756159868B856F9F467B
          5CAE3C987AE4639F81F051A689ED428B89B31010101500000000000000002929
          292A34353535323232322C2A292E919191915252525200000000000000000000
          00001B1C1124152D1B421031323A000000000000000000000000}
      end>
  end
  inherited WREventosConsulta: TWREventosConsulta
    Left = 419
    Top = 252
  end
  inherited Fr3Consulta: TfrxDBDataset
    Left = 447
    Top = 225
  end
  inherited DSSubGrid: TDataSource
    Left = 488
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmVenda'
    FormClassConsulta = 'TConsuVenda'
    Left = 475
    Top = 253
  end
  inherited DS: TDataSource
    Left = 279
    Top = 224
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    Tabela = 'VENDA'
    Modulo = 'VENDA'
  end
  inherited MemTableDragDrop: TFDMemTable
    Left = 252
    Top = 281
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
    Left = 363
    Top = 184
    DesignInfo = 12058987
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select'
      
        '       P.CODIGO, P.SEQUENCIA, P.PESSOA_RESPONSAVEL_CODIGO, P.RAZ' +
        'AOSOCIAL, P.TOTAL, P.PESSOA_RESPONSAVEL_SEQUENCIA,C.CNPJCPF,'
      
        '       P.DT_EMISSAO, P.TELEFONE, P.VENDA_TIPO, P.DT_FATURAMENTO,' +
        ' P.NOTAFISCAL, P.CONDICAOPAGTO, P.ATIVO,'
      
        '       P.STATUS, P.PROJETO_DT_FIM, P.CONTATO, EV.PLACA, EV.CHASS' +
        'I, P.MOTORISTA_DOCUMENTO_NUMERO, C.FANTASIA,'
      
        '       PV.RAZAOSOCIAL as FUNCIONARIO, P.NF_DT_EMISSAO, P.SITUACA' +
        'OFINANCEIRA, P.VENDA_ESTAGIO, P.IS_PDV,'
      
        '       PG.DESCRICAO as CLIENTE_GRUPO, PR.RAZAOSOCIAL as REPRESEN' +
        'TANTE, PA.RAZAOSOCIAL as AGENCIA, P.PEDIDO_COMPRA,P.FATURAMENTO_' +
        'DT_ENVIO,'
      
        '       P.PEDIDO_REP, P.CODVENDA, P.SITUACAO, P.IS_VENDA, P.IS_NO' +
        'TAFISCAL, P.IS_ORCAMENTO,  P.DT_COMPETENCIA, P.CODVENDA_VINCULAD' +
        'A, P.FATURA_PREVISAO,P.IS_FATURAMENTO_CANCELADO,'
      
        '       P.CODVENDA_PRE_VENDA, P.OBSERVACAO, p.PESSOA_FUNCIONARIO_' +
        'CODIGO, p.PESSOA_REPRESENTANTE_CODIGO, p.PESSOA_AGENCIA_CODIGO, ' +
        'P.VDESC, P.VOUTRO, P.NF_VFRETE, '
      
        '       PJ.DESCRICAO AS PROJETO, C.FATURA_PREVISAO AS PREVISAO_CL' +
        'IENTE, P.CODIGOVENDA, P.TOTAL_FATURA'
      'from VENDA P'
      'left join EQUIPAMENTO_VEICULO EV on (EV.CODIGO = P.PLACA)'
      'left join PESSOAS C on (P.PESSOA_RESPONSAVEL_CODIGO = C.CODIGO)'
      'left join PESSOAS_GRUPO PG on (C.CODPESSOAS_GRUPO = PG.CODIGO)'
      
        'left join PESSOAS PV on (P.PESSOA_FUNCIONARIO_CODIGO = PV.CODIGO' +
        ')'
      
        'left join PESSOAS PR on (P.PESSOA_REPRESENTANTE_CODIGO = PR.CODI' +
        'GO)'
      'left join PESSOAS PA on (P.PESSOA_AGENCIA_CODIGO = PA.CODIGO)'
      'left join VENDA_TIPO VT on (VT.DESCRICAO = P.VENDA_TIPO)'
      'left join PROJETO PJ on (PJ.CODIGO = P.CODPROJETO)')
    Left = 219
    Top = 195
    object ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object ConsultaSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = 'SEQUENCIA'
    end
    object ConsultaPESSOA_RESPONSAVEL_CODIGO: TStringField
      FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
      Origin = 'PESSOA_RESPONSAVEL_CODIGO'
      Size = 10
    end
    object ConsultaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 150
    end
    object ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object ConsultaPESSOA_RESPONSAVEL_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
      Origin = 'PESSOA_RESPONSAVEL_SEQUENCIA'
    end
    object ConsultaCNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJCPF'
      Origin = 'CNPJCPF'
      ProviderFlags = []
      Size = 18
    end
    object ConsultaDT_EMISSAO: TSQLTimeStampField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object ConsultaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
    object ConsultaVENDA_TIPO: TStringField
      FieldName = 'VENDA_TIPO'
      Origin = 'VENDA_TIPO'
      Size = 60
    end
    object ConsultaDT_FATURAMENTO: TSQLTimeStampField
      FieldName = 'DT_FATURAMENTO'
      Origin = 'DT_FATURAMENTO'
    end
    object ConsultaNOTAFISCAL: TLargeintField
      FieldName = 'NOTAFISCAL'
      Origin = 'NOTAFISCAL'
    end
    object ConsultaCONDICAOPAGTO: TStringField
      FieldName = 'CONDICAOPAGTO'
      Origin = 'CONDICAOPAGTO'
      Size = 100
    end
    object ConsultaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
    object ConsultaPROJETO_DT_FIM: TSQLTimeStampField
      FieldName = 'PROJETO_DT_FIM'
      Origin = 'PROJETO_DT_FIM'
    end
    object ConsultaCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 400
    end
    object ConsultaPLACA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLACA'
      Origin = 'PLACA'
      ProviderFlags = []
      Size = 7
    end
    object ConsultaCHASSI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      ProviderFlags = []
    end
    object ConsultaMOTORISTA_DOCUMENTO_NUMERO: TIntegerField
      FieldName = 'MOTORISTA_DOCUMENTO_NUMERO'
      Origin = 'MOTORISTA_DOCUMENTO_NUMERO'
    end
    object ConsultaFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaFUNCIONARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FUNCIONARIO'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaNF_DT_EMISSAO: TSQLTimeStampField
      FieldName = 'NF_DT_EMISSAO'
      Origin = 'NF_DT_EMISSAO'
    end
    object ConsultaSITUACAOFINANCEIRA: TStringField
      FieldName = 'SITUACAOFINANCEIRA'
      Origin = 'SITUACAOFINANCEIRA'
      Size = 30
    end
    object ConsultaVENDA_ESTAGIO: TStringField
      FieldName = 'VENDA_ESTAGIO'
      Origin = 'VENDA_ESTAGIO'
      Size = 100
    end
    object ConsultaIS_PDV: TStringField
      FieldName = 'IS_PDV'
      Origin = 'IS_PDV'
      Size = 1
    end
    object ConsultaCLIENTE_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_GRUPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaREPRESENTANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REPRESENTANTE'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaPEDIDO_COMPRA: TStringField
      FieldName = 'PEDIDO_COMPRA'
      Origin = 'PEDIDO_COMPRA'
      Size = 25
    end
    object ConsultaFATURAMENTO_DT_ENVIO: TSQLTimeStampField
      FieldName = 'FATURAMENTO_DT_ENVIO'
      Origin = 'FATURAMENTO_DT_ENVIO'
    end
    object ConsultaPEDIDO_REP: TStringField
      FieldName = 'PEDIDO_REP'
      Origin = 'PEDIDO_REP'
    end
    object ConsultaCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
      Size = 300
    end
    object ConsultaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 150
    end
    object ConsultaIS_VENDA: TStringField
      FieldName = 'IS_VENDA'
      Origin = 'IS_VENDA'
      FixedChar = True
      Size = 1
    end
    object ConsultaIS_NOTAFISCAL: TStringField
      FieldName = 'IS_NOTAFISCAL'
      Origin = 'IS_NOTAFISCAL'
      FixedChar = True
      Size = 1
    end
    object ConsultaIS_ORCAMENTO: TStringField
      FieldName = 'IS_ORCAMENTO'
      Origin = 'IS_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object ConsultaDT_COMPETENCIA: TDateField
      FieldName = 'DT_COMPETENCIA'
      Origin = 'DT_COMPETENCIA'
    end
    object ConsultaCODVENDA_VINCULADA: TStringField
      FieldName = 'CODVENDA_VINCULADA'
      Origin = 'CODVENDA_VINCULADA'
      Size = 500
    end
    object ConsultaFATURA_PREVISAO: TStringField
      FieldName = 'FATURA_PREVISAO'
      Origin = 'FATURA_PREVISAO'
      Size = 1
    end
    object ConsultaIS_FATURAMENTO_CANCELADO: TStringField
      FieldName = 'IS_FATURAMENTO_CANCELADO'
      Origin = 'IS_FATURAMENTO_CANCELADO'
      Size = 1
    end
    object ConsultaCODVENDA_PRE_VENDA: TStringField
      FieldName = 'CODVENDA_PRE_VENDA'
      Origin = 'CODVENDA_PRE_VENDA'
      Size = 15
    end
    object ConsultaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object ConsultaPESSOA_FUNCIONARIO_CODIGO: TStringField
      FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
      Origin = 'PESSOA_FUNCIONARIO_CODIGO'
      Size = 10
    end
    object ConsultaPESSOA_REPRESENTANTE_CODIGO: TStringField
      FieldName = 'PESSOA_REPRESENTANTE_CODIGO'
      Origin = 'PESSOA_REPRESENTANTE_CODIGO'
      Size = 10
    end
    object ConsultaPESSOA_AGENCIA_CODIGO: TStringField
      FieldName = 'PESSOA_AGENCIA_CODIGO'
      Origin = 'PESSOA_AGENCIA_CODIGO'
      Size = 10
    end
    object ConsultaVDESC: TFloatField
      FieldName = 'VDESC'
      Origin = 'VDESC'
    end
    object ConsultaVOUTRO: TFloatField
      FieldName = 'VOUTRO'
      Origin = 'VOUTRO'
    end
    object ConsultaNF_VFRETE: TFloatField
      FieldName = 'NF_VFRETE'
      Origin = 'NF_VFRETE'
    end
    object ConsultaPROJETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROJETO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaPREVISAO_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PREVISAO_CLIENTE'
      Origin = 'FATURA_PREVISAO'
      ProviderFlags = []
      Size = 1
    end
    object ConsultaCODIGOVENDA: TStringField
      FieldName = 'CODIGOVENDA'
    end
    object ConsultaTOTAL_FATURA: TFloatField
      FieldName = 'TOTAL_FATURA'
    end
  end
  object DSVendaProduto: TDataSource
    DataSet = Venda_ProdutoT
    Left = 279
    Top = 253
  end
  object Venda_ProdutoT: TFDQuery
    BeforeOpen = Venda_ProdutoTBeforeOpen
    OnCalcFields = Venda_ProdutoTCalcFields
    Connection = DMBanco.Banco
    Transaction = Transa
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      
        'select VP.DESCRICAO, VP.CODPRODUTO, VP.QUANT, VP.VALOR, VP.COMP,' +
        ' VP.LARG, VP.ESPESSURA, VP.CODVENDA, VP.PODE_FATURAR, VP.TOTAL,V' +
        'P.MEDIDAS,'
      
        '       VP.UNIDADE, VP.QTDADEPECA, VP.CODIGO, VP.OBS_FATURAMENTO,' +
        ' VP.NF_OBS_NOTAFISCAL, VP.CODVENDA_ORIGINAL, VP.CODVENDA_FATURAD' +
        'O,'
      
        '       VP.CODPRODUCAO, VP.PRODUTO_TIPO, VP.PROTOCOLO, VP.TEM_PRO' +
        'DUCAO_ENVIADO, PR.SITUACAO, VP.QUANTFATURADA,'
      ' iif('
      
        '       (select count(PR1.SITUACAO) From PRODUCAO PR1 where (VP.C' +
        'ODIGO = PR1.CODVENDA_PRODUTO and VP.CODVENDA = PR1.CODVENDA)and(' +
        'PR1.SITUACAO <> '#39'Cancelado'#39')and not(PR1.SITUACAO is null)) > 0'
      '       , '#39'S'#39', '#39'N'#39') as EM_PRODUCAO,'
      '       vp1.total as Total_original, vp1.quant as Quant_original'
      'from VENDA_PRODUTO VP'
      
        'left join VENDA_PRODUTO VP1 on (vp1.codigo = vp.codvenda_produto' +
        '_original)and(vp1.codvenda = vp.codvenda_original)'
      'left join PRODUTO P on (VP.CODPRODUTO = P.CODIGO)'
      'left join PRODUCAO PR on (VP.CODPRODUCAO = PR.CODIGO)'
      'where (VP.CODVENDA = :CODIGO)'
      'and ((VP.PARENT = 0) or (VP.PARENT is null))')
    Left = 251
    Top = 253
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 11
        Value = Null
      end>
  end
  object UCControls1: TUCControls
    GroupName = 'Consulta de Venda'
    UserControl = FrmPrincipal.UserControl
    Components = ''
    MostraMessagemErroValidacao = False
    Left = 335
    Top = 253
  end
  object RelVenda: TFDQuery
    BeforeOpen = RelVendaBeforeOpen
    AfterClose = RelVendaAfterClose
    Connection = DMBanco.Banco
    Transaction = Transa
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select P.*,C.*'
      'from VENDA P'
      'left join EQUIPAMENTO_VEICULO EV on (EV.CODIGO = P.PLACA)'
      
        'left join PESSOAS C on (P.PESSOA_RESPONSAVEL_CODIGO = C.CODIGO) ' +
        'and (P.PESSOA_RESPONSAVEL_TIPO = '#39'CLI'#39')'
      'left join PESSOAS_GRUPO PG on (C.CODPESSOAS_GRUPO = PG.CODIGO)'
      
        'left join PESSOAS PV on (P.PESSOA_FUNCIONARIO_CODIGO = PV.CODIGO' +
        ')'
      
        'left join PESSOAS PR on (P.PESSOA_REPRESENTANTE_CODIGO = PR.CODI' +
        'GO)'
      'left join VENDA_TIPO VT on (VT.DESCRICAO = P.VENDA_TIPO)')
    Left = 652
    Top = 275
  end
  object DSLookupVendaTipo: TDataSource
    AutoEdit = False
    DataSet = LookupVendaTipo
    Left = 279
    Top = 309
  end
  object LookupVendaTipo: TFDQuery
    BeforeOpen = LookupVendaTipoBeforeOpen
    OnCalcFields = LookupVendaTipoCalcFields
    Connection = DMBanco.Banco
    Transaction = Transa
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select 0 as CODIGO, '#39'<Todos>'#39' as DESCRICAO, null as MODELO, 0 as' +
        ' SEQ'
      'from RDB$DATABASE'
      ''
      'union'
      ''
      'select CODIGO, DESCRICAO, MODELO, 1 as SEQ'
      'from VENDA_TIPO '
      'where (ATIVO = '#39'S'#39') '
      ''
      'order by 4 asc, 2 asc')
    Left = 251
    Top = 309
    object LookupVendaTipoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LookupVendaTipoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object LookupVendaTipoMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object LookupVendaTipoModeloObj: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModeloObj'
      Calculated = True
    end
  end
  object RepAgenda: TcxEditRepository
    Left = 419
    Top = 281
    PixelsPerInch = 96
    object RepAgendaImageTarefaStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <>
      Properties.ReadOnly = True
    end
    object RepAgendaImagePrioridade: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <>
    end
    object RepAgendaSelecionado: TcxEditRepositoryCheckBoxItem
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
    end
    object RepAgendaImageTipoRegistro: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <>
    end
    object RepAgendaImageAnexo: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Value = ''
        end
        item
          ImageIndex = 17
          Value = 'S'
        end>
    end
  end
  object fr3Venda: TfrxDBDataset
    UserName = 'Venda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DT_EMISSAO=DT_EMISSAO'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'TELEFONE=TELEFONE'
      'NOTAFISCAL=NOTAFISCAL'
      'CODUSUARIO=CODUSUARIO'
      'MOTORISTA=MOTORISTA'
      'MOTORISTA_DOCUMENTO=MOTORISTA_DOCUMENTO'
      'MOTORISTA_ENDERECO=MOTORISTA_ENDERECO'
      'SOLICITACAO_SERVICO=SOLICITACAO_SERVICO'
      'DT_FATURAMENTO=DT_FATURAMENTO'
      'DT_ENTRADA=DT_ENTRADA'
      'PROJETO_DT_FIM=PROJETO_DT_FIM'
      'KILOMETRAGEM=KILOMETRAGEM'
      'PERC_ACRESC=PERC_ACRESC'
      'VALOR_ACRESC=VALOR_ACRESC'
      'PERC_DESC=PERC_DESC'
      'VALOR_DESC=VALOR_DESC'
      'TOTAL_PRODUTOS=TOTAL_PRODUTOS'
      'TOTAL_SERVICOS=TOTAL_SERVICOS'
      'SUB_TOTAL=SUB_TOTAL'
      'TOTAL=TOTAL'
      'VENDA_TIPO=VENDA_TIPO'
      'PLACA=PLACA'
      'CHASSI=CHASSI'
      'QUANTIDADE_PARCELAS=QUANTIDADE_PARCELAS'
      'QUANTIDADE=QUANTIDADE'
      'DIA_INTERVALO=DIA_INTERVALO'
      'CODCONDICAOPAGTO=CODCONDICAOPAGTO'
      'CONDICAOPAGTO=CONDICAOPAGTO'
      'INTERVALO_MENSAL=INTERVALO_MENSAL'
      'COMISSAO=COMISSAO'
      'COMISSAO_REPRESENTANTE=COMISSAO_REPRESENTANTE'
      'STATUS=STATUS'
      'ATUALIZADO=ATUALIZADO'
      'NF_DT_EMISSAO=NF_DT_EMISSAO'
      'NF_DT_SAIDAENTRADA=NF_DT_SAIDAENTRADA'
      'NF_SAIDA_ENTRADA=NF_SAIDA_ENTRADA'
      'NF_TRANSPORTADORA=NF_TRANSPORTADORA'
      'NF_FRETEPORCONTA=NF_FRETEPORCONTA'
      'NF_TRANPORTADORA_PLACA=NF_TRANPORTADORA_PLACA'
      'NF_UF=NF_UF'
      'NF_ESPECIE=NF_ESPECIE'
      'NF_MARCA=NF_MARCA'
      'NF_NUMERO=NF_NUMERO'
      'NF_PESO_BRUTO=NF_PESO_BRUTO'
      'NF_PESO_LIQUIDO=NF_PESO_LIQUIDO'
      'NF_STATUS=NF_STATUS'
      'NF_DADOS_ADICIONAIS=NF_DADOS_ADICIONAIS'
      'NF_VALOR_ISS_ALIQ=NF_VALOR_ISS_ALIQ'
      'NF_VALOR_ICMS_BC=NF_VALOR_ICMS_BC'
      'NF_VALOR_ISS_BC=NF_VALOR_ISS_BC'
      'NF_VALOR_FRETE=NF_VALOR_FRETE'
      'NF_VALOR_ISS=NF_VALOR_ISS'
      'NF_VALOR_ICMS=NF_VALOR_ICMS'
      'NF_VALOR_SEGURO=NF_VALOR_SEGURO'
      'NF_VALOR_ICMS_ST=NF_VALOR_ICMS_ST'
      'NF_VALOR_IPI=NF_VALOR_IPI'
      'NF_IE_SUBST=NF_IE_SUBST'
      'CODCARRO=CODCARRO'
      'ANO=ANO'
      'COR=COR'
      'VALOR=VALOR'
      'CODCARROINTEIRO=CODCARROINTEIRO'
      'NF_OBSERVACAO=NF_OBSERVACAO'
      'NF_PORCENTAGEM_DESCONTO=NF_PORCENTAGEM_DESCONTO'
      'NF_VALOR_ICMS_ST_BC=NF_VALOR_ICMS_ST_BC'
      'NF_VCREDSN=NF_VCREDSN'
      'NF_VADUANEIRA=NF_VADUANEIRA'
      'NF_VALOR_PIS=NF_VALOR_PIS'
      'NF_VALOR_COFINS=NF_VALOR_COFINS'
      'NF_VALOR_II=NF_VALOR_II'
      'NF_TOTAL_IMPOSTOS=NF_TOTAL_IMPOSTOS'
      'NF_NDI=NF_NDI'
      'NF_DDI=NF_DDI'
      'NF_XLOCDESEMB=NF_XLOCDESEMB'
      'NF_UFDESEMB=NF_UFDESEMB'
      'NF_DDESEMB=NF_DDESEMB'
      'NF_CEXPORTADOR=NF_CEXPORTADOR'
      'NF_TRANSPORTADORA_UF=NF_TRANSPORTADORA_UF'
      'EQUIPAMENTO_NUMERO_SERIE=EQUIPAMENTO_NUMERO_SERIE'
      'EQUIPAMENTO_NUMERO_NF=EQUIPAMENTO_NUMERO_NF'
      'EQUIPAMENTO_DT_COMPRA=EQUIPAMENTO_DT_COMPRA'
      'EQUIPAMENTO_DESCRICAO=EQUIPAMENTO_DESCRICAO'
      'CODCONTA=CODCONTA'
      'EQUIPAMENTO_DEFEITO=EQUIPAMENTO_DEFEITO'
      'DT_ALTERACAO=DT_ALTERACAO'
      'NFE_IMPRIMIR_QTDEPECA=NFE_IMPRIMIR_QTDEPECA'
      'BLOQUEIO=BLOQUEIO'
      'MOTORISTA_DOCUMENTO_NUMERO=MOTORISTA_DOCUMENTO_NUMERO'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'PESSOA_REPRESENTANTE_CODIGO=PESSOA_REPRESENTANTE_CODIGO'
      'PESSOA_REPRESENTANTE_TIPO=PESSOA_REPRESENTANTE_TIPO'
      'PESSOA_REPRESENTANTE_SEQUENCIA=PESSOA_REPRESENTANTE_SEQUENCIA'
      'PESSOA_MOTORISTA_CODIGO=PESSOA_MOTORISTA_CODIGO'
      'PESSOA_MOTORISTA_TIPO=PESSOA_MOTORISTA_TIPO'
      'PESSOA_MOTORISTA_SEQUENCIA=PESSOA_MOTORISTA_SEQUENCIA'
      'PESSOA_FUNCIONARIO_CODIGO=PESSOA_FUNCIONARIO_CODIGO'
      'PESSOA_FUNCIONARIO_TIPO=PESSOA_FUNCIONARIO_TIPO'
      'PESSOA_FUNCIONARIO_SEQUENCIA=PESSOA_FUNCIONARIO_SEQUENCIA'
      'PESSOA_TRANSPORTADORA_CODIGO=PESSOA_TRANSPORTADORA_CODIGO'
      'PESSOA_TRANSPORTADORA_TIPO=PESSOA_TRANSPORTADORA_TIPO'
      'PESSOA_TRANSPORTADORA_SEQUENCIA=PESSOA_TRANSPORTADORA_SEQUENCIA'
      'CODVENDA=CODVENDA'
      'CREDITO=CREDITO'
      'SEQUENCIA=SEQUENCIA'
      'NFSE_RPS=NFSE_RPS'
      'NFSE_PROTOCOLO=NFSE_PROTOCOLO'
      'NFSE_CODIGOVERIFICACAO=NFSE_CODIGOVERIFICACAO'
      'NF_RATEIO=NF_RATEIO'
      'TRANSFERENCIA_TIPO=TRANSFERENCIA_TIPO'
      'ESTOQUE_LOCAL_ORIGEM=ESTOQUE_LOCAL_ORIGEM'
      'ESTOQUE_LOCAL_DESTINO=ESTOQUE_LOCAL_DESTINO'
      'CODEMPRESA_DESTINO=CODEMPRESA_DESTINO'
      'CODEMPRESA_ORIGEM=CODEMPRESA_ORIGEM'
      'NF_II_DESPACE=NF_II_DESPACE'
      'CONTATO=CONTATO'
      'AUTENTICACAO=AUTENTICACAO'
      'CODUSUARIO_FATURAMENTO=CODUSUARIO_FATURAMENTO'
      'CODCLIENTE_SITE=CODCLIENTE_SITE'
      'PEDIDO_COMPRA=PEDIDO_COMPRA'
      'NF_FINALIDADE=NF_FINALIDADE'
      'NF_NREF=NF_NREF'
      'VALOR_ABATIMENTO=VALOR_ABATIMENTO'
      'PESSOA_AGENCIA_CODIGO=PESSOA_AGENCIA_CODIGO'
      'PESSOA_AGENCIA_SEQUENCIA=PESSOA_AGENCIA_SEQUENCIA'
      'PESSOA_AGENCIA_TIPO=PESSOA_AGENCIA_TIPO'
      'COMISSAO_AGENCIA=COMISSAO_AGENCIA'
      'COMISSAO_COMPARTILHADA=COMISSAO_COMPARTILHADA'
      'PERC_COMPARTILHADA=PERC_COMPARTILHADA'
      'PERC_COMP_FUNCIONARIO=PERC_COMP_FUNCIONARIO'
      'PERC_COMP_REPRESENTANTE=PERC_COMP_REPRESENTANTE'
      'SITUACAO=SITUACAO'
      'PEDIDO_REP=PEDIDO_REP'
      'CODCOLETA=CODCOLETA'
      'DT_COLETA=DT_COLETA'
      'CODCIDADE_ENTREGA=CODCIDADE_ENTREGA'
      'BAIRRO_ENTREGA=BAIRRO_ENTREGA'
      'ENDERECO_ENTREGA=ENDERECO_ENTREGA'
      'NUMERO_ENTREGA=NUMERO_ENTREGA'
      'COMPLEMENTO_ENTREGA=COMPLEMENTO_ENTREGA'
      'UF_ENTREGA=UF_ENTREGA'
      'CEP_ENTREGA=CEP_ENTREGA'
      'OBSERVACAO_SERVICO=OBSERVACAO_SERVICO'
      'OBSERVACAO=OBSERVACAO'
      'VFCPUFDEST=VFCPUFDEST'
      'VICMSUFDEST=VICMSUFDEST'
      'VICMSUFREMET=VICMSUFREMET'
      'CONSUMIDOR_FINAL=CONSUMIDOR_FINAL'
      'NFE_ICMS_SOB_FRETE=NFE_ICMS_SOB_FRETE'
      'DEDUZIR_ISS_RETIDO=DEDUZIR_ISS_RETIDO'
      'TIPO_EVENTO=TIPO_EVENTO'
      'CERIMONIAL=CERIMONIAL'
      'DATA_EVENTO=DATA_EVENTO'
      'COMISSAO_AGENCIA_CALCULA=COMISSAO_AGENCIA_CALCULA'
      'DT_COMPETENCIA=DT_COMPETENCIA'
      'SITUACAOFINANCEIRA=SITUACAOFINANCEIRA'
      'NFE_ICMS_SOB_OUTROS=NFE_ICMS_SOB_OUTROS'
      'IS_NOTAFISCAL=IS_NOTAFISCAL'
      'IS_FATURAMENTO=IS_FATURAMENTO'
      'IS_PEDIDO=IS_PEDIDO'
      'NF_NATOP=NF_NATOP'
      'NFE_CALCULA_DIFAL=NFE_CALCULA_DIFAL'
      'NF_IE_EMIT=NF_IE_EMIT'
      'NF_CRT_EMIT=NF_CRT_EMIT'
      'NF_CRT_DEST=NF_CRT_DEST'
      'NF_UTILIZAR_CODFABRICA_NA_IMPR=NF_UTILIZAR_CODFABRICA_NA_IMPR'
      'VTOTTRIB=VTOTTRIB'
      'TOTALALIQ_NACIONAL=TOTALALIQ_NACIONAL'
      'TOTALALIQ_IMPORTACAO=TOTALALIQ_IMPORTACAO'
      'TOTALALIQ_ESTADUAL=TOTALALIQ_ESTADUAL'
      'TOTALALIQ_MUNICIPAL=TOTALALIQ_MUNICIPAL'
      'NF_OBSERVACAO_PADRAO=NF_OBSERVACAO_PADRAO'
      'VENDA_ATENTICADA=VENDA_ATENTICADA'
      'VENDA_ATENTICAR=VENDA_ATENTICAR'
      'TITULO_VENDA=TITULO_VENDA'
      'NF_PCREDSN=NF_PCREDSN'
      'SERVICO_ISS_RETIDO=SERVICO_ISS_RETIDO'
      'SERVICO_NATUREZA_OPERACAO=SERVICO_NATUREZA_OPERACAO'
      'SERVICO_REGIME_ESPECIAL_TRIBUT=SERVICO_REGIME_ESPECIAL_TRIBUT'
      'SERVICO_INCENTIVADOR_CULTURAL=SERVICO_INCENTIVADOR_CULTURAL'
      'NF_OBSERVACAO_SERVICO=NF_OBSERVACAO_SERVICO'
      'NF_CNAE=NF_CNAE'
      'NF_VALOR_ISS_RETIDO=NF_VALOR_ISS_RETIDO'
      'NF_CODIGOTRIBUTACAOMUNICIPIO=NF_CODIGOTRIBUTACAOMUNICIPIO'
      'RATEAR_FRETE=RATEAR_FRETE'
      'RATEAR_ACRESCIMO=RATEAR_ACRESCIMO'
      'RATEAR_DESCONTO=RATEAR_DESCONTO'
      'NFSE_DHRECEBIMENTO=NFSE_DHRECEBIMENTO'
      'NFSE_SITUACAO=NFSE_SITUACAO'
      'SERVICO_CODNF_NCM=SERVICO_CODNF_NCM'
      'SERVICO_NOTA_PADRAO=SERVICO_NOTA_PADRAO'
      'CODIGO_1=CODIGO_1'
      'TIPO=TIPO'
      'CNPJCPF=CNPJCPF'
      'RAZAOSOCIAL_1=RAZAOSOCIAL_1'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'CODCIDADE=CODCIDADE'
      'UF=UF'
      'PROXIMIDADE=PROXIMIDADE'
      'FONE1=FONE1'
      'FONE2=FONE2'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'DATACADASTRO=DATACADASTRO'
      'ATIVO=ATIVO'
      'CODEMPRESA=CODEMPRESA'
      'INSCIDENT=INSCIDENT'
      'AGENCIA=AGENCIA'
      'BAIRROCOMERCIAL=BAIRROCOMERCIAL'
      'BAIRROCOMERCIALCONJUGE=BAIRROCOMERCIALCONJUGE'
      'BLOQUEADO=BLOQUEADO'
      'CELPROPRIETARIO1=CELPROPRIETARIO1'
      'CELPROPRIETARIO2=CELPROPRIETARIO2'
      'CEPCOMERCIAL=CEPCOMERCIAL'
      'CEPCOMERCIALCONJUGE=CEPCOMERCIALCONJUGE'
      'COBRANCA=COBRANCA'
      'CODAGENDA1=CODAGENDA1'
      'CODAGENDA2=CODAGENDA2'
      'CODBANCO=CODBANCO'
      'CODCIDADECOMERCIAL=CODCIDADECOMERCIAL'
      'CODCIDADECOMERCIALCONJUGE=CODCIDADECOMERCIALCONJUGE'
      'CODCIDADENASC=CODCIDADENASC'
      'CODCONDICAOPAGTO_1=CODCONDICAOPAGTO_1'
      'CODGRUPO=CODGRUPO'
      'COMISSAO_POR_VENDA=COMISSAO_POR_VENDA'
      'COMPLEMENTOCOMERCIAL=COMPLEMENTOCOMERCIAL'
      'COMPLEMENTOCOMERCIALCONJUGE=COMPLEMENTOCOMERCIALCONJUGE'
      'CONDICAOPAGTO_DIA_PROXIMO_MES=CONDICAOPAGTO_DIA_PROXIMO_MES'
      'CONTA=CONTA'
      'CONTATO_1=CONTATO_1'
      'CONTRATO=CONTRATO'
      'CORRESBAIRRO=CORRESBAIRRO'
      'CORRESCEP=CORRESCEP'
      'CORRESCODCIDADE=CORRESCODCIDADE'
      'CORRESCOMPLEMENTO=CORRESCOMPLEMENTO'
      'CORRESENDERECO=CORRESENDERECO'
      'CORRESUF=CORRESUF'
      'CRT=CRT'
      'DATA_ADMISSAO=DATA_ADMISSAO'
      'DATA_CONTRATO1=DATA_CONTRATO1'
      'DATA_CONTRATO2=DATA_CONTRATO2'
      'DATA_FGTS=DATA_FGTS'
      'DATANASCIMENTO=DATANASCIMENTO'
      'DEMISSAO_DT=DEMISSAO_DT'
      'DEMISSAO_MOTIVO=DEMISSAO_MOTIVO'
      'DEMISSAO_OBSERVACAO=DEMISSAO_OBSERVACAO'
      'DESCONTO_PRODUTO=DESCONTO_PRODUTO'
      'DIAS=DIAS'
      'EMPRESA_TRABALHO=EMPRESA_TRABALHO'
      'ENDERECOCOMERCIAL=ENDERECOCOMERCIAL'
      'ENDERECOCOMERCIALCONJUGE=ENDERECOCOMERCIALCONJUGE'
      'ESTADO_CIVIL=ESTADO_CIVIL'
      'FLCASAPROPRIA=FLCASAPROPRIA'
      'FONE_TRABALHO=FONE_TRABALHO'
      'GRAU_INSTRUCAO=GRAU_INSTRUCAO'
      'HABILITACAO_CATEGORIA=HABILITACAO_CATEGORIA'
      'HABILITACAO_CODCIDADE=HABILITACAO_CODCIDADE'
      'HABILITACAO_N=HABILITACAO_N'
      'HABILITACAO_VALIDADE=HABILITACAO_VALIDADE'
      'INSCIDENT_DATA=INSCIDENT_DATA'
      'INSCIDENT_ORGAO=INSCIDENT_ORGAO'
      'INSCIDENT_UF=INSCIDENT_UF'
      'LIMITE_DESCONTO=LIMITE_DESCONTO'
      'LIMITECREDITO=LIMITECREDITO'
      'LOJA01=LOJA01'
      'LOJA02=LOJA02'
      'LOJA03=LOJA03'
      'MAE=MAE'
      'PAI=PAI'
      'MOTIVO=MOTIVO'
      'NACIONALIDADE=NACIONALIDADE'
      'NASCIMENTO_CODCIDADE=NASCIMENTO_CODCIDADE'
      'NASCIMENTO_DT=NASCIMENTO_DT'
      'NASCIMENTO_UF=NASCIMENTO_UF'
      'NOMECONJUGE=NOMECONJUGE'
      'NOMEEMPRESACONJUGE=NOMEEMPRESACONJUGE'
      'NPROPRIETARIO1=NPROPRIETARIO1'
      'NPROPRIETARIO2=NPROPRIETARIO2'
      'NUMERO=NUMERO'
      'NUMERO_REGISTRO=NUMERO_REGISTRO'
      'OBSERVACAO_1=OBSERVACAO_1'
      'OBSERVACAOCREDIARIO=OBSERVACAOCREDIARIO'
      'PAGAMENTO=PAGAMENTO'
      'PENSAO=PENSAO'
      'PENSAO_AGENCIA=PENSAO_AGENCIA'
      'PENSAO_BENEFICIARIO=PENSAO_BENEFICIARIO'
      'PENSAO_CODBANCO=PENSAO_CODBANCO'
      'PENSAO_CONTA=PENSAO_CONTA'
      'PLACA_1=PLACA_1'
      'PROFISSIONAL_CARTEIRA=PROFISSIONAL_CARTEIRA'
      'PROFISSIONAL_DT_EMISSAO=PROFISSIONAL_DT_EMISSAO'
      'PROFISSIONAL_PIS=PROFISSIONAL_PIS'
      'PROFISSIONAL_SERIE=PROFISSIONAL_SERIE'
      'PROFISSIONAL_UF=PROFISSIONAL_UF'
      'QUANT_MAQUINAS=QUANT_MAQUINAS'
      'RENDAFAMILIAR=RENDAFAMILIAR'
      'RESERVISTA_CARTEIRA=RESERVISTA_CARTEIRA'
      'RESERVISTA_CATEGORIA=RESERVISTA_CATEGORIA'
      'RESERVISTA_SERIE=RESERVISTA_SERIE'
      'SALARIO=SALARIO'
      'SALARIOCONJUGE=SALARIOCONJUGE'
      'SINDICATO=SINDICATO'
      'SPC=SPC'
      'SPC_RESPONSAVEL=SPC_RESPONSAVEL'
      'TELEFONEEMPRESACONJUGE=TELEFONEEMPRESACONJUGE'
      'TELEFONELOJA01=TELEFONELOJA01'
      'TELEFONELOJA02=TELEFONELOJA02'
      'TELEFONELOJA03=TELEFONELOJA03'
      'TITULO_N=TITULO_N'
      'TITULO_SECAO=TITULO_SECAO'
      'TITULO_ZONA=TITULO_ZONA'
      'TRANSPORTADORA=TRANSPORTADORA'
      'DT_ALTERACAO_1=DT_ALTERACAO_1'
      'IS_CLI=IS_CLI'
      'SEQUENCIA_CLI=SEQUENCIA_CLI'
      'IS_FOR=IS_FOR'
      'SEQUENCIA_FOR=SEQUENCIA_FOR'
      'IS_FUN=IS_FUN'
      'SEQUENCIA_FUN=SEQUENCIA_FUN'
      'IS_REP=IS_REP'
      'SEQUENCIA_REP=SEQUENCIA_REP'
      'IS_ASS=IS_ASS'
      'SEQUENCIA_ASS=SEQUENCIA_ASS'
      'IS_FRE=IS_FRE'
      'SEQUENCIA_FRE=SEQUENCIA_FRE'
      'IS_MEN=IS_MEN'
      'SEQUENCIA_MEN=SEQUENCIA_MEN'
      'IS_ACI=IS_ACI'
      'SEQUENCIA_ACI=SEQUENCIA_ACI'
      'IS_GEN=IS_GEN'
      'SEQUENCIA_GEN=SEQUENCIA_GEN'
      'IS_AGE=IS_AGE'
      'SEQUENCIA_AGE=SEQUENCIA_AGE'
      'IS_PRO=IS_PRO'
      'SEQUENCIA_PRO=SEQUENCIA_PRO'
      'IS_ADV=IS_ADV'
      'SEQUENCIA_ADV=SEQUENCIA_ADV'
      'IS_JUD=IS_JUD'
      'SEQUENCIA_JUD=SEQUENCIA_JUD'
      'IS_FDP=IS_FDP'
      'SEQUENCIA_FDP=SEQUENCIA_FDP'
      'IS_CAR=IS_CAR'
      'SEQUENCIA_CAR=SEQUENCIA_CAR'
      'IS_EQU=IS_EQU'
      'SEQUENCIA_EQU=SEQUENCIA_EQU'
      'COBRAR_CUSTO_BOLETO=COBRAR_CUSTO_BOLETO'
      'PAGINA=PAGINA'
      'CARGO=CARGO'
      'COMISSAO_1=COMISSAO_1'
      'PESSOA_REPRESENTANTE_CODIGO_1=PESSOA_REPRESENTANTE_CODIGO_1'
      'PESSOA_REPRESENTANTE_TIPO_1=PESSOA_REPRESENTANTE_TIPO_1'
      
        'PESSOA_REPRESENTANTE_SEQUENCIA_1=PESSOA_REPRESENTANTE_SEQUENCIA_' +
        '1'
      'IS_PES=IS_PES'
      'SEQUENCIA_PES=SEQUENCIA_PES'
      'SEXO=SEXO'
      'REVISADO=REVISADO'
      'MENSALIDADE_DIA_VENCTO=MENSALIDADE_DIA_VENCTO'
      'MENSALIDADE_VALOR=MENSALIDADE_VALOR'
      'REVISADO_CONTRATO=REVISADO_CONTRATO'
      'COMPLEMENTO=COMPLEMENTO'
      'TABELA_PRECO=TABELA_PRECO'
      'SITUACAO_1=SITUACAO_1'
      'NAO_GERA_BOLETO_SINISTRO=NAO_GERA_BOLETO_SINISTRO'
      'ETIQUETA=ETIQUETA'
      'MOTORISTA_ATIVO=MOTORISTA_ATIVO'
      'PESSOA_ASSOCIADO_CODIGO=PESSOA_ASSOCIADO_CODIGO'
      'PESSOA_ASSOCIADO_TIPO=PESSOA_ASSOCIADO_TIPO'
      'PESSOA_ASSOCIADO_SEQUENCIA=PESSOA_ASSOCIADO_SEQUENCIA'
      'IMPENV=IMPENV'
      'AVALIACAO=AVALIACAO'
      'CREDITO_1=CREDITO_1'
      'PESSOA_MATRIZ_CODIGO=PESSOA_MATRIZ_CODIGO'
      'PESSOA_MATRIZ_TIPO=PESSOA_MATRIZ_TIPO'
      'PESSOA_MATRIZ_SEQUENCIA=PESSOA_MATRIZ_SEQUENCIA'
      'EQUIPAMENTOS_NA_MATRIZ=EQUIPAMENTOS_NA_MATRIZ'
      'ISS_RETIDO=ISS_RETIDO'
      'IS_PDV=IS_PDV'
      'SEQUENCIA_PDV=SEQUENCIA_PDV'
      'EMAIL_NFE=EMAIL_NFE'
      'REFERENCIA=REFERENCIA'
      'CODCLIENTE_SITE_1=CODCLIENTE_SITE_1'
      'CORRESEMAIL=CORRESEMAIL'
      'SITE=SITE'
      'CODIGO_CMC=CODIGO_CMC'
      'WEB_PLANO_HOSPEDAGEM=WEB_PLANO_HOSPEDAGEM'
      'WEB_TIPO_DESENVOLVIMENTO=WEB_TIPO_DESENVOLVIMENTO'
      'WEB_DT_CONTRATACAO=WEB_DT_CONTRATACAO'
      'WEB_DOMINIO=WEB_DOMINIO'
      'WEB_SERVIDOR=WEB_SERVIDOR'
      'SUFRAMA=SUFRAMA'
      'PESSOA_TRANSPORTADORA_CODIGO_1=PESSOA_TRANSPORTADORA_CODIGO_1'
      'PESSOA_TRANSPORTADORA_TIPO_1=PESSOA_TRANSPORTADORA_TIPO_1'
      
        'PESSOA_TRANSPORTADORA_SEQUENCIA_1=PESSOA_TRANSPORTADORA_SEQUENCI' +
        'A_1'
      'TIPO_CONTRIBUINTE=TIPO_CONTRIBUINTE'
      'GERA_BOLETO_UNICO=GERA_BOLETO_UNICO'
      'VALOR_FRETE_PADRAO=VALOR_FRETE_PADRAO'
      'INSALUB_PERICUL=INSALUB_PERICUL'
      'CONSUMIDOR_FINAL_1=CONSUMIDOR_FINAL_1'
      'INSCEST_PESSOA_FISICA=INSCEST_PESSOA_FISICA'
      'INSC_MUNICIPAL=INSC_MUNICIPAL'
      'MENSAGEM_PARA_VENDA=MENSAGEM_PARA_VENDA'
      'FUNCIONARIO_HORAS_MENSSAL=FUNCIONARIO_HORAS_MENSSAL'
      'FUNCIONARIO_HORAS_DIARIAS=FUNCIONARIO_HORAS_DIARIAS'
      'PODE_COMPRAR_COM_CHEQUE=PODE_COMPRAR_COM_CHEQUE'
      'CODIGO_DO_GUIA=CODIGO_DO_GUIA'
      'DT_AUTORIZACAO_COMPRA=DT_AUTORIZACAO_COMPRA'
      'TIPO_PADRAO=TIPO_PADRAO'
      'NAO_GERAR_REMESSA_BOLETO=NAO_GERAR_REMESSA_BOLETO'
      'ATIVIDADE_COMERCIAL=ATIVIDADE_COMERCIAL')
    DataSet = RelVenda
    BCDToCurrency = False
    Left = 680
    Top = 275
  end
  object QuerGrafico: TFDQuery
    BeforeOpen = QuerGraficoBeforeOpen
    Filtered = True
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    AggregatesActive = True
    Connection = DMBanco.Banco
    Transaction = Transa
    FetchOptions.AssignedValues = [evMode, evRecsMax, evRecordCountMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDynamic
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvFmtDisplayDate, fvSortOptions]
    FormatOptions.FmtDisplayDate = 'DD/MM/YYYY'
    FormatOptions.SortOptions = [soNoSymbols]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select '
      '       P.CODIGO, P.RAZAOSOCIAL, P.TOTAL,'
      '       P.VENDA_TIPO,'
      '       P.STATUS, C.FANTASIA,'
      
        '       coalesce(PV.RAZAOSOCIAL, PR.RAZAOSOCIAL, PA.RAZAOSOCIAL) ' +
        'as VENDEDOR,'
      '       PV.RAZAOSOCIAL as FUNCIONARIO,'
      '       PR.RAZAOSOCIAL as REPRESENTANTE,'
      '       PA.RAZAOSOCIAL as AGENCIA,'
      '       C.UF, p.valor_desc, cd.descricao as CIDADE'
      'from VENDA P'
      'left join EQUIPAMENTO_VEICULO EV on (EV.CODIGO = P.PLACA)'
      'left join PESSOAS C on (P.PESSOA_RESPONSAVEL_CODIGO = C.CODIGO)'
      'left join PESSOAS_GRUPO PG on (C.CODPESSOAS_GRUPO = PG.CODIGO)'
      
        'left join PESSOAS PV on (P.PESSOA_FUNCIONARIO_CODIGO = PV.CODIGO' +
        ')'
      
        'left join PESSOAS PR on (P.PESSOA_REPRESENTANTE_CODIGO = PR.CODI' +
        'GO)'
      'left join PESSOAS PA on (P.PESSOA_AGENCIA_CODIGO = PA.CODIGO)'
      'left join VENDA_TIPO VT on (VT.DESCRICAO = P.VENDA_TIPO)'
      'left join CIDADES CD on (CD.CODIGO = C.CODCIDADE)'
      '')
    Left = 363
    Top = 225
    object QuerGraficoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object QuerGraficoRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 150
    end
    object QuerGraficoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QuerGraficoVENDA_TIPO: TStringField
      FieldName = 'VENDA_TIPO'
      Origin = 'VENDA_TIPO'
      Size = 60
    end
    object QuerGraficoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
    object QuerGraficoFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object QuerGraficoFUNCIONARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FUNCIONARIO'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object QuerGraficoREPRESENTANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REPRESENTANTE'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object QuerGraficoUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QuerGraficoVALOR_DESC: TFloatField
      FieldName = 'VALOR_DESC'
      Origin = 'VALOR_DESC'
    end
    object QuerGraficoVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object QuerGraficoAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object QuerGraficoCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object AggregateField1: TAggregateField
      FieldName = 'MinData'
      Active = True
      DisplayName = ''
    end
    object AggregateField2: TAggregateField
      FieldName = 'MaxData'
      Active = True
      DisplayName = ''
    end
  end
  object DSGrafico: TDataSource
    DataSet = QuerGrafico
    Left = 391
    Top = 225
  end
  object QuerGraficoProduto: TFDQuery
    Filtered = True
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    AggregatesActive = True
    Connection = DMBanco.Banco
    Transaction = Transa
    FetchOptions.AssignedValues = [evMode, evRecsMax, evRecordCountMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDynamic
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvFmtDisplayDate, fvSortOptions]
    FormatOptions.FmtDisplayDate = 'DD/MM/YYYY'
    FormatOptions.SortOptions = [soNoSymbols]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select '
      
        '       coalesce(PV.RAZAOSOCIAL, PR.RAZAOSOCIAL, PA.razaosocial) ' +
        'as pessoavenda,'
      
        '       VP.DESCRICAO, vp.valor, vp.quant, pg.descricao as GRUPOPR' +
        'ODUTO, nc.descricao as NCM, p.codigo '
      'from VENDA P'
      'left join EQUIPAMENTO_VEICULO EV on (EV.CODIGO = P.PLACA)'
      'left join PESSOAS C on (P.PESSOA_RESPONSAVEL_CODIGO = C.CODIGO)'
      'left join PESSOAS_GRUPO CG on (C.CODPESSOAS_GRUPO = CG.CODIGO)'
      
        'left join PESSOAS PV on (P.PESSOA_FUNCIONARIO_CODIGO = PV.CODIGO' +
        ')'
      
        'left join PESSOAS PR on (P.PESSOA_REPRESENTANTE_CODIGO = PR.CODI' +
        'GO)'
      'left join pessoas PA on (P.pessoa_agencia_codigo = PA.CODIGO)'
      'left join VENDA_TIPO VT on (VT.DESCRICAO = P.VENDA_TIPO)'
      'left join cidades cd on (cd.codigo = c.codcidade)'
      'Left join VENDA_PRODUTO VP on (VP.CODVENDA = P.CODIGO)'
      'Left join PRODUTO PT on (PT.codigo = vp.codproduto)'
      'left join produto_grupo pg on (pg.codigo = pt.codproduto_grupo)'
      'left join NF_NCM NC on (NC.codigo = vp.CODNF_NCM)')
    Left = 363
    Top = 253
    object QuerGraficoProdutoPESSOAVENDA: TStringField
      FieldName = 'PESSOAVENDA'
      Origin = 'PESSOAVENDA'
      Size = 150
    end
    object QuerGraficoProdutoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object QuerGraficoProdutoGRUPOPRODUTO: TStringField
      FieldName = 'GRUPOPRODUTO'
      Origin = 'GRUPOPRODUTO'
      Size = 40
    end
    object QuerGraficoProdutoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 1100
    end
    object QuerGraficoProdutoQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'QUANT'
    end
    object QuerGraficoProdutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object QuerGraficoProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
  end
  object DSGraficoProduto: TDataSource
    DataSet = QuerGraficoProduto
    Left = 391
    Top = 253
  end
  object ImgListActions: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 16581055
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000070000
          000B0000000C0000000C0000000C0000000C0000000C0000000C0000000D0000
          000D0000000D0000000D0000000D0000000D0000000C0000000882594DBEB47C
          6AFFB37C69FFB37B6AFFB37B69FFB37B68FFB37B68FFB37A69FFB37A68FFB37A
          68FFB37A68FFB27968FFB37967FFB27967FFB27967FF7F574ABFB67F6DFFFCF8
          F7FFFBF8F7FFFBF8F6FFFBF8F6FFFCF8F6FFFBF8F6FFFBF8F6FFFBF8F6FFFBF8
          F5FFFBF8F5FFFBF7F5FFFBF7F5FFFBF7F5FFFBF7F5FFB37B69FFB78170FFFCF8
          F7FFFBF6F4FFFBF6F4FFFAF6F4FFFBF6F4FFFBF6F4FFFAF6F3FFFAF6F4FFFAF6
          F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F3FFFBF7F5FFB57D6BFFBA8472FFD6B5
          A9FFC69B8CFFC69A8CFFC69A8BFFC6998BFFC5998AFFC6998AFFC5998AFFC599
          8AFFC5988AFFC5988AFFC5988AFFC5988AFFCFAA9DFFB7806EFFBB8776FFFCFA
          F8FFFBF7F4FFFBF7F5FFFBF7F5FFFBF7F5FFFBF7F4FFFBF7F4FFFAF6F4FFFBF7
          F4FFFBF6F4FFFAF6F4FFFBF6F4FFFAF6F4FFFBF8F6FFB88371FFBD8A79FFFCFA
          F8FFFBF7F5FFFBF7F5FFFBF7F5FFFBF7F5FFFBF7F5FFFBF7F5FFFBF6F4FFFBF6
          F4FFFBF7F4FFFBF7F5FFFBF7F4FFFBF6F4FFFCF8F6FFBA8574FFC08E7CFFDDBF
          B5FFCBA294FFCBA194FFCBA293FFCBA193FFCBA193FFCAA193FFCAA193FFCAA1
          92FFCAA092FFC9A092FFC99F92FFC99F91FFD6B4A9FFBC8977FFC29180FFFDFA
          F9FFFBF8F6FFFBF7F6FFFBF8F6FFFBF8F6FFFBF7F6FFFBF8F6FFFBF7F6FFFBF7
          F5FFFBF7F6FFFBF7F5FFFBF7F5FFFBF7F5FFFCF9F8FFBF8C7AFFC49483FFFDFA
          F9FFFCF8F7FFFCF8F7FFFCF8F6FFFBF8F6FFFBF8F6FFFCF8F6FFFBF7F6FFFBF7
          F6FFFBF8F6FFFBF7F6FFFBF7F5FFFBF7F5FFFCF9F8FFC18F7EFFC79786FFE3C9
          C0FFD1AA9CFFD1AA9CFFD1AA9CFFD0A99BFFD0AA9CFFD0A99BFFD0A99BFFCFA8
          9BFFCFA89AFFCFA89AFFCFA799FFCEA699FFDCBFB5FFC39281FFC99A8AFFFDFB
          FBFFFCF8F8FFFCF9F7FFFCF8F7FFFCF8F7FFFCF8F7FFFCF8F7FFFCF8F7FFFCF8
          F7FFFCF8F7FFFBF8F7FFFBF8F7FFFCF8F7FFFDFAF9FFC59685FFCB9D8DFFFDFC
          FBFFFDFCFBFFFDFCFAFFFDFBFBFFFDFBFAFFFDFBFAFFFDFBFAFFFDFAFAFFFDFA
          FAFFFDFAFAFFFDFAFAFFFDFAFAFFFDFAFAFFFDFAFAFFC79988FF97766ABECC9F
          8FFFCCA08FFFCC9F8FFFCC9E8EFFCC9E8EFFCB9E8EFFCB9E8EFFCB9E8DFFCB9D
          8DFFCA9D8DFFCA9C8CFFCB9D8CFFCA9C8CFFCA9C8BFF967367BF000000010000
          0002000000020000000200000002000000020000000200000002000000020000
          0003000000030000000300000003000000030000000300000002}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF0000000097A776FF97A776FF97A776FF97A776FF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF0000000097A776FF97A776FF97A776FF97A776FF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF0000000097A776FF97A776FF97A776FF97A776FF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF0000000097A776FF97A776FF97A776FF97A776FF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF0000000097A776FF97A776FF97A776FF97A776FF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF0000000097A776FF97A776FF97A776FF97A776FF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF0000000097A776FF97A776FF97A776FF97A776FF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF0000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
          00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF0000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
          00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF0000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
          00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF0000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
          00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
          EEFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF0000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF00000000B882
          4DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF0000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF00000000B882
          4DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF0000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF00000000B882
          4DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF0000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF00000000B882
          4DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF0000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF00000000B882
          4DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF0000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF00000000B882
          4DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF0000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF000000000000
          000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF0000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF000000000000
          000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF0000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF000000000000
          00000000000000000000000000000000000000000000000000000000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF000000000000
          00000000000000000000000000000000000000000000000000000000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF000000000000
          00000000000000000000000000000000000000000000000000000000000097A7
          76FF97A776FF97A776FF000000004463D8FF4463D8FF4463D8FF000000000000
          00000000000000000000000000000000000000000000000000000000000097A7
          76FF97A776FF97A776FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000097A7
          76FF97A776FF97A776FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000097A7
          76FF97A776FF97A776FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object MigraTiposDeVenda: TFDQuery
    BeforeOpen = MigraTiposDeVendaBeforeOpen
    AfterOpen = MigraTiposDeVendaAfterOpen
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select VT.CODIGO, VT.DESCRICAO, VT.MODELO'
      'from VENDA_TIPO VT'
      'where (VT.MODELO = :Modelo)'
      '      and (VT.ATIVO is distinct from '#39'N'#39')'
      'order by VT.DESCRICAO')
    Left = 544
    Top = 240
    ParamData = <
      item
        Name = 'MODELO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object MigraTiposDeVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MigraTiposDeVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object MigraTiposDeVendaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
  end
  object DSMigraTiposDeVenda: TDataSource
    AutoEdit = False
    DataSet = MigraTiposDeVenda
    Left = 624
    Top = 332
  end
  object FiltroVendaTipo: TFDQuery
    BeforeOpen = FiltroVendaTipoBeforeOpen
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      '--SQL completo no OnBeforeOpen'
      ''
      'select F.CODIGO, F.DESCRICAO, F.MODELO,'
      '       (select cast(count(1) as bigint) as QUANT'
      '        from VENDA P'
      
        '        left join EQUIPAMENTO_VEICULO EV on (EV.CODIGO = P.PLACA' +
        ')'
      
        '        left join PESSOAS C on (P.PESSOA_RESPONSAVEL_CODIGO = C.' +
        'CODIGO)'
      
        '        left join PESSOAS_GRUPO CG on (C.CODPESSOAS_GRUPO = CG.C' +
        'ODIGO)'
      
        '        left join PESSOAS PV on (P.PESSOA_FUNCIONARIO_CODIGO = P' +
        'V.CODIGO)'
      
        '        left join PESSOAS PR on (P.PESSOA_REPRESENTANTE_CODIGO =' +
        ' PR.CODIGO)'
      '        left join VENDA_TIPO VT on (VT.DESCRICAO = P.VENDA_TIPO)'
      '        where (P.VENDA_TIPO = F.DESCRICAO)'
      ''
      '       )'
      'from VENDA_TIPO F'
      ''
      'order by F.DESCRICAO  ')
    Left = 544
    Top = 268
    object FiltroVendaTipoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FiltroVendaTipoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object FiltroVendaTipoMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object FiltroVendaTipoQUANT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT'
      Origin = 'QUANT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSFiltroVendaTipo: TDataSource
    DataSet = FiltroVendaTipo
    Left = 572
    Top = 268
  end
  object FiltroVendaSituacao: TFDQuery
    BeforeOpen = FiltroVendaSituacaoBeforeOpen
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      '--SQL completo no OnBeforeOpen'
      ''
      'select 1 as SEQ, F.CODIGO, F.DESCRICAO,'
      '       (select cast(count(1) as bigint)'
      '        from VENDA P'
      
        '        left join EQUIPAMENTO_VEICULO EV on (EV.CODIGO = P.PLACA' +
        ')'
      
        '        left join PESSOAS C on (P.PESSOA_RESPONSAVEL_CODIGO = C.' +
        'CODIGO)'
      
        '        left join PESSOAS_GRUPO CG on (C.CODPESSOAS_GRUPO = CG.C' +
        'ODIGO)'
      
        '        left join PESSOAS PV on (P.PESSOA_FUNCIONARIO_CODIGO = P' +
        'V.CODIGO)'
      
        '        left join PESSOAS PR on (P.PESSOA_REPRESENTANTE_CODIGO =' +
        ' PR.CODIGO)'
      '        left join VENDA_TIPO VT on (VT.DESCRICAO = P.VENDA_TIPO)'
      '        where (P.SITUACAO = F.DESCRICAO)'
      ''
      '       ) as QUANT'
      'from VENDA_SITUACAO F'
      'order by 1, 2')
    Left = 544
    Top = 296
    object FiltroVendaSituacaoSEQ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SEQ'
      Origin = 'SEQ'
      ProviderFlags = []
      ReadOnly = True
    end
    object FiltroVendaSituacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FiltroVendaSituacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object FiltroVendaSituacaoQUANT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT'
      Origin = 'QUANT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSFiltroVendaSituacao: TDataSource
    DataSet = FiltroVendaSituacao
    Left = 572
    Top = 296
  end
  object MemThdTotal: TFDMemTable
    AfterOpen = MemThdTotalAfterOpen
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 544
    Top = 212
  end
  object DSMemThdTotal: TDataSource
    AutoEdit = False
    DataSet = MemThdTotal
    Left = 572
    Top = 212
  end
  object WRFormataCamposDataSets1: TWRFormataCamposDataSets
    OnCarregaDataSets = WRFormataCamposDataSets1CarregaDataSets
    Left = 624
    Top = 304
  end
  object RelVenda_Produto: TFDQuery
    OnCalcFields = Venda_ProdutoTCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSVenda
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select VP.*,PG.DESCRICAO AS PRODUTO_GRUPO,'
      'PR.SITUACAO,'
      
        '  iif(not(VPO.CODIGO is null), VP.TOTAL - VPO.TOTAL, 0) as DIFER' +
        'ENCA_TOTAL_VENDA_ORIGINAL,'
      
        '  iif(not(VPO.CODIGO is null), VP.VALOR - VPO.VALOR, 0) as DIFER' +
        'ENCA_VALOR_VENDA_ORIGINAL,'
      
        '  iif(not(VPO.CODIGO is null), VP.QUANT - VPO.QUANT, 0) as DIFER' +
        'ENCA_QUANT_VENDA_ORIGINAL'
      'from VENDA_PRODUTO VP'
      'left join PRODUTO P on (VP.CODPRODUTO = P.CODIGO)'
      
        'left join PRODUTO_GRUPO PG ON (PG.CODIGO = P.CODPRODUTO_GRUPO)an' +
        'd(PG.CODNF_NATUREZA_OPERACAO = 0)'
      'left join PRODUCAO PR on (VP.CODPRODUCAO = PR.CODIGO)'
      
        'left join VENDA_PRODUTO VPO on (VP.CODVENDA_ORIGINAL = VPO.CODVE' +
        'NDA) and (VP.CODVENDA_PRODUTO_ORIGINAL = VPO.CODIGO)'
      'where (VP.CODVENDA = :CODIGO) ')
    Left = 652
    Top = 303
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = '1-1'
      end>
  end
  object RelVenda_Financeiro: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSVenda
    MasterFields = 'CODIGO'
    DetailFields = 'CODVENDA'
    Connection = DMBanco.Banco
    Transaction = Transa
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select F.*, CO.DESCRICAO as CONTA'
      'from VENDA_FINANCEIRO F'
      'left join CONTAS CO on (F.CODCONTA = CO.CODIGO)'
      ''
      'where (F.CODVENDA = :CODIGO)'
      '      and (F.PESSOA_FORNECEDOR_CODIGO is null)')
    Left = 652
    Top = 331
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = '1-1'
      end>
  end
  object RelVenda_Produto_Centro_Trabalho: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSVenda_Produto1
    MasterFields = 'CODVENDA;CODIGO'
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select VP.CODIGO, VP.CODVENDA, VP.CODVENDA_PRODUTO, VP.CODCENTRO' +
        '_TRABALHO,'
      
        '       VP.TEMPO, VP.SEQUENCIA, VP.DESCRICAO, VP.CODVENDA_PRODUTO' +
        '_CT_PRE_REQ'
      
        '       ,CT.DESCRICAO as CENTRO_TRABALHO, CT2.DESCRICAO as PRE_RE' +
        'QUISITO'
      'from VENDA_PRODUTO_CENTRO_TRABALHO VP'
      
        'left join CENTRO_TRABALHO CT on (VP.CODCENTRO_TRABALHO = CT.CODI' +
        'GO)'
      
        'left join VENDA_PRODUTO_CENTRO_TRABALHO REQ on (VP.CODVENDA_PROD' +
        'UTO_CT_PRE_REQ = REQ.CODIGO)'
      
        'left join CENTRO_TRABALHO CT2 on (REQ.CODCENTRO_TRABALHO = CT2.C' +
        'ODIGO)'
      'where (VP.CODVENDA = :CODVENDA)'
      '      and (VP.CODVENDA_PRODUTO = :CODIGO)')
    Left = 652
    Top = 359
    ParamData = <
      item
        Name = 'CODVENDA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSVenda: TDataSource
    DataSet = RelVenda
    Left = 708
    Top = 275
  end
  object DSVenda_Produto1: TDataSource
    DataSet = RelVenda_Produto
    Left = 708
    Top = 303
  end
  object Fr3Venda_Produto: TfrxDBDataset
    UserName = 'Venda_Produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDA=CODVENDA'
      'PARENT=PARENT'
      'CODPRODUTO=CODPRODUTO'
      'DESCRICAO=DESCRICAO'
      'DESCRICAO_NFE=DESCRICAO_NFE'
      'UNIDADE=UNIDADE'
      'VALOR_COMPRA=VALOR_COMPRA'
      'CUSTO=CUSTO'
      'MARGEM=MARGEM'
      'VALOR=VALOR'
      'QUANT=QUANT'
      'TOTAL=TOTAL'
      'QTDADEPECA=QTDADEPECA'
      'LARG=LARG'
      'COMP=COMP'
      'ESPESSURA=ESPESSURA'
      'ACABAMENTO=ACABAMENTO'
      'APROVEITAMENTO=APROVEITAMENTO'
      'CODIGOEAN=CODIGOEAN'
      'COR=COR'
      'PRODUTO_ESTOQUE_LOCAL=PRODUTO_ESTOQUE_LOCAL'
      'FATURADO=FATURADO'
      'LOCAL=LOCAL'
      'MEDIDAS=MEDIDAS'
      'PATH=PATH'
      'PASSADAS=PASSADAS'
      'RATEIO=RATEIO'
      'SERIAL=SERIAL'
      'TAMANHO=TAMANHO'
      'TIPO_IMPRESSAO=TIPO_IMPRESSAO'
      'OBS_PRODUCAO=OBS_PRODUCAO'
      'OBSERVACAO_PRODUTO=OBSERVACAO_PRODUTO'
      'OBS_FATURAMENTO=OBS_FATURAMENTO'
      'PESSOA_FORNECEDOR_CODIGO=PESSOA_FORNECEDOR_CODIGO'
      'PESSOA_FORNECEDOR_TIPO=PESSOA_FORNECEDOR_TIPO'
      'PESSOA_FORNECEDOR_SEQUENCIA=PESSOA_FORNECEDOR_SEQUENCIA'
      'CALC_VALOR_ORIGINAL=CALC_VALOR_ORIGINAL'
      'CUSTO_FABR=CUSTO_FABR'
      'CALC_VPRAZO=CALC_VPRAZO'
      'CALC_VVENDA_EXTRA=CALC_VVENDA_EXTRA'
      'CALC_PMARKUP=CALC_PMARKUP'
      'VDESC=VDESC'
      'CODNF_CST=CODNF_CST'
      'CODNF_CFOP=CODNF_CFOP'
      'CODNF_NCM=CODNF_NCM'
      'CODNF_CEST=CODNF_CEST'
      'CODNF_ENTRADA=CODNF_ENTRADA'
      'CODNF_ENTRADA_PRODUTO=CODNF_ENTRADA_PRODUTO'
      'CODLOCAL=CODLOCAL'
      'CODFABRICA=CODFABRICA'
      'CODPRODUTO_LOTE=CODPRODUTO_LOTE'
      'CODACABAMENTO=CODACABAMENTO'
      'CODPRODUTO_GRUPO=CODPRODUTO_GRUPO'
      'CODTIPOFILME=CODTIPOFILME'
      'CODVENDA_FATURADO=CODVENDA_FATURADO'
      'CODVENDA_ORIGINAL=CODVENDA_ORIGINAL'
      'CODCOR=CODCOR'
      'CODVENDA_PRODUTO_ORIGINAL=CODVENDA_PRODUTO_ORIGINAL'
      'CODPRODUCAO=CODPRODUCAO'
      'CODPRODUTO_MARCA=CODPRODUTO_MARCA'
      'CODTIPO_IMPRESSAO=CODTIPO_IMPRESSAO'
      'CODVENDA_AGRUPADA=CODVENDA_AGRUPADA'
      'CODPRODUTO_ORIGEM=CODPRODUTO_ORIGEM'
      'VEICULO_PASSAGEIROS=VEICULO_PASSAGEIROS'
      'VEICULO_CILINDRADA=VEICULO_CILINDRADA'
      'VEICULO_COMBUSTIVEL=VEICULO_COMBUSTIVEL'
      'VEICULO_KM=VEICULO_KM'
      'VEICULO_PLACA=VEICULO_PLACA'
      'CALC_QPESO_LIQUIDO=CALC_QPESO_LIQUIDO'
      'VEICULO_CHASSI=VEICULO_CHASSI'
      'VEICULO_ANO_MODELO=VEICULO_ANO_MODELO'
      'VEICULO_RENAVAN=VEICULO_RENAVAN'
      'VEICULO_MOTOR=VEICULO_MOTOR'
      'VEICULO_HP=VEICULO_HP'
      'VEICULO_NUMERO_SERIE=VEICULO_NUMERO_SERIE'
      'VEICULO_ANO_FABRICACAO=VEICULO_ANO_FABRICACAO'
      'VEICULO_TIPO=VEICULO_TIPO'
      'VEICULO_ESPECIE=VEICULO_ESPECIE'
      'VEICULO_DIST=VEICULO_DIST'
      'VEICULO_CONDICAO_VEICULO=VEICULO_CONDICAO_VEICULO'
      'VEICULO_CMOD=VEICULO_CMOD'
      'VEICULO_COR_DENATRAN=VEICULO_COR_DENATRAN'
      'NF_ICMS_PAF=NF_ICMS_PAF'
      'NF_PICMSST=NF_PICMSST'
      'NF_PICMS=NF_PICMS'
      'NF_PREDBC=NF_PREDBC'
      'NF_PMVAST=NF_PMVAST'
      'NF_VBC=NF_VBC'
      'NF_PREDBCST=NF_PREDBCST'
      'NF_VBCST=NF_VBCST'
      'NF_VICMS=NF_VICMS'
      'NF_VICMSST=NF_VICMSST'
      'NF_VBCSTRET=NF_VBCSTRET'
      'NF_VICMSSTRET=NF_VICMSSTRET'
      'NF_VBCSTDEST=NF_VBCSTDEST'
      'NF_VICMSSTDEST=NF_VICMSSTDEST'
      'NF_PCREDSN=NF_PCREDSN'
      'NF_VCREDICMSSN=NF_VCREDICMSSN'
      'NF_IPI_VBC=NF_IPI_VBC'
      'NF_IPI_QUNID=NF_IPI_QUNID'
      'NF_IPI_VUNID=NF_IPI_VUNID'
      'NF_IPI_PIPI=NF_IPI_PIPI'
      'NF_IPI_VIPI=NF_IPI_VIPI'
      'NF_II_VBC=NF_II_VBC'
      'NF_II_VDESPADU=NF_II_VDESPADU'
      'NF_II_VII=NF_II_VII'
      'NF_II_VIOF=NF_II_VIOF'
      'NF_PIS_VBC=NF_PIS_VBC'
      'NF_PIS_PPIS=NF_PIS_PPIS'
      'NF_PIS_VPIS=NF_PIS_VPIS'
      'NF_PIS_QBCPROD=NF_PIS_QBCPROD'
      'NF_PIS_VALIQPROD=NF_PIS_VALIQPROD'
      'NF_PISST_VBC=NF_PISST_VBC'
      'NF_PISST_PPIS=NF_PISST_PPIS'
      'NF_PISST_VPIS=NF_PISST_VPIS'
      'NF_PISST_QBCPROD=NF_PISST_QBCPROD'
      'NF_PISST_VALIQPROD=NF_PISST_VALIQPROD'
      'NF_COFINS_VBC=NF_COFINS_VBC'
      'NF_COFINS_PCOFINS=NF_COFINS_PCOFINS'
      'NF_COFINS_VBCPROD=NF_COFINS_VBCPROD'
      'NF_COFINS_VALIQPROD=NF_COFINS_VALIQPROD'
      'NF_COFINS_VCOFINS=NF_COFINS_VCOFINS'
      'NF_COFINSST_VBC=NF_COFINSST_VBC'
      'NF_COFINSST_PCOFINS=NF_COFINSST_PCOFINS'
      'NF_COFINSST_QBCPROD=NF_COFINSST_QBCPROD'
      'NF_COFINSST_VALIQPROD=NF_COFINSST_VALIQPROD'
      'NF_COFINSST_VCOFINS=NF_COFINSST_VCOFINS'
      'NF_ISSQN_VBC=NF_ISSQN_VBC'
      'NF_ISSQN_VALIQ=NF_ISSQN_VALIQ'
      'NF_ISSQN_VISSQN=NF_ISSQN_VISSQN'
      'NF_ISSQN_CMUNFG=NF_ISSQN_CMUNFG'
      'NF_ISSQN_LISTSERV=NF_ISSQN_LISTSERV'
      'NF_ISSQN_PALIQ=NF_ISSQN_PALIQ'
      'NF_II_PII=NF_II_PII'
      'NF_II_PIOF=NF_II_PIOF'
      'NF_PESONOFRETE=NF_PESONOFRETE'
      'NF_DESPADUANEIRA=NF_DESPADUANEIRA'
      'NF_VALORADUANEIRA=NF_VALORADUANEIRA'
      'NF_II_PIS=NF_II_PIS'
      'NF_II_COFINS=NF_II_COFINS'
      'NF_NDI=NF_NDI'
      'NF_XLOCDESEMB=NF_XLOCDESEMB'
      'NF_DDI=NF_DDI'
      'NF_DDESEMB=NF_DDESEMB'
      'NF_CEXPORTADOR=NF_CEXPORTADOR'
      'NF_UFDESEMB=NF_UFDESEMB'
      'CALC_PLUCRO_DESEJADO=CALC_PLUCRO_DESEJADO'
      'NF_IPI_ST=NF_IPI_ST'
      'NF_PIS_ST=NF_PIS_ST'
      'NF_COFINS_ST=NF_COFINS_ST'
      'CALC_VATACADO=CALC_VATACADO'
      'NF_IPI_CST=NF_IPI_CST'
      'NF_PIS_CST=NF_PIS_CST'
      'NF_COFINS_CST=NF_COFINS_CST'
      'NF_ICMS_MODBC=NF_ICMS_MODBC'
      'NF_ICMS_MODBCST=NF_ICMS_MODBCST'
      'NF_IPI_CENQ=NF_IPI_CENQ'
      'NF_VBCUFDEST=NF_VBCUFDEST'
      'NF_PFCUFDEST=NF_PFCUFDEST'
      'NF_PICMSUFDEST=NF_PICMSUFDEST'
      'NF_PICMSINTER=NF_PICMSINTER'
      'NF_PICMSINTERPART=NF_PICMSINTERPART'
      'NF_VFCPUFDEST=NF_VFCPUFDEST'
      'NF_VICMSUFDEST=NF_VICMSUFDEST'
      'NF_VICMSUFREMET=NF_VICMSUFREMET'
      'NF_VFRETE=NF_VFRETE'
      'CALC_QPESO_BRUTO=CALC_QPESO_BRUTO'
      'NF_XPED=NF_XPED'
      'NF_NITEMPED=NF_NITEMPED'
      'NF_OBS_NOTAFISCAL=NF_OBS_NOTAFISCAL'
      'NF_ALIQ_NACIONAL=NF_ALIQ_NACIONAL'
      'NF_ALIQ_IMPORTACAO=NF_ALIQ_IMPORTACAO'
      'NF_ALIQ_ESTADUAL=NF_ALIQ_ESTADUAL'
      'NF_ALIQ_MUNICIPAL=NF_ALIQ_MUNICIPAL'
      'NF_FATORX=NF_FATORX'
      'NF_VPRODUTO_PAUTA=NF_VPRODUTO_PAUTA'
      'NF_SERVICO_ISS_RETIDO=NF_SERVICO_ISS_RETIDO'
      'NF_SERVICO_NATUREZA_OPERACAO=NF_SERVICO_NATUREZA_OPERACAO'
      'NF_SERVICO_REGIME_ESPECIAL_TRIB=NF_SERVICO_REGIME_ESPECIAL_TRIB'
      'NF_SERVICO_ALIQUOTA=NF_SERVICO_ALIQUOTA'
      'NF_ISSQN_TIPOTRIBUTACAO=NF_ISSQN_TIPOTRIBUTACAO'
      'NF_ISSQN_VISSRET=NF_ISSQN_VISSRET'
      'NF_ISSQN_INCENTIVADOR_CULTURAL=NF_ISSQN_INCENTIVADOR_CULTURAL'
      'NF_ISS_VBC=NF_ISS_VBC'
      'NF_ISS_VISS=NF_ISS_VISS'
      'NF_VBC_FRETE=NF_VBC_FRETE'
      'NF_VBC_IPI=NF_VBC_IPI'
      'NF_VBC_CONFINS=NF_VBC_CONFINS'
      'NF_VBC_II=NF_VBC_II'
      'NF_VBC_PIS=NF_VBC_PIS'
      'NF_VBCST_FRETE=NF_VBCST_FRETE'
      'NF_VBCST_IPI=NF_VBCST_IPI'
      'NF_VBCST_CONFINS=NF_VBCST_CONFINS'
      'NF_VBCST_II=NF_VBCST_II'
      'NF_VBCST_PIS=NF_VBCST_PIS'
      'NF_CALCULA_FATORX=NF_CALCULA_FATORX'
      'NF_CALCULA_ICMS=NF_CALCULA_ICMS'
      'NF_CALCULA_IPI=NF_CALCULA_IPI'
      'NF_CALCULA_PIS=NF_CALCULA_PIS'
      'NF_CALCULA_COFINS=NF_CALCULA_COFINS'
      'NF_CALCULA_ICMS_ST=NF_CALCULA_ICMS_ST'
      'NF_CALCULA_ISSQN=NF_CALCULA_ISSQN'
      'NF_VBC_DESCONTO=NF_VBC_DESCONTO'
      'NF_VBCST_DESCONTO=NF_VBCST_DESCONTO'
      'NF_SERVICO_INCENTIVADOR_CULTURA=NF_SERVICO_INCENTIVADOR_CULTURA'
      'NF_PODE_CALCULA_VALOR_ISS=NF_PODE_CALCULA_VALOR_ISS'
      'PODE_PESO_CALCULADO_COMPOSICAO=PODE_PESO_CALCULADO_COMPOSICAO'
      'PODE_RETORNAR_AO_ESTOQUE=PODE_RETORNAR_AO_ESTOQUE'
      'PODE_RECALCULAR_IMPOSTOS=PODE_RECALCULAR_IMPOSTOS'
      'PODE_FATURAR=PODE_FATURAR'
      'TEM_INSTALACAO=TEM_INSTALACAO'
      'ISSQN_RETIDO=ISSQN_RETIDO'
      'TEM_ARTE=TEM_ARTE'
      'METODO_CALCULO_PRECO=METODO_CALCULO_PRECO'
      'TEM_FRENTE_VERSO=TEM_FRENTE_VERSO'
      'CALC_PMARGEM_CONTRIBUICAO=CALC_PMARGEM_CONTRIBUICAO'
      'TEM_REVERSO=TEM_REVERSO'
      'TEM_MATERIAL_REVISADO=TEM_MATERIAL_REVISADO'
      'TEM_PRODUCAO_ACEITA=TEM_PRODUCAO_ACEITA'
      'TEM_PRODUCAO_FINALIZADA_NOENVIO=TEM_PRODUCAO_FINALIZADA_NOENVIO'
      'TEM_TABELA_PRECO_QTDADEPECA=TEM_TABELA_PRECO_QTDADEPECA'
      'TEM_TABELA_PRECO_FIXO=TEM_TABELA_PRECO_FIXO'
      'TEM_LOGO=TEM_LOGO'
      'TEM_COMPOSICAO=TEM_COMPOSICAO'
      'DT_VALOR_ORIGINAL=DT_VALOR_ORIGINAL'
      'PREDMVAST=PREDMVAST'
      'CALENDARIO_DT_PREVISAO_FIM=CALENDARIO_DT_PREVISAO_FIM'
      'CALENDARIO_DT_PREVISAO_INICIO=CALENDARIO_DT_PREVISAO_INICIO'
      'DESCONTO_PRODUTO=DESCONTO_PRODUTO'
      'CUSTO_EXTRA=CUSTO_EXTRA'
      'CALC_VCOMPRA_EXTRA=CALC_VCOMPRA_EXTRA'
      'CALC_PCOMPRA_EXTRA=CALC_PCOMPRA_EXTRA'
      'CUSTO_EXTRA_VENDA=CUSTO_EXTRA_VENDA'
      'CALC_PVENDA_EXTRA=CALC_PVENDA_EXTRA'
      'CALC_VVENDA_TOTAL=CALC_VVENDA_TOTAL'
      'CALC_VLUCRO=CALC_VLUCRO'
      'CALC_VVENDA_CUSTO=CALC_VVENDA_CUSTO'
      'CALC_VCOMPRA_TOTAL=CALC_VCOMPRA_TOTAL'
      'ACRESCIMO_PRODUTO=ACRESCIMO_PRODUTO'
      'ACRESCIMO_PRODUTO_PERC=ACRESCIMO_PRODUTO_PERC'
      'DESCONTO_PRODUTO_PERC=DESCONTO_PRODUTO_PERC'
      'CALC_VVENDA_CUSTO_MINIMO=CALC_VVENDA_CUSTO_MINIMO'
      'CALC_VPOR_PECA=CALC_VPOR_PECA'
      'CALC_PACRESC_PRAZO=CALC_PACRESC_PRAZO'
      'CALC_PDESC_ATACADO=CALC_PDESC_ATACADO'
      'CALC_VVENDA_CUSTO_TOTAL=CALC_VVENDA_CUSTO_TOTAL'
      'CALC_VENDA_MINIMO_VALOR=CALC_VENDA_MINIMO_VALOR'
      'CALC_VENDA_MINIMO_QUANT=CALC_VENDA_MINIMO_QUANT'
      'ESTOQUE_MIN=ESTOQUE_MIN'
      'ESTOQUE_MAX=ESTOQUE_MAX'
      'NF_VALIQ_ESTADUAL=NF_VALIQ_ESTADUAL'
      'NF_VALIQ_IMPORTACAO=NF_VALIQ_IMPORTACAO'
      'NF_VALIQ_MUNICIPAL=NF_VALIQ_MUNICIPAL'
      'NF_VALIQ_NACIONAL=NF_VALIQ_NACIONAL'
      'COMP_FORMULA=COMP_FORMULA'
      'LARG_FORMULA=LARG_FORMULA'
      'ESPESSURA_FORMULA=ESPESSURA_FORMULA'
      'QTDADEPECA_FORMULA=QTDADEPECA_FORMULA'
      'ESTOQUE_LOCAL_MOVIMENTO=ESTOQUE_LOCAL_MOVIMENTO'
      'PRODUTO_TIPO=PRODUTO_TIPO'
      'CALC_VUNITARIO_DESC=CALC_VUNITARIO_DESC'
      'CALC_VUNITARIO_OUTRO=CALC_VUNITARIO_OUTRO'
      'CALC_VUNITARIO_FRETE=CALC_VUNITARIO_FRETE'
      'CALC_VUNITARIO_LUCRO_DESEJADO=CALC_VUNITARIO_LUCRO_DESEJADO'
      'CODPRODUTO_TABELA=CODPRODUTO_TABELA'
      'CODPRODUCAO_ROTERIO=CODPRODUCAO_ROTERIO'
      'ORDEM=ORDEM'
      'TEM_TAREFA_PRODUCAO=TEM_TAREFA_PRODUCAO'
      'PARENT_ROOT=PARENT_ROOT'
      'TIPO_PRECO=TIPO_PRECO'
      'CODPRODUTO_CATEGORIA=CODPRODUTO_CATEGORIA'
      'CALC_QPESO_BRUTO_TOTAL=CALC_QPESO_BRUTO_TOTAL'
      'CALC_QPESO_LIQUIDO_TOTAL=CALC_QPESO_LIQUIDO_TOTAL'
      'CALC_PVENDA_OUTRO=CALC_PVENDA_OUTRO'
      'CALC_PVENDA_DESCONTO=CALC_PVENDA_DESCONTO'
      'CALC_PVENDA_IMPOSTO_IPI=CALC_PVENDA_IMPOSTO_IPI'
      'CALC_PVENDA_IMPOSTO_ICMS_ST=CALC_PVENDA_IMPOSTO_ICMS_ST'
      'CALC_PVENDA_CUSTO_FIXO=CALC_PVENDA_CUSTO_FIXO'
      'CALC_PVENDA_CUSTO_VARIAVEL=CALC_PVENDA_CUSTO_VARIAVEL'
      'CALC_PVENDA_CUSTO_FINANCEIRO=CALC_PVENDA_CUSTO_FINANCEIRO'
      'CALC_PVENDA_LUCRO_DESEJADO=CALC_PVENDA_LUCRO_DESEJADO'
      'CALC_PVENDA_COMISSAO_REP=CALC_PVENDA_COMISSAO_REP'
      'CALC_PVENDA_COMISSAO_FUN=CALC_PVENDA_COMISSAO_FUN'
      'CALC_PVENDA_COMISSAO_AGENCIA=CALC_PVENDA_COMISSAO_AGENCIA'
      'CALC_PVENDA_COMISSAO_PRODUCAO=CALC_PVENDA_COMISSAO_PRODUCAO'
      'CALC_PVENDA_FRETE=CALC_PVENDA_FRETE'
      'TEM_MARGEM_FIXA_CONTIBUICAO=TEM_MARGEM_FIXA_CONTIBUICAO'
      'TEM_PRODUCAO_ENVIADO=TEM_PRODUCAO_ENVIADO'
      'CUSTO_TOTAL=CUSTO_TOTAL'
      'TEMPO_ESTIMADO=TEMPO_ESTIMADO'
      'PODE_ALTERAR_ESTOQUE=PODE_ALTERAR_ESTOQUE'
      'FORMULA=FORMULA'
      'COMP_COMPOSICAO=COMP_COMPOSICAO'
      'LARG_COMPOSICAO=LARG_COMPOSICAO'
      'ESPESSURA_COMPOSICAO=ESPESSURA_COMPOSICAO'
      'QTDADEPECA_COMPOSICAO=QTDADEPECA_COMPOSICAO'
      'SEQUENCIA=SEQUENCIA'
      'INDEX=INDEX'
      'TEM_FORMULACORRETA=TEM_FORMULACORRETA'
      'ESPESSURA_AVANCO1=ESPESSURA_AVANCO1'
      'ESPESSURA_AVANCO2=ESPESSURA_AVANCO2'
      'LARG_AVANCO1=LARG_AVANCO1'
      'LARG_AVANCO2=LARG_AVANCO2'
      'COMP_AVANCO1=COMP_AVANCO1'
      'COMP_AVANCO2=COMP_AVANCO2'
      'QTDADEPECA_AVANCO1=QTDADEPECA_AVANCO1'
      'QTDADEPECA_AVANCO2=QTDADEPECA_AVANCO2'
      'NF_TEM_DIFERIMENTO=NF_TEM_DIFERIMENTO'
      'NF_VICMSOP=NF_VICMSOP'
      'NF_PDIF=NF_PDIF'
      'NF_VICMSDIF=NF_VICMSDIF'
      'NF_CBENEF=NF_CBENEF'
      'CALC_PVENDA_TOTAL=CALC_PVENDA_TOTAL'
      'CALC_VVENDA_SUGERIDO=CALC_VVENDA_SUGERIDO'
      'VALOR_VENDA_MINIMO=VALOR_VENDA_MINIMO'
      'ORIGEM_MERCADORIA=ORIGEM_MERCADORIA'
      'PROTOCOLO=PROTOCOLO'
      'TEM_CONTROLE_ESTOQUE=TEM_CONTROLE_ESTOQUE'
      'TEM_ESTOQUE_ABAIXO_MINIMO=TEM_ESTOQUE_ABAIXO_MINIMO'
      'CODCENTRO_TRABALHO=CODCENTRO_TRABALHO'
      'TOTAL_IMPOSTOS=TOTAL_IMPOSTOS'
      'CALC_PVENDA_PERDA_PRODUCAO=CALC_PVENDA_PERDA_PRODUCAO'
      'CALC_PVENDA_IMPOSTOS=CALC_PVENDA_IMPOSTOS'
      'TEM_COMPOSICAO_DRAGDROP=TEM_COMPOSICAO_DRAGDROP'
      'CALC_VALOR_TABELA_PRECO=CALC_VALOR_TABELA_PRECO'
      'TEM_TRIBUTACAO_INCORRETA=TEM_TRIBUTACAO_INCORRETA'
      'NF_VALOR_ISS_RETIDO=NF_VALOR_ISS_RETIDO'
      'FOLHAS=FOLHAS'
      'NF_INFADPROD=NF_INFADPROD'
      'PRODUTO_GRUPO=PRODUTO_GRUPO'
      'SITUACAO=SITUACAO'
      'DIFERENCA_TOTAL_VENDA_ORIGINAL=DIFERENCA_TOTAL_VENDA_ORIGINAL'
      'DIFERENCA_VALOR_VENDA_ORIGINAL=DIFERENCA_VALOR_VENDA_ORIGINAL'
      'DIFERENCA_QUANT_VENDA_ORIGINAL=DIFERENCA_QUANT_VENDA_ORIGINAL')
    DataSet = RelVenda_Produto
    BCDToCurrency = False
    Left = 680
    Top = 303
  end
  object Fr3Venda_Financeiro: TfrxDBDataset
    UserName = 'Venda_Financeiro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DT_EMISSAO=DT_EMISSAO'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'TELEFONE=TELEFONE'
      'NOTAFISCAL=NOTAFISCAL'
      'CODUSUARIO=CODUSUARIO'
      'MOTORISTA=MOTORISTA'
      'MOTORISTA_DOCUMENTO=MOTORISTA_DOCUMENTO'
      'MOTORISTA_ENDERECO=MOTORISTA_ENDERECO'
      'SOLICITACAO_SERVICO=SOLICITACAO_SERVICO'
      'DT_FATURAMENTO=DT_FATURAMENTO'
      'DT_ENTRADA=DT_ENTRADA'
      'PROJETO_DT_FIM=PROJETO_DT_FIM'
      'KILOMETRAGEM=KILOMETRAGEM'
      'PERC_ACRESC=PERC_ACRESC'
      'VALOR_ACRESC=VALOR_ACRESC'
      'PERC_DESC=PERC_DESC'
      'VALOR_DESC=VALOR_DESC'
      'TOTAL_PRODUTOS=TOTAL_PRODUTOS'
      'TOTAL_SERVICOS=TOTAL_SERVICOS'
      'SUB_TOTAL=SUB_TOTAL'
      'TOTAL=TOTAL'
      'VENDA_TIPO=VENDA_TIPO'
      'PLACA=PLACA'
      'CHASSI=CHASSI'
      'QUANTIDADE_PARCELAS=QUANTIDADE_PARCELAS'
      'QUANTIDADE=QUANTIDADE'
      'DIA_INTERVALO=DIA_INTERVALO'
      'CODCONDICAOPAGTO=CODCONDICAOPAGTO'
      'CONDICAOPAGTO=CONDICAOPAGTO'
      'INTERVALO_MENSAL=INTERVALO_MENSAL'
      'COMISSAO=COMISSAO'
      'COMISSAO_REPRESENTANTE=COMISSAO_REPRESENTANTE'
      'STATUS=STATUS'
      'ATUALIZADO=ATUALIZADO'
      'NF_DT_EMISSAO=NF_DT_EMISSAO'
      'NF_DT_SAIDAENTRADA=NF_DT_SAIDAENTRADA'
      'NF_SAIDA_ENTRADA=NF_SAIDA_ENTRADA'
      'NF_TRANSPORTADORA=NF_TRANSPORTADORA'
      'NF_FRETEPORCONTA=NF_FRETEPORCONTA'
      'NF_TRANPORTADORA_PLACA=NF_TRANPORTADORA_PLACA'
      'NF_UF=NF_UF'
      'NF_ESPECIE=NF_ESPECIE'
      'NF_MARCA=NF_MARCA'
      'NF_NUMERO=NF_NUMERO'
      'NF_PESO_BRUTO=NF_PESO_BRUTO'
      'NF_PESO_LIQUIDO=NF_PESO_LIQUIDO'
      'NF_STATUS=NF_STATUS'
      'NF_DADOS_ADICIONAIS=NF_DADOS_ADICIONAIS'
      'NF_VALOR_ISS_ALIQ=NF_VALOR_ISS_ALIQ'
      'NF_VALOR_ICMS_BC=NF_VALOR_ICMS_BC'
      'NF_VALOR_ISS_BC=NF_VALOR_ISS_BC'
      'NF_VALOR_FRETE=NF_VALOR_FRETE'
      'NF_VALOR_ISS=NF_VALOR_ISS'
      'NF_VALOR_ICMS=NF_VALOR_ICMS'
      'NF_VALOR_SEGURO=NF_VALOR_SEGURO'
      'NF_VALOR_ICMS_ST=NF_VALOR_ICMS_ST'
      'NF_VALOR_IPI=NF_VALOR_IPI'
      'NF_IE_SUBST=NF_IE_SUBST'
      'CODCARRO=CODCARRO'
      'ANO=ANO'
      'COR=COR'
      'VALOR=VALOR'
      'CODCARROINTEIRO=CODCARROINTEIRO'
      'NF_OBSERVACAO=NF_OBSERVACAO'
      'NF_PORCENTAGEM_DESCONTO=NF_PORCENTAGEM_DESCONTO'
      'NF_VALOR_ICMS_ST_BC=NF_VALOR_ICMS_ST_BC'
      'NF_VCREDSN=NF_VCREDSN'
      'NF_VADUANEIRA=NF_VADUANEIRA'
      'NF_VALOR_PIS=NF_VALOR_PIS'
      'NF_VALOR_COFINS=NF_VALOR_COFINS'
      'NF_VALOR_II=NF_VALOR_II'
      'NF_TOTAL_IMPOSTOS=NF_TOTAL_IMPOSTOS'
      'NF_NDI=NF_NDI'
      'NF_DDI=NF_DDI'
      'NF_XLOCDESEMB=NF_XLOCDESEMB'
      'NF_UFDESEMB=NF_UFDESEMB'
      'NF_DDESEMB=NF_DDESEMB'
      'NF_CEXPORTADOR=NF_CEXPORTADOR'
      'NF_TRANSPORTADORA_UF=NF_TRANSPORTADORA_UF'
      'EQUIPAMENTO_NUMERO_SERIE=EQUIPAMENTO_NUMERO_SERIE'
      'EQUIPAMENTO_NUMERO_NF=EQUIPAMENTO_NUMERO_NF'
      'EQUIPAMENTO_DT_COMPRA=EQUIPAMENTO_DT_COMPRA'
      'EQUIPAMENTO_DESCRICAO=EQUIPAMENTO_DESCRICAO'
      'CODCONTA=CODCONTA'
      'EQUIPAMENTO_DEFEITO=EQUIPAMENTO_DEFEITO'
      'DT_ALTERACAO=DT_ALTERACAO'
      'NFE_IMPRIMIR_QTDEPECA=NFE_IMPRIMIR_QTDEPECA'
      'BLOQUEIO=BLOQUEIO'
      'MOTORISTA_DOCUMENTO_NUMERO=MOTORISTA_DOCUMENTO_NUMERO'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'PESSOA_REPRESENTANTE_CODIGO=PESSOA_REPRESENTANTE_CODIGO'
      'PESSOA_REPRESENTANTE_TIPO=PESSOA_REPRESENTANTE_TIPO'
      'PESSOA_REPRESENTANTE_SEQUENCIA=PESSOA_REPRESENTANTE_SEQUENCIA'
      'PESSOA_MOTORISTA_CODIGO=PESSOA_MOTORISTA_CODIGO'
      'PESSOA_MOTORISTA_TIPO=PESSOA_MOTORISTA_TIPO'
      'PESSOA_MOTORISTA_SEQUENCIA=PESSOA_MOTORISTA_SEQUENCIA'
      'PESSOA_FUNCIONARIO_CODIGO=PESSOA_FUNCIONARIO_CODIGO'
      'PESSOA_FUNCIONARIO_TIPO=PESSOA_FUNCIONARIO_TIPO'
      'PESSOA_FUNCIONARIO_SEQUENCIA=PESSOA_FUNCIONARIO_SEQUENCIA'
      'PESSOA_TRANSPORTADORA_CODIGO=PESSOA_TRANSPORTADORA_CODIGO'
      'PESSOA_TRANSPORTADORA_TIPO=PESSOA_TRANSPORTADORA_TIPO'
      'PESSOA_TRANSPORTADORA_SEQUENCIA=PESSOA_TRANSPORTADORA_SEQUENCIA'
      'CODVENDA=CODVENDA'
      'CREDITO=CREDITO'
      'SEQUENCIA=SEQUENCIA'
      'NFSE_RPS=NFSE_RPS'
      'NFSE_PROTOCOLO=NFSE_PROTOCOLO'
      'NFSE_CODIGOVERIFICACAO=NFSE_CODIGOVERIFICACAO'
      'NF_RATEIO=NF_RATEIO'
      'TRANSFERENCIA_TIPO=TRANSFERENCIA_TIPO'
      'ESTOQUE_LOCAL_ORIGEM=ESTOQUE_LOCAL_ORIGEM'
      'ESTOQUE_LOCAL_DESTINO=ESTOQUE_LOCAL_DESTINO'
      'CODEMPRESA_DESTINO=CODEMPRESA_DESTINO'
      'CODEMPRESA_ORIGEM=CODEMPRESA_ORIGEM'
      'NF_II_DESPACE=NF_II_DESPACE'
      'CONTATO=CONTATO'
      'AUTENTICACAO=AUTENTICACAO'
      'CODUSUARIO_FATURAMENTO=CODUSUARIO_FATURAMENTO'
      'CODCLIENTE_SITE=CODCLIENTE_SITE'
      'PEDIDO_COMPRA=PEDIDO_COMPRA'
      'NF_FINALIDADE=NF_FINALIDADE'
      'NF_NREF=NF_NREF'
      'VALOR_ABATIMENTO=VALOR_ABATIMENTO'
      'PESSOA_AGENCIA_CODIGO=PESSOA_AGENCIA_CODIGO'
      'PESSOA_AGENCIA_SEQUENCIA=PESSOA_AGENCIA_SEQUENCIA'
      'PESSOA_AGENCIA_TIPO=PESSOA_AGENCIA_TIPO'
      'COMISSAO_AGENCIA=COMISSAO_AGENCIA'
      'COMISSAO_COMPARTILHADA=COMISSAO_COMPARTILHADA'
      'PERC_COMPARTILHADA=PERC_COMPARTILHADA'
      'PERC_COMP_FUNCIONARIO=PERC_COMP_FUNCIONARIO'
      'PERC_COMP_REPRESENTANTE=PERC_COMP_REPRESENTANTE'
      'SITUACAO=SITUACAO'
      'PEDIDO_REP=PEDIDO_REP'
      'CODCOLETA=CODCOLETA'
      'DT_COLETA=DT_COLETA'
      'CODCIDADE_ENTREGA=CODCIDADE_ENTREGA'
      'BAIRRO_ENTREGA=BAIRRO_ENTREGA'
      'ENDERECO_ENTREGA=ENDERECO_ENTREGA'
      'NUMERO_ENTREGA=NUMERO_ENTREGA'
      'COMPLEMENTO_ENTREGA=COMPLEMENTO_ENTREGA'
      'UF_ENTREGA=UF_ENTREGA'
      'CEP_ENTREGA=CEP_ENTREGA'
      'OBSERVACAO_SERVICO=OBSERVACAO_SERVICO'
      'OBSERVACAO=OBSERVACAO'
      'VFCPUFDEST=VFCPUFDEST'
      'VICMSUFDEST=VICMSUFDEST'
      'VICMSUFREMET=VICMSUFREMET'
      'CONSUMIDOR_FINAL=CONSUMIDOR_FINAL'
      'NFE_ICMS_SOB_FRETE=NFE_ICMS_SOB_FRETE'
      'DEDUZIR_ISS_RETIDO=DEDUZIR_ISS_RETIDO'
      'TIPO_EVENTO=TIPO_EVENTO'
      'CERIMONIAL=CERIMONIAL'
      'DATA_EVENTO=DATA_EVENTO'
      'COMISSAO_AGENCIA_CALCULA=COMISSAO_AGENCIA_CALCULA'
      'DT_COMPETENCIA=DT_COMPETENCIA'
      'SITUACAOFINANCEIRA=SITUACAOFINANCEIRA'
      'NFE_ICMS_SOB_OUTROS=NFE_ICMS_SOB_OUTROS'
      'IS_NOTAFISCAL=IS_NOTAFISCAL'
      'IS_FATURAMENTO=IS_FATURAMENTO'
      'IS_PEDIDO=IS_PEDIDO'
      'NF_NATOP=NF_NATOP'
      'NFE_CALCULA_DIFAL=NFE_CALCULA_DIFAL'
      'NF_IE_EMIT=NF_IE_EMIT'
      'NF_CRT_EMIT=NF_CRT_EMIT'
      'NF_CRT_DEST=NF_CRT_DEST'
      'NF_UTILIZAR_CODFABRICA_NA_IMPR=NF_UTILIZAR_CODFABRICA_NA_IMPR'
      'VTOTTRIB=VTOTTRIB'
      'TOTALALIQ_NACIONAL=TOTALALIQ_NACIONAL'
      'TOTALALIQ_IMPORTACAO=TOTALALIQ_IMPORTACAO'
      'TOTALALIQ_ESTADUAL=TOTALALIQ_ESTADUAL'
      'TOTALALIQ_MUNICIPAL=TOTALALIQ_MUNICIPAL'
      'NF_OBSERVACAO_PADRAO=NF_OBSERVACAO_PADRAO'
      'VENDA_ATENTICADA=VENDA_ATENTICADA'
      'VENDA_ATENTICAR=VENDA_ATENTICAR'
      'TITULO_VENDA=TITULO_VENDA'
      'NF_PCREDSN=NF_PCREDSN'
      'SERVICO_ISS_RETIDO=SERVICO_ISS_RETIDO'
      'SERVICO_NATUREZA_OPERACAO=SERVICO_NATUREZA_OPERACAO'
      'SERVICO_REGIME_ESPECIAL_TRIBUT=SERVICO_REGIME_ESPECIAL_TRIBUT'
      'SERVICO_INCENTIVADOR_CULTURAL=SERVICO_INCENTIVADOR_CULTURAL'
      'NF_OBSERVACAO_SERVICO=NF_OBSERVACAO_SERVICO'
      'NF_CNAE=NF_CNAE'
      'NF_VALOR_ISS_RETIDO=NF_VALOR_ISS_RETIDO'
      'NF_CODIGOTRIBUTACAOMUNICIPIO=NF_CODIGOTRIBUTACAOMUNICIPIO'
      'RATEAR_FRETE=RATEAR_FRETE'
      'RATEAR_ACRESCIMO=RATEAR_ACRESCIMO'
      'RATEAR_DESCONTO=RATEAR_DESCONTO'
      'NFSE_DHRECEBIMENTO=NFSE_DHRECEBIMENTO'
      'NFSE_SITUACAO=NFSE_SITUACAO'
      'SERVICO_CODNF_NCM=SERVICO_CODNF_NCM'
      'SERVICO_NOTA_PADRAO=SERVICO_NOTA_PADRAO'
      'CODIGO_1=CODIGO_1'
      'TIPO=TIPO'
      'CNPJCPF=CNPJCPF'
      'RAZAOSOCIAL_1=RAZAOSOCIAL_1'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'CODCIDADE=CODCIDADE'
      'UF=UF'
      'PROXIMIDADE=PROXIMIDADE'
      'FONE1=FONE1'
      'FONE2=FONE2'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'DATACADASTRO=DATACADASTRO'
      'ATIVO=ATIVO'
      'CODEMPRESA=CODEMPRESA'
      'INSCIDENT=INSCIDENT'
      'AGENCIA=AGENCIA'
      'BAIRROCOMERCIAL=BAIRROCOMERCIAL'
      'BAIRROCOMERCIALCONJUGE=BAIRROCOMERCIALCONJUGE'
      'BLOQUEADO=BLOQUEADO'
      'CELPROPRIETARIO1=CELPROPRIETARIO1'
      'CELPROPRIETARIO2=CELPROPRIETARIO2'
      'CEPCOMERCIAL=CEPCOMERCIAL'
      'CEPCOMERCIALCONJUGE=CEPCOMERCIALCONJUGE'
      'COBRANCA=COBRANCA'
      'CODAGENDA1=CODAGENDA1'
      'CODAGENDA2=CODAGENDA2'
      'CODBANCO=CODBANCO'
      'CODCIDADECOMERCIAL=CODCIDADECOMERCIAL'
      'CODCIDADECOMERCIALCONJUGE=CODCIDADECOMERCIALCONJUGE'
      'CODCIDADENASC=CODCIDADENASC'
      'CODCONDICAOPAGTO_1=CODCONDICAOPAGTO_1'
      'CODGRUPO=CODGRUPO'
      'COMISSAO_POR_VENDA=COMISSAO_POR_VENDA'
      'COMPLEMENTOCOMERCIAL=COMPLEMENTOCOMERCIAL'
      'COMPLEMENTOCOMERCIALCONJUGE=COMPLEMENTOCOMERCIALCONJUGE'
      'CONDICAOPAGTO_DIA_PROXIMO_MES=CONDICAOPAGTO_DIA_PROXIMO_MES'
      'CONTA=CONTA'
      'CONTATO_1=CONTATO_1'
      'CONTRATO=CONTRATO'
      'CORRESBAIRRO=CORRESBAIRRO'
      'CORRESCEP=CORRESCEP'
      'CORRESCODCIDADE=CORRESCODCIDADE'
      'CORRESCOMPLEMENTO=CORRESCOMPLEMENTO'
      'CORRESENDERECO=CORRESENDERECO'
      'CORRESUF=CORRESUF'
      'CRT=CRT'
      'DATA_ADMISSAO=DATA_ADMISSAO'
      'DATA_CONTRATO1=DATA_CONTRATO1'
      'DATA_CONTRATO2=DATA_CONTRATO2'
      'DATA_FGTS=DATA_FGTS'
      'DATANASCIMENTO=DATANASCIMENTO'
      'DEMISSAO_DT=DEMISSAO_DT'
      'DEMISSAO_MOTIVO=DEMISSAO_MOTIVO'
      'DEMISSAO_OBSERVACAO=DEMISSAO_OBSERVACAO'
      'DESCONTO_PRODUTO=DESCONTO_PRODUTO'
      'DIAS=DIAS'
      'EMPRESA_TRABALHO=EMPRESA_TRABALHO'
      'ENDERECOCOMERCIAL=ENDERECOCOMERCIAL'
      'ENDERECOCOMERCIALCONJUGE=ENDERECOCOMERCIALCONJUGE'
      'ESTADO_CIVIL=ESTADO_CIVIL'
      'FLCASAPROPRIA=FLCASAPROPRIA'
      'FONE_TRABALHO=FONE_TRABALHO'
      'GRAU_INSTRUCAO=GRAU_INSTRUCAO'
      'HABILITACAO_CATEGORIA=HABILITACAO_CATEGORIA'
      'HABILITACAO_CODCIDADE=HABILITACAO_CODCIDADE'
      'HABILITACAO_N=HABILITACAO_N'
      'HABILITACAO_VALIDADE=HABILITACAO_VALIDADE'
      'INSCIDENT_DATA=INSCIDENT_DATA'
      'INSCIDENT_ORGAO=INSCIDENT_ORGAO'
      'INSCIDENT_UF=INSCIDENT_UF'
      'LIMITE_DESCONTO=LIMITE_DESCONTO'
      'LIMITECREDITO=LIMITECREDITO'
      'LOJA01=LOJA01'
      'LOJA02=LOJA02'
      'LOJA03=LOJA03'
      'MAE=MAE'
      'PAI=PAI'
      'MOTIVO=MOTIVO'
      'NACIONALIDADE=NACIONALIDADE'
      'NASCIMENTO_CODCIDADE=NASCIMENTO_CODCIDADE'
      'NASCIMENTO_DT=NASCIMENTO_DT'
      'NASCIMENTO_UF=NASCIMENTO_UF'
      'NOMECONJUGE=NOMECONJUGE'
      'NOMEEMPRESACONJUGE=NOMEEMPRESACONJUGE'
      'NPROPRIETARIO1=NPROPRIETARIO1'
      'NPROPRIETARIO2=NPROPRIETARIO2'
      'NUMERO=NUMERO'
      'NUMERO_REGISTRO=NUMERO_REGISTRO'
      'OBSERVACAO_1=OBSERVACAO_1'
      'OBSERVACAOCREDIARIO=OBSERVACAOCREDIARIO'
      'PAGAMENTO=PAGAMENTO'
      'PENSAO=PENSAO'
      'PENSAO_AGENCIA=PENSAO_AGENCIA'
      'PENSAO_BENEFICIARIO=PENSAO_BENEFICIARIO'
      'PENSAO_CODBANCO=PENSAO_CODBANCO'
      'PENSAO_CONTA=PENSAO_CONTA'
      'PLACA_1=PLACA_1'
      'PROFISSIONAL_CARTEIRA=PROFISSIONAL_CARTEIRA'
      'PROFISSIONAL_DT_EMISSAO=PROFISSIONAL_DT_EMISSAO'
      'PROFISSIONAL_PIS=PROFISSIONAL_PIS'
      'PROFISSIONAL_SERIE=PROFISSIONAL_SERIE'
      'PROFISSIONAL_UF=PROFISSIONAL_UF'
      'QUANT_MAQUINAS=QUANT_MAQUINAS'
      'RENDAFAMILIAR=RENDAFAMILIAR'
      'RESERVISTA_CARTEIRA=RESERVISTA_CARTEIRA'
      'RESERVISTA_CATEGORIA=RESERVISTA_CATEGORIA'
      'RESERVISTA_SERIE=RESERVISTA_SERIE'
      'SALARIO=SALARIO'
      'SALARIOCONJUGE=SALARIOCONJUGE'
      'SINDICATO=SINDICATO'
      'SPC=SPC'
      'SPC_RESPONSAVEL=SPC_RESPONSAVEL'
      'TELEFONEEMPRESACONJUGE=TELEFONEEMPRESACONJUGE'
      'TELEFONELOJA01=TELEFONELOJA01'
      'TELEFONELOJA02=TELEFONELOJA02'
      'TELEFONELOJA03=TELEFONELOJA03'
      'TITULO_N=TITULO_N'
      'TITULO_SECAO=TITULO_SECAO'
      'TITULO_ZONA=TITULO_ZONA'
      'TRANSPORTADORA=TRANSPORTADORA'
      'DT_ALTERACAO_1=DT_ALTERACAO_1'
      'IS_CLI=IS_CLI'
      'SEQUENCIA_CLI=SEQUENCIA_CLI'
      'IS_FOR=IS_FOR'
      'SEQUENCIA_FOR=SEQUENCIA_FOR'
      'IS_FUN=IS_FUN'
      'SEQUENCIA_FUN=SEQUENCIA_FUN'
      'IS_REP=IS_REP'
      'SEQUENCIA_REP=SEQUENCIA_REP'
      'IS_ASS=IS_ASS'
      'SEQUENCIA_ASS=SEQUENCIA_ASS'
      'IS_FRE=IS_FRE'
      'SEQUENCIA_FRE=SEQUENCIA_FRE'
      'IS_MEN=IS_MEN'
      'SEQUENCIA_MEN=SEQUENCIA_MEN'
      'IS_ACI=IS_ACI'
      'SEQUENCIA_ACI=SEQUENCIA_ACI'
      'IS_GEN=IS_GEN'
      'SEQUENCIA_GEN=SEQUENCIA_GEN'
      'IS_AGE=IS_AGE'
      'SEQUENCIA_AGE=SEQUENCIA_AGE'
      'IS_PRO=IS_PRO'
      'SEQUENCIA_PRO=SEQUENCIA_PRO'
      'IS_ADV=IS_ADV'
      'SEQUENCIA_ADV=SEQUENCIA_ADV'
      'IS_JUD=IS_JUD'
      'SEQUENCIA_JUD=SEQUENCIA_JUD'
      'IS_FDP=IS_FDP'
      'SEQUENCIA_FDP=SEQUENCIA_FDP'
      'IS_CAR=IS_CAR'
      'SEQUENCIA_CAR=SEQUENCIA_CAR'
      'IS_EQU=IS_EQU'
      'SEQUENCIA_EQU=SEQUENCIA_EQU'
      'COBRAR_CUSTO_BOLETO=COBRAR_CUSTO_BOLETO'
      'PAGINA=PAGINA'
      'CARGO=CARGO'
      'COMISSAO_1=COMISSAO_1'
      'PESSOA_REPRESENTANTE_CODIGO_1=PESSOA_REPRESENTANTE_CODIGO_1'
      'PESSOA_REPRESENTANTE_TIPO_1=PESSOA_REPRESENTANTE_TIPO_1'
      
        'PESSOA_REPRESENTANTE_SEQUENCIA_1=PESSOA_REPRESENTANTE_SEQUENCIA_' +
        '1'
      'IS_PES=IS_PES'
      'SEQUENCIA_PES=SEQUENCIA_PES'
      'SEXO=SEXO'
      'REVISADO=REVISADO'
      'MENSALIDADE_DIA_VENCTO=MENSALIDADE_DIA_VENCTO'
      'MENSALIDADE_VALOR=MENSALIDADE_VALOR'
      'REVISADO_CONTRATO=REVISADO_CONTRATO'
      'COMPLEMENTO=COMPLEMENTO'
      'TABELA_PRECO=TABELA_PRECO'
      'SITUACAO_1=SITUACAO_1'
      'NAO_GERA_BOLETO_SINISTRO=NAO_GERA_BOLETO_SINISTRO'
      'ETIQUETA=ETIQUETA'
      'MOTORISTA_ATIVO=MOTORISTA_ATIVO'
      'PESSOA_ASSOCIADO_CODIGO=PESSOA_ASSOCIADO_CODIGO'
      'PESSOA_ASSOCIADO_TIPO=PESSOA_ASSOCIADO_TIPO'
      'PESSOA_ASSOCIADO_SEQUENCIA=PESSOA_ASSOCIADO_SEQUENCIA'
      'IMPENV=IMPENV'
      'AVALIACAO=AVALIACAO'
      'CREDITO_1=CREDITO_1'
      'PESSOA_MATRIZ_CODIGO=PESSOA_MATRIZ_CODIGO'
      'PESSOA_MATRIZ_TIPO=PESSOA_MATRIZ_TIPO'
      'PESSOA_MATRIZ_SEQUENCIA=PESSOA_MATRIZ_SEQUENCIA'
      'EQUIPAMENTOS_NA_MATRIZ=EQUIPAMENTOS_NA_MATRIZ'
      'ISS_RETIDO=ISS_RETIDO'
      'IS_PDV=IS_PDV'
      'SEQUENCIA_PDV=SEQUENCIA_PDV'
      'EMAIL_NFE=EMAIL_NFE'
      'REFERENCIA=REFERENCIA'
      'CODCLIENTE_SITE_1=CODCLIENTE_SITE_1'
      'CORRESEMAIL=CORRESEMAIL'
      'SITE=SITE'
      'CODIGO_CMC=CODIGO_CMC'
      'WEB_PLANO_HOSPEDAGEM=WEB_PLANO_HOSPEDAGEM'
      'WEB_TIPO_DESENVOLVIMENTO=WEB_TIPO_DESENVOLVIMENTO'
      'WEB_DT_CONTRATACAO=WEB_DT_CONTRATACAO'
      'WEB_DOMINIO=WEB_DOMINIO'
      'WEB_SERVIDOR=WEB_SERVIDOR'
      'SUFRAMA=SUFRAMA'
      'PESSOA_TRANSPORTADORA_CODIGO_1=PESSOA_TRANSPORTADORA_CODIGO_1'
      'PESSOA_TRANSPORTADORA_TIPO_1=PESSOA_TRANSPORTADORA_TIPO_1'
      
        'PESSOA_TRANSPORTADORA_SEQUENCIA_1=PESSOA_TRANSPORTADORA_SEQUENCI' +
        'A_1'
      'TIPO_CONTRIBUINTE=TIPO_CONTRIBUINTE'
      'GERA_BOLETO_UNICO=GERA_BOLETO_UNICO'
      'VALOR_FRETE_PADRAO=VALOR_FRETE_PADRAO'
      'INSALUB_PERICUL=INSALUB_PERICUL'
      'CONSUMIDOR_FINAL_1=CONSUMIDOR_FINAL_1'
      'INSCEST_PESSOA_FISICA=INSCEST_PESSOA_FISICA'
      'INSC_MUNICIPAL=INSC_MUNICIPAL'
      'MENSAGEM_PARA_VENDA=MENSAGEM_PARA_VENDA'
      'FUNCIONARIO_HORAS_MENSSAL=FUNCIONARIO_HORAS_MENSSAL'
      'FUNCIONARIO_HORAS_DIARIAS=FUNCIONARIO_HORAS_DIARIAS'
      'PODE_COMPRAR_COM_CHEQUE=PODE_COMPRAR_COM_CHEQUE'
      'CODIGO_DO_GUIA=CODIGO_DO_GUIA'
      'DT_AUTORIZACAO_COMPRA=DT_AUTORIZACAO_COMPRA'
      'TIPO_PADRAO=TIPO_PADRAO'
      'NAO_GERAR_REMESSA_BOLETO=NAO_GERAR_REMESSA_BOLETO'
      'ATIVIDADE_COMERCIAL=ATIVIDADE_COMERCIAL')
    DataSet = RelVenda_Financeiro
    BCDToCurrency = False
    Left = 680
    Top = 331
  end
  object Fr3Venda_Produto_Centro_Trabalho: TfrxDBDataset
    UserName = 'Venda_Produto_Centro_Trabalho'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDA=CODVENDA'
      'CODVENDA_PRODUTO=CODVENDA_PRODUTO'
      'CODCENTRO_TRABALHO=CODCENTRO_TRABALHO'
      'TEMPO=TEMPO'
      'SEQUENCIA=SEQUENCIA'
      'DESCRICAO=DESCRICAO'
      'CODVENDA_PRODUTO_CT_PRE_REQ=CODVENDA_PRODUTO_CT_PRE_REQ'
      'CENTRO_TRABALHO=CENTRO_TRABALHO'
      'PRE_REQUISITO=PRE_REQUISITO')
    DataSet = RelVenda_Produto_Centro_Trabalho
    BCDToCurrency = False
    Left = 680
    Top = 358
  end
  object dxRibbonPopupAgrupar: TdxRibbonPopupMenu
    BarManager = FrmPrincipal.dxBarManager1
    ItemLinks = <>
    UseOwnFont = False
    Left = 363
    Top = 309
    PixelsPerInch = 96
  end
  object MemTreeList: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 99
    Top = 237
    object MemTreeListCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object MemTreeListDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object MemTreeListMODULO: TStringField
      FieldName = 'MODULO'
      Size = 255
    end
    object MemTreeListPARENT: TIntegerField
      FieldName = 'PARENT'
    end
    object MemTreeListIMAGEINDEX: TIntegerField
      FieldName = 'IMAGEINDEX'
    end
    object MemTreeListQUANT: TIntegerField
      FieldName = 'QUANT'
    end
    object MemTreeListTABELA: TStringField
      FieldName = 'TABELA'
      Size = 150
    end
    object MemTreeListCHAVE_PK1: TIntegerField
      DisplayWidth = 50
      FieldName = 'CHAVE_PK1'
    end
    object MemTreeListCHAE_PK2: TStringField
      FieldName = 'CHAVE_PK2'
      Size = 50
    end
    object MemTreeListCHAVE_PK3: TStringField
      DisplayWidth = 50
      FieldName = 'CHAVE_PK3'
      Size = 50
    end
  end
  object DSMemTreeList: TDataSource
    DataSet = MemTreeList
    Left = 127
    Top = 237
  end
  object cxStatusKeeperTreelist: TcxStatusKeeper
    Storages = <
      item
        Component = TreeListUsuarios
        ComponentClassName = 'TcxDBTreeList'
        ComponentStorage.LoadExpanding = False
        ComponentStorage.LoadSelection = False
        ComponentStorage.LoadFocus = False
        ComponentStorage.LoadFocusedItem = False
        ComponentStorage.LoadTopNode = False
      end>
    Left = 112
    Top = 168
  end
  object cxImageListTreeList: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 335
    Top = 185
    Bitmap = {
      494C010116001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000202144F1717B0EA1717B2EC02021653000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000001616AAE61B1BD1FF1B1BD1FF1717B2EC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000001616A9E51B1BD1FF1B1BD1FF1717B0EA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000202124C1616A9E51616AAE60202144F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000030000000400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000000000012128CD1131392D500000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000000000000000000000001191B1BD1FF1B1BD1FF0000021E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000001010D421B1BD1FF1B1BD1FF02021047000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000505256C1B1BD1FF1B1BD1FF05052871000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000000000000000000090947951B1BD1FF1B1BD1FF0A0A4C9A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000F0F75BF1B1BD1FF1B1BD1FF10107BC4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000001616ADE81B1BD1FF1B1BD1FF1818B4ED000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000001616A9E51B1BD1FF1B1BD1FF1717B0EA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000202124C1616A9E51616AAE60202144F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000008000000080000
      0004000000020000000800000008000000040000000300000008000000080000
      0002000000040000000800000008000000000000000000000008000000080000
      0004000000020000000800000008000000040000000300000008000000080000
      0002000000040000000800000008000000000000000000000008000000080000
      0004000000020000000800000008000000040000000300000008000000080000
      0002000000040000000800000008000000000000000000000008000000080000
      0004000000020000000800000008000000040000000300000008000000080000
      00020000000400000008000000080000000000000000EBD17CFFEBD17CFF413A
      22870807043090804CC85A502F9E4A41278F1B180E5876693EB58C7C4AC50B0A
      05383B341F80615733A4A39156D50000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E5876693EB58C7C4AC50B0A
      05383B341F80615733A4A39156D50000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80615733A4A39156D50000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF0000000800000000EBD17CFFEBD17CFF413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF0000000800000000EBD17CFFEBD17CFF413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF0000000800000000EBD17CFFEBD17CFF413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF0000000800000000EBD17CFFEBD17CFF413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000002010118020101180000
      000D08070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000002010118020101180000
      000D08070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000002010118020101180000
      000D08070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B97000000080000000002010118020101180000
      000D08070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000080704307F7143BC423A23884A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000008070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000008070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000008070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000060303022003030220010100121B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000060303022003030220010100121B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000060303022003030220010100121B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000060303022003030220010100121B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E587D6F42BA92824DC90B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E587D6F42BA92824DC90B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F806A5E38ABA89659D8000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F806A5E38ABA89659D8000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F806A5E38ABA89659D8000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000302011D36301C7B7B6D41B9A29056D49B8A52CF675C36A91C190F590000
      0004000000000000000000000000000000000000000000000008000000080000
      0004000000020000000800000008000000040000000300000008000000080000
      0002000000040000000800000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000043F38
      2185DFC776F9EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF50472A952319
      277061466DB901010116000000000000000000000000A89659D85D5331A1413A
      22870807043090804CC85A502F9E4A41278F1B180E5876693EB58C7C4AC50B0A
      05383B341F80615733A4A39156D5000000080000000000000000000000000000
      000000000000000000000000000B463D248B473E258C0000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00051111114C0000000000000000000000000000000000000000000000001110
      104A00000005000000000000000000000000000000000000000675683DB4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFE3CA78FB05040327926A
      A4E3B987D0FF856196D90100011500000000000000005B51309F02010118413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      00000000000000000000302B1974EBD17CFFEBD17CFF332D1A77000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008C9C2C2FE464444970000000B00000000000000000000000A45434396C9C2
      C2FE00000008000000000000000000000000000000004B432891EBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF605532A31B131E62B987
      D0FFB987D0FFB987D0FF5F456BB700000000000000005B51309F02010118413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000001E1B105DEBD17CFFEBD17CFF201C115F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FF928D8DD90808083508080834908C8CD7CBC4C4FFCBC4
      C4FF000000080000000000000000000000000706032DE7CD7AFDEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFE9CF7BFE0706042E856095D8B987
      D0FFB987D0FFB987D0FFB987D0FF0E0A1047000000005B51309F02010118413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000000000000014120A4B14120A4C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFC3BCBCFAC3BCBCFACBC4C4FFCBC4C4FFCBC4
      C4FF000000080000000000000000000000004F462A94EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF71643CB1140E1654B987D0FFB987
      D0FFB987D0FFB987D0FFB987D0FF513B5BA9000000009F8D54D24E442993413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      00000000000000000000000000042A25166C2B26166D00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000A89659D8EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0B0A0639765685CCB987D0FFB987
      D0FFB987D0FFB987D0FFB987D0FF966DA8E60000000002010118020101180000
      000D08070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000002824156BEBD17CFFEBD17CFF2B26166D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000DEC576F8EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF847545BF0503052B63486FBB563E61AF4B36
      55A33F2E489635273C8A2D20327E241A28710000000000000000000000000000
      0000080704307F7143BC423A23884A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000002824156AEBD17CFFEBD17CFF2A25166C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000DDC575F8EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C36208215130B4E2824156A322C1A763C35
      20824940268E564B2D9A635834A6302B19740000000000000000000000000000
      0000000000060303022003030220010100121B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      00000000000000000000000000032824156A2824156B00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000A79458D7EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF443C248A0000000000000000000000000000
      0000000000000000000000000000000000001B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000000000000015130B4E16140C4F00000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF000000080000000000000000000000004F452994EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF121009470000000000000000000000000000
      0000000000000000000000000000000000001B180E587D6F42BA92824DC90B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000001F1C105EEBD17CFFEBD17CFF211D1161000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF000000080000000000000000000000000606032CE6CC7AFCEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFA89659D8000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      00000000000000000000302B1974EBD17CFFEBD17CFF322C1A76000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000000000004A41278FEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFE7CD7AFD100E0844000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000000000000A423B2388433C23890000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005585555A8585555A8585555A8585555A8585555A8585555A8585555A85855
      55A800000005000000000000000000000000000000000000000574663DB3EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFE9CF7BFE2A25166D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000043D36
      2083DEC576F8EBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFBDA8
      64E515130B4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F806A5E38ABA89659D8000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202011C342E1B79796B40B72824156A665A35A8675B36A9211D11600000
      0009000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF0000000500000005EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0000000000000000000000000000
      0000000000020000000000000000000000000000000000000000000000000000
      0000000000000000000200000000000000000000000000000000000000000000
      0000000000020000000000000000000000000000000000000000000000000000
      000000000000000000020000000000000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF0000000500000005EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEDD589FFEFD9
      95FFEED892FFEDD68CFFEBD27EFFEFDB98FFEED78FFFEFD995FFEBD17CFFEED8
      91FFEED78FFFEFDB98FFECD383FFEBD17CFF0000000000000000000000003831
      1D7DE3C978FB2C27176F00000000000000000000000000000000000000000000
      00003D372083E2C978FA27231569000000000000000000000000000000003831
      1D7DE3C978FB2C27176F00000000000000000000000000000000000000000000
      00003D372083E2C978FA2723156900000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF0000000500000005EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF2E3B0FFFBF6
      E6FFF9F1D8FFF5E8BEFFEDD588FFFDFBF3FFF7EDCCFFFBF6E6FFEBD17CFFF9F0
      D4FFF7EDCCFFFDFBF3FFEFDB99FFEBD17CFF0000000000000000000000007D6F
      42BAEBD17CFF695E38AB00000000000000000000000000000000000000000000
      0000887947C2EBD17CFF635834A6000000000000000000000000000000007D6F
      42BAEBD17CFF695E38AB00000000000000000000000000000000000000000000
      0000887947C2EBD17CFF635834A600000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFE4CA78FB0000000300000003E3C978FBEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF1E1AAFFF9F2
      DBFFF7EDCEFFF4E5B6FFECD487FFFBF6E6FFF5EAC3FFF9F2DBFFEBD17CFFF7EC
      CBFFF5EAC3FFFBF6E6FFEFDA96FFEBD17CFF0000000000000000000000002723
      1469CAB46BED4C432891332D1A77332D1B78332D1B78332D1B78332D1B78332D
      1B78594F2F9DCEB76DEF1F1C105E000000000000000000000000000000002723
      1469CAB46BED4C432891332D1A77332D1B78332D1B78332D1B78332D1B78332D
      1B78594F2F9DCEB76DEF1F1C105E00000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFF3B341F80000000000000000039321E7EEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEDD78FFFF1DE
      A2FFF0DC9DFFEED994FFECD281FFF1E0A7FFEFDB99FFF1DEA2FFEBD17CFFF0DC
      9CFFEFDB99FFF1E0A7FFECD487FFEBD17CFF000000000000000000000000685D
      37AADCC474F7887947C2887947C2867747C1847546BF847546BF817344BD8173
      43BD7F7143BC7C6F42BA2924166B00000000000000000000000000000000685D
      37AADCC474F7887947C2887947C2867747C1847546BF847546BF817344BD8173
      43BD7F7143BC7C6F42BA2924166B00000000EBD17CFFEBD17CFFEBD17CFFE9CF
      7BFE857746C0110F094600000000000000000000000000000000110F09458576
      46C0E9CF7BFEEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0000000000000000000000001311
      0A49E1C977FA0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001311
      0A49E1C977FA0000000500000000000000000000000000000000000000000000
      000000000000000000000000000000000000463D248B211E126115130B4E0202
      0119000000000000000000000000000000000000000000000000000000000000
      00000202011916140C4F201C115F433B23890202011C0202011C1C190F59EBD1
      7CFFCEB76DEF594F2F9DEBD17CFF6C6039AD867747C1EBD17CFFEBD17CFFF6E9
      C2FFF4E6BBFFF9F2DAFFEED993FFEBD17CFF0000000000000000000000002621
      1467E3CA78FB2F2A19733F3821854941278F0605032A18150C52090805340000
      0006000000010000000000000000000000000000000000000000000000002622
      1467E3CA78FB93824ECA6A5F38AC4940268E2D28187018150C52090805340101
      001600000001000000000000000000000000EBD17CFF9E8C53D10302011D0000
      000000000000000000000E0D07400A0905360000000000000000000000000000
      0000000000000201011992824CC9EBD17CFF0000000000000000100F0945EBD1
      7CFFCAB46BED4C432891EBD17CFF605532A37C6F42BAEBD17CFFEBD17CFFF6E9
      C2FFF4E6BBFFF9F2DAFFEED993FFEBD17CFF000000000000000000000000433B
      2389EBD17CFF473E258C8F7F4BC7EBD17CFF1C190F59E6CC7AFCEBD17CFF1916
      0D54D9C172F592824DC912100947423A23880000000000000000000000005C52
      30A0EBD17CFFEBD17CFFEBD17CFFEBD17CFFAD9A5BDB3D362183EBD17CFFEBD1
      7CFFDBC274F6AA9759D97E7042BB423A2388EBD17CFFEBD17CFF93824ECA0000
      0002000000015C5230A0B3A05EDF7C6F42BA7C6F42BA7C6F42BA7C6F42BA0000
      000D000000028F7F4BC7EBD17CFFEBD17CFF0000000000000000100F0945EBD1
      7CFFCAB46BED4C432891EBD17CFF605532A37C6F42BAEBD17CFFEBD17CFFF7EC
      CBFFF5E9C3FFFBF6E6FFEFDA96FFEBD17CFF0000000000000000000000002319
      27701C18125C1C190F592D2918711D19115C05040227E2C978FAEBD17CFF1916
      0D54EBD17CFFCAB46BED25211366EBD17CFF000000000000000000000000AA96
      59D9EBD17CFFEBD17CFFEBD17CFFCAB46BED221B1D69594064B1564B2E9AEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF1614
      0C4F000000071F1C105E1F1C105E1F1C105E1F1C105E1F1C105E1E1A105C0000
      000215130B4EEBD17CFFEBD17CFFEBD17CFF0000000000000000100F0945EBD1
      7CFFCAB46BED4C432891EBD17CFF605532A34B4228918F7F4BC78F7F4BC78F7F
      4BC78F7F4BC78F7F4BC78F7F4BC78F7F4BC70000000000000000000000057C5A
      8BD1AC7DC2F6483552A0694C76C0B383C9FB523C5EAB17131154887947C21916
      0D54EBD17CFFCAB46BED25211366EBD17CFF000000000000000001010013E9CF
      7BFEEBD17CFFEBD17CFFDFC776F9241E1A69A275B6EFB987D0FF42314A99796B
      40B7EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF584F
      2F9D000000061C190F591C190F591C190F592A25166C827445BE100E08430000
      00004E452993EBD17CFFEBD17CFFEBD17CFF0000000000000000000000082E29
      18720F0D08424C432891EBD17CFF605532A30000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0D07403B34
      1F811B151B615A4165B22D21337F17111658553E5FADAD7FC2F733253A870605
      042CB39F5EDFCAB46BED25211366EBD17CFF000000000000000014120A4BEBD1
      7CFFEBD17CFFE9CF7CFE2E281D748C669DDEB987D0FFB987D0FFB987D0FF2E23
      317F9E8C53D1EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF9887
      50CD000000000000000000000000000000000403022200000000000000000000
      0000796B40B7EBD17CFFEBD17CFFEBD17CFF0000000000000000000000004C43
      2892B19E5EDE675C36A9625734A519160D540000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D372083EBD1
      7CFFD2BB6FF1625834A5AF9C5CDCE6CC7AFC5A502F9E16111456755483CB976E
      AAE72018226A2B27176F04040225DBC374F700000000000000003E372184EBD1
      7CFFEBD17CFF3B351F812E2234807E5C8ED3B987D0FFB987D0FFAB7DC0F55D43
      69B50D0A0A41BDA964E5EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF9D8C
      53D1000000000000000000000000000000000000000000000000000000000000
      00007C6F42BAEBD17CFFEBD17CFFEBD17CFF0000000000000000000000000908
      0535DBC273F6EBD17CFFEBD17CFF90804CC850472A950302011D000000090000
      00000000000000000000000000000000000000000000000000007F7143BCEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFD7BF71F438311E7D2118
      236B9A6FADE9785786CD3929408E39321F7E0000000000000000807143BCEBD1
      7CFFE6CC7AFC897948C3887947C229202A77B987D0FFB987D0FF886399DB342E
      1B78887947C2B4A05EDFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF473E
      258C000000000000000000000000000000000000000000000000000000000000
      0000312B1A75EBD17CFFEBD17CFFEBD17CFF0000000000000000000000000000
      00000A090537EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFCEB76DEF9282
      4CC99D8C53D1080804320000000000000000030302200706042FD3BC70F29685
      4FCC7C6F42BA7C6F42BA7C6F42BA7C6F42BA7C6F42BA7C6F42BA7C6F42BA534A
      2B9805040328553E61AEB987D0FF241A2770030302200706042FD3BC70F29685
      4FCC7C6F42BA7C6F42BA7C6F42BA1813185B62476FBA62476FBA483552A0302A
      19737C6F42BA7C6F42BA7C6F42BA5D5230A0EBD17CFFEBD17CFF7F7143BC0000
      000C000000000000000000000000000000000000000000000000000000000000
      0000000000066A5F38ACEBD17CFFEBD17CFF0000000000000000000000000000
      0000000000001D1A0F5AAA9759D9EBD17CFFEBD17CFFE0C776F9E5CC7AFCEBD1
      7CFFEBD17CFF17140C500000000000000000BFA965E6EBD17CFFE1C977FA0202
      011D000000000000000000000000000000000000000000000000000000000000
      0000000000000201021B0604062F04020426BFA965E6EBD17CFFE1C977FA0202
      011D000000000000000000000000140E1654856196D9856196D962476FBA0000
      000000000000000000000000000000000000252113660D0C073E000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A090536252113660000000000000000000000000000
      000000000000000000000E0D0740B3A05EDFD9C172F53F3821851D1A0F5B5148
      2A9615130B4E0000000000000000000000000000000200000005000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000200000005000000030000
      0000000000000000000000000000000000020000000500000005000000040000
      0000000000000000000000000000000000000404022592814CC9E9CF7BFEEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFD1BB6FF10B1006450074
      00AC00EF00F700DA00EC00460086000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938B73C6EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF352F1C7A009E00C900FF
      00FF00FF00FF00FF00FF00FF00FF004600860000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E8C7FCEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0F1F085E00FF00FF00FF
      00FF00FF00FF00FF00FF00FF00FF00DA00EC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000514120A4C0000000000000000000000000000000000000000000000001311
      0A4A000000050000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2A19732F2A197300000000000000000000
      000000000000000000000000000000000000F7EECFFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0D22066200FF00FF00FF
      00FF00FF00FF00FF00FF00FF00FF00EF00F70000000000000000000000000000
      00000000000000000000020101181B180E580000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008E9CF7CFE52492B970000000B00000000000000000000000A51482A96E9CF
      7CFE000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBC374F6DBC374F600000000000000000000
      000000000000000000000000000000000000FEFCF6FFEED994FFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF2625146C00D100E700FF
      00FF00FF00FF00FF00FF00FF00FF007400AC0000000000000000000000000000
      0000000000000605032AB3A05EDF211D11610000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFAA9659D90A08053509080534A79559D7EBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCC474F7DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFEFEFBFFF6EBC5FFEED8
      90FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFBAA562E3071A035400D1
      00E700FF00FF00FF00FF009E00C90C130C460000000000000000000000091815
      0C5224201365CDB66CEEEBD17CFF38311D7D19160D5519160D5519160D551916
      0D5518150C520000000A00000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFE2C978FAE1C977FAEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCC474F7DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCF8EBFFF8EFD1FFF6EBC7FFF5E9C1FFF5E9C0FFF6EBC8FFC5BFADE3292D
      296C0E240E611022105E393A397AE3E3E3F100000000000000003D362083EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF4039228600000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCC474F7DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFCFFF4E5B5FFEBD280FFEBD27EFFF3E4B2FFFEFEFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF0000000800000000000000000000000000000000000000002F2A1973D7BF
      72F4D8C172F5DBC374F7DCC474F7EBD17CFFEBD17CFFD8C172F5D9C172F5DCC4
      74F7DBC374F62E2918720000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF3E2AEFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF2E1ABFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF0000000800000000000000000000000000000000000000002F2A1973D6BF
      71F4D8C172F5D8C172F5D8C172F5E9CF7CFEEBD17CFFDCC474F7DCC474F7DCC4
      74F7D9C172F52D2818710000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBF6E5FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFFAF4
      E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3BC70F2DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5E7BCFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF4E5
      B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3BC70F2DBC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1DFA5FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF0DC
      9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000005C5230A0EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF5E5331A100000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8C172F5D8C172F500000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0DC9CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEFDC
      9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000015120B4DC8B2
      6AECD0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B8
      6DF0C9B26AEC17140C5000000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6BF71F4D5BE70F300000000000000000000
      000000000000000000000000000000000000F9F9F9FCFFFFFFFFFFFFFFFFFFFF
      FFFFF6EAC4FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF5E9
      C0FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005665B35A8665B35A8665B35A8665B35A8665B35A8665B35A8665B35A8665B
      35A8000000050000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2918722D28187100000000000000000000
      0000000000000000000000000000000000009D9D9DC8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFDFFF4E5B5FFEBD17DFFEBD17CFFEBD17CFFEBD17DFFF3E3B0FFFFFE
      FDFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DC80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050505279D9D9DC8F9F9F9FCFFFF
      FFFFFFFFFFFFFFFFFFFFFDFAF0FFF8EFD3FFF8EFD2FFFCF9EEFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FC999999C6050505250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000504032692824CC9E8CE7AFDEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFE9CF7BFE93834ECA050503280000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000968F7BC7EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF998F71CA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EAD0FCEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFF4E8C2FE0000000000000000000000000000
      000000000007584E2E9C0605032B000000003E37218426221467000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B180E573F3821853F3821853F3821853F3821853F3821853F3821851B18
      0E57000000000000000000000000000000000000000000000000000000081512
      0B4D16140C4F16140C4F16140C4F16140C4F16140C4F16140C4F16140C4F1614
      0C4F14120A4C000000060000000000000000F8F1D8FFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFF6EAC6FF0000000000000000000000000000
      000000000000BDA964E52924166B0000000072663CB2998851CE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFEFDB9BFFF0DC9CFFEBD17CFFEBD17CFF6358
      34A60000000000000000000000000000000000000000000000002A25166CEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF17140C500000000000000000FEFDFAFFF0DC9DFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEED993FFFDFBF3FF0000000000000000000000000000
      0001433B2389BBA563E395844ECB443C248A96854FCCDEC576F8443C248A1311
      0A49000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFF7ECCBFFF6EBC7FFEBD17CFFEBD17CFF6358
      34A6000000000000000000000000000000000000000000000000574E2E9CEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFE9D07CFE332D1B780000000000000000FFFFFFFFFEFEFDFFF7EDCCFFEED9
      94FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEED891FFF6EBC7FFFEFDFBFFFFFFFFFF0000000000000000000000000000
      000075683DB4BBA562E3D7BF71F48D7E4BC6A89659D8EBD17CFF9D8C53D13630
      1C7B000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFF5E9C1FFF2E1AAFFEBD17CFFEBD17CFF6358
      34A600000000000000000000000000000000000000000000000092814CC9EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFB8A461E2332D1B780000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCF8EDFFF8EFD2FFF6EBC8FFF5E8BEFFF4E6BAFFF6EBC8FFF8EFD1FFFCF8
      ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000002824156ABFAA65E6000000000A090537EBD17CFF13110A4A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFF5E9C1FFF2E1AAFFEBD17CFFEBD17CFF6358
      34A6000000000000000000000000000000000000000000000002D6BF71F4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF75683DB4332D1B770000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFDFFF3E5B7FFEBD27EFFEBD17CFFF1E0A8FFFEFCF8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000E0C073FEBD17CFF010100120000000DE9CF7CFE312B1A750000
      0000000000000000000000000000000000000000000000000000000000000000
      0000201C115FCCB66CEEEBD17CFFEBD17CFFEBD17CFFEBD17CFFCCB66CEE211D
      1161000000000000000000000000000000000000000004040224EBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF423A23882A25166D0000000A00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF2E3B0FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF0DDA1FFFFFF
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00003B351F81DCC474F7EBD17CFFDCC474F7DBC374F6EBD17CFFE3CA78FBCCB6
      6CEE000000090000000000000000000000000000000000000000000000000000
      0000000000008F7F4CC7EBD17CFFEBD17CFFEBD17CFFEBD17CFF8F7F4CC70000
      0000000000000000000000000000000000000000000017140C51EBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF1D1A0F5A0F0D08420A08053500000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAF3DFFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF9F2
      DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000302011E1D1A0F5AD1BB6FF17F7043BB1D1A0F5A71643CB1AF9C5CDC1D1A
      0F5A010000110000000000000000000000000000000000000000000000000000
      0000000000008F7F4CC7EBD17CFFEBD17CFFEBD17CFFEBD17CFF8F7F4CC70000
      0000000000000000000000000000000000000000000039321E7EEBD17CFFEBD1
      7CFFEBD17CFF847545BF2B26176E2B26176E2B26176E2B26176E2B26176E2621
      14670000000901010015221E126200000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3E5B6FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF3E5
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000008F7F4BC77C6E41B90000000023201364C9B36AEC0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000655A35A8EBD17CFFEBD17CFFEBD17CFFEBD17CFF685D37AA0000
      0000000000000000000000000000000000000000000013110A49605532A36055
      32A3A39156D51A170E5605040226050402260504022605040226050402260504
      02260504022605040226352F1C7A00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0DEA3FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEED9
      93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000024201365403922860000000005050328584E2E9C0000
      0009000000000000000000000000000000000000000000000000000000000000
      000000000000010100164D44299271643CB171643CB14E452993010100170000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202011B16140C4F16140C4F16140C4F16140C4F16140C4F16140C4F1614
      0C4F16140C4F16140C4F0202011C00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0DDA0FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEDD6
      8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FCFFFFFFFFFFFFFFFFFFFF
      FFFFF6EBC8FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF3E5
      B5FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000999999C6FFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFFF3E5B6FFEBD17DFFEBD17CFFEBD17CFFEBD17CFFF1E0A8FFFEFD
      FAFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EC90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050525999999C6F9F9F9FCFFFF
      FFFFFFFFFFFFFFFFFFFFFCF8ECFFF7ECCBFFF6ECC9FFFBF6E6FFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FC9B9B9BC705050526424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 12124495
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302038352038352220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C672069643D
          225F313637313732303738363939322220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D226E
          6F6E652220706F696E74733D22302C302038352C302038352C383520302C3835
          20222F3E0D0A3C706174682066696C6C3D2223374444314542222066696C6C2D
          72756C653D226E6F6E7A65726F2220643D224D36332033376C2D372030202D32
          20313220382030202D312037202D382030202D32203131202D3820302032202D
          3131202D31302030202D32203131202D3720302032202D3131202D3720302031
          202D37203720302032202D3132202D3820302032202D37203720302032202D31
          3220382030202D3220313220313020302032202D313220372030202D32203132
          20382030202D3220377A6D2D313520306C2D31302030202D3220313220313020
          302032202D31327A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302039322039322220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C672069643D
          225F313637313732343730303839362220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D226E
          6F6E652220706F696E74733D22302C302039322C302039322C393220302C3932
          20222F3E0D0A3C6720786D6C3A73706163653D227072657365727665223E2623
          31333B262331303B3C706174682066696C6C3D22233744443145422220643D22
          4D32392034326C3334203063322C3020342C3120342C336C30203237202D3432
          20302030202D323763302C2D3220322C2D3320342C2D337A222F3E0D0A3C7061
          74682066696C6C3D22233744443145422220643D224D35312035376C2D313020
          30632D362C30202D31312C2D34202D31312C2D31306C30202D313863302C2D36
          20352C2D31302031312C2D31306C3130203063362C302031312C342031312C31
          306C3020313863302C36202D352C3130202D31312C31307A6D2D3130202D3333
          6C3130203063332C3020352C3220352C356C3020313863302C33202D322C3520
          2D352C356C2D31302030632D332C30202D352C2D32202D352C2D356C30202D31
          3863302C2D3320322C2D3520352C2D357A222F3E0D0A3C6720786D6C3A737061
          63653D227072657365727665223E262331333B262331303B3C636972636C6520
          66696C6C3D227768697465222063783D223436222063793D2236322220723D22
          34222F3E0D0A3C726563742066696C6C3D2277686974652220783D2234332220
          793D223436222077696474683D223522206865696768743D223133222F3E0D0A
          090909093C2F673E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C302031
          3630302C3020313630302C3136303020302C3136303020222F3E0D0A3C706174
          682066696C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E7A
          65726F2220643D224D31343132203433346C2D31303820363035202D3339202D
          323139202D3130202D3537202D36202D3336202D37202D3431202D3132202D36
          34632D362C2D3337202D34302C2D3635202D37362C2D36356C2D31322030202D
          36312030202D3338342030202D34302030202D37332030632D31342C30202D32
          392C2D3133202D33312C2D32376C2D35202D3239632D362C2D3334202D33372C
          2D3632202D37312C2D363520342C2D31322031372C2D32312033302C2D32316C
          383930203063352C3020392C322031322C3520332C3320342C3820332C31347A
          6D3332202D3434632D31312C2D3133202D32392C2D3231202D34372C2D32316C
          2D3839302030632D33372C30202D37312C3238202D37372C36356C2D31203220
          2D3232362030632D31382C30202D33362C38202D34372C3232202D31322C3134
          202D31372C3332202D31332C35316C3131362036353763362C33372034302C36
          352037362C36356C39323920306331392C302033362C2D382034382C2D323120
          372C2D392031312C2D31392031332C2D33306C31203020313331202D37333863
          342C2D3139202D312C2D3338202D31332C2D35327A222F3E0D0A093C2F673E0D
          0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D2230203020313137203131372220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C6465667320786D6C3A73706163653D227072657365727665223E202020
          3C636C6970506174682069643D226964302220786D6C3A73706163653D227072
          657365727665223E202020203C7061746820643D224D313820306C3831203063
          31302C302031382C382031382C31386C3020383163302C3130202D382C313820
          2D31382C31386C2D38312030632D31302C30202D31382C2D38202D31382C2D31
          386C30202D383163302C2D313020382C2D31382031382C2D31387A222F3E0D0A
          09093C2F636C6970506174683E0D0A093C2F646566733E0D0A3C672069643D22
          4C6179657220312220786D6C3A73706163653D227072657365727665223E2623
          31333B262331303B3C6D657461646174612069643D22436F72656C436F727049
          445F30436F72656C2D4C61796572222F3E0D0A3C706174682066696C6C3D2277
          686974652220643D224D313820306C383120306331302C302031382C38203138
          2C31386C3020383163302C3130202D382C3138202D31382C31386C2D38312030
          632D31302C30202D31382C2D38202D31382C2D31386C30202D383163302C2D31
          3020382C2D31382031382C2D31387A222F3E0D0A3C6720636C69702D70617468
          3D2275726C2823696430292220786D6C3A73706163653D227072657365727665
          223E2020203C672069643D225F313637313732303732343434382220786D6C3A
          73706163653D227072657365727665223E202020203C6720786D6C3A73706163
          653D227072657365727665223E20202020203C706174682069643D225F312220
          66696C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E7A6572
          6F2220643D224D333520343863362C31322031372C31392032342C313920372C
          302031372C2D362032332C2D313820312C2D3320322C2D3720332C2D31312031
          2C2D3220322C2D3620322C2D313120302C2D3132202D31332C2D3233202D3238
          2C2D3233202D31352C30202D32382C3131202D32382C323320302C3420302C36
          20312C3920302C3420312C3920332C31327A6D37382038366C2D313038203020
          30202D343363302C2D31312032382C2D32312034312C2D32316C323520306331
          332C302034322C31302034322C32316C302034337A222F3E0D0A090909093C2F
          673E0D0A0909093C2F673E0D0A09093C2F673E0D0A3C706174682066696C6C3D
          226E6F6E652220643D224D313820306C383120306331302C302031382C382031
          382C31386C3020383163302C3130202D382C3138202D31382C31386C2D383120
          30632D31302C30202D31382C2D38202D31382C2D31386C30202D383163302C2D
          313020382C2D31382031382C2D31387A222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223332707822206865696768743D22333270782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D2230203020323039203230392220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C6465667320786D6C3A73706163653D227072657365727665223E202020
          203C636C6970506174682069643D226964302220786D6C3A73706163653D2270
          72657365727665223E20202020203C7061746820643D224D333220306C313435
          20306331372C302033322C31342033322C33326C3020313037632D392C2D3132
          202D32342C2D3230202D34312C2D3230202D32372C30202D34392C3232202D34
          392C343920302C313720382C33322032302C34316C2D3130372030632D31382C
          30202D33322C2D3135202D33322C2D33326C30202D31343563302C2D31382031
          342C2D33322033322C2D33327A222F3E0D0A09093C2F636C6970506174683E0D
          0A093C2F646566733E0D0A3C672069643D224C6179657220312220786D6C3A73
          706163653D227072657365727665223E262331333B262331303B3C6D65746164
          6174612069643D22436F72656C436F727049445F30436F72656C2D4C61796572
          222F3E0D0A3C672069643D225F313637313733303239303836342220786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C70617468
          2066696C6C3D2277686974652220643D224D333220306C31343520306331372C
          302033322C31342033322C33326C3020313037632D392C2D3132202D32342C2D
          3230202D34312C2D3230202D32372C30202D34392C3232202D34392C34392030
          2C313720382C33322032302C34316C2D3130372030632D31382C30202D33322C
          2D3135202D33322C2D33326C30202D31343563302C2D31382031342C2D333220
          33322C2D33327A222F3E0D0A3C6720636C69702D706174683D2275726C282369
          6430292220786D6C3A73706163653D227072657365727665223E202020203C67
          20786D6C3A73706163653D227072657365727665223E20202020203C6720786D
          6C3A73706163653D227072657365727665223E2020202020203C706174682069
          643D225F31222066696C6C3D2223374444314542222066696C6C2D72756C653D
          226E6F6E7A65726F2220643D224D36332038366331302C32322032392C333320
          34322C33332031332C302033302C2D31312034312C2D333220322C2D3520342C
          2D313220362C2D313820312C2D3620322C2D313220322C2D323120302C2D3232
          202D32322C2D3430202D34392C2D3430202D32372C30202D35302C3138202D35
          302C343020302C3620312C313120322C313520312C3820332C313720362C3233
          7A6D313337203135326C2D31393220302030202D373663302C2D32302035312C
          2D33372037342C2D33376C343420306332332C302037342C31372037342C3337
          6C302037367A222F3E0D0A09090909093C2F673E0D0A090909093C2F673E0D0A
          0909093C2F673E0D0A3C706174682066696C6C3D226E6F6E652220643D224D33
          3220306C31343520306331372C302033322C31342033322C33326C3020313037
          632D392C2D3132202D32342C2D3230202D34312C2D3230202D32372C30202D34
          392C3232202D34392C343920302C313720382C33322032302C34316C2D313037
          2030632D31382C30202D33322C2D3135202D33322C2D33326C30202D31343563
          302C2D31382031342C2D33322033322C2D33327A222F3E0D0A3C636972636C65
          2066696C6C3D226C696D65222063783D22313638222063793D22313638222072
          3D223431222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D2230203020333139203331392220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C672069643D224C6179657220312220786D6C3A73706163653D22707265
          7365727665223E262331333B262331303B3C6D657461646174612069643D2243
          6F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C726563
          742066696C6C3D226E6F6E65222077696474683D223331392220686569676874
          3D22333139222F3E0D0A3C706174682066696C6C3D2223374444314542222066
          696C6C2D72756C653D226E6F6E7A65726F2220643D224D34372031373763302C
          2D323920302C2D353820302C2D383720302C2D313620392C2D32392032302C2D
          32392036322C30203132332C30203138352C302031312C302032302C31332032
          302C323920302C323920302C353820302C383720302C3136202D392C3239202D
          32302C3239202D33362C30202D37332C30202D3130392C306C39203532202D36
          30202D3532632D382C30202D31372C30202D32352C30202D31312C30202D3230
          2C2D3133202D32302C2D32397A222F3E0D0A093C2F673E0D0A3C2F7376673E0D
          0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C302031
          3630302C3020313630302C3136303020302C3136303020222F3E0D0A3C706F6C
          79676F6E2066696C6C3D2223374444314542222066696C6C2D72756C653D226E
          6F6E7A65726F2220706F696E74733D223339372C32333420313230332C323334
          20313230332C31333636203830302C31303833203339372C3133363620222F3E
          0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C302031
          3630302C3020313630302C3136303020302C3136303020222F3E0D0A3C706174
          682066696C6C3D22233744443145422220643D224D32363220383730632D3130
          2C2D3130202D31352C2D3231202D32342C2D3334202D322C2D3130202D352C2D
          3231202D352C2D333720302C2D32332031312C2D35322032372C2D3639203138
          2C2D31372034352C2D32362036382C2D32376C3337372031202D32202D333735
          63312C2D32342031302C2D35322032372C2D36392031372C2D31362034332C2D
          32342036392C2D32372032382C322035322C31312037302C33302031372C3136
          2032372C34302032362C36356C32203337352033373320306332362C31203530
          2C31312036372C32382031372C31362032382C34322033302C3730202D332C32
          37202D31332C3530202D32392C3637202D31372C3137202D34332C3239202D36
          372C32396C2D333735202D3220312033373763302C3233202D31312C3438202D
          32392C3636202D31372C3136202D34342C3330202D36372C3239202D31372C30
          202D32372C2D33202D33392C2D37202D392C2D36202D32322C2D3133202D3332
          2C2D3232202D372C2D37202D31342C2D3230202D31382C2D3239202D372C2D31
          34202D31322C2D3236202D392C2D33396C30202D333733202D333735202D3263
          2D31332C33202D32332C30202D33372C2D37202D392C2D34202D32322C2D3131
          202D32392C2D31386C3020307A222F3E0D0A093C2F673E0D0A3C2F7376673E0D
          0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
          31303B203C6465667320786D6C3A73706163653D227072657365727665223E20
          20203C636C6970506174682069643D226964302220786D6C3A73706163653D22
          7072657365727665223E202020203C7061746820643D224D3020306C31363030
          203020302031363030202D3136303020302030202D313630307A222F3E0D0A09
          093C2F636C6970506174683E0D0A093C2F646566733E0D0A3C672069643D224C
          6179657220312220786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C6D657461646174612069643D22436F72656C436F72704944
          5F30436F72656C2D4C61796572222F3E0D0A3C6720786D6C3A73706163653D22
          7072657365727665223E20203C2F673E0D0A3C6720636C69702D706174683D22
          75726C2823696430292220786D6C3A73706163653D227072657365727665223E
          2020203C6720786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C672069643D225F323832343232353237313834302220786D6C3A
          73706163653D227072657365727665223E20202020203C706174682066696C6C
          3D2223374444314542222066696C6C2D72756C653D226E6F6E7A65726F222064
          3D224D2D323439203636336337302C313636203230332C323537203239322C32
          35372038382C30203231302C2D3838203238312C2D3235322031372C2D343020
          33322C2D39312034322C2D3134302031322C2D34302031382C2D39312031382C
          2D31353520302C2D313731202D3135322C2D333135202D3334312C2D33313520
          2D3138382C30202D3334312C313434202D3334312C33313520302C343520332C
          383320382C31313520372C36302032302C3132362034312C3137357A6D393531
          20313038346C2D3133323620302030202D34393563302C2D313539203335332C
          2D323839203531322C2D3238396C3330302030633136302C30203531342C3133
          30203531342C3238396C30203439357A222F3E0D0A090909093C2F673E0D0A3C
          706174682066696C6C3D2223374444314542222066696C6C2D72756C653D226E
          6F6E7A65726F2220643D224D31323733203636336337302C313636203230332C
          323537203239322C3235372038372C30203231302C2D3838203238312C2D3235
          322031372C2D34302033322C2D39312034322C2D3134302031322C2D34302031
          382C2D39312031382C2D31353520302C2D313731202D3135332C2D333135202D
          3334312C2D333135202D3138392C30202D3334312C313434202D3334312C3331
          3520302C343520322C383320382C31313520372C36302032302C313236203431
          2C3137357A6D39353120313038316C2D3133323620302030202D34393263302C
          2D313539203335332C2D323839203531322C2D3238396C333030203063313539
          2C30203531342C313330203531342C3238396C30203439327A222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D22233744443145422220706F696E74733D223439
          332C353635203932392C353635203830302C34343320313038382C3539332031
          3130372C363337203439332C36333720222F3E0D0A3C706F6C79676F6E206669
          6C6C3D22233744443145422220706F696E74733D22313130372C373832203637
          312C373832203830302C393034203531322C373533203439332C373039203131
          30372C37303920222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A3C706F
          6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C30203136
          30302C3020313630302C3136303020302C3136303020222F3E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C672069643D225F32383234343639303332
          3732302220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C706174682066696C6C3D22233744443145422220643D224D363438
          20333031632D34362C36202D38302C3336202D37362C363820342C3332203434
          2C35332039312C34372034302C2D352037312C2D32392037352C2D3536203139
          2C31322034362C31382037352C31352035302C2D372038362C2D33382038322C
          2D373120302C2D32202D312C2D34202D312C2D352032382C31332036352C3138
          203130352C31332034352C2D362038332C2D3234203130372C2D34372034312C
          31382038382C3236203133312C32312038392C2D3132203133312C2D37362039
          352C2D313434202D33352C2D3637202D3133362C2D313133202D3232342C2D31
          3032202D36302C38202D39392C3430202D3130372C3831202D32332C2D313020
          2D35332C2D3135202D38342C2D3131202D36342C39202D3131322C3438202D31
          31352C3932202D31352C2D32202D33322C2D33202D34392C30202D36312C3820
          2D3130372C3435202D3130322C383420312C3520322C313020342C3134202D32
          2C30202D352C30202D372C317A222F3E0D0A3C706F6C79676F6E2066696C6C3D
          22233744443145422220706F696E74733D223534332C343439203736342C3434
          39203736342C31303233203534332C3130323320222F3E0D0A3C6720786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C706F6C79
          676F6E2066696C6C3D22233744443145422220706F696E74733D22302C393839
          203832372C393839203832372C36323220313630302C36323220313630302C39
          383920313630302C3136303020302C3136303020222F3E0D0A3C6720786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C706F6C79
          676F6E2066696C6C3D2277686974652220706F696E74733D22313432342C3836
          3020313432342C39373220313239322C39373220313239322C38363020222F3E
          0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D22
          313239322C37313920313432342C37313920313432342C38333220313239322C
          38333220222F3E0D0A3C706F6C79676F6E2066696C6C3D227768697465222070
          6F696E74733D22313235382C38363020313235382C39373220313132362C3937
          3220313132362C38363020222F3E0D0A3C706F6C79676F6E2066696C6C3D2277
          686974652220706F696E74733D22313132362C37313920313235382C37313920
          313235382C38333220313132362C38333220222F3E0D0A3C706F6C79676F6E20
          66696C6C3D2277686974652220706F696E74733D223535352C31333039203535
          352C31343231203432332C31343231203432332C3133303920222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D2277686974652220706F696E74733D223432332C
          31313638203535352C31313638203535352C31323831203432332C3132383120
          222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74
          733D223338392C31333039203338392C31343231203235372C31343231203235
          372C3133303920222F3E0D0A3C706F6C79676F6E2066696C6C3D227768697465
          2220706F696E74733D223235372C31313638203338392C31313638203338392C
          31323831203235372C3132383120222F3E0D0A3C706F6C79676F6E2066696C6C
          3D2277686974652220706F696E74733D223938392C31333039203938392C3134
          3231203835372C31343231203835372C3133303920222F3E0D0A3C706F6C7967
          6F6E2066696C6C3D2277686974652220706F696E74733D223835372C31313638
          203938392C31313638203938392C31323831203835372C3132383120222F3E0D
          0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D2238
          32342C31333039203832342C31343231203639312C31343231203639312C3133
          303920222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F
          696E74733D223639312C31313638203832342C31313638203832342C31323831
          203639312C3132383120222F3E0D0A3C706F6C79676F6E2066696C6C3D227768
          6974652220706F696E74733D22313432342C3133303920313432342C31343231
          20313239312C3134323120313239312C3133303920222F3E0D0A3C706F6C7967
          6F6E2066696C6C3D2277686974652220706F696E74733D22313239312C313136
          3820313432342C3131363820313432342C3132383120313239312C3132383120
          222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74
          733D22313235382C3133303920313235382C3134323120313132362C31343231
          20313132362C3133303920222F3E0D0A3C706F6C79676F6E2066696C6C3D2277
          686974652220706F696E74733D22313132362C3131363820313235382C313136
          3820313235382C3132383120313132362C3132383120222F3E0D0A090909093C
          2F673E0D0A0909093C2F673E0D0A3C706F6C79676F6E2066696C6C3D22233744
          443145422220706F696E74733D223237332C353839203439332C353839203439
          332C31303837203237332C3130383720222F3E0D0A3C706174682066696C6C3D
          22233744443145422220643D224D33363820343330632D34322C3231202D3633
          2C3632202D34382C39302031352C32392036302C3334203130312C3133203336
          2C2D31392035372C2D35322035322C2D37392032312C352034392C322037362C
          2D31322034342C2D32332036372C2D36352035322C2D3934202D312C2D32202D
          322C2D34202D332C2D352033312C322036372C2D36203130332C2D3234203430
          2C2D32312037302C2D35312038342C2D38322034352C332039322C2D35203133
          312C2D32352037392C2D34312039362C2D3131362033392C2D313638202D3537
          2C2D3531202D3136372C2D3539202D3234362C2D3138202D35332C3238202D37
          392C3732202D37322C313133202D32352C2D32202D35352C34202D38332C3139
          202D35372C3330202D38382C3834202D37362C313236202D31352C33202D3330
          2C38202D34362C3136202D35342C3239202D38342C3830202D36362C31313520
          322C3420352C3820392C3131202D332C31202D352C33202D372C347A222F3E0D
          0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C67
          2069643D225F323832343237343332303936302220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C726563742066696C6C3D22
          6E6F6E65222077696474683D223136303022206865696768743D223136303022
          2F3E0D0A3C706174682066696C6C3D22233744443145422220643D224D313936
          203231376C38322033363720323637202D313239203230362036312032303420
          2D31313320333031202D313736202D3932382030202D3139202D393163302C30
          202D382C2D3337202D35332C2D3338202D36342C2D31202D3133352C30202D31
          39362C30202D33332C30202D36302C3237202D36302C363020302C3333203237
          2C36302036302C36302034362C302039312C2D31203133362C2D317A6D313336
          203631306C343820323137202D35372031323463302C30202D33382C37352039
          322C3737203133312C3220313031312C3120313031312C3120302C302033392C
          2D342033392C2D333820312C2D333420302C2D333620302C2D333620302C3020
          2D372C2D3435202D35302C2D3435202D34322C2D31202D3933342C2D34202D39
          33342C2D346C3236202D3439202D3139202D3838203637202D382030202D3235
          35202D323233203130347A6D323930203134346C323133202D32362030202D31
          3939202D3538203332202D313535202D34372030203234307A6D323739202D33
          336C323133202D32362030202D333236202D323133203132322030203233307A
          6D323830202D33346C323132202D32352030202D343532202D32313220313231
          2030203335367A6D323739202D33336C3732202D386333372C2D352036382C2D
          33312036382C2D36386C30202D35303063302C2D36202D312C2D3133202D332C
          2D31396C2D313337203231382030203337377A6D2D313136203337386337302C
          30203132372C3536203132372C31323720302C3730202D35372C313236202D31
          32372C313236202D37302C30202D3132372C2D3536202D3132372C2D31323620
          302C2D37312035372C2D313237203132372C2D3132377A6D2D38393720306337
          302C30203132362C3536203132362C31323720302C3730202D35362C31323620
          2D3132362C313236202D37312C30202D3132372C2D3536202D3132372C2D3132
          3620302C2D37312035362C2D313237203132372C2D3132377A222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D2223443038374239222066696C6C2D72756C653D
          226E6F6E7A65726F2220706F696E74733D22313439312C33333020313538352C
          31383020313333362C31383220313336352C323334203938352C343537203735
          382C353832203535302C353230203239312C363435203331382C373636203536
          382C363530203737302C37313220313432332C33333920313435332C33393120
          222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C67
          2069643D225F323738383232323139363939322220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C726563742066696C6C3D22
          6E6F6E65222077696474683D223136303022206865696768743D223136303022
          2F3E0D0A3C706174682066696C6C3D22233744443145422220643D224D313936
          203231376C31383420383237202D35372031323463302C30202D33382C373520
          39322C3737203133312C3220313031312C3120313031312C3120302C30203339
          2C2D342033392C2D333820312C2D333420302C2D333620302C2D333620302C30
          202D372C2D3435202D35302C2D3435202D34322C2D31202D3933342C2D34202D
          3933342C2D346C3236202D3439202D3139202D38382031303434202D31323363
          33372C2D352036382C2D33312036382C2D36386C30202D35303063302C2D3337
          202D33312C2D3638202D36382C2D36386C2D3339342030203020313439203232
          332030202D34333720353039202D343337202D3530392032323320302030202D
          313439202D3338322030202D3139202D393163302C30202D382C2D3337202D35
          332C2D3338202D36342C2D31202D3133352C30202D3139362C30202D33332C30
          202D36302C3237202D36302C363020302C33332032372C36302036302C363020
          34362C302039312C2D31203133362C2D317A6D3131343820313033326337302C
          30203132372C3536203132372C31323720302C3730202D35372C313236202D31
          32372C313236202D37302C30202D3132372C2D3536202D3132372C2D31323620
          302C2D37312035372C2D313237203132372C2D3132377A6D2D38393720306337
          302C30203132362C3536203132362C31323720302C3730202D35362C31323620
          2D3132362C313236202D37312C30202D3132372C2D3536202D3132372C2D3132
          3620302C2D37312035362C2D313237203132372C2D3132377A222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D2223443038374239222066696C6C2D72756C653D
          226E6F6E7A65726F2220706F696E74733D223736312C323237203736312C3432
          38203539392C343238203932342C38303620313234382C34323820313038362C
          34323820313038362C32323720222F3E0D0A3C726563742066696C6C3D222344
          30383742392220783D223736312220793D223938222077696474683D22333235
          22206865696768743D223837222F3E0D0A09093C2F673E0D0A093C2F673E0D0A
          3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C672069643D225F32313433383738383035
          3133362220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C636972636C652066696C6C3D2223374444314542222063783D2238
          3030222063793D223338382220723D22313534222F3E0D0A3C636972636C6520
          66696C6C3D2223374444314542222063783D22383030222063793D2238303022
          20723D22313534222F3E0D0A3C636972636C652066696C6C3D22233744443145
          42222063783D22383030222063793D22313231322220723D22313534222F3E0D
          0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C706F6C79676F6E2066696C6C3D22234334
          43344342222066696C6C2D72756C653D226E6F6E7A65726F2220706F696E7473
          3D223339372C32333420313230332C32333420313230332C3133363620383030
          2C31303833203339372C3133363620222F3E0D0A093C2F673E0D0A3C2F737667
          3E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C672069643D225F32383234323734333131
          3535322220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C706174682066696C6C3D22234430383742392220643D224D313630
          3020383537632D31332C323834202D3137382C353238202D3431352C3635356C
          2D333236202D363930203734312033357A222F3E0D0A3C706174682066696C6C
          3D22233744443145422220643D224D383138203136633430382C313720373335
          2C333436203735302C3735346C2D373530202D33352030202D3731397A222F3E
          0D0A3C706174682066696C6C3D22233744443145422220643D224D3020383030
          63302C2D343232203333332C2D373636203735312C2D3738346C302037383420
          33343120373231632D39352C3431202D3139382C3633202D3330382C3633202D
          3433332C30202D3738342C2D333531202D3738342C2D3738347A222F3E0D0A09
          093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C7265637420
          66696C6C3D226E6F6E65222077696474683D22313622206865696768743D2231
          36222F3E0D0A3C672069643D225F323233393232303830323434382220786D6C
          3A73706163653D227072657365727665223E262331333B262331303B3C726563
          742066696C6C3D226E6F6E652220783D2231322E34382220793D22302E393722
          2077696474683D22322E353422206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D2231322E3438222079
          3D22302E3937222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2231
          342E342220793D22302E3937222077696474683D22302E363322206865696768
          743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542
          22207472616E73666F726D3D226D617472697828342E3739333639452D313520
          31202D302E31383039393920322E3634383435452D31342031352E3032373520
          302E39373233373629222077696474683D22302E363322206865696768743D22
          31342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542222074
          72616E73666F726D3D226D617472697828342E3739333639452D31352031202D
          302E31383039393920322E3634383435452D31342031352E303237352031342E
          3339393529222077696474683D22302E363322206865696768743D2231342E30
          36222F3E0D0A09093C2F673E0D0A3C672069643D225F32323339323230383033
          3032342220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D226E6F6E652220783D22342E3831222079
          3D22372E3835222077696474683D22322E353422206865696768743D22372E31
          38222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E73
          666F726D3D226D617472697828342E3739333639452D31352031202D302E3138
          3039393920322E3634383435452D313420372E33353335352031342E33393935
          29222077696474683D22302E363322206865696768743D2231342E3036222F3E
          0D0A3C726563742066696C6C3D222337444431454222207472616E73666F726D
          3D226D617472697828342E3739333639452D31352031202D302E313830393939
          20322E3634383435452D313420372E333533343820372E383532313329222077
          696474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C72
          6563742066696C6C3D22233744443145422220783D22342E38312220793D2237
          2E3835222077696474683D22302E363322206865696768743D22372E3138222F
          3E0D0A09093C2F673E0D0A3C672069643D225F32323339323230383035343234
          2220786D6C3A73706163653D227072657365727665223E262331333B26233130
          3B3C726563742066696C6C3D226E6F6E652220783D22302E39372220793D2239
          2E39222077696474683D22322E353422206865696768743D22352E3133222F3E
          0D0A3C726563742066696C6C3D222337444431454222207472616E73666F726D
          3D226D617472697828342E3739333639452D31352031202D302E313830393939
          20322E3634383435452D313420332E35313635382031342E3339393529222077
          696474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C72
          6563742066696C6C3D222337444431454222207472616E73666F726D3D226D61
          7472697828342E3739333639452D31352031202D302E31383039393920322E36
          34383435452D313420332E353136343720392E39303036362922207769647468
          3D22302E363322206865696768743D2231342E3036222F3E0D0A3C7265637420
          66696C6C3D22233744443145422220783D22302E39372220793D22392E392220
          77696474683D22302E363322206865696768743D22352E3133222F3E0D0A3C72
          6563742066696C6C3D22233744443145422220783D22322E38392220793D2239
          2E39222077696474683D22302E363322206865696768743D22352E3133222F3E
          0D0A09093C2F673E0D0A3C672069643D225F3232333932323038303734383822
          20786D6C3A73706163653D227072657365727665223E262331333B262331303B
          3C726563742066696C6C3D226E6F6E652220783D22382E36352220793D22342E
          3939222077696474683D22322E353422206865696768743D2231302E3034222F
          3E0D0A3C726563742066696C6C3D222337444431454222207472616E73666F72
          6D3D226D617472697828342E3739333639452D31352031202D302E3138303939
          3920322E3634383435452D31342031312E313930362031342E33393935292220
          77696474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C
          726563742066696C6C3D222337444431454222207472616E73666F726D3D226D
          617472697828342E3739333639452D31352031202D302E31383039393920322E
          3634383435452D31342031312E3139303520342E393835303629222077696474
          683D22302E363322206865696768743D2231342E3036222F3E0D0A3C72656374
          2066696C6C3D22233744443145422220783D22382E36352220793D22342E3939
          222077696474683D22302E363322206865696768743D2231302E3034222F3E0D
          0A3C726563742066696C6C3D22233744443145422220783D22362E3932222079
          3D22372E3835222077696474683D22302E363322206865696768743D22372E31
          38222F3E0D0A3C726563742066696C6C3D22233744443145422220783D223130
          2E35362220793D22342E3939222077696474683D22302E363322206865696768
          743D2231302E3034222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C7265637420
          66696C6C3D226E6F6E65222077696474683D22313622206865696768743D2231
          36222F3E0D0A3C672069643D225F323233383937343836383839362220786D6C
          3A73706163653D227072657365727665223E262331333B262331303B3C726563
          742066696C6C3D226E6F6E652220783D2231322E34382220793D22302E393722
          2077696474683D22322E353422206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D2231322E3438222079
          3D22302E3937222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2231
          342E342220793D22302E3937222077696474683D22302E363322206865696768
          743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542
          22207472616E73666F726D3D226D617472697828342E3739333639452D313520
          31202D302E31383039393920322E3634383435452D31342031352E3032373520
          302E39373233373629222077696474683D22302E363322206865696768743D22
          31342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542222074
          72616E73666F726D3D226D617472697828342E3739333639452D31352031202D
          302E31383039393920322E3634383435452D31342031352E303237352031342E
          3339393529222077696474683D22302E363322206865696768743D2231342E30
          36222F3E0D0A09093C2F673E0D0A3C672069643D225F32323338393734383731
          3334342220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D226E6F6E652220783D22342E3831222079
          3D22372E3835222077696474683D22322E353422206865696768743D22372E31
          38222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E73
          666F726D3D226D617472697828342E3739333639452D31352031202D302E3138
          3039393920322E3634383435452D313420372E33353335352031342E33393935
          29222077696474683D22302E363322206865696768743D2231342E3036222F3E
          0D0A3C726563742066696C6C3D222337444431454222207472616E73666F726D
          3D226D617472697828342E3739333639452D31352031202D302E313830393939
          20322E3634383435452D313420372E333533343820372E383532313329222077
          696474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C72
          6563742066696C6C3D22233744443145422220783D22342E38312220793D2237
          2E3835222077696474683D22302E363322206865696768743D22372E3138222F
          3E0D0A09093C2F673E0D0A3C672069643D225F32323338393734383732353932
          2220786D6C3A73706163653D227072657365727665223E262331333B26233130
          3B3C726563742066696C6C3D22233744443145422220783D22302E3937222079
          3D22392E39222077696474683D22322E353422206865696768743D22352E3133
          222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E7366
          6F726D3D226D617472697828342E3739333639452D31352031202D302E313830
          39393920322E3634383435452D313420332E35313635382031342E3339393529
          222077696474683D22302E363322206865696768743D2231342E3036222F3E0D
          0A3C726563742066696C6C3D222337444431454222207472616E73666F726D3D
          226D617472697828342E3739333639452D31352031202D302E31383039393920
          322E3634383435452D313420332E353136343720392E39303036362922207769
          6474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C7265
          63742066696C6C3D22233744443145422220783D22302E39372220793D22392E
          39222077696474683D22302E363322206865696768743D22352E3133222F3E0D
          0A3C726563742066696C6C3D22233744443145422220783D22322E3839222079
          3D22392E39222077696474683D22302E363322206865696768743D22352E3133
          222F3E0D0A09093C2F673E0D0A3C672069643D225F3232333839373438383131
          33362220786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C726563742066696C6C3D226E6F6E652220783D22382E36352220793D
          22342E3939222077696474683D22322E353422206865696768743D2231302E30
          34222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E73
          666F726D3D226D617472697828342E3739333639452D31352031202D302E3138
          3039393920322E3634383435452D31342031312E313930362031342E33393935
          29222077696474683D22302E363322206865696768743D2231342E3036222F3E
          0D0A3C726563742066696C6C3D222337444431454222207472616E73666F726D
          3D226D617472697828342E3739333639452D31352031202D302E313830393939
          20322E3634383435452D31342031312E3139303520342E393835303629222077
          696474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C72
          6563742066696C6C3D22233744443145422220783D22382E36352220793D2234
          2E3939222077696474683D22302E363322206865696768743D2231302E303422
          2F3E0D0A3C726563742066696C6C3D22233744443145422220783D22362E3932
          2220793D22372E3835222077696474683D22302E363322206865696768743D22
          372E3138222F3E0D0A3C726563742066696C6C3D22233744443145422220783D
          2231302E35362220793D22342E3939222077696474683D22302E363322206865
          696768743D2231302E3034222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C
          2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C7265637420
          66696C6C3D226E6F6E65222077696474683D22313622206865696768743D2231
          36222F3E0D0A3C672069643D225F323233383932313733323234302220786D6C
          3A73706163653D227072657365727665223E262331333B262331303B3C726563
          742066696C6C3D226E6F6E652220783D2231322E34382220793D22302E393722
          2077696474683D22322E353422206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D2231322E3438222079
          3D22302E3937222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2231
          342E342220793D22302E3937222077696474683D22302E363322206865696768
          743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542
          22207472616E73666F726D3D226D617472697828342E3739333639452D313520
          31202D302E31383039393920322E3634383435452D31342031352E3032373520
          302E39373233373629222077696474683D22302E363322206865696768743D22
          31342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542222074
          72616E73666F726D3D226D617472697828342E3739333639452D31352031202D
          302E31383039393920322E3634383435452D31342031352E303237352031342E
          3339393529222077696474683D22302E363322206865696768743D2231342E30
          36222F3E0D0A09093C2F673E0D0A3C672069643D225F32323338393231373332
          3736382220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D22233744443145422220783D22342E3831
          2220793D22372E3835222077696474683D22322E353422206865696768743D22
          372E3138222F3E0D0A3C726563742066696C6C3D222337444431454222207472
          616E73666F726D3D226D617472697828342E3739333639452D31352031202D30
          2E31383039393920322E3634383435452D313420372E33353335352031342E33
          39393529222077696474683D22302E363322206865696768743D2231342E3036
          222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E7366
          6F726D3D226D617472697828342E3739333639452D31352031202D302E313830
          39393920322E3634383435452D313420372E333533343820372E383532313329
          222077696474683D22302E363322206865696768743D2231342E3036222F3E0D
          0A3C726563742066696C6C3D22233744443145422220783D22342E3831222079
          3D22372E3835222077696474683D22302E363322206865696768743D22372E31
          38222F3E0D0A09093C2F673E0D0A3C672069643D225F32323338393231373533
          3639362220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D22233744443145422220783D22302E3937
          2220793D22392E39222077696474683D22322E353422206865696768743D2235
          2E3133222F3E0D0A3C726563742066696C6C3D22233744443145422220747261
          6E73666F726D3D226D617472697828342E3739333639452D31352031202D302E
          31383039393920322E3634383435452D313420332E35313635382031342E3339
          393529222077696474683D22302E363322206865696768743D2231342E303622
          2F3E0D0A3C726563742066696C6C3D222337444431454222207472616E73666F
          726D3D226D617472697828342E3739333639452D31352031202D302E31383039
          393920322E3634383435452D313420332E353136343720392E39303036362922
          2077696474683D22302E363322206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D22302E39372220793D
          22392E39222077696474683D22302E363322206865696768743D22352E313322
          2F3E0D0A3C726563742066696C6C3D22233744443145422220783D22322E3839
          2220793D22392E39222077696474683D22302E363322206865696768743D2235
          2E3133222F3E0D0A09093C2F673E0D0A3C672069643D225F3232333839323137
          35363532382220786D6C3A73706163653D227072657365727665223E26233133
          3B262331303B3C726563742066696C6C3D226E6F6E652220783D22382E363522
          20793D22342E3939222077696474683D22322E353422206865696768743D2231
          302E3034222F3E0D0A3C726563742066696C6C3D222337444431454222207472
          616E73666F726D3D226D617472697828342E3739333639452D31352031202D30
          2E31383039393920322E3634383435452D31342031312E313930362031342E33
          39393529222077696474683D22302E363322206865696768743D2231342E3036
          222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E7366
          6F726D3D226D617472697828342E3739333639452D31352031202D302E313830
          39393920322E3634383435452D31342031312E3139303520342E393835303629
          222077696474683D22302E363322206865696768743D2231342E3036222F3E0D
          0A3C726563742066696C6C3D22233744443145422220783D22382E3635222079
          3D22342E3939222077696474683D22302E363322206865696768743D2231302E
          3034222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2236
          2E39322220793D22372E3835222077696474683D22302E363322206865696768
          743D22372E3138222F3E0D0A3C726563742066696C6C3D222337444431454222
          20783D2231302E35362220793D22342E3939222077696474683D22302E363322
          206865696768743D2231302E3034222F3E0D0A09093C2F673E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C7265637420
          66696C6C3D226E6F6E65222077696474683D22313622206865696768743D2231
          36222F3E0D0A3C672069643D225F323233393537383336313238302220786D6C
          3A73706163653D227072657365727665223E262331333B262331303B3C726563
          742066696C6C3D226E6F6E652220783D2231322E34382220793D22302E393722
          2077696474683D22322E353422206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D2231322E3438222079
          3D22302E3937222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2231
          342E342220793D22302E3937222077696474683D22302E363322206865696768
          743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542
          22207472616E73666F726D3D226D617472697828342E3739333639452D313520
          31202D302E31383039393920322E3634383435452D31342031352E3032373520
          302E39373233373629222077696474683D22302E363322206865696768743D22
          31342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542222074
          72616E73666F726D3D226D617472697828342E3739333639452D31352031202D
          302E31383039393920322E3634383435452D31342031352E303237352031342E
          3339393529222077696474683D22302E363322206865696768743D2231342E30
          36222F3E0D0A09093C2F673E0D0A3C672069643D225F32323339353738333631
          3138342220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D22233744443145422220783D22342E3831
          2220793D22372E3835222077696474683D22322E353422206865696768743D22
          372E3138222F3E0D0A3C726563742066696C6C3D222337444431454222207472
          616E73666F726D3D226D617472697828342E3739333639452D31352031202D30
          2E31383039393920322E3634383435452D313420372E33353335352031342E33
          39393529222077696474683D22302E363322206865696768743D2231342E3036
          222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E7366
          6F726D3D226D617472697828342E3739333639452D31352031202D302E313830
          39393920322E3634383435452D313420372E333533343820372E383532313329
          222077696474683D22302E363322206865696768743D2231342E3036222F3E0D
          0A3C726563742066696C6C3D22233744443145422220783D22342E3831222079
          3D22372E3835222077696474683D22302E363322206865696768743D22372E31
          38222F3E0D0A09093C2F673E0D0A3C672069643D225F32323339353738333633
          3538342220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D22233744443145422220783D22302E3937
          2220793D22392E39222077696474683D22322E353422206865696768743D2235
          2E3133222F3E0D0A3C726563742066696C6C3D22233744443145422220747261
          6E73666F726D3D226D617472697828342E3739333639452D31352031202D302E
          31383039393920322E3634383435452D313420332E35313635382031342E3339
          393529222077696474683D22302E363322206865696768743D2231342E303622
          2F3E0D0A3C726563742066696C6C3D222337444431454222207472616E73666F
          726D3D226D617472697828342E3739333639452D31352031202D302E31383039
          393920322E3634383435452D313420332E353136343720392E39303036362922
          2077696474683D22302E363322206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D22302E39372220793D
          22392E39222077696474683D22302E363322206865696768743D22352E313322
          2F3E0D0A3C726563742066696C6C3D22233744443145422220783D22322E3839
          2220793D22392E39222077696474683D22302E363322206865696768743D2235
          2E3133222F3E0D0A09093C2F673E0D0A3C672069643D225F3232333935373833
          36343330342220786D6C3A73706163653D227072657365727665223E26233133
          3B262331303B3C726563742066696C6C3D22233744443145422220783D22382E
          36352220793D22342E3939222077696474683D22322E35342220686569676874
          3D2231302E3034222F3E0D0A3C726563742066696C6C3D222337444431454222
          207472616E73666F726D3D226D617472697828342E3739333639452D31352031
          202D302E31383039393920322E3634383435452D31342031312E313930362031
          342E3339393529222077696474683D22302E363322206865696768743D223134
          2E3036222F3E0D0A3C726563742066696C6C3D22233744443145422220747261
          6E73666F726D3D226D617472697828342E3739333639452D31352031202D302E
          31383039393920322E3634383435452D31342031312E3139303520342E393835
          303629222077696474683D22302E363322206865696768743D2231342E303622
          2F3E0D0A3C726563742066696C6C3D22233744443145422220783D22382E3635
          2220793D22342E3939222077696474683D22302E363322206865696768743D22
          31302E3034222F3E0D0A3C726563742066696C6C3D2223374444314542222078
          3D22362E39322220793D22372E3835222077696474683D22302E363322206865
          696768743D22372E3138222F3E0D0A3C726563742066696C6C3D222337444431
          45422220783D2231302E35362220793D22342E3939222077696474683D22302E
          363322206865696768743D2231302E3034222F3E0D0A09093C2F673E0D0A093C
          2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C7265637420
          66696C6C3D226E6F6E65222077696474683D22313622206865696768743D2231
          36222F3E0D0A3C672069643D225F323233393538313331393639362220786D6C
          3A73706163653D227072657365727665223E262331333B262331303B3C726563
          742066696C6C3D22233744443145422220783D2231322E34382220793D22302E
          3937222077696474683D22322E353422206865696768743D2231342E3036222F
          3E0D0A3C726563742066696C6C3D22233744443145422220783D2231322E3438
          2220793D22302E3937222077696474683D22302E363322206865696768743D22
          31342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542222078
          3D2231342E342220793D22302E3937222077696474683D22302E363322206865
          696768743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444
          31454222207472616E73666F726D3D226D617472697828342E3739333639452D
          31352031202D302E31383039393920322E3634383435452D31342031352E3032
          373520302E39373233373629222077696474683D22302E363322206865696768
          743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542
          22207472616E73666F726D3D226D617472697828342E3739333639452D313520
          31202D302E31383039393920322E3634383435452D31342031352E3032373520
          31342E3339393529222077696474683D22302E363322206865696768743D2231
          342E3036222F3E0D0A09093C2F673E0D0A3C672069643D225F32323339353831
          3331373832342220786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C726563742066696C6C3D22233744443145422220783D2234
          2E38312220793D22372E3835222077696474683D22322E353422206865696768
          743D22372E3138222F3E0D0A3C726563742066696C6C3D222337444431454222
          207472616E73666F726D3D226D617472697828342E3739333639452D31352031
          202D302E31383039393920322E3634383435452D313420372E33353335352031
          342E3339393529222077696474683D22302E363322206865696768743D223134
          2E3036222F3E0D0A3C726563742066696C6C3D22233744443145422220747261
          6E73666F726D3D226D617472697828342E3739333639452D31352031202D302E
          31383039393920322E3634383435452D313420372E333533343820372E383532
          313329222077696474683D22302E363322206865696768743D2231342E303622
          2F3E0D0A3C726563742066696C6C3D22233744443145422220783D22342E3831
          2220793D22372E3835222077696474683D22302E363322206865696768743D22
          372E3138222F3E0D0A09093C2F673E0D0A3C672069643D225F32323339353831
          3331373737362220786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C726563742066696C6C3D22233744443145422220783D2230
          2E39372220793D22392E39222077696474683D22322E35342220686569676874
          3D22352E3133222F3E0D0A3C726563742066696C6C3D22233744443145422220
          7472616E73666F726D3D226D617472697828342E3739333639452D3135203120
          2D302E31383039393920322E3634383435452D313420332E3531363538203134
          2E3339393529222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E
          73666F726D3D226D617472697828342E3739333639452D31352031202D302E31
          383039393920322E3634383435452D313420332E353136343720392E39303036
          3629222077696474683D22302E363322206865696768743D2231342E3036222F
          3E0D0A3C726563742066696C6C3D22233744443145422220783D22302E393722
          20793D22392E39222077696474683D22302E363322206865696768743D22352E
          3133222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2232
          2E38392220793D22392E39222077696474683D22302E36332220686569676874
          3D22352E3133222F3E0D0A09093C2F673E0D0A3C672069643D225F3232333935
          38313331393734342220786D6C3A73706163653D227072657365727665223E26
          2331333B262331303B3C726563742066696C6C3D22233744443145422220783D
          22382E36352220793D22342E3939222077696474683D22322E35342220686569
          6768743D2231302E3034222F3E0D0A3C726563742066696C6C3D222337444431
          454222207472616E73666F726D3D226D617472697828342E3739333639452D31
          352031202D302E31383039393920322E3634383435452D31342031312E313930
          362031342E3339393529222077696474683D22302E363322206865696768743D
          2231342E3036222F3E0D0A3C726563742066696C6C3D22233744443145422220
          7472616E73666F726D3D226D617472697828342E3739333639452D3135203120
          2D302E31383039393920322E3634383435452D31342031312E3139303520342E
          393835303629222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2238
          2E36352220793D22342E3939222077696474683D22302E363322206865696768
          743D2231302E3034222F3E0D0A3C726563742066696C6C3D2223374444314542
          2220783D22362E39322220793D22372E3835222077696474683D22302E363322
          206865696768743D22372E3138222F3E0D0A3C726563742066696C6C3D222337
          44443145422220783D2231302E35362220793D22342E3939222077696474683D
          22302E363322206865696768743D2231302E3034222F3E0D0A09093C2F673E0D
          0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
          233131373744373B7D262331333B262331303B2623393B2E5265647B66696C6C
          3A234431314331433B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
          74307B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C672069
          643D22486967685072696F72697479223E0D0A09093C7061746820636C617373
          3D22426C75652220643D224D362C3330483056323068365633307A204D31342C
          3134483876313668365631347A204D32322C38682D36763232683656387A204D
          33302C32682D36763238683656327A222F3E0D0A093C2F673E0D0A3C2F737667
          3E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D225072696F726974697A6564223E0D
          0A09093C7061746820636C6173733D225265642220643D224D31362C3330632D
          322E322C302D342D312E382D342D3473312E382D342C342D3473342C312E382C
          342C345331382E322C33302C31362C33307A204D31362C32632D322E322C302D
          342C312E382D342C346C322C31322E33683020202623393B2623393B63302E31
          2C312C312C312E382C322C312E3863312C302C312E392D302E382C322D312E38
          68304C32302C364332302C332E382C31382E322C322C31362C327A222F3E0D0A
          093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
end
