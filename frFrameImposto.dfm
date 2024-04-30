inherited FrameImposto: TFrameImposto
  Width = 1041
  Height = 567
  ExplicitWidth = 1041
  ExplicitHeight = 567
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1041
    Height = 567
    ExplicitWidth = 1041
    ExplicitHeight = 567
    inherited btnMenuConfig: TcxButton
      Left = 179
      Top = 241
      TabOrder = 3
      ExplicitLeft = 179
      ExplicitTop = 241
    end
    object RadioGroup1: TRadioGroup [1]
      Left = 12
      Top = 18
      Width = 185
      Height = 60
      Caption = 'Finalidade'
      Color = 16505534
      ItemIndex = 1
      Items.Strings = (
        'Para revenda (NF-e)'
        'A consumidor Final (NF-e,NFC-e)')
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
    end
    object RadioGroup2: TRadioGroup [2]
      Left = 12
      Top = 79
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
      TabOrder = 1
    end
    object RadioGroup3: TRadioGroup [3]
      Left = 12
      Top = 135
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
      TabOrder = 2
    end
    object PnlFrameHistorico: TPanel [4]
      Left = 10000
      Top = 10000
      Width = 810
      Height = 523
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 72
      Visible = False
    end
    object CbxCST_IPI: TcxDBLookupComboBox [5]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IPI_ST'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 42
      Visible = False
      Width = 810
    end
    object cbPIEEstado: TcxComboBox [6]
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
      TabOrder = 59
      Visible = False
      Width = 47
    end
    object EdtPIEMVA: TcxCurrencyEdit [7]
      Left = 10000
      Top = 10000
      Properties.DisplayFormat = '##0.00%'
      Style.HotTrack = False
      TabOrder = 60
      Visible = False
      Width = 72
    end
    object EdtPIEPrecoPauta: TcxCurrencyEdit [8]
      Left = 10000
      Top = 10000
      Properties.DisplayFormat = '###,###,##0.00'
      Style.HotTrack = False
      TabOrder = 61
      Visible = False
      Width = 72
    end
    object EdtPIEICMSST: TcxCurrencyEdit [9]
      Left = 10000
      Top = 10000
      Properties.DisplayFormat = '##0.00'
      Style.HotTrack = False
      TabOrder = 62
      Visible = False
      Width = 99
    end
    object EdtPIEICMS: TcxCurrencyEdit [10]
      Left = 10000
      Top = 10000
      Properties.DisplayFormat = '##0.00%'
      Style.HotTrack = False
      TabOrder = 63
      Visible = False
      Width = 72
    end
    object EdtPREDBCST: TcxCurrencyEdit [11]
      Left = 10000
      Top = 10000
      Properties.DisplayFormat = '##0.00%'
      Style.HotTrack = False
      TabOrder = 64
      Visible = False
      Width = 92
    end
    object EdtFCPUFDest: TcxCurrencyEdit [12]
      Left = 10000
      Top = 10000
      Hint = 'Fundo de Combate '#224' Pobreza'
      ParentShowHint = False
      Properties.DisplayFormat = '##0.00%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 65
      Visible = False
      Width = 72
    end
    object cxGrid1: TcxGrid [13]
      Left = 10000
      Top = 10000
      Width = 810
      Height = 487
      TabOrder = 68
      Visible = False
      object DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSNF_NCM_Imposto_Estado
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
    object BitBtn1: TcxButton [14]
      Left = 10000
      Top = 10000
      Width = 33
      Height = 33
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 66
      Visible = False
    end
    object BitBtn2: TcxButton [15]
      Left = 10000
      Top = 10000
      Width = 33
      Height = 33
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 67
      TabStop = False
      Visible = False
    end
    object CbDeterminacaoBaseIcms: TcxDBLookupComboBox [16]
      Left = 376
      Top = 144
      DataBinding.DataField = 'ICMS_MODBC'
      DataBinding.DataSource = DSNF_NCM_Imposto
      Properties.DropDownListStyle = lsFixedList
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
      TabOrder = 13
      Width = 214
    end
    object DBEpRedBC: TcxDBCurrencyEdit [17]
      Left = 376
      Top = 166
      DataBinding.DataField = 'PICMS'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 14
      Width = 100
    end
    object edtPREDBC: TcxDBCurrencyEdit [18]
      Left = 376
      Top = 188
      DataBinding.DataField = 'PREDBC'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 15
      Width = 100
    end
    object DBEdit2: TcxDBCurrencyEdit [19]
      Left = 376
      Top = 210
      DataBinding.DataField = 'PCREDSN'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 16
      Width = 100
    end
    object CbDeterminacaoBaseIcmsST: TcxDBLookupComboBox [20]
      Left = 773
      Top = 144
      DataBinding.DataField = 'ICMS_MODBCST'
      DataBinding.DataSource = DSNF_NCM_Imposto
      Properties.DropDownListStyle = lsFixedList
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
      TabOrder = 34
      Width = 246
    end
    object DBEpRedBCST: TcxDBCurrencyEdit [21]
      Left = 773
      Top = 166
      DataBinding.DataField = 'PREDBCST'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 35
      Width = 100
    end
    object DBEpMVAST: TcxDBCurrencyEdit [22]
      Left = 773
      Top = 188
      DataBinding.DataField = 'PMVAST'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 36
      Width = 100
    end
    object CbxCST_PIS: TcxDBLookupComboBox [23]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PIS_ST'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 37
      Visible = False
      Width = 810
    end
    object DBEdit5: TcxDBTextEdit [24]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IPI_POR_QUANT'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 47
      Visible = False
      Width = 100
    end
    object DBEdit4: TcxDBCurrencyEdit [25]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IPI_VUNID'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 46
      Visible = False
      Width = 100
    end
    object DBEIPI_pIPI: TcxDBCurrencyEdit [26]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IPI_PIPI'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 45
      Visible = False
      Width = 100
    end
    object edtCodEnquadramento: TcxDBTextEdit [27]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IPI_CENQ'
      DataBinding.DataSource = DSNF_NCM_Imposto
      Properties.MaxLength = 3
      Style.HotTrack = False
      TabOrder = 44
      Visible = False
      Width = 100
    end
    object DBEPIS_pPIS: TcxDBCurrencyEdit [28]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PIS_pPIS'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 39
      Visible = False
      Width = 100
    end
    object DBEdit3: TcxDBCurrencyEdit [29]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PIS_VALIQPROD'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 40
      Visible = False
      Width = 100
    end
    object DBEPISST_pPIS: TcxDBCurrencyEdit [30]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PISST_PPIS'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 41
      Visible = False
      Width = 100
    end
    object CbCST_CONFINS: TcxDBLookupComboBox [31]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'COFINS_ST'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 48
      Visible = False
      Width = 810
    end
    object CbSimNaoII: TcxDBLookupComboBox [32]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALCULA_II'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 69
      Visible = False
      Width = 100
    end
    object DBEII_pII: TcxDBCurrencyEdit [33]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'II_PII'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 70
      Visible = False
      Width = 100
    end
    object DBEII_pIOF: TcxDBCurrencyEdit [34]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'II_PIOF'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 71
      Visible = False
      Width = 100
    end
    object GridVendaTipo: TcxGrid [35]
      Left = 10000
      Top = 10000
      Width = 805
      Height = 523
      TabOrder = 4
      Visible = False
      object GridVendaTipoDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSNF_NCM_Imposto
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
          DataBinding.FieldName = 'NATUREZA_OPERACAO'
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
    object cxLabel1: TcxLabel [36]
      Left = 478
      Top = 52
      Caption = 'C'#243'digo do CFOP (Mesmo Estado)'
      Style.HotTrack = False
      Transparent = True
    end
    object EdtCFOPÎNF_CFOP: TcxDBButtonEdit [37]
      Left = 478
      Top = 70
      Hint = 'F2 - Consulta / Cadastro'
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DataBinding.DataField = 'CODNF_CFOP'
      DataBinding.DataSource = DSNF_NCM_Imposto
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 59
    end
    object LblCFOPÎNF_CFOPÎDESCRICAO: TcxLabel [38]
      Left = 538
      Top = 70
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Height = 21
      Width = 208
    end
    object cxLabel2: TcxLabel [39]
      Left = 747
      Top = 52
      Caption = 'C'#243'digo do CFOP (Fora do Estado)'
      Style.HotTrack = False
      Transparent = True
    end
    object EdtCFOPForaÎNF_CFOP: TcxDBButtonEdit [40]
      Left = 747
      Top = 70
      Hint = 'F2 - Consulta / Cadastro'
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DataBinding.DataField = 'CODNF_CFOP_FORA'
      DataBinding.DataSource = DSNF_NCM_Imposto
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Style.HotTrack = False
      TabOrder = 10
      Height = 21
      Width = 55
    end
    object LblCFOPForaÎNF_CFOPÎDESCRICAO: TcxLabel [41]
      Left = 803
      Top = 70
      AutoSize = False
      Style.HotTrack = False
      Height = 21
      Width = 216
    end
    object DBEISSQN_pALIQ: TcxDBCurrencyEdit [42]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ISSQN_VALIQ'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 55
      Visible = False
      Width = 115
    end
    object CbISSQNcSitTrib: TcxDBLookupComboBox [43]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ISSQN_TIPOTRIBUTACAO'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 56
      Visible = False
      Width = 115
    end
    object CbindISSRet: TcxDBLookupComboBox [44]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ISSQN_RETIDO'
      DataBinding.DataSource = DSNF_NCM_Imposto
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 57
      Visible = False
      Width = 115
    end
    object CbindIncentivo: TcxDBLookupComboBox [45]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'ISSQN_INCENTIVADOR_CULTURAL'
      DataBinding.DataSource = DSNF_NCM_Imposto
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 58
      Visible = False
      Height = 21
      Width = 115
    end
    object cxDBCheckBox1: TcxDBCheckBox [46]
      Left = 447
      Top = 250
      DataBinding.DataField = 'VBC_IPI'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 18
      Transparent = True
    end
    object cxDBCheckBox2: TcxDBCheckBox [47]
      Left = 447
      Top = 272
      DataBinding.DataField = 'VBC_CONFINS'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 19
      Transparent = True
    end
    object cxDBCheckBox3: TcxDBCheckBox [48]
      Left = 447
      Top = 294
      DataBinding.DataField = 'VBC_PIS'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 20
      Transparent = True
    end
    object cxDBCheckBox4: TcxDBCheckBox [49]
      Left = 447
      Top = 316
      DataBinding.DataField = 'VBC_FRETE'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 21
      Transparent = True
    end
    object cxDBCheckBox5: TcxDBCheckBox [50]
      Left = 447
      Top = 338
      DataBinding.DataField = 'VBC_II'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 22
      Transparent = True
    end
    object cxDBCheckBox6: TcxDBCheckBox [51]
      Left = 698
      Top = 272
      DataBinding.DataField = 'VBCST_IPI'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 25
      Transparent = True
    end
    object cxDBCheckBox8: TcxDBCheckBox [52]
      Left = 698
      Top = 250
      DataBinding.DataField = 'VBCST_CONFINS'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 24
      Transparent = True
    end
    object cxDBCheckBox9: TcxDBCheckBox [53]
      Left = 698
      Top = 294
      DataBinding.DataField = 'VBCST_PIS'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 26
      Transparent = True
    end
    object cxDBCheckBox10: TcxDBCheckBox [54]
      Left = 698
      Top = 316
      DataBinding.DataField = 'VBCST_FRETE'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 27
      Transparent = True
    end
    object cxDBCheckBox7: TcxDBCheckBox [55]
      Left = 698
      Top = 338
      DataBinding.DataField = 'VBCST_II'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 28
      Transparent = True
    end
    object CbSimNaoICMS: TcxDBLookupComboBox [56]
      Left = 376
      Top = 122
      DataBinding.DataField = 'CALCULA_ICMS'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 12
      Width = 75
    end
    object CbSimNaoICMS_ST: TcxDBLookupComboBox [57]
      Left = 773
      Top = 122
      DataBinding.DataField = 'CALCULA_ICMS_ST'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 33
      Width = 75
    end
    object CbSimNaoPIS: TcxDBLookupComboBox [58]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALCULA_PIS'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 38
      Visible = False
      Width = 100
    end
    object CbSimNaoIPI: TcxDBLookupComboBox [59]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALCULA_IPI'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 43
      Visible = False
      Width = 100
    end
    object CbSimNaoCONFINS: TcxDBLookupComboBox [60]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALCULA_COFINS'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 49
      Visible = False
      Width = 100
    end
    object DBECOFINS_pCOFINS: TcxDBCurrencyEdit [61]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'COFINS_PCOFINS'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 50
      Visible = False
      Width = 100
    end
    object DBEdit6: TcxDBCurrencyEdit [62]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'COFINS_VALIQPROD'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 51
      Visible = False
      Width = 100
    end
    object DBEdit8: TcxDBTextEdit [63]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PIS_COFINS_POR_QUANT'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 52
      Visible = False
      Width = 100
    end
    object DBECOFINSST_pCOFINS: TcxDBCurrencyEdit [64]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'COFINSST_PCOFINS'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 53
      Visible = False
      Width = 100
    end
    object CBSimNaoISSQN: TcxDBLookupComboBox [65]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALCULA_ISSQN'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 54
      Visible = False
      Width = 100
    end
    object cxDBCheckBox11: TcxDBCheckBox [66]
      Left = 447
      Top = 360
      DataBinding.DataField = 'VBC_DESCONTO'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 23
      Transparent = True
    end
    object cxDBCheckBox12: TcxDBCheckBox [67]
      Left = 698
      Top = 360
      DataBinding.DataField = 'VBCST_DESCONTO'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 29
      Transparent = True
    end
    object CbImpostoPafEcf: TcxDBLookupComboBox [68]
      Left = 245
      Top = 250
      DataBinding.DataField = 'ICMS_PAF'
      DataBinding.DataSource = DSNF_NCM_Imposto
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object CbNF_CST: TcxDBLookupComboBox [69]
      Left = 233
      Top = 70
      DataBinding.DataField = 'CODNF_CST'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      Properties.ListOptions.GridLines = glVertical
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 5
      Width = 244
    end
    object CBSimNaoTem_Diferimento: TcxDBLookupComboBox [70]
      Left = 906
      Top = 250
      DataBinding.DataField = 'TEM_DIFERIMENTO'
      DataBinding.DataSource = DSNF_NCM_Imposto
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
      TabOrder = 30
      Width = 101
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [71]
      Left = 907
      Top = 272
      DataBinding.DataField = 'Pdif'
      DataBinding.DataSource = DSNF_NCM_Imposto
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 31
      Width = 100
    end
    object edtcBenef: TcxDBTextEdit [72]
      Left = 906
      Top = 294
      AutoSize = False
      DataBinding.DataField = 'cBenef'
      DataBinding.DataSource = DSNF_NCM_Imposto
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 32
      Height = 21
      Width = 101
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Filtro'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Finalidade'
      CaptionOptions.Visible = False
      Control = RadioGroup1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Movimenta'#231#227'o de'
      CaptionOptions.Visible = False
      Control = RadioGroup2
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 55
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'RadioGroup3'
      CaptionOptions.Visible = False
      Control = RadioGroup3
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object GrupoLogAlteracoes: TdxLayoutGroup
      Parent = MainLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Log de Altera'#231#245'es'
      ButtonOptions.Buttons = <>
      UseIndent = False
      Index = 8
    end
    object LiPnlFrameLogAtividades: TdxLayoutItem
      Parent = GrupoLogAlteracoes
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Log de altera'#231#245'es'
      CaptionOptions.Visible = False
      Control = PnlFrameHistorico
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 253
      ControlOptions.OriginalWidth = 872
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoICMS: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'ICMS'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ScrollOptions.Vertical = smAuto
      Index = 1
    end
    object GrupoPIS: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'PIS'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object GrupoIPI: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'IPI'
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object GrupoCOFINS: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'COFINS'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 4
    end
    object GrupoImpostoPorEstado: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'Impostos por Estado'
      ButtonOptions.Buttons = <>
      Index = 6
    end
    object MainLayoutGroup13: TdxLayoutGroup
      Parent = GrupoICMS
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
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
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object MainLayoutGroup16: TdxLayoutGroup
      Parent = MainLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'ICMS ST'
      ButtonOptions.Buttons = <>
      Index = 1
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
    object MainLayoutGroup18: TdxLayoutGroup
      Parent = GrupoImpostoPorEstado
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
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
    object GrupoICMSCalculos: TdxLayoutGroup
      Parent = MainLayoutGroup15
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
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
    object MainLayoutItem22: TdxLayoutItem
      Parent = GrupoICMSCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Percentual de Redu'#231#227'o da BC'
      Control = edtPREDBC
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object MainLayoutItem24: TdxLayoutItem
      Parent = GrupoICMSCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Percentual Cr'#233'dito SN'
      Control = DBEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object GrupoICMSSTCalculos: TdxLayoutGroup
      Parent = MainLayoutGroup16
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
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
    object GrupoPISDados: TdxLayoutGroup
      Parent = GrupoPIS
      CaptionOptions.Text = 'PIS'
      ButtonOptions.Buttons = <>
      Index = 1
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
    object GrupoIPIDados: TdxLayoutGroup
      Parent = GrupoIPI
      CaptionOptions.Text = 'IPI'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object GrupoIPICalculos: TdxLayoutGroup
      Parent = GrupoIPIDados
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
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
    object GrupoPISCalculos: TdxLayoutGroup
      Parent = GrupoPISDados
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object GrupoPISCalculosInt: TdxLayoutGroup
      Parent = GrupoPISCalculos
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'PIS'
      ButtonOptions.Buttons = <>
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
      ButtonOptions.Buttons = <>
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
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object GroupOutrosImpostos: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'Outros Impostos'
      ButtonOptions.Buttons = <>
      Index = 7
    end
    object MainLayoutGroup11: TdxLayoutGroup
      Parent = GroupOutrosImpostos
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoII: TdxLayoutGroup
      Parent = MainLayoutGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'II - Imposto de Importa'#231#227'o'
      ButtonOptions.Buttons = <>
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
      ButtonOptions.Buttons = <>
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
      ButtonOptions.Buttons = <>
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
    object GrupoNaturezaOperacao: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'Tabela de Impostos'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object MainLayoutItem80: TdxLayoutItem
      Parent = GrupoNaturezaOperacao
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Offsets.Left = 5
      Control = GridVendaTipo
      ControlOptions.OriginalHeight = 382
      ControlOptions.OriginalWidth = 836
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoCFOP: TdxLayoutGroup
      Parent = GrupoICMS
      CaptionOptions.Text = 'CFOP'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object MainLayoutGroup23: TdxLayoutGroup
      Parent = GrupoCFOP
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
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
      ButtonOptions.Buttons = <>
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
    object GrupoISS: TdxLayoutGroup
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'ISS/ISSQN'
      ButtonOptions.Buttons = <>
      Index = 5
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = GrupoISS
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoISSQN: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'ISSQN'
      Offsets.Left = 5
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
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
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoISSQN
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Retido'
      Control = CbindISSRet
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = GrupoISSQN
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Incentivador Cultural'
      Control = CbindIncentivo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = MainLayoutGroup15
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object MainLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ICMS aplicado ao PAF'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Incluir na Base de C'#225'culo'
      ButtonOptions.Buttons = <>
      ItemIndex = 5
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'IPI'
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'COFINS'
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'PIS'
      Control = cxDBCheckBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'FRETE'
      Control = cxDBCheckBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Importa'#231#227'o'
      Control = cxDBCheckBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = GrupoICMSCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Calcular o ICMS'
      Control = CbSimNaoICMS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = GrupoICMSSTCalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Calcular o ICMS ST'
      Control = CbSimNaoICMS_ST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = GrupoPISDados
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Calcular o PIS'
      Control = CbSimNaoPIS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = GrupoIPICalculos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Calcular o IPI'
      Control = CbSimNaoIPI
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = MainLayoutGroup7
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup6
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
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup4: TdxLayoutGroup
      Parent = GrupoCOFINSCalculos
      AlignHorz = ahClient
      CaptionOptions.Text = 'COFINS'
      ButtonOptions.Buttons = <>
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
      ButtonOptions.Buttons = <>
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
    object dxLayoutItem24: TdxLayoutItem
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
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Descontos'
      Control = cxDBCheckBox11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = MainLayoutGroup14
      CaptionOptions.Text = 'PafEcf'
      CaptionOptions.Visible = False
      Control = CbImpostoPafEcf
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = GrupoCFOP
      AlignVert = avBottom
      CaptionOptions.Text = 'CST (C'#243'digo da Situa'#231#227'o Tribut'#225'ria)'
      CaptionOptions.Layout = clTop
      Control = CbNF_CST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 244
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = MainLayoutGroup16
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Incluir na Base de C'#225'culo ST'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'IPI ST'
      Control = cxDBCheckBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'COFINS ST'
      Control = cxDBCheckBox8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avTop
      CaptionOptions.Text = 'PIS ST'
      Control = cxDBCheckBox9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avTop
      CaptionOptions.Text = 'FRETE ST'
      Control = cxDBCheckBox10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avTop
      CaptionOptions.Text = 'Importa'#231#227'o ST'
      Control = cxDBCheckBox7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'Desconto ST'
      Control = cxDBCheckBox12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object GrupoDiferencial: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'cst 51 - ICMS Diferimento'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = GrupoDiferencial
      CaptionOptions.Text = 'Tem Diferimento'
      Control = CBSimNaoTem_Diferimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem30: TdxLayoutItem
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
  end
  inherited ImgListMenuConfig: TImageList
    Left = 72
    Top = 348
  end
  inherited MenuConfig: TPopupMenu
    Left = 100
    Top = 348
  end
  inherited UCControls1: TUCControls
    Left = 100
    Top = 320
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 72
    Top = 320
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited DS: TDataSource
    Left = 44
    Top = 320
  end
  inherited wrFrameEventos: TwrFrameEventos
    OnInicializar = wrFrameEventosInicializar
    Left = 128
    Top = 320
  end
  inherited WRFormataCamposDataSets: TWRFormataCamposDataSets
    Left = 128
    Top = 348
  end
  object DSNF_NCM_Imposto_Estado: TDataSource
    DataSet = NF_NCM_Imposto_Estado
    Left = 44
    Top = 376
  end
  object NF_NCM_Imposto_Estado: TFDQuery
    MasterSource = DSNF_NCM_Imposto
    MasterFields = 'CODNF_NCM;CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from NF_NCM_IMPOSTO_ESTADO'
      'where (CODNF_NCM = :CODNF_NCM)'
      '      and (CODNF_NCM_IMPOSTO = :CODIGO)')
    Left = 16
    Top = 376
    ParamData = <
      item
        Name = 'CODNF_NCM'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object NF_NCM_Imposto: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select NI.* from NF_NCM_IMPOSTO NI'
      'where (NI.CODNF_NCM = :CODIGO)')
    Left = 16
    Top = 348
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
  end
  object DSNF_NCM_Imposto: TDataSource
    DataSet = NF_NCM_Imposto
    Left = 44
    Top = 348
  end
  object TransaFD: TFDTransaction
    Options.Isolation = xiReadCommitted
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 72
    Top = 376
  end
end
