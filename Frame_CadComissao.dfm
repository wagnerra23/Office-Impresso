inherited FrmComissao: TFrmComissao
  Width = 579
  Height = 707
  ExplicitWidth = 579
  ExplicitHeight = 707
  object pnlVenda: TPanel [0]
    Left = 56
    Top = 414
    Width = 462
    Height = 162
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 16505534
    ParentBackground = False
    TabOrder = 6
    Visible = False
    object lcComissoes: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 462
      Height = 162
      Align = alClient
      TabOrder = 0
      object GridVenda: TcxGrid
        Left = 12
        Top = 18
        Width = 438
        Height = 110
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object GridVendaDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSComissao_Pessoa
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Clique aqui para definir um filtro'
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          object GridVendaDBTableView1GERA_COMISSAO: TcxGridDBColumn
            Caption = 'Gera Financeiro'
            DataBinding.FieldName = 'GERA_COMISSAO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Options.Editing = False
          end
          object GridVendaDBTableView1ACAO: TcxGridDBColumn
            Caption = 'A'#231#227'o'
            DataBinding.FieldName = 'ACAO'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'PAGAR'
              'IGNORAR NESTA COMISS'#195'O'
              'DESCARTAR PERMANENTEMENTE')
            SortIndex = 0
            SortOrder = soDescending
            Width = 227
          end
          object GridVendaDBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PESSOA_RESPONSAVEL_TIPO'
            Width = 43
          end
          object GridVendaDBTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
            Width = 51
          end
          object GridVendaDBTableView1RAZAOSOCIAL: TcxGridDBColumn
            Caption = 'Raz'#227'o Social'
            DataBinding.FieldName = 'RAZAOSOCIAL'
            SortIndex = 1
            SortOrder = soAscending
            Width = 249
          end
          object GridVendaDBTableView1CARGO: TcxGridDBColumn
            Caption = 'Cargo'
            DataBinding.FieldName = 'CARGO'
            Visible = False
            Width = 138
          end
          object GridVendaDBTableView1VALOR_EMABERTO: TcxGridDBColumn
            Caption = 'Total Parcelas em Aberto'
            DataBinding.FieldName = 'VALOR_EMABERTO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 128
          end
          object GridVendaDBTableView1VALOR_VENCIDA: TcxGridDBColumn
            Caption = 'Total Parcelas Vencidas'
            DataBinding.FieldName = 'VALOR_VENCIDA'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 125
          end
          object GridVendaDBTableView1VALOR_QUITADA: TcxGridDBColumn
            Caption = 'Total Parcelas Quitadas'
            DataBinding.FieldName = 'VALOR_QUITADA'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 130
          end
          object GridVendaDBTableView1VALOR_COMISSAO_APAGAR: TcxGridDBColumn
            Caption = 'Comiss'#227'o Total'
            DataBinding.FieldName = 'VALOR_COMISSAO_APAGAR'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 103
          end
          object GridVendaDBTableView1VALOR_COMISSAO: TcxGridDBColumn
            Caption = 'Comiss'#227'o a Pagar'
            DataBinding.FieldName = 'VALOR_COMISSAO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Styles.Content = FrmPrincipal.cxStyle8
            Width = 101
          end
        end
        object GridVendaLevel1: TcxGridLevel
          GridView = GridVendaDBTableView1
        end
      end
      object cxComTotal: TcxCurrencyEdit
        Left = 333
        Top = 129
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 1
        Width = 117
      end
      object lcComissoesGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object GrupoVenda: TdxLayoutGroup
        Parent = lcComissoesGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Vendas'
        Index = 0
      end
      object liGridVenda: TdxLayoutItem
        Parent = GrupoVenda
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Comiss'#245'es'
        CaptionOptions.Visible = False
        Control = GridVenda
        ControlOptions.OriginalHeight = 390
        ControlOptions.OriginalWidth = 684
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = GrupoVenda
        AlignHorz = ahRight
        CaptionOptions.Text = 'Total de comiss'#245'es a pagar'
        Control = cxComTotal
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 117
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object pnlProducao: TPanel [1]
    Left = 56
    Top = 306
    Width = 461
    Height = 105
    BevelOuter = bvNone
    Color = 16505534
    ParentBackground = False
    TabOrder = 8
    Visible = False
    object dxLayoutControl4: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 461
      Height = 105
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object GridProducao: TcxGrid
        Left = 0
        Top = 0
        Width = 461
        Height = 105
        TabOrder = 0
        object GridProducaoDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object GridProducaoLevel1: TcxGridLevel
          GridView = GridProducaoDBTableView1
        end
      end
      object dxLayoutControl4Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object GrupoProducao: TdxLayoutGroup
        Parent = dxLayoutControl4Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Producao'
        ShowBorder = False
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = GrupoProducao
        AlignHorz = ahClient
        AlignVert = avClient
        Control = GridProducao
        ControlOptions.OriginalHeight = 200
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object pnlMetas: TPanel [2]
    Left = 135
    Top = 123
    Width = 649
    Height = 342
    Color = 14803425
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 647
      Height = 340
      Align = alClient
      TabOrder = 0
      object EdtDEComissao: TcxCurrencyEdit
        Left = 10
        Top = 28
        AutoSize = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.DisplayFormat = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Height = 21
        Width = 84
      end
      object CbTipoComissao: TcxComboBox
        Left = 100
        Top = 28
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'At'#233
          'Acima De')
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 1
        Text = 'At'#233
        Width = 121
      end
      object EdtMetaComissao: TcxCurrencyEdit
        Left = 227
        Top = 28
        AutoSize = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.DisplayFormat = True
        Properties.DecimalPlaces = 8
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Height = 21
        Width = 121
      end
      object EdtPorcentComissao: TcxCurrencyEdit
        Left = 354
        Top = 28
        AutoSize = False
        Properties.DisplayFormat = '##0.##%'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 3
        Height = 21
        Width = 121
      end
      object BtnAddTabelaPreco: TcxButton
        Left = 481
        Top = 16
        Width = 33
        Height = 33
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = FrmPrincipal.ImgListBotoes32
        TabOrder = 4
      end
      object BtnRemoveTabelaPreco: TcxButton
        Left = 520
        Top = 16
        Width = 33
        Height = 33
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = FrmPrincipal.ImgListBotoes32
        TabOrder = 5
        TabStop = False
      end
      object GridPrecos: TcxGrid
        Left = 10
        Top = 55
        Width = 627
        Height = 275
        TabOrder = 6
        object GridPrecosDBTableView2: TcxGridDBTableView
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
          DataController.DataSource = DSComissao_Meta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object GridPrecosDBTableView2Column1: TcxGridDBColumn
            DataBinding.FieldName = 'De'
          end
          object GridPrecosDBTableView2TIPO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TIPO'
            Options.Editing = False
            SortIndex = 0
            SortOrder = soDescending
            Width = 95
          end
          object GridPrecosDBTableView2VALOR: TcxGridDBColumn
            Caption = 'R$ Meta'
            DataBinding.FieldName = 'VALOR'
            Width = 160
          end
          object GridPrecosDBTableView2PORCENTAGEM: TcxGridDBColumn
            Caption = '% Porcentagem'
            DataBinding.FieldName = 'PORCENTAGEM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '##0.00 %'
            Width = 110
          end
        end
        object GridPrecosLevel1: TcxGridLevel
          GridView = GridPrecosDBTableView2
        end
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avClient
        CaptionOptions.Text = 'De'
        CaptionOptions.Layout = clTop
        Control = EdtDEComissao
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 84
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avBottom
        Control = CbTipoComissao
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avBottom
        CaptionOptions.Text = 'Meta'
        CaptionOptions.Layout = clTop
        Control = EdtMetaComissao
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem14: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avBottom
        CaptionOptions.Text = '% Porcentagem'
        CaptionOptions.Layout = clTop
        Control = EdtPorcentComissao
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem15: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = BtnAddTabelaPreco
        ControlOptions.OriginalHeight = 33
        ControlOptions.OriginalWidth = 33
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem16: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = BtnRemoveTabelaPreco
        ControlOptions.OriginalHeight = 33
        ControlOptions.OriginalWidth = 33
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem17: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignVert = avClient
        Control = GridPrecos
        ControlOptions.OriginalHeight = 276
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        LayoutDirection = ldHorizontal
        Index = 0
      end
    end
  end
  inherited PnlHistorico_SLA: TPanel
    TabOrder = 10
  end
  inherited PnlHistorico_Seguidor: TPanel
    TabOrder = 4
  end
  inherited MainLayout: TdxLayoutControl
    Width = 579
    Height = 590
    ExplicitWidth = 579
    ExplicitHeight = 590
    inherited edtCodigo: TcxDBTextEdit
      Left = 524
      Top = 10
      AutoSize = False
      Properties.OnChange = edtCodigoPropertiesChange
      TabOrder = 2
      ExplicitLeft = 524
      ExplicitTop = 10
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 458
      Top = 32
      AutoSize = False
      TabOrder = 4
      ExplicitLeft = 458
      ExplicitTop = 32
    end
    inherited edtDescricao: TcxDBTextEdit
      Top = 32
      AutoSize = False
      Properties.CharCase = ecNormal
      TabOrder = 5
      ExplicitTop = 32
      ExplicitWidth = 225
      Width = 225
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 9
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 12
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 308
      Top = 32
      TabOrder = 3
      ExplicitLeft = 308
      ExplicitTop = 32
      ExplicitWidth = 66
      Width = 66
    end
    object DBEdit1: TDBEdit [6]
      Left = 10000
      Top = 10000
      Width = 95
      Height = 21
      Hint = 'Data em que foi lan'#231'ado no financeiro'
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DT_FINANCEIRO'
      DataSource = DS
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 11
      Visible = False
      OnChange = DBEdit1Change
    end
    object DBEdit2: TDBEdit [7]
      Left = 10000
      Top = 10000
      Width = 99
      Height = 21
      Hint = 'Data em que a comiss'#227'o foi gerada.'
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Ctl3D = True
      DataField = 'DT_COMISSAO_GERADA'
      DataSource = DS
      ParentCtl3D = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 10
      Visible = False
    end
    object edtTipoComissao: TcxDBComboBox [8]
      Left = 56
      Top = 54
      AutoSize = False
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Financeiro')
      Properties.OnChange = edtTipoComissaoPropertiesChange
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 520
    end
    object edtResponsavelÎPessoas: TcxDBButtonEdit [9]
      Tag = 34
      Left = 56
      Top = 10
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'PESSOA_RESPONSAVEL_SEQUENCIA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.Buttons = <
        item
          Enabled = False
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 0
      Height = 21
      Width = 87
    end
    object edtResponsavelÎPessoasÎRAZAOSOCIAL: TcxLabel [10]
      Left = 144
      Top = 10
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -14
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      Height = 21
      Width = 345
    end
    object tcComissoes: TdxTileControl [11]
      Left = 3
      Top = 78
      Width = 573
      Height = 468
      Align = alNone
      OptionsView.CenterContentHorz = True
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      TabOrder = 7
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clDefault
      Title.Font.Height = -29
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = []
      Title.IndentHorz = 0
      Title.IndentVert = 0
      OnItemDeactivateDetail = tcComissoesItemDeactivateDetail
      object dxTileControl3Group1: TdxTileControlGroup
        Index = 0
      end
      object TiFinanceiro: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Financeiro'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Text4.Value = 'Parcelas recebidas no financeiro.'
        OnActivateDetail = TiFinanceiroActivateDetail
      end
      object TiVenda: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Vendas'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Text4.Value = 'Vendas emitidas ou faturadas no per'#237'odo'
        Visible = False
        OnActivateDetail = TiVendaActivateDetail
      end
      object TiProducao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Producao'
        Text2.Align = oaBottomRight
        Text2.AssignedValues = []
        Text2.Value = 'Produtos Produzidos'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnActivateDetail = TiProducaoActivateDetail
      end
    end
    object MemoObservacao: TcxDBMemo [12]
      Left = 3
      Top = 561
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 8
      Height = 26
      Width = 573
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      CaptionOptions.Layout = clLeft
      Index = 2
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited LiedtCodigo: TdxLayoutItem
      Parent = Grupo_Nome
      AlignVert = avClient
      CaptionOptions.Layout = clLeft
      Index = 2
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = #218'ltima Altera'#231#227'o:'
      CaptionOptions.Layout = clLeft
      Index = 1
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'Refer'#234'ncia'
      CaptionOptions.Layout = clLeft
      ControlOptions.OriginalWidth = 199
      Index = 2
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 4
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Parent = nil
      Index = -1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Visible = True
      LayoutDirection = ldTabbed
      OnTabChanged = GrupoLogAlteracoesTabChanged
    end
    inherited LicbxAtivo: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Layout = clLeft
      ControlOptions.OriginalWidth = 66
      Index = 0
    end
    object liDBEdit1: TdxLayoutItem
      Padding.Top = 10
      Padding.AssignedValues = [lpavTop]
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Lan'#231'. Financeiro'
      CaptionOptions.Layout = clTop
      Control = DBEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      Index = -1
    end
    object liDBEdit2: TdxLayoutItem
      Padding.Top = 10
      Padding.AssignedValues = [lpavTop]
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Comiss'#227'o Gerada em'
      CaptionOptions.Layout = clTop
      Control = DBEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      Index = -1
    end
    object liedtTipoComissao: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'Tipo'
      Control = edtTipoComissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 286
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Grupo_Nome: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object liedtResponsavelÎPessoas: TdxLayoutItem
      Parent = Grupo_Nome
      AlignVert = avClient
      CaptionOptions.Text = 'Nome'
      Control = edtResponsavelÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = Grupo_Nome
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = edtResponsavelÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = tcComissoes
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = MemoObservacao
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 511
      ControlOptions.ShowBorder = False
      Index = 6
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 687
    Width = 579
    Visible = False
    ExplicitTop = 687
    ExplicitWidth = 579
  end
  object pnlTotal: TPanel [7]
    Left = 0
    Top = 637
    Width = 579
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = 16505534
    ParentBackground = False
    TabOrder = 5
    object dxLayoutControl2: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 579
      Height = 50
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = LookBrancoWeb
      object edtComissao: TcxCurrencyEdit
        Left = 402
        Top = 14
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 33
        Width = 177
      end
      object edtComissao_Pendente: TcxCurrencyEdit
        Left = 228
        Top = 14
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 33
        Width = 173
      end
      object btnTotais: TcxButton
        Left = 0
        Top = 0
        Width = 87
        Height = 47
        Caption = 'Totais'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000B744558745469746C6500496E666F3B6D122D86000000
          D849444154785EEDD7B10DC3201086D14C40C538EEE99881016E10B6714BE92D
          DCD17905DACB1FC955448231CA1D458AD75A9F85C1C7839955CD13B02C4B8B01
          0F11126428A70C092278308D6775055820D8802FDA80C08E063858816F5AC1DD
          0D08B0030FDA21F4060438804FA30E0857035CF5CDC7EDE05A01B6B1E6A356B0
          DF0208F8C7E85380E9D96AEF074AE71635B5000F2C10F0E26B01513020D60292
          6040AA0564C1805C0B288201453D407D09D43FC229B7A10716E2A73C8A5F4820
          80D47FC7DA0389FE48A63F94EA8FE5FA179379AE66FFDBF1133FB4970A6D7EA4
          8C0000000049454E44AE426082}
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
        TabOrder = 0
        OnClick = btnTotaisClick
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        Hidden = True
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahRight
        AlignVert = avTop
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'R$ Total de comiss'#227'o'
        CaptionOptions.Layout = clTop
        Control = edtComissao
        ControlOptions.OriginalHeight = 33
        ControlOptions.OriginalWidth = 177
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'R$ Total de comiss'#227'o Pendente'
        CaptionOptions.Layout = clTop
        Control = edtComissao_Pendente
        ControlOptions.OriginalHeight = 33
        ControlOptions.OriginalWidth = 173
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnTotais
        ControlOptions.OriginalHeight = 42
        ControlOptions.OriginalWidth = 87
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object pnlFinanceiro: TPanel [8]
    Left = 4
    Top = 81
    Width = 570
    Height = 223
    BevelOuter = bvNone
    Caption = 'pnlFinanceiro'
    Color = 16505534
    ParentBackground = False
    TabOrder = 7
    Visible = False
    object dxLayoutControl3: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 570
      Height = 223
      Align = alClient
      TabOrder = 0
      object GridFinanceiro: TcxGrid
        Left = 0
        Top = 32
        Width = 570
        Height = 191
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        object cxComissao_Financeiro: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSComissao_Financeiro
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Comiss'#227'o R$ #,###,##0.00'
              Kind = skSum
              FieldName = 'VALOR_COMISSAO'
              Column = cxComissao_FinanceiroCODPEDIDO
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ##,###,##0.00'
              Kind = skSum
              FieldName = 'Valor_COMISSAO'
              Column = cxComissao_FinanceiroVALOR_COMISSAO
            end
            item
              Format = 'R$ ##,###,##0.00'
              Kind = skSum
              FieldName = 'Valor_EmAberto'
              Column = cxComissao_FinanceiroVALOR_EMABERTO
            end
            item
              Format = 'R$ ##,###,##0.00'
              Kind = skSum
              FieldName = 'Valor_Recebida'
              Column = cxComissao_FinanceiroVALOR_RECEBIDA
            end
            item
              Format = 'R$ ##,###,##0.00'
              Kind = skSum
              FieldName = 'Valor_Vencida'
              Column = cxComissao_FinanceiroVALOR_VENCIDA
            end
            item
              Format = 'R$ ##,###,##0.00'
              Kind = skSum
              FieldName = 'Valor_COMISSAO_PENDENTE'
              Column = cxComissao_FinanceiroVALOR_COMISSAO_PENDENTE
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                  Column = cxComissao_FinanceiroCODPEDIDO
                end
                item
                  Column = cxComissao_FinanceiroSTATUS
                end
                item
                  Column = cxComissao_FinanceiroIS_PAGAR
                end>
              SummaryItems.Separator = '='
              SummaryItems = <
                item
                  Format = 'Comiss'#227'o R$ #,###,##0.00'
                  Kind = skSum
                  FieldName = 'VALOR_COMISSAO'
                  Column = cxComissao_FinanceiroVALOR_COMISSAO
                end>
            end>
          DataController.Summary.OnAfterSummary = cxComissao_FinanceiroDataControllerSummaryAfterSummary
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          object cxComissao_FinanceiroIS_PAGAR: TcxGridDBColumn
            Caption = 'Pagar Comiss'#227'o'
            DataBinding.FieldName = 'IS_PAGAR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'S'
            Properties.DisplayUnchecked = 'N'
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 36
          end
          object cxComissao_FinanceiroDT_COMPETENCIA: TcxGridDBColumn
            Caption = 'Dt. Compet'#234'ncia'
            DataBinding.FieldName = 'DT_COMPETENCIA'
            Visible = False
            Width = 70
          end
          object cxComissao_FinanceiroRAZAOSOCIAL: TcxGridDBColumn
            Caption = 'Raz'#227'o Social'
            DataBinding.FieldName = 'RAZAOSOCIAL'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 153
          end
          object cxComissao_FinanceiroVALOR: TcxGridDBColumn
            Caption = 'R$ Parcela'
            DataBinding.FieldName = 'VALOR'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 73
          end
          object cxComissao_FinanceiroPERC_COMISSAO: TcxGridDBColumn
            Caption = '% Comiss'#227'o'
            DataBinding.FieldName = 'PERC_COMISSAO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 38
          end
          object cxComissao_FinanceiroVALOR_COMISSAO_PENDENTE: TcxGridDBColumn
            Caption = 'R$ Pendente'
            DataBinding.FieldName = 'Valor_COMISSAO_PENDENTE'
            Width = 69
          end
          object cxComissao_FinanceiroVALOR_COMISSAO: TcxGridDBColumn
            Caption = 'R$ Comiss'#227'o'
            DataBinding.FieldName = 'VALOR_COMISSAO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 68
          end
          object cxComissao_FinanceiroCODPEDIDO: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'CODPEDIDO'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 52
          end
          object cxComissao_FinanceiroSTATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 86
          end
          object cxComissao_FinanceiroNAO_GERA_PROXIMA_COMISSAO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'COMISSAO_STATUS'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.IncrementalFiltering = True
            Properties.Items.Strings = (
              'Deferida'
              'Cancelada'
              'Pendente')
            Visible = False
            Width = 77
          end
          object cxComissao_FinanceiroNOTAFISCAL: TcxGridDBColumn
            Caption = 'Nota Fiscal'
            DataBinding.FieldName = 'NOTAFISCAL'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 68
          end
          object cxComissao_FinanceiroPARCELA: TcxGridDBColumn
            Caption = 'Parcela'
            DataBinding.FieldName = 'PARCELA'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxComissao_FinanceiroVENCTO: TcxGridDBColumn
            Caption = 'Data Vencimento'
            DataBinding.FieldName = 'DT_VENCIMENTO'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 95
          end
          object cxComissao_FinanceiroDATAPAGTO: TcxGridDBColumn
            Caption = 'Data Quita'#231#227'o'
            DataBinding.FieldName = 'DT_PAGAMENTO'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 81
          end
          object cxComissao_FinanceiroVALOR_PARCELA: TcxGridDBColumn
            Caption = 'R$ Valor'
            DataBinding.FieldName = 'VALOR_PARCELA'
            Visible = False
            Width = 75
          end
          object cxComissao_FinanceiroVALOR_AGENCIA: TcxGridDBColumn
            Caption = 'R$ Ag'#234'ncia'
            DataBinding.FieldName = 'VALOR_AGENCIA'
            Visible = False
          end
          object cxComissao_FinanceiroVALOR_FRETE: TcxGridDBColumn
            Caption = 'R$ Frete'
            DataBinding.FieldName = 'VALOR_FRETE'
            Visible = False
          end
          object cxComissao_FinanceiroPESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
            Visible = False
          end
          object cxComissao_FinanceiroPESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn
            DataBinding.FieldName = 'PESSOA_RESPONSAVEL_TIPO'
            Visible = False
          end
          object cxComissao_FinanceiroPESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn
            DataBinding.FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
            Visible = False
          end
          object cxComissao_FinanceiroVALOR_RECEBIDA: TcxGridDBColumn
            Caption = 'Recebidas'
            DataBinding.FieldName = 'Valor_Recebida'
            Visible = False
          end
          object cxComissao_FinanceiroVALOR_VENCIDA: TcxGridDBColumn
            Caption = 'Vencidas'
            DataBinding.FieldName = 'Valor_Vencida'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxComissao_FinanceiroVALOR_EMABERTO: TcxGridDBColumn
            Caption = 'Em Aberto'
            DataBinding.FieldName = 'Valor_EmAberto'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxComissao_FinanceiroCARGO: TcxGridDBColumn
            DataBinding.FieldName = 'CARGO'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxComissao_FinanceiroCODFINANCEIRO: TcxGridDBColumn
            Caption = 'C'#243'digo Financeiro'
            DataBinding.FieldName = 'CODFINANCEIRO'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxComissao_FinanceiroCODEMPRESA: TcxGridDBColumn
            Caption = 'Empresa'
            DataBinding.FieldName = 'CODEMPRESA'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxComissao_FinanceiroFATOR_COMERCIAL: TcxGridDBColumn
            DataBinding.FieldName = 'FATOR_COMERCIAL'
            Visible = False
          end
          object cxComissao_FinanceiroCODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxComissao_FinanceiroCODCOMISSAO: TcxGridDBColumn
            DataBinding.FieldName = 'CODCOMISSAO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxComissao_FinanceiroVALOR_PAGAR: TcxGridDBColumn
            DataBinding.FieldName = 'Valor_Pagar'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object cxComissao_FinanceiroVALOR_PENDENTE: TcxGridDBColumn
            DataBinding.FieldName = 'Valor_Pendente'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxComissao_Financeiro
        end
      end
      object dxTileControl4: TdxTileControl
        Left = 0
        Top = 0
        Width = 570
        Height = 31
        Align = alNone
        OptionsView.CenterContentVert = True
        OptionsView.IndentHorz = 2
        OptionsView.IndentVert = 0
        OptionsView.ItemHeight = 25
        TabOrder = 0
        object dxTileControlGroup10: TdxTileControlGroup
          Index = 0
        end
        object tiAdicionarParcela: TdxTileControlItem
          Glyph.ImageIndex = 0
          GroupIndex = 0
          IndexInGroup = 0
          Text1.Align = oaMiddleCenter
          Text1.AssignedValues = []
          Text1.Value = 'Adicionar parcelas'
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = tiAdicionarParcelaClick
        end
        object BtnGerarComissoes: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 2
          Text1.Align = oaMiddleCenter
          Text1.AssignedValues = []
          Text1.Value = 'Gerar'
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          Visible = False
        end
        object tiExcluirParcela: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 1
          Text1.Align = oaMiddleCenter
          Text1.AssignedValues = []
          Text1.Value = 'Remover parcela'
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = tiExcluirParcelaClick
        end
      end
      object dxLayoutControl3Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object GrupoFinanceiro: TdxLayoutGroup
        Parent = dxLayoutControl3Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Financeiro'
        ShowBorder = False
        Index = 0
      end
      object liGridFinanceiro: TdxLayoutItem
        Parent = GrupoFinanceiro
        AlignHorz = ahClient
        AlignVert = avClient
        Control = GridFinanceiro
        ControlOptions.OriginalHeight = 264
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = GrupoFinanceiro
        Control = dxTileControl4
        ControlOptions.OriginalHeight = 31
        ControlOptions.OriginalWidth = 400
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object pnlTotais: TPanel [9]
    Left = 4
    Top = 300
    Width = 161
    Height = 167
    BevelOuter = bvNone
    Color = 16505534
    ParentBackground = False
    TabOrder = 9
    Visible = False
    OnExit = pnlTotaisExit
    object dxLayoutControl5: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 161
      Height = 167
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = LookBrancoWeb
      object edtVencida: TcxCurrencyEdit
        Left = 12
        Top = 62
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 33
        Width = 136
      end
      object edtRecebida: TcxCurrencyEdit
        Left = 14
        Top = 110
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 33
        Width = 132
      end
      object edtEmAberto: TcxCurrencyEdit
        Left = 11
        Top = 14
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 33
        Width = 138
      end
      object dxLayoutGroup1: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahCenter
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'R$ Vencida'
        CaptionOptions.Layout = clTop
        Control = edtVencida
        ControlOptions.OriginalHeight = 33
        ControlOptions.OriginalWidth = 136
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahCenter
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'R$ Recebida'
        CaptionOptions.Layout = clTop
        Control = edtRecebida
        ControlOptions.OriginalHeight = 33
        ControlOptions.OriginalWidth = 132
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem21: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahCenter
        AlignVert = avTop
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'R$ Em Aberto'
        CaptionOptions.Layout = clTop
        Control = edtEmAberto
        ControlOptions.OriginalHeight = 33
        ControlOptions.OriginalWidth = 138
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  inherited pnlMenuCadastro: TPanel
    Width = 579
    ExplicitWidth = 579
    inherited tcCadastro: TdxTileControl
      Left = 254
      Width = 65
      ExplicitLeft = 254
      ExplicitWidth = 65
      inherited BtnImprimirPadrao: TdxTileControlItem
        Left = 1177
        Top = 602
      end
    end
    inherited dxTileControl1: TdxTileControl
      Left = 319
      ExplicitLeft = 319
    end
    inherited tcCadastroMenu: TdxTileControl
      Left = 51
      ExplicitLeft = 51
      inherited BtnConfiguracoes: TdxTileControlItem
        Left = 1269
      end
    end
    inherited tcCadastroAcoes: TdxTileControl
      Left = 102
      ExplicitLeft = 102
      inherited btnNovo: TdxTileControlItem
        Left = 1177
      end
      inherited btnConfirmar: TdxTileControlItem
        Left = 1177
      end
      inherited btnExcluir: TdxTileControlItem
        Left = 1177
      end
      inherited btnAlterar: TdxTileControlItem
        Left = 1177
      end
      inherited btnCancelar: TdxTileControlItem
        Left = 1177
      end
      inherited BtnAtivar: TdxTileControlItem
        Left = 1177
        Top = 257
      end
      inherited BtnDesativar: TdxTileControlItem
        Left = 1177
        Top = 283
      end
    end
    inherited tcConfig: TdxTileControl
      Left = 319
      TabOrder = 8
      ExplicitLeft = 319
    end
    inherited tcCadastro_Consulta: TdxTileControl
      Width = 47
      TabOrder = 7
      ExplicitWidth = 47
      inherited btnConsultar: TdxTileControlItem
        Left = 1177
        Top = 175
      end
    end
    inherited tcCadastro_Anterior_Proximo: TdxTileControl
      Left = 47
      Width = 4
      ExplicitLeft = 47
      ExplicitWidth = 4
      inherited btnNavegacaoAnterior: TdxTileControlItem
        Left = 1177
        Top = 216
      end
      inherited btnNavegacaoProximo: TdxTileControlItem
        Left = 1236
        Top = 216
      end
    end
    inherited dxTileControl2: TdxTileControl
      Left = 528
      ExplicitLeft = 528
    end
    object dxTileControl3: TdxTileControl
      Left = 433
      Top = 0
      Width = 95
      Height = 47
      Align = alRight
      Images = ImgListMenuConfig
      OptionsBehavior.ItemMoving = False
      OptionsBehavior.ScrollMode = smScrollButtons
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupIndent = 20
      OptionsView.GroupMaxRowCount = 1
      OptionsView.IndentHorz = 4
      OptionsView.IndentVert = 2
      OptionsView.ItemHeight = 40
      OptionsView.ItemIndent = 0
      OptionsView.ItemWidth = 44
      TabOrder = 5
      object dxTileControlGroup7: TdxTileControlGroup
        Index = 0
      end
      object dxTileControlItem13: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 11
        Glyph.IndentHorz = 3
        GroupIndex = -1
        IndexInGroup = -1
        Size = tcisLarge
        Style.GradientBeginColor = clWhite
        Style.GradientEndColor = clWhite
        Text1.Align = oaMiddleLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -12
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 42
        Text1.Value = 'Consultar'
        Text1.TextColor = 14585916
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = btnConsultarClick
        Left = 10000
        Top = 10000
      end
      object tiFinalizar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Finalizar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiFinalizarClick
      end
      object tiCancelar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Style.GradientBeginColor = clRed
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Cancelar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiCancelarClick
      end
    end
  end
  inherited DS: TDataSource
    AutoEdit = False
    Left = 126
    Top = 169
  end
  inherited TimerStatusBar: TTimer
    Left = 153
    Top = 254
  end
  inherited ImgListBotoes24: TImageList
    Left = 209
    Top = 198
  end
  inherited ImgListBotoes16: TImageList
    Left = 181
    Top = 198
  end
  inherited MenuConfig: TPopupMenu
    Left = 209
    Top = 226
    object AplicarMeta1: TMenuItem [0]
      Caption = 'Aplicar Meta'
      Visible = False
    end
    object ConfigurarMeta1: TMenuItem [1]
      Caption = 'Configurar Meta'
      Visible = False
    end
    object N3: TMenuItem [2]
      Caption = '-'
      Visible = False
    end
  end
  inherited ImgListMenuConfig: TImageList
    Left = 152
    Top = 198
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 237
    Top = 170
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    Left = 237
    Top = 198
  end
  inherited MenuImprimir: TPopupMenu
    Left = 181
    Top = 226
  end
  inherited WREventosCadastro: TWREventosCadastro
    OnPreencheVariaveisImpressaoPersonalizada = WREventosCadastroPreencheVariaveisImpressaoPersonalizada
    Versao_Configuracao = 7
    FormClassCadastro = 'TFrmComissao'
    FormClassConsulta = 'TConsuComissao'
    Left = 293
    Top = 226
  end
  inherited Cadastro: TFDQuery
    OnCalcFields = CadastroCalcFields
    SQL.Strings = (
      'select *'
      'from COMISSAO'
      'where codigo = :codigo')
    Left = 97
    Top = 170
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited TransaFD: TFDTransaction
    Left = 181
    Top = 254
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'COMISSAO'
    Left = 293
    Top = 198
  end
  inherited Fr3Cadastro: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'DATA=DATA'
      'DT_FINANCEIRO=DT_FINANCEIRO'
      'DT_COMISSAO_GERADA=DT_COMISSAO_GERADA'
      'TIPO_FINANCEIRO=TIPO_FINANCEIRO'
      'TIPO=TIPO'
      'TIPO_DATA=TIPO_DATA'
      'DT_ALTERACAO=DT_ALTERACAO'
      'ATIVO=ATIVO'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'VALOR_COMISSAO=VALOR_COMISSAO'
      'SOMA_FINANCEIRO_VENCIDA=SOMA_FINANCEIRO_VENCIDA'
      'SOMA_FINANCEIRO_EMABERTO=SOMA_FINANCEIRO_EMABERTO'
      'SOMA_FINANCEIRO_QUITADA=SOMA_FINANCEIRO_QUITADA'
      'CODCOMISSAO_MIGRACAO=CODCOMISSAO_MIGRACAO')
    Left = 265
    Top = 254
  end
  inherited MenuRegra_Acoes: TPopupMenu
    Left = 209
    Top = 170
  end
  inherited TransaConfiguracao: TFDTransaction
    Left = 209
    Top = 254
  end
  inherited CreateDaTela: TWRFormataCamposDataSets
    Left = 181
    Top = 170
  end
  object Timer1: TTimer
    Left = 237
    Top = 254
  end
  object DSComissao_Pessoa: TDataSource
    DataSet = Comissao_Pessoa
    Left = 125
    Top = 198
  end
  object MenuImpressoesPersonalizadas: TPopupMenu
    Left = 237
    Top = 226
  end
  object frxComissao: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'Comissao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'DATA=DATA'
      'DT_FINANCEIRO=DT_FINANCEIRO'
      'DT_COMISSAO_GERADA=DT_COMISSAO_GERADA'
      'TIPO_FINANCEIRO=TIPO_FINANCEIRO'
      'TIPO=TIPO'
      'TIPO_DATA=TIPO_DATA'
      'DT_ALTERACAO=DT_ALTERACAO'
      'ATIVO=ATIVO'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'VALOR_COMISSAO=VALOR_COMISSAO'
      'SOMA_FINANCEIRO_VENCIDA=SOMA_FINANCEIRO_VENCIDA'
      'SOMA_FINANCEIRO_EMABERTO=SOMA_FINANCEIRO_EMABERTO'
      'SOMA_FINANCEIRO_QUITADA=SOMA_FINANCEIRO_QUITADA'
      'CODCOMISSAO_MIGRACAO=CODCOMISSAO_MIGRACAO')
    DataSet = Cadastro
    BCDToCurrency = False
    Left = 265
    Top = 198
  end
  object frxComissao_Pessoas: TfrxDBDataset
    UserName = 'ComissaoPessoas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODCOMISSAO=CODCOMISSAO'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'VALOR_COMISSAO=VALOR_COMISSAO'
      'SOMA_FINANCEIRO_VENCIDA=SOMA_FINANCEIRO_VENCIDA'
      'SOMA_FINANCEIRO_EMABERTO=SOMA_FINANCEIRO_EMABERTO'
      'GERA_COMISSAO=GERA_COMISSAO'
      'SOMA_FINANCEIRO_QUITADA=SOMA_FINANCEIRO_QUITADA'
      'ACAO=ACAO'
      'REFERENCIA=REFERENCIA'
      'DT_ALTERACAO=DT_ALTERACAO'
      'ATIVO=ATIVO'
      'DT_FINANCEIRO=DT_FINANCEIRO'
      'TIPO_DATA=TIPO_DATA'
      'TIPO_FINANCEIRO=TIPO_FINANCEIRO'
      'MIGROU=MIGROU'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'CARGO=CARGO')
    DataSet = Comissao_Pessoa
    BCDToCurrency = False
    Left = 265
    Top = 170
  end
  object frxComissao_Financeiro: TfrxDBDataset
    UserName = 'Comissao_Financeiro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODCOMISSAO=CODCOMISSAO'
      'CODFINANCEIRO=CODFINANCEIRO'
      'CODPEDIDO=CODPEDIDO'
      'CODEMPRESA=CODEMPRESA'
      'VALOR=VALOR'
      'PERC_COMISSAO=PERC_COMISSAO'
      'VALOR_COMISSAO=VALOR_COMISSAO'
      'STATUS=STATUS'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'VALOR_AGENCIA=VALOR_AGENCIA'
      'VALOR_FRETE=VALOR_FRETE'
      'VALOR_VENCIDA=VALOR_VENCIDA'
      'VALOR_EMABERTO=VALOR_EMABERTO'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'CARGO=CARGO'
      'COMISSAO_POR_VENDA=COMISSAO_POR_VENDA'
      'GERA_COMISSAO=GERA_COMISSAO'
      'DT_VENCIMENTO=DT_VENCIMENTO'
      'DT_PAGAMENTO=DT_PAGAMENTO'
      'FATOR_COMERCIAL=FATOR_COMERCIAL'
      'DT_COMPETENCIA=DT_COMPETENCIA'
      'DT_EMISSAO=DT_EMISSAO'
      'DOCUMENTO=DOCUMENTO'
      'TIPO=TIPO'
      'CARGO=CARGO'
      'COMPETENCIA=COMPETENCIA'#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9
      'Valor_Recebida=ValorRecebida'
      'Valor_EmAberto=Valor_EmAberto'
      'Valor_Vencida=Valor_Vencida'
      'Valor_Pagar=Valor_Pagar'
      'Valor_Pendente=Valor_Pendente')
    DataSet = Comissao_Financeiro
    BCDToCurrency = False
    Left = 265
    Top = 226
  end
  object DSComissao_Meta: TDataSource
    DataSet = Comissao_Meta
    Left = 125
    Top = 254
  end
  object MenuGrid: TPopupMenu
    Left = 153
    Top = 226
    object popupMarcarTodasParcelas: TMenuItem
      Caption = 'Marcar todas as parcelas para esta pessoa'
    end
    object popupDesmarcarTodasParcelas: TMenuItem
      Caption = 'Desmarcar todas as parcelas para esta pessoa'
    end
    object MarcartodasasparcelasdestapessoacomoPendente1: TMenuItem
      Caption = 'Marcar todas as parcelas desta pessoa como PENDENTE'
    end
    object MarcartodasasparcelasdestapessoacomoDEFERIDA1: TMenuItem
      Caption = 'Marcar todas as parcelas desta pessoa como DEFERIDA'
    end
    object MarcartodasasparcelasdestapessoacomoCANCELADA1: TMenuItem
      Caption = 'Marcar todas as parcelas desta pessoa como CANCELADA'
    end
  end
  object UCHist_DataSet1: TUCHist_DataSet
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    CampoPK2 = 'CODCOMISSAO'
    Left = 293
    Top = 170
  end
  object Comissao_Pessoa: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select CP.* , P.RAZAOSOCIAL, P.CARGO'
      'from COMISSAO_PESSOA CP'
      'left join PESSOAS P on (CP.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO)'
      'where (CP.CODCOMISSAO = :CODIGO)')
    Left = 97
    Top = 198
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Comissao_Financeiro: TFDQuery
    AfterInsert = Comissao_FinanceiroAfterInsert
    BeforeEdit = Comissao_FinanceiroBeforeEdit
    BeforePost = Comissao_FinanceiroBeforePost
    OnCalcFields = Comissao_FinanceiroCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODCOMISSAO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select CF.*,F.DOCUMENTO, F.TIPO, F.RAZAOSOCIAL, F.DT_COMPETENCIA' +
        ', F.EMISSAO'
      'from COMISSAO_FINANCEIRO CF'
      
        'left join FINANCEIRO F on (F.CODIGO = CF.CODFINANCEIRO) and (F.C' +
        'ODPEDIDO = CF.CODPEDIDO) and (F.CODEMPRESA = CF.CODEMPRESA)'
      'where  (CF.CODCOMISSAO = :CODIGO)')
    Left = 97
    Top = 226
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Comissao_FinanceiroValor_Recebida: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor_Recebida'
      Calculated = True
    end
    object Comissao_FinanceiroValor_EmAberto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor_EmAberto'
      Calculated = True
    end
    object Comissao_FinanceiroValor_Vencida: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor_Vencida'
      Calculated = True
    end
  end
  object Comissao_Meta: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'SELECT * FROM COMISSAO_META'
      '')
    Left = 97
    Top = 254
  end
  object Financeiro: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select * from financeiro where codigo = 1')
    Left = 153
    Top = 170
  end
  object DSComissao_Financeiro: TDataSource
    DataSet = Comissao_Financeiro
    Left = 125
    Top = 226
  end
end
