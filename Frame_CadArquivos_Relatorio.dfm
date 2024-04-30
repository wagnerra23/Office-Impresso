inherited FrmArquivos_Relatorio: TFrmArquivos_Relatorio
  inherited MainLayout: TdxLayoutControl
    Width = 1049
    Visible = False
    ExplicitWidth = 1049
    inherited edtCodigo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Properties.OnChange = edtCodigoPropertiesChange
      TabOrder = 4
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 928
      Top = 17
      TabOrder = 2
      ExplicitLeft = 928
      ExplicitTop = 17
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 18
      Top = 17
      Properties.CharCase = ecNormal
      TabOrder = 0
      ExplicitLeft = 18
      ExplicitTop = 17
      ExplicitWidth = 865
      Width = 865
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 924
      TabOrder = 5
      ExplicitLeft = 924
    end
    inherited PnlFrameHistorico: TPanel
      Left = 28
      Top = 73
      Width = 1008
      Height = 487
      TabOrder = 3
      Visible = True
      ExplicitLeft = 28
      ExplicitTop = 73
      ExplicitWidth = 1008
      ExplicitHeight = 487
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 884
      Top = 17
      TabOrder = 1
      ExplicitLeft = 884
      ExplicitTop = 17
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      Index = 0
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited LiedtCodigo: TdxLayoutItem
      Parent = nil
      Index = -1
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 2
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avTop
      Index = 0
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = GrupoTab
      ShowBorder = False
      Index = 0
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 1
    end
    inherited liSeparadorFrameBase: TdxLayoutSeparatorItem
      Parent = nil
      Index = -1
    end
    object MainLayoutGroup1: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object MainLayoutSeparatorItem2: TdxLayoutSeparatorItem
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Separator'
      Index = -1
    end
    object GrupoTab: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Visible = False
  end
  inherited pnlMenuCadastro: TPanel
    Left = 1049
    Width = 2
    ExplicitLeft = 1049
    ExplicitWidth = 2
    inherited tcCadastro: TdxTileControl
      Width = 2
      ExplicitWidth = 2
      inherited BtnImprimirPadrao: TdxTileControlItem
        Visible = False
        Left = 10000
        Top = 10000
      end
    end
    inherited dxTileControl1: TdxTileControl
      Left = 2
      ExplicitLeft = 2
    end
    inherited tcCadastroMenu: TdxTileControl
      Width = 2
      ExplicitWidth = 2
      inherited BtnConfiguracoes: TdxTileControlItem
        Left = 993
      end
    end
    inherited tcCadastroAcoes: TdxTileControl
      Width = 2
      ExplicitWidth = 2
      inherited btnNovo: TdxTileControlItem
        Left = 915
      end
      inherited btnConfirmar: TdxTileControlItem
        Left = 915
      end
      inherited btnExcluir: TdxTileControlItem
        Left = 915
      end
      inherited btnAlterar: TdxTileControlItem
        Left = 915
      end
      inherited btnCancelar: TdxTileControlItem
        Left = 915
      end
      inherited BtnAtivar: TdxTileControlItem
        Left = 915
      end
      inherited BtnDesativar: TdxTileControlItem
        Left = 915
      end
    end
    inherited tcConfig: TdxTileControl
      Width = 2
      ExplicitWidth = 2
    end
    inherited tcCadastro_Consulta: TdxTileControl
      Width = 2
      ExplicitWidth = 2
      inherited btnConsultar: TdxTileControlItem
        Left = 915
      end
    end
    inherited tcCadastro_Anterior_Proximo: TdxTileControl
      Width = 2
      ExplicitWidth = 2
      inherited btnNavegacaoAnterior: TdxTileControlItem
        Left = 915
      end
      inherited btnNavegacaoProximo: TdxTileControlItem
        Left = 974
      end
    end
  end
  object PnlPreview: TPanel [5]
    Left = 280
    Top = 237
    Width = 709
    Height = 257
    BevelOuter = bvNone
    Color = 16505534
    TabOrder = 6
    Visible = False
  end
  object pnlEditar: TPanel [6]
    Left = 111
    Top = 125
    Width = 453
    Height = 237
    AutoSize = True
    BevelOuter = bvNone
    Color = 16505534
    ParentBackground = False
    TabOrder = 7
    Visible = False
    object dxLayoutControl2: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 453
      Height = 237
      Align = alClient
      TabOrder = 0
      AutoSize = True
      object edtNomeDoArquivo: TcxDBTextEdit
        Left = 92
        Top = 37
        DataBinding.DataField = 'DESCRICAO'
        DataBinding.DataSource = DS
        Properties.IncrementalSearch = False
        Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        Width = 351
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 92
        Top = 145
        DataBinding.DataField = 'VERSAO'
        DataBinding.DataSource = DS
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clSilver
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 5
        Width = 351
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 92
        Top = 118
        DataBinding.DataField = 'MD5'
        DataBinding.DataSource = DS
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clSilver
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 4
        Width = 351
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 92
        Top = 91
        DataBinding.DataField = 'ID_INTERNO'
        DataBinding.DataSource = DS
        Properties.OnValidate = cxDBTextEdit1PropertiesValidate
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clSilver
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 3
        Width = 351
      end
      object cxDBComboBox2: TcxDBComboBox
        Left = 92
        Top = 64
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'ATIVO'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'S'
          'N')
        Properties.OnChange = CbxAtivoPropertiesChange
        Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.TransparentBorder = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 2
        Height = 21
        Width = 351
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 92
        Top = 172
        DataBinding.DataField = 'DT_ALTERACAO'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clSilver
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 6
        Width = 351
      end
      object btnFecharEditar: TcxButton
        Left = 10
        Top = 199
        Width = 433
        Height = 28
        Caption = 'Fechar'
        TabOrder = 7
        OnClick = btnFecharEditarClick
      end
      object cxbForm: TcxDBComboBox
        Left = 92
        Top = 10
        DataBinding.DataField = 'FORM'
        DataBinding.DataSource = DS
        Properties.DropDownRows = 20
        Properties.Items.Strings = (
          'TConsuOcorrencia'
          'TFrame_ConsuVenda_Venda'
          'TDMRelatorios'
          'TFrmAgenda'
          'TFrmBalanco'
          'TFrmComissao'
          'TFrmComissoes_Financeiro'
          'TFrmDashBoard_Venda_Categoria'
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
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.TransparentBorder = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        OnExit = cxbFormExit
        Width = 351
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object liedtNomeDoArquivo: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'Nome'
        Control = edtNomeDoArquivo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 242
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem16: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'Vers'#227'o'
        Control = cxDBTextEdit4
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem19: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'MD5'
        Control = cxDBTextEdit5
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'ID Interno'
        Control = cxDBTextEdit6
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem21: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'Ativo'
        Control = cxDBComboBox2
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem23: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = #218'ltima Altera'#231#227'o'
        Control = cxDBTextEdit7
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnFecharEditar
        ControlOptions.OriginalHeight = 28
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 7
      end
      object LicxbForm: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'Tela'
        Control = cxbForm
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 350
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object PnlDeploy: TPanel [7]
    Left = 200
    Top = 151
    Width = 529
    Height = 332
    Caption = 'Salvar Modelo de Relat'#243'rio'
    TabOrder = 3
    Visible = False
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 527
      Height = 330
      Align = alClient
      TabOrder = 0
      object MemoObservacao: TcxMemo
        Left = 10
        Top = 73
        Properties.ScrollBars = ssVertical
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 3
        Height = 89
        Width = 507
      end
      object EdtVersao1: TcxTextEdit
        Left = 287
        Top = 231
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Width = 50
      end
      object EdtVersao2: TcxTextEdit
        Left = 343
        Top = 231
        AutoSize = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 7
        Height = 21
        Width = 50
      end
      object EdtVersao3: TcxTextEdit
        Left = 399
        Top = 231
        AutoSize = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 8
        Height = 21
        Width = 50
      end
      object EdtVersao4: TcxTextEdit
        Left = 455
        Top = 231
        AutoSize = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 9
        Height = 21
        Width = 50
      end
      object CbEnviarPara: TcxComboBox
        Left = 10
        Top = 231
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Personalizado'
          'Padr'#227'o')
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 5
        Text = 'Personalizado'
        Width = 259
      end
      object BtnDeployCancelar: TcxButton
        Left = 266
        Top = 295
        Width = 120
        Height = 25
        Caption = 'Cancelar'
        ModalResult = 2
        TabOrder = 10
      end
      object BtnDeployEnviar: TcxButton
        Left = 392
        Top = 295
        Width = 125
        Height = 25
        Action = ActDeploy
        Caption = 'Salvar'
        TabOrder = 11
      end
      object EdtLink: TcxTextEdit
        Left = 10
        Top = 186
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 4
        Width = 507
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 10
        Top = 28
        DataBinding.DataField = 'FORM'
        DataBinding.DataSource = DS
        Properties.Items.Strings = (
          'FrmVenda'
          'FrmProducao'
          'FrmProducao_OS'
          'FrmComissoes'
          'FrmDRE'
          'ImpriVendas_Periodo'
          'ImpriProducao'
          'FrmNotaFiscal'
          'FrmGrupo'
          'FrmFramePessoasTabelaDePrecos'
          'FrmFramePessoasRepresentantes'
          'FrmPontoEletronico'
          'FrmMaps'
          'FrmFolhaDePagamento'
          'FrmFinanceiro_Caixa'
          'FrmNotaFiscal_Impressao'
          'FrmPrincipalEquipamento'
          'ConsuOcorrencia')
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 215
      end
      object BtnLiberarAcesso: TcxButton
        Left = 400
        Top = 28
        Width = 117
        Height = 21
        Caption = 'Liberar Acesso'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000021249444154388D7D923B6C13
          411086FFD9B37D7BF1DB01034242A1A12005A2A0B1444145832CD7160D5284E4
          20A17418D1A4A041E980165152B9030192314528690314B88F2EF8710EB997F7
          7628FCC03E1C465AEDECAFD137FFEC2E6145743A1DF8BE7FC3B2AC9B0060DBF6
          BE699A5F6BB51AC76B292EB4DBED0480979EE76D799E279819524A5D2A955E19
          86F1A052A9A8C57AB17868B55A88A2E8E16030B8EFBAEE9E52EA5CBFDF2FDBB6
          FDACDBED6E492977E20D9700B66D230CC36DC7713E5A96F5B85EAF1F351A8D5F
          BD5EEFC97038FCE038CE76BBDD3E1DA09482526A2308822FD56A75AE379B4D68
          ADF747A3D18610824E05008010828AC5A28EEBE9745A0300D1F2B52566C9DB17
          7771E5EAF7CC4FEF128A3969BE797A273B18F4A1A308F97C01C974D21488A810
          7CCABEDEBD35BAB7FB7919C08C4CAE641F6CF6F6A8677B8F44C6DF49680F8218
          B9AC8375E379AA7CFE2242EBDA01804D00A325000032122A5F48FF206487123E
          C9BC49304D404AA07086512A8F71185CCFAD1CE16F30881960C6E237614CA558
          AC00104034D940D394213097FF0F20D220E869214D5AD3CC0C236E62A503CDD3
          054C500C8027D0D82BAE76605004830806010600C1802080C4BF9730070C8F03
          30F36F66363403CC4CAC8105CFCCCC60C6C9B11BCE7DCCA64BC95462AD7AFBC2
          5977746839CE589EB8488D15924200A904D45A1A417E3DE327ADCBDEBBF7DF8E
          FC307201847F001F1FE0A82983EF760000000049454E44AE426082}
        TabOrder = 1
        OnClick = BtnLiberarAcessoClick
      end
      object EdtCNPJDestino: TcxMaskEdit
        Left = 231
        Top = 28
        AutoSize = False
        Properties.EditMask = '99.999.999/9999-99;1; '
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Text = '  .   .   /    -  '
        Height = 21
        Width = 140
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Observa'#231#227'o'
        CaptionOptions.Layout = clTop
        Control = MemoObservacao
        ControlOptions.OriginalHeight = 89
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Layout = clTop
        Control = EdtVersao1
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 50
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahRight
        AlignVert = avTop
        CaptionOptions.Text = 'Vers'#227'o'
        ItemIndex = 3
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Layout = clTop
        Control = EdtVersao2
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 50
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignVert = avClient
        CaptionOptions.Layout = clTop
        Control = EdtVersao3
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 50
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignVert = avClient
        CaptionOptions.Layout = clTop
        Control = EdtVersao4
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 50
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Salvar Como'
        CaptionOptions.Layout = clTop
        Control = CbEnviarPara
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 200
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutControl1Group_Root
        AlignVert = avBottom
        CaptionOptions.Text = 'Separator'
        Index = 4
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = BtnDeployCancelar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 120
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton3'
        CaptionOptions.Visible = False
        Control = BtnDeployEnviar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 125
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avBottom
        LayoutDirection = ldHorizontal
        Index = 5
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Link'
        CaptionOptions.Layout = clTop
        Control = EdtLink
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Tela do Sistema'
        CaptionOptions.Layout = clTop
        Control = cxDBComboBox1
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 215
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 3
      end
      object dxLayoutItem17: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahRight
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = BtnLiberarAcesso
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 117
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutItem18: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avBottom
        CaptionOptions.Text = 'CNPJ da empresa de Destino'
        CaptionOptions.Layout = clTop
        Control = EdtCNPJDestino
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 140
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  object pnlXML: TPanel [8]
    Left = 488
    Top = 86
    Width = 529
    Height = 442
    Caption = 'pnlXML'
    Color = 16505534
    ParentBackground = False
    TabOrder = 8
    Visible = False
    object dxLayoutControl3: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 527
      Height = 440
      Align = alClient
      TabOrder = 0
      object edtXML: TcxDBRichEdit
        Left = 10000
        Top = 10000
        DataBinding.DataField = 'ARQUIVO_FR3'
        DataBinding.DataSource = DS
        Properties.MemoMode = True
        Properties.PlainText = True
        Properties.StreamModes = [resmUnicode, resmTextIzed]
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 5
        Visible = False
        Height = 89
        Width = 185
      end
      object btnExportarEAbrirBlocodeNotas: TcxButton
        Left = 10000
        Top = 10000
        Width = 75
        Height = 25
        Caption = 'Abra Arquivo no internet Explorer, Copie o c'#243'digo e cole abaixo'
        TabOrder = 3
        Visible = False
        OnClick = btnExportarEAbrirBlocodeNotasClick
      end
      object btnFecharXML: TcxButton
        Left = 442
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Fechar'
        ModalResult = 2
        TabOrder = 0
        OnClick = btnFecharXMLClick
      end
      object dxLayoutControl3Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutGroup3: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'XML do Arquivo'
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Text = 'Abra Arquivo no internet Explorer, Copie o c'#243'digo e cole abaixo'
        CaptionOptions.Visible = False
        Control = btnExportarEAbrirBlocodeNotas
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object LiXML: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avClient
        CaptionOptions.Text = 'XML do Arquivo'
        CaptionOptions.Visible = False
        Control = edtXML
        ControlOptions.OriginalHeight = 89
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl3Group_Root
        AlignHorz = ahRight
        CaptionOptions.Visible = False
        Control = btnFecharXML
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  inherited MenuConfig: TPopupMenu
    Left = 368
    Top = 128
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    Left = 340
  end
  inherited MenuImprimir: TPopupMenu
    Left = 424
    Top = 128
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 2
    FormClassCadastro = 'TFrmArquivos_Relatorio'
    FormClassConsulta = 'TConsuArquivos_Relatorio'
  end
  inherited Cadastro: TFDQuery
    OnCalcFields = CadastroCalcFields
    SQL.Strings = (
      'select *'
      'from ARQUIVOS_RELATORIO'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object CadastroTamanhoStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'TamanhoStr'
      Size = 50
      Calculated = True
    end
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'ARQUIVOS_RELATORIO'
    Modulo = 'RELATORIO'
  end
  inherited Fr3Cadastro: TfrxDBDataset
    Description = 'esse n'#227'o deve operar'
    Enabled = False
  end
  inherited ImageListNotificacao: TImageList
    Top = 199
  end
  object TimerRelatorio: TTimer
    Enabled = False
    Interval = 50
    Left = 340
    Top = 128
  end
  object ActionList1: TActionList
    Left = 512
    Top = 71
    object ActDeploy: TAction
      Caption = 'Enviar Relat'#243'rio para o FTP'
      OnExecute = ActDeployExecute
    end
    object Act_Confirma: TAction
      Caption = 'Confimar'
      OnExecute = Act_ConfirmaExecute
    end
    object Act_FechaTelaCheia: TAction
      Caption = 'Act_FechaTelaCheia'
      OnExecute = Act_FechaTelaCheiaExecute
    end
    object Act_Salvar_Como_Modelo: TAction
      Caption = 'Salvar como Modelo'
      OnExecute = Act_Salvar_Como_ModeloExecute
    end
    object Act_Importar: TAction
      Caption = 'Importar'
      OnExecute = Act_ImportarExecute
    end
    object Act_SalvarComo: TAction
      Caption = 'Salvar como...'
      OnExecute = Act_SalvarComoExecute
    end
    object Act_Historico: TAction
      Caption = 'Hist'#243'rico'
      OnExecute = Act_HistoricoExecute
    end
    object Act_Excluir: TAction
      Caption = 'Deletar'
      OnExecute = Act_ExcluirExecute
    end
    object Act_Editar: TAction
      Caption = 'Editar'
      OnExecute = Act_EditarExecute
    end
    object Act_Editar_XML: TAction
      Caption = 'Act_Editar_XML'
      OnExecute = Act_Editar_XMLExecute
    end
  end
  object ImgListRelatorios: TImageList
    ColorDepth = cd32Bit
    Left = 452
    Top = 100
    Bitmap = {
      494C010104000900040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101002E12120287121202871212
      0287121202871212028712120287121202871212028712120287121202871212
      02870808015E000000290000001B0000000F0101002E12120287121202871212
      0287121202871212028712120287121202871212028712120287121202871212
      02870808015E000000290000001B0000000F0000001900000019000000190000
      0019000000190000001900000019000000190000001900000019000000190000
      0019000000190000001900000019000000190000000000000000000000010000
      001B0303074E06080F6D0B0F187F14172288161B2287181E217E0F14156B0303
      0548000000220000000800000000000000000303002B29291890DEDEDBEFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFF
      FEFF7C7C71C1080800530000000E000000080303002B29291890DEDEDBEFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFF
      FEFF7C7C71C1080800530000000E0000000800000000BB6E24FFBB6E24FFBB6E
      24FFBB6E24FFBB6E24FF00000000000000000000000000000000BB6E24FFBB6E
      24FFBB6E24FFBB6E24FFBB6E24FF0000000000000000000000000000012E2537
      70F5344884FF3A4B7BFF4D6295FF6781AEFF819DC2FF9CC6DBFFA8CDE1FFDFE7
      ECFE1E232798000000140000000000000000000000000606002B474734ABCDCD
      BCFFD0D0C1FFD5D5C7FFDADACEFFE0E0D5FFE6E6DDFFECECE5FFF1F1ECFFF6F6
      F2FFFCFCF9FF111100790000000000000000000000000606002B474734ABCDCD
      BCFFD0D0C1FFD5D5C7FFDADACEFFE0E0D5FFE6E6DDFFECECE5FFF1F1ECFFF6F6
      F2FFFCFCF9FF11110079000000000000000000000000BB6E24FFF9B65AFFF1AD
      54FFBB6E24FF000000000000000000000000000000000000000000000000BB6E
      24FFF1AE54FFF9B65AFFBB6E24FF0000000000000000000000000000031F2A3F
      83FF354986FF3B4C7CFF4C6195FF6781ADFF829EC3FF9DC7DCFFABCFE3FFE9F1
      F5FF23272E7F00000000000000000000000000000000000000000F0F0071F1F1
      EAFFEFEFE8FFF0F0EAFFF1F1EBFFF3F3EDFFF4F4EFFFF5F5F1FFF7F7F2FFF8F8
      F4FFFCFCF8FF0F0F0071000000000000000000000000000000000F0F0071F1F1
      EAFFEFEFE8FFF0F0EAFFF1F1EBFFF3F3EDFFF4F4EFFFF5F5F1FFF7F7F2FFF8F8
      F4FFFCFCF8FF0F0F0071000000000000000000000000BB6E24FFF1AE54FFE7A3
      4CFFDE9944FFBB6E24FF00000000000000000000000000000000BB6E24FFDF99
      44FFE7A34CFFF1AD54FFBB6E24FF0000000000000000000000000000031F293D
      82FF344683FF39487AFF495B90FF6278A8FF829EC3FF9DC7DCFFAACFE3FFE9F1
      F5FF23272E7F00000000000000000000000000000000000000000F0F006BFBFB
      F5FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFA7A7
      99FF8B8B79FF11110073000000000000000000000000000000000F0F006BFBFB
      F5FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6F1FFF6F6
      F1FFFBFBF5FF0F0F006B000000000000000000000000BB6E24FFBB6E24FFDF99
      44FFD6903DFFCF8737FFBB6E24FF0000000000000000BB6E24FFCF8736FFD690
      3DFFDE9944FFBB6E24FFBB6E24FF0000000000000000000000000000031F2839
      7CFF31417DFF364377FF42528AFF5F74A5FF829EC3FF9DC7DCFFAACFE3FFE9F1
      F5FF23272E7F000000000000000000000000000000000000000012120067FAFA
      F2FFF3F3ECFFF3F3ECFFF3F3ECFFF3F3ECFFF3F3ECFFF3F3ECFFF3F3ECFF9191
      80FFFFFFFFFF191907860B0B033C00000000000000000000000012120067FAFA
      F2FFA6A697FF8F8F7EFFCFCFC4FFF3F3ECFFF3F3ECFFF3F3ECFFF3F3ECFFF3F3
      ECFFFAFAF2FF12120067000000000000000000000000BB6E24FF00000000BB6E
      24FFCF8736FFC88030FFBB6E24FF0000000000000000BB6E24FFC88030FFCF87
      37FFBB6E24FF00000000BB6E24FF0000000000000000000000000000031F2835
      77FF2E3A78FF323C73FF44558CFF6882AEFF829EC3FF9DC7DCFFABCFE3FFE9F1
      F5FF23272E7F000000000000000000000000000000000000000013130166F8F8
      EEFFF0F0E6FFF0F0E6FFF0F0E6FFE5E5DAFFD2D2C5FFBABAABFFA4A494FF9898
      87FFE6E6E2FFFFFFFFFF1C1C0C820C0C053B000000000000000013130166F8F8
      EEFF919180FFFFFFFEFFA9A999FFDBDBCFFFF0F0E6FFF0F0E6FFF0F0E6FFF0F0
      E6FFF8F8EEFF1313016600000000000000000000000000000000000000000000
      0000BB6E24FFBB6E24FF00000000000000000000000000000000BB6E24FFBB6E
      24FF0000000000000000000000000000000000000000000000000000031F2730
      72FF2B3472FF333D74FF55699AFF728BB5FF89A4C7FF9FC9DEFFAACFE4FFE9F1
      F5FF23272E7F000000000000000000000000000000000000000017170566F6F6
      EBFFEDEDE1FFEDEDE1FFEDEDE1FFF0F0E5FFF3F3ECFFF8F8F4FFFDFDFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF20200F7E151508621C1C0C821C1C0C829898
      87FF989887FFE6E6E1FFFBFBF8FFC4C4B6FFE3E3D7FFEDEDE1FFEDEDE1FFEDED
      E1FFF6F6EBFF1717056600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000031F373F
      79FE515D8AFF5A678DFF59668DFF55638CFF57658DFF5F6F94FF6F829FFEB0B9
      C8FE20242C7E000000000000000000000000000000000000000019190966F5F5
      E7FFEAEADCFFEAEADCFFEAEADCFFE2E2D3FFD4D4C5FFC1C1B1FFB1B1A0FFA8A8
      97FFE9E9E5FFFFFFFFFF242413791010093720200F7EFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFAFAF7FFF5F5EEFFEFEFE4FFEAEADCFFEAEADCFFEAEA
      DCFFF5F5E7FF1919096600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000051A20
      2EABA4A9B5FF8B8FA2F435416BE536456EE935416BE736405CE3AEAEB7FF6B71
      82E10202032C00000000000000000000000000000000000000001D1D0D66F4F4
      E4FFE8E8D8FFE8E8D8FFE8E8D8FFE8E8D8FFE8E8D8FFE8E8D8FFE8E8D8FFB0B0
      9FFFFFFFFFFF2828177512120A35000000001B1B0E5B2424137924241379A8A8
      97FFA8A897FFE8E8E4FFFAFAF6FFCACAB9FFE0E0D1FFE8E8D8FFE8E8D8FFE8E8
      D8FFF4F4E4FF1D1D0D6600000000000000000000000000000000000000000000
      0000BB6E24FFBB6E24FF00000000000000000000000000000000BB6E24FFBB6E
      24FF000000000000000000000000000000000000000000000000000000000101
      0110ADB1BBFF68686CAF0000000000000000000000000505051FB2B2BBFF5959
      5C9900000000000000000000000000000000000000000000000021211166F3F3
      E3FFE6E6D6FFE6E6D6FFE6E6D6FFE6E6D6FFE6E6D6FFE6E6D6FFE6E6D6FFC4C4
      B3FFB9B9A8FF242412690000000000000000000000000000000021211166F3F3
      E3FFB0B09FFFFEFEFEFFBEBEADFFD9D9C9FFE6E6D6FFE6E6D6FFE6E6D6FFE6E6
      D6FFF3F3E3FF21211166000000000000000000000000BB6E24FF00000000BB6E
      24FFCF8737FFC88030FFBB6E24FF0000000000000000BB6E24FFC88030FFCF87
      36FFBB6E24FF00000000BB6E24FF000000000000000000000000000000000000
      000BABB0BAFE6A6A6CAE0000000000000000000000000606061DB3B2BCFF5F5F
      629B00000000000000000000000000000000000000000000000025251566F2F2
      E1FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5
      D4FFF2F2E1FF252515660000000000000000000000000000000025251566F2F2
      E1FFC4C4B3FFBBBBAAFFD5D5C4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5D4FFE5E5
      D4FFF2F2E1FF25251566000000000000000000000000BB6E24FFBB6E24FFDE99
      44FFD6903DFFCF8736FFBB6E24FF0000000000000000BB6E24FFCF8737FFD690
      3DFFDF9944FFBB6E24FFBB6E24FF000000000000000000000000000000000000
      0006ADB0BBFE696A6DB10000000000000000000000000606061DB4B5BEFF5656
      599600000000000000000000000000000000000000000000000029291966F4F4
      E5FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8
      D9FFF4F4E5FF292919660000000000000000000000000000000029291966F4F4
      E5FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8D9FFE8E8
      D9FFF4F4E5FF29291966000000000000000000000000BB6E24FFF1AD54FFE7A3
      4CFFDF9944FFBB6E24FF00000000000000000000000000000000BB6E24FFDE99
      44FFE7A34CFFF1AE54FFBB6E24FF000000000000000000000000000000000000
      0001ACAEB6EF94949ACE0000000000000000000000000A0A0A32B1B2BBFF4242
      43830000000000000000000000000000000000000000000000002D2D1B66FCFC
      F3FFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3
      EBFFFAFAF1FF6D6D5CA00F0F09240000000000000000000000002D2D1B66FCFC
      F3FFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3EBFFF3F3
      EBFFFAFAF1FF6D6D5CA00F0F09240000000000000000BB6E24FFF9B65AFFF1AE
      54FFBB6E24FF000000000000000000000000000000000000000000000000BB6E
      24FFF1AD54FFF9B65AFFBB6E24FF000000000000000000000000000000000000
      00006F6F70AD9CA1AAFE2C2B2C6F000000020000000F515054AE88888DFF1313
      13410000000000000000000000000000000000000000000000001A1A10398D8D
      83B3FEFEFDFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFD
      FCFFFDFDFCFFE3E3E0EC4545347A0E0E081F00000000000000001A1A10398D8D
      83B3FEFEFDFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFD
      FCFFFDFDFCFFE3E3E0EC4545347A0E0E081F00000000BB6E24FFBB6E24FFBB6E
      24FFBB6E24FFBB6E24FF00000000000000000000000000000000BB6E24FFBB6E
      24FFBB6E24FFBB6E24FFBB6E24FF000000000000000000000000000000000000
      000005050521A1A6ABE6585762FF616271F05D5E6BF542434FFF4C4C4EB50000
      0001000000000000000000000000000000000000000000000000000000001B1B
      1239313121663131216631312166313121663131216631312166313121663131
      21663131216631312166313121660D0D071A0000000000000000000000001B1B
      1239313121663131216631312166313121663131216631312166313121663131
      21663131216631312166313121660D0D071A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000202021A4646478685868BC67F8284BA2424256A000000050000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0030000000083C1C003
      0000000087E1C0070000000083C1C007000000008181C00700000000A185C007
      00000000F3CFC00700000000FFFFC00700000000FFFFC00700000000F3CFE38F
      00000000A185E38F000000008181E38F0000000083C1E38F0000000087E1F00F
      0000000083C1F00F00000000FFFFF81F00000000000000000000000000000000
      000000000000}
  end
  object OdImportar: TOpenDialog
    Filter = 'Arquivos FR3|*.fr3'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Selecione o arquivo de impress'#227'o'
    Left = 452
    Top = 128
  end
  object SdExportar: TSaveDialog
    Filter = 'Arquivos FR3|*.fr3'
    InitialDir = 'SdExportar'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = 'Exportar arquivo de Impress'#227'o'
    Left = 480
    Top = 128
  end
end
