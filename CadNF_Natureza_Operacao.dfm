inherited FrmNF_Natureza_Operacao: TFrmNF_Natureza_Operacao
  Caption = 'Cadastro de Natureza de Opera'#231#227'o'
  ClientHeight = 644
  ExplicitHeight = 683
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    Height = 624
    ExplicitHeight = 624
    inherited btnNovo: TcxButton
      Left = 1067
      ExplicitLeft = 1067
    end
    inherited btnConfirmar: TcxButton
      Left = 1067
      ExplicitLeft = 1067
    end
    inherited btnAlterar: TcxButton
      Left = 1067
      ExplicitLeft = 1067
    end
    inherited btnCancelar: TcxButton
      Left = 1067
      ExplicitLeft = 1067
    end
    inherited btnExcluir: TcxButton
      Left = 1067
      ExplicitLeft = 1067
    end
    inherited btnConsultar: TcxButton
      Left = 1067
      ExplicitLeft = 1067
    end
    inherited btnSair: TcxButton
      Left = 1067
      Top = 579
      ExplicitLeft = 1067
      ExplicitTop = 579
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 710
      TabOrder = 22
      ExplicitLeft = 710
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 1067
      ExplicitLeft = 1067
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 1126
      ExplicitLeft = 1126
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 109
    end
    inherited BtnSeguidores: TcxButton
      Left = 1138
      TabOrder = 107
      ExplicitLeft = 1138
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 1145
      ExplicitLeft = 1145
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 108
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 1030
      Height = 439
      TabOrder = 106
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 1030
      ExplicitHeight = 439
    end
    inherited BtnImprimir: TcxButton
      Left = 1158
      ExplicitLeft = 1158
    end
    inherited BtnDesativar: TcxButton
      Left = 1067
      ExplicitLeft = 1067
    end
    inherited BtnAtivar: TcxButton
      Left = 1067
      ExplicitLeft = 1067
    end
    inherited BtnAjuda: TcxButton
      Left = 1067
      ExplicitLeft = 1067
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 666
      TabOrder = 21
      ExplicitLeft = 666
    end
    inherited BtnImprimirPadrao: TcxButton
      Left = 1067
      ExplicitLeft = 1067
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Natureza de Opera'#231#227'o'
      ExplicitWidth = 1050
    end
    inherited btnSeguidoresNovo: TcxButton
      Left = 1106
      ExplicitLeft = 1106
    end
    object cbxTipo_NF: TcxDBLookupComboBox [25]
      Left = 463
      Top = 61
      DataBinding.DataField = 'TIPO_NF'
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
      Properties.ListSource = DSMemTipoNF
      Properties.OnChange = CbNotasFiscaisPossiveisPropertiesChange
      Style.HotTrack = False
      TabOrder = 19
      Width = 115
    end
    object edtNFSeCodigo: TcxDBCurrencyEdit [26]
      Left = 579
      Top = 61
      Hint = 'C'#243'digo dessa Natureza da Opera'#231#227'o utilizado na NFSe'
      DataBinding.DataField = 'NFSE_CODIGO'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Style.HotTrack = False
      TabOrder = 20
      Width = 86
    end
    object cbxEntrada_Saida: TcxDBComboBox [27]
      Left = 125
      Top = 97
      DataBinding.DataField = 'ENTRADA_SAIDA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'E'
        'S')
      Style.HotTrack = False
      TabOrder = 24
      Width = 103
    end
    object edtOpercao: TcxDBComboBox [28]
      Left = 229
      Top = 97
      DataBinding.DataField = 'OPERACAO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Normal'
        'Devolu'#231#227'o'
        'Remessa'
        'Bonifica'#231#227'o'
        'Transfer'#234'ncia')
      Style.HotTrack = False
      TabOrder = 25
      Width = 119
    end
    object cbxConsumidor_Final: TcxDBComboBox [29]
      Left = 3
      Top = 97
      DataBinding.DataField = 'CONSUMIDOR_FINAL'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'S'
        'N')
      Style.HotTrack = False
      TabOrder = 23
      Width = 121
    end
    object GridGruposVinculados: TcxGrid [30]
      Left = 10000
      Top = 10000
      Width = 1030
      Height = 403
      TabOrder = 32
      Visible = False
      object GridGruposVinculadosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = GridGruposVinculadosDBTableView1CellClick
        DataController.DataSource = DSProduto_Grupo_Vinculado
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object GridGruposVinculadosDBTableView1CODPRODUTO_GRUPO: TcxGridDBColumn
          Caption = 'C'#243'd. Grupo'
          DataBinding.FieldName = 'CODPRODUTO_GRUPO'
          Width = 90
        end
        object GridGruposVinculadosDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 329
        end
        object GridGruposVinculadosDBTableView1CODNF_CST: TcxGridDBColumn
          Caption = 'CST'
          DataBinding.FieldName = 'CODNF_CST'
          Width = 87
        end
        object GridGruposVinculadosDBTableView1CODNF_CFOP: TcxGridDBColumn
          Caption = 'CFOP Dentro do Estado'
          DataBinding.FieldName = 'CODNF_CFOP'
          Width = 171
        end
        object GridGruposVinculadosDBTableView1CODNF_CFOP_FORA: TcxGridDBColumn
          Caption = 'CFOP Fora do Estado'
          DataBinding.FieldName = 'CODNF_CFOP_FORA'
          Width = 187
        end
        object GridGruposVinculadosDBTableView1CONSUMIDOR_FINAL: TcxGridDBColumn
          Caption = 'Consumidor Final'
          DataBinding.FieldName = 'CONSUMIDOR_FINAL'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 130
        end
      end
      object GridGruposVinculadosLevel1: TcxGridLevel
        GridView = GridGruposVinculadosDBTableView1
      end
    end
    object Panel2: TPanel [31]
      Left = 10000
      Top = 10000
      Width = 800
      Height = 393
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 105
      Visible = False
    end
    object CbxCST_IPI: TcxDBLookupComboBox [32]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IPI_ST'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 15
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'CODIGO'
        end
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 75
      Visible = False
      Width = 800
    end
    object cbPIEEstado: TcxComboBox [33]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 15
      Properties.Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'FN'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO'
        'EX')
      Style.HotTrack = False
      TabOrder = 92
      Visible = False
      Width = 47
    end
    object EdtPIEMVA: TcxCurrencyEdit [34]
      Left = 10000
      Top = 10000
      Properties.DisplayFormat = '##0.00%'
      Style.HotTrack = False
      TabOrder = 93
      Visible = False
      Width = 72
    end
    object EdtPIEPrecoPauta: TcxCurrencyEdit [35]
      Left = 10000
      Top = 10000
      Properties.DisplayFormat = '###,###,##0.00'
      Style.HotTrack = False
      TabOrder = 94
      Visible = False
      Width = 72
    end
    object EdtPIEICMSST: TcxCurrencyEdit [36]
      Left = 10000
      Top = 10000
      Properties.DisplayFormat = '##0.00'
      Style.HotTrack = False
      TabOrder = 95
      Visible = False
      Width = 99
    end
    object EdtPIEICMS: TcxCurrencyEdit [37]
      Left = 10000
      Top = 10000
      Properties.DisplayFormat = '##0.00%'
      Style.HotTrack = False
      TabOrder = 96
      Visible = False
      Width = 72
    end
    object EdtPREDBCST: TcxCurrencyEdit [38]
      Left = 10000
      Top = 10000
      Properties.DisplayFormat = '##0.00%'
      Style.HotTrack = False
      TabOrder = 97
      Visible = False
      Width = 92
    end
    object EdtFCPUFDest: TcxCurrencyEdit [39]
      Left = 10000
      Top = 10000
      Hint = 'Fundo de Combate '#224' Pobreza'
      ParentShowHint = False
      Properties.DisplayFormat = '##0.00%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 98
      Visible = False
      Width = 72
    end
    object cxGrid1: TcxGrid [40]
      Left = 10000
      Top = 10000
      Width = 800
      Height = 357
      TabOrder = 101
      Visible = False
      object DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSProdutoGrupoImpostoUF
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object DBTableView1ESTADO: TcxGridDBColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'ESTADO'
          Options.Editing = False
          Width = 47
        end
        object DBTableView1MVA: TcxGridDBColumn
          Caption = 'M.V.A.'
          DataBinding.FieldName = 'MVA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00%'
          Width = 99
        end
        object DBTableView1PRECO_PAUTA: TcxGridDBColumn
          Caption = 'Pre'#231'o Pauta'
          DataBinding.FieldName = 'PRECO_PAUTA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = 'R$ ,0.00'
          Width = 127
        end
        object DBTableView1PICMSST: TcxGridDBColumn
          Caption = 'ICMS UF Destino %'
          DataBinding.FieldName = 'PICMSST'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00%'
          Width = 114
        end
        object DBTableView1PICMS: TcxGridDBColumn
          Caption = 'ICMS %'
          DataBinding.FieldName = 'PICMS'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00%'
        end
        object DBTableView1PREDBCST: TcxGridDBColumn
          Caption = 'Red ICMS ST %'
          DataBinding.FieldName = 'PREDBCST'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00%'
          Width = 87
        end
        object DBTableView1PFCP: TcxGridDBColumn
          Caption = 'FCP %'
          DataBinding.FieldName = 'PFCP'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00%'
          HeaderHint = 'Fundo de Combate '#224' Pobreza'
          Width = 64
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = DBTableView1
      end
    end
    object BitBtn1: TcxButton [41]
      Left = 10000
      Top = 10000
      Width = 33
      Height = 33
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 99
      Visible = False
      OnClick = BitBtn1Click
    end
    object BitBtn2: TcxButton [42]
      Left = 10000
      Top = 10000
      Width = 33
      Height = 33
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 100
      TabStop = False
      Visible = False
      OnClick = BitBtn2Click
    end
    object CbDeterminacaoBaseIcms: TcxDBLookupComboBox [43]
      Left = 388
      Top = 297
      DataBinding.DataField = 'ICMS_MODBC'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'C'#243'd.'
          Width = 20
          FieldName = 'CODIGO'
        end
        item
          Caption = 'Descri'#231#227'o'
          FieldName = 'DESCRICAO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 45
      Width = 142
    end
    object DBEpRedBC: TcxDBCurrencyEdit [44]
      Left = 388
      Top = 319
      DataBinding.DataField = 'PICMS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 46
      Width = 100
    end
    object edtPREDBC: TcxDBCurrencyEdit [45]
      Left = 388
      Top = 363
      DataBinding.DataField = 'PREDBC'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 48
      Width = 100
    end
    object DBEdit2: TcxDBCurrencyEdit [46]
      Left = 388
      Top = 385
      DataBinding.DataField = 'PCREDSN'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 49
      Width = 100
    end
    object CbDeterminacaoBaseIcmsST: TcxDBLookupComboBox [47]
      Left = 713
      Top = 297
      DataBinding.DataField = 'ICMS_MODBCST'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'C'#243'd.'
          Width = 20
          FieldName = 'CODIGO'
        end
        item
          Caption = 'Descri'#231#227'o'
          FieldName = 'DESCRICAO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 67
      Width = 308
    end
    object DBEpRedBCST: TcxDBCurrencyEdit [48]
      Left = 713
      Top = 319
      DataBinding.DataField = 'PREDBCST'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 68
      Width = 100
    end
    object DBEpMVAST: TcxDBCurrencyEdit [49]
      Left = 713
      Top = 341
      DataBinding.DataField = 'PMVAST'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 69
      Width = 100
    end
    object CbxCST_PIS: TcxDBLookupComboBox [50]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PIS_ST'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 15
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'CODIGO'
        end
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 70
      Visible = False
      Width = 800
    end
    object DBEdit5: TcxDBTextEdit [51]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IPI_POR_QUANT'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 80
      Visible = False
      Width = 100
    end
    object DBEdit4: TcxDBCurrencyEdit [52]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IPI_VUNID'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 79
      Visible = False
      Width = 100
    end
    object DBEIPI_pIPI: TcxDBCurrencyEdit [53]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IPI_PIPI'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 78
      Visible = False
      Width = 100
    end
    object edtCodEnquadramento: TcxDBTextEdit [54]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IPI_CENQ'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.MaxLength = 3
      Style.HotTrack = False
      TabOrder = 77
      Visible = False
      Width = 100
    end
    object DBEPIS_pPIS: TcxDBCurrencyEdit [55]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PIS_pPIS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 72
      Visible = False
      Width = 100
    end
    object DBEdit3: TcxDBCurrencyEdit [56]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PIS_VALIQPROD'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 73
      Visible = False
      Width = 100
    end
    object DBEPISST_pPIS: TcxDBCurrencyEdit [57]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PISST_PPIS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 74
      Visible = False
      Width = 100
    end
    object CbCST_CONFINS: TcxDBLookupComboBox [58]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'COFINS_ST'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'CODIGO'
        end
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 81
      Visible = False
      Width = 800
    end
    object CbSimNaoII: TcxDBLookupComboBox [59]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALCULA_II'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 102
      Visible = False
      Width = 100
    end
    object DBEII_pII: TcxDBCurrencyEdit [60]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'II_PII'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 103
      Visible = False
      Width = 100
    end
    object DBEII_pIOF: TcxDBCurrencyEdit [61]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'II_PIOF'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 104
      Visible = False
      Width = 100
    end
    object GridVendaTipo: TcxGrid [62]
      Left = 10000
      Top = 10000
      Width = 795
      Height = 393
      TabOrder = 36
      Visible = False
      object GridVendaTipoDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object GridVendaTipoDBTableView2DESCRICAO: TcxGridDBColumn
          Caption = 'Natureza da Opera'#231#227'o da Nota Fiscal'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 229
        end
        object GridVendaTipoDBTableView2CODNF_CFOP: TcxGridDBColumn
          Caption = 'CFOP'
          DataBinding.FieldName = 'CODNF_CFOP'
          Width = 124
        end
        object GridVendaTipoDBTableView2CODNF_CFOP_FORA: TcxGridDBColumn
          Caption = 'CFOP Fora do Estado'
          DataBinding.FieldName = 'CODNF_CFOP_FORA'
          Width = 118
        end
      end
      object GridVendaTipoLevel1: TcxGridLevel
        GridView = GridVendaTipoDBTableView2
      end
    end
    object cxLabel1: TcxLabel [63]
      Left = 525
      Top = 205
      Caption = 'C'#243'digo do CFOP (Mesmo Estado)'
      Style.HotTrack = False
      Transparent = True
    end
    object EdtCFOPÎNF_CFOP: TcxDBButtonEdit [64]
      Left = 525
      Top = 223
      Hint = 'F2 - Consulta / Cadastro'
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DataBinding.DataField = 'CODNF_CFOP'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 39
      Height = 21
      Width = 59
    end
    object LblCFOPÎNF_CFOPÎDESCRICAO: TcxLabel [65]
      Left = 585
      Top = 223
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Height = 21
      Width = 185
    end
    object cxLabel2: TcxLabel [66]
      Left = 771
      Top = 205
      Caption = 'C'#243'digo do CFOP (Fora do Estado)'
      Style.HotTrack = False
      Transparent = True
    end
    object EdtCFOPForaÎNF_CFOP: TcxDBButtonEdit [67]
      Left = 771
      Top = 223
      Hint = 'F2 - Consulta / Cadastro'
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DataBinding.DataField = 'CODNF_CFOP_FORA'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Style.HotTrack = False
      TabOrder = 42
      Height = 21
      Width = 55
    end
    object LblCFOPForaÎNF_CFOPÎDESCRICAO: TcxLabel [68]
      Left = 827
      Top = 223
      AutoSize = False
      Style.HotTrack = False
      Height = 21
      Width = 194
    end
    object DBEISSQN_pALIQ: TcxDBCurrencyEdit [69]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ISSQN_VALIQ'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 88
      Visible = False
      Width = 115
    end
    object CbISSQNcSitTrib: TcxDBLookupComboBox [70]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ISSQN_TIPOTRIBUTACAO'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 15
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'C'#243'd.'
          Width = 20
          FieldName = 'CODIGO'
        end
        item
          Caption = 'Descri'#231#227'o'
          FieldName = 'DESCRICAO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 89
      Visible = False
      Width = 115
    end
    object CbindISSRet: TcxDBLookupComboBox [71]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ISSQN_RETIDO'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 90
      Visible = False
      Width = 115
    end
    object CbindIncentivo: TcxDBLookupComboBox [72]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'ISSQN_INCENTIVADOR_CULTURAL'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 91
      Visible = False
      Height = 21
      Width = 115
    end
    object cxDBCheckBox1: TcxDBCheckBox [73]
      Left = 459
      Top = 425
      DataBinding.DataField = 'VBC_IPI'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 51
      Transparent = True
    end
    object cxDBCheckBox2: TcxDBCheckBox [74]
      Left = 459
      Top = 447
      DataBinding.DataField = 'VBC_CONFINS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 52
      Transparent = True
    end
    object cxDBCheckBox3: TcxDBCheckBox [75]
      Left = 459
      Top = 469
      DataBinding.DataField = 'VBC_PIS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 53
      Transparent = True
    end
    object cxDBCheckBox4: TcxDBCheckBox [76]
      Left = 459
      Top = 491
      DataBinding.DataField = 'VBC_FRETE'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 54
      Transparent = True
    end
    object cxDBCheckBox5: TcxDBCheckBox [77]
      Left = 459
      Top = 513
      DataBinding.DataField = 'VBC_II'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 55
      Transparent = True
    end
    object cxDBCheckBox6: TcxDBCheckBox [78]
      Left = 638
      Top = 447
      DataBinding.DataField = 'VBCST_IPI'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 58
      Transparent = True
    end
    object cxDBCheckBox8: TcxDBCheckBox [79]
      Left = 638
      Top = 425
      DataBinding.DataField = 'VBCST_CONFINS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 57
      Transparent = True
    end
    object cxDBCheckBox9: TcxDBCheckBox [80]
      Left = 638
      Top = 469
      DataBinding.DataField = 'VBCST_PIS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 59
      Transparent = True
    end
    object cxDBCheckBox10: TcxDBCheckBox [81]
      Left = 638
      Top = 491
      DataBinding.DataField = 'VBCST_FRETE'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 60
      Transparent = True
    end
    object cxDBCheckBox7: TcxDBCheckBox [82]
      Left = 638
      Top = 513
      DataBinding.DataField = 'VBCST_II'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 61
      Transparent = True
    end
    object CbSimNaoICMS: TcxDBLookupComboBox [83]
      Left = 388
      Top = 275
      DataBinding.DataField = 'CALCULA_ICMS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 44
      Width = 75
    end
    object CbSimNaoICMS_ST: TcxDBLookupComboBox [84]
      Left = 713
      Top = 275
      DataBinding.DataField = 'CALCULA_ICMS_ST'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 66
      Width = 75
    end
    object CbSimNaoPIS: TcxDBLookupComboBox [85]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALCULA_PIS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 71
      Visible = False
      Width = 100
    end
    object CbSimNaoIPI: TcxDBLookupComboBox [86]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALCULA_IPI'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 76
      Visible = False
      Width = 100
    end
    object CbSimNaoCONFINS: TcxDBLookupComboBox [87]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALCULA_COFINS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 15
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 82
      Visible = False
      Width = 100
    end
    object DBECOFINS_pCOFINS: TcxDBCurrencyEdit [88]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'COFINS_PCOFINS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 83
      Visible = False
      Width = 100
    end
    object DBEdit6: TcxDBCurrencyEdit [89]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'COFINS_VALIQPROD'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 84
      Visible = False
      Width = 100
    end
    object DBEdit8: TcxDBTextEdit [90]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PIS_COFINS_POR_QUANT'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 85
      Visible = False
      Width = 100
    end
    object DBECOFINSST_pCOFINS: TcxDBCurrencyEdit [91]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'COFINSST_PCOFINS'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 86
      Visible = False
      Width = 100
    end
    object CBSimNaoISSQN: TcxDBLookupComboBox [92]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALCULA_ISSQN'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 15
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 87
      Visible = False
      Width = 100
    end
    object cxDBCheckBox11: TcxDBCheckBox [93]
      Left = 459
      Top = 535
      DataBinding.DataField = 'VBC_DESCONTO'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 56
      Transparent = True
    end
    object cxDBCheckBox12: TcxDBCheckBox [94]
      Left = 638
      Top = 535
      DataBinding.DataField = 'VBCST_DESCONTO'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 62
      Transparent = True
    end
    object CbImpostoPafEcf: TcxDBLookupComboBox [95]
      Left = 257
      Top = 425
      DataBinding.DataField = 'ICMS_PAF'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 50
      Width = 121
    end
    object CbNF_CST: TcxDBLookupComboBox [96]
      Left = 245
      Top = 223
      DataBinding.DataField = 'CODNF_CST'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 15
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'CODIGO'
        end
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.GridLines = glVertical
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 37
      Width = 279
    end
    object CBSimNaoTem_Diferimento: TcxDBLookupComboBox [97]
      Left = 908
      Top = 425
      DataBinding.DataField = 'TEM_DIFERIMENTO'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 63
      Width = 101
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [98]
      Left = 909
      Top = 447
      DataBinding.DataField = 'Pdif'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 64
      Width = 100
    end
    object edtcBenef: TcxDBTextEdit [99]
      Left = 908
      Top = 469
      AutoSize = False
      DataBinding.DataField = 'cBenef'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 65
      Height = 21
      Width = 101
    end
    object radConsumidor_Final: TRadioGroup [100]
      Left = 25
      Top = 171
      Width = 185
      Height = 60
      Caption = 'Consumidor Final'
      Color = 16505534
      ItemIndex = 1
      Items.Strings = (
        'Para revenda (NF-e)'
        'A consumidor Final (NF-e,NFC-e)')
      ParentBackground = False
      ParentColor = False
      TabOrder = 33
      OnClick = radConsumidor_FinalClick
    end
    object radEntrada_Saida: TRadioGroup [101]
      Left = 25
      Top = 232
      Width = 185
      Height = 55
      Caption = 'Movimenta'#231#227'o de'
      Color = 16505534
      ItemIndex = 0
      Items.Strings = (
        'Sa'#237'da'
        'Entrada')
      ParentBackground = False
      ParentColor = False
      TabOrder = 34
    end
    object RadioGroup3: TRadioGroup [102]
      Left = 25
      Top = 288
      Width = 185
      Height = 105
      Caption = 'Opera'#231#227'o'
      Color = 16505534
      ItemIndex = 0
      Items.Strings = (
        'Normal'
        'Devolu'#231#227'o'
        'Remessa'
        'Bonifica'#231#227'o'
        'Transfer'#234'ncia')
      ParentBackground = False
      ParentColor = False
      TabOrder = 35
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [103]
      Left = 388
      Top = 341
      DataBinding.DataField = 'pICMS_NCONSUMIDOR_FINAL'
      DataBinding.DataSource = DSProduto_Grupo_Vinculado
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 47
      Width = 100
    end
    object chkTributacaoPadrao: TcxDBCheckBox [104]
      Left = 354
      Top = 83
      Caption = 'Tributa'#231#227'o Padr'#227'o para Todos os Produtos'
      DataBinding.DataField = 'TEM_TRIBUTACAO_PADRAO'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnEditValueChanged = chkTributacaoPadraoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 26
      Transparent = True
      OnClick = chkTributacaoPadraoClick
    end
    object btnReplicaTodos: TcxButton [105]
      Left = 593
      Top = 86
      Width = 272
      Height = 29
      Caption = 'Replicar Selecionado Para Todos Grupos'
      TabOrder = 27
      OnClick = btnReplicaTodosClick
    end
    object edtCodigoÎPRODUTO_GRUPO: TcxButtonEdit [106]
      Left = 10000
      Top = 10000
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 28
      Visible = False
      Width = 121
    end
    object edtCodigoÎPRODUTO_GRUPOÎDESCRICAO: TcxTextEdit [107]
      Left = 10000
      Top = 10000
      AutoSize = False
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 29
      Visible = False
      Height = 21
      Width = 250
    end
    object btnAdicionarVinculo: TcxButton [108]
      Left = 10000
      Top = 10000
      Width = 50
      Height = 35
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 30
      Visible = False
      OnClick = btnAdicionarVinculoClick
    end
    object btnRemoverVinculo: TcxButton [109]
      Left = 10000
      Top = 10000
      Width = 50
      Height = 35
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 31
      Visible = False
      OnClick = btnRemoverVinculoClick
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 4
      Index = 3
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 10
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      AlignVert = avBottom
      Index = 0
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = dxLayoutGroup1
      Index = 2
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 4
    end
    inherited LiLbTitulo: TdxLayoutItem
      Index = 1
    end
    inherited liSeparadorFrameBase: TdxLayoutSeparatorItem
      Index = 2
    end
    object licbxTipo_NF: TdxLayoutItem
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'Tipo de NF'
      CaptionOptions.Layout = clTop
      Control = cbxTipo_NF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtNFSeCodigo: TdxLayoutItem
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'C'#243'digo NFSe'
      CaptionOptions.Layout = clTop
      Control = edtNFSeCodigo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Entrada / Sa'#237'da'
      CaptionOptions.Layout = clTop
      Control = cbxEntrada_Saida
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Opera'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtOpercao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Consumidor Final'
      CaptionOptions.Layout = clTop
      Control = cbxConsumidor_Final
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Grid: TdxLayoutItem
      Parent = TabGruposVinculados
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Grupos Vinculados'
      CaptionOptions.Visible = False
      Control = GridGruposVinculados
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = dxLayoutGroup1TabChanged
      Index = 5
    end
    object TabConfiguracaoImpostos: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Configura'#231#227'o de Impostos'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object GrupoFiltros: TdxLayoutGroup
      Parent = TabConfiguracaoImpostos
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Filtros'
      ItemIndex = 2
      ScrollOptions.Vertical = smAuto
      Index = 0
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = GrupoFiltros
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = radConsumidor_Final
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = GrupoFiltros
      AlignHorz = ahRight
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = radEntrada_Saida
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 55
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = GrupoFiltros
      AlignHorz = ahRight
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = RadioGroup3
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutGroup3: TdxLayoutGroup
      Parent = TabConfiguracaoImpostos
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ScrollOptions.Vertical = smAuto
      ShowBorder = False
      Index = 1
    end
    object GrupoNaturezaOperacao: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'Natureza da Opera'#231#227'o'
      Visible = False
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object MainLayoutItem80: TdxLayoutItem
      Parent = GrupoNaturezaOperacao
      AlignHorz = ahClient
      AlignVert = avClient
      Offsets.Left = 5
      CaptionOptions.Layout = clTop
      Control = GridVendaTipo
      ControlOptions.OriginalHeight = 382
      ControlOptions.OriginalWidth = 836
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoICMS: TdxLayoutGroup
      Parent = MainLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'ICMS'
      ItemIndex = 1
      ScrollOptions.Vertical = smAuto
      Index = 1
    end
    object GrupoCFOP: TdxLayoutGroup
      Parent = GrupoICMS
      CaptionOptions.Text = 'CFOP'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = GrupoCFOP
      AlignVert = avBottom
      CaptionOptions.Text = 'CST (C'#243'digo da Situa'#231#227'o Tribut'#225'ria)'
      CaptionOptions.Layout = clTop
      Control = CbNF_CST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 279
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutGroup23: TdxLayoutGroup
      Parent = GrupoCFOP
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 1
    end
    object MainLayoutItem74: TdxLayoutItem
      Parent = MainLayoutGroup23
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutGroup22: TdxLayoutAutoCreatedGroup
      Parent = MainLayoutGroup23
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object MainLayoutItem73: TdxLayoutItem
      Parent = MainLayoutGroup22
      AlignHorz = ahLeft
      Control = EdtCFOPÎNF_CFOP
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem75: TdxLayoutItem
      Parent = MainLayoutGroup22
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = LblCFOPÎNF_CFOPÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 345
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup25: TdxLayoutGroup
      Parent = GrupoCFOP
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 2
    end
    object MainLayoutItem78: TdxLayoutItem
      Parent = MainLayoutGroup25
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutGroup24: TdxLayoutAutoCreatedGroup
      Parent = MainLayoutGroup25
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object MainLayoutItem77: TdxLayoutItem
      Parent = MainLayoutGroup24
      Control = EdtCFOPForaÎNF_CFOP
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem79: TdxLayoutItem
      Parent = MainLayoutGroup24
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxLabel3'
      CaptionOptions.Visible = False
      Control = LblCFOPForaÎNF_CFOPÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 356
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup13: TdxLayoutGroup
      Parent = GrupoICMS
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup15: TdxLayoutGroup
      Parent = MainLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'ICMS'
      Index = 0
    end
    object GrupoICMSCalculos: TdxLayoutGroup
      Parent = MainLayoutGroup15
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = GrupoICMSCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Calcular o ICMS'
      Control = CbSimNaoICMS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem3: TdxLayoutItem
      Parent = GrupoICMSCalculos
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Modalidade de C'#225'lculo BC'
      Control = CbDeterminacaoBaseIcms
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 244
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem19: TdxLayoutItem
      Parent = GrupoICMSCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Al'#237'quota do ICMS'
      Control = DBEpRedBC
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = GrupoICMSCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ICMS N'#227'o Consumidor Final'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object MainLayoutItem22: TdxLayoutItem
      Parent = GrupoICMSCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Percentual de Redu'#231#227'o da BC'
      Control = edtPREDBC
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object MainLayoutItem24: TdxLayoutItem
      Parent = GrupoICMSCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Percentual Cr'#233'dito SN'
      Control = DBEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = MainLayoutGroup15
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object MainLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ICMS aplicado ao PAF'
      Index = 0
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = MainLayoutGroup14
      CaptionOptions.Text = 'PafEcf'
      CaptionOptions.Visible = False
      Control = CbImpostoPafEcf
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Incluir na Base de C'#225'culo'
      ItemIndex = 5
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'IPI'
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'COFINS'
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'PIS'
      Control = cxDBCheckBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'FRETE'
      Control = cxDBCheckBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Importa'#231#227'o'
      Control = cxDBCheckBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Descontos'
      Control = cxDBCheckBox11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object MainLayoutGroup16: TdxLayoutGroup
      Parent = MainLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'ICMS ST'
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Incluir na Base de C'#225'culo ST'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'COFINS ST'
      Control = cxDBCheckBox8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'IPI ST'
      Control = cxDBCheckBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avTop
      CaptionOptions.Text = 'PIS ST'
      Control = cxDBCheckBox9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avTop
      CaptionOptions.Text = 'FRETE ST'
      Control = cxDBCheckBox10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avTop
      CaptionOptions.Text = 'Importa'#231#227'o ST'
      Control = cxDBCheckBox7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Text = 'Desconto ST'
      Control = cxDBCheckBox12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object GrupoDiferencial: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'cst 51 - ICMS Diferimento'
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = GrupoDiferencial
      CaptionOptions.Text = 'Tem Diferimento'
      Control = CBSimNaoTem_Diferimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = GrupoDiferencial
      AlignHorz = ahRight
      CaptionOptions.Text = 'Percentual do Diferimento'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtcBenef: TdxLayoutItem
      Parent = GrupoDiferencial
      AlignHorz = ahClient
      CaptionOptions.Text = 'C'#243'digo do Benef'#237'cio Fiscal'
      Control = edtcBenef
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoICMSSTCalculos: TdxLayoutGroup
      Parent = MainLayoutGroup16
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = GrupoICMSSTCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Calcular o ICMS ST'
      Control = CbSimNaoICMS_ST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem5: TdxLayoutItem
      Parent = GrupoICMSSTCalculos
      CaptionOptions.Text = 'Modalidade de C'#225'lculo BC ST'
      Control = CbDeterminacaoBaseIcmsST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 248
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem25: TdxLayoutItem
      Parent = GrupoICMSSTCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Percentual de Redu'#231#227'o da BC ST'
      Control = DBEpRedBCST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutItem26: TdxLayoutItem
      Parent = GrupoICMSSTCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Percentual de MVA'
      Control = DBEpMVAST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object GrupoPIS: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'PIS'
      Index = 2
    end
    object MainLayoutItem29: TdxLayoutItem
      Parent = GrupoPIS
      CaptionOptions.Text = 'CST (C'#243'digo da Situa'#231#227'o Tribut'#225'ria)'
      CaptionOptions.Layout = clTop
      Control = CbxCST_PIS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 295
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoPISDados: TdxLayoutGroup
      Parent = GrupoPIS
      CaptionOptions.Text = 'PIS'
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = GrupoPISDados
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Calcular o PIS'
      Control = CbSimNaoPIS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoPISCalculos: TdxLayoutGroup
      Parent = GrupoPISDados
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object GrupoPISCalculosInt: TdxLayoutGroup
      Parent = GrupoPISCalculos
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'PIS'
      Index = 0
    end
    object MainLayoutItem31: TdxLayoutItem
      Parent = GrupoPISCalculosInt
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Al'#237'quota PIS'
      Control = DBEPIS_pPIS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem33: TdxLayoutItem
      Parent = GrupoPISCalculosInt
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Valor / Quantidade'
      Control = DBEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoPISSTCalculos: TdxLayoutGroup
      Parent = GrupoPISCalculos
      AlignHorz = ahClient
      CaptionOptions.Text = 'PIS ST'
      Index = 1
    end
    object MainLayoutItem32: TdxLayoutItem
      Parent = GrupoPISSTCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Al'#237'quota PIS ST'
      Control = DBEPISST_pPIS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoIPI: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'IPI'
      Index = 3
    end
    object MainLayoutItem34: TdxLayoutItem
      Parent = GrupoIPI
      CaptionOptions.Text = 'CST (C'#243'digo da Situa'#231#227'o Tribut'#225'ria)'
      CaptionOptions.Layout = clTop
      Control = CbxCST_IPI
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoIPIDados: TdxLayoutGroup
      Parent = GrupoIPI
      CaptionOptions.Text = 'IPI'
      Index = 1
    end
    object GrupoIPICalculos: TdxLayoutGroup
      Parent = GrupoIPIDados
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = GrupoIPICalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Calcular o IPI'
      Control = CbSimNaoIPI
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem35: TdxLayoutItem
      Parent = GrupoIPICalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'd. Enquadramento'
      Control = edtCodEnquadramento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem37: TdxLayoutItem
      Parent = GrupoIPICalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Al'#237'quota (Percentual)'
      Control = DBEIPI_pIPI
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutItem38: TdxLayoutItem
      Parent = GrupoIPICalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Valor / Quantidade'
      Control = DBEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object MainLayoutItem39: TdxLayoutItem
      Parent = GrupoIPICalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'IPI por Quantidade'
      Control = DBEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object GrupoCOFINS: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'COFINS'
      ItemIndex = 1
      Index = 4
    end
    object MainLayoutItem40: TdxLayoutItem
      Parent = GrupoCOFINS
      CaptionOptions.Text = 'CST (C'#243'digo da Situa'#231#227'o Tribut'#225'ria)'
      CaptionOptions.Layout = clTop
      Control = CbCST_CONFINS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutGroup7: TdxLayoutGroup
      Parent = GrupoCOFINS
      CaptionOptions.Text = 'COFINS'
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = MainLayoutGroup7
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Calcular o COFINS'
      Control = CbSimNaoCONFINS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoCOFINSCalculos: TdxLayoutGroup
      Parent = MainLayoutGroup7
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup4: TdxLayoutGroup
      Parent = GrupoCOFINSCalculos
      AlignHorz = ahClient
      CaptionOptions.Text = 'COFINS'
      Index = 0
    end
    object MainLayoutItem42: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Al'#237'quota COFINS'
      Control = DBECOFINS_pCOFINS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem44: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Valor / Quantidade'
      Control = DBEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem45: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'PIS/COFINS por Quantidade'
      Control = DBEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutGroup6: TdxLayoutGroup
      Parent = GrupoCOFINSCalculos
      AlignHorz = ahClient
      CaptionOptions.Text = 'COFINS ST'
      Index = 1
    end
    object MainLayoutItem43: TdxLayoutItem
      Parent = MainLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Al'#237'quota COFINS ST'
      Control = DBECOFINSST_pCOFINS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoISS: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'ISS/ISSQN'
      Index = 5
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = GrupoISS
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoISSQN: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      CaptionOptions.Text = 'ISSQN'
      Offsets.Left = 5
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = GrupoISSQN
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Calcula ISSQN'
      Control = CBSimNaoISSQN
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem47: TdxLayoutItem
      Parent = GrupoISSQN
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Al'#237'quota'
      Control = DBEISSQN_pALIQ
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem41: TdxLayoutItem
      Parent = GrupoISSQN
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tipo de Tributa'#231#227'o'
      Control = CbISSQNcSitTrib
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = GrupoISSQN
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Retido'
      Control = CbindISSRet
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = GrupoISSQN
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Incentivador Cultural'
      Control = CbindIncentivo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object GrupoImpostoPorEstado: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'Impostos por Estado'
      Index = 6
    end
    object MainLayoutGroup18: TdxLayoutGroup
      Parent = GrupoImpostoPorEstado
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object MainLayoutItem58: TdxLayoutItem
      Parent = MainLayoutGroup18
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Estado'
      CaptionOptions.Layout = clTop
      Control = cbPIEEstado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem59: TdxLayoutItem
      Parent = MainLayoutGroup18
      CaptionOptions.Text = 'M.V.A.(%):'
      CaptionOptions.Layout = clTop
      Control = EdtPIEMVA
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem60: TdxLayoutItem
      Parent = MainLayoutGroup18
      CaptionOptions.Text = 'Pre'#231'o Pauta'
      CaptionOptions.Layout = clTop
      Control = EdtPIEPrecoPauta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutItem61: TdxLayoutItem
      Parent = MainLayoutGroup18
      CaptionOptions.Text = ' % ICMS UF Destino'
      CaptionOptions.Layout = clTop
      Control = EdtPIEICMSST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object MainLayoutItem62: TdxLayoutItem
      Parent = MainLayoutGroup18
      CaptionOptions.Text = ' % ICMS'
      CaptionOptions.Layout = clTop
      Control = EdtPIEICMS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object MainLayoutItem63: TdxLayoutItem
      Parent = MainLayoutGroup18
      CaptionOptions.Text = '% Red. ICMS ST%'
      CaptionOptions.Layout = clTop
      Control = EdtPREDBCST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object MainLayoutItem64: TdxLayoutItem
      Parent = MainLayoutGroup18
      CaptionOptions.Text = ' % FCP'
      CaptionOptions.Layout = clTop
      Control = EdtFCPUFDest
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object MainLayoutItem68: TdxLayoutItem
      Parent = MainLayoutGroup18
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = BitBtn1
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object MainLayoutItem66: TdxLayoutItem
      Parent = MainLayoutGroup18
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = BitBtn2
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object MainLayoutItem65: TdxLayoutItem
      Parent = GrupoImpostoPorEstado
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid1
      ControlOptions.OriginalHeight = 353
      ControlOptions.OriginalWidth = 842
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GroupOutrosImpostos: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'Outros Impostos'
      Index = 7
    end
    object MainLayoutGroup11: TdxLayoutGroup
      Parent = GroupOutrosImpostos
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoII: TdxLayoutGroup
      Parent = MainLayoutGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'II - Imposto de Importa'#231#227'o'
      Index = 0
    end
    object MainLayoutItem48: TdxLayoutItem
      Parent = GrupoII
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Calcular o II'
      Control = CbSimNaoII
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoIICalculos: TdxLayoutGroup
      Parent = GrupoII
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 1
    end
    object MainLayoutItem50: TdxLayoutItem
      Parent = GrupoIICalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Al'#237'quota II'
      Control = DBEII_pII
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoIOF: TdxLayoutGroup
      Parent = MainLayoutGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'IOF - Imposto sobre Opera'#231#245'es Financeiras'
      Index = 1
    end
    object MainLayoutItem51: TdxLayoutItem
      Parent = GrupoIOF
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Al'#237'quota IOF'
      Control = DBEII_pIOF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = MainLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Atividade'
      UseIndent = False
      Index = 8
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Log de altera'#231#245'es'
      CaptionOptions.Visible = False
      Control = Panel2
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 253
      ControlOptions.OriginalWidth = 872
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      Padding.Left = 5
      Padding.AssignedValues = [lpavLeft]
      CaptionOptions.Text = 'Tributa'#231#227'o Padr'#227'o para Todos os Produtos'
      CaptionOptions.Visible = False
      Control = chkTributacaoPadrao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 228
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LibtnReplicaTodos: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      Padding.Bottom = 3
      Padding.Left = 10
      Padding.Right = 10
      Padding.Top = 3
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnReplicaTodos
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 272
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'digo Grupo'
      CaptionOptions.Layout = clTop
      Control = edtCodigoÎPRODUTO_GRUPO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = MainLayoutGroup16
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object TabGruposVinculados: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Grupos Vinculados'
      Index = 0
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avBottom
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtCodigoÎPRODUTO_GRUPOÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAdicionarVinculo
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnRemoverVinculo
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = TabGruposVinculados
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 624
    ExplicitTop = 624
  end
  inherited MenuConfig: TPopupMenu
    Left = 424
    Top = 128
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmNF_Natureza_Operacao'
    FormClassConsulta = 'TConsuNF_Natureza_Operacao'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from NF_NATUREZA_OPERACAO'
      'where (CODIGO = :CODIGO)   ')
    Left = 313
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'NF_NATUREZA_OPERACAO'
    Modulo = 'NOTA_FISCAL'
  end
  inherited MenuRegra_Acoes: TPopupMenu
    object MigrarNaturezadeoperao1: TMenuItem
      Caption = 'Migrar Grupos para Natureza de Opera'#231#227'o'
      OnClick = MigrarNaturezadeoperao1Click
    end
  end
  object MemTipoNF: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 368
    Top = 128
    object MemTipoNFCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object MemTipoNFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
  end
  object DSMemTipoNF: TDataSource
    DataSet = MemTipoNF
    Left = 396
    Top = 128
  end
  object DSProduto_Grupo_Vinculado: TDataSource
    DataSet = Produto_Grupo_Vinculado
    Left = 340
    Top = 128
  end
  object Produto_Grupo_Vinculado: TFDQuery
    BeforeInsert = Produto_Grupo_VinculadoBeforeInsert
    BeforeEdit = Produto_Grupo_VinculadoBeforeEdit
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'codnf_natureza_operacao'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize, evCache]
    FetchOptions.RowsetSize = 10000
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select distinct nfnop.*, pg.descricao from NF_NATUREZA_OPERACAO_' +
        'PRODGRUPO nfnop'
      'left join produto_grupo pg on pg.codigo = nfnop.codproduto_grupo'
      'where nfnop.codnf_natureza_operacao = :CODIGO'
      ' '
      ' '
      ' '
      ' ')
    Left = 312
    Top = 128
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object Produto_Grupo_ImpostoUF: TFDQuery
    MasterSource = DSProduto_Grupo_Vinculado
    MasterFields = 'CODPRODUTO_GRUPO;CODNF_NATUREZA_OPERACAO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select *'
      'from PRODUTO_GRUPO_IMPOSTOUF'
      'where (CODPRODUTO_GRUPO = :CODPRODUTO_GRUPO)'
      '      and (CODNF_NATUREZA_OPERACAO = :CODNF_NATUREZA_OPERACAO)')
    Left = 312
    Top = 20
    ParamData = <
      item
        Name = 'CODPRODUTO_GRUPO'
        ParamType = ptInput
      end
      item
        Name = 'CODNF_NATUREZA_OPERACAO'
        ParamType = ptInput
      end>
  end
  object DSProdutoGrupoImpostoUF: TDataSource
    DataSet = Produto_Grupo_ImpostoUF
    Left = 340
    Top = 20
  end
end
