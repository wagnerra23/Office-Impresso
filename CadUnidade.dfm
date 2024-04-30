inherited FrmUnidade: TFrmUnidade
  Caption = 'Cadastro de Unidades'
  ClientHeight = 570
  ClientWidth = 1021
  ExplicitWidth = 1037
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    Width = 1021
    Height = 550
    ExplicitWidth = 1021
    ExplicitHeight = 550
    inherited btnNovo: TcxButton
      Left = 902
      ExplicitLeft = 902
    end
    inherited btnConfirmar: TcxButton
      Left = 902
      ExplicitLeft = 902
    end
    inherited btnAlterar: TcxButton
      Left = 902
      ExplicitLeft = 902
    end
    inherited btnCancelar: TcxButton
      Left = 902
      ExplicitLeft = 902
    end
    inherited btnExcluir: TcxButton
      Left = 902
      ExplicitLeft = 902
    end
    inherited btnConsultar: TcxButton
      Left = 902
      ExplicitLeft = 902
    end
    inherited btnSair: TcxButton
      Left = 902
      Top = 522
      ExplicitLeft = 902
      ExplicitTop = 522
    end
    inherited edtCodigo: TcxDBTextEdit
      AutoSize = False
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 594
      TabOrder = 21
      ExplicitLeft = 594
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 902
      ExplicitLeft = 902
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 961
      ExplicitLeft = 961
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 911
      TabOrder = 36
      ExplicitLeft = 911
    end
    inherited BtnSeguidores: TcxButton
      Left = 973
      TabOrder = 34
      ExplicitLeft = 973
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 980
      ExplicitLeft = 980
    end
    inherited btnMenuConfig: TcxButton
      Left = 902
      TabOrder = 35
      ExplicitLeft = 902
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 872
      TabOrder = 33
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 872
    end
    inherited BtnImprimir: TcxButton
      Left = 993
      ExplicitLeft = 993
    end
    inherited BtnDesativar: TcxButton
      Left = 902
      ExplicitLeft = 902
    end
    inherited BtnAtivar: TcxButton
      Left = 902
      ExplicitLeft = 902
    end
    inherited BtnAjuda: TcxButton
      Left = 902
      ExplicitLeft = 902
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 713
      TabOrder = 22
      ExplicitLeft = 713
    end
    inherited BtnImprimirPadrao: TcxButton
      Left = 902
      ExplicitLeft = 902
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Unidades'
      ExplicitWidth = 885
    end
    object chkCalc_Comprimento: TcxDBCheckBox [25]
      Left = 15
      Top = 103
      Caption = 'Comprimento'
      DataBinding.DataField = 'CALC_COMPRIMENTO'
      DataBinding.DataSource = DS
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      TabOrder = 23
      Transparent = True
    end
    object chkCalc_Largura: TcxDBCheckBox [26]
      Left = 15
      Top = 125
      Caption = 'Largura'
      DataBinding.DataField = 'CALC_LARGURA'
      DataBinding.DataSource = DS
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      TabOrder = 24
      Transparent = True
    end
    object edtCalc_Esp: TcxDBCheckBox [27]
      Left = 15
      Top = 147
      Caption = 'Espessura'
      DataBinding.DataField = 'CALC_ESPESSURA'
      DataBinding.DataSource = DS
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      TabOrder = 25
      Transparent = True
    end
    object edtUnidade: TcxDBTextEdit [28]
      Left = 463
      Top = 61
      DataBinding.DataField = 'UNIDADE'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 19
      Width = 50
    end
    object edtTem_SubUnidade: TcxDBCheckBox [29]
      Left = 3
      Top = 181
      Caption = 'Adicionar como m'#250'ltiplo de outra unidade '
      DataBinding.DataField = 'TEM_SUBUNIDADE'
      DataBinding.DataSource = DS
      Properties.Alignment = taLeftJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Properties.OnChange = edtSubUnidadePropertiesChange
      Style.HotTrack = False
      TabOrder = 27
      Transparent = True
    end
    object edtFormula_Avançada: TcxDBTextEdit [30]
      Left = 13
      Top = 516
      DataBinding.DataField = 'EXPRESSAO'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 32
      Width = 865
    end
    object cxDBComboBox1: TcxDBComboBox [31]
      Left = 514
      Top = 61
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TEM_DECIMAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 79
    end
    object cxLabel1: TcxLabel [32]
      Left = 13
      Top = 484
      Caption = '{qtdadepeca} {comp} {larg} {espessura} {quant}'
      Style.HotTrack = False
      Style.TextColor = clBlue
      Style.TransparentBorder = True
      Transparent = True
    end
    object cxLabel2: TcxLabel [33]
      Left = 245
      Top = 484
      Caption = 
        '{pai.qtdadepeca} {pai.comp} {pai.larg} {pai.espessura} {pai.quan' +
        't} '
      Style.HotTrack = False
      Style.TextColor = clBlue
      Style.TransparentBorder = True
      Transparent = True
    end
    object GridProduto_Centro_Trabalho: TcxGrid [34]
      Left = 13
      Top = 280
      Width = 865
      Height = 203
      BorderStyle = cxcbsNone
      TabOrder = 29
      LookAndFeel.NativeStyle = False
      object GridProduto_Centro_TrabalhoView2: TcxGridDBTableView
        OnDblClick = GridProduto_Centro_TrabalhoView2DblClick
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
        DataController.DataSource = DSUnidade_Subunidade
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object GridProduto_Centro_TrabalhoView2CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object GridProduto_Centro_TrabalhoView2CODUNIDADE: TcxGridDBColumn
          DataBinding.FieldName = 'CODUNIDADE'
          Visible = False
        end
        object GridProduto_Centro_TrabalhoView2QUANT: TcxGridDBColumn
          Caption = 'Rendimento'
          DataBinding.FieldName = 'RENDIMENTO'
          Width = 81
        end
        object GridProduto_Centro_TrabalhoView2SUBUNIDADE: TcxGridDBColumn
          Caption = 'Sub Unidade'
          DataBinding.FieldName = 'SUBUNIDADE'
          Width = 76
        end
        object GridProduto_Centro_TrabalhoView2QTDADEPECA: TcxGridDBColumn
          Caption = 'Qtd. Pe'#231'a'
          DataBinding.FieldName = 'QTDADEPECA'
          Visible = False
        end
        object GridProduto_Centro_TrabalhoView2COMP: TcxGridDBColumn
          Caption = 'Comp'
          DataBinding.FieldName = 'COMP'
          Visible = False
        end
        object GridProduto_Centro_TrabalhoView2LARG: TcxGridDBColumn
          Caption = 'Larg'
          DataBinding.FieldName = 'LARG'
          Visible = False
        end
        object GridProduto_Centro_TrabalhoView2ESPESSURA: TcxGridDBColumn
          Caption = 'Esp'
          DataBinding.FieldName = 'ESPESSURA'
          Visible = False
        end
        object GridProduto_Centro_TrabalhoView2DESCRICAO: TcxGridDBColumn
          Caption = 'Resumo'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 142
        end
        object GridProduto_Centro_TrabalhoView2ESPECIFICACAO: TcxGridDBColumn
          Caption = 'Especifica'#231#227'o'
          DataBinding.FieldName = 'ESPECIFICACAO'
          Width = 244
        end
      end
      object GridProduto_Centro_TrabalhoLevel1: TcxGridLevel
        GridView = GridProduto_Centro_TrabalhoView2
      end
    end
    object edtCalc_Espessura1: TcxDBCheckBox [35]
      Left = 10000
      Top = 10000
      Caption = 'Espessura'
      DataBinding.DataField = 'CALC_ESPESSURA'
      DataBinding.DataSource = DS
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      TabOrder = 37
      Transparent = True
      Visible = False
    end
    object edtCalc_Larg: TcxDBCheckBox [36]
      Left = 10000
      Top = 10000
      Caption = 'Largura'
      DataBinding.DataField = 'CALC_LARGURA'
      DataBinding.DataSource = DS
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      TabOrder = 40
      Transparent = True
      Visible = False
    end
    object edtCalc_Comprimento: TcxDBCheckBox [37]
      Left = 10000
      Top = 10000
      Caption = 'Comprimento'
      DataBinding.DataField = 'CALC_COMPRIMENTO'
      DataBinding.DataSource = DS
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.HotTrack = False
      TabOrder = 38
      Transparent = True
      Visible = False
    end
    object lblExpressaoCalculada: TcxLabel [38]
      Left = 10000
      Top = 10000
      Caption = 'Express'#227'o'
      Style.HotTrack = False
      Style.TextColor = clBlue
      Style.TransparentBorder = True
      Transparent = True
      Visible = False
    end
    object lblExpressaoSimples: TcxLabel [39]
      Left = 10000
      Top = 10000
      Caption = 'Express'#227'o:'
      Style.HotTrack = False
      Visible = False
    end
    object dxTileControl2: TdxTileControl [40]
      Left = 13
      Top = 237
      Width = 865
      Height = 42
      Align = alNone
      OptionsBehavior.ItemMoving = False
      OptionsView.CenterContentVert = True
      OptionsView.GroupIndent = 0
      OptionsView.IndentHorz = 4
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 35
      TabOrder = 28
      object dxTileControlGroup1: TdxTileControlGroup
        Index = 0
      end
      object dxTileControlItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Adicionar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = dxTileControlItem1Click
      end
    end
    object chkPeso: TcxDBCheckBox [41]
      Left = 136
      Top = 85
      Caption = 'Unidade referente a Peso'
      DataBinding.DataField = 'IS_PESO'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 26
      Transparent = True
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 5
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 6
    end
    inherited LiedtCodigo: TdxLayoutItem
      AlignVert = avClient
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 4
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = dxLayoutGroup4
      Index = 1
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 5
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Usar as medida extras'
      Index = 0
    end
    object lichkCalc_Comprimento: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Visible = False
      Control = chkCalc_Comprimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lichkCalc_Largura: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Visible = False
      Control = chkCalc_Largura
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtCalc_Esp: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Visible = False
      Control = edtCalc_Esp
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtUnidade: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Unidade'
      CaptionOptions.Layout = clTop
      Control = edtUnidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Visible = False
      Control = edtTem_SubUnidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoSubUnidades
      Visible = False
      CaptionOptions.Text = 'F'#243'rmula'
      CaptionOptions.Layout = clTop
      Control = edtFormula_Avançada
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 442
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Permitir decimal:'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      Visible = False
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 231
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      Visible = False
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 319
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = GrupoSubUnidades
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Sub Unidades'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 6
    end
    object GrupoSubUnidades: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Sub Unidades'
      Visible = False
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoSubUnidades
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = GridProduto_Centro_Trabalho
      ControlOptions.OriginalHeight = 84
      ControlOptions.OriginalWidth = 886
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtCalc_Espessura1: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = edtCalc_Espessura1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtCalc_Larg: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = edtCalc_Larg
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtCalc_Comprimento: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = edtCalc_Comprimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object TdxLayoutGroup
      Index = -1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Calcula medida extra'
      Visible = False
      Index = -1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Campos Extras'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem4: TdxLayoutItem
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblExpressaoCalculada
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem5: TdxLayoutItem
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblExpressaoSimples
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = GrupoSubUnidades
      CaptionOptions.Layout = clTop
      Control = dxTileControl2
      ControlOptions.OriginalHeight = 42
      ControlOptions.OriginalWidth = 752
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = chkPeso
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 550
    Width = 1021
    ExplicitTop = 550
    ExplicitWidth = 1021
  end
  inherited DS: TDataSource
    Left = 350
    Top = 213
  end
  inherited TimerStatusBar: TTimer
    Left = 378
    Top = 213
  end
  inherited ImgListBotoes24: TImageList
    Left = 434
    Top = 241
  end
  inherited ImgListBotoes16: TImageList
    Left = 406
    Top = 241
  end
  inherited MenuConfig: TPopupMenu
    Left = 350
    Top = 241
  end
  inherited ImgListMenuConfig: TImageList
    Left = 378
    Top = 241
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 462
    Top = 213
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    Left = 462
    Top = 241
  end
  inherited MenuImprimir: TPopupMenu
    Left = 322
    Top = 241
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmUnidade'
    FormClassConsulta = 'TConsuUnidade'
    Left = 490
    Top = 213
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from UNIDADE'
      'where (Codigo = :Codigo)')
    Left = 322
    Top = 213
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited TransaFD: TFDTransaction
    Left = 434
    Top = 213
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'UNIDADE'
    Modulo = 'PRODUTO'
    Left = 406
    Top = 213
  end
  inherited Fr3Cadastro: TfrxDBDataset
    Left = 490
    Top = 241
  end
  object WRFormataCamposDataSets1: TWRFormataCamposDataSets
    Left = 480
    Top = 128
  end
  object Unidade_Subunidade: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODUNIDADE'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize, evCache]
    FetchOptions.RowsetSize = 10000
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from unidade_subunidade where codunidade = :Codigo')
    Left = 322
    Top = 269
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object DSUnidade_Subunidade: TDataSource
    DataSet = Unidade_Subunidade
    Left = 350
    Top = 269
  end
end
