inherited FrmProducao_Roteiro_Pergunta: TFrmProducao_Roteiro_Pergunta
  Caption = 'Cadastro da F'#243'rmula do Produto Acabado'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      Properties.OnChange = edtCodigoPropertiesChange
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 726
      TabOrder = 22
      ExplicitLeft = 726
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 32
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 31
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 852
      Height = 577
      TabOrder = 30
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 852
      ExplicitHeight = 577
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 682
      TabOrder = 21
      ExplicitLeft = 682
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro da F'#243'rmula do Produto Acabado'
    end
    object edtClassificacao: TcxDBImageComboBox [24]
      Left = 463
      Top = 61
      AutoSize = False
      DataBinding.DataField = 'TIPO_PERGUNTA'
      DataBinding.DataSource = DS
      Properties.Images = ImgProduto_Tipo16x16
      Properties.Items = <
        item
          Description = 'Resposta em Texto'
          ImageIndex = 0
          Value = 'Resposta em Texto'
        end
        item
          Description = 'Check List'
          ImageIndex = 1
          Value = 'Check List'
        end
        item
          Description = 'Multipla Escolha'
          ImageIndex = 2
          Value = 'Multipla Escolha'
        end
        item
          Description = 'Escolha '#218'nica'
          ImageIndex = 3
          Value = 'Escolha '#218'nica'
        end>
      Properties.LargeImages = ImgProduto_Tipo32x32
      Style.HotTrack = False
      TabOrder = 19
      Height = 21
      Width = 162
    end
    object cxDBComboBox1: TcxDBComboBox [25]
      Left = 626
      Top = 61
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'ATIVO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 55
    end
    object edtObservacao: TcxDBMemo [26]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 26
      Visible = False
      Height = 577
      Width = 852
    end
    object GridConsulta: TcxGrid [27]
      Left = 13
      Top = 117
      Width = 852
      Height = 555
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
      LookAndFeel.NativeStyle = False
      object GridConsultaDBTableView1: TcxGridDBTableView
        DragMode = dmAutomatic
        Navigator.Buttons.CustomButtons = <>
        FindPanel.ClearFindFilterTextOnClose = False
        FindPanel.DisplayMode = fpdmManual
        FindPanel.InfoText = 'Pesquisa...'
        FindPanel.UseExtendedSyntax = True
        DataController.DataModeController.GridModeBufferCount = 50
        DataController.DataSource = DSProduto
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.OnBeforeChange = GridConsultaDBTableView1DataControllerFilterBeforeChange
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Grouping = dtgByDate
        FilterRow.InfoText = 'Click aqui para definir um filtro'
        NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
        OptionsBehavior.IncSearch = True
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 1
        OptionsView.GridLines = glNone
        OptionsView.GroupByHeaderLayout = ghlHorizontal
        OptionsView.RowSeparatorColor = clMoneyGreen
        OptionsView.RowSeparatorWidth = 1
        object GridConsultaDBTableView1COMPOSICAO: TcxGridDBColumn
          Caption = 'Composto'
          DataBinding.FieldName = 'TEM_COMPOSICAO'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = FrmPrincipal.ImgProduto
          Properties.Items = <
            item
            end
            item
              ImageIndex = 2
              Value = 'S'
            end
            item
              Value = 'N'
            end>
          Width = 22
        end
        object GridConsultaDBTableView1TEM_GRADE: TcxGridDBColumn
          Caption = 'Grade'
          DataBinding.FieldName = 'TEM_GRADE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = FrmPrincipal.cxImageList_Pequena
          Properties.Items = <
            item
            end
            item
              ImageIndex = 9
              Value = 'S'
            end
            item
              Value = 'N'
            end>
          Width = 34
        end
        object GridConsultaDBTableView1TEM_TABELA_PRECO: TcxGridDBColumn
          Caption = 'Tabela de Pre'#231'o'
          DataBinding.FieldName = 'TEM_TABELA_PRECO'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = FrmPrincipal.ImgProduto
          Properties.Items = <
            item
            end
            item
              ImageIndex = 3
              Value = 'S'
            end
            item
              Value = 'N'
            end>
          Width = 38
        end
        object GridConsultaDBTableView1TEM_FLUXO: TcxGridDBColumn
          Caption = 'Fluxo de Produ'#231#227'o'
          DataBinding.FieldName = 'TEM_FLUXO'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.DefaultImageIndex = 2
          Properties.Items = <
            item
            end
            item
              Description = 'FLUXO'
              ImageIndex = 0
              Value = 'S'
            end>
          Visible = False
        end
        object GridConsultaDBTableView1TEM_WIZARD: TcxGridDBColumn
          Caption = 'Wizard'
          DataBinding.FieldName = 'TEM_WIZARD'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <>
          Visible = False
        end
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Width = 79
        end
        object GridConsultaDBTableView1CODFABRICA: TcxGridDBColumn
          Caption = 'Cod.F'#225'brica'
          DataBinding.FieldName = 'CODFABRICA'
          Width = 83
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 300
        end
        object GridConsultaDBTableView1UNIDADE: TcxGridDBColumn
          Caption = 'UN'
          DataBinding.FieldName = 'UNIDADE'
          Width = 30
        end
        object GridConsultaDBTableView1ESTOQUE_P: TcxGridDBColumn
          Caption = 'Estoque'
          DataBinding.FieldName = 'ESTOQUE_P'
          Width = 65
        end
        object GridConsultaDBTableView1VALOR: TcxGridDBColumn
          Caption = 'R$ Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderImageIndex = 3
          Width = 93
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 30
        end
        object GridConsultaDBTableView1CODNF_NCM: TcxGridDBColumn
          Caption = 'NCM'
          DataBinding.FieldName = 'CODNF_NCM'
          Width = 90
        end
        object GridConsultaDBTableView1PRODUTO_TIPO: TcxGridDBColumn
          Caption = 'Tipo do Produto'
          DataBinding.FieldName = 'PRODUTO_TIPO'
        end
        object GridConsultaDBTableView1ESTRELA: TcxGridDBColumn
          Caption = 'Estrela'
          DataBinding.FieldName = 'ESTRELA'
          PropertiesClassName = 'TdxRatingControlProperties'
          Visible = False
          Width = 79
        end
        object GridConsultaDBTableView1PRODUTO_GRUPO: TcxGridDBColumn
          Caption = 'Grupo do Produto'
          DataBinding.FieldName = 'PRODUTO_GRUPO'
          Width = 152
        end
        object GridConsultaDBTableView1ESTOQUE_MIN: TcxGridDBColumn
          Caption = 'Estoque M'#237'n.'
          DataBinding.FieldName = 'ESTOQUE_MIN'
          Width = 71
        end
        object GridConsultaDBTableView1ESTOQUE_MAX: TcxGridDBColumn
          Caption = 'Estoque Max.'
          DataBinding.FieldName = 'ESTOQUE_MAX'
          Width = 80
        end
        object GridConsultaDBTableView1CATEGORIA: TcxGridDBColumn
          Caption = 'Categoria'
          DataBinding.FieldName = 'CATEGORIA'
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
        object GridConsultaDBTableView1DT_ULTIMA_COMPRA: TcxGridDBColumn
          Caption = 'Dt.Compra'
          DataBinding.FieldName = 'DT_ULTIMA_COMPRA'
          Width = 128
        end
        object GridConsultaDBTableView1LOCAL: TcxGridDBColumn
          Caption = 'Local de armazenagem do estoque'
          DataBinding.FieldName = 'LOCAL'
        end
        object GridConsultaDBTableView1FORNECEDOR: TcxGridDBColumn
          Caption = 'Fornecedor padr'#227'o'
          DataBinding.FieldName = 'FORNECEDOR'
          Width = 179
        end
        object GridConsultaDBTableView1COR: TcxGridDBColumn
          DataBinding.FieldName = 'COR'
          Visible = False
        end
        object GridConsultaDBTableView1LOCAL_APLICACAO: TcxGridDBColumn
          Caption = 'Local de Aplica'#231#227'o'
          DataBinding.FieldName = 'LOCAL_APLICACAO'
          Visible = False
        end
        object GridConsultaDBTableView1CLASSIFICACAO: TcxGridDBColumn
          Caption = 'Classifica'#231#227'o'
          DataBinding.FieldName = 'CLASSIFICACAO'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <>
        end
        object GridConsultaDBTableView1CustoRef: TcxGridDBColumn
          Caption = 'Refer'#234'ncia'
          DataBinding.FieldName = 'CustoRef'
        end
        object GridConsultaDBTableView1CALC_PACRESC_PRAZO: TcxGridDBColumn
          AlternateCaption = 'CALC_PACRESC_PRAZO'
          Caption = 'Acr'#233'scimo Prazo'
          DataBinding.FieldName = 'PACRESC_PRAZO'
          Visible = False
        end
        object GridConsultaDBTableView1CALC_PDESC_ATACADO: TcxGridDBColumn
          Caption = 'Desconto Atacado'
          DataBinding.FieldName = 'CALC_PDESC_ATACADO'
          Visible = False
        end
        object GridConsultaDBTableView1CALC_VPRAZO: TcxGridDBColumn
          Caption = 'R$ Prazo'
          DataBinding.FieldName = 'CALC_VPRAZO'
          Visible = False
        end
        object GridConsultaDBTableView1CALC_VATACADO: TcxGridDBColumn
          Caption = 'R$ Atacado'
          DataBinding.FieldName = 'CALC_VATACADO'
          Visible = False
        end
        object GridConsultaDBTableView1CUSTO: TcxGridDBColumn
          Caption = 'R$ Custo'
          DataBinding.FieldName = 'CUSTO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VALOR_COMPRA: TcxGridDBColumn
          Caption = 'R$ Valor_Venda'
          DataBinding.FieldName = 'VALOR_COMPRA'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object GridConsultaDBLayoutView1: TcxGridDBLayoutView
        Navigator.Buttons.CustomButtons = <>
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
        object GridConsultaDBLayoutView1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Relat'#243'rio'
        GridView = GridConsultaDBTableView1
      end
    end
    object edtFilterCaption: TcxDBTextEdit [28]
      Left = 38
      Top = 673
      DataBinding.DataField = 'FILTER_CAPTION'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 24
      Width = 360
    end
    object edtFilterText: TcxDBTextEdit [29]
      Left = 465
      Top = 673
      AutoSize = False
      DataBinding.DataField = 'FILTER_TEXT'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 25
      Height = 21
      Width = 397
    end
    object edtCheckListAssunto: TcxTextEdit [30]
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 27
      Visible = False
      Width = 776
    end
    object btnAdicionarCheckList: TButton [31]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 35
      Caption = 'Add'
      TabOrder = 28
      Visible = False
      OnClick = btnAdicionarCheckListClick
    end
    object GridCheckList: TcxGrid [32]
      Left = 10000
      Top = 10000
      Width = 852
      Height = 541
      TabOrder = 29
      Visible = False
      object GridCheckListDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSProduto_Roteiro_Ficha_Tecnica
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        ConditionalFormatting = {
          010000000A000000310000005400640078005300700072006500610064005300
          680065006500740043006F006E0064006900740069006F006E0061006C004600
          6F0072006D0061007400740069006E006700520075006C006500450078007000
          720065007300730069006F006E0095000000020000000000000002000000FFFF
          FF7F00011B0000FF0B00000007000000430061006C0069006200720069000008
          0000000020000000200000000020000000002000000000200000000020000700
          0000470045004E004500520041004C0000000000000200000000000000000110
          0000003D005B0043006F006E0063006C007500ED0064006F005D003D00220053
          00220000000000}
        object GridCheckListDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          Width = 30
        end
        object GridCheckListDBTableView1TEM_OBRIGATORIO: TcxGridDBColumn
          Caption = 'Obrigat'#243'rio'
          DataBinding.FieldName = 'TEM_OBRIGATORIO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 59
        end
        object GridCheckListDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Assunto'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 421
        end
        object GridCheckListDBTableView1PODE_CHECAR: TcxGridDBColumn
          Caption = 'Conclu'#237'do'
          DataBinding.FieldName = 'PODE_CHECAR'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Visible = False
          Width = 59
        end
        object GridCheckListDBTableView1CODPRODUCAO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUCAO'
          Visible = False
        end
        object GridCheckListDBTableView1CODPRODUCAO_OS: TcxGridDBColumn
          Caption = 'C'#243'digo da Equipe'
          DataBinding.FieldName = 'CODPRODUCAO_OS'
          Visible = False
          Width = 97
        end
      end
      object GridCheckListLevel1: TcxGridLevel
        GridView = GridCheckListDBTableView1
      end
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 10
    end
    inherited LiedtDescricao: TdxLayoutItem
      CaptionOptions.Text = 'Descri'#231#227'o da Pergunta (?)'
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 4
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = dxLayoutGroup1
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Tipo de Pergunta'
      CaptionOptions.Layout = clTop
      Control = edtClassificacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 162
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Perguntas'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      UseIndent = False
      Index = 3
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Produtos e Servi'#231'os'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Data e Hora'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Check List'
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Obrigat'#243'ria'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LiedtObservacao: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtObservacao
      ControlOptions.OriginalHeight = 122
      ControlOptions.OriginalWidth = 258
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridConsulta
      ControlOptions.OriginalHeight = 238
      ControlOptions.OriginalWidth = 894
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Filtro'
      Control = edtFilterCaption
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Filtro Campos'
      Control = edtFilterText
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 397
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o do Item da Ficha T'#233'cnica'
      CaptionOptions.Layout = clTop
      Control = edtCheckListAssunto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 553
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAdicionarCheckList
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      Control = GridCheckList
      ControlOptions.OriginalHeight = 423
      ControlOptions.OriginalWidth = 776
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup5
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmProducao_Roteiro_Pergunta'
    FormClassConsulta = 'TConsuProducao_Roteiro_Pergunta'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * From Producao_Roteiro_Pergunta'
      'where CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUCAO_ROTEIRO'
    Modulo = 'PRODUCAO'
  end
  object ImgProduto_Tipo32x32: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    Left = 471
    Top = 175
    Bitmap = {
      494C01010E001100040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000008000000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000010000000600000334120E4FC80000023400000006000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001000000010000000100000000000000000000
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
      00010000000500000334221F7CE8434FCAFF181567E800000235000000060000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000100000004000000050000000400000001000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00050000033224207CE74C5BD6FF4557DDFF4757D2FF19186AEA000002340000
      0006000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000100000002000000060000000F000000150000000F00000007000000020000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000050000
      033126247EE75160D8FF485BDFFF4558DEFF465ADFFF4B5CD5FF1A186BEA0000
      0233000000050000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010000000500000012130B0666A8643AFF1109056600000012000000050000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000040000032F2925
      80E65767DAFF4D60E1FF4A5DDFFF495CDFFF495CDFFF4A5DDFFF505FD6FF1C1A
      6DEA000002310000000500000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00030000000C0100002C8E5936EBD2A46DFF814A2BEC0100002D0000000C0000
      0003000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000040000032D2C2982E65D6D
      DCFF5366E3FF4F63E1FF4E62E1FF4D62E1FF4D61E1FF4C60E0FF4E62E1FF5363
      D8FF1C1B6EE90000023100000005000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0007000000173C2516A4C49160FFD5A870FFBB8656FF381F12A7000000180000
      0007000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000100032B2F2C84E57A8BE3FF8697
      EDFF8596EDFF7689EBFF5367E2FF5366E2FF5266E3FF6578E6FF7384E9FF7E8F
      ECFF7281DFFF211F6FE90000022F000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      000F0A06034EB2784FFDD8AD77FFD4A86EFFD6AB75FFA46740FD090503500000
      0010000000040000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000494A99E06061C7FF6060C7FF5F60
      C7FF443DB1FF7B8EEBFF576CE4FF566BE4FF566AE4FF6A7DE8FF3B33AAFF5C5C
      C3FF5C5BC3FF5B5BC3FF48479AE4000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000090000
      001D754C30D6D2A877FFD6AB73FFD5A971FFD6AA72FFCD9F6CFF6D4126D90000
      001F000000090000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000600000008000000090000
      00104742B4FF8193ECFF5C71E5FF5B71E5FF5B70E5FF6F84E8FF3E37ADFF0000
      00130000000B0000000B00000008000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000005000000112519
      1083C49366FFDAB07CFFD6AB73FFD6AA73FFD6AA72FFD8AE78FFBA8356FF2415
      0C87000000130000000500000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00084A45B8FF8899EEFF6277E7FF6076E6FF6075E6FF7589EAFF403AAFFF0000
      000A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000020000000B03020135AB75
      50F6DCB687FFD8AD77FFD7AD76FFD7AD75FFD6AC74FFD6AB74FFD8AF7CFF9D64
      3EF7030201370000000C00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00074E49BAFF8C9DEEFF667CE8FF667BE8FF657AE8FF7B8FECFF433DB2FF0000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000600000013593C28BBD4AB
      81FFDAB37EFFD8AF78FFD9AF77FFD8AE77FFD7AD76FFD8AD76FFDAAF7AFFCB9D
      6EFF53331FBE0000001600000007000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0006504DBCFF8FA2F0FF6B81EAFF6B80EAFF6A80EAFF8194EEFF4641B5FF0000
      0007000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000030000000C130D0960C5946CFFDFBC
      8CFFD9B17BFFD9B17AFFD9B17AFFD9B079FFD8AF79FFD8AF78FFD8AE78FFDCB6
      82FFB68157FF140C07660000000E000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00055350BFFF94A6F1FF6E85EBFF6E85EBFF6D84EBFF8499EFFF4944B7FF0000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000020000000701000020996E4DE9E0C097FFDBB5
      80FFDAB27DFFDAB27CFFDAB27CFFDAB27CFFDAB17BFFD9B07AFFD9B079FFD9B0
      7BFFD8B282FF8D5D3DEA01000023000000080000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00045754C2FFA2B2F3FFA1B0F3FFA1B0F3FFA0B0F3FFA0B0F3FF4C48BAFF0000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000040000000E3E2C1F9BD4AE89FFDFBB8CFFDBB5
      80FFDBB581FFDBB581FFDBB480FFDBB47EFFDAB47DFFDAB37DFFD9B27CFFDAB1
      7BFFDCB684FFC99A6FFF3C27199F000000110000000500000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002383A6DB9696BCFFF686BCFFF686ACEFF686ACEFF676ACEFF35376BBA0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000020000000909060442C1956FFDE5C89EFFDCB784FFDCB7
      84FFDDB683FFDCB783FFDCB682FFDCB682FFDBB581FFDBB580FFDAB380FFDAB3
      7DFFDAB27CFFDEBC8CFFB38056FD090503460000000B00000002000000000000
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
      0000000000010000000500000012805D43D3E2C5A2FFDFBD8CFFDEBB88FFE1C0
      90FFE3C594FFE4C594FFE4C796FFE5C796FFE3C493FFE2C190FFE0BE8DFFDEBA
      88FFDBB481FFDBB582FFD9B287FF795136D60000001600000006000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00030000000B00000011000000130000001300000013000000120000000C0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000020000000500000003000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000300000009261C1579D4B08DFFE6CBA2FFE6CB9BFFE8CEA0FFE8CE
      A0FFE7CD9FFFE7CC9DFFE7CC9DFFE6CA9BFFE6C999FFE5C898FFE4C696FFE4C5
      95FFE3C393FFE0BF8DFFE1BF90FFC79A6FFF261A117E0000000C000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A103324C31E5D42FF1E5C41FF1E5C40FF1D5B41FF1E5B40FF0F3223C30000
      000B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000007173F85E30001022D000000030000
      0001000000000000000000000000000000000000000000000000000000000000
      00010000000503020128B78E6DF5EEDBBBFFEBD4A7FFEAD2A5FFEAD2A5FFEAD1
      A4FFE9D1A3FFEAD0A2FFE9CFA2FFE8CEA0FFE7CD9EFFE7CB9CFFE7CA9BFFE6C9
      99FFE4C797FFE4C695FFE3C594FFE5C89EFFAC7B57F60302012C000000070000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000F2A7356FF71D7BAFF53CAA6FF51CAA5FF51C9A4FF51C9A4FF297053FF0000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000091E52AAFF16397AE80001022D0000
      0003000000010000000000000000000000000000000000000000000000000000
      0002000000075F4735B3EAD8C5FFFBF6ECFFFAF6EBFFFAF6EBFFFAF6EAFFF6ED
      D7FFECD4A8FFEBD3A6FFEAD3A6FFE9D2A4FFE9D0A3FFE8CFA1FFE8CE9FFFEEDA
      B7FFF6EBD6FFF8F1E2FFF8F0E0FFF8EFDFFFE4CDB5FF5B402CB8000000090000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000E2B7658FF75D8BCFF45C59DFF45C59DFF44C49CFF53CBA7FF297355FF0000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000081F55ABFF63AFE2FF153779E70001
      032C000000030000000100000000000000000000000000000000000000000000
      000100000006C89A72FFC79972FFC69871FFC69870FFC5976FFFC5976FFFF8EF
      DBFFEDD8ACFFEDD7ABFFECD6A9FFECD5A9FFEBD4A7FFEAD2A5FFEAD1A4FFF0DE
      BCFFC18F68FFC18E66FFC18E66FFC08D65FFBF8D65FFBF8C64FF000000080000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000D2B785AFF78DABEFF47C59FFF46C69EFF46C69EFF57CCA9FF2A7558FF0000
      000F000000000000000000000000000000000000000000000005000000070000
      00080000000800000008000000080000000F2056ADFF72C3EFFF53A7DFFF1538
      79E70001032C0000000300000001000000000000000000000000000000000000
      00010000000300000006000000090000000A0000000C00000011C79972FFF9F0
      DEFFEEDBB0FFEEDAAEFFEED9AEFFEED8ACFFEDD7ABFFECD6AAFFEBD4A8FFF2E1
      C1FFB8835CFF000000150000000F0000000D0000000C00000008000000040000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000C2C7B5DFF7BDBC1FF49C7A1FF49C7A0FF48C7A0FF5ACEACFF2B785AFF0000
      000E00000000000000000000000000000000000000000D2650BC194AA0FF1849
      9EFF18489DFF18489EFF18479DFF18469CFF2058AEFF66BDEEFF56B3EBFF57AA
      E1FF163A7BE70001032B00000003000000010000000000000000000000000000
      000000000001000000010000000200000002000000040000000AC99D76FFF9F3
      E2FFF1DEB4FFF0DDB3FFF0DDB1FFEFDCB1FFEEDAAFFFEED9ADFFEDD8ACFFF3E5
      C6FFBA865FFF0000000D00000005000000030000000200000002000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B2D7E5FFF7EDBC1FF4BC8A2FF4BC8A1FF4AC8A1FF5DCFAEFF2B7B5DFF0000
      000D00000000000000000000000000000000000000002461AEFF89D1F4FF75C7
      F2FF73C7F0FF71C4F1FF71C4F0FF6FC3F0FF6EC2F0FF6CC1F0FF5AB7ECFF5BB7
      EDFF5CADE2FF173A7CE70001032B000000030000000000000000000000000000
      0000000000000000000000000000000000000000000200000008CA9F78FFFAF5
      E6FFF2E1B8FFF1E0B7FFF1DFB5FFF0DEB4FFF0DDB2FFEFDCB1FFEFDAB0FFF4E7
      CAFFBB8A63FF0000000A00000003000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000007000000090000000A0000
      00112E8362FF82DDC4FF4DC9A4FF4CC9A3FF4CC9A3FF61D0B0FF2D7E5FFF0000
      00150000000C0000000C0000000900000002000000002766B2FF8FD5F5FF68C3
      F1FF67C2F0FF66C1F0FF64C0EFFF63C0EFFF62BFEFFF61BEEEFF5FBCEFFF5EBB
      EEFF60BCEEFF60B1E3FF193D7DE70001022A0000000000000000000000000000
      0000000000000000000000000000000000000000000200000007CCA27BFFFBF6
      E7FFF3E3BAFFF3E3BAFFF2E2B9FFF2E1B8FFF2E0B6FFF1DEB5FFF0DDB3FFF5EA
      CDFFBF8D65FF0000000900000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C583FE0237352FF237152FF2270
      51FF2F8565FF66D4B5FF4ECBA6FF4ECBA5FF4ECAA5FF64D3B2FF2E8262FF226B
      4DFF216A4DFF21694DFF1B533CE40000000600000000286AB4FF95DAF7FF6EC9
      F3FF6DC8F1FF6DC7F3FF6BC5F1FF69C4F0FF69C4F0FF67C3F0FF66C1F0FF65C0
      EFFF63BFF0FF68C2F0FF6EB4E3FF143669C70000000000000000000000000000
      0000000000000000000000000000000000000000000100000006CDA47DFFFCF7
      E9FFF4E6BEFFF4E5BDFFF3E5BCFFF3E3BAFFF3E3B9FFF2E1B8FFF1E0B6FFF7EC
      D2FFC09168FF0000000800000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002012732785FE592DBC6FF8AE0
      C9FF6FD8B9FF6AD5B7FF51CCA7FF50CCA7FF50CBA7FF67D4B6FF66D4B4FF69D4
      B6FF77D1B6FF2A644EE80002012A00000003000000002C70B8FF9CDEF8FF75CE
      F4FF74CDF4FF73CDF4FF72CBF4FF70CBF3FF6FC9F3FF6EC8F1FF6DC8F3FF6BC7
      F1FF6EC6F1FF7EC6ECFF275493E6000102260000000000000000000000000000
      0000000000000000000000000000000000000000000100000005CFA680FFFCF8
      ECFFF5E8C0FFF5E8C0FFF5E6BFFFF5E6BDFFF4E5BCFFF3E4BBFFF3E2B9FFF7EE
      D4FFC1936BFF0000000700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000200020126327A61E591DC
      C6FF76D9BEFF58CFACFF53CEA9FF52CDA9FF53CDA8FF51CDA8FF59CFACFF78D1
      B9FF2D6651E7000201290000000300000000000000002E75BBFFAFE7FBFFAEE6
      FAFFADE5FAFFACE5F9FFABE4F9FFAAE2F9FFA8E2F9FF99DBF8FF74CDF4FF76CE
      F4FF87CAEFFF285796E600010226000000020000000000000000000000000000
      0000000000000000000000000000000000000000000100000003CFA983FFFEFC
      F6FFFEFCF6FFFDFCF6FFFDFCF5FFFDFBF4FFFDFBF4FFFDFBF4FFFDFBF4FFFDFB
      F3FFC3956EFF0000000500000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000200020125357C
      62E493DDC8FF78DABFFF59D1AEFF54CFAAFF54CEAAFF5BD0AEFF7BD3BBFF2E6B
      52E700020128000000030000000000000000000000001B436AC03684C6FF3683
      C5FF3582C5FF3582C4FF3481C4FF3481C4FF3480C3FF9FE0F8FF7DD5F5FF8DCF
      F0FF2B5A96E60001032500000002000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000026C5744B8D0A9
      85FFD1A984FFD0A984FFD0A883FFD0A883FFD0A882FFCFA882FFCFA782FFCEA6
      81FF664E3AB90000000300000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010002
      0124367D64E495DDCAFF7ADCC0FF5BD1AEFF5ED1B0FF80D4BCFF2D6D53E60002
      0126000000020000000000000000000000000000000000000003000000040000
      0004000000040000000400000004000000083683C6FFA8E5FAFF94D4F1FF2C5D
      98E6000102240000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000020000
      0002000000030000000300000003000000030000000300000003000000030000
      0003000000020000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000100020123378065E495DDCBFF83DFC5FF84D7BFFF2F7157E6000201240000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000043887C8FFA3DAF3FF2D609AE60001
      0223000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000001000000010000000100000001000000010000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000100020122368067E38DD5C1FF307357E400020123000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000004398BC9FF30639AE4000103230000
      0001000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000001000201211D5541BF0002012200000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000022D6B9BDF00010222000000010000
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
      00000000000000000000135701C0229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF166101CA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000030000000D000000190000001A0000000E0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D0917288C184A96F6184995F60816278D0000
      000E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000172661ABFFD6EDF7FF5CB1E5FF215BA5FF0000
      0019000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000019245EA9FFC1E6F5FF55AEE3FF1F57A3FF0000
      001B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000052F458500000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0823007A0823007A229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000017225BA7FFABE2F6FF4CABE4FF1E55A2FF0000
      0019000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF052F4585000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF0823007A00000000000000000823007A229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000020000001B215AA6FF8FD6F4FF44A5E1FF1D53A1FF0000
      001E000000020000000000000000000000000000000C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF052F45850000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF0823
      007A000000000000000000000000000000000823007A229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000005000000160815278A2159A6FF76CAEEFF3AA0DEFF1D52A1FF0410
      228D000000180000000600000001000000000C07003E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF052F
      45850000000000000000229C02FF229C02FF229C02FF229C02FF0823007A0000
      000000000000000000000000000000000000000000000823007A229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00050001022D1B4573D03A81C4FF4D96D2FF49A1D9FF3492D1FF2E7DC6FF2364
      B0FF0D2F60D20001023100000007000000014425059000000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E3C08B703020022000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF0823007A000000000000
      000000000000092A0085092A00850000000000000000000000000823007A229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000040102
      04332B68A3EE559FD6FF7BC0E8FF93CFEFFF5ABFE9FF40ADDFFF3187CEFF3385
      D2FF3081C9FF184A8CEF00020439000000053C2104874C2A0598000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFC76D0FF52E1A03770000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF092A0085000000000000
      0000092A0085229C02FF229C02FF092A00850000000000000000000000000823
      007A229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010000000100000001000000010000000100000001000000020000000B1D49
      71C961ACDDFF86CDEFFFC3EAF9FFA8E2F8FF6ACFF0FF46BAE6FF388FD4FF2E79
      CBFF3B92DBFF358ACFFF123462CD0000000F11090149D77610FF4A2905970000
      0005000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF9250
      0BD20A0600390000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF092A0085092A
      0085229C02FF229C02FF229C02FF229C02FF092A008500000000000000000000
      00000823007A229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F000000000000000000000000000000000000000300000004000000040000
      0004000000040000000400000005000000050000000500000005000000050000
      0005000000050000000500000005000000050000000500000006040B11544892
      CCFF8BD2F1FFBAE9F9FFE2F7FDFFAFE7F9FF71D4F2FF49BFE8FF3E98D8FF2A72
      C8FF3386D2FF42A2E2FF296FBAFF0308105A00000008C36C0FF3D77610FF8D4D
      0BCF0B06003C0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD37410FD4C29059700000010000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF092A0085000000000000
      0000000000000823007A229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F000000000000000000000000000000000000000A0000000E000000100000
      0010000000110000001100000011000000110000001200000012000000120000
      0012000000120000001300000013000000130000001300000010163751AC6AB6
      E1FF99E1F7FFDFF7FDFFF5FCFFFFB1EBFBFF75D7F3FF4CC5EAFF46A2DEFF2971
      C6FF2E79CBFF43A2E4FF3791D4FF0E2849AE00000000532D069FD77610FFD776
      10FFD77610FF7B4309C11D10025E000000100000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFB0610DE7190D02570000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF092A00850000
      000000000000092A0085229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F000000000000000000000000000000005D463EBDB08575FFB18574FFB184
      74FFB08474FFB08373FFB08473FFB08373FF1E52A2FF1E51A1FF1F50A0FF1E50
      A1FF1E4FA0FF1E4FA0FF1E4FA0FF1D4FA0FF1D4E9FFF050F1E743379B3F491D5
      F2FFC5EFFBFFF1FCFEFFEBFAFDFFE4F9FDFFDFF8FDFFDAF7FDFFD5F6FDFFC7EC
      F9FFA1D1EEFF86CBF1FF4EADE5FF1E5293EC0000000008040034D77610FFD776
      10FFD77610FFD77610FFD77610FFD07210FB84480AC847270593221302660F08
      01440503002A020100190000000C0000000BD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF6E3C08B703020022000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF092A
      0085092A0085229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B38777FFFBF7F5FFF9F3F1FFFAF4
      F0FFF9F4F0FFFAF3F0FFFAF4F0FFFAF3F0FF3066AFFF50ACE6FF4EABE6FF4DAA
      E6FF4DAAE6FF4CA9E5FF4AA8E5FF49A8E4FF48A6E4FF0D1E2A713B8BC8FFF2FA
      FDFFB9C6E2FF6784C0FF3B63B1FF0E42A4FF1350ADFF1A5FB8FF2370C1FF519C
      D6FF75BBE6FFAAE0F4FFC5F0FBFF2564AFFE0000000000000000683908B2D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFC76D0FF52E1A03770000
      0005000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B48979FFFCF7F6FFF9F2EEFFF9F2
      EEFFF9F2EEFFF9F2EEFFF9F2EEFFF8F2EDFF2054A3FF56AFE6FF3EA1E2FF3EA1
      E3FF3D9FE2FF3B9FE2FF3B9EE1FF3A9DE1FF399CE1FF0F2A3C86163952A3448C
      BFF693C7E7FFC7E6F4FFE4F4FBFFE8F7FCFFF4FCFEFFEFFBFDFFD6F2FAFFCAEB
      F8FFA6D6EFFF70AFDCFF2E68A6F1050D1764000000000000000004020024C76D
      0FF5D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF9250
      0BD20A0600390000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B58B7BFFFCF8F7FFF9F2EFFFF9F2
      EFFFF9F2EFFFF9F3EEFFF9F2EEFFF9F2EEFF2157A5FF5CB3E8FF43A5E4FF42A4
      E4FF41A3E3FF40A2E3FF3EA2E3FF3DA0E2FF3DA0E2FF358CC7F0173E5AA20C20
      2E77132E49A43C627EC93D75A0E43B78A8EC3785C4FF3581C2FF366FA5EC3468
      99E52C4869CB06101A6900000017000000040000000000000000000000002112
      0264D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD37410FD4C29059700000010000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F0C0C0C550000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000000000
      000000000000000000000B0B0B4F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B68D7DFFFCF8F7FFF9F3EFFFFAF3
      EFFFFAF3EFFFF9F3EFFFF9F3EFFFFAF2EFFF235AA7FF61B7EAFF48A9E5FF47A8
      E5FF45A6E4FF44A6E4FF43A5E4FF42A4E3FF41A2E3FF40A2E3FF3EA2E2FF3485
      BDE9112D56BA5C59589B4946468A403F3E832D2B2B6D2D2B2B6D403F3E834947
      468A40302A9B0000000C00000004000000000000000000000000000000000000
      00004023048BD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFB0610DE7190D02570000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000114E01B5229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF135701C000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0303032A00000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000000000
      000000000000020202251C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B88F80FFFCF9F7FFFAF3EFFFFAF3
      F0FFF9F4F0FFAD9C96FFFAF4EFFFF9F3EFFF245DA9FF66BBEBFF4DACE7FF4BAB
      E7FF4BAAE6FF49A9E6FF48A8E5FF46A7E5FF45A6E5FF44A6E4FF44A4E4FF42A3
      E4FF2157A5FFF9F3EEFFF8F2EEFFAA9993FFF9F2EDFFF8F1EEFFF8F2EDFFF9F4
      F0FFB18574FF0000001000000004000000000000000000000000000000000000
      000000000000361E0481D57610FED77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFA65C0DE1130A014D0000000000000000000000000000
      0000000000000000000000000000052F458514B1FFFF14B1FFFF14B1FFFF14B1
      FFFF052F45850000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F171717740000000B000000005730
      07A3D77610FFD77610FFD77610FFD77610FFD77610FFD77610FF5F3407AA0000
      000000000008161616721C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B99182FFFCF9F8FFF9F4F0FFFAF3
      F0FFAF9F98FF664C41FFFAF4F0FFFAF4F0FF2660ABFF6CBEEDFF52B0E8FF51AF
      E8FF50AEE8FF4EADE7FF4DACE7FF4CABE6FF4BAAE5FF49AAE5FF48A9E5FF46A8
      E5FF235AA7FFF9F3EFFFF9F2EFFF5F463CFFAC9B94FFF9F2EFFFF9F2EEFFFAF4
      F0FFB28777FF0000000F00000004000000000000000000000000000000000000
      00000000000000000000120A014AA95C0DE2D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD07210FB4124048D0000000B000000000000000000000000000000000000
      00000000000000000000052F458514B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF052F458500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0C0C0C54000000000100
      0012AF600DE6D77610FFD77610FFD77610FFD77610FFB4630EEA010000150000
      00000A0A0A4E1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000BA9384FFFCFAF9FFFAF4F1FFB2A2
      9CFF6A5046FF6A5046FFFAF4F1FFFAF4F1FF2864AEFF71C2EEFF58B5EAFF56B4
      E9FF54B2E9FF53B1E9FF53B0E8FF50AFE8FF50AEE7FF4FADE7FF4DACE6FF4BAB
      E6FF255DA9FFF9F3F0FFFAF2EFFF634A40FF634A40FFAE9D96FFF9F3EFFFFBF5
      F1FFB48878FF0000000E00000004000000000000000000000000000000000000
      00000000000000000000000000000000000A2B180373A2580CDDD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF864A
      0ACA070400310000000000000000000000000000000000000000000000000000
      000000000000052F458514B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF052F4585000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F020202280000
      0000140A014ED77610FFD77610FFD77610FFD77610FF170D0155000000000202
      02231C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000BD9586FFFCFAF9FFD7CCC6FF6F55
      4AFF6F544AFF6E544AFFFBF4F2FFFAF5F2FF2967B0FF76C7EFFF5DB9ECFF5CB8
      EBFF5AB6EAFF59B5EAFF57B4E9FF56B3E9FF54B2E9FF54B1E8FF52B0E8FF50AF
      E7FF2660ACFFFAF4F0FFFAF4F0FF684E44FF684D44FF674E43FFD3C9C3FFFAF5
      F2FFB58A7AFF0000000D00000003000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000010A050037311B
      037B653808AF95510BD4B8650EECC56C0FF4D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFC06A0FF12715026D0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000052F458514B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF052F45850000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F171717740000
      000A00000000573007A3D77610FFD77610FF5F3407AA00000000000000071616
      16711C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000BD9789FFFDFAF9FFFAF6F3FFB8A9
      A2FF745A4FFF73594EFFFBF5F2FFFAF5F2FF2B6BB2FF7CCAF1FF63BDEDFF61BB
      EDFF60BAECFF5EB9ECFF5DB9ECFF5CB8EBFF5AB6EBFF59B5EAFF58B4EAFF56B3
      E9FF2864ADFFFAF4F0FFFAF4F0FF6C5248FF6D5247FFB4A49DFFFAF4F0FFFBF6
      F2FFB78D7CFF0000000C00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF623607AC0201001B000000000000
      000000000000000000000000000000000000000000000000000000000000052F
      458514B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052F458500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0B0B
      0B530000000001000012AF600DE6B4630EEA01000015000000000A0A0A4E1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000BF988BFFFDFAF9FFFBF6F3FFFAF6
      F2FFBAABA4FF785E53FFFAF6F3FFFBF6F2FF2D6FB5FF82CEF2FF68C1EFFF66C0
      EEFF65BEEEFF64BEEDFF62BDEDFF61BCEDFF5FBBECFF5EBAEBFF5DB9ECFF5CB8
      EBFF2968B0FFFAF4F1FFFBF5F1FF71574CFFB7A79FFFFAF5F0FFFAF4F1FFFBF6
      F2FFB88E7EFF0000000B00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFA65C0DE1130A014D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000052F458514B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052F4585000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0202022800000000140A014E170D015500000000020202231C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000C09A8DFFFDFAF9FFFBF7F4FFFBF6
      F3FFFBF6F3FFBDADA6FFFBF6F3FFFBF6F3FF2F73B7FF87D2F4FF6DC5F0FF6DC4
      F0FF6BC3EFFF69C2EFFF68C1EFFF66C0EFFF66BFEEFF64BEEDFF62BCEDFF61BC
      EDFF2B6CB3FFFAF5F1FFFAF5F1FFB9A9A2FFFAF5F1FFFAF5F2FFFBF5F1FFFBF7
      F3FFB99081FF0000000A00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD07210FB4124048D0000000B000000000000000000000000000000000000
      00000000000000000000000000000000000000000000052F458514B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052F45850000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1616167300000009000000000000000000000007151515701C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000C29D8FFFFDFBF9FFFCF6F4FFFBF7
      F4FFFBF6F4FFFBF6F4FFFBF6F4FFFBF6F3FF3177BAFF8BD5F5FF73C9F1FF72C9
      F2FF70C7F1FF6FC7F1FF6EC5F0FF6CC4F0FF6BC3F0FF69C2EEFF68C1EEFF67BF
      EEFF2D70B5FFFBF6F2FFFBF5F2FFFBF5F2FFFBF5F2FFFBF5F2FFFAF5F2FFFBF7
      F3FFBA9284FF0000000900000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF864A
      0ACA070400310000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000052F458514B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052F
      4585000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F0B0B0B5100000000000000000A0A0A4C1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000C49E90FFFDFCFAFFFBF8F5FFFBF7
      F4FFFCF7F4FFFCF7F5FFFBF6F5FFFBF7F4FF337BBCFF90D8F6FF78CEF3FF77CD
      F3FF75CCF2FF74CAF2FF74CAF2FF72C9F1FF70C8F1FF6FC7F1FF6EC5F0FF6CC4
      F0FF2F74B7FFFBF5F3FFFBF5F3FFFBF5F2FFFBF6F2FFFBF6F2FFFBF6F3FFFCF7
      F4FFBC9585FF0000000900000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFC06A0FF12715026D0000
      0003000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F02020227010101221C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000C4A092FFFDFCFAFFFCF8F5FFFCF8
      F6FFFCF7F5FFFCF7F5FFFCF7F5FFFBF7F5FF3580BFFF94DBF8FF7ED2F5FF7DD1
      F5FF7CD0F5FF7ACFF3FF79CEF4FF77CDF3FF76CBF2FF75CBF2FF73CAF1FF71C8
      F1FF3277BAFFFBF7F4FFFBF6F3FFFBF6F4FFFBF6F3FFFBF6F3FFFBF6F3FFFCF7
      F5FFBD9688FF0000000700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000623607AC0201001B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F16161673151515701C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000C6A294FFFDFCFBFFFDFCFBFFFDFC
      FBFFFDFCFBFFFDFCFAFFFDFCFAFFFDFCFAFF6DACD8FFC0ECFBFFBEECFAFFBEEB
      FAFFBDEBFAFFBCEAFAFFBBE9FAFFB9E8F9FFB8E8F9FFB6E6F9FFB5E6F9FFB4E6
      F9FF65A5D2FFFDFAF9FFFDFAF9FFFDFAF9FFFDFBF9FFFCFBF9FFFCFBF9FFFCFB
      F8FFBF9889FF0000000600000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F000000000000000000000000000000006E5952BEC6A395FFC7A395FFC7A2
      95FFC6A294FFC6A294FFC5A194FFC6A193FF4096CDFF3F96CDFF3E94CCFF3E93
      CCFF3E92CBFF3E91CAFF3D90C9FF3C8FC9FF3C8EC8FF3B8DC8FF3A8CC7FF3A8A
      C6FF398AC6FFC29C8EFFC29C8EFFC29B8EFFC19C8DFFC19B8DFFC09A8CFFC09B
      8CFF6A554CBF0000000400000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F000000000000000000000000000000000000000100000002000000020000
      0002000000020000000200000002000000020000000300000003000000030000
      0003000000030000000300000003000000030000000300000004000000040000
      0004000000040000000400000004000000050000000500000005000000050000
      0004000000030000000100000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000144545
      45C7343434AD0000000700000000000000000000000000000000000000000000
      0000484848CC717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF5050
      50D6000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000144B4B4BD07171
      71FF717171FF363636B200000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      03220606307C0F0F74BE1717AFEA1B1BCFFE1B1BD0FE1717B2EB0F0F77C10606
      337F000004250000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000484848CC717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF505050D600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000144B4B4BD0717171FF7171
      71FF717171FF4A4A4ACF00000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000031F0B0B5BA91B1B
      CDFD1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BCFFE0C0C61AE00000323000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000144B4B4BD0717171FF717171FF7171
      71FF4B4B4BD00000001400000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030318581919BDF31B1BD1FF1A1A
      C3F70B0B53A10202144F0000021A0000000100000001000001180202124C0A0A
      4F9D1919C1F51B1BD1FF1919C1F504041D610000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B
      4BD0000000140000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050528701B1BCFFE1B1BD1FF0B0B5CA90000
      021A000000000000000000000000000000000000000000000000000000000000
      0000000001170B0B54A21B1BD1FF1B1BD1FF06062F7A00000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD00000
      0014000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000030318571B1BCFFE1B1BCFFE0505266D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040420641B1BCCFC1B1BD0FE04041D60000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000016161616723B3B3BB95C5C
      5CE7717171FE717171FE5E5E5EE93D3D3DBB1616167200000017000000000000
      0000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD0000000140000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000021D1818BBF11B1BD1FF0505276F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040420641B1BD1FF1919C1F5000003230000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      000000000000000000000000000B2121218A696969F6717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF6B6B6BF8242424900101
      01214B4B4BD0717171FF717171FF717171FF4B4B4BD000000014000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B55A31B1BD1FF0C0C5FAD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B54A21B1BD1FF0C0C61AE0000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00000000000002020226505050D7717171FF6F6F6FFD363636B00D0D0D560101
      011D00000002000000010101011B0B0B0B53333333AC6F6F6FFC717171FF6F6F
      6FFD717171FF717171FF717171FF4B4B4BD00000001400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000021D1B1BCAFB1A1AC7F90000021D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000001171919C1F51B1BCFFE0000
      042500000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000020202255C5C5CE7717171FF4C4C4CD10404043200000000000000000000
      000000000000000000000000000000000000000000000303032D484848CC7171
      71FF717171FF717171FF4B4B4BD0000000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000005052B741B1BD1FF0B0B5AA7000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A0A4F9D1B1BD1FF0606
      337F00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00094F4F4FD5717171FF3C3C3CBB0000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000083737
      37B3717171FF6F6F6FFD01010121000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000E0E6AB61B1BD1FF03031756000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000202124C1B1BD1FF0F0F
      76C000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000001F1F
      1F86717171FF4E4E4ED30000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008484848CC717171FF24242490000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001515A2E11B1BD1FF00000323000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF00000000000001181B1BD1FF1717
      B2EB00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000126767
      67F4717171FE0505053600000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      00000303032D6F6F6FFC6B6B6BF8000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001919BFF41B1BD1FF0000000B000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF00000000000000011B1BD1FF1B1B
      D0FE00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000000000001414146B7171
      71FF393939B60000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000333333AC717171FF161616720000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001919BDF31B1BD1FF0000000C000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000011B1BD1FF1B1B
      CFFE00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000363636B17171
      71FF0F0F0F5E0000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000B0B0B53717171FF3C3C3CBB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001414A0DF1B1BD1FF00000424000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000021A1B1BD1FF1717
      B0EA00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000575757DF7171
      71FF020202250000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000101011B717171FF5E5E5EE90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000E0E68B41B1BD1FF03031959000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      000000000000000000000000000000000000000000000202144F1B1BD1FF0F0F
      74BE00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000676767F47171
      71FF0000000C000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      00000000000000000001717171FF717171FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000000000003F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000050528711B1BD1FF0C0C5EAB000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      000000000000000000000000000000000000000000000B0B53A11B1BD1FF0606
      307B00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000676767F37171
      71FF0000000D000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      00000000000000000002717171FF717171FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000000000003F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000021A1A1AC9FA1B1BC9FA000003210000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000021A1A1AC3F71B1BCDFD0000
      032200000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000555555DE7171
      71FF020202270000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000101011D717171FF5E5E5EE80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000A0A509E1B1BD1FF0D0D67B30000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000B0B5CA91B1BD1FF0B0B5BA90000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000353535AF7171
      71FF101010610000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000C0C0C56717171FF3C3C3CBA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000001191818B6EE1B1BD1FF06062D7800000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000000000000505266D1B1BD1FF1919BDF30000031F0000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000121212677171
      71FF3C3C3CBB0000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000363636B0717171FF161616720000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000202134E1B1BCDFD1B1BD0FE06062D78000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      000000000000000000000505276F1B1BCFFE1B1BD0FE03031959000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000000000000000000F6666
      66F2717171FE0606063C00000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000040404326F6F6FFD696969F6000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040421661B1BCDFD1B1BD1FF0D0D67B30000
      0321000000000000000000000000000000000000000000000000000000000000
      00000000021D0C0C5FAD1B1BD1FF1B1BCFFE0505287000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000001C1C
      1C7F717171FF515151D80000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B4B4B4BD1717171FF2121218A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000202134E1818B6EE1B1BD1FF1A1A
      C9FA0C0C5EAB03031959000004240000000C0000000B00000323030317560B0B
      5AA71A1AC7F91B1BD1FF1818BBF1030318570000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00074B4B4BD0717171FF414141C20000000E0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B3D3D
      3DBB717171FF505050D70000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000001190A0A509E1A1A
      C9FA1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BCAFB0B0B55A30000021D000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00000101011F595959E2717171FF515151D80606063C00000000000000000000
      00000000000000000000000000000000000000000000050505364D4D4DD47171
      71FF5C5C5CE70202022600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      021A050528710E0E68B41515A1E01919BEF31919BFF41515A2E10E0E6AB60505
      2B740000021D0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000101011F4B4B4BD0717171FF717171FE3C3C3CBB101010610202
      02270000000C0000000C020202260F0F0F5E393939B6717171FE717171FF4F4F
      4FD5020202250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      00000000000000000000000000071C1C1C7F666666F2717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF676767F41F1F1F860000
      0009000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000404040C1717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF484848CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000F12121267353535AF5555
      55DE676767F3676767F4575757DF363636B11414146B00000012000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000404040C1717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4848
      48CC000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000171717746B6B6BF9717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF6D6D6DFB1F1F1F850000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000151111
      11642E2E2EA34E4E4ED4696969F5717171FF717171FF6A6A6AF7505050D73131
      31A8131313690101011A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636363EE717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF6E6E6EFB0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000000000000000000000000000
      0000000000000000000000000000000000000303032E313131A86B6B6BF97171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF6D6D6DFB363636B0050505370000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000002020A
      00420B30018E156001C91E8702ED229C02FF229C02FF1E8902EF166201CB0B33
      0193020B00450000000300000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      000000000000000000000000000D272727966F6F6FFC717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF707070FE2D2D2DA200000012000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000305170064197402DC229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF1B7802E0051A0069000000040000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF4848
      48CD2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E484848CD717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      0000000000000303032B535353DB717171FF717171FF717171FF717171FF7171
      71FF6B6B6BF9454545C72A2A2A9C2222228E2222228E28282899434343C46A6A
      6AF7717171FF717171FF717171FF717171FF717171FF595959E2050505370000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000030027166201CB229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF176701D00104002C00000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      000004040434626262EE717171FF717171FF717171FF717171FF494949CD0F0F
      0F5E0000000D0000000000000000000000000000000000000000000000000000
      000A0D0D0D56434343C5717171FF717171FF717171FF717171FF676767F40606
      063F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020B00471F8C02F1229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF208E02F4030E004F000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000303
      032A626262ED717171FF717171FF717171FF626262ED0E0E0E5D000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B515B5B5BE5717171FF717171FF717171FF6767
      67F4050505370000000000000000000000000000000000000000000000000000
      000000000000020B0046209402F8229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF219602FA030E004F0000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C00000000000000000000000B5050
      50D7717171FF717171FF717171FF4C4C4CD10101011C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000015444444C6717171FF717171FF7171
      71FF595959E20000001200000000000000000000000000000000000000000000
      0000000300251F8B02F1229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF208E02F40104
      002C00000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C00000000000000002323238F7171
      71FF717171FF717171FF4D4D4DD2000000100000000000000000000000000000
      00000303032D2222228D454545C7595959E3595959E3484848CB252525920404
      04350000000000000000000000000000000000000009444444C6717171FF7171
      71FF717171FF2D2D2DA200000000000000000000000000000000000000000000
      0002145E01C7229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF104A01B100000013000000100F4301A8229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1767
      01D000000004000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C00000000020202276D6D6DFB7171
      71FF717171FF636363EF0101011F000000000000000000000000000000173232
      32AA717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF393939B60101011E000000000000000000000000000000155B5B5BE57171
      71FF717171FF707070FE05050537000000000000000000000000000000000415
      005F229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0001001B000000000000000000000010229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF051A0069000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000001414146D484848CC000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C000000002A2A2A9D717171FF7171
      71FF717171FF1111116400000000000000000000000002020227595959E27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF606060EB040404320000000000000000000000000B0B0B517171
      71FF717171FF717171FF363636B000000000000000000000000000000001196F
      01D7229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0002001E000000000000000000000013229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF1B7802E0000000030000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      00001414146D717171FE717171FF484848CD0000001200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C0000000D696969F5717171FF7171
      71FF505050D600000001000000000000000000000014585858E1717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF606060EB0101011E0000000000000000000000004343
      43C5717171FF717171FF6E6E6EFC0101011A00000000000000000108003B229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF125101B90002001E0001001B104A01B1229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF020B00450000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000001414
      146D717171FE717171FF717171FF717171FF484848CC00000011000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C0D0D0D56717171FF717171FF7171
      71FF131313690000000000000000000000002E2E2EA3717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF393939B60000000000000000000000000C0C
      0C56717171FF717171FF717171FF1313136900000000000000000A2C0188229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0B3201920000000000000000717171FF717171FF717171FF2222
      228E0000000000000000000000000000000000000000000000001414146D7171
      71FE717171FF717171FF717171FF717171FF717171FF484848CD000000120000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C26262695717171FF717171FF6F6F
      6FFD00000017000000000000000002020224707070FE717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0404043500000000000000000000
      000A6A6A6AF7717171FF717171FF313131A80000000000000000135701C0229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF166201CB0000000000000000717171FF717171FF717171FF2222
      228E00000000000000000000000000000000000000001414146D717171FE7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF484848CC0000
      0011000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C434343C4717171FF717171FF4F4F
      4FD50000000000000000000000001C1C1C7E717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF2424249100000000000000000000
      0000434343C4717171FF717171FF505050D700000000000000001B7C02E4229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0D3C019F00000000000000000F4201A7229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF1E8802EE0000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000001414146D717171FE717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4848
      48CD000000120000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C5A5A5AE4717171FF717171FF3333
      33AC0000000000000000000000003A3A3AB8717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF484848CB00000000000000000000
      000028282899717171FF717171FF6A6A6AF70000000000000000208E02F4229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF114D01B400000000000000000413005B229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0000000000000000717171FF717171FF717171FF2222
      228E0000000000000000000000001414146D717171FE717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF484848CC0000001100000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C636363ED717171FF717171FF2C2C
      2CA00000000000000000000000004C4C4CD1717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF595959E300000000000000000000
      00002222228E717171FF717171FF717171FF0000000000000000208E02F4229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF209002F5000100180000000000000000061B006B208E
      02F4229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0000000000000000717171FF717171FF717171FF2222
      228E0000000000000000000000000E0E0E5C6F6F6FFC717171FF717171FF7171
      71FF717171FF323232AA0909094A696969F6717171FF717171FF717171FF7171
      71FF717171FF484848CD00000012000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C616161EC717171FF717171FF2D2D
      2DA10000000000000000000000004B4B4BD0717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF595959E300000000000000000000
      00002222228E717171FF717171FF717171FF00000000000000001B7B02E3229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF114E01B60000000B00000000000000000104
      002B1D8402EB229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF1E8702ED0000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000E0E0E5D6F6F6FFC717171FF7171
      71FF323232AA0000000400000000080808466A6A6AF7717171FF717171FF7171
      71FF717171FF717171FF484848CC000000110000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C595959E2717171FF717171FF3535
      35AE000000000000000000000000383838B4717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF454545C700000000000000000000
      00002A2A2A9C717171FF717171FF696969F50000000000000000135601BE229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF186E01D700030027000000000000
      000004160062229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF156001C90000000000000000717171FF717171FF717171FF2222
      228E00000000000000000000000000000000000000000E0E0E5C6F6F6FFC3232
      32AA0000000400000000000000000000000008080846696969F6717171FF7171
      71FF717171FF717171FF717171FF484848CD0000001200000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C414141C1717171FF717171FF5353
      53DA00000000000000000000000019191979717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF2222228C00000000000000000000
      0000454545C7717171FF717171FF4E4E4ED4000000000000000009290084229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0000
      000E0000000000000000209002F5229C02FF229C02FF176701D0000000000000
      00000000000C229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0A30018E0000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000070707400000
      00040000000000000000000000000000000000000000080808466A6A6AF77171
      71FF717171FF717171FF717171FF717171FF2E2E2EA300000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C24242491717171FF717171FF7171
      71FE0101011B00000000000000000101011E6F6F6FFC717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0303032E00000000000000000000
      000D6C6C6CF9717171FF717171FF2E2E2EA3000000000000000001070037229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0106
      00350000000000000000145E01C7229C02FF229C02FF197302DB000000000000
      000000000007229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF020A00410000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808466969
      69F6717171FF717171FF717171FF4D4D4DD20000001500000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C0B0B0B51717171FF717171FF7171
      71FF1616167100000000000000000000000028282897717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF323232AA0000000000000000000000000F0F
      0F5E717171FF717171FF717171FF11111164000000000000000000000000176B
      01D3229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0D3C
      019F0000000000000000000300250F4301A9135701BF020C0048000000000000
      0000020D004C229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF197402DC000000020000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      08466A6A6AF7717171FF4D4D4DD2000000150000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C0000000A666666F2717171FF7171
      71FF555555DD0000000300000000000000000000000E515151D8717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF595959E2000000170000000000000000000000014949
      49CD717171FF717171FF6B6B6BF9000000150000000000000000000000000412
      0059229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229A
      02FE0415005F0000000000000000000000000000000000000000000000000001
      001B196F02D7229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF05170063000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008080846464646C900000015000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C0000000026262695717171FF7171
      71FF717171FF151515700000000000000000000000000101011D515151D87171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF585858E1020202270000000000000000000000000E0E0E5D7171
      71FF717171FF717171FF313131A8000000000000000000000000000000000000
      0001145801C1229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229A02FE0D3C019F0209003F000000100000000B00040029092A00851F8D
      02F3229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1662
      01CB00000003000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C00000000010101206B6B6BF87171
      71FF717171FF676767F4020202290000000000000000000000000000000E2828
      28986F6F6FFC717171FF717171FF717171FF717171FF717171FF717171FF7070
      70FE2E2E2EA3000000140000000000000000000000000101011C626262ED7171
      71FF717171FF6F6F6FFC0303032E000000000000000000000000000000000000
      0000000200201E8702ED229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1F8B02F10003
      002700000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C00000000000000001E1E1E837171
      71FF717171FF717171FF555555DD010101190000000000000000000000000000
      00000101011D1919197A383838B44B4B4BD04B4B4BD03A3A3AB81C1C1C7F0202
      022400000000000000000000000000000000000000104D4D4DD2717171FF7171
      71FF717171FF2727279600000000000000000000000000000000000000000000
      0000000000000209003F209102F6229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF209402F8020B00470000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000074A4A
      4ACE717171FF717171FF717171FF555555DD0202022900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000101011F4D4D4DD2717171FF717171FF7171
      71FF535353DB0000000D00000000000000000000000000000000000000000000
      000000000000000000000209003F1E8702ED229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF1F8B02F1020B0046000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000101
      01205C5C5CE6717171FF717171FF717171FF686868F515151570000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000111111164646464F0717171FF717171FF717171FF6262
      62ED0303032B0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000020020145801C1229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF145E01C70003002500000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      0000020202295C5C5CE6717171FF717171FF717171FF717171FF555555DD1616
      16710101011B0000000000000000000000000000000000000000000000000000
      001613131369505050D6717171FF717171FF717171FF717171FF626262EE0404
      0433000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000104120059186B01D4229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF196F02D70415005F000000020000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF4848
      48CD2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E484848CD717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      000000000000010101204A4A4ACE717171FF717171FF717171FF717171FF7171
      71FF717171FE525252D9353535AF2D2D2DA12D2D2DA1333333AC505050D76F6F
      6FFD717171FF717171FF717171FF717171FF717171FF505050D70303032A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000107
      003709290084135601BE1B7C02E3208E02F4208E02F41B7C02E4135701C0092B
      01870108003A0000000100000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      00000000000000000000000000071E1E1E836B6B6BF8717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF6D6D6DFB2323238F0000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000606060EB717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF6C6C6CF90000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000000000000000000000000000
      0000000000000000000000000000000000000101011F26262695666666F27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF696969F52A2A2A9D020202260000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000011111165606060EB717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF626262ED171717740000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A0B0B
      0B5124242490414141C1595959E2616161EC616161EC5A5A5AE4434343C42626
      26950D0D0D560000000E00000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000800000000100010000000000000800000000000000000000
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
    DesignInfo = 11469271
    ImageInfo = <
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
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2251
          75657374696F6E223E0D0A09093C7061746820636C6173733D22477265656E22
          20643D224D31362C3243382E332C322C322C382E332C322C313673362E332C31
          342C31342C31347331342D362E332C31342D31345332332E372C322C31362C32
          7A204D31362C3234632D312E312C302D322D302E392D322D3263302D312E312C
          302E392D322C322D3220202623393B2623393B73322C302E392C322C32433138
          2C32332E312C31372E312C32342C31362C32347A204D32302E372C31332E3363
          2D302E322C302E342D302E342C302E372D302E362C31632D302E332C302E332D
          302E352C302E352D302E382C302E37632D302E332C302E322D302E362C302E34
          2D302E392C302E3620202623393B2623393B632D302E332C302E322D302E352C
          302E342D302E372C302E37632D302E322C302E332D302E332C302E362D302E34
          2C31563138682D322E37762D302E3963302D302E362C302E322D312C302E332D
          312E3463302E322D302E342C302E342D302E372C302E362D3120202623393B26
          23393B63302E322D302E332C302E352D302E352C302E382D302E3763302E332D
          302E322C302E352D302E342C302E382D302E3663302E322D302E322C302E342D
          302E342C302E362D302E3663302E312D302E322C302E322D302E352C302E322D
          302E3963302D302E362D302E322D312D302E352D312E3320202623393B262339
          3B632D302E332D302E332D302E372D302E342D312E332D302E34632D302E342C
          302D302E372C302E312D302E392C302E32632D302E332C302E312D302E352C30
          2E332D302E372C302E35632D302E322C302E322D302E332C302E352D302E342C
          302E384331342C31322E312C31342C31322E372C31342C3133682D3320202623
          393B2623393B63302D302E372C302E312D312E362C302E342D322E3163302E32
          2D302E362C302E362D312E312C312D312E3563302E342D302E342C302E392D30
          2E382C312E352D3163302E362D302E322C312E332D302E342C322D302E346331
          2C302C312E382C302E312C322E342C302E3420202623393B2623393B63302E36
          2C302E332C312E322C302E362C312E362C302E3963302E342C302E342C302E37
          2C302E382C302E382C312E3273302E332C302E382C302E332C312E324332312C
          31322E342C32302E392C31322E392C32302E372C31332E337A222F3E0D0A093C
          2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313820313822207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203138203138
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D302C3176313663302C302E362C302E34
          2C312C312C3168313663302E362C302C312D302E342C312D31563163302D302E
          362D302E342D312D312D31483143302E342C302C302C302E342C302C317A204D
          31362C3136483256326831345631367A222F3E0D0A3C706F6C79676F6E20636C
          6173733D22426C61636B2220706F696E74733D2231322C3520382C3920362C37
          20342C3920362C313120382C31332031302C31312031342C3720222F3E0D0A3C
          2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D223020302033322033322220656E61626C65
          2D6261636B67726F756E643D226E6577203020302033322033322220786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C70617468
          206F7061636974793D22302E332220656E61626C652D6261636B67726F756E64
          3D226E6577202020202220643D224D33322C3048307633326C302C3068333256
          307A204D33302C3330483256326832385633307A222F3E0D0A3C726563742078
          3D2231362220793D223822206F7061636974793D22302E332220656E61626C65
          2D6261636B67726F756E643D226E657720202020222077696474683D22313022
          206865696768743D2234222F3E0D0A3C70617468206F7061636974793D22302E
          362220656E61626C652D6261636B67726F756E643D226E657720202020222064
          3D224D362C3676386838563648367A204D31322C31324838563868345631327A
          222F3E0D0A3C7265637420783D2231362220793D22323022206F706163697479
          3D22302E332220656E61626C652D6261636B67726F756E643D226E6577202020
          20222077696474683D22313022206865696768743D2234222F3E0D0A3C706174
          68206F7061636974793D22302E362220656E61626C652D6261636B67726F756E
          643D226E6577202020202220643D224D362C313876386838762D3848367A204D
          31322C32344838762D3468345632347A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313820313822207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203138203138
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D392C30222F3E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D392C3043342C302C302C342C302C3963
          302C352C342C392C392C3963352C302C392D342C392D394331382C342C31342C
          302C392C307A204D392C3136632D332E392C302D372D332E312D372D3763302D
          332E392C332E312D372C372D3720202623393B63332E392C302C372C332E312C
          372C374331362C31322E392C31322E392C31362C392C31367A222F3E0D0A3C63
          6972636C6520636C6173733D22426C61636B222063783D2239222063793D2239
          2220723D2235222F3E0D0A3C2F7376673E0D0A}
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
          63653D227072657365727665223E2E5265647B66696C6C3A234431314331433B
          7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
          233033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66
          696C6C3A234646423131353B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D2254696D65223E0D0A09093C7061746820636C6173733D22526564222064
          3D224D31362C3443392E342C342C342C392E342C342C313673352E342C31322C
          31322C31327331322D352E342C31322D31325332322E362C342C31362C347A20
          4D31362C3236632D352E352C302D31302D342E352D31302D31305331302E352C
          362C31362C3620202623393B2623393B7331302C342E352C31302C3130533231
          2E352C32362C31362C32367A222F3E0D0A09093C706F6C79676F6E20636C6173
          733D22426C61636B2220706F696E74733D2231362C31362031362C382031342C
          382031342C31382032342C31382032342C3136202623393B222F3E0D0A093C2F
          673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2245
          7175616C5F546F2220786D6C6E733D22687474703A2F2F7777772E77332E6F72
          672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F
          7777772E77332E6F72672F313939392F786C696E6B2220783D22307078222079
          3D22307078222076696577426F783D2230203020333220333222207374796C65
          3D22656E61626C652D6261636B67726F756E643A6E6577203020302033322033
          323B2220786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C7374796C6520747970653D22746578742F6373732220786D6C3A7370
          6163653D227072657365727665223E2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C61
          636B2220643D224D32392C32483143302E342C322C302C322E342C302C337632
          3463302C302E362C302E342C312C312C3168323863302E362C302C312D302E34
          2C312D3156334333302C322E342C32392E362C322C32392C327A204D32382C32
          36483256346832365632367A222F3E0D0A3C7061746820636C6173733D22426C
          75652220643D224D32302C3134483130762D326831305631347A204D32302C31
          3648313076326831305631367A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D225A
          6F6F6D5F496E2220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D2242
          6C75652220706F696E74733D2231382C31322031342C31322031342C38203132
          2C382031322C313220382C313220382C31342031322C31342031322C31382031
          342C31382031342C31342031382C313420222F3E0D0A3C7061746820636C6173
          733D22426C61636B2220643D224D32392E372C32372E334C32322C31392E3663
          302C302D302E312D302E312D302E312D302E3163312E332D312E382C322E312D
          342E312C322E312D362E3563302D362E312D342E392D31312D31312D31314336
          2E392C322C322C362E392C322C313320202623393B73342E392C31312C31312C
          313163322E342C302C342E372D302E382C362E352D322E3163302C302C302C30
          2E312C302E312C302E316C372E372C372E3763302E332C302E332C302E392C30
          2E332C312E322C306C312E322D312E324333302E312C32382E322C33302E312C
          32372E362C32392E372C32372E337A20202623393B204D342C313363302D352C
          342D392C392D3963352C302C392C342C392C39732D342C392D392C3943382C32
          322C342C31382C342C31337A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2247
          72616E645F546F74616C735F4F6E5F526F77735F436F6C756D6E735F5069766F
          745F5461626C652220786D6C6E733D22687474703A2F2F7777772E77332E6F72
          672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F
          7777772E77332E6F72672F313939392F786C696E6B2220783D22307078222079
          3D22307078222076696577426F783D2230203020333220333222207374796C65
          3D22656E61626C652D6261636B67726F756E643A6E6577203020302033322033
          323B2220786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C7374796C6520747970653D22746578742F6373732220786D6C3A7370
          6163653D227072657365727665223E2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D262331333B262331303B2623393B2E7374307B6F706163697479
          3A302E37353B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C
          61636B2220643D224D32372C32483543342E342C322C342C322E342C342C3376
          323663302C302E362C302E342C312C312C3168323263302E362C302C312D302E
          342C312D3156334332382C322E342C32372E362C322C32372C327A204D32362C
          3238483656346832305632387A222F3E0D0A3C6720636C6173733D2273743022
          3E0D0A09093C7061746820636C6173733D22426C61636B2220643D224D31382C
          3130483856386831305631307A204D31382C3132682D38763268385631327A20
          4D31382C3136483876326831305631367A222F3E0D0A093C2F673E0D0A3C7061
          746820636C6173733D22426C75652220643D224D32342C3130682D3456386834
          5631307A204D32342C3132682D34763268345631327A204D32342C3136682D34
          763268345631367A204D31382C3232483876326831305632327A204D32342C32
          32682D34763268345632327A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2252
          65646F2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F637373223E2E426C75657B66696C6C
          3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C75652220643D224D31362C313056346C31362C31304C31362C3234762D
          3643302C31382C302C32362C302C323653302C31302C31362C31307A222F3E0D
          0A3C2F7376673E0D0A}
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
          233131373744373B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D22517569636B46696C746572223E0D0A09093C706F6C79676F6E20636C61
          73733D2259656C6C6F772220706F696E74733D22302C322032302C322032302C
          362031322C31342031322C323420382C323820382C313420302C36202623393B
          222F3E0D0A09093C7061746820636C6173733D22477265656E2220643D224D33
          312C3134483135632D302E352C302D312C302E352D312C3176313663302C302E
          352C302E352C312C312C3168313663302E352C302C312D302E352C312D315631
          354333322C31342E352C33312E352C31342C33312C31347A204D32322C32386C
          2D352D3520202623393B2623393B6C322D326C332C336C362D366C322C324C32
          322C32387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2246
          696C6C5F55702220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23373237
          3237323B7D262331333B262331303B2623393B2E7374307B6F7061636974793A
          302E353B7D3C2F7374796C653E0D0A3C6720636C6173733D22737430223E0D0A
          09093C7061746820636C6173733D22426C61636B2220643D224D32382C327632
          30483138762D3668342E374C31352C342E344C372E332C313648313276364832
          56324832387A222F3E0D0A093C2F673E0D0A3C7061746820636C6173733D2242
          6C75652220643D224D32382C33304832762D366832365633307A204D31362C32
          32762D3868336C2D342D366C2D342C36683376384831367A222F3E0D0A3C2F73
          76673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000013744558745469746C650052616E67653B46696C7465723BC978A1BF
          0000062549444154785EC5966D8C545719C77FE7CE0CCB2ECB7659DC055B087D
          13AA2CA02DD26A450BDA8D45A8E5AD2D35C63469524513131B9A603FF816931A
          D3267C5013633555A3AD544068A15A4BC952DD2D45A56597BEC0160B5D587658
          7687DD9D9D997BCFF338B9793237E392A861124FF2E4DC97F3DCFFCB73CE3DC7
          A92AFFCFE62E63DCE58426042C2E13DCFD97B96A21D6E37EF4CBBFEEC7B1021C
          28A8914315C5F1F1F14700454541412DD42E54B15E510150BA5B1EADC0A953B0
          F138102F071EFEF2CADB010F685A61C5839B6EBEB43FC03BBB1671DD6DEB50C4
          5E242C544D88588FF2D64BBBF9EAC65BAB3D40B14CB63D71F03620C05C488B08
          0A8491E200D56A2A677BBAB97AC97CFC44B6022C2A3823A0A280911161E0E8DF
          B8769D6082ABC404CEA12255A5498B2460A200CE482BEAC04782F808894A896A
          5114E26BE2B012A9E0BDB75240029590F1AA00418540AC22CE75E0CC5AC03820
          91A03E44C210879A8204D01CB1C14A3CDED020E9150507EA056BE680B7DA3AAD
          D8BF675F276BEEF824003E2610A15109D56AD51879B31F3002F6A13F3CFB129F
          5FBDC2D4BBB8F766B3056911ADA85594DDCF1D60573971CD1DCB515CAC48A210
          2D47627FA25E3506B439A1F8484C9063FBCE3FE245587BE7A7EDBDC3F05CE280
          150C945D7BF6B363F78BA80D86F88331B8940331756A6550C59E59083E52D414
          4561C8D3CFEC43BC67FD5D1D3840F4DF08785BBB478FF5F1F4EF9FC7B24D05C4
          0EF89295405131E5D565B05ED048B0461445A0F0DBEDCF32FF03F358D2BE00F1
          9356810760E10DD7B176F5CAD836C06C06F18A86B10349AD550DD4C7BD11B255
          A0600E465108C0C675AB68FFD07C14875C6A0E58FDD9B0F6B344DEF3BB1DCFA3
          009094202C99E244BD5A40E28678B15C8D1DB867C36A366DFC9CA55A6E950395
          35ED70C0BD1B57251F5145BC580942AAED4E26A2A2204C22707759F9A67BD610
          031BA49F34094530341407EACA49AB4D9143BCC6E0E243D0E43F80A947D47205
          8441F1FA1AC2BBE086EFBBF7CE22AA83EA1CA8B6A1D4A9E80C20AA72C00803C6
          DD25F7E22BCB300135DBD57255342722BBF345E96D9AD3B4A86FC75716FBD1EC
          55BE5498AAC5D19912091A340C790D8A37E6D2677E71FF822F1E787364C7935D
          E7869239306937325D5E91A814937060A0560A231389FC786894B9A9FA966F2D
          BBFBBEFAE9F39652D73417974A13641A510DF11367674A718C89EC892B87DE7A
          75E955EF3BF8E8F26BA63D64734049C5EE9B7475E088FBC69666F025D20DCDA6
          1CACFE567BA5500CB32285AD373DF014FD87BB38FCF327C9FDB387D19347A96F
          CA30ED8A3AEA67D4D3BA7031CDF3AE67F6473EC6BC151B9AF66EB9FFA7EE1BDF
          D9FE623A9D59A9B8642E284600161FF9BA0975387B5769763F11CA9645B7CEF9
          F692BB364DABBF7229A9E9EDA894408BA06125A2FC45C6FBDF2655EA67ECD42B
          74EDE91D724003900682C9A798E4FE3F3CF3CF6DBDE967EDCB6F59DF565639A5
          AD8320D34634FC670AE7FFC2C4853718EB2B3170E43499A919DE7F432B23C363
          1CEA1AD899068A40E932CF81EEDC48E1A95927DE59DF3CE76A82A9C74937A510
          DBC8A4E429E50B04CE51D7984150CE9CBCC8E9A1E233AE46875807D4EF7DF8C3
          FB172CBB7159CB35D7D33077395AE8A73074907CF604177A2F3291CDD33C7B3A
          63855259FD99BF3FB8F3BD95E9FFF158AE9744774E81E2C13786376782232F14
          47C766B48CE6A9BB6216A591118AA3254A852275D3325C181EE7584F76A4B36F
          F46B403E4D8DDA9F1E5A1C753CF6FAEB83C3C54FADCA157E35EB54FF92A6D699
          65D088426E8CC28467F0EC454E9ECA1D7DA12FFFA5BD27C68F0151408D5AEEC2
          04877FF089F0899707DEDCFCEBE31D9DDDEFFEB0E7E51E5A3FB888E94D5338DE
          3B4CE76BD9C7BFD739D45106EF054ADB3E33536BE680732051C8ABDFBF25FCE8
          23DDE7BFB9EFBD6DBFF9C2B55BA634CE26956900078F1FCA6D0306BBB6B60B22
          741F1E20A81D018746511C87BEBB5480C83947D03887D494A9B8C001845D5B17
          C6E0B62B523B07022380FD45210852019A6E4353F5468000B13D44B5B60462B0
          C89B1B0048F919415D2B41AA8E201D0048722AA6C60EA403CEE592D312903F7E
          BEF0D8F6076EDFACAA9C2C063F01C65FF947B63A4F556B52FFC98D94FDE61B01
          078C01E3802769FC0BD77F94C63A1C2A3D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000040744558745469746C6500436F6E646974696F6E616C466F726D6174
          74696E7349636F6E5365744172726F7773333B436F6E646974696F6E616C466F
          726D617474696E673BFDCD101C0000078249444154785EC555696C95C7153DF3
          FC81716C2031E015CA623050A5844280A4A1B1CB6276190A82AA0541042D5431
          7208B46C499A0815940AD236AC25C115AD40D4C4A5A46531C62CB6C12D5241D8
          0E8BB1E34078F6F38AFDBCBEF7CDCC6DEEB71857A2BF6CA9479A6FF434F7DD73
          EE99ABB9627BC62B6010D91F82C0AE35FF14EB774F18161611925151E15F7DF2
          C3FB152B77BEC88780B66339FCCFEF95808870736F12F88CEC0FDC842F6F28F0
          DCD833B5BCF48BEAE9CB331E549C5F3F96A0001204687B379422AC5EB499D9AD
          356AE012B16EE7F8E1515103AEBE3E71F6E0AC8E53790BDFA2A4A3DB4ABE2CAD
          CD242664ECD8FB015C045A0398F2E66F3A89C9C9850DD33CA4F5B0C1F1D17947
          96ABA4D97BEF7E29EBB3C9A916D9DBD2E1D1CA2D4B5BE46B3E183722266E50DE
          ECD7160E369E6BC3A259B3E3E3070FCA9FBF2E212171D0520F91022F16EE4249
          0DD2B27341DA8B41923071C5DAF8E1F1D1F99FFC68F80863C02C41DA0449135A
          01D8B87F124A6B320140ACDCFEE2C8F78ECC787CA37C3F5D29DB4E7FBDBD9CFE
          767B255D2C799FD6EE7AB572E6CA6189003C77AB8F61D92FC782E1381202C078
          C6EA737DC7140A7A4F5053C93ECAD938A5F2C0E261233947B0320BA7578D84A1
          349018B5D4F3E35F8C4D18322CFAF2DCE4D4F856F5184FDA1F426A1320C04F65
          58327F7A6CA6CCBD9ABC4CFF606CF44F1E2CD93846C141CE96F1B9E111A1494F
          FBC8DE194A6968B31D86A8C1A4E54B63F5D11379BF5DA0927AC72D2E3FB52241
          0B56B3F4AD31231346C75C5E3073515C87AA4443DB2328323B9B12D0303C7DD0
          D733149959977CA5C595D3F24F7D5DCAF9D9818B9BC753F286F7D90D4780BD43
          DBD74B8126487F19203C30E5F3F8D79F4E56DD2EAB4EDE7CDE5B267EF8E6E8D1
          A3BE1D73293565715C48AF0E347654422B138DED55705A1BFDC3A2390D3CECB4
          EA87CCBF5CACBE5F5435ADF01FDEFB44A4B2DF1E47C9EBD3211B4B9DCA6D7282
          B6764DFC5FDE35402130C1223EAF2AAAF0251BA28FCA2EABF0C6ED39F8B155C1
          C0817D919A3A0544CAB11290A470FAD40DD4D6B4D80484E80143FA5C0030C2EA
          C1A004C900C80CD864CCAF35880919A4A158101104691821418C9BFF7A6CC7F1
          BF1F35B2F6948D06E0012CAF4357EF78A9A17F583C9EB456595632B4B2BBFEF3
          7DE55100DA61430190D6B9246833081D0C5A248AC82167B10EB1258840C28356
          BFC299C3677D5F7CD5B0DA484D4B08ECD8BAD5227B29FEA7424982D28AED72E8
          D93A09AD38213A6E7E7D806DC0B60F76E3FCA715604853816410C2E8CBD110EA
          69E570AA9681060808B4B6699CF9E48AAFF851E38C03779AEF1B2F0C088776D5
          02C27E1714E8BF04B0036008B73216E8A2D2DB9CFBD9B6DF4FD756B5B69544F6
          8A8CEC83E435292029D1DA2E7026A3C057FC55E38C83F75AEE01D006574C509D
          02D86A45CABE434160588E28E71CD28A25854EA465FBE674B9C6AE08CD5A36BC
          51F48E404B4DFD37E485BEA2878D330F97B65AE43B27F6274369B73B1D0734A0
          9910DAB942FB0A94B6CF890304F07C64385C7C3A2BD65CB633DD8A85B318FD26
          6F07BBD25CD7843347AEFB8A1E3531F95D266FBCF60EED4FDB0B8314DB26C170
          AF8009C37AF563A3AD5C4A6B68A762E2D209E03817C4454893F3826177BB2358
          114E1F385F7DEB61534AC603873C7F0B9196569CA13561CBBB1FC181E97BEC2F
          F87057D65477E2096742CAA02AE0F32DDBF782F1C2C0A70E708E0BBB8F3C7D05
          F94BCE91A6C7B72A9ECCCD286BBDC3A1BF1EDF8FF6AF3FC0A1CF44088070CE0F
          604097150920C239EF0ADBF6FF0D0F805E4E5E8167407082FF278CA2F434B812
          C67FBCDF732B3DED1C944E01A88B4D04A974CEE44387E7FCFBE76B952BFAE543
          87D1DD028C266F0D26AC4AB5457C23A0B9B22EE5BB2BE602DA65B7F7C23F64CD
          644B1353262B00B87630AB671CE07149AACB3B2025748B1FC18A070E3FC11814
          05252D5E41BC13A04CD53302B49280964C6F0B500A244DB844FC215341ABA702
          8805A81E12A0A48696D2755A68FECD84D2B405100F1AB38B03A63DEA7B4E8072
          AA25478004A40499D29E68049E726EC51E4B9806068DFC1670AD0704CCC939DB
          1B39673BC7B1540A3A186052F741E151EB4EC3B0C837368A2EE3988374B7045C
          7F6355A91062A87BDF35E55E9069F272461AD3D85790BF62459D1BA73579938E
          1F4B0010E896801397F2E74D8E8DB990B43839EEB98870244E1A05DDEC8736ED
          BE10B07B2069E12B08090F47B3BF05278E9DA929F4D5CC0320D14D0816F1B3F8
          A163BF17139D3DF5B531B1A1813668259D9EA0CE89283C1EB48B5EF82CF766CD
          F5BA86D9679B1B4B580075F325320E257E47AE2B2DBE6B4A35475D55E7BEFFEA
          A8D85015B4BBDCCD2D04DAC840D6959BB54C7EAEC526B71476131EA7B9D41FAB
          1FDFC9F57AE75D2EB8E76B8701680D9212D00A6D247032F7566D5E6DDD1C977C
          53640CA107E051A451BD731371D2E375BE92DCAAAA79970B4B2D114440B31238
          79A5B836AFBE616E4EABBF98E32ADF4923AD093D23406950C044D5AFD22D1199
          F5D5C5177CBE05976F9457D777689CCCBB537DB5FEC9BCDC367F1100D3BB751D
          91D3233D01F1D19051EE44B3F64DDE72C1337C61FF81E3268485EFBBD2F424ED
          52BB4DFE76FF28D24027F9EFFCB5DD9E86FF01C07D16A8E02E27DE0000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000011744558745469746C6500446F776E3B4172726F773BBDFC82580000
          054949444154785EC5576B6C1455143E77765BB6A52F94572421FE43629598E0
          0F125F1053E2E387F1111225FCC184289A28602AD83F4D5684180D181F140289
          0643404C5A68402A058152207D00A5DDED63BBDD6E5BA8DD2E6BA58F7DDC7BAE
          7BEF9C19596BD88E89619293BB33B373CEF77DE77167989412EEE761C07D3EDC
          779F30C666EAE05E7FBCA7A4FF54DCED2020CB1E9C00903955C0B6CF8EB68109
          546A2F9FBCB18C790F5F3BC100564B60E675722FAD98D264178B8DD7EDDAF8CC
          8B00801F7C7BC126BC7BE3D33307802861D3AB8F69E7F96E43B39720576F7A6D
          994D525394D3A957EC6D2CA3DAC2CAF52BCC6B55179D298052DACCE830840098
          E408ED7F24CC3B088094536588008B0ADC2010810030CB8D40E91080908099F4
          18228290A63A529A1A2052B2D1FC3F2205A33A414A9510E81000CA6905881484
          2B143673A5960D00520A24BF0B800402201C01D032CACC86624220494D924BC8
          58A562AF9413DC063D372F870D4F24A5E0CE52C0BCEB9683779DDD6E86321598
          2B13044003D4800804DD3783B9E83958383B5766B46716008C02BAC8ACF31CCE
          11B880B409407265B32720292EAD7C7BC80F52504E26D47936055C9BF75E4E00
          3996946FA18BD052C0EC14A0D52ACC94402828C8830D5F9E1BA13AB167C6BE2D
          2BF32C40D91460A978A2764DD9D297972C9E03773764748A6B89911C23E51EA9
          16521CE1FDB54F4241AE6117A02F380ADF57379F527EB3D600C5C1C0F50B1F1D
          F3E4AE7A7EE592FCD184B0BAC26E3F29993E41CBD0BC178EC521149DB45393EF
          32E0B7FA8EA9BEAB67B658EC6704E0C4FE8AFEB98B977ADB3A0AB7CF5BF40024
          5411B80CBBFD084F4601521AF49AE4025CC0A0AD671022B7867634D57E15A21A
          C80A0008293FFEDDE6AA9C0FF7BDF9ECBCA2D2B1B8D015EEC971813BC7D06A1A
          1A0FD345278454AB4E4122298031801C8110EC1AF49F3FB86D0F0024C9EFB483
          5E48A66DC7CAFDACB2F53B57942E7FEAD7D2271E366EC6A6480106C04CB6F640
          A2A98394A6E27C37B434766277F3B9175A8EED541B817A181D6CC7DA67AA6E7F
          7973F1FCC307162C287EDB53381BC6931C98BDF35163DBE7666D78D20A0D0623
          303C30F4433A7813B1978EDE88D67AEB24214EB4FCB2FFD376DFE0C8EC1C531D
          21CC561448434898D704D147CEA1ABA32FE23F7BC04BCCC5AA770E3903203842
          EBE01D5D0BC1AB75A33783BE725FFB1014CC72EBAA27231048ED282137D705BE
          AB41F83DE4AF180E5C8AA8E7CFF4DC46CE053802C0050247B40A32597F60D3F1
          BEDEF0E989D804B80C06889A31AD661B1ACC80E8AD188403E1B3AD3595D54A3D
          C525A5D4710880640668EC1BB3C6683CD054BBCD776360CAE332F4F091C45C1B
          221880D0DE1A880FDC38B9150026158F93FEA814526F6E4E01A066C6A5BD2726
          3B1B7E0CDCEAEFFE22D43BAC6782662E4CF6EEF479777B1822E1DE5D03D76A02
          C41E39A2561353D2690A04A4E8E1740E256D22F12B3F57EE0D760DF853F1B8F5
          E6A4D7F1B10908FA7BBBFDA73FDF43EC454D7B44B1A71D943B4F814050A62BFE
          546754D74262FCF69F43FE868FBB6E0CA0DB30F4E6E462001D4D5D38D273B13C
          353536A6DA57A9A6141282F60A44E72F249CE6AD5E983D21E3BEFA6FAE142E7C
          E450C9FCE2B74A16CC81FE9E21180E058FF4371DBC6CB5DD4FD746242A02A4BC
          7300D4E7B4F9D863840A72A2FBFCBE1D79455B573FFE60D1DCC0F54034DC7C70
          BBCA84BA4FA0335EDDADF8331EC5CFBD7B444F351A71F6EFF3556B18812E7CF4
          A58AD74B1E2AAD1AF25FDA106AD87D1400EE2800A5AF7C2DFFED13A9A3FA3D6B
          74670390FD0B8940E4A52D97466DDCCAFDFFF56996418A8221553C7509DDFFCF
          1FA7CE4188E9D79C1F7F01A1F10A94BB25B4830000000049454E44AE426082}
      end>
  end
  object ImgProduto_Tipo16x16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 440
    Top = 176
    Bitmap = {
      494C01010B000D00040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001E8902EF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF1F8C02F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF00000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000052D42820000000000000000229C02FF229C02FF229C02FF0825007D0825
      007D229C02FF229C02FF229C02FF229C02FF00000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000100001200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF052D428200000000229C02FF229C02FF0825007D000000000000
      00000825007D229C02FF229C02FF229C02FF00000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002715026D00000000000000000000
      0000000000000000000000000000000000006A3A08B30301001F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF00000000229C02FF135701BF00000000092800820928
      0082000000000825007D229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000452605914E2B069A0000000F0000
      000000000000000000000000000000000000D77610FFC56C0FF42B1803740000
      0004000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF00000000229C02FF229C02FF145901C2229C02FF229C
      02FF09280082000000000825007D229C02FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000D77610FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000009050035D77610FFBD680EEF4E2B
      069A180D02570603002B0000001100000006D77610FFD77610FFD77610FF8E4E
      0BCF090500360000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF00000000229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0928008209280082229C02FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000D77610FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A3A08B3D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD37410FD472705930000000E000000000000000000000000000000000000
      000014B1FFFF14B1FFFF00000000229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000D77610FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002010019A95C0DE2D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFAD5F0DE5170C01540000000000000000000000000000
      000014B1FFFF14B1FFFF000000001D8702ED229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF1E8902EF000000001C1C1C7F1C1C1C7F1717
      17740000000B0000000000000000D77610FF0000000000000000000000091717
      17731C1C1C7F1C1C1C7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003010020874A
      0ACAD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFA85C0DE2140B014E000000000000000000000000052D
      428214B1FFFF14B1FFFF052D4282000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F0C0C0C540603002DCD7010F9D77610FFCE7110FA070400300B0B0B511C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002170C0154623507ACA65B0DE0CB700FF8D77610FFD77610FFD77610FFD776
      10FFD17310FC4224048E0000000C000000000000000000000000052D428214B1
      FFFF14B1FFFF14B1FFFF14B1FFFF052D42820000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F03030329321C037CD77610FF351D037F020202271C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF884B
      0BCB0804003200000000000000000000000000000000052D428214B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D428200000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F171717740000000F512C069D0000000E161616731C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFC16A0FF22715036E0000
      000300000000000000000000000000000000052D428214B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D4282000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F0B0B0B53000000000B0B0B501C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000643708AE0201001C000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F0909094B1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000000000
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
      000000000005323232AB28282899000000000000000000000000666666F27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF686868F500000000000000000000000000000000000000000000
      00000000000805052972121288CE1A1AC7F91A1AC9FA12128ACF05052B740000
      0009000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005343434AD717171FF343434AD000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      021C12128DD20C0C61AE01010B3C000000070000000601010A3A0C0C5EAB1313
      92D50000031F00000000000000000000000000000000666666F2717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF686868F500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000053434
      34AD717171FF343434AD00000005000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000071212
      8CD105052C760000000000000000000000000000000000000000000000000505
      2971131391D500000009000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000202
      02252C2C2C9F5E5E5EE8717171FF5E5E5EE82D2D2DA00303032C343434AD7171
      71FF343434AD0000000500000000000000000000000000000000717171FF0000
      0000D77610FFD77610FFD77610FFD77610FFD77610FF00000000D77610FFD776
      10FF00000000717171FF000000000000000000000000000000000505276F0D0D
      64B0000000000000000000000000000000000000000000000000000000000000
      00000C0C5EAB05052B74000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000000000000A0A0A4C5F5F
      5FEA191919780101011D000000010101011C17171775666666F2717171FF3434
      34AD000000050000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000111182CA0101
      0C3F000000000000000000000000000000000000000000000000000000000000
      000001010A3A12128ACF000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000020202245F5F5FEA0404
      0434000000000000000000000000000000000000000004040431666666F20303
      032C000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000000000001919C1F50000
      000B000000000000000000000000717171FF717171FF717171FF717171FF7171
      71FF000000061A1AC9FA000000000000000000000000717171FF000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF0000000000000000000000002A2A2A9C1A1A1A7B0000
      00000000000000000000D77610FF000000000000000000000000171717752C2C
      2CA0000000000000000000000000000000000000000000000000717171FF0000
      00003F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF00000000D77610FFD776
      10FF00000000717171FF000000000000000000000000000000001919BFF40000
      000C000000000000000000000000717171FF0000000000000000000000000000
      0000000000071A1AC9FA000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000000000005A5A5AE3010101210000
      00000000000000000000D77610FF0000000000000000000000000101011C5E5E
      5EE8000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000111181C90101
      0D41000000000000000000000000717171FF0000000000000000000000000000
      000001010B3C121288CE000000000000000000000000717171FF000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF0000000000000000000000006D6D6DFA000000060000
      0000D77610FFD77610FFD77610FFD77610FFD77610FF00000000000000017171
      71FF000000000000000000000000000000000000000000000000717171FF0000
      0000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF00000000D77610FFD776
      10FF00000000717171FF000000000000000000000000000000000505256C0D0D
      67B3000000000000000000000000717171FF0000000000000000000000000000
      00000C0C61AE05052972000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000595959E3010101220000
      00000000000000000000D77610FF0000000000000000000000000101011D5E5E
      5EE8000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000061212
      88CE0606307C0000000000000000717171FF0000000000000000000000000505
      2C7612128DD200000008000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000000000002929299A1B1B1B7D0000
      00000000000000000000D77610FF000000000000000000000000191919782C2C
      2C9F000000000000000000000000000000000000000000000000717171FF0000
      00003F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF00000000D77610FFD776
      10FF00000000717171FF00000000000000000000000000000000000000000000
      021A121288CE0D0D67B301010D410000000C0000000C01010C3F0D0D64B01212
      8CD10000021C00000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000010101225F5F5FEA0505
      05380000000000000000000000000000000000000000040404345F5F5FEA0202
      0225000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000060505256C111181C91919BFF41919C1F5111183CA0505276F0000
      00070000000000000000000000000000000000000000646464F0717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF666666F200000000000000000000000000000000090909485F5F
      5FEA1B1B1B7D0101012200000006010101211A1A1A7B5F5F5FEA0A0A0A4C0000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01222929299A595959E36B6B6BF95A5A5AE42A2A2A9C02020224000000000000
      0000000000000000000000000000000000000000000000000000646464F07171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF666666F200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000505050D7717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF575757DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040404352A2A2A9C555555DD6F6F6FFD6F6F6FFD575757DF2C2C2CA00505
      053A000000000000000000000000000000000000000000000000000000000000
      00000001001A0A2C0188186D01D5219602FB219602FB186E02D70A2D018A0001
      001B00000000000000000000000000000000717171FF666666F2444444C64444
      44C6444444C6444444C6444444C6444444C6444444C6444444C6444444C64444
      44C6444444C6444444C6666666F2717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B2C2C
      2C9F717171FE717171FF646464F0474747CA464646C9636363EE717171FF7171
      71FF2F2F2FA50000000E00000000000000000000000000000000000000000412
      00581F8C02F2229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1F8E
      02F30414005C000000000000000000000000717171FF444444C6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF000000000000000A424242C37171
      71FF4D4D4DD20909094B00000003000000000000000000000002080808474949
      49CD717171FF464646C90000000E00000000000000000000000004120057229A
      02FD229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229A02FE0414005C0000000000000000717171FF444444C6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A2A2A9C717171FF3434
      34AD00000007000000000303032F1313136A1414146B04040432000000000000
      00052F2F2FA5717171FF2F2F2FA50000000000000000000100181F8B02F1229C
      02FF229C02FF229C02FF229C02FF0107003801060032229C02FF229C02FF229C
      02FF229C02FF1F8E02F30001001B00000000717171FF444444C6000000000000
      000000000000000000000101011B050505390000000000000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF04040431717171FE4E4E4ED40000
      00080000000A313131A9717171FF717171FF717171FF717171FF363636B00000
      000D00000005494949CD717171FF0505053A00000000092A0185229C02FF229C
      02FF229C02FF229C02FF229C02FF0108003D01070038229C02FF229C02FF229C
      02FF229C02FF229C02FF0A2D018A00000000717171FF444444C6000000000000
      0000000000000101011B535353DA666666F20606063C00000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027272796717171FF0B0B0B500000
      00002F2F2FA6717171FF717171FF717171FF717171FF717171FF717171FF3636
      36B00000000008080847717171FF2C2C2C9F00000000176901D2229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF186E02D700000000717171FF444444C6000000000000
      00000101011B535353DA717171FF717171FF666666F20606063C000000000000
      00000000000000000000444444C6717171FFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF505050D6676767F4000000060202
      0229717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0404043200000002636363EE575757DF00000000209102F6229C02FF229C
      02FF229C02FF229C02FF229C02FF0311005502090041229C02FF229C02FF229C
      02FF229C02FF229C02FF219602FB00000000717171FF444444C6000000000101
      011B535353DA717171FF717171FF717171FF717171FF666666F20606063C0000
      00000000000000000000444444C6717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000676767F44D4D4DD2000000001010
      1062717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF1414146B00000000464646C96F6F6FFD00000000209002F5229C02FF229C
      02FF229C02FF229C02FF229C02FF104A01B10000000305170063219602FA229C
      02FF229C02FF229C02FF219602FB00000000717171FF444444C6000000000000
      00174F4F4FD5717171FF27272796101010626F6F6FFD717171FF666666F20606
      063C0000000000000000444444C6717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000676767F34D4D4DD3000000001010
      1061717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF1313136A00000000474747CA6F6F6FFD00000000176701D0229C02FF229C
      02FF229C02FF145A01C30826007F229A02FD114C01B3000000000C39019B229C
      02FF229C02FF229C02FF186C01D500000000717171FF444444C6000000000000
      0000000000171A1A1A7B0000000100000000101010616F6F6FFD717171FF6666
      66F20303032D00000000444444C6717171FFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF4E4E4ED4696969F6000000070202
      0226717171FE717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0303032F00000003646464F0555555DD0000000009280183229C02FF229C
      02FF229C02FF114D01B4000000000E4101A5115001B8000000000B340194229C
      02FF229C02FF229C02FF0A2C018800000000717171FF444444C6000000000000
      00000000000000000000000000000000000000000000101010616F6F6FFD3535
      35AE0000000500000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025252593717171FF0C0C0C540000
      00002C2C2C9F717171FF717171FF717171FF717171FF717171FF717171FF3131
      31A9000000000909094B717171FF2A2A2A9C00000000000100171E8A02F0229C
      02FF229C02FF229C02FF0826007F000000140000000D05180065209002F5229C
      02FF229C02FF1F8C02F20001001A00000000717171FF444444C6000000000000
      0000000000000000000000000000000000000000000000000000070707440000
      00050000000000000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF0303032D6F6F6FFD525252D90000
      000A000000072C2C2C9F717171FE717171FF717171FF717171FF2F2F2FA60000
      000A000000074D4D4DD2717171FE04040435000000000000000003100053229A
      02FD229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229A02FD041200580000000000000000717171FF444444C6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027272796717171FF3838
      38B40000000A0000000002020226101010611010106202020229000000000000
      0008343434AD717171FF2C2C2C9F000000000000000000000000000000000310
      00531E8A02F0229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1F8B
      02F104120057000000000000000000000000717171FF444444C6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF00000000000000083E3E3EBD7171
      71FF515151D80C0C0C54000000070000000000000000000000060B0B0B504E4E
      4ED4717171FF424242C30000000B000000000000000000000000000000000000
      00000001001709280183176701D0209002F5209102F6176901D1092901840001
      001800000000000000000000000000000000717171FF666666F2444444C64444
      44C6444444C6444444C6444444C6444444C6444444C6444444C6444444C64444
      44C6444444C6444444C6666666F2717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000082727
      27966F6F6FFD717171FF696969F54D4D4DD34D4D4DD3676767F4717171FF7171
      71FE2A2A2A9C0000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4ACE717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF505050D60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303032D252525934E4E4ED4676767F3676767F3505050D6272727960404
      043100000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
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
      000000000000}
    DesignInfo = 11534776
    ImageInfo = <
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
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2251
          75657374696F6E223E0D0A09093C7061746820636C6173733D22477265656E22
          20643D224D31362C3243382E332C322C322C382E332C322C313673362E332C31
          342C31342C31347331342D362E332C31342D31345332332E372C322C31362C32
          7A204D31362C3234632D312E312C302D322D302E392D322D3263302D312E312C
          302E392D322C322D3220202623393B2623393B73322C302E392C322C32433138
          2C32332E312C31372E312C32342C31362C32347A204D32302E372C31332E3363
          2D302E322C302E342D302E342C302E372D302E362C31632D302E332C302E332D
          302E352C302E352D302E382C302E37632D302E332C302E322D302E362C302E34
          2D302E392C302E3620202623393B2623393B632D302E332C302E322D302E352C
          302E342D302E372C302E37632D302E322C302E332D302E332C302E362D302E34
          2C31563138682D322E37762D302E3963302D302E362C302E322D312C302E332D
          312E3463302E322D302E342C302E342D302E372C302E362D3120202623393B26
          23393B63302E322D302E332C302E352D302E352C302E382D302E3763302E332D
          302E322C302E352D302E342C302E382D302E3663302E322D302E322C302E342D
          302E342C302E362D302E3663302E312D302E322C302E322D302E352C302E322D
          302E3963302D302E362D302E322D312D302E352D312E3320202623393B262339
          3B632D302E332D302E332D302E372D302E342D312E332D302E34632D302E342C
          302D302E372C302E312D302E392C302E32632D302E332C302E312D302E352C30
          2E332D302E372C302E35632D302E322C302E322D302E332C302E352D302E342C
          302E384331342C31322E312C31342C31322E372C31342C3133682D3320202623
          393B2623393B63302D302E372C302E312D312E362C302E342D322E3163302E32
          2D302E362C302E362D312E312C312D312E3563302E342D302E342C302E392D30
          2E382C312E352D3163302E362D302E322C312E332D302E342C322D302E346331
          2C302C312E382C302E312C322E342C302E3420202623393B2623393B63302E36
          2C302E332C312E322C302E362C312E362C302E3963302E342C302E342C302E37
          2C302E382C302E382C312E3273302E332C302E382C302E332C312E324332312C
          31322E342C32302E392C31322E392C32302E372C31332E337A222F3E0D0A093C
          2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313820313822207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203138203138
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D302C3176313663302C302E362C302E34
          2C312C312C3168313663302E362C302C312D302E342C312D31563163302D302E
          362D302E342D312D312D31483143302E342C302C302C302E342C302C317A204D
          31362C3136483256326831345631367A222F3E0D0A3C706F6C79676F6E20636C
          6173733D22426C61636B2220706F696E74733D2231322C3520382C3920362C37
          20342C3920362C313120382C31332031302C31312031342C3720222F3E0D0A3C
          2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000017744558745469746C6500486964653B4869646550726F647563743B
          B35986300000003B49444154785EED91310A003008C4FAFFCFDC13D3C1457468
          417172C82212C41CA0445D20890860F337B6E88D4EF04512B45C30FA83968C9B
          71335E0056EFC3B0AA43F30000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313820313822207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203138203138
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D392C30222F3E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D392C3043342C302C302C342C302C3963
          302C352C342C392C392C3963352C302C392D342C392D394331382C342C31342C
          302C392C307A204D392C3136632D332E392C302D372D332E312D372D3763302D
          332E392C332E312D372C372D3720202623393B63332E392C302C372C332E312C
          372C374331362C31322E392C31322E392C31362C392C31367A222F3E0D0A3C63
          6972636C6520636C6173733D22426C61636B222063783D2239222063793D2239
          2220723D2235222F3E0D0A3C2F7376673E0D0A}
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
          63653D227072657365727665223E2E5265647B66696C6C3A234431314331433B
          7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
          233033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66
          696C6C3A234646423131353B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D2254696D65223E0D0A09093C7061746820636C6173733D22526564222064
          3D224D31362C3443392E342C342C342C392E342C342C313673352E342C31322C
          31322C31327331322D352E342C31322D31325332322E362C342C31362C347A20
          4D31362C3236632D352E352C302D31302D342E352D31302D31305331302E352C
          362C31362C3620202623393B2623393B7331302C342E352C31302C3130533231
          2E352C32362C31362C32367A222F3E0D0A09093C706F6C79676F6E20636C6173
          733D22426C61636B2220706F696E74733D2231362C31362031362C382031342C
          382031342C31382032342C31382032342C3136202623393B222F3E0D0A093C2F
          673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          616E6473636170652220786D6C6E733D22687474703A2F2F7777772E77332E6F
          72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F
          2F7777772E77332E6F72672F313939392F786C696E6B2220783D223070782220
          793D22307078222076696577426F783D2230203020333220333222207374796C
          653D22656E61626C652D6261636B67726F756E643A6E65772030203020333220
          33323B2220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A73
          706163653D227072657365727665223E2E426C61636B7B66696C6C3A23373237
          3237323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C
          75652220643D224D32322C31384838762D326831345631387A204D32322C3132
          483876326831345631327A222F3E0D0A3C7061746820636C6173733D22426C61
          636B2220643D224D32372C34483343322E342C342C322C342E342C322C357632
          3063302C302E362C302E342C312C312C3168323463302E362C302C312D302E34
          2C312D3156354332382C342E342C32372E362C342C32372C347A204D32362C32
          34483456366832325632347A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D225A
          6F6F6D5F496E2220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D2242
          6C75652220706F696E74733D2231382C31322031342C31322031342C38203132
          2C382031322C313220382C313220382C31342031322C31342031322C31382031
          342C31382031342C31342031382C313420222F3E0D0A3C7061746820636C6173
          733D22426C61636B2220643D224D32392E372C32372E334C32322C31392E3663
          302C302D302E312D302E312D302E312D302E3163312E332D312E382C322E312D
          342E312C322E312D362E3563302D362E312D342E392D31312D31312D31314336
          2E392C322C322C362E392C322C313320202623393B73342E392C31312C31312C
          313163322E342C302C342E372D302E382C362E352D322E3163302C302C302C30
          2E312C302E312C302E316C372E372C372E3763302E332C302E332C302E392C30
          2E332C312E322C306C312E322D312E324333302E312C32382E322C33302E312C
          32372E362C32392E372C32372E337A20202623393B204D342C313363302D352C
          342D392C392D3963352C302C392C342C392C39732D342C392D392C3943382C32
          322C342C31382C342C31337A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2247
          72616E645F546F74616C735F4F6E5F526F77735F436F6C756D6E735F5069766F
          745F5461626C652220786D6C6E733D22687474703A2F2F7777772E77332E6F72
          672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F
          7777772E77332E6F72672F313939392F786C696E6B2220783D22307078222079
          3D22307078222076696577426F783D2230203020333220333222207374796C65
          3D22656E61626C652D6261636B67726F756E643A6E6577203020302033322033
          323B2220786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C7374796C6520747970653D22746578742F6373732220786D6C3A7370
          6163653D227072657365727665223E2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D262331333B262331303B2623393B2E7374307B6F706163697479
          3A302E37353B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C
          61636B2220643D224D32372C32483543342E342C322C342C322E342C342C3376
          323663302C302E362C302E342C312C312C3168323263302E362C302C312D302E
          342C312D3156334332382C322E342C32372E362C322C32372C327A204D32362C
          3238483656346832305632387A222F3E0D0A3C6720636C6173733D2273743022
          3E0D0A09093C7061746820636C6173733D22426C61636B2220643D224D31382C
          3130483856386831305631307A204D31382C3132682D38763268385631327A20
          4D31382C3136483876326831305631367A222F3E0D0A093C2F673E0D0A3C7061
          746820636C6173733D22426C75652220643D224D32342C3130682D3456386834
          5631307A204D32342C3132682D34763268345631327A204D32342C3136682D34
          763268345631367A204D31382C3232483876326831305632327A204D32342C32
          32682D34763268345632327A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2252
          65646F2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F637373223E2E426C75657B66696C6C
          3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C75652220643D224D31362C313056346C31362C31304C31362C3234762D
          3643302C31382C302C32362C302C323653302C31302C31362C31307A222F3E0D
          0A3C2F7376673E0D0A}
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
          233131373744373B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D22517569636B46696C746572223E0D0A09093C706F6C79676F6E20636C61
          73733D2259656C6C6F772220706F696E74733D22302C322032302C322032302C
          362031322C31342031322C323420382C323820382C313420302C36202623393B
          222F3E0D0A09093C7061746820636C6173733D22477265656E2220643D224D33
          312C3134483135632D302E352C302D312C302E352D312C3176313663302C302E
          352C302E352C312C312C3168313663302E352C302C312D302E352C312D315631
          354333322C31342E352C33312E352C31342C33312C31347A204D32322C32386C
          2D352D3520202623393B2623393B6C322D326C332C336C362D366C322C324C32
          322C32387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2246
          696C6C5F55702220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23373237
          3237323B7D262331333B262331303B2623393B2E7374307B6F7061636974793A
          302E353B7D3C2F7374796C653E0D0A3C6720636C6173733D22737430223E0D0A
          09093C7061746820636C6173733D22426C61636B2220643D224D32382C327632
          30483138762D3668342E374C31352C342E344C372E332C313648313276364832
          56324832387A222F3E0D0A093C2F673E0D0A3C7061746820636C6173733D2242
          6C75652220643D224D32382C33304832762D366832365633307A204D31362C32
          32762D3868336C2D342D366C2D342C36683376384831367A222F3E0D0A3C2F73
          76673E0D0A}
      end>
  end
  object Produto: TFDQuery
    CachedUpdates = True
    AggregatesActive = True
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evMode, evItems, evRecsMax, evRowsetSize, evRecordCountMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDynamic
    FetchOptions.RowsetSize = 100
    ResourceOptions.AssignedValues = [rvStoreItems]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'select iif(P.CODPRODUTO_TIPO <> 2, E.ESTOQUE, 0) as ESTOQUE_P,'
      
        '       P.CODIGO, P.CODFABRICA, P.ATIVO, P.ESTRELA, P.TEM_GRADE,P' +
        '.TEM_TABELA_PRECO, P.TEM_COMPOSICAO,P.TEM_FLUXO,P.TEM_WIZARD,'
      
        '       P.CODPRODUTO_TIPO, P.CODPRODUTO_CATEGORIA, P.CODPRODUTO_G' +
        'RUPO, '
      
        '       P.DESCRICAO, P.UNIDADE, P.LOCAL, P.ESTOQUE_MIN, P.ESTOQUE' +
        '_MAX, PC.DESCRICAO AS CATEGORIA,'
      '       P.CUSTO, P.VALOR_COMPRA, P.VALOR, P.CODFAMILIA,'
      
        '       E.CODEMPRESA, E.CODPRODUTO, GP.DESCRICAO as PRODUTO_GRUPO' +
        ', P.CALC_PACRESC_PRAZO, P.CALC_PDESC_ATACADO, P.CALC_VPRAZO, P.C' +
        'ALC_VATACADO,'
      
        '       F.RAZAOSOCIAL as FORNECEDOR, PT.DESCRICAO as PRODUTO_TIPO' +
        ', P.LARG,'
      
        '       P.COMP, P.ESPESSURA, C.DESCRICAO as COR, P.CALC_QPESO_BRU' +
        'TO,  P.DT_ALTERACAO,'
      
        '       P.CODNF_NCM, L.DESCRICAO as LOCAL_APLICACAO, PFOR.DT_ULTI' +
        'MA_COMPRA, PT.CLASSIFICACAO'
      'from PRODUTO P'
      
        'left join PRODUTO_ESTOQUE E on (P.CODIGO = E.CODPRODUTO) and (E.' +
        'CODEMPRESA = :EMP)'
      'left join PESSOAS F on (P.PESSOA_RESPONSAVEL_CODIGO = F.CODIGO)'
      
        'left join PRODUTO_GRUPO GP on (P.CODPRODUTO_GRUPO = GP.CODIGO) a' +
        'nd (GP.CODNF_NATUREZA_OPERACAO = 0)'
      
        'left join PRODUTO_CATEGORIA PC on (P.CODPRODUTO_CATEGORIA = PC.C' +
        'ODIGO)'
      'left join PRODUTO_TIPO PT on (P.CODPRODUTO_TIPO = PT.CODIGO)'
      'left join COR C on (P.CODCOR = C.CODIGO)'
      'left join LOCAL L on (P.CODLOCAL = L.CODIGO)'
      
        'left join(select PF.CODPRODUTO, max(PF.DT_ULTIMA_COMPRA) as DT_U' +
        'LTIMA_COMPRA '
      '          from PRODUTO_FORNECEDOR PF'
      
        '          group by PF.CODPRODUTO) PFOR on (PFOR.CODPRODUTO = P.C' +
        'ODIGO) ')
    Left = 403
    Top = 265
    ParamData = <
      item
        Name = 'EMP'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object ProdutoESTOQUE_P: TFloatField
      FieldName = 'ESTOQUE_P'
      Origin = 'ESTOQUE_P'
    end
    object ProdutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ProdutoCODFABRICA: TStringField
      FieldName = 'CODFABRICA'
      Origin = 'CODFABRICA'
      Size = 60
    end
    object ProdutoCODPRODUTO_TIPO: TIntegerField
      FieldName = 'CODPRODUTO_TIPO'
      Origin = 'CODPRODUTO_TIPO'
    end
    object ProdutoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object ProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object ProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object ProdutoLOCAL: TStringField
      FieldName = 'LOCAL'
      Origin = 'LOCAL'
      Size = 30
    end
    object ProdutoESTOQUE_MIN: TFloatField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
    end
    object ProdutoESTOQUE_MAX: TFloatField
      FieldName = 'ESTOQUE_MAX'
      Origin = 'ESTOQUE_MAX'
    end
    object ProdutoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object ProdutoCODEMPRESA: TStringField
      FieldName = 'CODEMPRESA'
      Origin = 'CODEMPRESA'
      Size = 10
    end
    object ProdutoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
    end
    object ProdutoPRODUTO_TIPO: TStringField
      FieldName = 'PRODUTO_TIPO'
      Origin = 'PRODUTO_TIPO'
      Size = 15
    end
    object ProdutoCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Size = 50
    end
    object ProdutoCODNF_NCM: TStringField
      FieldName = 'CODNF_NCM'
      Origin = 'CODNF_NCM'
      FixedChar = True
      Size = 9
    end
    object ProdutoLOCAL_APLICACAO: TStringField
      FieldName = 'LOCAL_APLICACAO'
      Origin = 'LOCAL_APLICACAO'
      Size = 150
    end
    object ProdutoCustoRef: TStringField
      FieldKind = fkCalculated
      FieldName = 'CustoRef'
      Calculated = True
    end
    object ProdutoDesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'Desc'
      Calculated = True
    end
    object ProdutoCATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORIA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object ProdutoFORNECEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object ProdutoLARG: TFloatField
      FieldName = 'LARG'
      Origin = 'LARG'
    end
    object ProdutoCOMP: TFloatField
      FieldName = 'COMP'
      Origin = 'COMP'
    end
    object ProdutoESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
      Origin = 'ESPESSURA'
    end
    object ProdutoDT_ULTIMA_COMPRA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DT_ULTIMA_COMPRA'
      Origin = 'DT_ULTIMA_COMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object ProdutoCODPRODUTO_CATEGORIA: TStringField
      FieldName = 'CODPRODUTO_CATEGORIA'
      Origin = 'CODPRODUTO_CATEGORIA'
      Size = 15
    end
    object ProdutoCODPRODUTO_GRUPO: TStringField
      FieldName = 'CODPRODUTO_GRUPO'
      Origin = 'CODPRODUTO_GRUPO'
      Size = 15
    end
    object ProdutoPRODUTO_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_GRUPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object ProdutoESTRELA: TStringField
      FieldName = 'ESTRELA'
      Origin = 'ESTRELA'
      Size = 10
    end
    object ProdutoCLASSIFICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASSIFICACAO'
      Origin = 'CLASSIFICACAO'
      ProviderFlags = []
      Size = 15
    end
    object ProdutoCUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object ProdutoDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ProdutoTEM_GRADE: TStringField
      FieldName = 'TEM_GRADE'
      Origin = 'TEM_GRADE'
      Size = 1
    end
    object ProdutoTEM_TABELA_PRECO: TStringField
      FieldName = 'TEM_TABELA_PRECO'
      Origin = 'TEM_TABELA_PRECO'
      Size = 1
    end
    object ProdutoTEM_COMPOSICAO: TStringField
      FieldName = 'TEM_COMPOSICAO'
      Origin = 'TEM_COMPOSICAO'
      Size = 1
    end
    object ProdutoTEM_FLUXO: TStringField
      FieldName = 'TEM_FLUXO'
      Origin = 'TEM_FLUXO'
      Size = 1
    end
    object ProdutoTEM_WIZARD: TStringField
      FieldName = 'TEM_WIZARD'
      Origin = 'TEM_WIZARD'
      Size = 1
    end
    object ProdutoVALOR_COMPRA: TFloatField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
    end
    object ProdutoCODFAMILIA: TIntegerField
      FieldName = 'CODFAMILIA'
      Origin = 'CODFAMILIA'
    end
    object ProdutoCALC_PACRESC_PRAZO: TFloatField
      FieldName = 'CALC_PACRESC_PRAZO'
      Origin = 'CALC_PACRESC_PRAZO'
    end
    object ProdutoCALC_PDESC_ATACADO: TFloatField
      FieldName = 'CALC_PDESC_ATACADO'
      Origin = 'CALC_PDESC_ATACADO'
    end
    object ProdutoCALC_VPRAZO: TFloatField
      FieldName = 'CALC_VPRAZO'
      Origin = 'CALC_VPRAZO'
    end
    object ProdutoCALC_VATACADO: TFloatField
      FieldName = 'CALC_VATACADO'
      Origin = 'CALC_VATACADO'
    end
    object ProdutoCALC_QPESO_BRUTO: TFloatField
      FieldName = 'CALC_QPESO_BRUTO'
      Origin = 'CALC_QPESO_BRUTO'
    end
    object ProdutoMinData: TAggregateField
      FieldName = 'MinData'
      Active = True
      DisplayName = ''
    end
    object ProdutoMaxData: TAggregateField
      FieldName = 'MaxData'
      Active = True
      DisplayName = ''
    end
  end
  object DSProduto: TDataSource
    DataSet = Produto
    Left = 431
    Top = 265
  end
  object Produto_Roteiro_Ficha_Tecnica: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODROTEIRO_PERGUNTA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select * from Produto_Roteiro_Ficha_Tecnica '
      'where CODROTEIRO_PERGUNTA = :Codigo')
    Left = 403
    Top = 305
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
  object DSProduto_Roteiro_Ficha_Tecnica: TDataSource
    DataSet = Produto_Roteiro_Ficha_Tecnica
    Left = 431
    Top = 305
  end
end
