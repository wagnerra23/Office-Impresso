inherited FrmSped: TFrmSped
  Caption = 'Sped Fiscal'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    ExplicitWidth = 304
    ExplicitHeight = 181
    inherited btnNovo: TcxButton
      Left = 1097
      TabOrder = 32
      ExplicitLeft = 1097
    end
    inherited btnConfirmar: TcxButton
      Left = 1097
      TabOrder = 33
      ExplicitLeft = 1097
    end
    inherited btnAlterar: TcxButton
      Left = 1097
      TabOrder = 34
      ExplicitLeft = 1097
    end
    inherited btnCancelar: TcxButton
      Left = 1097
      TabOrder = 35
      ExplicitLeft = 1097
    end
    inherited btnExcluir: TcxButton
      Left = 1097
      TabOrder = 36
      ExplicitLeft = 1097
    end
    inherited btnConsultar: TcxButton
      Left = 1097
      TabOrder = 41
      ExplicitLeft = 1097
    end
    inherited btnSair: TcxButton
      Left = 1097
      Top = 946
      TabOrder = 43
      ExplicitLeft = 1097
      ExplicitTop = 946
    end
    inherited edtCodigo: TcxDBTextEdit
      Left = 120
      TabOrder = 2
      ExplicitLeft = 120
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 624
      TabOrder = 5
      ExplicitLeft = 624
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 173
      TabOrder = 3
      ExplicitLeft = 173
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 1097
      TabOrder = 39
      ExplicitLeft = 1097
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 1156
      TabOrder = 40
      ExplicitLeft = 1156
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 48
    end
    inherited BtnSeguidores: TcxButton
      Left = 1168
      TabOrder = 46
      ExplicitLeft = 1168
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 1175
      TabOrder = 31
      ExplicitLeft = 1175
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 47
    end
    inherited PnlFrameHistorico: TPanel
      Left = 132
      Top = 706
      Width = 939
      Align = alBottom
      TabOrder = 28
      ExplicitLeft = 132
      ExplicitTop = 706
      ExplicitWidth = 939
    end
    inherited BtnImprimir: TcxButton
      Left = 1188
      Top = 350
      TabOrder = 45
      ExplicitLeft = 1188
      ExplicitTop = 350
    end
    inherited BtnDesativar: TcxButton
      Left = 1097
      TabOrder = 38
      ExplicitLeft = 1097
    end
    inherited BtnAtivar: TcxButton
      Left = 1097
      TabOrder = 37
      ExplicitLeft = 1097
    end
    inherited BtnAjuda: TcxButton
      Left = 1097
      TabOrder = 29
      ExplicitLeft = 1097
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 580
      TabOrder = 4
      ExplicitLeft = 580
    end
    inherited BtnImprimirPadrao: TcxButton
      Left = 1097
      Top = 350
      TabOrder = 44
      ExplicitLeft = 1097
      ExplicitTop = 350
    end
    inherited LbTitulo: TcxLabel
      Left = 120
      ExplicitLeft = 120
    end
    inherited btnSeguidoresNovo: TcxButton
      TabOrder = 30
    end
    object cxGrid1: TcxGrid [25]
      Left = 10000
      Top = 10000
      Width = 791
      Height = 274
      TabOrder = 9
      Visible = False
      object cxGridEmpresa: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSR0150
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGridEmpresaCODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
        end
        object cxGridEmpresaCNPJCPF: TcxGridDBColumn
          DataBinding.FieldName = 'CNPJCPF'
        end
        object cxGridEmpresaINSCIDENT: TcxGridDBColumn
          DataBinding.FieldName = 'INSCIDENT'
        end
        object cxGridEmpresaRAZAOSOCIAL: TcxGridDBColumn
          DataBinding.FieldName = 'RAZAOSOCIAL'
        end
        object cxGridEmpresaFANTASIA: TcxGridDBColumn
          DataBinding.FieldName = 'FANTASIA'
        end
        object cxGridEmpresaCONTATO: TcxGridDBColumn
          DataBinding.FieldName = 'CONTATO'
        end
        object cxGridEmpresaENDERECO: TcxGridDBColumn
          DataBinding.FieldName = 'ENDERECO'
        end
        object cxGridEmpresaCIDADE: TcxGridDBColumn
          DataBinding.FieldName = 'CIDADE'
        end
        object cxGridEmpresaBAIRRO: TcxGridDBColumn
          DataBinding.FieldName = 'BAIRRO'
        end
        object cxGridEmpresaCEP: TcxGridDBColumn
          DataBinding.FieldName = 'CEP'
        end
        object cxGridEmpresaUF: TcxGridDBColumn
          DataBinding.FieldName = 'UF'
        end
        object cxGridEmpresaFONE1: TcxGridDBColumn
          DataBinding.FieldName = 'FONE1'
        end
        object cxGridEmpresaFONE2: TcxGridDBColumn
          DataBinding.FieldName = 'FONE2'
        end
        object cxGridEmpresaFAX: TcxGridDBColumn
          DataBinding.FieldName = 'FAX'
        end
        object cxGridEmpresaEMAIL: TcxGridDBColumn
          DataBinding.FieldName = 'EMAIL'
        end
        object cxGridEmpresaTIPO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO'
        end
        object cxGridEmpresaPAGINA: TcxGridDBColumn
          DataBinding.FieldName = 'PAGINA'
        end
        object cxGridEmpresaATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
        end
        object cxGridEmpresaMODULO: TcxGridDBColumn
          DataBinding.FieldName = 'MODULO'
        end
        object cxGridEmpresaCODCIDADE: TcxGridDBColumn
          DataBinding.FieldName = 'CODCIDADE'
        end
        object cxGridEmpresaNUMERO: TcxGridDBColumn
          DataBinding.FieldName = 'NUMERO'
        end
        object cxGridEmpresaIM: TcxGridDBColumn
          DataBinding.FieldName = 'IM'
        end
        object cxGridEmpresaIEST: TcxGridDBColumn
          DataBinding.FieldName = 'IEST'
        end
        object cxGridEmpresaCNAE: TcxGridDBColumn
          DataBinding.FieldName = 'CNAE'
        end
        object cxGridEmpresaISSQN: TcxGridDBColumn
          DataBinding.FieldName = 'ISSQN'
        end
        object cxGridEmpresaCRT: TcxGridDBColumn
          DataBinding.FieldName = 'CRT'
        end
        object cxGridEmpresaCODIGO_MUNICIPIO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_MUNICIPIO'
        end
        object cxGridEmpresaSUFRAMA: TcxGridDBColumn
          DataBinding.FieldName = 'SUFRAMA'
        end
        object cxGridEmpresaCPF_PROPRIETARIO: TcxGridDBColumn
          DataBinding.FieldName = 'CPF_PROPRIETARIO'
        end
        object cxGridEmpresaCONTADOR_NOME: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_NOME'
        end
        object cxGridEmpresaCONTADOR_CPF: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_CPF'
        end
        object cxGridEmpresaCONTADOR_CRC: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_CRC'
        end
        object cxGridEmpresaCONTADOR_CNPJ: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_CNPJ'
        end
        object cxGridEmpresaCONTADOR_CEP: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_CEP'
        end
        object cxGridEmpresaCONTADOR_ENDERECO: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_ENDERECO'
        end
        object cxGridEmpresaCONTADOR_NUMERO: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_NUMERO'
        end
        object cxGridEmpresaCONTADOR_COMPLEMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_COMPLEMENTO'
        end
        object cxGridEmpresaCONTADOR_BAIRRO: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_BAIRRO'
        end
        object cxGridEmpresaCONTADOR_FONE: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_FONE'
        end
        object cxGridEmpresaCONTADOR_FAX: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_FAX'
        end
        object cxGridEmpresaCONTADOR_EMAIL: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_EMAIL'
        end
        object cxGridEmpresaCONTADOR_CODIGO_MUNICIPIO: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_CODIGO_MUNICIPIO'
        end
        object cxGridEmpresaCONTADOR_UF: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_UF'
        end
        object cxGridEmpresaCOMPLEMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'COMPLEMENTO'
        end
        object cxGridEmpresaTIPO_OS: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO_OS'
        end
        object cxGridEmpresaPAIS: TcxGridDBColumn
          DataBinding.FieldName = 'PAIS'
        end
        object cxGridEmpresaCODPAIS: TcxGridDBColumn
          DataBinding.FieldName = 'CODPAIS'
        end
        object cxGridEmpresaAPP_SENHA: TcxGridDBColumn
          DataBinding.FieldName = 'APP_SENHA'
        end
        object cxGridEmpresaEMITE_NFE: TcxGridDBColumn
          DataBinding.FieldName = 'EMITE_NFE'
        end
        object cxGridEmpresaCONTADOR_IM: TcxGridDBColumn
          DataBinding.FieldName = 'CONTADOR_IM'
        end
        object cxGridEmpresaCMC: TcxGridDBColumn
          DataBinding.FieldName = 'CMC'
        end
        object cxGridEmpresaPESSOA_CONTADOR_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_CONTADOR_CODIGO'
        end
        object cxGridEmpresaPESSOA_CONTADOR_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_CONTADOR_TIPO'
        end
        object cxGridEmpresaPESSOA_CONTADOR_SEQUENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_CONTADOR_SEQUENCIA'
        end
        object cxGridEmpresaDT_CADASTRO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_CADASTRO'
        end
        object cxGridEmpresaDT_ALTERACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
        object cxGridEmpresaREGIME: TcxGridDBColumn
          DataBinding.FieldName = 'REGIME'
        end
        object cxGridEmpresaCNPJ_AUTORIZACAO_NFE: TcxGridDBColumn
          DataBinding.FieldName = 'CNPJ_AUTORIZACAO_NFE'
        end
        object cxGridEmpresaPCREDSN: TcxGridDBColumn
          DataBinding.FieldName = 'PCREDSN'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGridEmpresa
      end
    end
    object cxGrid2: TcxGrid [26]
      Left = 10000
      Top = 10000
      Width = 747
      Height = 200
      TabOrder = 10
      Visible = False
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxGrid3: TcxGrid [27]
      Left = 10000
      Top = 10000
      Width = 879
      Height = 440
      TabOrder = 11
      Visible = False
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object cxGrid7: TcxGrid [28]
      Left = 10000
      Top = 10000
      Width = 875
      Height = 230
      TabOrder = 15
      Visible = False
      object cxGridDBTableView6: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel6: TcxGridLevel
        GridView = cxGridDBTableView6
      end
    end
    object cxGrid13: TcxGrid [29]
      Left = 10000
      Top = 10000
      Width = 919
      Height = 528
      TabOrder = 22
      Visible = False
      object cxGridDBTableView12: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel12: TcxGridLevel
        GridView = cxGridDBTableView12
      end
    end
    object cxGrid14: TcxGrid [30]
      Left = 10000
      Top = 10000
      Width = 899
      Height = 484
      TabOrder = 23
      Visible = False
      object cxGridDBTableView13: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel13: TcxGridLevel
        GridView = cxGridDBTableView13
      end
    end
    object cxGrid15: TcxGrid [31]
      Left = 10000
      Top = 10000
      Width = 895
      Height = 318
      TabOrder = 24
      Visible = False
      object cxGridDBTableView14: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel14: TcxGridLevel
        GridView = cxGridDBTableView14
      end
    end
    object cxGrid16: TcxGrid [32]
      Left = 10000
      Top = 10000
      Width = 791
      Height = 318
      TabOrder = 25
      Visible = False
      object cxGridDBTableView15: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel15: TcxGridLevel
        GridView = cxGridDBTableView15
      end
    end
    object cxGrid17: TcxGrid [33]
      Left = 10000
      Top = 10000
      Width = 811
      Height = 362
      TabOrder = 27
      Visible = False
      object cxGridDBTableView16: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel16: TcxGridLevel
        GridView = cxGridDBTableView16
      end
    end
    object cxGrid18: TcxGrid [34]
      Left = 10000
      Top = 10000
      Width = 899
      Height = 484
      TabOrder = 26
      Visible = False
      object cxGridDBTableView17: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel17: TcxGridLevel
        GridView = cxGridDBTableView17
      end
    end
    object cxGrid19: TcxGrid [35]
      Left = 10000
      Top = 10000
      Width = 879
      Height = 440
      TabOrder = 13
      Visible = False
      object cxGridPessoas: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = cxGridPessoasNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditing = cxGridPessoasEditing
        DataController.DataSource = DSR0150
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        object cxGridPessoasCODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
        end
        object cxGridPessoasCOD_PART: TcxGridDBColumn
          DataBinding.FieldName = 'COD_PART'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
          OnValidateDrawValue = cxGridPessoasCOD_PARTValidateDrawValue
          Width = 87
        end
        object cxGridPessoasNOME: TcxGridDBColumn
          DataBinding.FieldName = 'NOME'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
          OnValidateDrawValue = cxGridPessoasNOMEValidateDrawValue
          Width = 263
        end
        object cxGridPessoasCOD_PAIS: TcxGridDBColumn
          DataBinding.FieldName = 'COD_PAIS'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
          OnValidateDrawValue = cxGridPessoasCOD_PAISValidateDrawValue
        end
        object cxGridPessoasCNPJ: TcxGridDBColumn
          DataBinding.FieldName = 'CNPJ'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
          OnValidateDrawValue = cxGridPessoasCNPJValidateDrawValue
        end
        object cxGridPessoasCPF: TcxGridDBColumn
          DataBinding.FieldName = 'CPF'
        end
        object cxGridPessoasIE: TcxGridDBColumn
          DataBinding.FieldName = 'IE'
        end
        object cxGridPessoasCOD_MUN: TcxGridDBColumn
          DataBinding.FieldName = 'COD_MUN'
        end
        object cxGridPessoasEND: TcxGridDBColumn
          DataBinding.FieldName = 'END'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
          OnValidateDrawValue = cxGridPessoasENDValidateDrawValue
        end
        object cxGridPessoasNUM: TcxGridDBColumn
          DataBinding.FieldName = 'NUM'
        end
        object cxGridPessoasCOMPL: TcxGridDBColumn
          DataBinding.FieldName = 'COMPL'
        end
        object cxGridPessoasBAIRRO: TcxGridDBColumn
          DataBinding.FieldName = 'BAIRRO'
        end
        object cxGridPessoasSUFRAMA: TcxGridDBColumn
          DataBinding.FieldName = 'SUFRAMA'
        end
        object cxGridPessoasCODSPED: TcxGridDBColumn
          DataBinding.FieldName = 'CODSPED'
          Visible = False
        end
      end
      object cxGridLevel18: TcxGridLevel
        GridView = cxGridPessoas
      end
    end
    object CbMes: TcxComboBox [36]
      Left = 743
      Top = 61
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object CbAno: TcxComboBox [37]
      Left = 865
      Top = 61
      Style.HotTrack = False
      TabOrder = 7
      Width = 96
    end
    object BitBtn1: TBitBtn [38]
      Left = 1097
      Top = 309
      Width = 116
      Height = 25
      Caption = 'Carregar Dados Sped'
      TabOrder = 42
      OnClick = BitBtn1Click
    end
    object cbxPerfilSped: TcxComboBox [39]
      Left = 962
      Top = 61
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'A'
        'B'
        'C')
      Style.HotTrack = False
      TabOrder = 8
      Text = 'A'
      Width = 121
    end
    object cxGrid5: TcxGrid [40]
      Left = 10000
      Top = 10000
      Width = 879
      Height = 440
      TabOrder = 12
      Visible = False
      object cxGridDBTableView4: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = cxGridPessoasNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditing = cxGridPessoasEditing
        DataController.DataSource = DSR0190
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        object cxGridDBTableView4CODSPED: TcxGridDBColumn
          DataBinding.FieldName = 'CODSPED'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGridDBTableView4CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
        end
        object cxGridDBTableView4UNID: TcxGridDBColumn
          DataBinding.FieldName = 'UNID'
          Width = 78
        end
        object cxGridDBTableView4DESCR: TcxGridDBColumn
          DataBinding.FieldName = 'DESCR'
          Width = 336
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxGridDBTableView4
      end
    end
    object cxGrid20: TcxGrid [41]
      Left = 10000
      Top = 10000
      Width = 879
      Height = 440
      TabOrder = 14
      Visible = False
      object cxGridDBTableView18: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = cxGridPessoasNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditing = cxGridPessoasEditing
        DataController.DataSource = DSSPED_0200
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        object cxGridDBTableView18CODSPED: TcxGridDBColumn
          DataBinding.FieldName = 'CODSPED'
        end
        object cxGridDBTableView18COD_ITEM: TcxGridDBColumn
          DataBinding.FieldName = 'COD_ITEM'
        end
        object cxGridDBTableView18DESCR_ITEM: TcxGridDBColumn
          DataBinding.FieldName = 'DESCR_ITEM'
        end
        object cxGridDBTableView18COD_BARRA: TcxGridDBColumn
          DataBinding.FieldName = 'COD_BARRA'
        end
        object cxGridDBTableView18COD_ANT_ITEM: TcxGridDBColumn
          DataBinding.FieldName = 'COD_ANT_ITEM'
        end
        object cxGridDBTableView18UNID_INV: TcxGridDBColumn
          DataBinding.FieldName = 'UNID_INV'
        end
        object cxGridDBTableView18TIPO_ITEM: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO_ITEM'
        end
        object cxGridDBTableView18COD_NCM: TcxGridDBColumn
          DataBinding.FieldName = 'COD_NCM'
        end
        object cxGridDBTableView18EX_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'EX_IPI'
        end
        object cxGridDBTableView18COD_GEN: TcxGridDBColumn
          DataBinding.FieldName = 'COD_GEN'
        end
        object cxGridDBTableView18COD_LST: TcxGridDBColumn
          DataBinding.FieldName = 'COD_LST'
        end
        object cxGridDBTableView18ALIQ_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_ICMS'
        end
        object cxGridDBTableView18CEST: TcxGridDBColumn
          DataBinding.FieldName = 'CEST'
        end
      end
      object cxGridLevel19: TcxGridLevel
        GridView = cxGridDBTableView18
      end
    end
    object cxGrid4: TcxGrid [42]
      Left = 10000
      Top = 10000
      Width = 868
      Height = 440
      TabOrder = 16
      Visible = False
      object cxGridDBTableView3: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = cxGridPessoasNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditing = cxGridPessoasEditing
        DataController.DataSource = DSSPED_C100
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        object cxGridDBTableView3CODSPED: TcxGridDBColumn
          DataBinding.FieldName = 'CODSPED'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGridDBTableView3CODPEDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPEDIDO'
          Width = 69
        end
        object cxGridDBTableView3IND_OPER: TcxGridDBColumn
          DataBinding.FieldName = 'IND_OPER'
        end
        object cxGridDBTableView3IND_EMIT: TcxGridDBColumn
          DataBinding.FieldName = 'IND_EMIT'
        end
        object cxGridDBTableView3COD_PART: TcxGridDBColumn
          DataBinding.FieldName = 'COD_PART'
        end
        object cxGridDBTableView3COD_MOD: TcxGridDBColumn
          DataBinding.FieldName = 'COD_MOD'
        end
        object cxGridDBTableView3COD_SIT: TcxGridDBColumn
          DataBinding.FieldName = 'COD_SIT'
        end
        object cxGridDBTableView3SER: TcxGridDBColumn
          DataBinding.FieldName = 'SER'
        end
        object cxGridDBTableView3NUN_DOC: TcxGridDBColumn
          DataBinding.FieldName = 'NUN_DOC'
        end
        object cxGridDBTableView3CHV_NFE: TcxGridDBColumn
          DataBinding.FieldName = 'CHV_NFE'
        end
        object cxGridDBTableView3DT_DOC: TcxGridDBColumn
          DataBinding.FieldName = 'DT_DOC'
        end
        object cxGridDBTableView3DT_E_S: TcxGridDBColumn
          DataBinding.FieldName = 'DT_E_S'
        end
        object cxGridDBTableView3VL_DOC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_DOC'
        end
        object cxGridDBTableView3IND_PAGTO: TcxGridDBColumn
          DataBinding.FieldName = 'IND_PAGTO'
        end
        object cxGridDBTableView3VL_DESC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_DESC'
        end
        object cxGridDBTableView3VL_ABAT_NT: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ABAT_NT'
        end
        object cxGridDBTableView3VL_MERC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_MERC'
        end
        object cxGridDBTableView3IND_FRT: TcxGridDBColumn
          DataBinding.FieldName = 'IND_FRT'
        end
        object cxGridDBTableView3VL_FRT: TcxGridDBColumn
          DataBinding.FieldName = 'VL_FRT'
        end
        object cxGridDBTableView3VL_SEG: TcxGridDBColumn
          DataBinding.FieldName = 'VL_SEG'
        end
        object cxGridDBTableView3VL_OUT_DA: TcxGridDBColumn
          DataBinding.FieldName = 'VL_OUT_DA'
        end
        object cxGridDBTableView3VL_BC_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS'
        end
        object cxGridDBTableView3VL_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS'
        end
        object cxGridDBTableView3VL_BC_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS_ST'
        end
        object cxGridDBTableView3VL_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS_ST'
        end
        object cxGridDBTableView3VL_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'VL_IPI'
        end
        object cxGridDBTableView3VL_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_PIS'
        end
        object cxGridDBTableView3VL_CONFINS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_CONFINS'
        end
        object cxGridDBTableView3VL_PIS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_PIS_ST'
        end
        object cxGridDBTableView3VL_CONFINS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_CONFINS_ST'
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView3
      end
    end
    object cxGrid6: TcxGrid [43]
      Left = 10000
      Top = 10000
      Width = 879
      Height = 440
      TabOrder = 17
      Visible = False
      object cxGridDBTableView5: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = cxGridPessoasNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditing = cxGridPessoasEditing
        DataController.DataSource = DSSPED_C170
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        object cxGridDBTableView5CODSPED: TcxGridDBColumn
          DataBinding.FieldName = 'CODSPED'
        end
        object cxGridDBTableView5CODPEDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPEDIDO'
        end
        object cxGridDBTableView5NUM_ITEM: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_ITEM'
        end
        object cxGridDBTableView5COD_ITEM: TcxGridDBColumn
          DataBinding.FieldName = 'COD_ITEM'
        end
        object cxGridDBTableView5DESCR_COMPL: TcxGridDBColumn
          DataBinding.FieldName = 'DESCR_COMPL'
        end
        object cxGridDBTableView5QTD: TcxGridDBColumn
          DataBinding.FieldName = 'QTD'
        end
        object cxGridDBTableView5UNID: TcxGridDBColumn
          DataBinding.FieldName = 'UNID'
        end
        object cxGridDBTableView5VL_ITEM: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ITEM'
        end
        object cxGridDBTableView5VL_DESC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_DESC'
        end
        object cxGridDBTableView5IND_MOV: TcxGridDBColumn
          DataBinding.FieldName = 'IND_MOV'
        end
        object cxGridDBTableView5CST_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'CST_ICMS'
        end
        object cxGridDBTableView5CFOP: TcxGridDBColumn
          DataBinding.FieldName = 'CFOP'
        end
        object cxGridDBTableView5COD_NAT: TcxGridDBColumn
          DataBinding.FieldName = 'COD_NAT'
        end
        object cxGridDBTableView5VL_BC_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS'
        end
        object cxGridDBTableView5ALIQ_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_ICMS'
        end
        object cxGridDBTableView5VL_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS'
        end
        object cxGridDBTableView5VL_BC_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS_ST'
        end
        object cxGridDBTableView5ALIQ_ST: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_ST'
        end
        object cxGridDBTableView5VL_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS_ST'
        end
        object cxGridDBTableView5IND_APUR: TcxGridDBColumn
          DataBinding.FieldName = 'IND_APUR'
        end
        object cxGridDBTableView5CST_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'CST_IPI'
        end
        object cxGridDBTableView5COD_ENQ: TcxGridDBColumn
          DataBinding.FieldName = 'COD_ENQ'
        end
        object cxGridDBTableView5VL_BC_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_IPI'
        end
        object cxGridDBTableView5ALIQ_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_IPI'
        end
        object cxGridDBTableView5VL_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'VL_IPI'
        end
        object cxGridDBTableView5CST_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'CST_PIS'
        end
        object cxGridDBTableView5VL_BC_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_PIS'
        end
        object cxGridDBTableView5ALIQ_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_PIS'
        end
        object cxGridDBTableView5QUANT_BC_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT_BC_PIS'
        end
        object cxGridDBTableView5VL_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_PIS'
        end
        object cxGridDBTableView5CST_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'CST_COFINS'
        end
        object cxGridDBTableView5VL_BC_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_COFINS'
        end
        object cxGridDBTableView5QUANT_BC_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT_BC_COFINS'
        end
        object cxGridDBTableView5ALIQ_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_COFINS'
        end
        object cxGridDBTableView5VL_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_COFINS'
        end
        object cxGridDBTableView5COD_CTA: TcxGridDBColumn
          DataBinding.FieldName = 'COD_CTA'
        end
        object cxGridDBTableView5VL_ABAT_NT: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ABAT_NT'
        end
      end
      object cxGridLevel5: TcxGridLevel
        GridView = cxGridDBTableView5
      end
    end
    object cxGrid8: TcxGrid [44]
      Left = 10000
      Top = 10000
      Width = 879
      Height = 440
      TabOrder = 18
      Visible = False
      object cxGridDBTableView7: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = cxGridPessoasNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditing = cxGridPessoasEditing
        DataController.DataSource = DSSPED_C190
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        object cxGridDBTableView7CODSPED: TcxGridDBColumn
          DataBinding.FieldName = 'CODSPED'
        end
        object cxGridDBTableView7CODPEDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPEDIDO'
        end
        object cxGridDBTableView7CST_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'CST_ICMS'
        end
        object cxGridDBTableView7CFOP: TcxGridDBColumn
          DataBinding.FieldName = 'CFOP'
        end
        object cxGridDBTableView7ALIQ_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_ICMS'
        end
        object cxGridDBTableView7VL_OPR: TcxGridDBColumn
          DataBinding.FieldName = 'VL_OPR'
        end
        object cxGridDBTableView7VL_BC_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS'
        end
        object cxGridDBTableView7VL_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS'
        end
        object cxGridDBTableView7VL_BC_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS_ST'
        end
        object cxGridDBTableView7VL_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS_ST'
        end
        object cxGridDBTableView7VL_RED_BC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_RED_BC'
        end
        object cxGridDBTableView7VL_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'VL_IPI'
        end
        object cxGridDBTableView7COD_OBS: TcxGridDBColumn
          DataBinding.FieldName = 'COD_OBS'
        end
      end
      object cxGridLevel7: TcxGridLevel
        GridView = cxGridDBTableView7
      end
    end
    object cxGrid9: TcxGrid [45]
      Left = 10000
      Top = 10000
      Width = 879
      Height = 440
      TabOrder = 19
      Visible = False
      object cxGridDBTableView8: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = cxGridPessoasNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditing = cxGridPessoasEditing
        DataController.DataSource = DSSPED_C100_E
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        object cxGridDBTableView8CODSPED: TcxGridDBColumn
          DataBinding.FieldName = 'CODSPED'
        end
        object cxGridDBTableView8CODPEDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPEDIDO'
        end
        object cxGridDBTableView8IND_OPER: TcxGridDBColumn
          DataBinding.FieldName = 'IND_OPER'
        end
        object cxGridDBTableView8IND_EMIT: TcxGridDBColumn
          DataBinding.FieldName = 'IND_EMIT'
        end
        object cxGridDBTableView8COD_PART: TcxGridDBColumn
          DataBinding.FieldName = 'COD_PART'
        end
        object cxGridDBTableView8COD_MOD: TcxGridDBColumn
          DataBinding.FieldName = 'COD_MOD'
        end
        object cxGridDBTableView8COD_SIT: TcxGridDBColumn
          DataBinding.FieldName = 'COD_SIT'
        end
        object cxGridDBTableView8SER: TcxGridDBColumn
          DataBinding.FieldName = 'SER'
        end
        object cxGridDBTableView8NUN_DOC: TcxGridDBColumn
          DataBinding.FieldName = 'NUN_DOC'
        end
        object cxGridDBTableView8CHV_NFE: TcxGridDBColumn
          DataBinding.FieldName = 'CHV_NFE'
        end
        object cxGridDBTableView8DT_DOC: TcxGridDBColumn
          DataBinding.FieldName = 'DT_DOC'
        end
        object cxGridDBTableView8DT_E_S: TcxGridDBColumn
          DataBinding.FieldName = 'DT_E_S'
        end
        object cxGridDBTableView8VL_DOC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_DOC'
        end
        object cxGridDBTableView8IND_PAGTO: TcxGridDBColumn
          DataBinding.FieldName = 'IND_PAGTO'
        end
        object cxGridDBTableView8VL_DESC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_DESC'
        end
        object cxGridDBTableView8VL_ABAT_NT: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ABAT_NT'
        end
        object cxGridDBTableView8VL_MERC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_MERC'
        end
        object cxGridDBTableView8IND_FRT: TcxGridDBColumn
          DataBinding.FieldName = 'IND_FRT'
        end
        object cxGridDBTableView8VL_FRT: TcxGridDBColumn
          DataBinding.FieldName = 'VL_FRT'
        end
        object cxGridDBTableView8VL_SEG: TcxGridDBColumn
          DataBinding.FieldName = 'VL_SEG'
        end
        object cxGridDBTableView8VL_OUT_DA: TcxGridDBColumn
          DataBinding.FieldName = 'VL_OUT_DA'
        end
        object cxGridDBTableView8VL_BC_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS'
        end
        object cxGridDBTableView8VL_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS'
        end
        object cxGridDBTableView8VL_BC_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS_ST'
        end
        object cxGridDBTableView8VL_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS_ST'
        end
        object cxGridDBTableView8VL_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'VL_IPI'
        end
        object cxGridDBTableView8VL_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_PIS'
        end
        object cxGridDBTableView8VL_CONFINS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_CONFINS'
        end
        object cxGridDBTableView8VL_PIS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_PIS_ST'
        end
        object cxGridDBTableView8VL_CONFINS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_CONFINS_ST'
        end
      end
      object cxGridLevel8: TcxGridLevel
        GridView = cxGridDBTableView8
      end
    end
    object cxGrid10: TcxGrid [46]
      Left = 10000
      Top = 10000
      Width = 879
      Height = 440
      TabOrder = 20
      Visible = False
      object cxGridDBTableView9: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = cxGridPessoasNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditing = cxGridPessoasEditing
        DataController.DataSource = DSSPED_C170_Entrada
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        object cxGridDBTableView9CODSPED: TcxGridDBColumn
          DataBinding.FieldName = 'CODSPED'
        end
        object cxGridDBTableView9CODPEDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPEDIDO'
        end
        object cxGridDBTableView9NUM_ITEM: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_ITEM'
        end
        object cxGridDBTableView9COD_ITEM: TcxGridDBColumn
          DataBinding.FieldName = 'COD_ITEM'
        end
        object cxGridDBTableView9DESCR_COMPL: TcxGridDBColumn
          DataBinding.FieldName = 'DESCR_COMPL'
        end
        object cxGridDBTableView9QTD: TcxGridDBColumn
          DataBinding.FieldName = 'QTD'
        end
        object cxGridDBTableView9UNID: TcxGridDBColumn
          DataBinding.FieldName = 'UNID'
        end
        object cxGridDBTableView9VL_ITEM: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ITEM'
        end
        object cxGridDBTableView9VL_DESC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_DESC'
        end
        object cxGridDBTableView9IND_MOV: TcxGridDBColumn
          DataBinding.FieldName = 'IND_MOV'
        end
        object cxGridDBTableView9CST_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'CST_ICMS'
        end
        object cxGridDBTableView9CFOP: TcxGridDBColumn
          DataBinding.FieldName = 'CFOP'
        end
        object cxGridDBTableView9COD_NAT: TcxGridDBColumn
          DataBinding.FieldName = 'COD_NAT'
        end
        object cxGridDBTableView9VL_BC_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS'
        end
        object cxGridDBTableView9ALIQ_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_ICMS'
        end
        object cxGridDBTableView9VL_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS'
        end
        object cxGridDBTableView9VL_BC_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS_ST'
        end
        object cxGridDBTableView9ALIQ_ST: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_ST'
        end
        object cxGridDBTableView9VL_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS_ST'
        end
        object cxGridDBTableView9IND_APUR: TcxGridDBColumn
          DataBinding.FieldName = 'IND_APUR'
        end
        object cxGridDBTableView9CST_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'CST_IPI'
        end
        object cxGridDBTableView9COD_ENQ: TcxGridDBColumn
          DataBinding.FieldName = 'COD_ENQ'
        end
        object cxGridDBTableView9VL_BC_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_IPI'
        end
        object cxGridDBTableView9ALIQ_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_IPI'
        end
        object cxGridDBTableView9VL_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'VL_IPI'
        end
        object cxGridDBTableView9CST_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'CST_PIS'
        end
        object cxGridDBTableView9VL_BC_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_PIS'
        end
        object cxGridDBTableView9ALIQ_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_PIS'
        end
        object cxGridDBTableView9QUANT_BC_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT_BC_PIS'
        end
        object cxGridDBTableView9VL_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_PIS'
        end
        object cxGridDBTableView9CST_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'CST_COFINS'
        end
        object cxGridDBTableView9VL_BC_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_COFINS'
        end
        object cxGridDBTableView9QUANT_BC_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT_BC_COFINS'
        end
        object cxGridDBTableView9ALIQ_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_COFINS'
        end
        object cxGridDBTableView9VL_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_COFINS'
        end
        object cxGridDBTableView9COD_CTA: TcxGridDBColumn
          DataBinding.FieldName = 'COD_CTA'
        end
        object cxGridDBTableView9VL_ABAT_NT: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ABAT_NT'
        end
      end
      object cxGridLevel9: TcxGridLevel
        GridView = cxGridDBTableView9
      end
    end
    object cxGrid11: TcxGrid [47]
      Left = 162
      Top = 203
      Width = 879
      Height = 440
      TabOrder = 21
      object cxGridDBTableView10: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = cxGridPessoasNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditing = cxGridPessoasEditing
        DataController.DataSource = DSSPED_C190_Entrada
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        object cxGridDBTableView10CODSPED: TcxGridDBColumn
          DataBinding.FieldName = 'CODSPED'
        end
        object cxGridDBTableView10CODPEDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPEDIDO'
        end
        object cxGridDBTableView10CST_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'CST_ICMS'
        end
        object cxGridDBTableView10CFOP: TcxGridDBColumn
          DataBinding.FieldName = 'CFOP'
        end
        object cxGridDBTableView10ALIQ_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'ALIQ_ICMS'
        end
        object cxGridDBTableView10VL_OPR: TcxGridDBColumn
          DataBinding.FieldName = 'VL_OPR'
        end
        object cxGridDBTableView10VL_BC_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS'
        end
        object cxGridDBTableView10VL_ICMS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS'
        end
        object cxGridDBTableView10VL_BC_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS_ST'
        end
        object cxGridDBTableView10VL_ICMS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS_ST'
        end
        object cxGridDBTableView10VL_RED_BC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_RED_BC'
        end
        object cxGridDBTableView10VL_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'VL_IPI'
        end
        object cxGridDBTableView10COD_OBS: TcxGridDBColumn
          DataBinding.FieldName = 'COD_OBS'
        end
        object cxGridDBTableView10CODSPED_1: TcxGridDBColumn
          DataBinding.FieldName = 'CODSPED_1'
        end
        object cxGridDBTableView10CODPEDIDO_1: TcxGridDBColumn
          DataBinding.FieldName = 'CODPEDIDO_1'
        end
        object cxGridDBTableView10IND_OPER: TcxGridDBColumn
          DataBinding.FieldName = 'IND_OPER'
        end
        object cxGridDBTableView10IND_EMIT: TcxGridDBColumn
          DataBinding.FieldName = 'IND_EMIT'
        end
        object cxGridDBTableView10COD_PART: TcxGridDBColumn
          DataBinding.FieldName = 'COD_PART'
        end
        object cxGridDBTableView10COD_MOD: TcxGridDBColumn
          DataBinding.FieldName = 'COD_MOD'
        end
        object cxGridDBTableView10COD_SIT: TcxGridDBColumn
          DataBinding.FieldName = 'COD_SIT'
        end
        object cxGridDBTableView10SER: TcxGridDBColumn
          DataBinding.FieldName = 'SER'
        end
        object cxGridDBTableView10NUN_DOC: TcxGridDBColumn
          DataBinding.FieldName = 'NUN_DOC'
        end
        object cxGridDBTableView10CHV_NFE: TcxGridDBColumn
          DataBinding.FieldName = 'CHV_NFE'
        end
        object cxGridDBTableView10DT_DOC: TcxGridDBColumn
          DataBinding.FieldName = 'DT_DOC'
        end
        object cxGridDBTableView10DT_E_S: TcxGridDBColumn
          DataBinding.FieldName = 'DT_E_S'
        end
        object cxGridDBTableView10VL_DOC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_DOC'
        end
        object cxGridDBTableView10IND_PAGTO: TcxGridDBColumn
          DataBinding.FieldName = 'IND_PAGTO'
        end
        object cxGridDBTableView10VL_DESC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_DESC'
        end
        object cxGridDBTableView10VL_ABAT_NT: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ABAT_NT'
        end
        object cxGridDBTableView10VL_MERC: TcxGridDBColumn
          DataBinding.FieldName = 'VL_MERC'
        end
        object cxGridDBTableView10IND_FRT: TcxGridDBColumn
          DataBinding.FieldName = 'IND_FRT'
        end
        object cxGridDBTableView10VL_FRT: TcxGridDBColumn
          DataBinding.FieldName = 'VL_FRT'
        end
        object cxGridDBTableView10VL_SEG: TcxGridDBColumn
          DataBinding.FieldName = 'VL_SEG'
        end
        object cxGridDBTableView10VL_OUT_DA: TcxGridDBColumn
          DataBinding.FieldName = 'VL_OUT_DA'
        end
        object cxGridDBTableView10VL_BC_ICMS_1: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS_1'
        end
        object cxGridDBTableView10VL_ICMS_1: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS_1'
        end
        object cxGridDBTableView10VL_BC_ICMS_ST_1: TcxGridDBColumn
          DataBinding.FieldName = 'VL_BC_ICMS_ST_1'
        end
        object cxGridDBTableView10VL_ICMS_ST_1: TcxGridDBColumn
          DataBinding.FieldName = 'VL_ICMS_ST_1'
        end
        object cxGridDBTableView10VL_IPI_1: TcxGridDBColumn
          DataBinding.FieldName = 'VL_IPI_1'
        end
        object cxGridDBTableView10VL_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_PIS'
        end
        object cxGridDBTableView10VL_CONFINS: TcxGridDBColumn
          DataBinding.FieldName = 'VL_CONFINS'
        end
        object cxGridDBTableView10VL_PIS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_PIS_ST'
        end
        object cxGridDBTableView10VL_CONFINS_ST: TcxGridDBColumn
          DataBinding.FieldName = 'VL_CONFINS_ST'
        end
      end
      object cxGridLevel10: TcxGridLevel
        GridView = cxGridDBTableView10
      end
    end
    object BitBtn2: TBitBtn [48]
      Left = 0
      Top = 0
      Width = 116
      Height = 25
      Caption = 'Carregar Dados Sped'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 6
    end
    inherited GrupoMenu: TdxLayoutGroup
      Index = 2
    end
    inherited LiBtnSair: TdxLayoutItem
      Index = 10
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 4
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Index = 5
    end
    inherited GrupoCadImpressao: TdxLayoutGroup
      Index = 11
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      Control = cxGrid1
      ControlOptions.OriginalHeight = 274
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avClient
      Control = cxGrid2
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 767
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avClient
      Control = cxGrid3
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 784
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignVert = avClient
      Control = cxGrid7
      ControlOptions.OriginalHeight = 230
      ControlOptions.OriginalWidth = 771
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Bloco 0'
      ItemIndex = 1
      LayoutDirection = ldTabbed
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Registro 000 - Dados da Empresa'
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Registro 0001 Dados Complementares da Empresa'
      ItemIndex = 3
      LayoutDirection = ldTabbed
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Registro 0005 - Dados Complementares da Empresa '
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Group'
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Registro 0100 - Dados do Contador'
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = ' Registro 0150 - Pessoas'
      Index = 3
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Regiao 0190 - Unidades de Medidas'
      Index = 2
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Regiao 0200 - Produtos'
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Sped'
      ItemIndex = 2
      LayoutDirection = ldTabbed
      Index = 3
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Bloco 1 - Registros Gerais'
      Index = 1
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'Registro1001'
      LayoutDirection = ldTabbed
      Index = 0
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup13
      CaptionOptions.Text = 'Registro1001 - Outras Informa'#231#245'es'
      Index = 0
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Bloco C Vendas/Entradas/Produtos'
      ItemIndex = 1
      LayoutDirection = ldTabbed
      Index = 2
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Registro C001 - Venda'
      ItemIndex = 1
      LayoutDirection = ldTabbed
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup16
      CaptionOptions.Text = 'Regiao C100 - Vendas'
      Index = 0
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = dxLayoutGroup16
      CaptionOptions.Text = 'Registro C170 - Produto Venda'
      Index = 1
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup16
      CaptionOptions.Text = 'Registro C190'
      Index = 2
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = dxLayoutGroup15
      CaptionOptions.Text = 'Registro C001 - Entrada de Nota'
      ItemIndex = 2
      LayoutDirection = ldTabbed
      Index = 1
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'Regiao C100 - Entrada'
      Index = 0
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'Regiao C170 Entrada'
      Index = 1
    end
    object dxLayoutGroup23: TdxLayoutGroup
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'Regiao C190 Entrada'
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignVert = avClient
      Control = cxGrid13
      ControlOptions.OriginalHeight = 230
      ControlOptions.OriginalWidth = 771
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup24: TdxLayoutGroup
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Bloco D CTE Inativo'
      Visible = False
      Index = 3
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignVert = avClient
      Control = cxGrid14
      ControlOptions.OriginalHeight = 318
      ControlOptions.OriginalWidth = 811
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup25: TdxLayoutGroup
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Bloco E - Apura'#231#227'o do ICMS/IPI'
      LayoutDirection = ldTabbed
      Index = 4
    end
    object dxLayoutGroup26: TdxLayoutGroup
      Parent = dxLayoutGroup25
      CaptionOptions.Text = 'Regiao E110 '
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup28
      AlignVert = avClient
      Control = cxGrid15
      ControlOptions.OriginalHeight = 318
      ControlOptions.OriginalWidth = 791
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup27: TdxLayoutGroup
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Bloco G - Controle do Cr'#233'dito de ICMS '#8211' CIAP - INATIVO'
      Visible = False
      Index = 5
    end
    object dxLayoutGroup28: TdxLayoutGroup
      Parent = dxLayoutGroup27
      CaptionOptions.Text = 'New Group'
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup30
      AlignVert = avClient
      Control = cxGrid16
      ControlOptions.OriginalHeight = 318
      ControlOptions.OriginalWidth = 787
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup29: TdxLayoutGroup
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Bloco H - Inventario'
      ItemIndex = 1
      LayoutDirection = ldTabbed
      Index = 6
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignVert = avClient
      Control = cxGrid17
      ControlOptions.OriginalHeight = 362
      ControlOptions.OriginalWidth = 811
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutGroup30: TdxLayoutGroup
      Parent = dxLayoutGroup29
      CaptionOptions.Text = 'H010 - Estoque'
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup31
      AlignVert = avClient
      Control = cxGrid18
      ControlOptions.OriginalHeight = 318
      ControlOptions.OriginalWidth = 791
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup31: TdxLayoutGroup
      Parent = dxLayoutGroup29
      CaptionOptions.Text = 'H020- Tributa'#231#227'o por Item Estoque - INATIVO'
      Visible = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup8
      Control = cxGrid19
      ControlOptions.OriginalHeight = 440
      ControlOptions.OriginalWidth = 771
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'M'#234's'
      CaptionOptions.Layout = clTop
      Control = CbMes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Ano'
      CaptionOptions.Layout = clTop
      Control = CbAno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = GrupoMenuInterno
      CaptionOptions.Text = 'BitBtn1'
      CaptionOptions.Visible = False
      Control = BitBtn1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Perfil'
      CaptionOptions.Layout = clTop
      Control = cbxPerfilSped
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignVert = avClient
      Control = cxGrid5
      ControlOptions.OriginalHeight = 440
      ControlOptions.OriginalWidth = 879
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avTop
      Control = cxGrid20
      ControlOptions.OriginalHeight = 440
      ControlOptions.OriginalWidth = 879
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = cxGrid4
      ControlOptions.OriginalHeight = 440
      ControlOptions.OriginalWidth = 868
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignVert = avClient
      Control = cxGrid6
      ControlOptions.OriginalHeight = 440
      ControlOptions.OriginalWidth = 879
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Layout = clTop
      Control = cxGrid8
      ControlOptions.OriginalHeight = 440
      ControlOptions.OriginalWidth = 879
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahLeft
      Control = cxGrid9
      ControlOptions.OriginalHeight = 440
      ControlOptions.OriginalWidth = 879
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup22
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = cxGrid10
      ControlOptions.OriginalHeight = 440
      ControlOptions.OriginalWidth = 879
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup23
      AlignHorz = ahRight
      AlignVert = avClient
      Control = cxGrid11
      ControlOptions.OriginalHeight = 440
      ControlOptions.OriginalWidth = 879
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = MainLayoutGroup_Root
      CaptionOptions.Visible = False
      Control = BitBtn2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited Cadastro: TFDQuery
    AfterClose = CadastroAfterClose
    MasterFields = 'CODIGO'
    SQL.Strings = (
      'select * from SPED'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object SPED_0150: TFDQuery
    AfterInsert = SPED_0150AfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODSPED'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from SPED_0150 '
      'where CODSPED = :CODIGO')
    Left = 311
    Top = 212
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSR0150: TDataSource
    DataSet = SPED_0150
    Left = 338
    Top = 212
  end
  object Pessoas: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select *'
      'from PESSOAS P'
      'where exists(select first 1 1'
      '             from VENDA V'
      '             where (V.NF_DT_EMISSAO between :INICIO and :FIM)'
      '                   and (V.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO)'
      '                   and (V.DT_FATURAMENTO is not null)'
      '                   and (V.NOTAFISCAL is not null))'
      ''
      'union'
      ''
      'select *'
      'from PESSOAS P'
      'where exists(select first 1 1'
      '             from NF_ENTRADA V'
      '             where (V.DT_NOTA between :INICIO and :FIM)'
      '                   and (V.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO)'
      '                   and (V.DT_FATURAMENTO is not null)'
      '                   and (V.NUN_NF is not null)) ')
    Left = 366
    Top = 212
    ParamData = <
      item
        Name = 'INICIO'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object SPED_0190: TFDQuery
    AfterInsert = SPED_0190AfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODSPED'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from SPED_0190'
      'where CODSPED = :CODIGO')
    Left = 311
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object SPED_0190CODSPED: TIntegerField
      FieldName = 'CODSPED'
      Origin = 'CODSPED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SPED_0190UNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Required = True
      Size = 6
    end
    object SPED_0190DESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Required = True
      Size = 150
    end
    object SPED_0190CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSR0190: TDataSource
    DataSet = SPED_0190
    Left = 338
    Top = 240
  end
  object Unidade: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select VP.UNIDADE'
      'from VENDA_PRODUTO VP'
      'left join VENDA V on V.CODIGO = VP.CODVENDA'
      'where V.NF_DT_EMISSAO between :INICIO and :FIM'
      '      and V.NOTAFISCAL is not null'
      '      and V.DT_FATURAMENTO is not null'
      'union'
      'select VP.UNIDADE'
      'from NF_ENTRADA_PRODUTOS VP'
      'left join NF_ENTRADA V on V.CODIGO = VP.CODNF_ENTRADA'
      'where V.DT_NOTA between :INICIO and :FIM'
      '      and V.NUN_NF is not null'
      '      and V.DT_FATURAMENTO is not null    ')
    Left = 366
    Top = 240
    ParamData = <
      item
        Name = 'INICIO'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object SPED_0200: TFDQuery
    AfterInsert = SPED_0200AfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODSPED'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from SPED_0200'
      'where CODSPED = :CODIGO')
    Left = 311
    Top = 268
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSSPED_0200: TDataSource
    DataSet = SPED_0200
    Left = 338
    Top = 268
  end
  object Produto: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select VP.CODFABRICA, VP.CODPRODUTO, VP.DESCRICAO, VP.UNIDADE, V' +
        'P.CODNF_NCM, NF_EXTIPI'
      'from NF_ENTRADA_PRODUTOS VP'
      'left join NF_ENTRADA V on V.CODIGO = VP.CODNF_ENTRADA'
      'where (V.DT_NOTA between :INICIO and :FIM)'
      '      and V.DT_FATURAMENTO is not null'
      '      and (V.NUN_NF is not null)'
      'group by 1, 2, 3, 4, 5, 6'
      ''
      'union'
      ''
      
        'select P.CODFABRICA, P.CODIGO as CODPRODUTO, P.DESCRICAO, P.UNID' +
        'ADE, P.CODNF_NCM,'
      '       P.NF_EXTIPI'
      'from PRODUTO P'
      'where P.ATIVO = '#39'S'#39
      '      and not(P.DESCRICAO is null)'
      'group by 1, 2, 3, 4, 5, 6   ')
    Left = 366
    Top = 268
    ParamData = <
      item
        Name = 'INICIO'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object Venda: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select NF.nf_chave, V.* from VENDA V'
      'left join NOTA_FISCAL nf on nf.codvenda = v.codigo'
      ' where (V.NF_DT_EMISSAO between :INICIO and :FIM)'
      '       and (V.DT_FATURAMENTO is not null)'
      '       and (V.NOTAFISCAL is not null)')
    Left = 454
    Top = 212
    ParamData = <
      item
        Name = 'INICIO'
        ParamType = ptInput
      end
      item
        Name = 'FIM'
        ParamType = ptInput
      end>
  end
  object DSSPED_C100: TDataSource
    DataSet = SPED_C100
    Left = 426
    Top = 212
  end
  object SPED_C100: TFDQuery
    AfterInsert = SPED_C100AfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODSPED'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from SPED_C100'
      'where IND_OPER = 1 and CODSPED = :CODIGO')
    Left = 399
    Top = 212
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object SPED_C170: TFDQuery
    AfterInsert = SPED_C170AfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODSPED'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from SPED_C170 C170'
      'left join SPED_C100 C100 on C100.CODPEDIDO = C170.CODPEDIDO'
      'where C100.IND_OPER = 1'
      '      and C170.CODSPED = :CODIGO   ')
    Left = 399
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSSPED_C170: TDataSource
    DataSet = SPED_C170
    Left = 426
    Top = 240
  end
  object VendaProduto: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select V.NF_CODNATUREZA_OPERACAO, P.PODE_ALTERAR_ESTOQUE, VP.*'
      'from VENDA_PRODUTO VP'
      'left join PRODUTO P on P.CODIGO = VP.CODPRODUTO'
      'left join VENDA V on V.CODIGO = VP.CODVENDA'
      'where VP.CODVENDA = :CODIGO   ')
    Left = 454
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object SPED_C190: TFDQuery
    AfterInsert = SPED_C190AfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODSPED'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from SPED_C190 C190'
      'left join SPED_C100 C100 on C100.CODPEDIDO = C190.CODPEDIDO'
      'where C100.IND_OPER = 1'
      '      and C190.CODSPED = :CODIGO')
    Left = 399
    Top = 268
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSSPED_C190: TDataSource
    DataSet = SPED_C190
    Left = 426
    Top = 268
  end
  object SPED_C100_Entrada: TFDQuery
    AfterInsert = SPED_C100_EntradaAfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODSPED'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from SPED_C100'
      'where IND_OPER = 0 and CODSPED = :CODIGO')
    Left = 487
    Top = 212
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSSPED_C100_E: TDataSource
    DataSet = SPED_C100_Entrada
    Left = 514
    Top = 212
  end
  object NF_Entrada: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select *'
      'from NF_ENTRADA N'
      'where (N.DT_NOTA between :INICIO and :FIM)'
      '      and (N.DT_FATURAMENTO is not null)'
      '      and (N.NUN_NF is not null)  ')
    Left = 542
    Top = 212
    ParamData = <
      item
        Name = 'INICIO'
        ParamType = ptInput
      end
      item
        Name = 'FIM'
        ParamType = ptInput
      end>
  end
  object SPED_C170_Entrada: TFDQuery
    AfterInsert = SPED_C170_EntradaAfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODSPED'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from SPED_C170 C170'
      'left join SPED_C100 C100 on C100.CODPEDIDO = C170.CODPEDIDO'
      'where C100.IND_OPER = 0'
      '      and C170.CODSPED = :CODIGO   ')
    Left = 487
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSSPED_C170_Entrada: TDataSource
    DataSet = SPED_C170_Entrada
    Left = 514
    Top = 240
  end
  object NF_Entrada_Produto: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select P.PODE_ALTERAR_ESTOQUE, NP.*'
      'from NF_ENTRADA_PRODUTOS NP'
      'left join PRODUTO P on P.CODIGO = NP.CODPRODUTO'
      'left join NF_ENTRADA N on N.CODIGO = NP.CODNF_ENTRADA'
      'where NP.CODNF_ENTRADA = :CODIGO')
    Left = 542
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object SPED_C190_Entrada: TFDQuery
    AfterInsert = SPED_C190_EntradaAfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODSPED'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from SPED_C190 C190'
      'left join SPED_C100 C100 on C100.CODPEDIDO = C190.CODPEDIDO'
      'where C100.IND_OPER = 1'
      '      and C190.CODSPED = :CODIGO   ')
    Left = 486
    Top = 268
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSSPED_C190_Entrada: TDataSource
    DataSet = SPED_C190_Entrada
    Left = 515
    Top = 268
  end
end
