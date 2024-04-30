inherited FrmMeta: TFrmMeta
  Caption = 'Cadastro de Meta'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited btnNovo: TcxButton
      Left = 1832
      ExplicitLeft = 1832
    end
    inherited btnConfirmar: TcxButton
      Left = 1832
      ExplicitLeft = 1832
    end
    inherited btnAlterar: TcxButton
      Left = 1832
      ExplicitLeft = 1832
    end
    inherited btnCancelar: TcxButton
      Left = 1832
      ExplicitLeft = 1832
    end
    inherited btnExcluir: TcxButton
      Left = 1832
      ExplicitLeft = 1832
    end
    inherited btnConsultar: TcxButton
      Left = 1832
      ExplicitLeft = 1832
    end
    inherited btnSair: TcxButton
      Left = 1832
      Top = 780
      ExplicitLeft = 1832
      ExplicitTop = 780
    end
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 18
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 770
      TabOrder = 23
      ExplicitLeft = 770
    end
    inherited edtDescricao: TcxDBTextEdit
      TabOrder = 19
      ExplicitWidth = 350
      Width = 350
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 1832
      ExplicitLeft = 1832
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 1891
      ExplicitLeft = 1891
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 7117
      Top = 9768
      TabOrder = 47
      ExplicitLeft = 7117
      ExplicitTop = 9768
    end
    inherited BtnSeguidores: TcxButton
      Left = -1910
      Top = 9768
      TabOrder = 45
      ExplicitLeft = -1910
      ExplicitTop = 9768
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 1910
      ExplicitLeft = 1910
    end
    inherited btnMenuConfig: TcxButton
      Left = 7117
      Top = 9768
      TabOrder = 46
      ExplicitLeft = 7117
      ExplicitTop = 9768
    end
    inherited PnlFrameHistorico: TPanel
      Top = 699
      Width = 1791
      Height = 94
      TabOrder = 24
      ExplicitTop = 699
      ExplicitWidth = 1791
      ExplicitHeight = 94
    end
    inherited BtnImprimir: TcxButton
      Left = 1923
      ExplicitLeft = 1923
    end
    inherited BtnDesativar: TcxButton
      Left = 1832
      ExplicitLeft = 1832
    end
    inherited BtnAtivar: TcxButton
      Left = 1832
      ExplicitLeft = 1832
    end
    inherited BtnAjuda: TcxButton
      Left = 1832
      ExplicitLeft = 1832
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 407
      TabOrder = 20
      ExplicitLeft = 407
    end
    inherited BtnImprimirPadrao: TcxButton
      Left = 1832
      ExplicitLeft = 1832
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Meta'
      ExplicitWidth = 1815
    end
    inherited btnSeguidoresNovo: TcxButton
      Left = 1871
      ExplicitLeft = 1871
    end
    object cbxEmpresa: TcxDBLookupComboBox [25]
      Left = 451
      Top = 61
      AutoSize = False
      DataBinding.DataField = 'CODEMPRESA'
      DataBinding.DataSource = DS
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 219
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [26]
      Left = 671
      Top = 61
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DS
      Properties.OnValidate = cxDBCurrencyEdit1PropertiesValidate
      Style.HotTrack = False
      TabOrder = 22
      Width = 98
    end
    object cxDBSpinEdit1: TcxDBSpinEdit [27]
      Left = 3
      Top = 97
      AutoSize = False
      DataBinding.DataField = 'DIAS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 25
      Height = 21
      Width = 121
    end
    object cxDBSpinEdit2: TcxDBSpinEdit [28]
      Left = 3
      Top = 133
      DataBinding.DataField = 'SABADO_DOMINGO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 26
      Width = 121
    end
    object cxGrid1: TcxGrid [29]
      Left = 3
      Top = 660
      Width = 1815
      Height = 20
      TabOrder = 44
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSMeta_Detalhe
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1PERCENTUAL
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGrid1DBTableView1PERCENTUAL
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1CODMETA: TcxGridDBColumn
          DataBinding.FieldName = 'CODMETA'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1TABELA: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TABELA'
          Visible = False
          VisibleForCustomization = False
          Width = 70
        end
        object cxGrid1DBTableView1CODTABELA: TcxGridDBColumn
          DataBinding.FieldName = 'CODTABELA'
          Visible = False
          VisibleForCustomization = False
          Width = 231
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 271
        end
        object cxGrid1DBTableView1PERCENTUAL: TcxGridDBColumn
          Caption = 'Percentual'
          DataBinding.FieldName = 'PERCENTUAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '%,0.00;-%,0.00'
        end
        object cxGrid1DBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cxGrid1DBTableView1QUANT: TcxGridDBColumn
          Caption = 'Quant.'
          DataBinding.FieldName = 'QUANT'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object edtPercentual: TcxCurrencyEdit [30]
      Left = 427
      Top = 628
      Properties.DisplayFormat = '%,0.00;-%,0.00'
      Properties.OnValidate = edtPercentualPropertiesValidate
      Style.HotTrack = False
      TabOrder = 39
      Width = 60
    end
    object edtValor: TcxCurrencyEdit [31]
      Left = 488
      Top = 628
      AutoSize = False
      Properties.OnValidate = edtValorPropertiesValidate
      Style.HotTrack = False
      TabOrder = 40
      Height = 21
      Width = 121
    end
    object btnAdicionarProduto: TcxButton [32]
      Left = 677
      Top = 613
      Width = 35
      Height = 36
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 42
      OnClick = btnAdicionarProdutoClick
    end
    object btnRemoverProduto: TcxButton [33]
      Left = 713
      Top = 613
      Width = 35
      Height = 36
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 43
      OnClick = btnRemoverProdutoClick
    end
    object lblCategoriaÎProduto_CategoriaÎDESCRICAO: TcxLabel [34]
      Left = 7127
      Top = 9768
      AutoSize = False
      Style.HotTrack = False
      Transparent = True
      Visible = False
      Height = 22
      Width = 290
    end
    object edtCategoriaÎProduto_Categoria: TcxButtonEdit [35]
      Left = 7127
      Top = 9768
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 31
      Visible = False
      Width = 102
    end
    object lblTipoÎProduto_TipoÎDESCRICAO: TcxLabel [36]
      Left = 116
      Top = 626
      AutoSize = False
      Style.HotTrack = False
      Transparent = True
      Height = 22
      Width = 290
    end
    object edtMarcaÎProduto_Marca: TcxButtonEdit [37]
      Left = 7117
      Top = 9768
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 35
      Visible = False
      Height = 21
      Width = 102
    end
    object edtMarcaÎProduto_MarcaÎDescricao: TcxLabel [38]
      Left = 7117
      Top = 9768
      AutoSize = False
      Style.HotTrack = False
      Transparent = True
      Visible = False
      Height = 22
      Width = 290
    end
    object edtAtendenteÎPessoasÎRAZAOSOCIAL: TcxLabel [39]
      Left = 7120
      Top = 9768
      AutoSize = False
      Style.HotTrack = False
      Transparent = True
      Visible = False
      Height = 22
      Width = 290
    end
    object edtQuant: TcxCurrencyEdit [40]
      Left = 610
      Top = 628
      Style.HotTrack = False
      TabOrder = 41
      Width = 66
    end
    object edtTipoÎProduto_Tipo: TcxButtonEdit [41]
      Left = 13
      Top = 627
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 33
      Width = 102
    end
    object dxDBDateTimeWheelPicker1: TdxDBDateTimeWheelPicker [42]
      Left = 125
      Top = 97
      DataBinding.DataField = 'DATA'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.Wheels = [pwYear, pwMonth]
      Properties.LineCount = 3
      Style.HotTrack = False
      TabOrder = 27
      Height = 76
      Width = 200
    end
    object edtAtendenteÎPessoas: TcxButtonEdit [43]
      Left = 7120
      Top = 9768
      AutoSize = False
      Properties.Buttons = <
        item
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 37
      Visible = False
      Height = 21
      Width = 102
    end
    object tcCategoria: TdxTileControl [44]
      Left = 544
      Top = 176
      Width = 803
      Height = 402
      Align = alNone
      TabOrder = 29
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clDefault
      Title.Font.Height = -16
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = []
      Title.Text = 'Faturamento por Categoria'
      object dxTileControl1Group1: TdxTileControlGroup
        Index = 0
      end
      object dxTileControl1Item1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Categoria'
        Text2.Align = oaMiddleCenter
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -27
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.Value = 'R$55.555,555,00'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
    object tcTotal: TdxTileControl [45]
      Left = 73
      Top = 176
      Width = 400
      Height = 402
      Align = alNone
      TabOrder = 28
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clDefault
      Title.Font.Height = -16
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = []
      Title.Text = 'Faturamento Total'
    end
    object tcVendaExcluida: TdxTileControl [46]
      Left = 1418
      Top = 176
      Width = 400
      Height = 300
      Align = alNone
      TabOrder = 30
    end
    object cxButton1: TcxButton [47]
      Left = 1832
      Top = 350
      Width = 116
      Height = 25
      Caption = 'cxButton1'
      TabOrder = 16
      OnClick = cxButton1Click
      OnMouseMove = cxButton1MouseMove
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 6
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 11
    end
    inherited LiedtDescricao: TdxLayoutItem
      ControlOptions.OriginalWidth = 350
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 5
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      AlignVert = avBottom
      ControlOptions.OriginalHeight = 94
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Index = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Empresa'
      CaptionOptions.Layout = clTop
      Control = cbxEmpresa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 219
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'Valor da Meta'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      Visible = False
      CaptionOptions.Text = 'Dias'
      CaptionOptions.Layout = clTop
      Control = cxDBSpinEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      Visible = False
      CaptionOptions.Text = 'Dias: Sabado \ Domingo'
      CaptionOptions.Layout = clTop
      Control = cxDBSpinEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Percentual'
      CaptionOptions.Layout = clTop
      Control = edtPercentual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Valor'
      CaptionOptions.Layout = clTop
      Control = edtValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnAdicionarProduto
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnRemoverProduto
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblCategoriaÎProduto_CategoriaÎDESCRICAO
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 290
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Grupo de Cabe'#231'alho'
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = dxLayoutGroup1TabChanged
      Index = 0
    end
    object TabCategoria: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Categoria'
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = TabCategoria
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object TabTipoProduto: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Tipo Produto'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Categoria'
      CaptionOptions.Layout = clTop
      Control = edtCategoriaÎProduto_Categoria
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = TabTipoProduto
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblTipoÎProduto_TipoÎDESCRICAO
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 290
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = TabMarca
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Marca'
      CaptionOptions.Layout = clTop
      Control = edtMarcaÎProduto_Marca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = TabMarca
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = edtMarcaÎProduto_MarcaÎDescricao
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 290
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object TabMarca: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Marca'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 0
    end
    object TabFuncionario: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Funcionario'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = TabFuncionario
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtAtendenteÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 290
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Quant'
      CaptionOptions.Layout = clTop
      Control = edtQuant
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 7
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Meta'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = TabTipoProduto
      AlignVert = avBottom
      CaptionOptions.Text = 'Tipo Produto'
      CaptionOptions.Layout = clTop
      Control = edtTipoÎProduto_Tipo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'M'#234's da Meta'
      CaptionOptions.Layout = clTop
      Control = dxDBDateTimeWheelPicker1
      ControlOptions.OriginalHeight = 76
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = TabFuncionario
      AlignVert = avBottom
      CaptionOptions.Text = 'Funcionario'
      CaptionOptions.Layout = clTop
      Control = edtAtendenteÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      Visible = False
      CaptionOptions.Text = 'dxTileControl1'
      Control = tcCategoria
      ControlOptions.OriginalHeight = 402
      ControlOptions.OriginalWidth = 803
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'dxTileControl1'
      Control = tcTotal
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      Visible = False
      CaptionOptions.Text = 'dxTileControl1'
      Control = tcVendaExcluida
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoMenuInterno
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 11
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmMeta'
    FormClassConsulta = 'TConsuMeta'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * from META where Codigo = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Meta_Detalhe: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODMETA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select MD.*, '
      ''
      'from META_DETALHE MD'
      ''
      'where MD.CODMETA = :Codigo and MD.TABELA = :Tabela')
    Left = 320
    Top = 200
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'TABELA'
        ParamType = ptInput
      end>
  end
  object DSMeta_Detalhe: TDataSource
    DataSet = Meta_Detalhe
    Left = 348
    Top = 200
  end
  object KPI: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODMETA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select * from KPI where KPI_TIPO = '#39'VENDA_CATEGORIA'#39)
    Left = 320
    Top = 232
  end
end
