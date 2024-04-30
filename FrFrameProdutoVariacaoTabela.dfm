inherited FrmProdutoVariacaoTabela: TFrmProdutoVariacaoTabela
  Width = 638
  ExplicitWidth = 638
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 638
    ExplicitWidth = 638
    inherited btnMenuConfig: TcxButton
      Left = 620
      ExplicitLeft = 620
    end
    object GridPrecos: TcxGrid [1]
      Left = 0
      Top = 122
      Width = 638
      Height = 185
      TabOrder = 10
      object GridPrecosDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object GridPrecosDBTableView2Column1: TcxGridDBColumn
          DataBinding.FieldName = 'De'
          Options.Editing = False
        end
        object GridPrecosDBTableView2TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
          Options.Editing = False
          SortIndex = 0
          SortOrder = soDescending
          Width = 69
        end
        object GridPrecosDBTableView2QUANT: TcxGridDBColumn
          Caption = 'Quant.'
          DataBinding.FieldName = 'QUANT'
          Options.Editing = False
          SortIndex = 1
          SortOrder = soAscending
        end
        object GridPrecosDBTableView2PERC_LUCRO_DESEJADO: TcxGridDBColumn
          Caption = '% Lucro Desejado'
          DataBinding.FieldName = 'PERC_LUCRO_DESEJADO'
          Visible = False
          VisibleForEditForm = bTrue
          Width = 102
        end
        object GridPrecosDBTableView2MARKUP: TcxGridDBColumn
          Caption = 'Markup'
          DataBinding.FieldName = 'MARKUP'
          Visible = False
          VisibleForEditForm = bTrue
        end
        object GridPrecosDBTableView2PORCENTAGEM: TcxGridDBColumn
          Caption = '% Desconto'
          DataBinding.FieldName = 'PORCENTAGEM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 71
        end
        object GridPrecosDBTableView2Valor: TcxGridDBColumn
          Caption = 'R$ Valor'
          DataBinding.FieldName = 'Valor'
          Options.Editing = False
          Width = 90
        end
      end
      object GridPrecosLevel1: TcxGridLevel
        GridView = GridPrecosDBTableView2
      end
    end
    object chkTem_Tabela_Preco_Fixo: TcxDBCheckBox [2]
      Left = 12
      Top = 340
      Hint = 
        'Quando selecionado, os pre'#231'os ir'#227'o se manter o mesmo independent' +
        'e da quantidade, dentro de cada faixa da Tabela de Pre'#231'os'#13#10'Exemp' +
        'lo: de 1 a 100 unidades, o pre'#231'o total ser'#225' sempre R$ 40,00'
      Caption = 'Exemplo: de 1 a 100 unidades, o pre'#231'o sempre ser'#225' R$ 40,00'
      DataBinding.DataField = 'TEM_TABELA_PRECO_FIXO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.MultiLine = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8404992
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Transparent = True
      Width = 333
    end
    object cxLabel19: TcxLabel [3]
      Left = 0
      Top = 19
      Caption = 'Tabelas de pre'#231'os de venda'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = 7697781
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 11711154
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lblUnidade: TcxDBLabel [4]
      Left = 252
      Top = 83
      DataBinding.DataField = 'UNIDADE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 26
      Width = 33
      AnchorY = 96
    end
    object edtTabelaPrecoDe: TcxCurrencyEdit [5]
      Left = 12
      Top = 88
      Properties.DisplayFormat = '0.##'
      Style.HotTrack = False
      TabOrder = 2
      Width = 53
    end
    object cbxTabelaPrecoTipo: TcxLookupComboBox [6]
      Left = 66
      Top = 88
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.OnEditValueChanged = cbxTabelaPrecoTipoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 3
      Width = 104
    end
    object edtTabelaPrecoQuant: TcxCurrencyEdit [7]
      Left = 171
      Top = 88
      Properties.DisplayFormat = '0.##'
      Style.HotTrack = False
      TabOrder = 4
      Width = 80
    end
    object edtTabelaPrecoDesconto: TcxCurrencyEdit [8]
      Left = 286
      Top = 88
      Properties.DisplayFormat = '0.## %'
      Style.HotTrack = False
      TabOrder = 6
      Width = 86
    end
    object edtTabelaPrecoValor: TcxCurrencyEdit [9]
      Left = 373
      Top = 88
      Style.HotTrack = False
      TabOrder = 7
      Width = 86
    end
    object btnAdicionaTabelaPreco: TcxButton [10]
      Left = 460
      Top = 78
      Width = 31
      Height = 31
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 8
      OnClick = btnAdicionaTabelaPrecoClick
    end
    object btnRemoverTabelaPreco: TcxButton [11]
      Left = 492
      Top = 78
      Width = 31
      Height = 31
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 9
      TabStop = False
      OnClick = btnRemoverTabelaPrecoClick
    end
    object chkTem_Tabela_Preco_QTDADePeca: TcxDBCheckBox [12]
      Left = 346
      Top = 327
      Hint = 
        'Quando selecionado, os pre'#231'os ser'#227'o baseados na Quantidade de Pe' +
        #231'as vendida, e n'#227'o no campo "Quant" que pode representar uma met' +
        'ragem quadrada quando o produto usar medidas'
      Caption = 'Tabela de Pre'#231'o pela Quantidade de Pe'#231'as em vez da Quantidade'
      DataBinding.DataField = 'TEM_TABELA_PRECO_QTDADEPECA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.MultiLine = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8404992
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Transparent = True
      Width = 189
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem116: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      Control = cxLabel19
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 230
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem21: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutGroup36: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup31: TdxLayoutGroup
      Parent = dxLayoutGroup36
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Crie sua tabela'
      ButtonOptions.Buttons = <>
      ItemIndex = 7
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object liedtTabelaPrecoDe: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'De'
      CaptionOptions.Layout = clTop
      Control = edtTabelaPrecoDe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object licbxTabelaPrecoTipo: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignVert = avBottom
      CaptionOptions.Layout = clTop
      Control = cbxTabelaPrecoTipo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtTabelaPrecoQuant: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Quantidade'
      CaptionOptions.Layout = clTop
      Control = edtTabelaPrecoQuant
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lilblUnidade: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignVert = avBottom
      CaptionOptions.Layout = clTop
      Control = lblUnidade
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtTabelaPrecoDesconto: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = '% Desconto'
      CaptionOptions.Layout = clTop
      Control = edtTabelaPrecoDesconto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtTabelaPrecoValor: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'R$ Valor'
      CaptionOptions.Layout = clTop
      Control = edtTabelaPrecoValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object libtnAdicionaTabelaPreco: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnAdicionaTabelaPreco
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 31
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object libtnRemoverTabelaPreco: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnRemoverTabelaPreco
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 31
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl8Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridPrecos
      ControlOptions.OriginalHeight = 85
      ControlOptions.OriginalWidth = 489
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object lichkTem_Tabela_Preco_Fixo: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Pre'#231'os fixo por Faixa de Quantidade.'
      CaptionOptions.Layout = clTop
      Control = chkTem_Tabela_Preco_Fixo
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 333
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lichkTem_Tabela_Preco_QTDADePeca: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = chkTem_Tabela_Preco_QTDADePeca
      ControlOptions.OriginalHeight = 47
      ControlOptions.OriginalWidth = 189
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object WRCalc: TWRCalculaConfiguracoes
    TipoCalculo = tcCadastro
    SPrTipoCalc = tssCalcCadastro
    Left = 372
    Top = 127
  end
  object DSProdutoPreco: TDataSource
    Left = 372
    Top = 100
  end
end
