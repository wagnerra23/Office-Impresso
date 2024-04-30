inherited FrmFrameTabelaPreco: TFrmFrameTabelaPreco
  Width = 959
  Height = 499
  ExplicitWidth = 959
  ExplicitHeight = 499
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 959
    Height = 499
    ExplicitWidth = 959
    ExplicitHeight = 499
    DesignSize = (
      959
      499)
    inherited btnMenuConfig: TcxButton
      Left = 941
      Top = 24
      TabOrder = 1
      ExplicitLeft = 941
      ExplicitTop = 24
    end
    object edtTabelaÎProduto_Tabela: TcxButtonEdit [1]
      Left = 0
      Top = 58
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 2
      Width = 80
    end
    object edtTabelaÎProduto_TabelaÎDESCRICAO: TcxLabel [2]
      Left = 81
      Top = 59
      AutoSize = False
      Style.HotTrack = False
      Height = 20
      Width = 375
    end
    object edtPercAcrescimo: TcxCurrencyEdit [3]
      Left = 538
      Top = 58
      AutoSize = False
      EditValue = 0c
      Properties.DisplayFormat = '##0.00'
      Properties.Nullstring = '0,00'
      Properties.OnChange = edtPercAcrescimoPropertiesChange
      Style.HotTrack = False
      TabOrder = 5
      Height = 21
      Width = 80
    end
    object edtPercDesconto: TcxCurrencyEdit [4]
      Left = 619
      Top = 58
      AutoSize = False
      EditValue = 0c
      Properties.DisplayFormat = '##0.00'
      Properties.Nullstring = '0,00'
      Properties.OnChange = edtPercDescontoPropertiesChange
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 80
    end
    object edtProdutoValorFinal: TcxCurrencyEdit [5]
      Left = 700
      Top = 58
      AutoSize = False
      EditValue = '0'
      Properties.DisplayFormat = '##0.00'
      Properties.Nullstring = '0,00'
      Properties.OnChange = edtProdutoValorFinalPropertiesChange
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 80
    end
    object GridProduto_Tabela_Preco: TcxGrid [6]
      Left = 0
      Top = 80
      Width = 959
      Height = 393
      TabOrder = 11
      object GridProduto_Tabela_PrecoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.InfoText = 'Clique aqui para adicionar uma nova tabela'
        OptionsView.Indicator = True
        object GridProduto_Tabela_PrecoDBTableView1CODPRODUTO_TABELA: TcxGridDBColumn
          Caption = 'C'#243'digo Tabela'
          DataBinding.FieldName = 'CODPRODUTO_TABELA'
          Width = 76
        end
        object GridProduto_Tabela_PrecoDBTableView1CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
          Width = 100
        end
        object GridProduto_Tabela_PrecoDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Options.Editing = False
          Width = 326
        end
        object GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTO: TcxGridDBColumn
          Caption = '% Desconto'
          DataBinding.FieldName = 'PERC_DESCONTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '% ,0.00;-% ,0.00'
          Properties.OnChange = GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTOPropertiesChange
          Properties.OnValidate = GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTOPropertiesValidate
          Width = 74
        end
        object GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMO: TcxGridDBColumn
          Caption = '% Acr'#233'scimo'
          DataBinding.FieldName = 'PERC_ACRESCIMO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '% ,0.00;-% ,0.00'
          Properties.OnChange = GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMOPropertiesChange
          Properties.OnValidate = GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMOPropertiesValidate
          Width = 77
        end
        object GridProduto_Tabela_PrecoDBTableView1VALOR: TcxGridDBColumn
          Caption = 'R$ Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.OnChange = GridProduto_Tabela_PrecoDBTableView1VALORPropertiesChange
          Properties.OnValidate = GridProduto_Tabela_PrecoDBTableView1VALORPropertiesValidate
          Width = 100
        end
        object GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAO: TcxGridDBColumn
          Caption = 'Manter Desconto'
          DataBinding.FieldName = 'TEM_MARGEM_FIXA_CONTIBUICAO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Properties.OnChange = GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAOPropertiesChange
          Properties.OnValidate = GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAOPropertiesValidate
          Width = 89
        end
      end
      object GridProduto_Tabela_PrecoLevel1: TcxGridLevel
        GridView = GridProduto_Tabela_PrecoDBTableView1
      end
    end
    object chkManterDesconto: TcxCheckBox [7]
      Left = 781
      Top = 58
      Hint = 
        'Quando houver altera'#231#227'o no valor do produto, essa op'#231#227'o vai mant' +
        'er o mesmo valor de desconto e vai alterar o valor da tabela '
      AutoSize = False
      Caption = 'Manter Desconto'
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
      Height = 21
      Width = 21
    end
    object btnAdicionarProduto: TcxButton [8]
      Left = 886
      Top = 43
      Width = 36
      Height = 36
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 9
      OnClick = btnAdicionarProdutoClick
    end
    object btnRemoverProduto: TcxButton [9]
      Left = 923
      Top = 43
      Width = 36
      Height = 36
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 10
      OnClick = btnRemoverProdutoClick
    end
    object edtValorOriginal: TcxDBCurrencyEdit [10]
      Left = 457
      Top = 57
      AutoSize = False
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DSProduto
      Properties.DisplayFormat = '##0.00'
      Properties.Nullstring = '0,00'
      Properties.ReadOnly = True
      Properties.OnChange = edtValorOriginalPropertiesChange
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 80
    end
    object cxLabel1: TcxLabel [11]
      Left = 0
      Top = 0
      Caption = 'Pre'#231'o Especial para Cliente'
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
    object btnOk: TBitBtn [12]
      Left = 0
      Top = 474
      Width = 959
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 12
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ItemIndex = 8
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Codigo'
      CaptionOptions.Layout = clTop
      Control = edtTabelaÎProduto_Tabela
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object edtDescricao: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Descricao'
      CaptionOptions.Layout = clTop
      Control = edtTabelaÎProduto_TabelaÎDESCRICAO
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      CaptionOptions.Text = '% Acr'#233'scimo'
      CaptionOptions.Layout = clTop
      Control = edtPercAcrescimo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      CaptionOptions.Text = '% Desconto'
      CaptionOptions.Layout = clTop
      Control = edtPercDesconto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'R$ Valor'
      CaptionOptions.Layout = clTop
      Control = edtProdutoValorFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      Control = GridProduto_Tabela_Preco
      ControlOptions.OriginalHeight = 372
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Manter Desconto'
      CaptionOptions.Layout = clRight
      Control = chkManterDesconto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAdicionarProduto
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 36
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnRemoverProduto
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 36
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtValorOriginal: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Valor Original'
      CaptionOptions.Layout = clTop
      Control = edtValorOriginal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'BitBtn1'
      CaptionOptions.Visible = False
      Control = btnOk
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited wrFrameEventos: TwrFrameEventos
    OnInicializar = wrFrameEventosInicializar
  end
  object DSProduto: TDataSource
    Left = 372
    Top = 100
  end
end
