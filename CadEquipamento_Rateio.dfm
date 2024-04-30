inherited FrmEquipamento_Rateio: TFrmEquipamento_Rateio
  Caption = 'Boletos eventuais a contribui'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 757
      TabOrder = 21
      ExplicitLeft = 757
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Properties.CharCase = ecNormal
      TabOrder = 32
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 172
      Width = 172
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 35
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 33
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 34
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 852
      Height = 577
      TabOrder = 31
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 852
      ExplicitHeight = 577
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 713
      TabOrder = 20
      ExplicitLeft = 713
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Boletos eventuais'
    end
    object edtTotal: TcxDBTextEdit [25]
      Left = 767
      Top = 133
      AutoSize = False
      DataBinding.DataField = 'TOTAL'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 26
      Height = 21
      Width = 98
    end
    object edtCondicaoPagtoÎCondicaoPagto: TcxDBButtonEdit [26]
      Left = 13
      Top = 133
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CODCONDICAOPAGTO'
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
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 22
      Height = 21
      Width = 76
    end
    object edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TcxDBTextEdit [27]
      Left = 710
      Top = 133
      Hint = 'O Intervalo deve ser informado  em Dias'
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'DIA_INTERVALO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 25
      Height = 21
      Width = 56
    end
    object btnParcelas: TcxButton [28]
      Left = 753
      Top = 155
      Width = 112
      Height = 35
      Anchors = [akTop, akRight]
      Caption = 'Gerar Parcelas'
      OptionsImage.Spacing = 2
      TabOrder = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = btnParcelasClick
    end
    object edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TcxDBTextEdit [29]
      Left = 90
      Top = 133
      Hint = 'F2 - Consulta'
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'CONDICAOPAGTO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 497
    end
    object GridFinanceiro: TcxGrid [30]
      Left = 13
      Top = 191
      Width = 852
      Height = 505
      TabOrder = 30
      object cxGridViewFinanceiro: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Hint = 'Primeiro'
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Hint = 'P'#225'gina anterior'
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Hint = 'Anterior'
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Hint = 'Pr'#243'ximo'
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Hint = 'Pr'#243'xima Pagina'
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Hint = 'Ultimo'
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Hint = 'Inserir'
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Hint = 'Adicionar'
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Hint = 'Deletar'
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Hint = 'Editar'
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Hint = 'Confirmar'
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Hint = 'Cancelar'
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Hint = 'Atualizar'
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Hint = 'Marcar'
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Hint = 'Ir para'
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Hint = 'Filtar'
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = cxGridViewFinanceiroCellClick
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DSEquipamento_Rateio_Financeiro
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'VALOR'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.GroupByBox = False
        OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
        object cxGridViewFinanceiroPARCELA: TcxGridDBColumn
          Caption = 'Parcela'
          DataBinding.FieldName = 'PARCELA'
          Width = 51
        end
        object cxGridViewFinanceiroEMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'EMISSAO'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 89
        end
        object cxGridViewFinanceiroCODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGridViewFinanceiroCODEQUIPAMENTO_RATEIO: TcxGridDBColumn
          DataBinding.FieldName = 'CODEQUIPAMENTO_RATEIO'
          Visible = False
        end
        object cxGridViewFinanceiroVALOR_DIA: TcxGridDBColumn
          Caption = 'Valor por dia'
          DataBinding.FieldName = 'VALOR_DIA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = 'R$ ,0.00##;-R$ ,0.00##'
          Width = 84
        end
        object cxGridViewFinanceiroQUANT_DIA: TcxGridDBColumn
          Caption = 'Quant Dias'
          DataBinding.FieldName = 'QUANT_DIA'
          Width = 59
        end
        object cxGridViewFinanceiroVALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 87
        end
        object cxGridViewFinanceiroVENCTO: TcxGridDBColumn
          Caption = 'Data /M'#234's Compet'#234'ncia'
          DataBinding.FieldName = 'VENCTO'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 134
        end
        object cxGridViewFinanceiroSTATUS: TcxGridDBColumn
          DataBinding.FieldName = 'STATUS'
          Visible = False
        end
        object cxGridViewFinanceiroDATA: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
          Visible = False
        end
        object cxGridViewFinanceiroCODPLANOCONTAS: TcxGridDBColumn
          Caption = 'Cod. Plano Contas'
          DataBinding.FieldName = 'CODPLANOCONTAS'
          Width = 94
        end
        object cxGridViewFinanceiroCODCONDICAOPAGTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODCONDICAOPAGTO'
          Visible = False
        end
        object cxGridViewFinanceiroCONDICAOPAGTO: TcxGridDBColumn
          Caption = 'Cond. Pagto'
          DataBinding.FieldName = 'CONDICAOPAGTO'
          Width = 65
        end
        object cxGridViewFinanceiroCONTATOS: TcxGridDBColumn
          DataBinding.FieldName = 'CONTATOS'
          Visible = False
        end
        object cxGridViewFinanceiroCODCHEQUE: TcxGridDBColumn
          DataBinding.FieldName = 'CODCHEQUE'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_CODBANCO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_CODBANCO'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_BANCO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_BANCO'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_NOME: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_NOME'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_REPASSADO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_REPASSADO'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_CNPJCPF: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_CNPJCPF'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_STATUS'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_COMPE: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_COMPE'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_AGENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_AGENCIA'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_C1: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_C1'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_CONTA: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_CONTA'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_NUMERO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_NUMERO'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_C2: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_C2'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_C3: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_C3'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_DT_CADASTRO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_DT_CADASTRO'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_DT_BOM_PARA: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_DT_BOM_PARA'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_DT_REPASSADO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_DT_REPASSADO'
          Visible = False
        end
        object cxGridViewFinanceiroCHEQUE_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'CHEQUE_TIPO'
          Visible = False
        end
        object cxGridViewFinanceiroATUALIZADO: TcxGridDBColumn
          DataBinding.FieldName = 'ATUALIZADO'
          Visible = False
          Width = 109
        end
        object cxGridViewFinanceiroCODCONTA: TcxGridDBColumn
          Caption = 'Cod. Conta'
          DataBinding.FieldName = 'CODCONTA'
          Width = 73
        end
        object cxGridViewFinanceiroPESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
          Visible = False
        end
        object cxGridViewFinanceiroPESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_TIPO'
          Visible = False
        end
        object cxGridViewFinanceiroPESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
          Visible = False
        end
        object cxGridViewFinanceiroPESSOA_FORNECEDOR_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_FORNECEDOR_CODIGO'
          Visible = False
        end
        object cxGridViewFinanceiroPESSOA_FORNECEDOR_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_FORNECEDOR_TIPO'
          Visible = False
        end
        object cxGridViewFinanceiroPESSOA_FORNECEDOR_SEQUENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_FORNECEDOR_SEQUENCIA'
          Visible = False
        end
        object cxGridViewFinanceiroPREVISAO: TcxGridDBColumn
          DataBinding.FieldName = 'PREVISAO'
          Visible = False
        end
        object cxGridViewFinanceiroGERADO_DO_FINANCEIRO: TcxGridDBColumn
          DataBinding.FieldName = 'GERADO_DO_FINANCEIRO'
          Visible = False
        end
        object cxGridViewFinanceiroPARCELA_ALTERADA: TcxGridDBColumn
          DataBinding.FieldName = 'PARCELA_ALTERADA'
          Visible = False
        end
        object cxGridViewFinanceiroNSU: TcxGridDBColumn
          DataBinding.FieldName = 'NSU'
          Visible = False
        end
        object cxGridViewFinanceiroREDE: TcxGridDBColumn
          DataBinding.FieldName = 'REDE'
          Visible = False
        end
        object cxGridViewFinanceiroCNPJ_CREDENCIADORA: TcxGridDBColumn
          DataBinding.FieldName = 'CNPJ_CREDENCIADORA'
          Visible = False
        end
        object cxGridViewFinanceiroTEF_STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'TEF_STATUS'
          Visible = False
        end
        object cxGridViewFinanceiroCODEQUIPAMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODEQUIPAMENTO'
          Visible = False
        end
        object cxGridViewFinanceiroCONTA: TcxGridDBColumn
          Caption = 'Conta'
          DataBinding.FieldName = 'CONTA'
          Width = 162
        end
        object cxGridViewFinanceiroDT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 94
        end
        object cxGridViewFinanceiroDOCUMENTO: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'DOCUMENTO'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridViewFinanceiro
      end
    end
    object edtTipoCobranca: TcxDBComboBox [31]
      Left = 56
      Top = 61
      AutoSize = False
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Rateio m'#233'dio'
        'Contribui'#231#227'o de cadastramento'
        'Vistoria')
      Style.HotTrack = False
      TabOrder = 18
      Height = 21
      Width = 113
    end
    object edtPlanoÎPLANOCONTAS: TcxDBButtonEdit [32]
      Left = 13
      Top = 169
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CODPLANOCONTAS'
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
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 27
      Height = 21
      Width = 77
    end
    object edtPlacaÎEquipamento: TcxDBButtonEdit [33]
      Tag = 58
      Left = 170
      Top = 61
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CODEQUIPAMENTO'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.OnButtonClick = edtPlacaPropertiesButtonClick
      Properties.OnChange = edtPlacaPropertiesChange
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 19
      OnKeyDown = edtPlacaÎEquipamentoKeyDown
      Height = 21
      Width = 76
    end
    object edtContaÎCONTAS: TcxDBButtonEdit [34]
      Left = 414
      Top = 169
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CODCONTA'
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
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 28
      Height = 21
      Width = 76
    end
    object lblPlanoÎPLANOCONTASÎDESCRICAO: TLabel [35]
      Left = 91
      Top = 170
      Width = 322
      Height = 20
      AutoSize = False
      Color = 16505534
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LBLContaÎCONTASÎDESCRICAO: TLabel [36]
      Left = 491
      Top = 170
      Width = 261
      Height = 20
      AutoSize = False
      Color = 16505534
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object edtPlacaÎEquipamentoÎPLACA: TLabel [37]
      Left = 247
      Top = 62
      Width = 90
      Height = 20
      AutoSize = False
      Color = 16505534
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblPlacaAssociado: TLabel [38]
      Left = 338
      Top = 62
      Width = 217
      Height = 20
      AutoSize = False
      Color = 16505534
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object cxDBDateEdit1: TcxDBDateEdit [39]
      Left = 588
      Top = 133
      DataBinding.DataField = 'DATA_INICIAL'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 24
      Width = 121
    end
    object edtPlacaÎEquipamentoÎDATA: TLabel [40]
      Left = 556
      Top = 62
      Width = 79
      Height = 20
      AutoSize = False
      Color = 16505534
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object edtPlacaÎEquipamentoÎDATAEXCLUSAO: TLabel [41]
      Left = 636
      Top = 62
      Width = 76
      Height = 20
      AutoSize = False
      Color = 16505534
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 4
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 10
    end
    inherited LiedtDescricao: TdxLayoutItem
      Parent = nil
      AlignHorz = ahClient
      Visible = False
      CaptionOptions.Layout = clLeft
      ControlOptions.OriginalWidth = 172
      Index = -1
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      CaptionOptions.Text = 'Atividade'
      Index = 1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Visible = False
      LayoutDirection = ldTabbed
      ShowBorder = False
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 3
    end
    inherited LiLbTitulo: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avTop
    end
    object liedtTotal: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Valor Total'
      CaptionOptions.Layout = clTop
      Control = edtTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoLogAlteracoes
      CaptionOptions.Text = 'Lan'#231'amento'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object liedtCondicaoPagtoÎCondicaoPagto: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'digo'
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Dias'
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LIbtnParcelas: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnParcelas
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Condi'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 887
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      Control = GridFinanceiro
      ControlOptions.OriginalHeight = 262
      ControlOptions.OriginalWidth = 1303
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Tipo de Despesa'
      CaptionOptions.Layout = clTop
      Control = edtTipoCobranca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtPlanoÎEQUIPAMENTO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Plano de contas'
      CaptionOptions.Layout = clTop
      Control = edtPlanoÎPLANOCONTAS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Equipamento'
      CaptionOptions.Layout = clTop
      Control = edtPlacaÎEquipamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Conta'
      CaptionOptions.Layout = clTop
      Control = edtContaÎCONTAS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liLblPCBoletoÎPlanoContasÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = lblPlanoÎPLANOCONTASÎDESCRICAO
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 318
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LILBLContaÎCONTASÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = LBLContaÎCONTASÎDESCRICAO
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 256
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Placa'
      CaptionOptions.Layout = clTop
      Control = edtPlacaÎEquipamentoÎPLACA
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lilblPlacaAssociado: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Associado'
      CaptionOptions.Layout = clTop
      Control = lblPlacaAssociado
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Data Inicial'
      CaptionOptions.Layout = clTop
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lilblPlacaCadastro: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Data cadastro'
      CaptionOptions.Layout = clTop
      Control = edtPlacaÎEquipamentoÎDATA
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblPlacaDataExclusao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avBottom
      CaptionOptions.Text = 'Data Exclus'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtPlacaÎEquipamentoÎDATAEXCLUSAO
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 3
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Visible = False
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 3
    FormClassCadastro = 'TFrmEquipamento_Rateio'
    FormClassConsulta = 'TConsuEquipamento_Rateio'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * from Equipamento_Rateio'
      'WHERE CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Equipamento_Rateio_Financeiro: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODEQUIPAMENTO_RATEIO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize, evCache]
    FetchOptions.RowsetSize = 1000
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select erf.*, c.descricao as conta from Equipamento_Rateio_Finan' +
        'ceiro erf'
      'left join Contas c on c.codigo = erf.codconta'
      'where erf.codequipamento_rateio = :CODIGO')
    Left = 312
    Top = 128
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object DSEquipamento_Rateio_Financeiro: TDataSource
    DataSet = Equipamento_Rateio_Financeiro
    Left = 340
    Top = 128
  end
  object FcPrincipal: TWRFormataCamposDataSets
    OnCarregaDataSets = FcPrincipalCarregaDataSets
    Left = 606
    Top = 100
  end
end
