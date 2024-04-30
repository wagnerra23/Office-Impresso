inherited FrmEmail_Modelo: TFrmEmail_Modelo
  Caption = 'Cadastro de Modelo de Email'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 757
      TabOrder = 22
      ExplicitLeft = 757
    end
    inherited edtDescricao: TcxDBTextEdit
      ExplicitWidth = 428
      Width = 428
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 27
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 26
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 852
      TabOrder = 25
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 852
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 713
      TabOrder = 21
      ExplicitLeft = 713
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Modelo de Email'
    end
    object RichEmail: TdxRichEditControl [24]
      Left = 13
      Top = 153
      Width = 852
      Height = 543
      ActiveViewType = Simple
      BorderStyle = cxcbsNone
      Color = 16505534
      Options.Export.Html.CssPropertiesExportType = Inline
      Options.Export.Html.EmbedImages = True
      Options.HorizontalRuler.Visibility = Hidden
      Options.MailMerge.ViewMergedData = True
      Options.VerticalRuler.Visibility = Hidden
      TabOrder = 24
    end
    object cxbForm: TcxDBComboBox [25]
      Left = 485
      Top = 61
      DataBinding.DataField = 'FORM'
      DataBinding.DataSource = DS
      Properties.DropDownRows = 20
      Properties.Items.Strings = (
        'TConsuOcorrencia'
        'TConsuVenda'
        'TDMRelatorios'
        'TFrmAgenda'
        'TFrmBalanco'
        'TFrmComissoes'
        'TFrmComissoes_Financeiro'
        'TFrmDRE'
        'TFrmEquipamentos'
        'TFrmFinanceiro_Boleto'
        'TFrmFinanceiro_Caixa'
        'TFrmFinanceiro_Recebimento'
        'TFrmFluxoCaixa'
        'TFrmFolhaDePagamento'
        'TFrmFramePessoasRepresentantes'
        'TFrmFramePessoasTabelaDePrecos'
        'TFrmGrupo'
        'TFrmImplaudoA4'
        'TFrmMaps'
        'TFrmMensalidade'
        'TFrmNF_Entrada'
        'TFrmNotaFiscal'
        'TFrmNotaFiscal_Impressao'
        'TFrmPessoas'
        'TFrmPontoEletronico'
        'TFrmPrincipalEquipamento'
        'TFrmProducao'
        'TFrmProducao_OS'
        'TFrmTabelaFipe_Valor'
        'TFrmVenda'
        'TImpriAgenda'
        'TImpriCarne'
        'TImpriClientes_Ativos'
        'TImpriDuplicata'
        'TImpriEntradas'
        'TImpriFinanceiro'
        'TImpriFinanceiroDevedores'
        'TImpriFinanceiro_Caixa'
        'TImpriFinanceiro_LivroCaixa'
        'TImpriOcorrencia'
        'TImpriOcorrencias'
        'TImpriProducao'
        'TImpriProduto'
        'TImpriProduto_Patrimonio'
        'TImpriProduto_Valores'
        'TImpriProdutos_Gerencial'
        'TImpriVenda'
        'TImpriVendas_Periodo'
        'TRelClientesSimplificado'
        'TRpt_Barras')
      Style.HotTrack = False
      TabOrder = 19
      Width = 183
    end
    object cxDBComboBox1: TcxDBComboBox [26]
      Left = 669
      Top = 61
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'PADRAO'
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
      Width = 43
    end
    object edtAssunto: TcxDBTextEdit [27]
      Left = 3
      Top = 97
      DataBinding.DataField = 'ASSUNTO'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 23
      Width = 872
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      AlignHorz = ahRight
      Index = 5
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 9
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignHorz = ahClient
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Index = 1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
    end
    inherited LicbxAtivo: TdxLayoutItem
      AlignHorz = ahRight
      Index = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoLogAlteracoes
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Modelo do Email'
      CaptionOptions.Visible = False
      Control = RichEmail
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 81
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Telas do Sistema'
      CaptionOptions.Layout = clTop
      Control = cxbForm
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Padr'#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LiedtAssunto: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Assunto'
      CaptionOptions.Layout = clTop
      Control = edtAssunto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 406
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmEmail_Modelo'
    FormClassConsulta = 'TConsuEmail_Modelo'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from EMAIL_MODELO'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'EMAIL_MODELO'
    Modulo = 'CRM'
  end
  object MemDados: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 368
    Top = 128
  end
  object DSDados: TDataSource
    DataSet = MemDados
    Left = 396
    Top = 128
  end
end
