inherited FrameProdutoSubUnidade: TFrameProdutoSubUnidade
  Width = 668
  ExplicitWidth = 668
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 668
    ExplicitWidth = 668
    inherited btnMenuConfig: TcxButton
      Left = 650
      Top = 94
      TabOrder = 4
      ExplicitLeft = 650
      ExplicitTop = 94
    end
    object cxGrid1: TcxGrid [1]
      Left = 0
      Top = 113
      Width = 668
      Height = 273
      TabOrder = 5
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object tcMenu: TdxTileControl [2]
      Left = 0
      Top = 44
      Width = 668
      Height = 49
      Align = alNone
      OptionsBehavior.ItemMoving = False
      OptionsView.CenterContentHorz = True
      OptionsView.CenterContentVert = True
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupIndent = 0
      OptionsView.IndentHorz = 4
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 35
      TabOrder = 3
      object dxTileControlGroup1: TdxTileControlGroup
        Index = 0
      end
      object tciAdcionar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
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
        OnClick = tciAdcionarClick
      end
      object tcMenuItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Fechar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcExcluir: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Style.BorderColor = 9192083
        Style.GradientBeginColor = 8075648
        Style.GradientEndColor = 8075648
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Excluir'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
    object chkPode_Alterar_Estoque: TcxDBCheckBox [3]
      Left = 0
      Top = 0
      AutoSize = False
      Caption = 'Possui SubUnidade?'
      DataBinding.DataField = 'TEM_SUBUNIDADE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Transparent = True
      Height = 21
      Width = 668
    end
    object cbxUnidade: TcxDBComboBox [4]
      Left = 151
      Top = 22
      AutoSize = False
      DataBinding.DataField = 'UN_PADRAO_COMPRA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.ImmediatePost = True
      Properties.Sorted = True
      Style.HotTrack = False
      TabOrder = 1
      Height = 21
      Width = 121
    end
    object cxDBComboBox1: TcxDBComboBox [5]
      Left = 419
      Top = 22
      AutoSize = False
      DataBinding.DataField = 'UN_PADRAO_VENDA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.ImmediatePost = True
      Properties.Sorted = True
      Style.HotTrack = False
      TabOrder = 2
      Height = 21
      Width = 249
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 260
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      Control = tcMenu
      ControlOptions.OriginalHeight = 49
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = chkPode_Alterar_Estoque
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Sub Unidade padr'#227'o de compra'
      Control = cbxUnidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Sub Unidade padr'#227'o de venda'
      Control = cxDBComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object DSProduto_SubUnidade: TDataSource
    DataSet = Produto_SubUnidade
    Left = 372
    Top = 100
  end
  object Produto_SubUnidade: TFDQuery
    BeforeOpen = Produto_SubUnidadeBeforeOpen
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterFields = 'CODIGO'
    DetailFields = 'CODUNIDADE'
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select * from PRODUTO_SUBUNIDADE ps where ps.CODPRODUTO = CODIGO')
    Left = 344
    Top = 100
    object Produto_SubUnidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Produto_SubUnidadeCODUNIDADE: TIntegerField
      FieldName = 'CODUNIDADE'
      Origin = 'CODUNIDADE'
    end
    object Produto_SubUnidadeCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
    end
    object Produto_SubUnidadeUNIDADE_RENDIMENTO: TStringField
      FieldName = 'UNIDADE_RENDIMENTO'
      Origin = 'UNIDADE_RENDIMENTO'
      Size = 6
    end
    object Produto_SubUnidadeQTDADEPECA: TFloatField
      FieldName = 'QTDADEPECA'
      Origin = 'QTDADEPECA'
    end
    object Produto_SubUnidadeCOMP: TFloatField
      FieldName = 'COMP'
      Origin = 'COMP'
    end
    object Produto_SubUnidadeLARG: TFloatField
      FieldName = 'LARG'
      Origin = 'LARG'
    end
    object Produto_SubUnidadeESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
      Origin = 'ESPESSURA'
    end
    object Produto_SubUnidadeRENDIMENTO: TFloatField
      FieldName = 'RENDIMENTO'
      Origin = 'RENDIMENTO'
    end
    object Produto_SubUnidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object Produto_SubUnidadeFORMULA: TStringField
      FieldName = 'FORMULA'
      Origin = 'FORMULA'
      Size = 50
    end
    object Produto_SubUnidadeTEM_DIVISAO_MATERIAL: TStringField
      FieldName = 'TEM_DIVISAO_MATERIAL'
      Origin = 'TEM_DIVISAO_MATERIAL'
      Size = 1
    end
    object Produto_SubUnidadeDESCRICAO_PERSONALIZADA: TStringField
      FieldName = 'DESCRICAO_PERSONALIZADA'
      Origin = 'DESCRICAO_PERSONALIZADA'
      Size = 50
    end
    object Produto_SubUnidadeESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Origin = 'ESPECIFICACAO'
      Size = 100
    end
    object Produto_SubUnidadeTEM_FORNECEDOR: TStringField
      FieldName = 'TEM_FORNECEDOR'
      Origin = 'TEM_FORNECEDOR'
      Size = 1
    end
    object Produto_SubUnidadePESSOA_FORNECEDOR_CODIGO: TStringField
      FieldName = 'PESSOA_FORNECEDOR_CODIGO'
      Origin = 'PESSOA_FORNECEDOR_CODIGO'
      Size = 15
    end
    object Produto_SubUnidadePESSOA_FORNECEDOR_TIPO: TStringField
      FieldName = 'PESSOA_FORNECEDOR_TIPO'
      Origin = 'PESSOA_FORNECEDOR_TIPO'
      Size = 3
    end
    object Produto_SubUnidadePESSOA_FORNECEDOR_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_FORNECEDOR_SEQUENCIA'
      Origin = 'PESSOA_FORNECEDOR_SEQUENCIA'
    end
  end
end
