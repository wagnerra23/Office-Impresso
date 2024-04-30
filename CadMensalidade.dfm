inherited FrmMensalidade: TFrmMensalidade
  Caption = 'Cadastro de mensalidade'
  ClientHeight = 503
  ClientWidth = 1005
  ExplicitWidth = 1021
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlHistorico_SLA: TPanel
    TabOrder = 4
  end
  object PnlPropagarMensalidade: TPanel [2]
    Left = 250
    Top = 158
    Width = 304
    Height = 95
    Caption = 'Propaga'#231#227'o de Mensalidades'
    TabOrder = 3
    Visible = False
    DesignSize = (
      304
      95)
    object Bevel1: TBevel
      Left = 6
      Top = 55
      Width = 292
      Height = 18
      Anchors = [akLeft, akTop, akRight]
      Shape = bsTopLine
      ExplicitWidth = 306
    end
    object cxLabel2: TcxLabel
      Left = 18
      Top = 21
      Caption = 'Gerar mensalidades at'#233' o m'#234's:'
      ParentColor = False
    end
    object btnConfirmarGerarMensalidade: TcxButton
      Left = 195
      Top = 63
      Width = 89
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 3
      OnClick = btnConfirmarGerarMensalidadeClick
    end
    object btnCancelarGerarMensalidade: TcxButton
      Left = 100
      Top = 63
      Width = 89
      Height = 25
      Caption = 'C&ancelar'
      TabOrder = 2
      OnClick = btnCancelarGerarMensalidadeClick
    end
    object edtDtPropagarMensalidade: TcxDateEdit
      Left = 169
      Top = 19
      Properties.DisplayFormat = 'MM/YYYY'
      Properties.EditFormat = 'MM/YYYY'
      Properties.InputKind = ikRegExpr
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 0
      Width = 120
    end
  end
  inherited MainLayout: TdxLayoutControl
    Width = 1005
    Height = 483
    ExplicitWidth = 1005
    ExplicitHeight = 483
    DesignSize = (
      1005
      483)
    inherited btnNovo: TcxButton
      Left = 886
      ExplicitLeft = 886
    end
    inherited btnConfirmar: TcxButton
      Left = 886
      ExplicitLeft = 886
    end
    inherited btnAlterar: TcxButton
      Left = 886
      ExplicitLeft = 886
    end
    inherited btnCancelar: TcxButton
      Left = 886
      ExplicitLeft = 886
    end
    inherited btnExcluir: TcxButton
      Left = 886
      ExplicitLeft = 886
    end
    inherited btnConsultar: TcxButton
      Left = 886
      ExplicitLeft = 886
    end
    inherited btnSair: TcxButton
      Left = 886
      Top = 455
      ExplicitLeft = 886
      ExplicitTop = 455
    end
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 20
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 632
      TabOrder = 24
      ExplicitLeft = 632
    end
    inherited edtDescricao: TcxDBTextEdit
      TabOrder = 21
      ExplicitWidth = 409
      Width = 409
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 886
      ExplicitLeft = 886
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 945
      ExplicitLeft = 945
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 808
      TabOrder = 39
      ExplicitLeft = 808
    end
    inherited BtnSeguidores: TcxButton
      Left = 957
      TabOrder = 38
      ExplicitLeft = 957
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 964
      ExplicitLeft = 964
    end
    inherited btnMenuConfig: TcxButton
      Left = 984
      TabOrder = 40
      ExplicitLeft = 984
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 872
      Height = 343
      TabOrder = 37
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 872
      ExplicitHeight = 343
    end
    inherited BtnImprimir: TcxButton
      Left = 977
      ExplicitLeft = 977
    end
    inherited BtnDesativar: TcxButton
      Left = 886
      ExplicitLeft = 886
    end
    inherited BtnAtivar: TcxButton
      Left = 886
      ExplicitLeft = 886
    end
    inherited BtnAjuda: TcxButton
      Left = 886
      ExplicitLeft = 886
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 466
      TabOrder = 22
      ExplicitLeft = 466
    end
    inherited BtnImprimirPadrao: TcxButton
      Left = 886
      ExplicitLeft = 886
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de mensalidade'
      ExplicitWidth = 869
    end
    object edtCodPlanoContasÎPlanoContas: TcxDBButtonEdit [25]
      Left = 3
      Top = 97
      DataBinding.DataField = 'CODPLANOCONTAS'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 26
      Width = 91
    end
    object lblCodPlanoContasÎPlanoContasÎDESCRICAO: TcxLabel [26]
      Left = 95
      Top = 97
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Height = 21
      Width = 103
      AnchorY = 108
    end
    object edtCodContaÎContas: TcxDBButtonEdit [27]
      Left = 199
      Top = 97
      DataBinding.DataField = 'CODCONTA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 28
      Width = 50
    end
    object lblCodContaÎContasÎDESCRICAO: TcxLabel [28]
      Left = 250
      Top = 97
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Height = 21
      Width = 123
      AnchorY = 108
    end
    object btnGerarMensalidade: TcxButton [29]
      Left = 722
      Top = 93
      Width = 150
      Height = 25
      Caption = 'Gerar Mensalidades'
      TabOrder = 33
      OnClick = btnGerarMensalidadeClick
    end
    object edtMes: TcxDBDateEdit [30]
      Left = 510
      Top = 61
      DataBinding.DataField = 'MES'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = 'MM/YYYY'
      Properties.EditFormat = 'MM/YYYY'
      Properties.InputKind = ikRegExpr
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 23
      Width = 121
    end
    object btnEnviarFinanceiro: TcxButton [31]
      Left = 886
      Top = 365
      Width = 116
      Height = 25
      Caption = 'Enviar p/ Financeiro'
      TabOrder = 16
      OnClick = btnEnviarFinanceiroClick
    end
    object edtDT_Financeiro: TcxDBTextEdit [32]
      Left = 886
      Top = 417
      DataBinding.DataField = 'DT_FINANCEIRO'
      DataBinding.DataSource = DS
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 18
      Width = 116
    end
    object btnCancelarFinanceiro: TcxButton [33]
      Left = 886
      Top = 391
      Width = 116
      Height = 25
      Caption = 'Cancelar Financeiro'
      TabOrder = 17
      OnClick = btnCancelarFinanceiroClick
    end
    object lblDT_Gerado: TcxDBLabel [34]
      Left = 751
      Top = 61
      DataBinding.DataField = 'DT_GERADO'
      DataBinding.DataSource = DS
      ParentColor = False
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    object lblClienteÎPessoasÎFANTASIA: TcxLabel [35]
      Left = 447
      Top = 97
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Height = 21
      Width = 123
      AnchorY = 108
    end
    object edtClienteÎPessoas: TcxButtonEdit [36]
      Left = 374
      Top = 97
      Properties.Buttons = <
        item
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnChange = EdtCodClientePropertiesChange
      Style.HotTrack = False
      TabOrder = 30
      Width = 72
    end
    object lblParcelasEnviadasFinanceiro: TcxLabel [37]
      Left = 571
      Top = 88
      AutoSize = False
      Caption = 'Parcelas j'#225' enviadas ao Financeiro.'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 30
      Width = 150
      AnchorX = 646
    end
    object lblTotal: TcxLabel [38]
      Left = 674
      Top = 434
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'TOTAL'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 34
      Width = 65
      AnchorX = 707
      AnchorY = 451
    end
    object edtTotal: TcxCurrencyEdit [39]
      Left = 740
      Top = 434
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 35
      Height = 34
      Width = 122
    end
    object GridMensalidade: TcxGrid [40]
      Left = 13
      Top = 153
      Width = 849
      Height = 281
      BorderStyle = cxcbsNone
      TabOrder = 36
      LookAndFeel.NativeStyle = False
      object GridMensalidadeView: TcxGridDBTableView
        PopupMenu = PopupMenu1
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataModeController.GridModeBufferCount = 50
        DataController.DataSource = DSMensalidadeFinanceiro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Click aqui para definir um filtro'
        NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 2
        OptionsView.GroupByBox = False
        object GridMensalidadeViewCODIGO: TcxGridDBColumn
          Caption = 'C'#243'd.'
          DataBinding.FieldName = 'CODIGO'
          Options.Editing = False
          Width = 41
        end
        object GridMensalidadeViewCODRESPONSAVEL: TcxGridDBColumn
          Caption = 'C'#243'd. Respons'#225'vel'
          DataBinding.FieldName = 'CODRESPONSAVEL'
          Options.Editing = False
          Width = 53
        end
        object GridMensalidadeViewRAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Options.Editing = False
          Width = 337
        end
        object GridMensalidadeViewDT_VENCTO: TcxGridDBColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'DT_VENCTO'
          Width = 70
        end
        object GridMensalidadeViewTIPOPAGTO: TcxGridDBColumn
          Caption = 'Tipo Pagto'
          DataBinding.FieldName = 'TIPOPAGTO'
          Width = 80
        end
        object GridMensalidadeViewVALOR: TcxGridDBColumn
          Caption = 'R$ Valor'
          DataBinding.FieldName = 'VALOR'
          Visible = False
        end
        object GridMensalidadeViewDESCONTO_ACRESCIMO: TcxGridDBColumn
          Caption = 'R$ Desconto / Acr'#233'scimo'
          DataBinding.FieldName = 'DESCONTO_ACRESCIMO'
          Width = 131
        end
        object GridMensalidadeViewTotal: TcxGridDBColumn
          Caption = 'R$ Total'
          DataBinding.FieldName = 'Total'
          Width = 79
        end
        object GridMensalidadeViewDOCUMENTO: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'DOCUMENTO'
          Visible = False
          Width = 75
        end
        object GridMensalidadeViewSTATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
          Visible = False
          Width = 91
        end
        object GridMensalidadeViewTIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Visible = False
          Width = 92
        end
        object GridMensalidadeViewTIPO_RESPONSAVEL: TcxGridDBColumn
          Caption = 'Tipo Respons'#225'vel'
          DataBinding.FieldName = 'TIPO_RESPONSAVEL'
          Visible = False
          Width = 29
        end
        object GridMensalidadeViewDT_EMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'DT_EMISSAO'
          Visible = False
        end
        object GridMensalidadeViewCODCONDICAOPAGTO: TcxGridDBColumn
          Caption = 'C'#243'd. Condi'#231#227'o de Pagto'
          DataBinding.FieldName = 'CODCONDICAOPAGTO'
          Visible = False
        end
        object GridMensalidadeViewHISTORICO: TcxGridDBColumn
          Caption = 'Hist'#243'rico'
          DataBinding.FieldName = 'HISTORICO'
          Width = 305
        end
        object GridMensalidadeViewCONDICAOPAGTO: TcxGridDBColumn
          Caption = 'Condi'#231#227'o de Pagto'
          DataBinding.FieldName = 'CONDICAOPAGTO'
          Options.Editing = False
        end
        object GridMensalidadeViewCODCONTA: TcxGridDBColumn
          Caption = 'C'#243'd. Conta'
          DataBinding.FieldName = 'CODCONTA'
        end
        object GridMensalidadeViewCODPLANOCONTAS: TcxGridDBColumn
          Caption = 'C'#243'd. Plano de Contas'
          DataBinding.FieldName = 'CODPLANOCONTAS'
        end
        object GridMensalidadeViewPLANOCONTAS: TcxGridDBColumn
          Caption = 'Plano de Contas'
          DataBinding.FieldName = 'PLANOCONTAS'
          Options.Editing = False
        end
      end
      object GridMensalidadeLevel1: TcxGridLevel
        Caption = 'Relat'#243'rio'
        GridView = GridMensalidadeView
      end
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      LayoutDirection = ldVertical
    end
    inherited LiedtCodigo: TdxLayoutItem
      Parent = MainLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Parent = MainLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 4
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 11
    end
    inherited LiedtDescricao: TdxLayoutItem
      Parent = MainLayoutGroup3
      AlignHorz = ahClient
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 4
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = GrupoMainTab
      Index = 1
    end
    inherited LicbxAtivo: TdxLayoutItem
      Parent = MainLayoutGroup3
    end
    object liedtCodPlanoContasÎPlanoContas: TdxLayoutItem
      Parent = MainLayoutGroup4
      CaptionOptions.Text = 'Plano de Contas'
      CaptionOptions.Layout = clTop
      Control = edtCodPlanoContasÎPlanoContas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutGroup3: TdxLayoutGroup
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'New Group'
      ItemIndex = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lilblCodPlanoContasÎPlanoContasÎDESCRICAO: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblCodPlanoContasÎPlanoContasÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup4: TdxLayoutGroup
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object liedtCodContaÎContas: TdxLayoutItem
      Parent = MainLayoutGroup4
      CaptionOptions.Text = 'Conta'
      CaptionOptions.Layout = clTop
      Control = edtCodContaÎContas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lilblCodContaÎContasÎDESCRICAO: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = lblCodContaÎContasÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object libtnGerarMensalidade: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnGerarMensalidade
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtMes: TdxLayoutItem
      Parent = MainLayoutGroup3
      CaptionOptions.Text = 'M'#234's de Refer'#234'ncia'
      CaptionOptions.Layout = clTop
      Control = edtMes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object libtnEnviarFinanceiro: TdxLayoutItem
      Parent = MainLayoutGroup5
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnEnviarFinanceiro
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtDT_Financeiro: TdxLayoutItem
      Parent = MainLayoutGroup5
      Control = edtDT_Financeiro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object libtnCancelarFinanceiro: TdxLayoutItem
      Parent = MainLayoutGroup5
      CaptionOptions.Visible = False
      Control = btnCancelarFinanceiro
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup5: TdxLayoutGroup
      Parent = GrupoMenuInterno
      CaptionOptions.Text = 'New Group'
      Offsets.Top = 15
      ShowBorder = False
      Index = 11
    end
    object lilblDT_Gerado: TdxLayoutItem
      Parent = MainLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Mensalidade gerada em'
      CaptionOptions.Layout = clTop
      Control = lblDT_Gerado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lilblClienteÎPessoasÎFANTASIA: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = '(Vazio para TODOS)'
      CaptionOptions.Layout = clTop
      Control = lblClienteÎPessoasÎFANTASIA
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 131
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtClienteÎPessoas: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = edtClienteÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lilblParcelasEnviadasFinanceiro: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel3'
      CaptionOptions.Visible = False
      Control = lblParcelasEnviadasFinanceiro
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object MainLayoutGroup6: TdxLayoutGroup
      Parent = TabMensalidades
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lilblTotal: TdxLayoutItem
      Parent = MainLayoutGroup6
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = lblTotal
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtTotal: TdxLayoutItem
      Parent = MainLayoutGroup6
      AlignHorz = ahRight
      Control = edtTotal
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoMainTab: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      UseIndent = False
      Index = 3
    end
    object TabMensalidades: TdxLayoutGroup
      Parent = GrupoMainTab
      CaptionOptions.Text = 'Mensalidades'
      ItemIndex = 1
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = TabMensalidades
      AlignVert = avClient
      Control = GridMensalidade
      ControlOptions.OriginalHeight = 253
      ControlOptions.OriginalWidth = 869
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 483
    Width = 1005
    Visible = False
    ExplicitTop = 483
    ExplicitWidth = 1005
  end
  inherited DS: TDataSource
    Left = 153
    Top = 217
  end
  inherited TimerStatusBar: TTimer
    Left = 209
    Top = 217
  end
  inherited ImgListBotoes24: TImageList
    Left = 265
    Top = 245
  end
  inherited ImgListBotoes16: TImageList
    Left = 237
    Top = 245
  end
  inherited MenuConfig: TPopupMenu
    Left = 181
    Top = 245
  end
  inherited ImgListMenuConfig: TImageList
    Left = 209
    Top = 245
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 265
    Top = 217
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    GroupName = 'Mensalidades'
    Left = 153
    Top = 273
  end
  inherited MenuImprimir: TPopupMenu
    Left = 126
    Top = 273
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmMensalidade'
    FormClassConsulta = 'TConsuMensalidade'
    Left = 237
    Top = 217
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * '
      'from MENSALIDADE'
      'WHERE CODIGO = :Codigo')
    Left = 125
    Top = 217
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited TransaFD: TFDTransaction
    Left = 293
    Top = 273
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'MENSALIDADE'
    Modulo = 'FINANCEIRO'
    Left = 181
    Top = 217
  end
  inherited Fr3Cadastro: TfrxDBDataset
    Left = 265
    Top = 273
  end
  object DSMensalidadeFinanceiro: TDataSource
    DataSet = Mensalidade_Financeiro
    Left = 153
    Top = 245
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 181
    Top = 273
    object Excluirestelanamento1: TMenuItem
      Caption = 'Excluir este lan'#231'amento'
      OnClick = Excluirestelanamento1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Propagarmensalidade1: TMenuItem
      Caption = 'Propagar mensalidade'
      OnClick = Propagarmensalidade1Click
    end
    object IrPara1: TMenuItem
      Caption = 'Ir Para'
      object CadastrodaPessoa1: TMenuItem
        Caption = 'Cadastro da Pessoa'
        OnClick = CadastrodaPessoa1Click
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object GerarMenssalidade1: TMenuItem
      Caption = 'Gerar Menssalidade'
    end
    object NotaFiscalModelo221: TMenuItem
      Caption = 'Nota Fiscal Modelo 22'
    end
    object GerarArquivodeNotas1: TMenuItem
      Caption = 'Gerar Arquivo de Notas'
    end
  end
  object frxMensalidade: TfrxDBDataset
    UserName = 'Mensalidade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'MES=MES'
      'CODCONTA=CODCONTA'
      'DT_GERADO=DT_GERADO'
      'DT_FINANCEIRO=DT_FINANCEIRO'
      'CODPLANOCONTAS=CODPLANOCONTAS'
      'DESCRICAO=DESCRICAO')
    BCDToCurrency = False
    Left = 209
    Top = 273
  end
  object frxMensalidadeFinanceiro: TfrxDBDataset
    UserName = 'Mensalidade_Financeiro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODMENSALIDADE=CODMENSALIDADE'
      'VALOR=VALOR'
      'DOCUMENTO=DOCUMENTO'
      'DT_VENCTO=DT_VENCTO'
      'STATUS=STATUS'
      'TIPO=TIPO'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'HISTORICO=HISTORICO'
      'DT_EMISSAO=DT_EMISSAO'
      'TIPOPAGTO=TIPOPAGTO'
      'CODCONDICAOPAGTO=CODCONDICAOPAGTO'
      'CONDICAOPAGTO=CONDICAOPAGTO'
      'DT_ALTERACAO=DT_ALTERACAO'
      'CODCONTA=CODCONTA'
      'CODPLANOCONTAS=CODPLANOCONTAS'
      'PLANOCONTAS=PLANOCONTAS'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'DESCONTO_ACRESCIMO=DESCONTO_ACRESCIMO'
      'Total=Total')
    BCDToCurrency = False
    Left = 237
    Top = 273
  end
  object Mensalidade_Financeiro: TFDQuery
    AfterOpen = Mensalidade_FinanceiroAfterOpen
    BeforeEdit = Mensalidade_FinanceiroBeforeEdit
    OnCalcFields = Mensalidade_FinanceiroCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select MF.*, PC.DESCRICAO as PLANOCONTAS'
      'from MENSALIDADE_FINANCEIRO MF'
      'left join PLANOCONTAS PC on (MF.CODPLANOCONTAS = PC.CODIGO)'
      'where (MF.CODMENSALIDADE = :CODIGO)'
      'order by MF.PESSOA_RESPONSAVEL_CODIGO')
    Left = 125
    Top = 245
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Mensalidade_FinanceiroTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object WRFormataCamposDataSets1: TWRFormataCamposDataSets
    OnCarregaDataSets = WRFormataCamposDataSets1CarregaDataSets
    Left = 339
    Top = 232
  end
end
