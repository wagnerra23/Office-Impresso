inherited Frame_ConsuNota_Fiscal_Entrada: TFrame_ConsuNota_Fiscal_Entrada
  Color = 4197444
  ParentColor = False
  object PnlManifesto: TPanel [0]
    Left = 177
    Top = 181
    Width = 544
    Height = 334
    Caption = 'Manifesto do Destinat'#225'rio'
    TabOrder = 7
    Visible = False
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 542
      Height = 332
      Align = alClient
      TabOrder = 0
      object BtnManOperNaoRealizada: TcxButton
        Left = 274
        Top = 266
        Width = 185
        Height = 25
        Caption = '<op nao realizada>'
        TabOrder = 9
        OnClick = BtnManOperNaoRealizadaClick
      end
      object BtnManDesconhecimento: TcxButton
        Left = 274
        Top = 297
        Width = 185
        Height = 25
        Caption = '<desconhecimento>'
        TabOrder = 11
        OnClick = BtnManDesconhecimentoClick
      end
      object BtnManCiencia: TcxButton
        Left = 83
        Top = 266
        Width = 185
        Height = 25
        Caption = '<ciencia>'
        TabOrder = 8
        OnClick = BtnManCienciaClick
      end
      object BtnManConfirmacao: TcxButton
        Left = 83
        Top = 297
        Width = 185
        Height = 25
        Hint = 'A Nota Fiscal n'#227'o poder'#225' mais ser Cancelada ap'#243's confirmada'
        Caption = '<confirmacao>'
        TabOrder = 10
        OnClick = BtnManConfirmacaoClick
      end
      object LbManAjuda: TcxLabel
        Left = 10
        Top = 243
        Cursor = crHandPoint
        Caption = 'O que significa cada op'#231#227'o?'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.TextColor = 12615680
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lblTexto: TcxLabel
        Left = 10
        Top = 40
        Caption = 
          'Confira os dados resumidos da Nota Fiscal e efetue a Manifesta'#231#227 +
          'o do Destinat'#225'rio selecionando uma das op'#231#245'es de manifesto'
        Style.HotTrack = False
        Properties.WordWrap = True
        Transparent = True
        Width = 522
      end
      object EdtManChave: TcxTextEdit
        Left = 10
        Top = 94
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.TextStyle = [fsBold]
        TabOrder = 2
        Width = 395
      end
      object EdtManNome: TcxTextEdit
        Left = 10
        Top = 139
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.TextStyle = [fsBold]
        TabOrder = 4
        Width = 395
      end
      object BtnManCancelar: TcxButton
        Left = 465
        Top = 297
        Width = 67
        Height = 25
        Caption = 'Cancelar'
        ModalResult = 2
        TabOrder = 7
      end
      object EdtManTotal: TcxCurrencyEdit
        Left = 411
        Top = 139
        AutoSize = False
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.TextStyle = [fsBold]
        TabOrder = 5
        Height = 21
        Width = 121
      end
      object EdtManDtRecebimento: TcxTextEdit
        Left = 411
        Top = 94
        AutoSize = False
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 3
        Height = 21
        Width = 121
      end
      object lblTitulo: TcxLabel
        Left = 10
        Top = 10
        Caption = 'Titulo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Properties.WordWrap = True
        Transparent = True
        Width = 522
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object libtnOpNaoRealizada: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = BtnManOperNaoRealizada
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object libtnDesconhecimento: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = BtnManDesconhecimento
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object libtnCiencia: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'cxButton3'
        CaptionOptions.Visible = False
        Control = BtnManCiencia
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object libtnConfirmacao: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        CaptionOptions.Text = 'cxButton4'
        CaptionOptions.Visible = False
        Control = BtnManConfirmacao
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahCenter
        CaptionOptions.Text = 'New Group'
        ItemIndex = 1
        ShowBorder = False
        Index = 1
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = LbManAjuda
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 137
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup2
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup2
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutGroup3: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        ItemIndex = 1
        ShowBorder = False
        Index = 1
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = lblTexto
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 47
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Chave'
        CaptionOptions.Layout = clTop
        Control = EdtManChave
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Nome'
        CaptionOptions.Layout = clTop
        Control = EdtManNome
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem14: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahRight
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton5'
        CaptionOptions.Visible = False
        Control = BtnManCancelar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 67
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl2Group_Root
        LayoutDirection = ldHorizontal
        Index = 3
      end
      object dxLayoutItem15: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignVert = avClient
        CaptionOptions.Text = 'Total da Nota'
        CaptionOptions.Layout = clTop
        Control = EdtManTotal
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup3
        LayoutDirection = ldHorizontal
        Index = 2
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignVert = avClient
        CaptionOptions.Text = 'Data do Recebimento'
        CaptionOptions.Layout = clTop
        Control = EdtManDtRecebimento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup3
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Visible = False
        Control = lblTitulo
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 7
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  inherited pnlAgrupador: TPanel [1]
  end
  inherited pnlFiltroData: TPanel [2]
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited pnlImpressoes: TPanel [3]
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [6]
    DesignSize = (
      1248
      620)
    inherited GridConsulta: TcxGrid
      Left = 8
      Top = 176
      Width = 1729
      Height = 406
      TabOrder = 17
      ExplicitLeft = 8
      ExplicitTop = 176
      ExplicitWidth = 1729
      ExplicitHeight = 406
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
        Styles.Header = nil
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Width = 48
        end
        object GridConsultaDBTableView1NF_NUMERO: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'NF_NUMERO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 94
        end
        object GridConsultaDBTableView1NF_CHAVE: TcxGridDBColumn
          Caption = 'Chave'
          DataBinding.FieldName = 'NF_CHAVE'
          Visible = False
        end
        object GridConsultaDBTableView1NF_REFERENCIA: TcxGridDBColumn
          Caption = 'Nota Referenciada'
          DataBinding.FieldName = 'NF_REFERENCIA'
          Visible = False
        end
        object GridConsultaDBTableView1NF_DT_EMISSAO: TcxGridDBColumn
          Caption = 'Dt. Emiss'#227'o'
          DataBinding.FieldName = 'NF_DT_EMISSAO'
          OnCustomDrawCell = GridConsultaDBTableView1NF_DT_EMISSAOCustomDrawCell
          SortIndex = 0
          SortOrder = soDescending
        end
        object GridConsultaDBTableView1NF_CNPJCPF_EMITENTE: TcxGridDBColumn
          Caption = 'CNPJ / CPF'
          DataBinding.FieldName = 'NF_CNPJCPF_EMITENTE'
          Visible = False
          Width = 138
        end
        object GridConsultaDBTableView1NF_AMBIENTE: TcxGridDBColumn
          Caption = 'Ambiente'
          DataBinding.FieldName = 'NF_AMBIENTE'
          Visible = False
        end
        object GridConsultaDBTableView1NF_RAZAOSOCIAL_EMITENTE: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'NF_RAZAOSOCIAL_EMITENTE'
          Width = 299
        end
        object GridConsultaDBTableView1DT_RECEBIMENTO: TcxGridDBColumn
          Caption = 'Dt. Recebimento'
          DataBinding.FieldName = 'DT_RECEBIMENTO'
          Visible = False
        end
        object GridConsultaDBTableView1NF_TOTAL: TcxGridDBColumn
          Caption = 'R$ Total'
          DataBinding.FieldName = 'NF_TOTAL'
          Width = 129
        end
        object GridConsultaDBTableView1NF_SITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'NF_SITUACAO'
        end
        object GridConsultaDBTableView1NSU: TcxGridDBColumn
          DataBinding.FieldName = 'NSU'
          Visible = False
        end
        object GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn
          Caption = 'C'#243'digo Empresa'
          DataBinding.FieldName = 'CODEMPRESA'
          Visible = False
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
        object GridConsultaDBTableView1CODNF_ENTRADA: TcxGridDBColumn
          Caption = 'Codigo Nota Entrada'
          DataBinding.FieldName = 'CODNF_ENTRADA'
          Visible = False
        end
        object GridConsultaDBTableView1TEM_NOTA: TcxGridDBColumn
          Caption = 'Tem Nota?'
          DataBinding.FieldName = 'TEM_NOTA'
          Visible = False
          Width = 38
        end
        object GridConsultaDBTableView1TEM_COMPRA: TcxGridDBColumn
          Caption = 'Tem Compra?'
          DataBinding.FieldName = 'TEM_COMPRA'
          Visible = False
        end
        object GridConsultaDBTableView1TEM_CIENCIA: TcxGridDBColumn
          Caption = 'Tem Ciencia?'
          DataBinding.FieldName = 'TEM_CIENCIA'
          Visible = False
        end
        object GridConsultaDBTableView1TEM_CONFIRMADA: TcxGridDBColumn
          Caption = 'Tem Confirmada?'
          DataBinding.FieldName = 'TEM_CONFIRMADA'
          Visible = False
        end
        object GridConsultaDBTableView1TEM_DESCONHECIDA: TcxGridDBColumn
          Caption = 'Tem Desconhecida?'
          DataBinding.FieldName = 'TEM_DESCONHECIDA'
          Visible = False
        end
        object GridConsultaDBTableView1TEM_NAO_REALIZADA: TcxGridDBColumn
          Caption = 'Tem N'#227'o Realizada?'
          DataBinding.FieldName = 'TEM_NAO_REALIZADA'
          Visible = False
        end
        object GridConsultaDBTableView1TEM_FINALIZADO: TcxGridDBColumn
          Caption = 'Finalizado'
          DataBinding.FieldName = 'TEM_FINALIZADO'
          Visible = False
        end
        object GridConsultaDBTableView1MOTIVO_FINALIZADO: TcxGridDBColumn
          Caption = 'Motivo'
          DataBinding.FieldName = 'MOTIVO_FINALIZADO'
          Visible = False
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
        end
        object GridConsultaDBTableView1SITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'SITUACAO'
          Visible = False
        end
      end
    end
    inherited LbTotalRegistros: TcxLabel
      Left = 9481
      Top = 10000
      Visible = False
      ExplicitLeft = 9481
      ExplicitTop = 10000
    end
    inherited GridSubGrid: TcxGrid
      Top = 148
      Width = 7
      Height = 455
      TabOrder = 12
      ExplicitTop = 148
      ExplicitWidth = 7
      ExplicitHeight = 455
    end
    inherited pnlFlipRotate: TPanel
      Left = 1741
      Top = 148
      Width = 26
      Height = 453
      Color = 4197444
      ExplicitLeft = 1741
      ExplicitTop = 148
      ExplicitWidth = 26
      ExplicitHeight = 453
    end
    inherited tcAcoes: TdxTileControl
      Top = 0
      Width = 1767
      Height = 50
      ExplicitTop = 0
      ExplicitWidth = 1767
      ExplicitHeight = 50
      inherited dxTileControlItem1: TdxTileControlItem
        Visible = False
      end
      object tiAbreSefaz: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Abrir Sefaz'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = TileOperacoesClick
      end
      object tiCienciaOperacao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Ci'#234'ncia'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = TileOperacoesClick
      end
      object tiDesconhecimentoEmissao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Desconhecimento'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = TileOperacoesClick
      end
      object tiImportarCompra: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 5
        Style.BorderColor = 551663654
        Style.GradientBeginColor = 551663654
        Style.GradientEndColor = 551796480
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Importar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = TileOperacoesClick
      end
      object tiOperacaoNaoRealizada: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'N'#227'o Realizada'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = TileOperacoesClick
      end
      object tiArquivarVencidas: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 6
        Style.BorderColor = 15777152
        Style.GradientBeginColor = 15777152
        Style.GradientEndColor = 15777152
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Arquivar Vencidas'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = TileOperacoesClick
      end
      object tiReativar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 7
        Style.BorderColor = 15777152
        Style.GradientBeginColor = 15777152
        Style.GradientEndColor = 15777152
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Reativar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = TileOperacoesClick
      end
      object tiConfirmacaoOperacao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 8
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Confirma'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = TileOperacoesClick
      end
      object tiConsultaIndividual: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 9
        Style.BorderColor = 8270443
        Style.GradientBeginColor = 11421333
        Style.GradientEndColor = 8270443
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Consultar Nota'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = TileOperacoesClick
      end
      object tiConsultar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 10
        Style.BorderColor = 8270443
        Style.GradientBeginColor = 11421333
        Style.GradientEndColor = 8270443
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Consultar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = TileOperacoesClick
      end
      object tiArquivar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 11
        Style.BorderColor = 15777152
        Style.GradientBeginColor = 15777152
        Style.GradientEndColor = 15777152
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Arquivar Sele'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = TileOperacoesClick
      end
    end
    inherited cbxQuantidadeItens: TcxComboBox
      Left = 1490
      Top = 62
      ExplicitLeft = 1490
      ExplicitTop = 62
    end
    inherited lblQuantidadeItens_Mostrar: TcxLabel
      Left = 1454
      Top = 65
      ExplicitLeft = 1454
      ExplicitTop = 65
    end
    inherited lblQuantidadeItens_Registros: TcxLabel
      Left = 1550
      Top = 62
      ExplicitLeft = 1550
      ExplicitTop = 62
    end
    inherited Bevel2: TBevel
      Top = 55
      ExplicitTop = 55
    end
    inherited btnDataFiltro: TcxButton
      Left = 1331
      Top = 55
      ExplicitLeft = 1331
      ExplicitTop = 55
    end
    inherited btnMenuOpcoes: TcxButton
      Left = 1599
      Top = 55
      ExplicitLeft = 1599
      ExplicitTop = 55
    end
    inherited btnAgruparFiltro: TcxButton
      Left = 1372
      Top = 55
      ExplicitLeft = 1372
      ExplicitTop = 55
    end
    inherited btnFiltro_Filtro: TcxButton
      Left = 1413
      Top = 55
      ExplicitLeft = 1413
      ExplicitTop = 55
    end
    inherited btnImprimir_Filtro: TcxButton
      Left = 1249
      Top = 55
      TabOrder = 1
      ExplicitLeft = 1249
      ExplicitTop = 55
    end
    inherited btnAtualizar: TcxButton
      Left = 1290
      Top = 55
      TabOrder = 2
      ExplicitLeft = 1290
      ExplicitTop = 55
    end
    object WRButtonFlat1: TWRButtonFlat [15]
      Left = 9481
      Top = 10000
      Width = 134
      Height = 25
      Action = ActConsultarSEFAZ
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 26
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object GridEventos: TcxGrid [16]
      Left = 9481
      Top = 10000
      Width = 795
      Height = 84
      PopupMenu = MenuEventos
      TabOrder = 18
      Visible = False
      object GridEventosDBTableView1: TcxGridDBTableView
        OnDblClick = GridEventosDBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSEventos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object GridEventosDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object GridEventosDBTableView1ARQUIVO_XML: TcxGridDBColumn
          Caption = 'XML'
          DataBinding.FieldName = 'ARQUIVO_XML'
        end
        object GridEventosDBTableView1NF_CHAVE: TcxGridDBColumn
          Caption = 'Chave'
          DataBinding.FieldName = 'NF_CHAVE'
          Visible = False
        end
        object GridEventosDBTableView1NF_CNPJCPF_EMITENTE: TcxGridDBColumn
          Caption = 'CNPJ / CPF'
          DataBinding.FieldName = 'NF_CNPJCPF_EMITENTE'
        end
        object GridEventosDBTableView1NF_MANIFESTO: TcxGridDBColumn
          Caption = 'Manifesto'
          DataBinding.FieldName = 'NF_MANIFESTO'
        end
        object GridEventosDBTableView1NF_DT_EMISSAO: TcxGridDBColumn
          Caption = 'Dt. Emiss'#227'o'
          DataBinding.FieldName = 'NF_DT_EMISSAO'
        end
        object GridEventosDBTableView1DT_RECEBIMENTO: TcxGridDBColumn
          Caption = 'Dt. Recebimento'
          DataBinding.FieldName = 'DT_RECEBIMENTO'
        end
        object GridEventosDBTableView1SCHEMA: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'SCHEMA'
        end
      end
      object GridEventosLevel1: TcxGridLevel
        GridView = GridEventosDBTableView1
      end
    end
    object cxLabel3: TcxLabel [17]
      Left = 9481
      Top = 10000
      Caption = #218'ltima consulta'
      Style.HotTrack = False
      Style.TextColor = 11771827
      Properties.Alignment.Horz = taCenter
      Transparent = True
      Visible = False
      AnchorX = 9519
    end
    object lblDataUltimaConsulta: TcxLabel [18]
      Left = 9481
      Top = 10000
      AutoSize = False
      Caption = 'Data da Consulta'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clSilver
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      Height = 18
      Width = 145
      AnchorX = 9554
      AnchorY = 10009
    end
    object TreeListUsuarios: TcxDBTreeList [19]
      Left = 9481
      Top = 10000
      Width = 212
      Height = 514
      ParentCustomHint = False
      BorderStyle = cxcbsNone
      Bands = <
        item
        end>
      DataController.DataSource = DSMemTreeList
      DataController.ImageIndexField = 'IMAGEINDEX'
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'CODIGO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = cxImageListTreeList
      LookAndFeel.ScrollbarMode = sbmHybrid
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsData.Editing = False
      OptionsData.AnsiSort = True
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRect = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Headers = False
      OptionsView.TreeLineColor = clWhite
      OptionsView.TreeLineStyle = tllsNone
      ParentFont = False
      RootValue = -1
      ScrollbarAnnotations.CustomAnnotations = <>
      Styles.Background = EstiloRoxinhoFundo
      Styles.Content = EstiloRoxinhoFundo
      Styles.Inactive = EstiloRoxinhoFonte
      Styles.Selection = EstiloRoxinhoFonte
      Styles.BandBackground = EstiloRoxinhoFundo
      Styles.BandContent = EstiloRoxinhoFundo
      TabOrder = 28
      Visible = False
      OnFocusedNodeChanged = TreeListUsuariosFocusedNodeChanged
      object cxDBTreeListCODIGO: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CODIGO'
        Width = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        SortOrder = soAscending
        SortIndex = 2
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListPARENT: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'PARENT'
        Width = 100
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        SortOrder = soAscending
        SortIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListDESCRICAO: TcxDBTreeListColumn
        Caption.Text = 'Filtro'
        DataBinding.FieldName = 'DESCRICAO'
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListUsuarioscxDBTreeListTABELA: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'TABELA'
        Width = 100
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListUsuarioscxDBTreeListCHAVE_PK1: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CHAVE_PK1'
        Width = 100
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListUsuarioscxDBTreeListQUANT: TcxDBTreeListColumn
        DataBinding.FieldName = 'QUANT'
        MinWidth = 15
        Width = 15
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object btnCertificado: TcxButton [20]
      Left = 9481
      Top = 10000
      Width = 149
      Height = 20
      Anchors = [akTop, akRight]
      Caption = 'Carregue o certificado'
      Colors.DefaultText = clBlue
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      LookAndFeel.NativeStyle = False
      OptionsImage.Spacing = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 29
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCertificadoClick
    end
    object cxLabel2: TcxLabel [21]
      Left = 9481
      Top = 10000
      AutoSize = False
      Caption = 
        'Ap'#243's a manifesta'#231#227'o demora de 5 '#224' 10 minutos para ter o retorno ' +
        'da SEFAZ, podendo demorar at'#233' 1 dia.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -10
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 11771827
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.ShowEndEllipsis = True
      Transparent = True
      Visible = False
      Height = 22
      Width = 475
      AnchorX = 9956
      AnchorY = 10011
    end
    object btnConsultaNota: TWRButtonFlat [22]
      Left = 1627
      Top = 57
      Width = 140
      Height = 29
      Action = ActConsultarSEFAZ
      Caption = 'Baixar Notas e CTe'
      Colors.Default = clTeal
      Colors.DefaultText = clWhite
      TabOrder = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboEmpresa: TcxLookupComboBox [23]
      Left = 9481
      Top = 10000
      Properties.ListColumns = <>
      Properties.OnChange = ComboEmpresaPropertiesChange
      Style.HotTrack = False
      TabOrder = 30
      Visible = False
      Width = 233
    end
    object cxButton1: TcxButton [24]
      Left = 9481
      Top = 10000
      Width = 26
      Height = 17
      Hint = 'Menu'
      Anchors = [akTop, akRight]
      Caption = 'Menu'
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      LookAndFeel.NativeStyle = True
      OptionsImage.Images = ImgListBotoesPesquisa
      OptionsImage.Spacing = 0
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 24
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtVerificaValidadeCertificado: TcxButtonEdit [25]
      Left = 105
      Top = 154
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Buttons = <
        item
          Caption = 'Configurar'
          Default = True
          Kind = bkText
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtVerificaValidadeCertificadoPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.IsFontAssigned = True
      TabOrder = 14
      Height = 21
      Width = 175
    end
    object edtProximaConsulta: TcxButtonEdit [26]
      Left = 474
      Top = 154
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Buttons = <
        item
          Caption = '?'
          Default = True
          Kind = bkText
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtProximaConsultaPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.IsFontAssigned = True
      TabOrder = 15
      Height = 21
      Width = 194
    end
    object lblMensagemAviso: TcxLabel [27]
      Left = 0
      Top = 88
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Caption = 
        'Esta tela est'#225' sendo utilizada pelo usu'#225'rio EDUARDO no Computado' +
        'r Desktop-ZHCKS01. Para utiliz'#225'-la voc'#234' deve assumir o controle ' +
        'dela clicando neste painel.'
      ParentColor = False
      ParentFont = False
      Style.Color = clYellow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = [fsBold, fsUnderline]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Height = 60
      Width = 1767
      AnchorX = 884
      AnchorY = 118
    end
    object cxLabel4: TcxLabel [28]
      Left = 674
      Top = 148
      Caption = 'cxLabel4'
      Style.HotTrack = False
      Style.TransparentBorder = False
      Transparent = True
    end
    inherited LiGridConsulta: TdxLayoutItem
      Parent = dxLayoutGroup10
      ControlOptions.OriginalWidth = 500
      Index = 1
    end
    inherited GrupoAlterarView: TdxLayoutGroup
      Parent = nil
      AlignHorz = ahLeft
      Index = -1
    end
    inherited LiGridSubGrid: TdxLayoutItem
      Parent = GrupoDados
      ControlOptions.OriginalWidth = 7
    end
    inherited SplitSubGrid: TdxLayoutSplitterItem
      Parent = nil
      AlignHorz = ahLeft
      AlignVert = avClient
      SizeOptions.Width = 1
      Index = -1
    end
    inherited LipnlFlipRotate: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      ControlOptions.OriginalWidth = 26
      Index = 1
    end
    inherited splFlipRotate: TdxLayoutSplitterItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      Index = 0
    end
    inherited GrupoPesquizarEGrid: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited GrupoFrame: TdxLayoutGroup
      Visible = False
      LayoutDirection = ldHorizontal
      Index = 2
    end
    inherited GrupoDados: TdxLayoutGroup
      ItemIndex = 1
      Index = 4
    end
    inherited litcAcoes: TdxLayoutItem
      Parent = GrupoPesquizarEGrid
      AlignVert = avTop
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 1248
    end
    inherited GrupoFooter: TdxLayoutGroup
      Index = 0
    end
    inherited GrupoMeio: TdxLayoutGroup
      Index = 0
    end
    inherited GrpoMostrarRegistros: TdxLayoutGroup
      Index = 5
    end
    inherited liBevel: TdxLayoutItem
      ControlOptions.OriginalWidth = 1248
    end
    inherited libtnDataFiltro: TdxLayoutItem
      Index = 2
    end
    inherited libtnMenuOpcoes: TdxLayoutItem
      Index = 6
    end
    inherited libtnAgruparFiltro: TdxLayoutItem
      Index = 3
    end
    inherited libtnFiltro_Filtro: TdxLayoutItem
      Index = 4
    end
    inherited libtnImprimir_Filtro: TdxLayoutItem
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoPesquizarEGrid
      CaptionOptions.Text = 'New Group'
      Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LiGridEventos: TdxLayoutItem
      Parent = GrupoEventos
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridEventos
      ControlOptions.OriginalHeight = 84
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoEventos: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      CaptionOptions.Text = 'Eventos'
      LayoutLookAndFeel = LookBrancoWeb
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 2
    end
    object SplitterEventos: TdxLayoutSplitterItem
      Parent = dxLayoutGroup6
      LayoutLookAndFeel = LookBrancoWeb
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = lblDataUltimaConsulta
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiTreeListUsuarios: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      Control = TreeListUsuarios
      ControlOptions.OriginalHeight = 514
      ControlOptions.OriginalWidth = 212
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = GrupoDados
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      AlignHorz = ahLeft
      AlignVert = avClient
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = -1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object LibtnCertificado: TdxLayoutItem
      Parent = LiAvisoCertificado
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnCertificado
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 149
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiAvisoCertificado: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 475
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object libtnConsultaNota: TdxLayoutItem
      Parent = GrupoFrame
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'WRButtonFlat4'
      CaptionOptions.Visible = False
      Control = btnConsultaNota
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object cbxComboEmpresa: TdxLayoutItem
      Parent = dxLayoutGroup4
      Control = ComboEmpresa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 233
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahLeft
      AlignVert = avClient
      Offsets.Left = 10
      Offsets.Top = 6
      CaptionOptions.Text = 'Certificado Digital'
      Control = edtVerificaValidadeCertificado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignVert = avClient
      Offsets.Left = 10
      Offsets.Top = 6
      CaptionOptions.Text = 'Tempo para Pr'#243'xima Consulta V'#225'lida'
      Control = edtProximaConsulta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 194
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lilblAvisoPanel: TdxLayoutItem
      Parent = GrupoPesquizarEGrid
      AlignHorz = ahClient
      AlignVert = avTop
      Visible = False
      CaptionOptions.Text = 'cxLabel4'
      CaptionOptions.Visible = False
      Control = lblMensagemAviso
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxLabel4
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object pnlEmpresa: TPanel [7]
    Left = 524
    Top = 107
    Width = 573
    Height = 441
    Caption = 'Selecionar Empresa'
    Color = 4197444
    ParentBackground = False
    TabOrder = 6
    Visible = False
    object dxLayoutControl4: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 571
      Height = 439
      Align = alClient
      TabOrder = 0
      object tcMenuEmpresa: TdxTileControl
        Left = 10
        Top = 10
        Width = 551
        Height = 419
        Align = alNone
        OptionsBehavior.ItemMoving = False
        OptionsView.GroupBlockMaxColumnCount = 1
        OptionsView.GroupIndent = 0
        OptionsView.GroupMaxRowCount = 1000
        OptionsView.IndentHorz = 0
        OptionsView.IndentVert = 0
        OptionsView.ItemHeight = 90
        OptionsView.ItemIndent = 0
        OptionsView.ItemWidth = 184
        TabOrder = 0
        Transparent = True
        object tcMenuEmpresaGroup1: TdxTileControlGroup
          Index = 0
        end
        object tcMenuEmpresaGroup2: TdxTileControlGroup
          Index = 1
        end
        object tiEmpresaCarregada: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 0
          Size = tcisLarge
          Text1.Align = oaTopCenter
          Text1.AssignedValues = [avFont]
          Text1.Font.Charset = DEFAULT_CHARSET
          Text1.Font.Color = clDefault
          Text1.Font.Height = -20
          Text1.Font.Name = 'Segoe UI'
          Text1.Font.Style = []
          Text2.Align = oaMiddleCenter
          Text2.AssignedValues = []
          Text2.Value = 'sadasdsada'
          Text3.AssignedValues = []
          Text4.AssignedValues = []
        end
        object tiCarregarCertificado: TdxTileControlItem
          GroupIndex = 1
          IndexInGroup = 0
          Text1.AssignedValues = []
          Text2.Align = oaMiddleCenter
          Text2.Alignment = taCenter
          Text2.AssignedValues = []
          Text2.Value = 'Carregar Certificado'
          Text2.WordWrap = True
          Text3.AssignedValues = []
          Text4.AssignedValues = []
        end
      end
      object dxLayoutControl4Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem23: TdxLayoutItem
        Parent = dxLayoutControl4Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        Control = tcMenuEmpresa
        ControlOptions.OriginalHeight = 300
        ControlOptions.OriginalWidth = 400
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
    object pnlMotivo: TPanel
      Left = 0
      Top = 0
      Width = 500
      Height = 200
      Caption = 'Motivo'
      Color = 4197444
      ParentBackground = False
      TabOrder = 1
      Visible = False
      object dxLayoutControl5: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 498
        Height = 198
        Align = alClient
        TabOrder = 0
        object cbxMotivo: TcxComboBox
          Left = 10
          Top = 28
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            'Nota j'#225' importada anteriormente'
            'Nota n'#227'o ter'#225' entrada em estoque'
            'Outros')
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Text = 'Nota j'#225' importada anteriormente.'
          Width = 478
        end
        object btnCancelar: TcxButton
          Left = 10
          Top = 158
          Width = 236
          Height = 30
          Caption = 'Cancelar'
          ModalResult = 2
          TabOrder = 2
        end
        object btnConfirmar: TcxButton
          Left = 252
          Top = 158
          Width = 236
          Height = 30
          Caption = 'Confirmar'
          ModalResult = 11
          TabOrder = 3
          OnClick = btnConfirmarClick
        end
        object edtObservacao: TcxTextEdit
          Left = 10
          Top = 73
          AutoSize = False
          Properties.Alignment.Vert = taTopJustify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          TextHint = 'Insira aqui sua observa'#231#227'o...'
          Height = 74
          Width = 478
        end
        object dxLayoutGroup8: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          Hidden = True
          ItemIndex = 1
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutGroup8
          Padding.AssignedValues = [lpavBottom]
          CaptionOptions.Text = 'Selecione o motivo do Arquivamento da Nota.'
          CaptionOptions.Layout = clTop
          Control = cbxMotivo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup8
          AlignHorz = ahClient
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnCancelar
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 10
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem21: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup8
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'cxButton3'
          CaptionOptions.Visible = False
          Control = btnConfirmar
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 10
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutGroup8
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object dxLayoutItem24: TdxLayoutItem
          Parent = dxLayoutGroup8
          AlignHorz = ahClient
          AlignVert = avClient
          Padding.Bottom = 5
          Padding.AssignedValues = [lpavBottom]
          CaptionOptions.Text = 'Observa'#231#227'o'
          CaptionOptions.Layout = clTop
          Control = edtObservacao
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 43557.393448414360000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited PopupMenu_Imprimir: TPopupMenu
    object Visualizar1: TMenuItem
      Action = ActVisualizar
      Default = True
    end
    object ActBaixarNota1: TMenuItem
      Action = ActBaixarNota
    end
  end
  inherited Transa: TFDTransaction
    Options.AutoStop = False
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = 4197444
      ItemOptions.ControlBorderColor = 4197444
      LookAndFeel.NativeStyle = True
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      Offsets.ItemOffset = 0
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited TimerPesquisa: TTimer
    Enabled = True
    Interval = 300000
  end
  inherited cxEditStyleController1: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited MenuAcoes: TPopupMenu
    object ConsultaNFe1: TMenuItem [1]
      Caption = 'Consultar Nota Individualmente'
      OnClick = ConsultaNFe1Click
    end
    object N1: TMenuItem [2]
      Caption = '-'
    end
    object Visualizar3: TMenuItem [3]
      Action = ActVisualizar
    end
    object ManifestaodoDestinatrio1: TMenuItem [4]
      Action = ActManifestacaoDoDestinatario
    end
  end
  inherited ActListConsulta: TActionList
    object ActConsultarSEFAZ: TAction
      ImageIndex = 29
      OnExecute = ActConsultarSEFAZExecute
    end
    object ActProcessarRegistros: TAction
      Caption = 'Processar Registros'
      OnExecute = ActProcessarRegistrosExecute
    end
    object ActManifestacaoDoDestinatario: TAction
      Caption = 'Manifestar'
      OnExecute = ActManifestacaoDoDestinatarioExecute
    end
    object ActVisualizar: TAction
      Caption = 'Visualizar'
      OnExecute = ActVisualizarExecute
    end
    object ActEventoVisualizar: TAction
      Category = 'Eventos'
      Caption = 'Visualizar'
      OnExecute = ActEventoVisualizarExecute
    end
    object ActImportarNotas: TAction
      Caption = 'Importar Para Compra'
      OnExecute = ActImportarNotasExecute
    end
    object ActBaixarNota: TAction
      Caption = 'ActBaixarNota'
      Visible = False
      OnExecute = ActBaixarNotaExecute
    end
    object ActVisualizarXML: TAction
      Caption = 'Visualizar XML'
      OnExecute = ActVisualizarXMLExecute
    end
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassConsulta = 'TConsuNota_Fiscal_Entrada'
    UsaCadastroPocket = True
  end
  inherited DS: TDataSource
    OnDataChange = DSDataChange
  end
  inherited QueryDragAndDrop: TFDQuery
    SQL.Strings = (
      'select * from NF_ENTRADA_MANIFESTO where CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'NF_ENTRADA_MANIFESTO '
    Modulo = 'COMPRA'
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    UpdateOptions.AssignedValues = [uvEUpdate]
    SQL.Strings = (
      'select *'
      'from NF_ENTRADA_MANIFESTO N'
      ''
      ''
      ' ')
    object ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object ConsultaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      Origin = 'CODEMPRESA'
      Required = True
    end
    object ConsultaNF_NUMERO: TLargeintField
      FieldName = 'NF_NUMERO'
      Origin = 'NF_NUMERO'
    end
    object ConsultaNF_CHAVE: TStringField
      FieldName = 'NF_CHAVE'
      Origin = 'NF_CHAVE'
      Required = True
      Size = 44
    end
    object ConsultaNF_CNPJCPF_EMITENTE: TStringField
      FieldName = 'NF_CNPJCPF_EMITENTE'
      Origin = 'NF_CNPJCPF_EMITENTE'
      Size = 18
    end
    object ConsultaNF_AMBIENTE: TIntegerField
      FieldName = 'NF_AMBIENTE'
      Origin = 'NF_AMBIENTE'
    end
    object ConsultaNF_RAZAOSOCIAL_EMITENTE: TStringField
      FieldName = 'NF_RAZAOSOCIAL_EMITENTE'
      Origin = 'NF_RAZAOSOCIAL_EMITENTE'
      Size = 60
    end
    object ConsultaNF_DT_EMISSAO: TSQLTimeStampField
      FieldName = 'NF_DT_EMISSAO'
      Origin = 'NF_DT_EMISSAO'
    end
    object ConsultaDT_RECEBIMENTO: TSQLTimeStampField
      FieldName = 'DT_RECEBIMENTO'
      Origin = 'DT_RECEBIMENTO'
    end
    object ConsultaNF_TOTAL: TFloatField
      FieldName = 'NF_TOTAL'
      Origin = 'NF_TOTAL'
    end
    object ConsultaNF_SITUACAO: TStringField
      FieldName = 'NF_SITUACAO'
      Origin = 'NF_SITUACAO'
      Size = 30
    end
    object ConsultaNSU: TLargeintField
      FieldName = 'NSU'
      Origin = 'NSU'
    end
    object ConsultaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaCODNF_ENTRADA: TStringField
      FieldName = 'CODNF_ENTRADA'
      Origin = 'CODNF_ENTRADA'
      Size = 10
    end
    object ConsultaTEM_NOTA: TStringField
      FieldName = 'TEM_NOTA'
      Origin = 'TEM_NOTA'
      Size = 1
    end
    object ConsultaTEM_COMPRA: TStringField
      FieldName = 'TEM_COMPRA'
      Origin = 'TEM_COMPRA'
      Size = 1
    end
    object ConsultaTEM_CIENCIA: TStringField
      FieldName = 'TEM_CIENCIA'
      Origin = 'TEM_CIENCIA'
      Size = 1
    end
    object ConsultaTEM_CONFIRMADA: TStringField
      FieldName = 'TEM_CONFIRMADA'
      Origin = 'TEM_CONFIRMADA'
      Size = 1
    end
    object ConsultaTEM_DESCONHECIDA: TStringField
      FieldName = 'TEM_DESCONHECIDA'
      Origin = 'TEM_DESCONHECIDA'
      Size = 1
    end
    object ConsultaTEM_NAO_REALIZADA: TStringField
      FieldName = 'TEM_NAO_REALIZADA'
      Origin = 'TEM_NAO_REALIZADA'
      Size = 1
    end
    object ConsultaNF_REFERENCIA: TStringField
      FieldName = 'NF_REFERENCIA'
      Origin = 'NF_REFERENCIA'
      Size = 44
    end
    object ConsultaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object ConsultaTEM_SOLICITADO_CIENCIA: TStringField
      FieldName = 'TEM_SOLICITADO_CIENCIA'
      Origin = 'TEM_SOLICITADO_CIENCIA'
      Size = 1
    end
    object ConsultaTEM_FINALIZADO: TStringField
      FieldName = 'TEM_FINALIZADO'
      Origin = 'TEM_FINALIZADO'
      Size = 1
    end
    object ConsultaMOTIVO_FINALIZADO: TStringField
      FieldName = 'MOTIVO_FINALIZADO'
      Origin = 'MOTIVO_FINALIZADO'
      Size = 100
    end
    object ConsultaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 500
    end
    object ConsultaARQUIVO_XML: TBlobField
      FieldName = 'ARQUIVO_XML'
      Origin = 'ARQUIVO_XML'
    end
    object ConsultaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 50
    end
  end
  object Eventos: TFDQuery
    BeforeOpen = EventosBeforeOpen
    MasterSource = DS
    MasterFields = 'NF_CHAVE'
    Connection = DMBanco.Banco
    Transaction = TransaRequisicao
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select CODIGO, NF_CHAVE, NF_CNPJCPF_EMITENTE, NF_MANIFESTO, NF_D' +
        'T_EMISSAO,'
      '       DT_RECEBIMENTO, SCHEMA, ARQUIVO_XML, TIPO'
      'from NOTA_FISCAL_ENTRADA'
      'where (NF_CHAVE = :NF_CHAVE)')
    Left = 268
    Top = 361
    ParamData = <
      item
        Name = 'NF_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 44
      end>
    object EventosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EventosNF_CHAVE: TStringField
      FieldName = 'NF_CHAVE'
      Origin = 'NF_CHAVE'
      Size = 44
    end
    object EventosNF_CNPJCPF_EMITENTE: TStringField
      FieldName = 'NF_CNPJCPF_EMITENTE'
      Origin = 'NF_CNPJCPF_EMITENTE'
      Size = 18
    end
    object EventosNF_MANIFESTO: TStringField
      FieldName = 'NF_MANIFESTO'
      Origin = 'NF_MANIFESTO'
      Size = 30
    end
    object EventosNF_DT_EMISSAO: TSQLTimeStampField
      FieldName = 'NF_DT_EMISSAO'
      Origin = 'NF_DT_EMISSAO'
    end
    object EventosDT_RECEBIMENTO: TSQLTimeStampField
      FieldName = 'DT_RECEBIMENTO'
      Origin = 'DT_RECEBIMENTO'
    end
    object EventosSCHEMA: TStringField
      FieldName = 'SCHEMA'
      Origin = '"SCHEMA"'
      Size = 15
    end
    object EventosARQUIVO_XML: TBlobField
      FieldName = 'ARQUIVO_XML'
      Origin = 'ARQUIVO_XML'
    end
  end
  object DSEventos: TDataSource
    DataSet = Eventos
    OnDataChange = DSEventosDataChange
    Left = 296
    Top = 361
  end
  object MenuEventos: TPopupMenu
    Left = 324
    Top = 361
    object Visualizar2: TMenuItem
      Action = ActVisualizarXML
      Default = True
    end
  end
  object DSMemTreeList: TDataSource
    DataSet = MemTreeList
    Left = 295
    Top = 389
  end
  object MemTreeList: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'MODULO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PARENT'
        DataType = ftInteger
      end
      item
        Name = 'IMAGEINDEX'
        DataType = ftInteger
      end
      item
        Name = 'QUANT'
        DataType = ftInteger
      end
      item
        Name = 'TABELA'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'CHAVE_PK1'
        DataType = ftInteger
      end
      item
        Name = 'CHAVE_PK2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CHAVE_PK3'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 267
    Top = 389
    object MemTreeListCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object MemTreeListDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object MemTreeListMODULO: TStringField
      FieldName = 'MODULO'
      Size = 255
    end
    object MemTreeListPARENT: TIntegerField
      FieldName = 'PARENT'
    end
    object MemTreeListIMAGEINDEX: TIntegerField
      FieldName = 'IMAGEINDEX'
    end
    object MemTreeListQUANT: TIntegerField
      FieldName = 'QUANT'
    end
    object MemTreeListTABELA: TStringField
      FieldName = 'TABELA'
      Size = 150
    end
    object MemTreeListCHAVE_PK1: TIntegerField
      FieldName = 'CHAVE_PK1'
    end
    object MemTreeListCHAE_PK2: TStringField
      FieldName = 'CHAVE_PK2'
      Size = 40
    end
    object MemTreeListCHAVE_PK3: TStringField
      FieldName = 'CHAVE_PK3'
    end
  end
  object cxImageListTreeList: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 511
    Top = 246
    Bitmap = {
      494C010117001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      000008070430534A2C98AF9B5CDCE5CC7AFCE7CD7AFDB09D5DDD564B2D9A0908
      0433000000000000000000000000000000000000000000000000000000000000
      00000E0D0840857646C0EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF3B34
      1F80000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030220584E2E9C5C5230A004040224000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000085249
      2B97E9CF7BFE998851CE39321E7E1A170E561A170E5637311D7C96854FCCE9CF
      7CFE574C2E9B0000000A00000000000000000000000000000000000000008576
      46C0EBD17CFF857646C03B341F800000000000000000000000003B341F80EBD1
      7CFFEBD17CFF0E0D084000000000000000000000000000000000000000000000
      00000000000000000000100F0945796B40B7796B40B713110A4B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000008817344BDCAB4
      6BED18150C520000000000000000000000000000000000000000000000001513
      0B4EC5AF68EA897A48C30000000A000000000000000000000000857646C08576
      46C00E0D08400000000000000000000000000000000000000000000000000000
      00003B341F80EBD17CFF0E0D08400000000000000000272214685B51309F5B51
      309F5B51309F5B51309F5B51309F5B51309F5B51309F5B51309F5B51309F5B51
      309F5B51309F5B51309F2B25166D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052482B96C8B26AEC0605
      032A00000000000000000000000075683DB4887947C200000004000000000000
      000004040225C2AD67E8584F2F9D00000000000000003B341F80EBD17CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003B341F80EBD17CFF000000000000000001010016B09D5DDDEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFB7A360E10202011A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000706042FE9CF7BFE18150C520000
      0000000000000000000000000000AA9759D9BDA964E500000008000000000000
      00000000000013110A4AE9CF7CFE0908053400000000EBD17CFF3B341F800000
      0000000000000000000000000000000000000E0D084000000000000000000000
      00000000000000000000EBD17CFF3B341F80000000000000000005050228CEB7
      6DEFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFD3BC70F20706032D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000050472A959E8D54D1000000000000
      0000000000000000000000000000000000060000000800000000000000000000
      0000000000000000000091804CC8574C2E9B3B341F80EBD17CFF000000000000
      00003B341F80EBD17CFF857646C00E0D0840EBD17CFF857646C0000000000000
      000000000000000000003B341F80EBD17CFF0000000000000000000000008475
      46BFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFDDC575F8EBD1
      7CFF8F7F4CC70000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A59357D63D372083000000000000
      00000000000000000000000000006C6039AD776A3EB500000000000000000000
      0000000000000000000036301C7BB09D5DDD3B341F80857646C0000000000E0D
      0840EBD17CFFEBD17CFF3B341F80EBD17CFFEBD17CFFEBD17CFF857646C00000
      000000000000000000000E0D0840EBD17CFF0000000000000000000000008475
      46BFEBD17CFFEBD17CFFEBD17CFFB5A160E02420136501010014000000000000
      000A0706042F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9C172F51F1C105E000000000000
      00000000000000000000000000006B5F38ACD0B86DF00202011B000000000000
      000000000000000000001A170E56E7CD7AFD3B341F803B341F800E0D0840EBD1
      7CFFEBD17CFF3B341F80EBD17CFFEBD17CFF0E0D0840857646C0EBD17CFF8576
      46C00E0D08400000000000000000EBD17CFF0000000000000000000000008475
      46BFEBD17CFFEBD17CFF776A3FB601010014342E1B79A39156D5D1BB6FF1A08F
      54D3312B1A750000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7BF72F4201C115F000000000000
      000000000000000000000000000003030221B7A360E1AD995BDB0202011B0000
      000000000000000000001A170E56E6CC7AFC3B341F803B341F800E0D0840EBD1
      7CFF0E0D084000000000857646C03B341F80EBD17CFF857646C0857646C0EBD1
      7CFFEBD17CFF0E0D084000000000EBD17CFF0000000000000000000000008475
      46BFEBD17CFFA49256D500000011867847C1EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF7F7143BC00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A39156D53F382185000000000000
      00000000000000000000000000000000000004030222CEB76DEF6F633AAF0000
      0000000000000000000037311D7CAF9B5CDC3B341F80EBD17CFF000000000000
      000000000000000000000000000000000000857646C0EBD17CFF857646C03B34
      1F80EBD17CFFEBD17CFF3B341F80EBD17CFF0000000000000000000000008475
      46BFEBD17CFF19160D5438321D7DEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFF312B1A75000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D442992A29056D4000000010000
      000000000000433B23895A502F9E000000010000000095854FCBAF9B5BDC0000
      0000000000000000000096854FCC534A2C980E0D0840EBD17CFF0E0D08400000
      00000000000000000000000000000000000000000000857646C00E0D08400000
      00000E0D08403B341F80857646C0857646C00000000000000000000000008475
      46BFE3C978FB00000009AC995BDAEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFA08F54D3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606032CE7CD7AFD1B180E570000
      0000000000002F2A1973EBD17CFF74663DB3615633A4EBD17CFF5E5431A10000
      00000000000015130B4EE9CF7BFE0807043000000000857646C0857646C00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0D0840EBD17CFF0E0D08400000000000000000000000007266
      3DB2C1AC66E800000000DCC374F7EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFD1BB6FF1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004D442992CDB66CEE0807
      042F0000000000000002302B1A759F8D54D2AF9B5CDC564B2D9A000000100000
      00000605032AC7B169EB53492B9800000000000000000E0D0840EBD17CFF8576
      46C0000000000000000000000000000000000000000000000000000000000000
      000000000000857646C0857646C0000000000000000000000000000000001917
      0D55DBC374F700000003AD9A5BDBEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFA39156D5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000067C6E41B9D0B9
      6EF01D1A0F5A0000000100000000000000000000000000000000000000011A17
      0E56CBB56BED847546BF000000080000000000000000000000000E0D0840EBD1
      7CFF857646C00E0D084000000000000000000000000000000000000000003B34
      1F80EBD17CFF857646C000000000000000000000000000000000000000000000
      000023201364040302223B341F81EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFF342E1B79000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000064A42
      2790E5CC7AFCA59357D6403922861F1C105E1F1C105E3F382185A29056D4E7CD
      7AFD4E4529930000000800000000000000000000000000000000000000000E0D
      0840857646C0EBD17CFFEBD17CFF3B341F803B341F80857646C0EBD17CFFEBD1
      7CFF3B341F800000000000000000000000000000000000000000000000000000
      00000000000000000000000000098F7F4BC7EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF867847C100000007000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060503294B422790A29056D4D7BF72F4D8C072F5A39256D54D4429920606
      032C000000000000000000000000000000000000000000000000000000000000
      0000000000000E0D08403B341F803B341F803B341F803B341F803B341F800000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000093B341F81AE9B5CDCDCC374F7AC98
      5BDA38311D7D0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000008EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF000000100000000000000000000000000000
      000008070430534A2C98AF9B5CDCE5CC7AFCE7CD7AFDB09D5DDD564B2D9A0908
      0433000000000000000000000000000000000000000000000000000000000000
      000008070430534A2C98AF9B5CDCE5CC7AFCE7CD7AFDB09D5DDD564B2D9A0908
      0433000000000000000000000000000000000000000000000000000000000000
      000008070430534A2C98AF9B5CDCE5CC7AFCE7CD7AFDB09D5DDD564B2D9A0908
      04330000000000000000000000000000000000000008EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF000000100000000000000000000000085249
      2B97E9CF7BFE998851CE39321E7E1A170E561A170E5637311D7C96854FCCE9CF
      7CFE574C2E9B0000000A00000000000000000000000000000000000000085249
      2B97E9CF7BFE998851CE39321E7E1A170E561A170E5637311D7C96854FCCE9CF
      7CFE574C2E9B0000000A00000000000000000000000000000000000000085249
      2B97E9CF7BFE998851CE39321E7E1A170E561A170E5637311D7C96854FCCE9CF
      7CFE574C2E9B0000000A00000000000000001D151F65D8B59CFFD8B59CFFD8B5
      9CFFD8B59CFFD8B59CFFD8B59CFFD8B59CFFD8B59CFFD8B59CFFD8B59CFFD8B5
      9CFFD8B59CFFD8B59CFFD8B59CFF2018226A0000000000000008817344BDCAB4
      6BED18150C520000000000000000000000000000000000000000000000001513
      0B4EC5AF68EA897A48C30000000A000000000000000000000008817344BDCAB4
      6BED18150C520000000000000006000000000000000000000000000000001513
      0B4EC5AF68EA897A48C30000000A000000000000000000000008817344BDCAB4
      6BED18150C520000000000000000000000000000000000000000000000001513
      0B4EC5AF68EA897A48C30000000A00000000B988D0FFD1B1E0FFCAA4DBFFC8A1
      DAFFD1B0E0FFD5B8E3FFCFACDFFFDFC8E9FFCBA6DCFFDEC7E9FFC9A2DBFFC9A3
      DBFFE4D0EDFFC59CD8FFDDC5E8FFC79FD9FF0000000052482B96C8B26AEC0605
      032A000000000000000000000000000000000000000000000000000000000000
      000004040225C2AD67E8584F2F9D000000000000000052482B96C8B26AEC0605
      032A0302011E6E6139AE40392286000000000000000000000000000000000000
      000004040225C2AD67E8584F2F9D000000000000000052482B96C8B26AEC0605
      032A000000000000000000000004000000000000000000000000000000000000
      000004040225C2AD67E8584F2F9D00000000C398D6FFDDC5E9FFCFADDFFFD5B6
      E3FFDEC6E9FFD0AEDFFFBE90D3FFCBA5DCFFDBC1E7FFC296D6FFE1CBEBFFD7BB
      E5FFCFADDFFFD9BEE6FFC69DD9FFCFADDFFF0706042FE9CF7BFE18150C520000
      0000010100172420136500000003000000000000000000000002231F12630202
      011A0000000013110A4AE9CF7CFE090805340706042FE9CF7BFE18150C520000
      000001010015D5BD70F3B5A160E0010000110000000000000000000000000000
      00000000000013110A4AE9CF7CFE090805340706042FE9CF7BFE18150C520000
      00000000000004030222A59357D618160D530000000000000000000000000000
      00000000000013110A4AE9CF7CFE09080534CFACDEFFD1B1E0FFCFADDFFFE5D2
      EDFFCDAADDFFCFAEDFFFBE91D4FFC8A1DAFFDABFE6FFC296D6FFD1B0E0FFCCA8
      DDFFCFADDFFFD9BEE6FFC69DD8FFCFADDFFF50472A959E8D54D1000000000000
      00001D1A0F5AEBD17CFF5D5331A10000000300000002564B2D9AEBD17CFF231F
      1263000000000000000091804CC8574C2E9B50472A959E8D54D1000000000000
      0000000000003F382185231F1263000000000000000000000000000000000000
      0000000000000000000091804CC8574C2E9B50472A959E8D54D1000000000000
      000004040225B7A360E1EBD17CFFE4CA78FB221E126100000000000000000000
      0000000000000000000091804CC8574C2E9BCAA4DBFFC8A0DAFFCCA8DDFFCFAD
      DFFFC8A1DAFFD6B8E3FFD3B4E2FFC49BD8FFD2B1E1FFC092D5FFCBA7DCFFBF91
      D4FFE5D2EDFFC59BD8FFDEC6E9FFC7A0DAFFA59357D63D372083000000000000
      0000000000014E442993EBD17CFF5D5331A1564B2D9AEBD17CFF564B2D9A0000
      0002000000000000000036301C7BB09D5DDDA59357D63D372083000000000000
      000000000000010100129B8951CF000000060000000000000000000000000000
      0000000000000000000036301C7BB09D5DDDA59357D63D372083000000000505
      0329BDA964E5EBD17CFFEBD17CFFEBD17CFFE9CF7BFE2D281871000000000000
      0000000000000000000036301C7BB09D5DDD2118246CD7B39FFFD7B39FFFD7B3
      9FFFD7B39FFFD7B39FFFD7B39FFFD7B39FFFD7B39FFFD7B39FFFD7B39FFFD7B3
      9FFFD7B39FFFD7B39FFFD7B39FFF251B2771D9C172F51F1C105E000000000000
      000000000000000000014E442993EBD17CFFEBD17CFF564B2D9A000000020000
      000000000000000000001A170E56E7CD7AFDD9C172F51F1C105E000000000000
      000000000000000000003A331E7F272314690C0B063C0000000F000000000000
      000000000000000000001A170E56E7CD7AFDD9C172F51F1C105E0606032CC2AD
      67E8EBD17CFFDBC374F61F1B105D998851CEEBD17CFFEBD17CFF3B351F810000
      000000000000000000001A170E56E7CD7AFD00000008EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF00000010D7BF72F4201C115F000000000000
      00000000000000000002564B2D9AEBD17CFFEBD17CFF5D5331A1000000030000
      000000000000000000001A170E56E6CC7AFCD7BF72F4201C115F000000000000
      0000000000000000000014110A4BE2C978FAEBD17CFF7C6E41B9000000040000
      000000000000000000001A170E56E6CC7AFCD7BF72F4201C115F0D0C073ED9C1
      72F5D7BF72F4100E08440000000000000010897A49C3EBD17CFFEBD17CFF4C43
      289100000002000000001A170E56E6CC7AFC00000008EED993FFEDD68BFFEBD1
      7CFFEBD17CFFF0DB9AFFECD484FFF1DEA2FFF1DEA2FFEED891FFEBD17CFFEED7
      8FFFEED993FFEBD17CFFEBD17CFF00000010A39156D53F382185000000000000
      000000000002564B2D9AEBD17CFF564B2D9A4E442993EBD17CFF5D5331A10000
      0003000000000000000037311D7CAF9B5CDCA39156D53F382185000000000000
      00000000000000000008E5CB79FCEBD17CFFEBD17CFFEBD17CFF4F4529940000
      0000000000000000000037311D7CAF9B5CDCA39156D53F38218500000000110F
      09460E0C073F0000000000000000000000000000000B796B40B7EBD17CFFEBD1
      7CFF5D5331A10000000437311D7CAF9B5CDC00000008F7ECCAFFF3E2AEFFF8EE
      D0FFF1DFA3FFFBF5E3FFEFDA95FFFFFFFFFFF8EFD1FFFCF9EDFFF5E7BCFFF5E8
      BEFFF7ECCAFFEBD17CFFEBD17CFF000000104D442992A29056D4000000010000
      00001F1B105EEBD17CFF564B2D9A00000002000000014E442993EBD17CFF2521
      1366000000000000000096854FCC534A2C984D442992A29056D4000000010000
      0000000000000000000096854FCCEBD17CFFEBD17CFFEBD17CFFEBD17CFF1614
      0C50000000000000000096854FCC534A2C984D442992A29056D4000000010000
      0000000000000000000000000000000000000000000000000006685C37AAEBD1
      7CFFEBD17CFF2824156A96854FCC534A2C9800000008F7ECCAFFF6EBC6FFFDFA
      F0FFFAF5E1FFFBF5E3FFEFDA95FFFFFFFFFFECD485FFEFDA97FFFEFCF6FFF5E8
      BEFFFDFAF2FFFAF4DFFFF2E2ABFF000000100606032CE7CD7AFD1B180E570000
      0000010100141F1B105D000000020000000000000000000000011D1A0F5A0101
      00170000000015130B4EE9CF7BFE080704300606032CE7CD7AFD1B180E570000
      00000000000000000000433B2389EBD17CFFC4AE67E936301C7B594F2F9D0000
      00110000000015130B4EE9CF7BFE080704300606032CE7CD7AFD1B180E570000
      000000000000000000000000000000000000000000000000000000000003574C
      2E9B564B2D9A16140C50E9CF7BFE0807043000000008F7ECCAFFFEFDF9FFF1E0
      A6FFFAF3DCFFFEFDF9FFEFDA95FFFFFFFFFFECD485FFF2E0A8FFFCF9EFFFF5E8
      BEFFF8EFD2FFEED891FFECD487FF00000010000000004D442992CDB66CEE0807
      042F000000000000000000000000000000000000000000000000000000000000
      00000605032AC7B169EB53492B9800000000000000004D442992CDB66CEE0807
      042F0000000000000000100E0844E9CF7CFE322D1A77413A22870000000C0000
      00000605032AC7B169EB53492B9800000000000000004D442992CDB66CEE0807
      042F000000000000000000000000000000000000000000000000000000000000
      00010605032BC7B169EB53492B980000000000000008F7ECCAFFFCF7E9FFEBD1
      7DFFF0DD9FFFFFFFFFFFEFDA95FFFFFFFFFFFDFBF4FFFDFAF1FFF1DEA2FFF5E8
      BEFFFEFDF8FFFDF9EFFFF6EAC4FF0000001000000000000000067C6E41B9D0B9
      6EF01D1A0F5A0000000100000000000000000000000000000000000000011A17
      0E56CBB56BED847546BF000000080000000000000000000000067C6E41B9D0B9
      6EF01D1A0F5A00000001000000000000000D0000000000000000000000011A17
      0E56CBB56BED847546BF000000080000000000000000000000067C6E41B9D0B9
      6EF01D1A0F5A0000000100000000000000000000000000000000000000011A17
      0E56CBB56BED847546BF000000080000000000000008EBD27EFFEBD27EFFEBD1
      7CFFEBD17CFFECD281FFEBD17DFFECD281FFECD281FFEBD17CFFEBD17CFFEBD2
      7EFFECD281FFECD281FFEBD280FF000000100000000000000000000000064A42
      2790E5CC7AFCA59357D6403922861F1C105E1F1C105E3F382185A29056D4E7CD
      7AFD4E4529930000000800000000000000000000000000000000000000064A42
      2790E5CC7AFCA59357D6403922861F1C105E1F1C105E3F382185A29056D4E7CD
      7AFD4E4529930000000800000000000000000000000000000000000000064A42
      2790E5CC7AFCA59357D6403922861F1C105E1F1C105E3F382185A29056D4E7CD
      7AFD4E45299300000008000000000000000000000008EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF000000100000000000000000000000000000
      0000060503294B422790A29056D4D7BF72F4D8C072F5A39256D54D4429920606
      032C000000000000000000000000000000000000000000000000000000000000
      0000060503294B422790A29056D4D7BF72F4D8C072F5A39256D54D4429920606
      032C000000000000000000000000000000000000000000000000000000000000
      0000060503294B422790A29056D4D7BF72F4D8C072F5A39256D54D4429920606
      032C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000302011D36301C7B7B6D41B9A29056D49B8A52CF675C36A91C190F590000
      0004000000000000000000000000000000000000000000000000000000000000
      0000EBD17CFFEBD17CFF0000000000000000000000000000000000000000EBD1
      7CFFEBD17CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000043F38
      2185DFC776F9EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF50472A952319
      277061466DB9010101160000000000000000000000000000000000000000EBD1
      7CFFEBD17CFFEBD17CFF0000000000000000000000000000000000000000EBD1
      7CFFEBD17CFF3B341F8000000000000000000000000000000000000000000000
      000000000000000000000000000B463D248B473E258C0000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00051111114C0000000000000000000000000000000000000000000000001110
      104A00000005000000000000000000000000000000000000000675683DB4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFE3CA78FB05040327926A
      A4E3B987D0FF856196D90100011500000000EBD17CFFEBD17CFFEBD17CFF0000
      0000EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF00000000EBD17CFFEBD17CFF0000000000000000000000000000
      00000000000000000000302B1974EBD17CFFEBD17CFF332D1A77000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008C9C2C2FE464444970000000B00000000000000000000000A45434396C9C2
      C2FE00000008000000000000000000000000000000004B432891EBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF605532A31B131E62B987
      D0FFB987D0FFB987D0FF5F456BB700000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF3A331E7FEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0000000000000000000000000000
      000000000000000000001E1B105DEBD17CFFEBD17CFF201C115F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FF928D8DD90808083508080834908C8CD7CBC4C4FFCBC4
      C4FF000000080000000000000000000000000706032DE7CD7AFDEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFE9CF7BFE0706042E856095D8B987
      D0FFB987D0FFB987D0FFB987D0FF0E0A1047EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF3A331E7FEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0000000000000000000000000000
      000000000000000000000000000014120A4B14120A4C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFC3BCBCFAC3BCBCFACBC4C4FFCBC4C4FFCBC4
      C4FF000000080000000000000000000000004F462A94EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF71643CB1140E1654B987D0FFB987
      D0FFB987D0FFB987D0FFB987D0FF513B5BA9EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF3A331E7FEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0000000000000000000000000000
      00000000000000000000000000042A25166C2B26166D00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000A89659D8EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0B0A0639765685CCB987D0FFB987
      D0FFB987D0FFB987D0FFB987D0FF966DA8E6EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF3A331E7FEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0000000000000000000000000000
      000000000000000000002824156BEBD17CFFEBD17CFF2B26166D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000DEC576F8EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF847545BF0503052B63486FBB563E61AF4B36
      55A33F2E489635273C8A2D20327E241A2871EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF3A331E7F3B341F800000
      00000000000000000000EBD17CFF000000000000000000000000000000000000
      000000000000000000002824156AEBD17CFFEBD17CFF2A25166C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000DDC575F8EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C36208215130B4E2824156A322C1A763C35
      20824940268E564B2D9A635834A6302B1974EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF3A331E7F3B341F800000
      000000000000EBD17CFF00000000000000000000000000000000000000000000
      00000000000000000000000000032824156A2824156B00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000A79458D7EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF443C248AEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF3A331E7FEBD17CFFEBD1
      7CFFEBD17CFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000015130B4E16140C4F00000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF000000080000000000000000000000004F452994EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF121009470000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F1C105EEBD17CFFEBD17CFF211D1161000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF000000080000000000000000000000000606032CE6CC7AFCEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFA89659D800000003EBD17CFF00000000EBD17CFF3B34
      1F8000000000EBD17CFF00000000EBD17CFFEBD17CFFEBD17CFFEBD17CFF0000
      0000EBD17CFFEBD17CFF00000000000000000000000000000000000000000000
      00000000000000000000302B1974EBD17CFFEBD17CFF322C1A76000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000000000004A41278FEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFE7CD7AFD100E084400000000EBD17CFF00000000EBD17CFFEBD1
      7CFF00000000EBD17CFF00000000EBD17CFF0000000000000000EBD17CFF3B34
      1F80EBD17CFFEBD17CFF00000000000000000000000000000000000000000000
      000000000000000000000000000A423B2388433C23890000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005585555A8585555A8585555A8585555A8585555A8585555A8585555A85855
      55A800000005000000000000000000000000000000000000000574663DB3EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFE9CF7BFE2A25166D0000000000000000EBD17CFF847646C0EBD17CFFEBD1
      7CFF00000000EBD17CFF00000000EBD17CFF0000000000000000EBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000043D36
      2083DEC576F8EBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFBDA8
      64E515130B4E000000000000000000000000EBD17CFFEBD17CFF000000000000
      0000EBD17CFFEBD17CFF00000000EBD17CFF0000000000000000EBD17CFF0000
      0000EBD17CFFEBD17CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202011C342E1B79796B40B72824156A665A35A8675B36A9211D11600000
      000900000000000000000000000000000000EBD17CFFEBD17CFF000000000000
      0000EBD17CFFEBD17CFF00000000EBD17CFFEBD17CFFEBD17CFF847546BF0000
      0000EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF0000000500000005EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0000000000000000000000000000
      0000000000020000000000000000000000000000000000000000000000000000
      0000000000000000000200000000000000000000000000000000000000000000
      0000000000020000000000000000000000000000000000000000000000000000
      000000000000000000020000000000000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF0000000500000005EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEDD589FFEFD9
      95FFEED892FFEDD68CFFEBD27EFFEFDB98FFEED78FFFEFD995FFEBD17CFFEED8
      91FFEED78FFFEFDB98FFECD383FFEBD17CFF0000000000000000000000003831
      1D7DE3C978FB2C27176F00000000000000000000000000000000000000000000
      00003D372083E2C978FA27231569000000000000000000000000000000003831
      1D7DE3C978FB2C27176F00000000000000000000000000000000000000000000
      00003D372083E2C978FA2723156900000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF0000000500000005EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF2E3B0FFFBF6
      E6FFF9F1D8FFF5E8BEFFEDD588FFFDFBF3FFF7EDCCFFFBF6E6FFEBD17CFFF9F0
      D4FFF7EDCCFFFDFBF3FFEFDB99FFEBD17CFF0000000000000000000000007D6F
      42BAEBD17CFF695E38AB00000000000000000000000000000000000000000000
      0000887947C2EBD17CFF635834A6000000000000000000000000000000007D6F
      42BAEBD17CFF695E38AB00000000000000000000000000000000000000000000
      0000887947C2EBD17CFF635834A600000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFE4CA78FB0000000300000003E3C978FBEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF1E1AAFFF9F2
      DBFFF7EDCEFFF4E5B6FFECD487FFFBF6E6FFF5EAC3FFF9F2DBFFEBD17CFFF7EC
      CBFFF5EAC3FFFBF6E6FFEFDA96FFEBD17CFF0000000000000000000000002723
      1469CAB46BED4C432891332D1A77332D1B78332D1B78332D1B78332D1B78332D
      1B78594F2F9DCEB76DEF1F1C105E000000000000000000000000000000002723
      1469CAB46BED4C432891332D1A77332D1B78332D1B78332D1B78332D1B78332D
      1B78594F2F9DCEB76DEF1F1C105E00000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFF3B341F80000000000000000039321E7EEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEDD78FFFF1DE
      A2FFF0DC9DFFEED994FFECD281FFF1E0A7FFEFDB99FFF1DEA2FFEBD17CFFF0DC
      9CFFEFDB99FFF1E0A7FFECD487FFEBD17CFF000000000000000000000000685D
      37AADCC474F7887947C2887947C2867747C1847546BF847546BF817344BD8173
      43BD7F7143BC7C6F42BA2924166B00000000000000000000000000000000685D
      37AADCC474F7887947C2887947C2867747C1847546BF847546BF817344BD8173
      43BD7F7143BC7C6F42BA2924166B00000000EBD17CFFEBD17CFFEBD17CFFE9CF
      7BFE857746C0110F094600000000000000000000000000000000110F09458576
      46C0E9CF7BFEEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0000000000000000000000001311
      0A49E1C977FA0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001311
      0A49E1C977FA0000000500000000000000000000000000000000000000000000
      000000000000000000000000000000000000463D248B211E126115130B4E0202
      0119000000000000000000000000000000000000000000000000000000000000
      00000202011916140C4F201C115F433B23890202011C0202011C1C190F59EBD1
      7CFFCEB76DEF594F2F9DEBD17CFF6C6039AD867747C1EBD17CFFEBD17CFFF6E9
      C2FFF4E6BBFFF9F2DAFFEED993FFEBD17CFF0000000000000000000000002621
      1467E3CA78FB2F2A19733F3821854941278F0605032A18150C52090805340000
      0006000000010000000000000000000000000000000000000000000000002622
      1467E3CA78FB93824ECA6A5F38AC4940268E2D28187018150C52090805340101
      001600000001000000000000000000000000EBD17CFF9E8C53D10302011D0000
      000000000000000000000E0D07400A0905360000000000000000000000000000
      0000000000000201011992824CC9EBD17CFF0000000000000000100F0945EBD1
      7CFFCAB46BED4C432891EBD17CFF605532A37C6F42BAEBD17CFFEBD17CFFF6E9
      C2FFF4E6BBFFF9F2DAFFEED993FFEBD17CFF000000000000000000000000433B
      2389EBD17CFF473E258C8F7F4BC7EBD17CFF1C190F59E6CC7AFCEBD17CFF1916
      0D54D9C172F592824DC912100947423A23880000000000000000000000005C52
      30A0EBD17CFFEBD17CFFEBD17CFFEBD17CFFAD9A5BDB3D362183EBD17CFFEBD1
      7CFFDBC274F6AA9759D97E7042BB423A2388EBD17CFFEBD17CFF93824ECA0000
      0002000000015C5230A0B3A05EDF7C6F42BA7C6F42BA7C6F42BA7C6F42BA0000
      000D000000028F7F4BC7EBD17CFFEBD17CFF0000000000000000100F0945EBD1
      7CFFCAB46BED4C432891EBD17CFF605532A37C6F42BAEBD17CFFEBD17CFFF7EC
      CBFFF5E9C3FFFBF6E6FFEFDA96FFEBD17CFF0000000000000000000000002319
      27701C18125C1C190F592D2918711D19115C05040227E2C978FAEBD17CFF1916
      0D54EBD17CFFCAB46BED25211366EBD17CFF000000000000000000000000AA96
      59D9EBD17CFFEBD17CFFEBD17CFFCAB46BED221B1D69594064B1564B2E9AEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF1614
      0C4F000000071F1C105E1F1C105E1F1C105E1F1C105E1F1C105E1E1A105C0000
      000215130B4EEBD17CFFEBD17CFFEBD17CFF0000000000000000100F0945EBD1
      7CFFCAB46BED4C432891EBD17CFF605532A34B4228918F7F4BC78F7F4BC78F7F
      4BC78F7F4BC78F7F4BC78F7F4BC78F7F4BC70000000000000000000000057C5A
      8BD1AC7DC2F6483552A0694C76C0B383C9FB523C5EAB17131154887947C21916
      0D54EBD17CFFCAB46BED25211366EBD17CFF000000000000000001010013E9CF
      7BFEEBD17CFFEBD17CFFDFC776F9241E1A69A275B6EFB987D0FF42314A99796B
      40B7EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF584F
      2F9D000000061C190F591C190F591C190F592A25166C827445BE100E08430000
      00004E452993EBD17CFFEBD17CFFEBD17CFF0000000000000000000000082E29
      18720F0D08424C432891EBD17CFF605532A30000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0D07403B34
      1F811B151B615A4165B22D21337F17111658553E5FADAD7FC2F733253A870605
      042CB39F5EDFCAB46BED25211366EBD17CFF000000000000000014120A4BEBD1
      7CFFEBD17CFFE9CF7CFE2E281D748C669DDEB987D0FFB987D0FFB987D0FF2E23
      317F9E8C53D1EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF9887
      50CD000000000000000000000000000000000403022200000000000000000000
      0000796B40B7EBD17CFFEBD17CFFEBD17CFF0000000000000000000000004C43
      2892B19E5EDE675C36A9625734A519160D540000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D372083EBD1
      7CFFD2BB6FF1625834A5AF9C5CDCE6CC7AFC5A502F9E16111456755483CB976E
      AAE72018226A2B27176F04040225DBC374F700000000000000003E372184EBD1
      7CFFEBD17CFF3B351F812E2234807E5C8ED3B987D0FFB987D0FFAB7DC0F55D43
      69B50D0A0A41BDA964E5EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF9D8C
      53D1000000000000000000000000000000000000000000000000000000000000
      00007C6F42BAEBD17CFFEBD17CFFEBD17CFF0000000000000000000000000908
      0535DBC273F6EBD17CFFEBD17CFF90804CC850472A950302011D000000090000
      00000000000000000000000000000000000000000000000000007F7143BCEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFD7BF71F438311E7D2118
      236B9A6FADE9785786CD3929408E39321F7E0000000000000000807143BCEBD1
      7CFFE6CC7AFC897948C3887947C229202A77B987D0FFB987D0FF886399DB342E
      1B78887947C2B4A05EDFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF473E
      258C000000000000000000000000000000000000000000000000000000000000
      0000312B1A75EBD17CFFEBD17CFFEBD17CFF0000000000000000000000000000
      00000A090537EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFCEB76DEF9282
      4CC99D8C53D1080804320000000000000000030302200706042FD3BC70F29685
      4FCC7C6F42BA7C6F42BA7C6F42BA7C6F42BA7C6F42BA7C6F42BA7C6F42BA534A
      2B9805040328553E61AEB987D0FF241A2770030302200706042FD3BC70F29685
      4FCC7C6F42BA7C6F42BA7C6F42BA1813185B62476FBA62476FBA483552A0302A
      19737C6F42BA7C6F42BA7C6F42BA5D5230A0EBD17CFFEBD17CFF7F7143BC0000
      000C000000000000000000000000000000000000000000000000000000000000
      0000000000066A5F38ACEBD17CFFEBD17CFF0000000000000000000000000000
      0000000000001D1A0F5AAA9759D9EBD17CFFEBD17CFFE0C776F9E5CC7AFCEBD1
      7CFFEBD17CFF17140C500000000000000000BFA965E6EBD17CFFE1C977FA0202
      011D000000000000000000000000000000000000000000000000000000000000
      0000000000000201021B0604062F04020426BFA965E6EBD17CFFE1C977FA0202
      011D000000000000000000000000140E1654856196D9856196D962476FBA0000
      000000000000000000000000000000000000252113660D0C073E000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A090536252113660000000000000000000000000000
      000000000000000000000E0D0740B3A05EDFD9C172F53F3821851D1A0F5B5148
      2A9615130B4E0000000000000000000000000000000200000005000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000200000005000000030000
      0000000000000000000000000000000000020000000500000005000000040000
      0000000000000000000000000000000000000404022592814CC9E9CF7BFEEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFD1BB6FF10B1006450074
      00AC00EF00F700DA00EC00460086000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938B73C6EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF352F1C7A009E00C900FF
      00FF00FF00FF00FF00FF00FF00FF004600860000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E8C7FCEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0F1F085E00FF00FF00FF
      00FF00FF00FF00FF00FF00FF00FF00DA00EC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000514120A4C0000000000000000000000000000000000000000000000001311
      0A4A000000050000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2A19732F2A197300000000000000000000
      000000000000000000000000000000000000F7EECFFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0D22066200FF00FF00FF
      00FF00FF00FF00FF00FF00FF00FF00EF00F70000000000000000000000000000
      00000000000000000000020101181B180E580000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008E9CF7CFE52492B970000000B00000000000000000000000A51482A96E9CF
      7CFE000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBC374F6DBC374F600000000000000000000
      000000000000000000000000000000000000FEFCF6FFEED994FFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF2625146C00D100E700FF
      00FF00FF00FF00FF00FF00FF00FF007400AC0000000000000000000000000000
      0000000000000605032AB3A05EDF211D11610000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFAA9659D90A08053509080534A79559D7EBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCC474F7DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFEFEFBFFF6EBC5FFEED8
      90FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFBAA562E3071A035400D1
      00E700FF00FF00FF00FF009E00C90C130C460000000000000000000000091815
      0C5224201365CDB66CEEEBD17CFF38311D7D19160D5519160D5519160D551916
      0D5518150C520000000A00000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFE2C978FAE1C977FAEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCC474F7DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCF8EBFFF8EFD1FFF6EBC7FFF5E9C1FFF5E9C0FFF6EBC8FFC5BFADE3292D
      296C0E240E611022105E393A397AE3E3E3F100000000000000003D362083EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF4039228600000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCC474F7DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFCFFF4E5B5FFEBD280FFEBD27EFFF3E4B2FFFEFEFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF0000000800000000000000000000000000000000000000002F2A1973D7BF
      72F4D8C172F5DBC374F7DCC474F7EBD17CFFEBD17CFFD8C172F5D9C172F5DCC4
      74F7DBC374F62E2918720000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF3E2AEFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF2E1ABFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF0000000800000000000000000000000000000000000000002F2A1973D6BF
      71F4D8C172F5D8C172F5D8C172F5E9CF7CFEEBD17CFFDCC474F7DCC474F7DCC4
      74F7D9C172F52D2818710000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBF6E5FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFFAF4
      E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3BC70F2DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5E7BCFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF4E5
      B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3BC70F2DBC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1DFA5FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF0DC
      9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000005C5230A0EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF5E5331A100000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8C172F5D8C172F500000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0DC9CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEFDC
      9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000015120B4DC8B2
      6AECD0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B8
      6DF0C9B26AEC17140C5000000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6BF71F4D5BE70F300000000000000000000
      000000000000000000000000000000000000F9F9F9FCFFFFFFFFFFFFFFFFFFFF
      FFFFF6EAC4FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF5E9
      C0FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005665B35A8665B35A8665B35A8665B35A8665B35A8665B35A8665B35A8665B
      35A8000000050000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2918722D28187100000000000000000000
      0000000000000000000000000000000000009D9D9DC8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFDFFF4E5B5FFEBD17DFFEBD17CFFEBD17CFFEBD17DFFF3E3B0FFFFFE
      FDFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DC80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050505279D9D9DC8F9F9F9FCFFFF
      FFFFFFFFFFFFFFFFFFFFFDFAF0FFF8EFD3FFF8EFD2FFFCF9EEFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FC999999C6050505250000000000000000000000000000
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
      0000000000000000000000000000000000000504032692824CC9E8CE7AFDEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFE9CF7BFE93834ECA050503280000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000968F7BC7EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF998F71CA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EAD0FCEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFF4E8C2FE0000000000000000000000000000
      000000000007584E2E9C0605032B000000003E37218426221467000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B180E573F3821853F3821853F3821853F3821853F3821853F3821851B18
      0E57000000000000000000000000000000000000000000000000000000081512
      0B4D16140C4F16140C4F16140C4F16140C4F16140C4F16140C4F16140C4F1614
      0C4F14120A4C000000060000000000000000F8F1D8FFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFF6EAC6FF0000000000000000000000000000
      000000000000BDA964E52924166B0000000072663CB2998851CE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFEFDB9BFFF0DC9CFFEBD17CFFEBD17CFF6358
      34A60000000000000000000000000000000000000000000000002A25166CEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF17140C500000000000000000FEFDFAFFF0DC9DFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEED993FFFDFBF3FF0000000000000000000000000000
      0001433B2389BBA563E395844ECB443C248A96854FCCDEC576F8443C248A1311
      0A49000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFF7ECCBFFF6EBC7FFEBD17CFFEBD17CFF6358
      34A6000000000000000000000000000000000000000000000000574E2E9CEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFE9D07CFE332D1B780000000000000000FFFFFFFFFEFEFDFFF7EDCCFFEED9
      94FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEED891FFF6EBC7FFFEFDFBFFFFFFFFFF0000000000000000000000000000
      000075683DB4BBA562E3D7BF71F48D7E4BC6A89659D8EBD17CFF9D8C53D13630
      1C7B000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFF5E9C1FFF2E1AAFFEBD17CFFEBD17CFF6358
      34A600000000000000000000000000000000000000000000000092814CC9EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFB8A461E2332D1B780000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCF8EDFFF8EFD2FFF6EBC8FFF5E8BEFFF4E6BAFFF6EBC8FFF8EFD1FFFCF8
      ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000002824156ABFAA65E6000000000A090537EBD17CFF13110A4A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFF5E9C1FFF2E1AAFFEBD17CFFEBD17CFF6358
      34A6000000000000000000000000000000000000000000000002D6BF71F4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF75683DB4332D1B770000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFDFFF3E5B7FFEBD27EFFEBD17CFFF1E0A8FFFEFCF8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000E0C073FEBD17CFF010100120000000DE9CF7CFE312B1A750000
      0000000000000000000000000000000000000000000000000000000000000000
      0000201C115FCCB66CEEEBD17CFFEBD17CFFEBD17CFFEBD17CFFCCB66CEE211D
      1161000000000000000000000000000000000000000004040224EBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF423A23882A25166D0000000A00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF2E3B0FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF0DDA1FFFFFF
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00003B351F81DCC474F7EBD17CFFDCC474F7DBC374F6EBD17CFFE3CA78FBCCB6
      6CEE000000090000000000000000000000000000000000000000000000000000
      0000000000008F7F4CC7EBD17CFFEBD17CFFEBD17CFFEBD17CFF8F7F4CC70000
      0000000000000000000000000000000000000000000017140C51EBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF1D1A0F5A0F0D08420A08053500000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAF3DFFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF9F2
      DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000302011E1D1A0F5AD1BB6FF17F7043BB1D1A0F5A71643CB1AF9C5CDC1D1A
      0F5A010000110000000000000000000000000000000000000000000000000000
      0000000000008F7F4CC7EBD17CFFEBD17CFFEBD17CFFEBD17CFF8F7F4CC70000
      0000000000000000000000000000000000000000000039321E7EEBD17CFFEBD1
      7CFFEBD17CFF847545BF2B26176E2B26176E2B26176E2B26176E2B26176E2621
      14670000000901010015221E126200000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3E5B6FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF3E5
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000008F7F4BC77C6E41B90000000023201364C9B36AEC0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000655A35A8EBD17CFFEBD17CFFEBD17CFFEBD17CFF685D37AA0000
      0000000000000000000000000000000000000000000013110A49605532A36055
      32A3A39156D51A170E5605040226050402260504022605040226050402260504
      02260504022605040226352F1C7A00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0DEA3FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEED9
      93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000024201365403922860000000005050328584E2E9C0000
      0009000000000000000000000000000000000000000000000000000000000000
      000000000000010100164D44299271643CB171643CB14E452993010100170000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202011B16140C4F16140C4F16140C4F16140C4F16140C4F16140C4F1614
      0C4F16140C4F16140C4F0202011C00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0DDA0FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEDD6
      8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FCFFFFFFFFFFFFFFFFFFFF
      FFFFF6EBC8FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF3E5
      B5FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000999999C6FFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFFF3E5B6FFEBD17DFFEBD17CFFEBD17CFFEBD17CFFF1E0A8FFFEFD
      FAFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EC90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050525999999C6F9F9F9FCFFFF
      FFFFFFFFFFFFFFFFFFFFFCF8ECFFF7ECCBFFF6ECC9FFFBF6E6FFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FC9B9B9BC705050526424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
    DesignInfo = 16122367
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302038352038352220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C672069643D
          225F313637313732303738363939322220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D226E
          6F6E652220706F696E74733D22302C302038352C302038352C383520302C3835
          20222F3E0D0A3C706174682066696C6C3D2223374444314542222066696C6C2D
          72756C653D226E6F6E7A65726F2220643D224D36332033376C2D372030202D32
          20313220382030202D312037202D382030202D32203131202D3820302032202D
          3131202D31302030202D32203131202D3720302032202D3131202D3720302031
          202D37203720302032202D3132202D3820302032202D37203720302032202D31
          3220382030202D3220313220313020302032202D313220372030202D32203132
          20382030202D3220377A6D2D313520306C2D31302030202D3220313220313020
          302032202D31327A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302039322039322220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C672069643D
          225F313637313732343730303839362220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D226E
          6F6E652220706F696E74733D22302C302039322C302039322C393220302C3932
          20222F3E0D0A3C6720786D6C3A73706163653D227072657365727665223E2623
          31333B262331303B3C706174682066696C6C3D22233744443145422220643D22
          4D32392034326C3334203063322C3020342C3120342C336C30203237202D3432
          20302030202D323763302C2D3220322C2D3320342C2D337A222F3E0D0A3C7061
          74682066696C6C3D22233744443145422220643D224D35312035376C2D313020
          30632D362C30202D31312C2D34202D31312C2D31306C30202D313863302C2D36
          20352C2D31302031312C2D31306C3130203063362C302031312C342031312C31
          306C3020313863302C36202D352C3130202D31312C31307A6D2D3130202D3333
          6C3130203063332C3020352C3220352C356C3020313863302C33202D322C3520
          2D352C356C2D31302030632D332C30202D352C2D32202D352C2D356C30202D31
          3863302C2D3320322C2D3520352C2D357A222F3E0D0A3C6720786D6C3A737061
          63653D227072657365727665223E262331333B262331303B3C636972636C6520
          66696C6C3D227768697465222063783D223436222063793D2236322220723D22
          34222F3E0D0A3C726563742066696C6C3D2277686974652220783D2234332220
          793D223436222077696474683D223522206865696768743D223133222F3E0D0A
          090909093C2F673E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C302031
          3630302C3020313630302C3136303020302C3136303020222F3E0D0A3C706174
          682066696C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E7A
          65726F2220643D224D31343132203433346C2D31303820363035202D3339202D
          323139202D3130202D3537202D36202D3336202D37202D3431202D3132202D36
          34632D362C2D3337202D34302C2D3635202D37362C2D36356C2D31322030202D
          36312030202D3338342030202D34302030202D37332030632D31342C30202D32
          392C2D3133202D33312C2D32376C2D35202D3239632D362C2D3334202D33372C
          2D3632202D37312C2D363520342C2D31322031372C2D32312033302C2D32316C
          383930203063352C3020392C322031322C3520332C3320342C3820332C31347A
          6D3332202D3434632D31312C2D3133202D32392C2D3231202D34372C2D32316C
          2D3839302030632D33372C30202D37312C3238202D37372C36356C2D31203220
          2D3232362030632D31382C30202D33362C38202D34372C3232202D31322C3134
          202D31372C3332202D31332C35316C3131362036353763362C33372034302C36
          352037362C36356C39323920306331392C302033362C2D382034382C2D323120
          372C2D392031312C2D31392031332C2D33306C31203020313331202D37333863
          342C2D3139202D312C2D3338202D31332C2D35327A222F3E0D0A093C2F673E0D
          0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D2230203020313137203131372220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C6465667320786D6C3A73706163653D227072657365727665223E202020
          3C636C6970506174682069643D226964302220786D6C3A73706163653D227072
          657365727665223E202020203C7061746820643D224D313820306C3831203063
          31302C302031382C382031382C31386C3020383163302C3130202D382C313820
          2D31382C31386C2D38312030632D31302C30202D31382C2D38202D31382C2D31
          386C30202D383163302C2D313020382C2D31382031382C2D31387A222F3E0D0A
          09093C2F636C6970506174683E0D0A093C2F646566733E0D0A3C672069643D22
          4C6179657220312220786D6C3A73706163653D227072657365727665223E2623
          31333B262331303B3C6D657461646174612069643D22436F72656C436F727049
          445F30436F72656C2D4C61796572222F3E0D0A3C706174682066696C6C3D2277
          686974652220643D224D313820306C383120306331302C302031382C38203138
          2C31386C3020383163302C3130202D382C3138202D31382C31386C2D38312030
          632D31302C30202D31382C2D38202D31382C2D31386C30202D383163302C2D31
          3020382C2D31382031382C2D31387A222F3E0D0A3C6720636C69702D70617468
          3D2275726C2823696430292220786D6C3A73706163653D227072657365727665
          223E2020203C672069643D225F313637313732303732343434382220786D6C3A
          73706163653D227072657365727665223E202020203C6720786D6C3A73706163
          653D227072657365727665223E20202020203C706174682069643D225F312220
          66696C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E7A6572
          6F2220643D224D333520343863362C31322031372C31392032342C313920372C
          302031372C2D362032332C2D313820312C2D3320322C2D3720332C2D31312031
          2C2D3220322C2D3620322C2D313120302C2D3132202D31332C2D3233202D3238
          2C2D3233202D31352C30202D32382C3131202D32382C323320302C3420302C36
          20312C3920302C3420312C3920332C31327A6D37382038366C2D313038203020
          30202D343363302C2D31312032382C2D32312034312C2D32316C323520306331
          332C302034322C31302034322C32316C302034337A222F3E0D0A090909093C2F
          673E0D0A0909093C2F673E0D0A09093C2F673E0D0A3C706174682066696C6C3D
          226E6F6E652220643D224D313820306C383120306331302C302031382C382031
          382C31386C3020383163302C3130202D382C3138202D31382C31386C2D383120
          30632D31302C30202D31382C2D38202D31382C2D31386C30202D383163302C2D
          313020382C2D31382031382C2D31387A222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223332707822206865696768743D22333270782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D2230203020323039203230392220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C6465667320786D6C3A73706163653D227072657365727665223E202020
          203C636C6970506174682069643D226964302220786D6C3A73706163653D2270
          72657365727665223E20202020203C7061746820643D224D333220306C313435
          20306331372C302033322C31342033322C33326C3020313037632D392C2D3132
          202D32342C2D3230202D34312C2D3230202D32372C30202D34392C3232202D34
          392C343920302C313720382C33322032302C34316C2D3130372030632D31382C
          30202D33322C2D3135202D33322C2D33326C30202D31343563302C2D31382031
          342C2D33322033322C2D33327A222F3E0D0A09093C2F636C6970506174683E0D
          0A093C2F646566733E0D0A3C672069643D224C6179657220312220786D6C3A73
          706163653D227072657365727665223E262331333B262331303B3C6D65746164
          6174612069643D22436F72656C436F727049445F30436F72656C2D4C61796572
          222F3E0D0A3C672069643D225F313637313733303239303836342220786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C70617468
          2066696C6C3D2277686974652220643D224D333220306C31343520306331372C
          302033322C31342033322C33326C3020313037632D392C2D3132202D32342C2D
          3230202D34312C2D3230202D32372C30202D34392C3232202D34392C34392030
          2C313720382C33322032302C34316C2D3130372030632D31382C30202D33322C
          2D3135202D33322C2D33326C30202D31343563302C2D31382031342C2D333220
          33322C2D33327A222F3E0D0A3C6720636C69702D706174683D2275726C282369
          6430292220786D6C3A73706163653D227072657365727665223E202020203C67
          20786D6C3A73706163653D227072657365727665223E20202020203C6720786D
          6C3A73706163653D227072657365727665223E2020202020203C706174682069
          643D225F31222066696C6C3D2223374444314542222066696C6C2D72756C653D
          226E6F6E7A65726F2220643D224D36332038366331302C32322032392C333320
          34322C33332031332C302033302C2D31312034312C2D333220322C2D3520342C
          2D313220362C2D313820312C2D3620322C2D313220322C2D323120302C2D3232
          202D32322C2D3430202D34392C2D3430202D32372C30202D35302C3138202D35
          302C343020302C3620312C313120322C313520312C3820332C313720362C3233
          7A6D313337203135326C2D31393220302030202D373663302C2D32302035312C
          2D33372037342C2D33376C343420306332332C302037342C31372037342C3337
          6C302037367A222F3E0D0A09090909093C2F673E0D0A090909093C2F673E0D0A
          0909093C2F673E0D0A3C706174682066696C6C3D226E6F6E652220643D224D33
          3220306C31343520306331372C302033322C31342033322C33326C3020313037
          632D392C2D3132202D32342C2D3230202D34312C2D3230202D32372C30202D34
          392C3232202D34392C343920302C313720382C33322032302C34316C2D313037
          2030632D31382C30202D33322C2D3135202D33322C2D33326C30202D31343563
          302C2D31382031342C2D33322033322C2D33327A222F3E0D0A3C636972636C65
          2066696C6C3D226C696D65222063783D22313638222063793D22313638222072
          3D223431222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D2230203020333139203331392220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C672069643D224C6179657220312220786D6C3A73706163653D22707265
          7365727665223E262331333B262331303B3C6D657461646174612069643D2243
          6F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C726563
          742066696C6C3D226E6F6E65222077696474683D223331392220686569676874
          3D22333139222F3E0D0A3C706174682066696C6C3D2223374444314542222066
          696C6C2D72756C653D226E6F6E7A65726F2220643D224D34372031373763302C
          2D323920302C2D353820302C2D383720302C2D313620392C2D32392032302C2D
          32392036322C30203132332C30203138352C302031312C302032302C31332032
          302C323920302C323920302C353820302C383720302C3136202D392C3239202D
          32302C3239202D33362C30202D37332C30202D3130392C306C39203532202D36
          30202D3532632D382C30202D31372C30202D32352C30202D31312C30202D3230
          2C2D3133202D32302C2D32397A222F3E0D0A093C2F673E0D0A3C2F7376673E0D
          0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C302031
          3630302C3020313630302C3136303020302C3136303020222F3E0D0A3C706F6C
          79676F6E2066696C6C3D2223374444314542222066696C6C2D72756C653D226E
          6F6E7A65726F2220706F696E74733D223339372C32333420313230332C323334
          20313230332C31333636203830302C31303833203339372C3133363620222F3E
          0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C302031
          3630302C3020313630302C3136303020302C3136303020222F3E0D0A3C706174
          682066696C6C3D22233744443145422220643D224D32363220383730632D3130
          2C2D3130202D31352C2D3231202D32342C2D3334202D322C2D3130202D352C2D
          3231202D352C2D333720302C2D32332031312C2D35322032372C2D3639203138
          2C2D31372034352C2D32362036382C2D32376C3337372031202D32202D333735
          63312C2D32342031302C2D35322032372C2D36392031372C2D31362034332C2D
          32342036392C2D32372032382C322035322C31312037302C33302031372C3136
          2032372C34302032362C36356C32203337352033373320306332362C31203530
          2C31312036372C32382031372C31362032382C34322033302C3730202D332C32
          37202D31332C3530202D32392C3637202D31372C3137202D34332C3239202D36
          372C32396C2D333735202D3220312033373763302C3233202D31312C3438202D
          32392C3636202D31372C3136202D34342C3330202D36372C3239202D31372C30
          202D32372C2D33202D33392C2D37202D392C2D36202D32322C2D3133202D3332
          2C2D3232202D372C2D37202D31342C2D3230202D31382C2D3239202D372C2D31
          34202D31322C2D3236202D392C2D33396C30202D333733202D333735202D3263
          2D31332C33202D32332C30202D33372C2D37202D392C2D34202D32322C2D3131
          202D32392C2D31386C3020307A222F3E0D0A093C2F673E0D0A3C2F7376673E0D
          0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C6465667320786D6C3A73706163653D227072657365727665223E20
          20203C636C6970506174682069643D226964302220786D6C3A73706163653D22
          7072657365727665223E202020203C7061746820643D224D3020306C31363030
          203020302031363030202D3136303020302030202D313630307A222F3E0D0A09
          093C2F636C6970506174683E0D0A093C2F646566733E0D0A3C672069643D224C
          6179657220312220786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C6D657461646174612069643D22436F72656C436F72704944
          5F30436F72656C2D4C61796572222F3E0D0A3C6720786D6C3A73706163653D22
          7072657365727665223E20203C2F673E0D0A3C6720636C69702D706174683D22
          75726C2823696430292220786D6C3A73706163653D227072657365727665223E
          2020203C6720786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C672069643D225F323832343232353237313834302220786D6C3A
          73706163653D227072657365727665223E20202020203C706174682066696C6C
          3D2223374444314542222066696C6C2D72756C653D226E6F6E7A65726F222064
          3D224D2D323439203636336337302C313636203230332C323537203239322C32
          35372038382C30203231302C2D3838203238312C2D3235322031372C2D343020
          33322C2D39312034322C2D3134302031322C2D34302031382C2D39312031382C
          2D31353520302C2D313731202D3135322C2D333135202D3334312C2D33313520
          2D3138382C30202D3334312C313434202D3334312C33313520302C343520332C
          383320382C31313520372C36302032302C3132362034312C3137357A6D393531
          20313038346C2D3133323620302030202D34393563302C2D313539203335332C
          2D323839203531322C2D3238396C3330302030633136302C30203531342C3133
          30203531342C3238396C30203439357A222F3E0D0A090909093C2F673E0D0A3C
          706174682066696C6C3D2223374444314542222066696C6C2D72756C653D226E
          6F6E7A65726F2220643D224D31323733203636336337302C313636203230332C
          323537203239322C3235372038372C30203231302C2D3838203238312C2D3235
          322031372C2D34302033322C2D39312034322C2D3134302031322C2D34302031
          382C2D39312031382C2D31353520302C2D313731202D3135332C2D333135202D
          3334312C2D333135202D3138392C30202D3334312C313434202D3334312C3331
          3520302C343520322C383320382C31313520372C36302032302C313236203431
          2C3137357A6D39353120313038316C2D3133323620302030202D34393263302C
          2D313539203335332C2D323839203531322C2D3238396C333030203063313539
          2C30203531342C313330203531342C3238396C30203439327A222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D22233744443145422220706F696E74733D223439
          332C353635203932392C353635203830302C34343320313038382C3539332031
          3130372C363337203439332C36333720222F3E0D0A3C706F6C79676F6E206669
          6C6C3D22233744443145422220706F696E74733D22313130372C373832203637
          312C373832203830302C393034203531322C373533203439332C373039203131
          30372C37303920222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A3C706F
          6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C30203136
          30302C3020313630302C3136303020302C3136303020222F3E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C672069643D225F32383234343639303332
          3732302220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C706174682066696C6C3D22233744443145422220643D224D363438
          20333031632D34362C36202D38302C3336202D37362C363820342C3332203434
          2C35332039312C34372034302C2D352037312C2D32392037352C2D3536203139
          2C31322034362C31382037352C31352035302C2D372038362C2D33382038322C
          2D373120302C2D32202D312C2D34202D312C2D352032382C31332036352C3138
          203130352C31332034352C2D362038332C2D3234203130372C2D34372034312C
          31382038382C3236203133312C32312038392C2D3132203133312C2D37362039
          352C2D313434202D33352C2D3637202D3133362C2D313133202D3232342C2D31
          3032202D36302C38202D39392C3430202D3130372C3831202D32332C2D313020
          2D35332C2D3135202D38342C2D3131202D36342C39202D3131322C3438202D31
          31352C3932202D31352C2D32202D33322C2D33202D34392C30202D36312C3820
          2D3130372C3435202D3130322C383420312C3520322C313020342C3134202D32
          2C30202D352C30202D372C317A222F3E0D0A3C706F6C79676F6E2066696C6C3D
          22233744443145422220706F696E74733D223534332C343439203736342C3434
          39203736342C31303233203534332C3130323320222F3E0D0A3C6720786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C706F6C79
          676F6E2066696C6C3D22233744443145422220706F696E74733D22302C393839
          203832372C393839203832372C36323220313630302C36323220313630302C39
          383920313630302C3136303020302C3136303020222F3E0D0A3C6720786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C706F6C79
          676F6E2066696C6C3D2277686974652220706F696E74733D22313432342C3836
          3020313432342C39373220313239322C39373220313239322C38363020222F3E
          0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D22
          313239322C37313920313432342C37313920313432342C38333220313239322C
          38333220222F3E0D0A3C706F6C79676F6E2066696C6C3D227768697465222070
          6F696E74733D22313235382C38363020313235382C39373220313132362C3937
          3220313132362C38363020222F3E0D0A3C706F6C79676F6E2066696C6C3D2277
          686974652220706F696E74733D22313132362C37313920313235382C37313920
          313235382C38333220313132362C38333220222F3E0D0A3C706F6C79676F6E20
          66696C6C3D2277686974652220706F696E74733D223535352C31333039203535
          352C31343231203432332C31343231203432332C3133303920222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D2277686974652220706F696E74733D223432332C
          31313638203535352C31313638203535352C31323831203432332C3132383120
          222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74
          733D223338392C31333039203338392C31343231203235372C31343231203235
          372C3133303920222F3E0D0A3C706F6C79676F6E2066696C6C3D227768697465
          2220706F696E74733D223235372C31313638203338392C31313638203338392C
          31323831203235372C3132383120222F3E0D0A3C706F6C79676F6E2066696C6C
          3D2277686974652220706F696E74733D223938392C31333039203938392C3134
          3231203835372C31343231203835372C3133303920222F3E0D0A3C706F6C7967
          6F6E2066696C6C3D2277686974652220706F696E74733D223835372C31313638
          203938392C31313638203938392C31323831203835372C3132383120222F3E0D
          0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D2238
          32342C31333039203832342C31343231203639312C31343231203639312C3133
          303920222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F
          696E74733D223639312C31313638203832342C31313638203832342C31323831
          203639312C3132383120222F3E0D0A3C706F6C79676F6E2066696C6C3D227768
          6974652220706F696E74733D22313432342C3133303920313432342C31343231
          20313239312C3134323120313239312C3133303920222F3E0D0A3C706F6C7967
          6F6E2066696C6C3D2277686974652220706F696E74733D22313239312C313136
          3820313432342C3131363820313432342C3132383120313239312C3132383120
          222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74
          733D22313235382C3133303920313235382C3134323120313132362C31343231
          20313132362C3133303920222F3E0D0A3C706F6C79676F6E2066696C6C3D2277
          686974652220706F696E74733D22313132362C3131363820313235382C313136
          3820313235382C3132383120313132362C3132383120222F3E0D0A090909093C
          2F673E0D0A0909093C2F673E0D0A3C706F6C79676F6E2066696C6C3D22233744
          443145422220706F696E74733D223237332C353839203439332C353839203439
          332C31303837203237332C3130383720222F3E0D0A3C706174682066696C6C3D
          22233744443145422220643D224D33363820343330632D34322C3231202D3633
          2C3632202D34382C39302031352C32392036302C3334203130312C3133203336
          2C2D31392035372C2D35322035322C2D37392032312C352034392C322037362C
          2D31322034342C2D32332036372C2D36352035322C2D3934202D312C2D32202D
          322C2D34202D332C2D352033312C322036372C2D36203130332C2D3234203430
          2C2D32312037302C2D35312038342C2D38322034352C332039322C2D35203133
          312C2D32352037392C2D34312039362C2D3131362033392C2D313638202D3537
          2C2D3531202D3136372C2D3539202D3234362C2D3138202D35332C3238202D37
          392C3732202D37322C313133202D32352C2D32202D35352C34202D38332C3139
          202D35372C3330202D38382C3834202D37362C313236202D31352C33202D3330
          2C38202D34362C3136202D35342C3239202D38342C3830202D36362C31313520
          322C3420352C3820392C3131202D332C31202D352C33202D372C347A222F3E0D
          0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C67
          2069643D225F323832343237343332303936302220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C726563742066696C6C3D22
          6E6F6E65222077696474683D223136303022206865696768743D223136303022
          2F3E0D0A3C706174682066696C6C3D22233744443145422220643D224D313936
          203231376C38322033363720323637202D313239203230362036312032303420
          2D31313320333031202D313736202D3932382030202D3139202D393163302C30
          202D382C2D3337202D35332C2D3338202D36342C2D31202D3133352C30202D31
          39362C30202D33332C30202D36302C3237202D36302C363020302C3333203237
          2C36302036302C36302034362C302039312C2D31203133362C2D317A6D313336
          203631306C343820323137202D35372031323463302C30202D33382C37352039
          322C3737203133312C3220313031312C3120313031312C3120302C302033392C
          2D342033392C2D333820312C2D333420302C2D333620302C2D333620302C3020
          2D372C2D3435202D35302C2D3435202D34322C2D31202D3933342C2D34202D39
          33342C2D346C3236202D3439202D3139202D3838203637202D382030202D3235
          35202D323233203130347A6D323930203134346C323133202D32362030202D31
          3939202D3538203332202D313535202D34372030203234307A6D323739202D33
          336C323133202D32362030202D333236202D323133203132322030203233307A
          6D323830202D33346C323132202D32352030202D343532202D32313220313231
          2030203335367A6D323739202D33336C3732202D386333372C2D352036382C2D
          33312036382C2D36386C30202D35303063302C2D36202D312C2D3133202D332C
          2D31396C2D313337203231382030203337377A6D2D313136203337386337302C
          30203132372C3536203132372C31323720302C3730202D35372C313236202D31
          32372C313236202D37302C30202D3132372C2D3536202D3132372C2D31323620
          302C2D37312035372C2D313237203132372C2D3132377A6D2D38393720306337
          302C30203132362C3536203132362C31323720302C3730202D35362C31323620
          2D3132362C313236202D37312C30202D3132372C2D3536202D3132372C2D3132
          3620302C2D37312035362C2D313237203132372C2D3132377A222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D2223443038374239222066696C6C2D72756C653D
          226E6F6E7A65726F2220706F696E74733D22313439312C33333020313538352C
          31383020313333362C31383220313336352C323334203938352C343537203735
          382C353832203535302C353230203239312C363435203331382C373636203536
          382C363530203737302C37313220313432332C33333920313435332C33393120
          222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C67
          2069643D225F323738383232323139363939322220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C726563742066696C6C3D22
          6E6F6E65222077696474683D223136303022206865696768743D223136303022
          2F3E0D0A3C706174682066696C6C3D22233744443145422220643D224D313936
          203231376C31383420383237202D35372031323463302C30202D33382C373520
          39322C3737203133312C3220313031312C3120313031312C3120302C30203339
          2C2D342033392C2D333820312C2D333420302C2D333620302C2D333620302C30
          202D372C2D3435202D35302C2D3435202D34322C2D31202D3933342C2D34202D
          3933342C2D346C3236202D3439202D3139202D38382031303434202D31323363
          33372C2D352036382C2D33312036382C2D36386C30202D35303063302C2D3337
          202D33312C2D3638202D36382C2D36386C2D3339342030203020313439203232
          332030202D34333720353039202D343337202D3530392032323320302030202D
          313439202D3338322030202D3139202D393163302C30202D382C2D3337202D35
          332C2D3338202D36342C2D31202D3133352C30202D3139362C30202D33332C30
          202D36302C3237202D36302C363020302C33332032372C36302036302C363020
          34362C302039312C2D31203133362C2D317A6D3131343820313033326337302C
          30203132372C3536203132372C31323720302C3730202D35372C313236202D31
          32372C313236202D37302C30202D3132372C2D3536202D3132372C2D31323620
          302C2D37312035372C2D313237203132372C2D3132377A6D2D38393720306337
          302C30203132362C3536203132362C31323720302C3730202D35362C31323620
          2D3132362C313236202D37312C30202D3132372C2D3536202D3132372C2D3132
          3620302C2D37312035362C2D313237203132372C2D3132377A222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D2223443038374239222066696C6C2D72756C653D
          226E6F6E7A65726F2220706F696E74733D223736312C323237203736312C3432
          38203539392C343238203932342C38303620313234382C34323820313038362C
          34323820313038362C32323720222F3E0D0A3C726563742066696C6C3D222344
          30383742392220783D223736312220793D223938222077696474683D22333235
          22206865696768743D223837222F3E0D0A09093C2F673E0D0A093C2F673E0D0A
          3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C672069643D225F32313433383738383035
          3133362220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C636972636C652066696C6C3D2223374444314542222063783D2238
          3030222063793D223338382220723D22313534222F3E0D0A3C636972636C6520
          66696C6C3D2223374444314542222063783D22383030222063793D2238303022
          20723D22313534222F3E0D0A3C636972636C652066696C6C3D22233744443145
          42222063783D22383030222063793D22313231322220723D22313534222F3E0D
          0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C706F6C79676F6E2066696C6C3D22234334
          43344342222066696C6C2D72756C653D226E6F6E7A65726F2220706F696E7473
          3D223339372C32333420313230332C32333420313230332C3133363620383030
          2C31303833203339372C3133363620222F3E0D0A093C2F673E0D0A3C2F737667
          3E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C672069643D225F32383234323734333131
          3535322220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C706174682066696C6C3D22234430383742392220643D224D313630
          3020383537632D31332C323834202D3137382C353238202D3431352C3635356C
          2D333236202D363930203734312033357A222F3E0D0A3C706174682066696C6C
          3D22233744443145422220643D224D383138203136633430382C313720373335
          2C333436203735302C3735346C2D373530202D33352030202D3731397A222F3E
          0D0A3C706174682066696C6C3D22233744443145422220643D224D3020383030
          63302C2D343232203333332C2D373636203735312C2D3738346C302037383420
          33343120373231632D39352C3431202D3139382C3633202D3330382C3633202D
          3433332C30202D3738342C2D333531202D3738342C2D3738347A222F3E0D0A09
          093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D2230203020342E353220342E35322220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C67
          2069643D225F323136363233353632363434382220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C6720786D6C3A7370616365
          3D227072657365727665223E262331333B262331303B3C706174682066696C6C
          3D22233744443145422220643D224D332E323120312E39396C2D302E3033202D
          302E3331202D302E35312030203020322E3032202D312E3031203063302E3039
          2C302E303820302E31362C302E3220302E31382C302E33336C312E3035203063
          302E30332C2D302E323620302E32352C2D302E343720302E35322C2D302E3437
          20302E32362C3020302E34382C302E323120302E35322C302E34376C302E3539
          20302030202D302E33332030202D312E3036202D302E3932202D302E3936202D
          302E3239203020302E303320302E333120302E3332203020302E343320302E34
          38203020302E3137202D312E313420302030202D302E363520302E323620307A
          6D2D322E323420312E37316C2D302E39372030203020302E333320302E373920
          3063302E30322C2D302E313320302E30392C2D302E323520302E31382C2D302E
          33337A222F3E0D0A3C726563742066696C6C3D22233744443145422220783D22
          332E30352220793D22312E3638222077696474683D22302E3437222068656967
          68743D22302E3331222F3E0D0A3C706174682066696C6C3D2223374444314542
          2220643D224D312E333120332E3763302E32332C3020302E342C302E31382030
          2E342C302E343120302C302E3233202D302E31372C302E3431202D302E342C30
          2E3431202D302E32322C30202D302E33392C2D302E3138202D302E33392C2D30
          2E343120302C2D302E323320302E31372C2D302E343120302E33392C2D302E34
          317A6D322E31203063302E32322C3020302E342C302E313820302E342C302E34
          3120302C302E3233202D302E31382C302E3431202D302E342C302E3431202D30
          2E32322C30202D302E342C2D302E3138202D302E342C2D302E343120302C2D30
          2E323320302E31382C2D302E343120302E342C2D302E34317A6D2D322E312030
          2E323163302E31312C3020302E322C302E303920302E322C302E3220302C302E
          3131202D302E30392C302E32202D302E322C302E32202D302E312C30202D302E
          31392C2D302E3039202D302E31392C2D302E3220302C2D302E313120302E3039
          2C2D302E3220302E31392C2D302E327A6D322E31203063302E31312C3020302E
          31392C302E303920302E31392C302E3220302C302E3131202D302E30382C302E
          32202D302E31392C302E32202D302E31312C30202D302E322C2D302E3039202D
          302E322C2D302E3220302C2D302E313120302E30392C2D302E3220302E322C2D
          302E327A222F3E0D0A3C726563742066696C6C3D22233744443145422220793D
          22312E3638222077696474683D22322E353222206865696768743D22312E3838
          222F3E0D0A3C706174682066696C6C3D2223374444314542222066696C6C2D72
          756C653D226E6F6E7A65726F2220643D224D302E363920322E35632D302E3032
          2C2D302E3033202D302E30352C2D302E3035202D302E30382C2D302E3037202D
          302E30332C2D302E3032202D302E30362C2D302E3033202D302E312C2D302E30
          33202D302E30332C30202D302E30362C302E3031202D302E30392C302E303320
          2D302E30332C302E3032202D302E30362C302E3034202D302E30372C302E3037
          202D302E30322C302E3034202D302E30332C302E3037202D302E30332C302E31
          3120302C302E303420302E30312C302E303820302E30332C302E313120302E30
          312C302E303320302E30342C302E303620302E30372C302E303820302E30332C
          302E303220302E30362C302E303320302E30392C302E303320302E30332C3020
          302E30362C2D302E303120302E312C2D302E303320302E30332C2D302E303120
          302E30352C2D302E303320302E30382C2D302E30366C302E313120302E313263
          2D302E30342C302E3034202D302E30392C302E3038202D302E31342C302E3120
          2D302E30352C302E3032202D302E312C302E3034202D302E31362C302E303420
          2D302E30372C30202D302E31332C2D302E3032202D302E31392C2D302E303520
          2D302E30352C2D302E3034202D302E312C2D302E3038202D302E31332C2D302E
          3134202D302E30332C2D302E3036202D302E30352C2D302E3132202D302E3035
          2C2D302E313920302C2D302E303820302E30322C2D302E313420302E30352C2D
          302E3220302E30342C2D302E303520302E30382C2D302E3120302E31342C2D30
          2E313320302E30362C2D302E303320302E31322C2D302E303520302E31392C2D
          302E303520302E30352C3020302E31312C302E303120302E31362C302E303320
          302E30352C302E303320302E30392C302E303620302E31332C302E316C2D302E
          313120302E31337A222F3E0D0A3C706F6C79676F6E2069643D225F3122206669
          6C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E7A65726F22
          20706F696E74733D22302E38312C322E323520312E34322C322E323520312E34
          322C322E343120312E32312C322E343120312E32312C322E393820312E30322C
          322E393820312E30322C322E343120302E38312C322E343120222F3E0D0A3C70
          6F6C79676F6E2069643D225F32222066696C6C3D222337444431454222206669
          6C6C2D72756C653D226E6F6E7A65726F2220706F696E74733D22312E34382C32
          2E3620312E37352C322E3620312E37352C322E373220312E34382C322E373220
          222F3E0D0A3C706174682069643D225F33222066696C6C3D2223374444314542
          222066696C6C2D72756C653D226E6F6E7A65726F2220643D224D322E31312032
          2E343163302E30392C3020302E31362C302E303320302E32312C302E30382030
          2E30352C302E303620302E30372C302E313320302E30372C302E323320302C30
          2E303120302C302E303220302C302E30336C2D302E3338203063302E30312C30
          2E303320302E30322C302E303620302E30342C302E303720302E30332C302E30
          3220302E30352C302E303320302E30382C302E303320302E30332C3020302E30
          352C2D302E303120302E30372C2D302E303220302E30322C3020302E30342C2D
          302E303220302E30362C2D302E30346C302E303920302E31632D302E30322C30
          2E3033202D302E30362C302E3036202D302E312C302E3037202D302E30342C30
          2E3032202D302E30382C302E3033202D302E31332C302E3033202D302E30362C
          30202D302E31312C2D302E3031202D302E31362C2D302E3034202D302E30342C
          2D302E3032202D302E30372C2D302E3035202D302E312C2D302E31202D302E30
          322C2D302E3034202D302E30332C2D302E3039202D302E30332C2D302E313520
          302C2D302E303520302E30312C2D302E313120302E30332C2D302E313520302E
          30332C2D302E303420302E30362C2D302E303820302E312C2D302E3120302E30
          352C2D302E303320302E312C2D302E303420302E31352C2D302E30347A6D302E
          3120302E323463302C2D302E303320302C2D302E3036202D302E30322C2D302E
          3038202D302E30322C2D302E3032202D302E30352C2D302E3033202D302E3038
          2C2D302E3033202D302E30322C30202D302E30352C302E3031202D302E30372C
          302E3033202D302E30322C302E3032202D302E30332C302E3035202D302E3034
          2C302E30386C302E323120307A222F3E0D0A0909093C2F673E0D0A3C706F6C79
          676F6E2066696C6C3D2223374444314542222066696C6C2D72756C653D226E6F
          6E7A65726F2220706F696E74733D22302C3020302E342C3020302E38322C302E
          383620312E32332C3020312E36332C3020312E36332C312E343820312E332C31
          2E343820312E332C302E353420302E39342C312E333320302E372C312E333320
          302E33332C302E353420302E33332C312E343820302C312E343820222F3E0D0A
          3C706174682069643D225F315F30222066696C6C3D2223374444314542222066
          696C6C2D72756C653D226E6F6E7A65726F2220643D224D322E3532203063302E
          31352C3020302E32382C302E303320302E33392C302E303920302E31322C302E
          303620302E32312C302E313520302E32372C302E323620302E30362C302E3131
          20302E312C302E323420302E312C302E333920302C302E3134202D302E30342C
          302E3237202D302E312C302E3338202D302E30372C302E3131202D302E31362C
          302E32202D302E32372C302E3236202D302E31322C302E3037202D302E32352C
          302E31202D302E34312C302E316C2D302E353920302030202D312E343820302E
          363120307A6D302E303120312E313663302E30372C3020302E31332C2D302E30
          3120302E31392C2D302E303520302E30352C2D302E303320302E312C2D302E30
          3820302E31332C2D302E313520302E30332C2D302E303620302E30352C2D302E
          313420302E30352C2D302E323220302C2D302E3038202D302E30322C2D302E31
          36202D302E30352C2D302E3232202D302E30342C2D302E3037202D302E30382C
          2D302E3132202D302E31342C2D302E3135202D302E30362C2D302E3034202D30
          2E31332C2D302E3036202D302E322C2D302E30366C2D302E3233203020302030
          2E383520302E323520307A222F3E0D0A3C706F6C79676F6E2069643D225F325F
          31222066696C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E
          7A65726F2220706F696E74733D22332E34362C3020342E35322C3020342E3532
          2C302E333120332E38332C302E333120332E38332C302E363420342E34372C30
          2E363420342E34372C302E393420332E38332C302E393420332E38332C312E34
          3820332E34362C312E343820222F3E0D0A09093C2F673E0D0A093C2F673E0D0A
          3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C672069643D
          225F323133313339303934383139322220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C6720786D6C3A73706163653D227072
          657365727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D
          22233744443145422220706F696E74733D22302E39352C302031352E30352C30
          2031352E30352C382E353920372E37332C382E353920372E37332C31322E3239
          2031352E30352C31322E32392031352E30352C313620302E39352C313620222F
          3E0D0A3C706F6C79676F6E2066696C6C3D227768697465222066696C6C2D7275
          6C653D226E6F6E7A65726F2220706F696E74733D22312E33392C312E39362032
          2E35372C312E393620332E37382C342E343820342E39372C312E393620362E31
          352C312E393620362E31352C362E323720352E31392C362E323720352E31392C
          332E353420342E31332C352E383420332E34332C352E383420322E33362C332E
          353420322E33362C362E323720312E33392C362E323720222F3E0D0A3C706174
          682069643D225F31222066696C6C3D227768697465222066696C6C2D72756C65
          3D226E6F6E7A65726F2220643D224D382E373520312E393663302E34332C3020
          302E38322C302E303920312E31352C302E323720302E33342C302E313820302E
          362C302E343420302E37382C302E373620302E31392C302E333320302E32382C
          302E3720302E32382C312E313220302C302E3433202D302E30392C302E38202D
          302E32382C312E3133202D302E31392C302E3333202D302E34352C302E353820
          2D302E37392C302E3736202D302E33352C302E3138202D302E37342C302E3237
          202D312E31382C302E32376C2D312E373520302030202D342E333120312E3739
          20307A6D302E303320332E3463302E32312C3020302E33392C2D302E30352030
          2E35362C2D302E313520302E31362C2D302E3120302E32392C2D302E32352030
          2E33382C2D302E343420302E30392C2D302E313920302E31332C2D302E342030
          2E31332C2D302E363420302C2D302E3235202D302E30352C2D302E3437202D30
          2E31342C2D302E3635202D302E312C2D302E3139202D302E32332C2D302E3334
          202D302E342C2D302E3434202D302E31372C2D302E3131202D302E33372C2D30
          2E3136202D302E35382C2D302E31366C2D302E36392030203020322E34382030
          2E373420307A222F3E0D0A3C706F6C79676F6E2069643D225F32222066696C6C
          3D227768697465222066696C6C2D72756C653D226E6F6E7A65726F2220706F69
          6E74733D2231312E352C312E39362031342E36312C312E39362031342E362C32
          2E38362031322E35392C322E38362031322E35392C332E38322031342E34352C
          332E38322031342E34352C342E37322031322E35392C342E37322031322E3539
          2C362E32372031312E352C362E323720222F3E0D0A0909093C2F673E0D0A3C67
          20786D6C3A73706163653D227072657365727665223E202020203C7265637420
          66696C6C3D22234430383742392220793D22382E3539222077696474683D2231
          3622206865696768743D22342E3738222F3E0D0A0909093C2F673E0D0A3C706F
          6C79676F6E2066696C6C3D227768697465222066696C6C2D72756C653D226E6F
          6E7A65726F2220706F696E74733D22312E34312C31322E373420312E30392C31
          322E373420302E34312C392E323520302E37332C392E323520312E32352C3131
          2E383620312E37382C392E323520322E312C392E323520222F3E0D0A3C706F6C
          79676F6E2069643D225F315F30222066696C6C3D227768697465222066696C6C
          2D72756C653D226E6F6E7A65726F2220706F696E74733D22322E33342C392E32
          3520322E36332C392E323520322E36332C31322E373420322E33342C31322E37
          3420222F3E0D0A3C706F6C79676F6E2069643D225F325F31222066696C6C3D22
          7768697465222066696C6C2D72756C653D226E6F6E7A65726F2220706F696E74
          733D22342E33382C392E323520342E36372C392E323520342E36372C31322E37
          3420342E33362C31322E373420332E33392C31302E3220332E33392C31322E37
          3420332E312C31322E373420332E312C392E323520332E33392C392E32352034
          2E33382C31312E383620222F3E0D0A3C706174682069643D225F33222066696C
          6C3D227768697465222066696C6C2D72756C653D226E6F6E7A65726F2220643D
          224D352E39322031322E323163302E312C3020302E31392C2D302E303420302E
          32362C2D302E3120302E30372C2D302E303720302E31342C2D302E313820302E
          32322C2D302E33336C302E313920302E3339632D302E31382C302E3431202D30
          2E342C302E3631202D302E36362C302E3631202D302E32362C30202D302E3437
          2C2D302E3137202D302E36342C2D302E3531202D302E31372C2D302E3334202D
          302E32362C2D302E3736202D302E32362C2D312E323820302C2D302E35322030
          2E30392C2D302E393620302E32362C2D312E3320302E31382C2D302E33352030
          2E33392C2D302E353220302E36362C2D302E353220302E32362C3020302E3438
          2C302E3220302E36362C302E366C2D302E313820302E3431632D302E30382C2D
          302E3136202D302E31362C2D302E3237202D302E32332C2D302E3334202D302E
          30382C2D302E3036202D302E31362C2D302E3039202D302E32362C2D302E3039
          202D302E31372C30202D302E33312C302E3131202D302E34332C302E3334202D
          302E31322C302E3233202D302E31382C302E3532202D302E31382C302E383720
          302C302E333620302E30362C302E363520302E31382C302E383920302E31312C
          302E323420302E32352C302E333620302E34312C302E33367A222F3E0D0A3C70
          6174682069643D225F34222066696C6C3D227768697465222066696C6C2D7275
          6C653D226E6F6E7A65726F2220643D224D372E33322031312E393463302E3038
          2C302E313920302E31382C302E323820302E33322C302E323820302E31332C30
          20302E32342C2D302E303920302E33312C2D302E323820302E30382C2D302E31
          3820302E31322C2D302E343320302E31322C2D302E37356C30202D312E393420
          302E32392030203020312E393663302C302E35202D302E30372C302E3839202D
          302E322C312E3136202D302E31342C302E3237202D302E33312C302E3431202D
          302E35322C302E3431202D302E32312C30202D302E33392C2D302E3134202D30
          2E35322C2D302E3431202D302E31342C2D302E3237202D302E322C2D302E3636
          202D302E322C2D312E31366C30202D312E393620302E32382030203020312E39
          3463302C302E333220302E30342C302E353720302E31322C302E37357A222F3E
          0D0A3C706F6C79676F6E2069643D225F35222066696C6C3D2277686974652220
          66696C6C2D72756C653D226E6F6E7A65726F2220706F696E74733D22382E3831
          2C31322E373420382E38312C392E323520392E312C392E323520392E312C3132
          2E313820392E38382C31322E313820392E38382C31322E373420222F3E0D0A3C
          706174682069643D225F36222066696C6C3D227768697465222066696C6C2D72
          756C653D226E6F6E7A65726F2220643D224D31302E34332031312E39356C2D30
          2E313720302E3739202D302E33203020302E3735202D332E343920302E332030
          20302E373520332E3439202D302E332030202D302E3137202D302E3739202D30
          2E383620307A6D302E3734202D302E35346C2D302E3331202D312E3434202D30
          2E333120312E343420302E363220307A222F3E0D0A3C706174682069643D225F
          37222066696C6C3D227768697465222066696C6C2D72756C653D226E6F6E7A65
          726F2220643D224D31322E353920392E323563302E332C3020302E35342C302E
          313620302E372C302E343620302E31372C302E333120302E32352C302E373320
          302E32352C312E323720302C302E3534202D302E30382C302E3937202D302E32
          342C312E3239202D302E31362C302E3331202D302E342C302E3437202D302E37
          332C302E34376C2D302E353720302030202D332E343920302E353920307A6D30
          2E363620312E373563302C2D302E38202D302E32332C2D312E32202D302E3637
          2C2D312E326C2D302E32392030203020322E333920302E3332203063302E3231
          2C3020302E33362C2D302E3120302E34372C2D302E3320302E31312C2D302E32
          20302E31372C2D302E3520302E31372C2D302E38397A222F3E0D0A3C70617468
          2069643D225F38222066696C6C3D227768697465222066696C6C2D72756C653D
          226E6F6E7A65726F2220643D224D31352E31332031302E3038632D302E31322C
          2D302E3235202D302E32362C2D302E3337202D302E34332C2D302E3337202D30
          2E31372C30202D302E33312C302E3132202D302E34332C302E3337202D302E31
          322C302E3234202D302E31382C302E3534202D302E31382C302E383920302C30
          2E333520302E30362C302E363520302E31382C302E3920302E31322C302E3235
          20302E32362C302E333720302E34332C302E333720302E31372C3020302E3331
          2C2D302E313220302E34332C2D302E333720302E31312C2D302E323520302E31
          372C2D302E353520302E31372C2D302E3920302C2D302E3335202D302E30362C
          2D302E3635202D302E31372C2D302E38397A6D302E323120322E3138632D302E
          31382C302E3335202D302E33392C302E3532202D302E36342C302E3532202D30
          2E32362C30202D302E34372C2D302E3137202D302E36342C2D302E3532202D30
          2E31372C2D302E3334202D302E32362C2D302E3737202D302E32362C2D312E32
          3920302C2D302E353120302E30392C2D302E393420302E32362C2D312E323820
          302E31372C2D302E333520302E33382C2D302E353220302E36342C2D302E3532
          20302E32352C3020302E34362C302E313720302E36342C302E353220302E3137
          2C302E333420302E32352C302E373720302E32352C312E323820302C302E3532
          202D302E30382C302E3935202D302E32352C312E32397A222F3E0D0A09093C2F
          673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D2243616D61646120312220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C6D657461646174612069643D22436F
          72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70617468
          2066696C6C3D22233744443145422220643D224D38203136632D322E32322C30
          202D342E32312C2D302E3932202D352E36352C2D322E3336202D312E34362C2D
          312E3434202D322E33352C2D332E3434202D322E33352C2D352E363420302C2D
          322E323120302E38392C2D342E3220322E33352C2D352E363520312E34342C2D
          312E343320332E34332C2D322E333520352E36352C2D322E333520322E32312C
          3020342E31392C302E393220352E36352C322E333520312E34342C312E343520
          322E33352C332E343520322E33352C352E363520302C322E32202D302E39312C
          342E32202D322E33352C352E3634202D312E34362C312E3434202D332E34342C
          322E3336202D352E36352C322E33366C3020307A6D30202D31342E36376C3020
          30632D312E38372C30202D332E35312C302E3735202D342E37332C312E393620
          2D312E32322C312E3139202D312E39342C322E3836202D312E39342C342E3731
          20302C312E383520302E37322C332E353120312E39342C342E373120312E3232
          2C312E323120322E38362C312E393620342E37332C312E393620312E38342C30
          20332E35312C2D302E373520342E37332C2D312E393620312E32322C2D312E32
          20312E39342C2D322E383620312E39342C2D342E373120302C2D312E3835202D
          302E37322C2D332E3532202D312E39342C2D342E3731202D312E32322C2D312E
          3231202D322E38392C2D312E3936202D342E37332C2D312E39366C3020307A22
          2F3E0D0A3C672069643D225F313430393332383335353135322220786D6C3A73
          706163653D227072657365727665223E262331333B262331303B3C7265637420
          66696C6C3D222337444431454222207472616E73666F726D3D226D6174726978
          28302E37303731303720302E373037313037202D302E39303633343320302E39
          30363334332031302E36343920342E3234313429222077696474683D22312E35
          3722206865696768743D22372E3037222072783D22302E3736222072793D2230
          2E3736222F3E0D0A3C726563742066696C6C3D22233744443145422220747261
          6E73666F726D3D226D6174726978282D302E37303731303720302E3730373130
          37202D302E393036333433202D302E3930363334332031312E37353836203130
          2E36343929222077696474683D22312E353722206865696768743D22372E3037
          222072783D22302E3736222072793D22302E3736222F3E0D0A09093C2F673E0D
          0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D2243616D61646120312220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C6D657461646174612069643D22436F
          72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70617468
          2066696C6C3D22233744443145422220643D224D38203136632D322E32322C30
          202D342E32312C2D302E3932202D352E36352C2D322E3336202D312E34362C2D
          312E3434202D322E33352C2D332E3434202D322E33352C2D352E363420302C2D
          322E323120302E38392C2D342E3220322E33352C2D352E363520312E34342C2D
          312E343320332E34332C2D322E333520352E36352C2D322E333520322E32312C
          3020342E31392C302E393220352E36352C322E333520312E34342C312E343520
          322E33352C332E343520322E33352C352E363520302C322E32202D302E39312C
          342E32202D322E33352C352E3634202D312E34362C312E3434202D332E34342C
          322E3336202D352E36352C322E33366C3020307A6D30202D31342E36376C3020
          30632D312E38372C30202D332E35312C302E3735202D342E37332C312E393620
          2D312E32322C312E3139202D312E39342C322E3836202D312E39342C342E3731
          20302C312E383520302E37322C332E353120312E39342C342E373120312E3232
          2C312E323120322E38362C312E393620342E37332C312E393620312E38342C30
          20332E35312C2D302E373520342E37332C2D312E393620312E32322C2D312E32
          20312E39342C2D322E383620312E39342C2D342E373120302C2D312E3835202D
          302E37322C2D332E3532202D312E39342C2D342E3731202D312E32322C2D312E
          3231202D322E38392C2D312E3936202D342E37332C2D312E39366C3020307A22
          2F3E0D0A3C672069643D225F313430393333373236383131322220786D6C3A73
          706163653D227072657365727665223E262331333B262331303B3C706F6C7967
          6F6E2066696C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E
          7A65726F2220706F696E74733D22352E32392C31322E353720342E35382C3132
          2E3220372E34352C362E363320382E31362C3720222F3E0D0A3C706174682066
          696C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E7A65726F
          2220643D224D362E34352031322E313163302E30382C2D302E313520302E332C
          2D302E313920302E34392C2D302E30396C302E3238202D302E3536202D312E34
          33202D302E3734202D302E383620312E363620312E343420302E373420302E32
          38202D302E3536632D302E31382C2D302E31202D302E32372C2D302E33202D30
          2E322C2D302E34357A222F3E0D0A3C706174682066696C6C3D22233744443145
          42222066696C6C2D72756C653D226E6F6E7A65726F2220643D224D31302E3220
          342E39316C2D322E3234202D312E313620302E3033202D302E303463302E3132
          2C2D302E323520302E34322C2D302E333420302E36372C2D302E32326C312E33
          3520302E3763302E32352C302E313220302E33342C302E343220302E32322C30
          2E36376C2D302E303320302E30357A6D312E303720306C2D312E3637202D312E
          3539202D322E3236202D302E3433632D302E32362C2D302E3035202D302E3531
          2C302E3131202D302E35372C302E33366C2D302E383520332E3234632D302E30
          362C302E323320302E30342C302E343720302E32352C302E35376C312E313920
          302E363120312E313920302E363263302E322C302E3120302E34362C302E3035
          20302E36312C2D302E31336C322E3135202D322E353763302E31362C2D302E32
          20302E31352C2D302E35202D302E30342C2D302E36387A222F3E0D0A3C706174
          682066696C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E7A
          65726F2220643D224D342E39332031322E33386C342E3135202D382E3035202D
          312E3132202D302E353820302E3033202D302E303463302E31322C2D302E3235
          20302E34322C2D302E333420302E36372C2D302E32326C302E363820302E3335
          20302E3236202D302E3532202D322E3236202D302E3433632D302E32362C2D30
          2E3035202D302E35312C302E3131202D302E35372C302E33366C2D302E383520
          332E3234632D302E30362C302E323320302E30342C302E343720302E32352C30
          2E35376C302E383320302E3433202D322E343220342E373120302E333520302E
          31387A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D2243616D61646120312220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C6D657461646174612069643D22436F
          72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C67206964
          3D225F313430393532363834383430302220786D6C3A73706163653D22707265
          7365727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D22
          233744443145422220706F696E74733D22332E39352C362E323620362E36352C
          382E38392031312E39392C332E392031332E36362C352E353220362E36322C31
          322E3120342E39352C31302E343820342E39352C31302E343820322E33342C37
          2E393420222F3E0D0A3C706F6C79676F6E2066696C6C3D222337444431454222
          20706F696E74733D22322E33342C372E393420332E39352C362E323620362E36
          352C382E38392031312E39392C332E392031332E36362C352E353220362E3632
          2C31322E3120222F3E0D0A3C706174682066696C6C3D22233744443145422220
          643D224D38203136632D322E32322C30202D342E32312C2D302E3932202D352E
          36352C2D322E3336202D312E34362C2D312E3434202D322E33352C2D332E3434
          202D322E33352C2D352E363420302C2D322E323120302E38392C2D342E322032
          2E33352C2D352E363520312E34342C2D312E343320332E34332C2D322E333520
          352E36352C2D322E333520322E32312C3020342E31392C302E393220352E3635
          2C322E333520312E34342C312E343520322E33352C332E343520322E33352C35
          2E363520302C322E32202D302E39312C342E32202D322E33352C352E3634202D
          312E34362C312E3434202D332E34342C322E3336202D352E36352C322E33366C
          3020307A6D30202D31342E36376C302030632D312E38372C30202D332E35312C
          302E3735202D342E37332C312E3936202D312E32322C312E3139202D312E3934
          2C322E3836202D312E39342C342E373120302C312E383520302E37322C332E35
          3120312E39342C342E373120312E32322C312E323120322E38362C312E393620
          342E37332C312E393620312E38342C3020332E35312C2D302E373520342E3733
          2C2D312E393620312E32322C2D312E3220312E39342C2D322E383620312E3934
          2C2D342E373120302C2D312E3835202D302E37322C2D332E3532202D312E3934
          2C2D342E3731202D312E32322C2D312E3231202D322E38392C2D312E3936202D
          342E37332C2D312E39366C3020307A222F3E0D0A09093C2F673E0D0A093C2F67
          3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D2243616D61646120312220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C6D657461646174612069643D22436F
          72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C67206964
          3D225F313430393333333939313935322220786D6C3A73706163653D22707265
          7365727665223E262331333B262331303B3C706174682066696C6C3D22233744
          443145422220643D224D38203136632D322E32322C30202D342E32312C2D302E
          3932202D352E36352C2D322E3336202D312E34362C2D312E3434202D322E3335
          2C2D332E3434202D322E33352C2D352E363420302C2D322E323120302E38392C
          2D342E3220322E33352C2D352E363520312E34342C2D312E343320332E34332C
          2D322E333520352E36352C2D322E333520322E32312C3020342E31392C302E39
          3220352E36352C322E333520312E34342C312E343520322E33352C332E343520
          322E33352C352E363520302C322E32202D302E39312C342E32202D322E33352C
          352E3634202D312E34362C312E3434202D332E34342C322E3336202D352E3635
          2C322E33366C3020307A6D30202D31342E36376C302030632D312E38372C3020
          2D332E35312C302E3735202D342E37332C312E3936202D312E32322C312E3139
          202D312E39342C322E3836202D312E39342C342E373120302C312E383520302E
          37322C332E353120312E39342C342E373120312E32322C312E323120322E3836
          2C312E393620342E37332C312E393620312E38342C3020332E35312C2D302E37
          3520342E37332C2D312E393620312E32322C2D312E3220312E39342C2D322E38
          3620312E39342C2D342E373120302C2D312E3835202D302E37322C2D332E3532
          202D312E39342C2D342E3731202D312E32322C2D312E3231202D322E38392C2D
          312E3936202D342E37332C2D312E39366C3020307A222F3E0D0A3C7061746820
          66696C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E7A6572
          6F2220643D224D382E373720392E38386C2D312E353420302030202D302E3833
          63302C2D302E333720302E30342C2D302E363420302E31332C2D302E38322030
          2E30382C2D302E313820302E32372C2D302E343120302E35362C2D302E376C31
          202D3163302E32312C2D302E323320302E33322C2D302E353120302E33322C2D
          302E383520302C2D302E3333202D302E31312C2D302E3631202D302E33332C2D
          302E3834202D302E32322C2D302E3232202D302E352C2D302E3333202D302E38
          352C2D302E3333202D302E33342C30202D302E36332C302E3131202D302E3837
          2C302E3332202D302E32332C302E3231202D302E33362C302E35202D302E342C
          302E38356C2D312E3635203063302E30392C2D302E383120302E34312C2D312E
          343420302E39352C2D312E3920302E35342C2D302E343620312E32322C2D302E
          363920322E30332C2D302E363920302E38312C3020312E34372C302E32322031
          2E39382C302E363620302E35312C302E343420302E37362C312E303620302E37
          362C312E383520302C302E3535202D302E31352C31202D302E34352C312E3337
          202D302E31372C302E3232202D302E332C302E3337202D302E33392C302E3436
          202D302E312C302E3039202D302E32322C302E3231202D302E33372C302E3335
          202D302E31352C302E3134202D302E32372C302E3237202D302E33382C302E33
          37202D302E312C302E3131202D302E31392C302E3139202D302E32352C302E32
          37202D302E31372C302E32202D302E32352C302E3438202D302E32352C302E38
          346C3020302E36327A6D2D302E373420332E3033632D302E32392C30202D302E
          35342C2D302E31202D302E37352C2D302E3239202D302E32312C2D302E32202D
          302E33312C2D302E3433202D302E33312C2D302E373120302C2D302E32382030
          2E312C2D302E353220302E33312C2D302E373220302E322C2D302E3220302E34
          352C2D302E3320302E37332C2D302E3320302E32392C3020302E35342C302E31
          20302E37352C302E323920302E32312C302E3220302E33312C302E343420302E
          33312C302E373120302C302E3238202D302E312C302E3532202D302E332C302E
          3732202D302E32312C302E32202D302E34362C302E33202D302E37342C302E33
          7A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D2230203020302E383520302E38352220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C67
          2069643D225F323236343334383832303532382220786D6C3A73706163653D22
          7072657365727665223E2020203C6720786D6C3A73706163653D227072657365
          727665223E202020203C706174682066696C6C3D22233744443145422220643D
          224D302E343320302E30376C302030632D302E312C30202D302E31392C302E30
          34202D302E32362C302E31202D302E30362C302E3037202D302E312C302E3136
          202D302E312C302E323520302C302E3120302E30342C302E313920302E312C30
          2E323620302E30372C302E303620302E31362C302E3120302E32362C302E3120
          302E30392C3020302E31382C2D302E303420302E32352C2D302E3120302E3036
          2C2D302E303720302E312C2D302E313620302E312C2D302E323620302C2D302E
          3039202D302E30342C2D302E3138202D302E312C2D302E3235202D302E30372C
          2D302E3036202D302E31362C2D302E31202D302E32352C2D302E316C3020307A
          6D3020302E3738632D302E31322C30202D302E32332C2D302E3035202D302E33
          2C2D302E3132202D302E30382C2D302E3038202D302E31332C2D302E3139202D
          302E31332C2D302E333120302C2D302E313120302E30352C2D302E323220302E
          31332C2D302E3320302E30372C2D302E303720302E31382C2D302E313220302E
          332C2D302E313220302E31312C3020302E32322C302E303520302E332C302E31
          3220302E30372C302E303820302E31322C302E313920302E31322C302E332030
          2C302E3132202D302E30352C302E3233202D302E31322C302E3331202D302E30
          382C302E3037202D302E31392C302E3132202D302E332C302E31326C3020307A
          222F3E0D0A0909093C2F673E0D0A3C6720786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C706174682066696C6C3D2223374444
          3145422220643D224D302E313720302E33356C302E303820302E303720302030
          20302E3120302E3131202D302E303720302E3036202D302E3037202D302E3036
          20302030202D302E31202D302E313120302E3036202D302E30377A6D302E3232
          20302E30326C302E3132202D302E313220302E303620302E3037202D302E3131
          20302E3131202D302E3037202D302E30367A222F3E0D0A3C706F6C79676F6E20
          66696C6C3D22233744443145422220706F696E74733D22302E33342C302E3335
          20302E34352C302E343620302E36382C302E323620302E37352C302E33322030
          2E34352C302E3620302E33382C302E353320302E33382C302E353320302E3238
          2C302E343220222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F67
          3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D2243616D61646120312220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C6D657461646174612069643D22436F
          72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72656374
          2066696C6C3D226E6F6E65222077696474683D22313622206865696768743D22
          3136222F3E0D0A3C706174682066696C6C3D22233744443145422220643D224D
          31342E39332031332E366C2D31332E3836203020322E3135202D322E34392030
          202D362E313763302C30202D302E30322C2D322E313520322E30392C2D322E37
          35202D312E32392C332E323720302E34342C362E353720332E37332C372E3631
          20302C3020312E36322C302E3620332E37342C2D302E31386C3020312E343920
          322E313520322E34397A222F3E0D0A3C636972636C652066696C6C3D22233744
          44314542222063783D2231302E3437222063793D22342E34372220723D22342E
          3437222F3E0D0A3C706174682066696C6C3D22233744443145422220643D224D
          382031342E32376C312E342030203020302E363663302C30202D302E30332C30
          2E3535202D302E36322C302E35396C2D302E34312030202D302E333720302E34
          38202D302E3337202D302E3438202D302E3431203063302C30202D302E35352C
          2D302E3031202D302E36322C2D302E35376C30202D302E363820312E3420307A
          222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
  object ACBrCTe1: TACBrCTe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DACTE = ACBrCTeDACTeRL1
    Left = 267
    Top = 279
  end
  object ACBrCTeDACTeRL1: TACBrCTeDACTeRL
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    Usuario = 'ACBr'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrCTE = ACBrCTe1
    ImprimirHoraSaida = True
    TipoDACTE = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    ExibeResumoCanhoto = False
    EPECEnviado = False
    ImprimeDescPorc = False
    PrintDialog = True
    Left = 295
    Top = 279
  end
  object FcPrincipal: TWRFormataCamposDataSets
    OnCarregaDataSets = FcPrincipalCarregaDataSets
    Left = 569
    Top = 443
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 378
    Top = 254
  end
  object ReqManifesto: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaRequisicao
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'select * FROM REQ_MANIFESTO'
      'WHERE CODIGO = 0')
    Left = 462
    Top = 478
  end
  object UCHist_Requisicao: TUCHist_DataSet
    DataSet = ReqManifesto
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    DS = DS_ReqManifesto
    Tabela = 'REQ_MANIFESTO'
    Modulo = 'COMPRA'
    Left = 518
    Top = 478
  end
  object TransaRequisicao: TFDTransaction
    Connection = DMBanco.Banco
    Left = 490
    Top = 478
  end
  object TimerProximaConsulta: TTimer
    Interval = 30000
    OnTimer = TimerProximaConsultaTimer
    Left = 352
    Top = 361
  end
  object ResumoEventosJaImportados: TFDQuery
    BeforeOpen = EventosBeforeOpen
    MasterSource = DS
    MasterFields = 'NF_CHAVE'
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select CODIGO, NSU, CODEMPRESA, TIPO'
      'from NOTA_FISCAL_ENTRADA'
      'where TIPO = :tipo and CODEMPRESA = :codempresa')
    Left = 457
    Top = 526
    ParamData = <
      item
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end>
    object IntegerField3: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField9: TStringField
      FieldName = 'NF_CHAVE'
      Origin = 'NF_CHAVE'
      Size = 44
    end
    object StringField10: TStringField
      FieldName = 'NF_CNPJCPF_EMITENTE'
      Origin = 'NF_CNPJCPF_EMITENTE'
      Size = 18
    end
    object StringField11: TStringField
      FieldName = 'NF_MANIFESTO'
      Origin = 'NF_MANIFESTO'
      Size = 30
    end
    object SQLTimeStampField5: TSQLTimeStampField
      FieldName = 'NF_DT_EMISSAO'
      Origin = 'NF_DT_EMISSAO'
    end
    object SQLTimeStampField6: TSQLTimeStampField
      FieldName = 'DT_RECEBIMENTO'
      Origin = 'DT_RECEBIMENTO'
    end
    object StringField12: TStringField
      FieldName = 'SCHEMA'
      Origin = '"SCHEMA"'
      Size = 15
    end
    object BlobField3: TBlobField
      FieldName = 'ARQUIVO_XML'
      Origin = 'ARQUIVO_XML'
    end
  end
  object DS_ReqManifesto: TDataSource
    DataSet = ReqManifesto
    Left = 490
    Top = 506
  end
end
