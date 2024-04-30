inherited FrmProduto_Tabela: TFrmProduto_Tabela
  Caption = 'Cadastro de Tabela de Pre'#231'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlHistorico_SLA: TPanel
    TabOrder = 4
  end
  inherited PnlHistorico_Seguidor: TPanel
    Left = 195
    Top = 231
    ExplicitLeft = 195
    ExplicitTop = 231
  end
  object pnlAlteraPercentual: TPanel [2]
    Left = 461
    Top = 166
    Width = 268
    Height = 107
    Color = 16505534
    ParentBackground = False
    TabOrder = 3
    Visible = False
    OnExit = pnlAlteraPercentualExit
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 266
      Height = 105
      Align = alClient
      TabOrder = 0
      object edtAcrescimo: TcxCurrencyEdit
        Left = 75
        Top = 37
        Properties.DecimalPlaces = 8
        Properties.DisplayFormat = '0.00 %;- ,0.00 %'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        Width = 181
      end
      object edtDesconto: TcxCurrencyEdit
        Left = 75
        Top = 10
        Properties.DecimalPlaces = 8
        Properties.DisplayFormat = '0.00 %;- ,0.00 %'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Width = 181
      end
      object BtnAtualiza: TcxButton
        Left = 10
        Top = 64
        Width = 136
        Height = 31
        Caption = 'Atualiza'
        TabOrder = 2
        OnClick = BtnAtualizaClick
      end
      object btnFechar: TcxButton
        Left = 152
        Top = 64
        Width = 104
        Height = 31
        Caption = 'Fechar'
        TabOrder = 3
        OnClick = btnFecharClick
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object LiedtAcrescimo: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Acr'#233'scimo %'
        Control = edtAcrescimo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 89
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Desconto %'
        Control = edtDesconto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = BtnAtualiza
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnFechar
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 104
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avClient
        LayoutDirection = ldHorizontal
        Index = 2
      end
    end
  end
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 18
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 757
      TabOrder = 22
      ExplicitLeft = 757
    end
    inherited edtDescricao: TcxDBTextEdit
      TabOrder = 19
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 37
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 35
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 36
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 852
      Height = 621
      TabOrder = 34
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 852
      ExplicitHeight = 621
    end
    inherited cbxAtivo: TcxDBComboBox
      TabOrder = 20
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Tabela de Pre'#231'o'
    end
    object GridProduto_Tabela_Preco: TcxGrid [25]
      Left = 13
      Top = 154
      Width = 852
      Height = 542
      PopupMenu = MenuGridProdutos
      TabOrder = 32
      object GridProduto_Tabela_PrecoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSProduto_Tabela_Preco
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object GridProduto_Tabela_PrecoDBTableView1CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'd. Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          Options.Editing = False
          Width = 100
        end
        object GridProduto_Tabela_PrecoDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Options.Editing = False
          Width = 326
        end
        object GridProduto_Tabela_PrecoDBTableView1VALOR_ORIGINAL: TcxGridDBColumn
          Caption = 'Valor Original'
          DataBinding.FieldName = 'VALOR_ORIGINAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTO: TcxGridDBColumn
          Caption = '% Desconto'
          DataBinding.FieldName = 'PERC_DESCONTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.OnValidate = GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTOPropertiesValidate
          Width = 74
        end
        object GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMO: TcxGridDBColumn
          Caption = '% Acr'#233'scimo'
          DataBinding.FieldName = 'PERC_ACRESCIMO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '% ,0.00;-% ,0.00'
          Properties.OnValidate = GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMOPropertiesValidate
          Width = 77
        end
        object GridProduto_Tabela_PrecoDBTableView1VALOR: TcxGridDBColumn
          Caption = 'R$ Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.OnValidate = GridProduto_Tabela_PrecoDBTableView1VALORPropertiesValidate
          Width = 100
        end
        object GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAO: TcxGridDBColumn
          Caption = 'Manter Desconto'
          DataBinding.FieldName = 'TEM_MARGEM_FIXA_CONTIBUICAO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Properties.OnValidate = GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAOPropertiesValidate
          Width = 104
        end
      end
      object GridProduto_Tabela_PrecoLevel1: TcxGridLevel
        GridView = GridProduto_Tabela_PrecoDBTableView1
      end
    end
    object edtProdutoÎProduto: TcxButtonEdit [26]
      Left = 13
      Top = 131
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 23
      Width = 102
    end
    object lblProdutoÎProdutoÎDESCRICAO: TcxLabel [27]
      Left = 116
      Top = 133
      AutoSize = False
      Style.HotTrack = False
      Height = 20
      Width = 296
    end
    object edtPercDesconto: TcxCurrencyEdit [28]
      Left = 558
      Top = 131
      AutoSize = False
      EditValue = 0c
      Properties.DisplayFormat = '##0.00'
      Properties.Nullstring = '0,00'
      Properties.OnChange = edtPercDescontoPropertiesChange
      Style.HotTrack = False
      TabOrder = 27
      Height = 21
      Width = 60
    end
    object edtProdutoValorFinal: TcxCurrencyEdit [29]
      Left = 619
      Top = 131
      AutoSize = False
      EditValue = '0'
      Properties.DisplayFormat = '##0.00'
      Properties.Nullstring = '0,00'
      Properties.OnChange = edtProdutoValorFinalPropertiesChange
      Style.HotTrack = False
      TabOrder = 28
      Height = 21
      Width = 66
    end
    object chkManterDesconto: TcxCheckBox [30]
      Left = 686
      Top = 132
      AutoSize = False
      Caption = 'Manter Desconto'
      Style.HotTrack = False
      TabOrder = 29
      Transparent = True
      Height = 21
      Width = 106
    end
    object btnAdicionarProduto: TcxButton [31]
      Left = 793
      Top = 117
      Width = 35
      Height = 36
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 30
      OnClick = btnAdicionarProdutoClick
    end
    object btnRemoverProduto: TcxButton [32]
      Left = 829
      Top = 117
      Width = 35
      Height = 36
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 31
      OnClick = btnRemoverProdutoClick
    end
    object edtPercAcrescimo: TcxCurrencyEdit [33]
      Left = 494
      Top = 131
      AutoSize = False
      EditValue = 0c
      Properties.DisplayFormat = '##0.00'
      Properties.Nullstring = '0,00'
      Properties.OnChange = edtPercAcrescimoPropertiesChange
      Style.HotTrack = False
      TabOrder = 26
      Height = 21
      Width = 63
    end
    object edtProdutoÎProdutoÎVALOR: TcxCurrencyEdit [34]
      Left = 413
      Top = 131
      AutoSize = False
      EditValue = 0c
      Properties.DisplayFormat = '##0.00'
      Properties.Nullstring = '0,00'
      Properties.ReadOnly = True
      Properties.OnChange = edtValorOriginalÎProdutoÎVALORPropertiesChange
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 25
      Height = 21
      Width = 80
    end
    object GridPessoas: TcxGrid [35]
      Left = 10000
      Top = 10000
      Width = 852
      Height = 621
      TabOrder = 33
      Visible = False
      object GridPessoasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSPessoas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object GridPessoasDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridPessoasDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
        end
        object GridPessoasDBTableView1CNPJCPF: TcxGridDBColumn
          Caption = 'Cnpj / Cpf'
          DataBinding.FieldName = 'CNPJCPF'
        end
        object GridPessoasDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
        end
        object GridPessoasDBTableView1FANTASIA: TcxGridDBColumn
          Caption = 'Fantasia'
          DataBinding.FieldName = 'FANTASIA'
        end
        object GridPessoasDBTableView1EMAIL: TcxGridDBColumn
          Caption = 'Email'
          DataBinding.FieldName = 'EMAIL'
        end
        object GridPessoasDBTableView1FONE1: TcxGridDBColumn
          Caption = 'Telefone'
          DataBinding.FieldName = 'FONE1'
        end
        object GridPessoasDBTableView1UF: TcxGridDBColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'UF'
        end
      end
      object GridPessoasLevel1: TcxGridLevel
        GridView = GridPessoasDBTableView1
      end
    end
    object edtEmpresaOrigemÎEmpresa: TcxDBButtonEdit [36]
      Left = 507
      Top = 61
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CODEMPRESA'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 57
    end
    object lblEmpresaOrigemÎEmpresaÎRAZAOSOCIAL: TLabel [37]
      Left = 565
      Top = 63
      Width = 191
      Height = 19
      AutoSize = False
      Color = 16505534
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object btnMenu: TcxButton [38]
      Left = 889
      Top = 360
      Width = 116
      Height = 25
      Caption = 'Menu'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000C744558745469746C65005072696E743BC83632EA00000267494441
        54785E7D93CB6B135114C6BF99C434A60F05698B1B5716752582E84AAD2822B6
        88B8101F50B45441210BEBC285150591A250A326462AA218F20FB810178A482C
        AD165AD0958216051F68D1966426F3B82FCFDCCC0C71512F7C73EE3DDCEF77EE
        DC87A19442D40C6AB74A332F4CD3EC05745E7FA33982F1CAF0E0D65D34E69127
        897F9B49EA3D7374A376AA901041F2E5D9ED0012A4A5019C0B28092C5A5E58D9
        808244476B0B38135111C4005AB55E7D587D191712928C147579052308908272
        5C03D2E4610064A0C0648E8E5776DF2EBF7D33385CB0BF7C7E0F2915494288C0
        28C0833E69EEE33B1C3E35FA67ECE1CCF4C5DCD33D0012C9E0B33CD3513EB477
        6DD744E54930D4D5852008240CD55807A3B1EB3AB0EC1A8EF4ADDF547A2C4B00
        D66880E0AAAB7B550675CB42329186904A5754A119000125015C38561DAB3B33
        604C75462B303D5F5042229D4AE0E78FEF3878EC4274046150210C686F4BE8B9
        9EC7D00460700832347000378B252C2C542145E0931AA1A4D23BBC72453B4E0F
        1D87C3380138026F03E032D409D2B3A107C5FC95C6A1C8F0084D8A8D0C744602
        B6CB41459B003E47CDE1A8D7194E666FE07FED5EFE2C7C9102F385E60600C3F7
        04AA1643D576B0BFBF0FD981CD284CCDEBCD6402641038BFA31BC5F22C7E2FDA
        A03F81CF1A0013009BFFF5753277E719EE8E3F070FCFDD63244E002E29070DE3
        D4B976BD8C91CB0FF0E9C3E46B10C708EF762BA985D43632F6722E7B628BDE79
        4087F846161E4DE3EAB99DEB0054490EC94E2AA54490085FA3655BD6ABDCFDA9
        6DF1B6A9F8ADC2756B1300BE91C75EEA31F9B94BFDFB00A44866EC44FCB23D92
        DB6CF80BF54A6944F3A08E160000000049454E44AE426082}
      TabOrder = 16
      OnClick = btnMenuClick
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 11
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      AlignVert = avBottom
      Index = -1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = GrupoTabs
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = TabProdutos
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridProduto_Tabela_Preco
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtProdutoÎProduto: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = edtProdutoÎProduto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblProdutoÎProdutoÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = lblProdutoÎProdutoÎDESCRICAO
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 296
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtPercDesconto: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Text = '% Desconto'
      CaptionOptions.Layout = clTop
      Control = edtPercDesconto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtProdutoValorFinal: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Text = 'R$ Valor'
      CaptionOptions.Layout = clTop
      Control = edtProdutoValorFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lichkManterDesconto: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = chkManterDesconto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object libtnAdicionarProduto: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Visible = False
      Control = btnAdicionarProduto
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object libtnRemoverProduto: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Visible = False
      Control = btnRemoverProduto
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtPercAcrescimo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Text = '% Acr'#233'scimo'
      CaptionOptions.Layout = clTop
      Control = edtPercAcrescimo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtProdutoÎProdutoÎVALOR: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Text = 'R$ Valor Original'
      CaptionOptions.Layout = clTop
      Control = edtProdutoÎProdutoÎVALOR
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object TabProdutos: TdxLayoutGroup
      Parent = GrupoTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Produtos'
      Index = 0
    end
    object GrupoTabs: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Produtos'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = GrupoTabs
      CaptionOptions.Text = 'Clientes'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = TabProdutos
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid2'
      CaptionOptions.Visible = False
      Control = GridPessoas
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Hint = 'Deixe em branco para aparecer para todos as empresas'
      CaptionOptions.Text = 'Empresa'
      CaptionOptions.Layout = clTop
      Control = edtEmpresaOrigemÎEmpresa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblEmpresaOrigemÎEmpresaÎRAZAOSOCIAL
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LibtnMenu: TdxLayoutItem
      Parent = GrupoMenuInterno
      Padding.Top = 10
      Padding.AssignedValues = [lpavTop]
      CaptionOptions.Visible = False
      Control = btnMenu
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 11
    end
  end
  inherited MenuConfig: TPopupMenu
    Left = 480
    Top = 128
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited MenuImprimir: TPopupMenu
    Left = 452
    Top = 128
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmProduto_Tabela'
    FormClassConsulta = 'TConsuProduto_Tabela'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from PRODUTO_TABELA'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUTO_TABELA'
    Modulo = 'PRODUTO'
  end
  object Produto_Tabela_Preco: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO_TABELA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select PTP.*, P.DESCRICAO, P.VALOR AS VALOR_ORIGINAL'
      'from PRODUTO_TABELA_PRECO PTP'
      'left join PRODUTO P on (P.CODIGO = PTP.CODPRODUTO)'
      'where (PTP.CODPRODUTO_TABELA = :CODIGO)')
    Left = 312
    Top = 100
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSProduto_Tabela_Preco: TDataSource
    DataSet = Produto_Tabela_Preco
    Left = 340
    Top = 100
  end
  object WRFormataCamposDataSets1: TWRFormataCamposDataSets
    OnCarregaDataSets = WRFormataCamposDataSets1CarregaDataSets
    Left = 424
    Top = 156
  end
  object Pessoas: TFDQuery
    BeforeOpen = PessoasBeforeOpen
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO_TABELA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select p.codigo, p.tipo, p.cnpjcpf, p.razaosocial, p.fantasia, p' +
        '.email, p.fone1, p.uf, p.CODPRODUTO_TABELA from pessoas p where ' +
        'p.codproduto_tabela = :Codigo')
    Left = 311
    Top = 212
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object PessoasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object PessoasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object PessoasCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Origin = 'CNPJCPF'
      Size = 18
    end
    object PessoasRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 150
    end
    object PessoasFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 150
    end
    object PessoasEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 500
    end
    object PessoasFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FONE1'
      Size = 30
    end
    object PessoasUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object PessoasCODPRODUTO_TABELA: TIntegerField
      FieldName = 'CODPRODUTO_TABELA'
      Origin = 'CODPRODUTO_TABELA'
    end
  end
  object DSPessoas: TDataSource
    DataSet = Pessoas
    Left = 339
    Top = 212
  end
  object MenuGridProdutos: TPopupMenu
    OnPopup = MenuConfigPopup
    Left = 452
    Top = 156
    object MenuItem27: TMenuItem
      Caption = '-'
    end
    object AbrirCadastrodoProdutoi1: TMenuItem
      Caption = 'Abrir Cadastro do Produto'
      OnClick = AbrirCadastrodoProdutoi1Click
    end
  end
  object poupMenu: TPopupMenu
    OnPopup = MenuConfigPopup
    Left = 508
    Top = 180
    object Duplicartabela1: TMenuItem
      Caption = 'Duplicar tabela'
      OnClick = Duplicartabela1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object AltrarPercentuais1: TMenuItem
      Caption = 'Alterar Percentuais'
      OnClick = AltrarPercentuais1Click
    end
  end
end
