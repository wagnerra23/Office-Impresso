inherited Frame_Cad_Producao: TFrame_Cad_Producao
  Width = 553
  Visible = False
  ExplicitWidth = 553
  object PnlProduzir: TPanel [0]
    Left = 123
    Top = 249
    Width = 279
    Height = 133
    Caption = 'Produzir'
    ParentBackground = False
    TabOrder = 4
    Visible = False
    object lblDescricaoProduzido: TcxDBLabel
      Left = 15
      Top = 29
      DataBinding.DataField = 'PRODUTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsUnderline]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 258
    end
    object edtQuantProduzida: TcxCurrencyEdit
      Left = 15
      Top = 70
      Properties.DisplayFormat = '0.00;-0.00'
      TabOrder = 1
      Width = 41
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 56
      Caption = 'Quant.'
    end
    object cxLabel9: TcxLabel
      Left = 62
      Top = 56
      Caption = 'Quant. a Produzir'
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 63
      Top = 70
      DataBinding.DataField = 'QUANT_PRODUZIR'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = True
      Style.Color = 8454016
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 82
    end
    object BitBtn1: TBitBtn
      Left = 216
      Top = 97
      Width = 54
      Height = 25
      Caption = 'Produzir'
      ModalResult = 1
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 158
      Top = 97
      Width = 52
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 6
      OnClick = BitBtn2Click
    end
  end
  object PnlBaixaEstoque: TPanel [1]
    Left = 78
    Top = 127
    Width = 369
    Height = 277
    Caption = 'Consumir Estoque'
    ShowCaption = False
    TabOrder = 8
    Visible = False
    StyleElements = [seFont, seClient]
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 367
      Height = 275
      Align = alClient
      TabOrder = 0
      object lblDescricaoProduto: TcxDBLabel
        Left = 10
        Top = 10
        DataBinding.DataField = 'DESCRICAO'
        DataBinding.DataSource = DS_Composicao
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsUnderline]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
        Height = 24
        Width = 347
      end
      object edtQuantConsumo: TcxCurrencyEdit
        Left = 10
        Top = 58
        AutoSize = False
        Properties.DisplayFormat = '0.00;-0.00'
        Properties.OnChange = edtQuantConsumoPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        Height = 21
        Width = 39
      end
      object lblConsumo: TcxDBLabel
        Left = 55
        Top = 58
        DataBinding.DataField = 'QUANT'
        DataBinding.DataSource = DS_Composicao
        Style.HotTrack = False
        Transparent = True
        Height = 21
        Width = 53
      end
      object lblQuant_Prevista: TcxDBLabel
        Left = 114
        Top = 58
        DataBinding.DataField = 'QUANT_PREVISTA'
        DataBinding.DataSource = DS_Composicao
        Style.HotTrack = False
        Transparent = True
        Height = 21
        Width = 47
      end
      object edtObservacaoEstoque: TcxMemo
        Left = 10
        Top = 130
        Lines.Strings = (
          'edtObservacaoEstoq'
          'ue')
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 7
        Height = 104
        Width = 347
      end
      object btnConfirmarBaixa: TBitBtn
        Left = 282
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 10
        OnClick = btnConfirmarBaixaClick
      end
      object btnCancelarBaixa: TBitBtn
        Left = 201
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 9
        OnClick = btnCancelarBaixaClick
      end
      object cbxTipoUsoProduto: TcxLookupComboBox
        Left = 167
        Top = 58
        AutoSize = False
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 5
        Height = 21
        Width = 190
      end
      object cxbFuncionarioProduto: TcxLookupComboBox
        Left = 167
        Top = 103
        AutoSize = False
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 6
        Height = 21
        Width = 190
      end
      object cxbCentroTrabalhoProduto: TcxImageComboBox
        Left = 10
        Top = 103
        AutoSize = False
        Properties.Items = <>
        Properties.OnChange = cxbCentroTrabalhoProdutoPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 4
        Height = 21
        Width = 151
      end
      object chkTransformaRendimento: TcxCheckBox
        Left = 10
        Top = 240
        Hint = 'Transforma a Quantidade Restante como Redimento'
        Caption = 'Aplicar Redimento ao Restante'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 8
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object lilblDescricaoProduto: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignVert = avClient
        Control = lblDescricaoProduto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 269
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object liedtQuantConsumo: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup9
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Quant'
        CaptionOptions.Layout = clTop
        Control = edtQuantConsumo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 39
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lilblConsumo: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup9
        AlignVert = avClient
        CaptionOptions.Text = 'Consumido'
        CaptionOptions.Layout = clTop
        Control = lblConsumo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 53
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl2Group_Root
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object lilblQuant_Prevista: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup9
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Previsto'
        CaptionOptions.Layout = clTop
        Control = lblQuant_Prevista
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 47
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object liedtObservacaoEstoque: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignVert = avClient
        Control = edtObservacaoEstoque
        ControlOptions.OriginalHeight = 89
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem28: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnConfirmarBaixa
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem29: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnCancelarBaixa
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl2Group_Root
        LayoutDirection = ldHorizontal
        Index = 3
      end
      object licbxTipoUsoProduto: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Tipo de Uso'
        CaptionOptions.Layout = clTop
        Control = cbxTipoUsoProduto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object licxbUsuarioProduto: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Funcion'#225'rio'
        CaptionOptions.Layout = clTop
        Control = cxbFuncionarioProduto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        Index = 1
      end
      object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup8
        AlignHorz = ahLeft
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object licxbCentroTrabalhoProduto: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup8
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Equipe'
        CaptionOptions.Layout = clTop
        Control = cxbCentroTrabalhoProduto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        Index = 0
      end
      object lichkTransformaRendimento: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = chkTransformaRendimento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 169
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object pnlEstoque: TPanel [2]
    Left = 72
    Top = 75
    Width = 578
    Height = 158
    Color = 16505534
    ParentBackground = False
    TabOrder = 6
    Visible = False
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 576
      Height = 156
      Align = alClient
      TabOrder = 0
      object EdtOSEstoqueÎProducao_OS: TcxButtonEdit
        Left = 15
        Top = 61
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        TabOrder = 1
        Width = 73
      end
      object cxButton2: TcxButton
        Left = 444
        Top = 155
        Width = 100
        Height = 25
        Caption = 'Confirmar'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = FrmPrincipal.ImgListBotoes16
        TabOrder = 9
      end
      object LblOSEstoqueÎProducao_OSÎDESCRICAO: TcxLabel
        Left = 94
        Top = 60
        AutoSize = False
        Style.HotTrack = False
        Height = 22
        Width = 450
      end
      object EdtEstoqueQuant: TcxCurrencyEdit
        Left = 341
        Top = 111
        AutoSize = False
        Properties.DisplayFormat = '0.00'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 8
        Height = 21
        Width = 90
      end
      object LbTitulo1: TcxLabel
        Left = 15
        Top = 15
        Caption = 
          'Informe a quantidade movimentada do produto e em qual OS ocorreu' +
          ' o movimento'
        Style.HotTrack = False
        Transparent = True
      end
      object EdtEstoquePeca: TcxCurrencyEdit
        Left = 77
        Top = 111
        Hint = 'Pe'#231'as'
        Margins.Left = 2
        Margins.Top = 2
        EditValue = 1.000000000000000000
        ParentShowHint = False
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.00'
        ShowHint = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 4
        Width = 60
      end
      object EdtEstoqueEspessura: TcxCurrencyEdit
        Left = 275
        Top = 111
        Hint = 'Comprimento'
        Margins.Left = 2
        Margins.Top = 2
        EditValue = 0.000000000000000000
        ParentShowHint = False
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.00'
        ShowHint = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 7
        Width = 60
      end
      object EdtEstoqueLarg: TcxCurrencyEdit
        Left = 209
        Top = 111
        Hint = 'Largura'
        Margins.Left = 2
        Margins.Top = 2
        EditValue = 0.000000000000000000
        ParentShowHint = False
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.00'
        ShowHint = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Width = 60
      end
      object EdtEstoqueComp: TcxCurrencyEdit
        Left = 143
        Top = 111
        Hint = 'Espessura'
        Margins.Left = 2
        Margins.Top = 2
        EditValue = 0.000000000000000000
        ParentShowHint = False
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.00'
        ShowHint = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 5
        Width = 60
      end
      object EdtEstoqueCodProduto: TcxTextEdit
        Left = 15
        Top = 111
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 3
        Text = 'Oculto'
        Width = 56
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        Offsets.Bottom = 5
        Offsets.Left = 5
        Offsets.Right = 5
        Offsets.Top = 5
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem27: TdxLayoutItem
        Parent = GrupoOS
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'O.S.'
        CaptionOptions.Layout = clTop
        Control = EdtOSEstoqueÎProducao_OS
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 73
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'cxButton3'
        CaptionOptions.Visible = False
        Control = cxButton2
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 100
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem36: TdxLayoutItem
        Parent = GrupoOS
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'cxLabel3'
        CaptionOptions.Visible = False
        Control = LblOSEstoqueÎProducao_OSÎDESCRICAO
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 47
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object LiEdtEstoqueQuant: TdxLayoutItem
        Parent = dxLayoutGroup6
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'Quantidade'
        CaptionOptions.Layout = clTop
        Control = EdtEstoqueQuant
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 90
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem37: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'cxLabel4'
        CaptionOptions.Visible = False
        Control = LbTitulo1
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object LiEdtEstoquePeca: TdxLayoutItem
        Parent = dxLayoutGroup6
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Pe'#231'as'
        CaptionOptions.Layout = clTop
        Control = EdtEstoquePeca
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 60
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object LiEdtEstoqueEspessura: TdxLayoutItem
        Parent = dxLayoutGroup6
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Espessura'
        CaptionOptions.Layout = clTop
        Control = EdtEstoqueEspessura
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 60
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object LiEdtEstoqueLarg: TdxLayoutItem
        Parent = dxLayoutGroup6
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Larg'
        CaptionOptions.Layout = clTop
        Control = EdtEstoqueLarg
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 60
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object LiEdtEstoqueComp: TdxLayoutItem
        Parent = dxLayoutGroup6
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Comp'
        CaptionOptions.Layout = clTop
        Control = EdtEstoqueComp
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 60
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Separator'
        Index = 3
      end
      object LiEdtEstoqueCodProduto: TdxLayoutItem
        Parent = dxLayoutGroup6
        AlignHorz = ahLeft
        AlignVert = avTop
        Visible = False
        CaptionOptions.Text = 'codproduto'
        CaptionOptions.Layout = clTop
        Control = EdtEstoqueCodProduto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 56
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object GrupoOS: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'New Group'
        Offsets.Top = 5
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahRight
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 4
      end
      object dxLayoutGroup6: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'New Group'
        Offsets.Bottom = 5
        Offsets.Top = 5
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
    end
  end
  inherited PnlHistorico_SLA: TPanel
    TabOrder = 7
  end
  object pnlSprMemoria: TPanel [4]
    Left = 17
    Top = 247
    Width = 503
    Height = 170
    Color = 16505534
    ParentBackground = False
    TabOrder = 5
    Visible = False
    object SprMemoria: TdxSpreadSheet
      Left = 1
      Top = 1
      Width = 501
      Height = 168
      Align = alClient
      OptionsView.GridLines = False
      PageControl.Visible = False
      Data = {
        8002000044585353763242461000000042465320000000000000000000000101
        010100000000000001004246532000000000424653200100000001000000200B
        00000007000000430061006C0069006200720069000000000000002000000020
        0000000020000000000020000000000020000000000020000007000000470045
        004E004500520041004C00000000000002000000000000000001424653200100
        0000424653201700000054006400780053007000720065006100640053006800
        6500650074005400610062006C00650056006900650077000600000053006800
        650065007400310001FFFFFFFFFFFFFFFF640000000200000002000000020000
        0055000000140000000200000002000000000200000002000000000000010000
        0000000101000042465320550000000000000042465320000000004246532014
        0000000000000042465320000000000000000000000000010000000000000000
        0000000000000000000000424653200000000002020000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000064000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000200020200020000000000000000000000000000000000020000000000
        0000000000000000000000000000000000000000000000000000000000000202
        0000000000000000424653200000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000}
    end
  end
  inherited PnlHistorico_Seguidor: TPanel
    Left = 123
    Top = 185
    ExplicitLeft = 123
    ExplicitTop = 185
  end
  inherited MainLayout: TdxLayoutControl
    Width = 553
    ExplicitWidth = 553
    inherited edtCodigo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      TabOrder = 40
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      TabOrder = 44
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 6
      Top = 68
      AutoSize = False
      ParentFont = False
      Properties.CharCase = ecNormal
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      TabOrder = 4
      ExplicitLeft = 6
      ExplicitTop = 68
      ExplicitWidth = 443
      ExplicitHeight = 24
      Height = 24
      Width = 443
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 38
    end
    inherited PnlFrameHistorico: TPanel
      Width = 541
      Height = 489
      Align = alClient
      TabOrder = 46
      ExplicitWidth = 541
      ExplicitHeight = 489
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 10000
      Top = 10000
      TabOrder = 43
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    object edtCodProdutoÎPRODUTOÎUNIDADE: TcxDBTextEdit [6]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'UNIDADE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Visible = False
      Height = 22
      Width = 47
    end
    object edtCodProdutoÎPRODUTOÎDESCRICAO: TcxDBTextEdit [7]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'PRODUTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Color = clMoneyGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 15
      Visible = False
      Height = 21
      Width = 300
    end
    object edtDT_Inicio: TcxDBDateEdit [8]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'DT_INICIO'
      DataBinding.DataSource = DS
      Properties.Kind = ckDateTime
      Style.HotTrack = False
      TabOrder = 61
      Visible = False
      Height = 21
      Width = 115
    end
    object edtQTDADePecas: TcxDBCurrencyEdit [9]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'QTDADEPECA'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.####'
      Properties.ReadOnly = False
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 34
    end
    object PnlFrameAnexos: TPanel [10]
      Left = 10000
      Top = 10000
      Width = 541
      Height = 489
      BevelOuter = bvNone
      Caption = 'Anexos'
      Color = 16505534
      ParentBackground = False
      TabOrder = 47
      Visible = False
    end
    object btnFinalizaOS: TcxButton [11]
      Left = 10000
      Top = 10000
      Width = 116
      Height = 34
      Caption = 'Finalizar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000016744558745469746C65005461736B3B49737375653B536F6C76652D
        B55894000002BA49444154785E75916D48956718C77FE7C53A35D987660E75E0
        58AF9C1988B56963707AD1F22CE9C35935A34D868445080E8B461F4C2BB23464
        DB070D6A8C6A606D45851B140C2D27C33A568429099B1B3A8FC16188A9479F73
        9EE7BEAF3A4F473C15BBE1E2BAB8B97FFFFB7F5D172202E0005C801B4889C7B1
        E3A736D69FFC26F8D5FE43C1DD159585C0BCA470030E9B4D08B8FE3A5776FBCF
        735FC88986EFE4687D93D41E3929C17B0FA5B3EB8E3C1790AAEA8352537B4C7A
        9A3F97DEB3E5C1C44738013B3B1DE2CBDCB497E86408EFCAE56C29F984B7D216
        836B3E9BFC256C2DD9425ECE12B20AF790FADEDA0F5E157068AD713A1401EF14
        91C80457AE5CA6EE702DE77F38838E4E321D7D4AC7E3661A6F56D33DD00BB000
        C03D27A0708AC9A2F44C3EFBF853A60D83B8A85642786C84D3D72B29DEBA828C
        6C3747EAAE01786CE7248E28054E0F9EF4F7B975FF324DADE5B4077F66687480
        B3BF56515A9ACBC27746F9B6A58DC20C1F400C90B91694465B51BA07EFD21BBA
        C8C6A265F48FFEC4A94B6504025E229E3EDAAEF6B3C4F1114539F9000620492D
        98A062BCE14AE5DFA130EB8A9FB073572EE80F199E0A72F78F61C61F2DE6C097
        DB19BBD70E20C933E08583082BD3B3D9F6F651CEB454B16377161A83D0E82477
        6E404DD17616CA18FF0CF600385EDA82580A3DF31F1383BF93E7F511C86FE042
        CBDF4C46A6F9E5C73065FE5AD216B8B1C20FD0CA02E0E52D280B6D1944C74328
        0D6B56AD276634D2F0F53E7CB9DB28C82B62EC5A056FBE9B8AD6DA669205504A
        21E60CCA8C619A1A33A62958BD99566F1F2E970B1C2E8CF111442F456C07385E
        71A010CB40992643DFFB515AD90F456BB45680D835CA446B014044E61C48C241
        76CE3288C31287950D21162815071277EAB519585333D1CE81DF3A7C5A297B23
        B3B056769E85D122440CB30B309305621B4EF4F88194D9DE00FEA796041C0578
        0646B47718409CC86E0000000049454E44AE426082}
      OptionsImage.Layout = blGlyphBottom
      OptionsImage.Spacing = 0
      TabOrder = 79
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = btnFinalizaOSClick
    end
    object imgImagem: TcxDBImage [12]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'IMAGEM'
      DataBinding.DataSource = DS
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.OnEditValueChanged = imgImagemPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 25
      Visible = False
      ZoomingOptions.ZoomPercent = 140
      OnDblClick = imgImagemDblClick
      Height = 107
      Width = 107
    end
    object edtDT_Prazo_Final: TcxDBDateEdit [13]
      Left = 449
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'CALENDARIO_DT_PREVISAO_FIM'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Kind = ckDateTime
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Height = 21
      Width = 98
    end
    object edtComp: TcxDBCurrencyEdit [14]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'COMP'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = False
      Style.HotTrack = False
      TabOrder = 18
      Visible = False
      Width = 50
    end
    object edtLarg: TcxDBCurrencyEdit [15]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'LARG'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = False
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Width = 50
    end
    object edtEspessura: TcxDBCurrencyEdit [16]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ESPESSURA'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = False
      Style.HotTrack = False
      TabOrder = 20
      Visible = False
      Width = 45
    end
    object edtQuantProduzir: TcxDBCurrencyEdit [17]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'QUANT_PRODUZIR'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = False
      Style.Color = 8454016
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 21
      Visible = False
      Height = 21
      Width = 57
    end
    object lblNumeroVenda: TcxDBLabel [18]
      Left = 444
      Top = 31
      Cursor = crHandPoint
      Hint = 'Numero do Or'#231'amento'
      DataBinding.DataField = 'CODVENDA'
      DataBinding.DataSource = DS
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Style.Color = clHighlightText
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      Style.TextColor = clGreen
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = lblNumeroVendaClick
      Height = 22
      Width = 64
      AnchorY = 42
    end
    object edtDT_Fim: TcxDBDateEdit [19]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'DT_FIM'
      DataBinding.DataSource = DS
      Properties.Kind = ckDateTime
      TabOrder = 60
      Visible = False
      Height = 21
      Width = 159
    end
    object edtTempoRegistrado: TcxTextEdit [20]
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 56
      Visible = False
      Width = 88
    end
    object edtTempoReal: TcxDBButtonEdit [21]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'TEMPO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 18
          Glyph.SourceDPI = 96
          Glyph.Data = {
            89504E470D0A1A0A0000000D494844520000000C0000000C080600000056755C
            E70000000467414D410000B18F0BFC6105000000097048597300000EC200000E
            C20115284A80000001254944415428536551B14EC330100D15152BEAD04F800C
            0C8C618A5A9BE62B28C267F547929D218CCD2F949D854F80A1C4A69D5918A08C
            8882B8E736AEDB9E74F2E9CECFF7DEF34114C494069DC3E577B7D56E1FA3FDD7
            FA592C7F8FDECFAA878FF09EAB6B2D4E8C1225E79351FD8545126A5162B60558
            5DEE4D6A126F35C9EA558B21F78686C4183D43BD09CF4F1D684A49C7BDC283B9
            CE32F48AA27844A29E6B9961F642F20E94237B9DC6A081979BB521C0D1A57EC5
            DB9EED681047339D26E00C0A3B80CF35F0DC2A79853B332D930DE06603C8F3FC
            B6D9C2E736C08ED2D8B9C102F7AC5B3798F2D8538268EB454B273A8C46B46944
            FB3F20E16D859ED05676E9DEA86C656B13F0D9AACB12AB99C2974BD4FCB2FF83
            DDF5F019D6D54A5C20513BEF83F8072210C9B1D8BE275A0000000049454E44AE
            426082}
          Kind = bkGlyph
        end>
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnButtonClick = EdtTempoRealGastoPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 57
      Visible = False
      Width = 94
    end
    object chkReverso: TcxDBCheckBox [22]
      Left = 10000
      Top = 10000
      Caption = 'Reverso'
      DataBinding.DataField = 'REVERSO'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 64
      Transparent = True
      Visible = False
    end
    object chkCom_Logo: TcxDBCheckBox [23]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'Com Logo'
      DataBinding.DataField = 'COM_LOGO'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 63
      Transparent = True
      Visible = False
      Height = 21
      Width = 72
    end
    object edtCodProdutoÎPRODUTO: TcxDBButtonEdit [24]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CODPRODUTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Action = ActAdicionarReceita
          Glyph.SourceDPI = 96
          Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001B744558745469746C65004164643B506C75733B426172733B526962
            626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
            63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
            E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
            CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
            A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
            C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
            3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
            B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
            E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
            AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
            D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
            B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
            44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
            5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
            F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
            81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
            EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
            8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
            5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
            17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
            CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
            56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
            16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
            1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
            EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
            DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
            D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
            EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
            426082}
          Hint = 'Adicionar com Composi'#231#227'o'
          Kind = bkGlyph
        end>
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = edtCodProdutoÎPRODUTOPropertiesEditValueChanged
      Style.Color = clMoneyGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 14
      Visible = False
      Width = 72
    end
    object tbrPConclusao: TcxDBTrackBar [25]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'PCONCLUSAO'
      DataBinding.DataSource = DS
      Properties.AutoSize = False
      Properties.Frequency = 5
      Properties.Max = 100
      Properties.ShowPositionHint = True
      Properties.ShowTicks = False
      Properties.TrackSize = 11
      Properties.OnChange = TbPercentualConclusaoPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 62
      Visible = False
      Height = 22
      Width = 275
    end
    object edtPATH: TcxDBButtonEdit [26]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'PATH'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EdtCaminhoArquivoPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 24
      Visible = False
      Height = 21
      Width = 421
    end
    object lblTempoTotalOPDisplay: TcxDBLabel [27]
      Left = 10000
      Top = 10000
      Hint = 
        'Tempo total gasto em todas as Ordens de Servi'#231'o deste produto (O' +
        'rdem de Produ'#231#227'o)'
      DataBinding.DataField = 'TempoTotalOPDisplay'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      ShowHint = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
      OnClick = lblTempoTotalOPDisplayClick
      Height = 26
      Width = 85
      AnchorX = 10085
    end
    object TreeListComposicao: TcxDBTreeList [28]
      Left = 10000
      Top = 10000
      Width = 541
      Height = 463
      Bands = <
        item
          Caption.AlignHorz = taCenter
          Caption.ShowEndEllipsis = False
          Caption.Text = 'Materiais'
          Options.Customizing = False
          Options.Moving = False
          Options.Sizing = False
          Options.VertSizing = False
        end>
      DataController.DataSource = DS_Composicao
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'CODIGO'
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Append.Visible = False
      OptionsCustomizing.BandsQuickCustomization = True
      OptionsCustomizing.ColumnsQuickCustomization = True
      OptionsData.Appending = True
      OptionsData.Deleting = False
      OptionsData.ImmediatePost = True
      OptionsData.Inserting = True
      OptionsData.CheckHasChildren = False
      OptionsSelection.HideFocusRect = False
      OptionsSelection.InvertSelect = False
      PopupMenu = MenuComposicao
      RootValue = -1
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 51
      Visible = False
      OnCustomDrawDataCell = TreeListComposicaoCustomDrawDataCell
      OnDblClick = TreeListComposicaoDblClick
      OnEditing = TreeListComposicaoEditing
      object cxDBTreeList1CODIGO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        DataBinding.FieldName = 'CODIGO'
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaocxDBTreeListEdit: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Caption = 'Editar'
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000020744558745469746C6500456469743B426172733B526962626F6E3B
              5374616E646172643B3013C3DB0000028449444154785E5D515D48145114FEEE
              CE9AA662FE942B1499246108D94B106588D24B461914843DD443500FF590D81F
              F550D443692F86A1A084AB581AD90F124260A4596AB14A96B556AC6192FDA045
              AEB3BBCE9DB9B77BE732BBEA99F9CEB9C39CEF3BDF9C219C731042B496CEB167
              9AA6157170C89045BE53C758A286D177F4C0A69D826700801B2A5C42A4E85069
              2E9CE08B12711EE07DFC6907004DD16202C4B254834119B823C2559297BA092C
              66D9FD4B05603135832D602BBEE348C134B923B0D40175BE3B4A8AED80280191
              2D93D9FDAF6E6C4744A70B05542B63311224513A23CA8D26EAE6BC3400482C3C
              DB6F00A02E47C0A41694650E0680896AC933E1F699886ACCCF636EB419DD97B6
              FC6A3ABEB10A4092E300865A22989CCA17FF46108648288C89170DC84D1B41CE
              E17BF0B7579CBAFE3DE88E3A60A6691319531305D462B920EB3AC69FD7211583
              C8D9530DFAB5067F3E04A045CC93D11D50CA94804CB610E0727184F520023DF5
              58A5F9B07E5F0DC21FABF1A6B907C8F4E0CBCFC9A69880A5044489EE7D6EF61F
              C67BEA904986B0E1602D667D573174A70FD64A0FDA6E0FB77AC782179C25C2B2
              991CC9091A92E25D6086B47D0B19F435F2CA6B31DD7BD19E1C4E4E87D7FBB65D
              90CF0198761C987A48EFBD7CB3BF880358E34900D7032808FA905F598FA9AE4A
              8C3E194638291D775BDFDFEF98089F01F0BBDCB3CC74362D9D2C1748115821B0
              2E6FEB91879D0DD7B83E39C8BB8E65F3F613F9BC6C75FC0300D902EE40DB2EEC
              CF888314588497D5DB00606D4149C58F77034F794BD5797EA538979766C53F02
              902310E76F2C81BFB1187B5335B8B12422212A0BF9F67924ABB0AC6F8646FE0E
              249A531D33A1F96E697B778A464F57F6AA8100FE037C7D7091F11B3976000000
              0049454E44AE426082}
            Hint = 'Editar'
            Kind = bkGlyph
          end>
        Properties.ViewStyle = vsButtonsOnly
        Properties.OnButtonClick = TreeListComposicaocxDBTreeListEditPropertiesButtonClick
        Visible = False
        Options.Editing = False
        Options.ShowEditButtons = eisbAlways
        Width = 100
        Position.ColIndex = 29
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1CODPRODUCAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        DataBinding.FieldName = 'CODPRODUCAO'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1CODPRODUCAO_OS: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        DataBinding.FieldName = 'CODPRODUCAO_OS'
        Options.Customizing = False
        Options.Editing = False
        Width = 121
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1CODVENDA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Caption.Text = 'C'#243'd. Venda'
        DataBinding.FieldName = 'CODVENDA'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1CODPRODUTO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownHeight = 200
        Properties.DropDownWidth = 600
        Properties.IncrementalFilteringOptions = [ifoHighlightSearchText]
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'CODIGO'
          end
          item
            Caption = 'Descri'#231#227'o'
            FieldName = 'DESCRICAO'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DSProduto
        Properties.OnEditValueChanged = cxDBTreeList1CODPRODUTOPropertiesEditValueChanged
        Caption.Text = 'C'#243'd. Produto'
        DataBinding.FieldName = 'CODPRODUTO'
        Width = 56
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
        OnGetDisplayText = cxDBTreeList1CODPRODUTOGetDisplayText
        OnSetStoredPropertyValue = cxDBTreeList1CODPRODUTOSetStoredPropertyValue
      end
      object cxDBTreeList1DESCRICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Caption.Text = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        Options.Editing = False
        Width = 261
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaocxQUANT_PREVISTA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00;-0.00'
        Properties.ReadOnly = False
        Visible = False
        Caption.Text = 'Quant. Prevista'
        DataBinding.FieldName = 'QUANT_PREVISTA'
        Width = 100
        Position.ColIndex = 14
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1QUANT: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Properties.OnValidate = cxDBTreeList1QUANTPropertiesValidate
        Caption.Text = 'Quant'
        DataBinding.FieldName = 'QUANT'
        Options.Editing = False
        Width = 62
        Position.ColIndex = 13
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1COMP: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00;-0.00'
        Properties.ReadOnly = True
        Visible = False
        Caption.Text = 'Comprimento'
        DataBinding.FieldName = 'COMP'
        Options.Editing = False
        Width = 87
        Position.ColIndex = 9
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1LARG: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00;-0.00'
        Properties.ReadOnly = True
        Visible = False
        Caption.Text = 'Largura'
        DataBinding.FieldName = 'LARG'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 10
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1ESPESSURA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00;-0.00'
        Properties.ReadOnly = True
        Visible = False
        Caption.Text = 'Espessura'
        DataBinding.FieldName = 'ESPESSURA'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 11
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1QTDADEPECA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00;-0.00'
        Properties.ReadOnly = True
        Visible = False
        Caption.Text = 'Pe'#231'as'
        DataBinding.FieldName = 'QTDADEPECA'
        Options.Editing = False
        Width = 53
        Position.ColIndex = 8
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1MEDIDAS: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Caption.Text = 'Medidas'
        DataBinding.FieldName = 'MEDIDAS'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 12
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1ATIVO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Caption.Text = 'Ativo'
        DataBinding.FieldName = 'ATIVO'
        Options.Editing = False
        Width = 39
        Position.ColIndex = 19
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1DT_ALTERACAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        Visible = False
        DataBinding.FieldName = 'DT_ALTERACAO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 20
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1UNIDADE: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Caption.Text = 'Unidade'
        DataBinding.FieldName = 'UNIDADE'
        Options.Editing = False
        Width = 52
        Position.ColIndex = 7
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1CUSTO_VENDA: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CUSTO_VENDA'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 22
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1VALOR: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'VALOR'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 23
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaoDT_ESTOQUE_BAIXA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        Visible = False
        Caption.Text = 'Data Baixa do Estoque'
        DataBinding.FieldName = 'DT_ESTOQUE_BAIXA'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 24
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaoESTOQUE_BAIXADO: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'ESTOQUE_BAIXADO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 25
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaoCODCENTRO_TRABALHO: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CODCENTRO_TRABALHO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 26
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaoCENTRO_TRABALHO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = FrmPrincipal.imgProducaoPequena
        Properties.ImmediatePost = True
        Properties.Items = <>
        Visible = False
        Caption.Text = 'Centro de Trabalho'
        DataBinding.FieldName = 'CODCENTRO_TRABALHO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 17
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaoTEMPO_ESTIMADO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000024744558745469746C6500466F726D61744E756D62657254696D653B
              466F726D61743B436C6F636B3B16EA68990000037049444154785E4D537B4CD3
              5718BD4CB7E89CFBCB853083AC0564B0B14DE632DC1830680B52445E090242EA
              2A5194B94E9916123774611BF8E6A1511B5C313586B1C11CA31D5A1E6ED66D2D
              43252D54B0A52585D1D7A6B1505E3BBBBF1B5C7693932FE7DEEF9CFB7D5FEE25
              FEC15B0C7405502C1BF8F4E0D6C1AA8A0BA6A31506F3E795B3A62AB9E1EEE1F2
              8BBF57C832E9F9722ECF7F8F6A28747919E43F715BA9F445E367F2EF2DA7BF80
              47DD0ADF6F5AD024F87ED5C2DDD982D1634771472EBBA62ADEB6960A9E9AB973
              93FC9C2B264CAC95ED8E3455554C4DA82EC0D3F52D0CE57BA04913A03D2E9646
              21F46552B8DA95186F6AC4C081BD53CA829C104ED797B59990F470FE8ABB873E
              1AF8B3E512C69567F1A32011BA9AE318D2F5C33AF1378BB76B8FA35390006B7D
              35356980AE54DA410D9E616D77880512DA2F5C3FA8A0162561A8F71626BD3EF8
              FCF35858FC07D334524EF77550A72461F2D249AE0A5C4D8A937033236A71F24F
              36C5191864BBA0AF6BC084DBC784FF5B8C3BDC8FD15FDF08C3EE228CD61E46BB
              E0BD2E56852625D1EDFA4E892EB110F6610BAE0937A3352E19AA37DF45D32B6F
              41965288E9193FA6FE9A86DD6CC10DB1088EC66AB4276E72528315A443180F6F
              9B12EAE40478BC8FE179E4C7F0E8186CF671381C0EE414C9394EF767E0A6E71A
              D1FB98AC3F422F797B8E1AAC246D09EFB827BFAEC38D74219C161B1EF9E62866
              B9C890B5FD10CCD480E34EAB1DDD5B44B05697E34A6C8C9319A8366DBC6E3C72
              10FA9DF9186E56B2E14DFB1728E61932F33FC103AB8D71F3E566E877E4E18F32
              091431AF69590B0D1B5E2DD564A761EC4B39BA33D3E01ABC87B9F905CCCE2FB2
              98B1ED00C66C76B88D46F4668BF1A0722FDA44F1A8895C5FC25E66F873AB5637
              6D8836EAF74931B47F272BD1AC388F87A32358A4D37F383282FB94F766A46268
              DF07F8657B16EAA2223454FCECD2F327CBF6F3D6C5285E8F76F6156663A4BC04
              FAA21CF46E4D4577BA007D9929D017E7E0FEC75268B352712E6ABDAB28283082
              D39D7D399C10CF374AC295921F1418762A224C436782DBF416D3871258A899A9
              AC18BA820C346F7C03B5A1BCAEDC17D6843FF95475617C42DC5714141759255C
              599521C12535A1BC9E53613C2F4DC0493ECFFB153FA4471EBC96EB79D5525E80
              4B798E9CE08710722694BF04DE932FFDF4527FAB299E679171B61F70ECA57584
              212498E15FF40537BBD4B9F0DB0000000049454E44AE426082}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = TreeListComposicaoTEMPO_ESTIMADOPropertiesButtonClick
        Visible = False
        Caption.Text = 'Tempo Estimado (min)'
        DataBinding.FieldName = 'TEMPO_ESTIMADO'
        Options.Editing = False
        Width = 118
        Position.ColIndex = 21
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaocxTEM_PRODUCAO_FINALIZADA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Properties.OnEditValueChanged = TreeListComposicaocxTEM_PRODUCAO_FINALIZADAPropertiesEditValueChanged
        Caption.Text = 'Finalizada'
        DataBinding.FieldName = 'TEM_PRODUCAO_FINALIZADA'
        Width = 36
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaocxCALENDARIO_DT_INICIO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Data de In'#237'cio'
        DataBinding.FieldName = 'CALENDARIO_DT_INICIO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 27
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaocxCATEGORIA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.CharCase = ecUpperCase
        Properties.DropDownHeight = 200
        Properties.DropDownWidth = 800
        Properties.KeyFieldNames = 'DESCRICAO'
        Properties.ListColumns = <
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DSCategoria
        Properties.OnEditValueChanged = TreeListComposicaocxCATEGORIAPropertiesEditValueChanged
        Visible = False
        Caption.Text = 'Categoria'
        DataBinding.FieldName = 'CATEGORIA'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 28
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaocxCODUSUARIO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownHeight = 100
        Properties.DropDownWidth = 300
        Properties.ImmediateDropDownWhenKeyPressed = False
        Properties.ImmediatePost = True
        Properties.IncrementalFiltering = False
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'USUARIO'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DSUsuario
        Visible = False
        Caption.Text = 'Usuario'
        DataBinding.FieldName = 'CODUSUARIO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 16
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaoQUANT_FATURAR: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00;-0.00'
        Properties.ReadOnly = True
        Visible = False
        Caption.Text = 'Quant. A Faturar'
        DataBinding.FieldName = 'QUANT_FATURAR'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 15
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1PROTOCOLOBAIXA: TcxDBTreeListColumn
        Caption.Text = 'Protocolo'
        DataBinding.FieldName = 'PROTOCOLO_BAIXA'
        Width = 85
        Position.ColIndex = 18
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaoOrdenacao: TcxDBTreeListColumn
        DataBinding.FieldName = 'Ordenacao'
        Width = 100
        Position.ColIndex = 30
        Position.RowIndex = 0
        Position.BandIndex = 0
        SortOrder = soDescending
        SortIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object TreeListComposicaoTIPO_USO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Tipo Uso'
        DataBinding.FieldName = 'TIPO_USO'
        Width = 100
        Position.ColIndex = 31
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object cbxSituacao: TcxDBLookupComboBox [29]
      Left = 449
      Top = 107
      AutoSize = False
      DataBinding.DataField = 'SITUACAO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ListColumns = <>
      Properties.ListOptions.CaseInsensitive = True
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 27
      Width = 98
    end
    object tokProducao_Marcador: TdxDBTokenEdit [30]
      Left = 145
      Top = 263
      AutoSize = False
      DataBinding.DataField = 'TOKEN_PRODUCAO_MARCADOR'
      DataBinding.DataSource = DS
      Properties.Lookup.FilterSources = [tefsDisplayText]
      Properties.Tokens = <
        item
          DisplayText = '1'
          Text = 'Token0'
        end
        item
          DisplayText = '2'
          Text = 'Token1'
        end
        item
          DisplayText = '3'
          Text = 'Token2'
        end
        item
          DisplayText = '4'
          Text = 'Token3'
        end
        item
          DisplayText = '5'
          Text = 'Token4'
        end
        item
          DisplayText = '6'
          Text = 'Token5'
        end
        item
          DisplayText = '7'
          Text = 'Token6'
        end
        item
          DisplayText = '8'
          Text = 'Token7'
        end>
      Style.Color = clWhite
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      TabOrder = 32
      Height = 25
      Width = 152
    end
    object tokUsuarios: TdxDBTokenEdit [31]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'TOKEN_USUARIO'
      DataBinding.DataSource = DS
      Properties.AllowAddCustomTokens = False
      Properties.ImmediatePost = True
      Properties.Lookup.FilterSources = [tefsDisplayText]
      Properties.PostEditValueOnFocusLeave = True
      Properties.Tokens = <
        item
          DisplayText = '1'
          Text = 'Token0'
        end
        item
          DisplayText = '2'
          Text = 'Token1'
        end
        item
          DisplayText = '3'
          Text = 'Token2'
        end
        item
          DisplayText = '4'
          Text = 'Token3'
        end
        item
          DisplayText = '5'
          Text = 'Token4'
        end
        item
          DisplayText = '6'
          Text = 'Token5'
        end
        item
          DisplayText = '7'
          Text = 'Token6'
        end
        item
          DisplayText = '8'
          Text = 'Token7'
        end>
      Properties.OnTokenAdd = tokUsuariosPropertiesTokenAdd
      Style.Color = clSkyBlue
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      TabOrder = 45
      Visible = False
      Height = 25
      Width = 196
    end
    object cssSituacao: TcxDBLookupComboBox [32]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'CSSSITUACAO'
      DataBinding.DataSource = DS
      Properties.IncrementalFilteringOptions = [ifoHighlightSearchText]
      Properties.ListColumns = <
        item
        end
        item
          RepositoryItem = FrmPrincipal.cxEditRepository1ColorEdit1
        end>
      Properties.OnEditValueChanged = cssSituacaoPropertiesEditValueChanged
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 55
      Visible = False
      Height = 21
      Width = 44
    end
    object edtCodPessoasÎPESSOAS: TcxDBButtonEdit [33]
      Left = 6
      Top = 155
      Hint = 'F2 - Consulta / F3 - Cadastro'
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
      Properties.OnEditValueChanged = edtCodPessoasÎPESSOASPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 10
      Height = 21
      Width = 72
    end
    object rtcCodPessoasÎPESSOASÎESTRELA: TdxRatingControl [34]
      Left = 10000
      Top = 10000
      Rating = 3.000000000000000000
      Style.HotTrack = False
      TabOrder = 42
      Visible = False
    end
    object rctCodProdutoÎPRODUTOÎESTRELA: TdxRatingControl [35]
      Left = 10000
      Top = 10000
      AutoSize = False
      Rating = 4.000000000000000000
      Style.HotTrack = False
      TabOrder = 41
      Visible = False
      Height = 21
      Width = 87
    end
    object edtTempo_Estimado: TcxDBButtonEdit [36]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'TEMPO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 18
          Glyph.SourceDPI = 96
          Glyph.Data = {
            89504E470D0A1A0A0000000D494844520000000C0000000C080600000056755C
            E70000000467414D410000B18F0BFC6105000000097048597300000EC200000E
            C20115284A80000001254944415428536551B14EC330100D15152BEAD04F800C
            0C8C618A5A9BE62B28C267F547929D218CCD2F949D854F80A1C4A69D5918A08C
            8882B8E736AEDB9E74F2E9CECFF7DEF34114C494069DC3E577B7D56E1FA3FDD7
            FA592C7F8FDECFAA878FF09EAB6B2D4E8C1225E79351FD8545126A5162B60558
            5DEE4D6A126F35C9EA558B21F78686C4183D43BD09CF4F1D684A49C7BDC283B9
            CE32F48AA27844A29E6B9961F642F20E94237B9DC6A081979BB521C0D1A57EC5
            DB9EED681047339D26E00C0A3B80CF35F0DC2A79853B332D930DE06603C8F3FC
            B6D9C2E736C08ED2D8B9C102F7AC5B3798F2D8538268EB454B273A8C46B46944
            FB3F20E16D859ED05676E9DEA86C656B13F0D9AACB12AB99C2974BD4FCB2FF83
            DDF5F019D6D54A5C20513BEF83F8072210C9B1D8BE275A0000000049454E44AE
            426082}
          Kind = bkGlyph
        end>
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnButtonClick = EdtTempoEstimadoPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 58
      Visible = False
      Height = 21
      Width = 79
    end
    object edtObservacao: TcxDBMemo [37]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'OBS_PRODUCAO'
      DataBinding.DataSource = DS
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 26
      Visible = False
      Height = 198
      Width = 529
    end
    object edtCodPessoasÎPESSOASÎRAZAOSOCIAL: TcxDBTextEdit [38]
      Left = 78
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'RAZAOSOCIAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 11
      Height = 21
      Width = 322
    end
    object BtnAdicionaTarefa: TcxButton [39]
      Left = 10000
      Top = 10000
      Width = 99
      Height = 25
      Caption = 'Novo Produto'
      Colors.Default = clLime
      Colors.Normal = clLime
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001B744558745469746C65004164643B506C75733B426172
        733B526962626F6E3B9506332F0000004749444154785EE592C90900200C046D
        D0A6ACCAEE4604E32B8AB8011F3E0602590672244062DBCCA532E8F5D7024017
        AC98C11B4205C6D10896F50486B744235CA09FF1FD274A34995FABF9E946D7E8
        0000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 48
      Visible = False
      OnClick = BtnAdicionaTarefaClick
    end
    object btnRemoverTarefa: TcxButton [40]
      Left = 10000
      Top = 10000
      Width = 111
      Height = 25
      Caption = 'Remover Produto'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000029744558745469746C650052656D6F76653B44656C6574
        653B426172733B526962626F6E3B5374616E646172643B635648300000002B49
        444154785EEDD03111000008C340C4E104D3B8091EE8C2711DB2FE9000A4CE00
        06BA924D32F066A281015E5FEF3B94FC8DC40000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 49
      Visible = False
      OnClick = btnRemoverTarefaClick
    end
    object cxbFuncionario: TcxDBLookupComboBox [41]
      Left = 6
      Top = 107
      AutoSize = False
      DataBinding.DataField = 'PESSOA_FUNCIONARIO_CODIGO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ListColumns = <>
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 27
      Width = 105
    end
    object EdtVendaÎVenda: TcxDBButtonEdit [42]
      Left = 12
      Top = 339
      AutoSize = False
      DataBinding.DataField = 'CODVENDA'
      DataBinding.DataSource = DS
      Enabled = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 34
      Height = 21
      Width = 101
    end
    object cxbCentroTrabalho: TcxDBImageComboBox [43]
      Left = 112
      Top = 107
      AutoSize = False
      DataBinding.DataField = 'CODCENTRO_TRABALHO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownRows = 15
      Properties.Images = FrmPrincipal.imgProducaoPequena
      Properties.ImmediatePost = True
      Properties.Items = <>
      Properties.OnEditValueChanged = cxbCentroTrabalhoPropertiesEditValueChanged
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 27
      Width = 218
    end
    object btnAgendarProduçao: TcxButton [44]
      Left = 10000
      Top = 10000
      Width = 115
      Height = 25
      Caption = 'Consumir Estoque'
      OptionsImage.ImageIndex = 89
      OptionsImage.Images = FrmPrincipal.imgProducaoPequena
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 50
      Visible = False
      OnClick = btnAgendarProduçaoClick
    end
    object edtTempo: TcxDBButtonEdit [45]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'TEMPO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtTempoPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 65
      Visible = False
      Height = 21
      Width = 49
    end
    object cxDBLabel1: TcxDBLabel [46]
      Left = 56
      Top = 31
      DataBinding.DataField = 'PROTOCOLO'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 138
    end
    object btnProduzir: TcxButton [47]
      Left = 10000
      Top = 10000
      Width = 124
      Height = 35
      Caption = 'Produzir'
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 86
      OptionsImage.Images = FrmPrincipal.imgProducaoPequena
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 23
      Visible = False
      OnClick = btnProduzirClick
    end
    object edtQuant: TcxDBCurrencyEdit [48]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'QUANT'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 22
      Visible = False
      Height = 21
      Width = 55
    end
    object SprFormula: TdxSpreadSheet [49]
      Left = 10000
      Top = 10000
      Width = 529
      Height = 453
      OptionsBehavior.Inserting = False
      OptionsView.GridLines = False
      PageControl.Visible = False
      Visible = False
      Data = {
        8002000044585353763242461000000042465320000000000000000000000101
        010100000000000001004246532000000000424653200100000001000000200B
        00000007000000430061006C0069006200720069000000000000002000000020
        0000000020000000000020000000000020000000000020000007000000470045
        004E004500520041004C00000000000002000000000000000001424653200100
        0000424653201700000054006400780053007000720065006100640053006800
        6500650074005400610062006C00650056006900650077000600000053006800
        650065007400310001FFFFFFFFFFFFFFFF640000000200000002000000020000
        0055000000140000000200000002000000000200000002000000000000010000
        0000000101000042465320550000000000000042465320000000004246532014
        0000000000000042465320000000000000000000000000010000000000000000
        0000000000000000000000424653200000000002020000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000064000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000200020200020000000000000000000000000000000000020000000000
        0000000000000000000000000000000000000000000000000000000000000202
        0000000000000000424653200000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000}
    end
    object edtCodProjetoÎPROJETOÎDESCRICAO: TcxLabel [50]
      Left = 276
      Top = 339
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 265
    end
    object edtCodProjetoÎPROJETO: TcxDBButtonEdit [51]
      Left = 220
      Top = 339
      AutoSize = False
      DataBinding.DataField = 'CODPROJETO'
      DataBinding.DataSource = DS
      Enabled = False
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = edtCodProdutoÎPRODUTOPropertiesEditValueChanged
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 36
      Height = 21
      Width = 55
    end
    object cxGrid1: TcxGrid [52]
      Left = 10000
      Top = 10000
      Width = 529
      Height = 312
      TabOrder = 66
      Visible = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGrid1DBTableView1CODPRODUCAO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUCAO'
          Visible = False
        end
        object cxGrid1DBTableView1CODPRODUCAO_OS: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUCAO_OS'
          Visible = False
        end
        object cxGrid1DBTableView1CODVENDA: TcxGridDBColumn
          DataBinding.FieldName = 'CODVENDA'
          Visible = False
        end
        object cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Servi'#231'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 256
        end
        object cxGrid1DBTableView1COMP: TcxGridDBColumn
          DataBinding.FieldName = 'COMP'
          Visible = False
        end
        object cxGrid1DBTableView1LARG: TcxGridDBColumn
          DataBinding.FieldName = 'LARG'
          Visible = False
        end
        object cxGrid1DBTableView1ESPESSURA: TcxGridDBColumn
          DataBinding.FieldName = 'ESPESSURA'
          Visible = False
        end
        object cxGrid1DBTableView1QTDADEPECA: TcxGridDBColumn
          DataBinding.FieldName = 'QTDADEPECA'
          Visible = False
        end
        object cxGrid1DBTableView1MEDIDAS: TcxGridDBColumn
          DataBinding.FieldName = 'MEDIDAS'
          Visible = False
        end
        object cxGrid1DBTableView1ATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
        object cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
        end
        object cxGrid1DBTableView1UNIDADE: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDADE'
          Visible = False
        end
        object cxGrid1DBTableView1QUANT_PREVISTA: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT_PREVISTA'
          Visible = False
        end
        object cxGrid1DBTableView1TIPO_USO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO_USO'
          Visible = False
        end
        object cxGrid1DBTableView1CUSTO_VENDA: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO_VENDA'
          Visible = False
        end
        object cxGrid1DBTableView1VALOR: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR'
          Visible = False
        end
        object cxGrid1DBTableView1PESO: TcxGridDBColumn
          DataBinding.FieldName = 'PESO'
          Visible = False
        end
        object cxGrid1DBTableView1CUSTO_VENDA_UNITARIO: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO_VENDA_UNITARIO'
          Visible = False
        end
        object cxGrid1DBTableView1PARENT: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT'
          Visible = False
        end
        object cxGrid1DBTableView1ACABAMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'ACABAMENTO'
          Visible = False
        end
        object cxGrid1DBTableView1APROVEITAMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'APROVEITAMENTO'
          Visible = False
        end
        object cxGrid1DBTableView1CODACABAMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODACABAMENTO'
          Visible = False
        end
        object cxGrid1DBTableView1CODCOR: TcxGridDBColumn
          DataBinding.FieldName = 'CODCOR'
          Visible = False
        end
        object cxGrid1DBTableView1OBS_PRODUCAO: TcxGridDBColumn
          DataBinding.FieldName = 'OBS_PRODUCAO'
          Visible = False
        end
        object cxGrid1DBTableView1TEM_PRODUCAO_FINALIZADA: TcxGridDBColumn
          DataBinding.FieldName = 'TEM_PRODUCAO_FINALIZADA'
          Visible = False
        end
        object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          Visible = False
        end
        object cxGrid1DBTableView1TOTAL_RELATORIO: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL_RELATORIO'
          Visible = False
        end
        object cxGrid1DBTableView1VALOR_COMPRA: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_COMPRA'
          Visible = False
        end
        object cxGrid1DBTableView1VALOR_RELATORIO: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_RELATORIO'
          Visible = False
        end
        object cxGrid1DBTableView1VDESC: TcxGridDBColumn
          DataBinding.FieldName = 'VDESC'
          Visible = False
        end
        object cxGrid1DBTableView1DT_ESTOQUE_BAIXA: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ESTOQUE_BAIXA'
          Visible = False
        end
        object cxGrid1DBTableView1ESTOQUE_BAIXADO: TcxGridDBColumn
          DataBinding.FieldName = 'ESTOQUE_BAIXADO'
          Visible = False
        end
        object cxGrid1DBTableView1TEMPO_ESTIMADO: TcxGridDBColumn
          DataBinding.FieldName = 'TEMPO_ESTIMADO'
          Visible = False
        end
        object cxGrid1DBTableView1DT_EMISSAO: TcxGridDBColumn
          Caption = 'Inicio'
          DataBinding.FieldName = 'DT_EMISSAO'
          Width = 84
        end
        object cxGrid1DBTableView1CODPRODUTO_CATEGORIA: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_CATEGORIA'
          Visible = False
        end
        object cxGrid1DBTableView1CATEGORIA: TcxGridDBColumn
          DataBinding.FieldName = 'CATEGORIA'
          Visible = False
        end
        object cxGrid1DBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn
          DataBinding.FieldName = 'CODCENTRO_TRABALHO'
          Visible = False
        end
        object cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
        end
        object cxGrid1DBTableView1PODE_ALTERAR_ESTOQUE: TcxGridDBColumn
          DataBinding.FieldName = 'PODE_ALTERAR_ESTOQUE'
          Visible = False
        end
        object cxGrid1DBTableView1PROTOCOLO: TcxGridDBColumn
          DataBinding.FieldName = 'PROTOCOLO'
          Visible = False
        end
        object cxGrid1DBTableView1QUANT: TcxGridDBColumn
          Caption = 'Tempo Min/Seg'
          DataBinding.FieldName = 'QUANT'
          Width = 89
        end
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'USUARIO'
          Width = 108
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object tokProducao_Tag: TdxDBTokenEdit [53]
      Left = 298
      Top = 263
      AutoSize = False
      DataBinding.DataField = 'TOKEN_PRODUCAO_TAG'
      DataBinding.DataSource = DS
      Properties.Lookup.FilterSources = [tefsDisplayText]
      Properties.Tokens = <
        item
          DisplayText = '1'
          Text = 'Token0'
        end
        item
          DisplayText = '2'
          Text = 'Token1'
        end
        item
          DisplayText = '3'
          Text = 'Token2'
        end
        item
          DisplayText = '4'
          Text = 'Token3'
        end
        item
          DisplayText = '5'
          Text = 'Token4'
        end
        item
          DisplayText = '6'
          Text = 'Token5'
        end
        item
          DisplayText = '7'
          Text = 'Token6'
        end
        item
          DisplayText = '8'
          Text = 'Token7'
        end>
      Style.Color = clWhite
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      TabOrder = 33
      Height = 25
      Width = 243
    end
    object btnTarefasCliente: TcxButton [54]
      Left = 509
      Top = 31
      Width = 38
      Height = 22
      Caption = 'Cadastro'
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 16
      OptionsImage.Glyph.SourceWidth = 16
      OptionsImage.Glyph.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00E8AF72FFD77711FFE09545FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E6AA6BFFD77711FFD77711FFD77711FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00E6AA6BFFD77711FFD77711FFD77711FFF0CCA5FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6AA
        6BFFD77711FFD77711FFD77711FFF0CCA5FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00EBBB88FFDC882FFFD77711FFD77711FFDA8020FFE09545FFD777
        11FFD77711FFD77711FFF0CCA5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00E6AA6BFFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
        11FFD77711FFF0CCA5FFFFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FFBCBCBCFFFFFFFF00F1D0
        ADFFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
        11FFE5A663FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FFE0E0E0FFFFFFFF00E199
        4DFFD77711FFD77711FFD77711FFE1994DFFD87B18FFD77711FFD77711FFD777
        11FFDB8427FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FFF2F2F2FFFFFFFF00DB84
        27FFD77711FFDC882FFFFAEEE1FFFFFFFF00F6E1CBFFD77711FFD77711FFD777
        11FFD77711FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FFEDEDEDFFFFFFFF00DD8C
        36FFDC882FFFFAEEE1FFFFFFFF00FFFFFF00FFFFFF00DC882FFFD77711FFD777
        11FFD77711FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FFD3D3D3FFFFFFFF00ECBF
        8FFFFAEEE1FFFFFFFF00FFFFFF00FFFFFF00F5DDC3FFD77711FFD77711FFD777
        11FFDF913EFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FFACACACFFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F7E5D2FFDA8020FFD77711FFD77711FFD777
        11FFF1D0ADFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F7E5D2FFDA8020FFD77711FFD77711FFD77711FFECBF
        8FFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00EAB781FFE1994DFFE1994DFFE5A663FFF5DDC3FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDED
        EDFF969696FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00A7A7A7FFCECECEFFDCDCDCFFDCDCDCFFD7D7D7FFACACACFF7676
        76FF727272FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D77711FFD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFFFFFFF00FFFFFF007272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FFFFFF
        FF00FFFFFF00727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OptionsImage.Spacing = 0
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnTarefasClienteClick
    end
    object cbxEstagio: TcxDBLookupComboBox [55]
      Left = 331
      Top = 107
      AutoSize = False
      DataBinding.DataField = 'PRODUCAO_ESTAGIO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ListColumns = <>
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 27
      Width = 117
    end
    object cbxAcabamento: TcxDBLookupComboBox [56]
      Left = 12
      Top = 221
      AutoSize = False
      DataBinding.DataField = 'ACABAMENTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ListColumns = <>
      Properties.OnEditValueChanged = cbxAcabamentoPropertiesEditValueChanged
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 27
      Height = 27
      Width = 132
    end
    object cbxLocal: TcxDBLookupComboBox [57]
      Left = 145
      Top = 221
      AutoSize = False
      DataBinding.DataField = 'LOCAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ListColumns = <>
      Properties.OnEditValueChanged = cbxLocalPropertiesEditValueChanged
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 28
      Height = 27
      Width = 152
    end
    object cbxTipo_Impressao: TcxDBLookupComboBox [58]
      Left = 298
      Top = 221
      AutoSize = False
      DataBinding.DataField = 'TIPO_IMPRESSAO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ListColumns = <>
      Properties.OnEditValueChanged = cbxTipo_ImpressaoPropertiesEditValueChanged
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 29
      Height = 27
      Width = 243
    end
    object cxGrid2: TcxGrid [59]
      Left = 10000
      Top = 10000
      Width = 490
      Height = 405
      TabOrder = 67
      Visible = False
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGridDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUCAO'
          Visible = False
        end
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUCAO_OS'
          Visible = False
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'CODVENDA'
          Visible = False
        end
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
        end
        object cxGridDBColumn6: TcxGridDBColumn
          Caption = 'Servi'#231'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 256
        end
        object cxGridDBColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'COMP'
          Visible = False
        end
        object cxGridDBColumn8: TcxGridDBColumn
          DataBinding.FieldName = 'LARG'
          Visible = False
        end
        object cxGridDBColumn9: TcxGridDBColumn
          DataBinding.FieldName = 'ESPESSURA'
          Visible = False
        end
        object cxGridDBColumn10: TcxGridDBColumn
          DataBinding.FieldName = 'QTDADEPECA'
          Visible = False
        end
        object cxGridDBColumn11: TcxGridDBColumn
          DataBinding.FieldName = 'MEDIDAS'
          Visible = False
        end
        object cxGridDBColumn12: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
        object cxGridDBColumn13: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
        end
        object cxGridDBColumn14: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDADE'
          Visible = False
        end
        object cxGridDBColumn15: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT_PREVISTA'
          Visible = False
        end
        object cxGridDBColumn16: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO_USO'
          Visible = False
        end
        object cxGridDBColumn17: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO_VENDA'
          Visible = False
        end
        object cxGridDBColumn18: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR'
          Visible = False
        end
        object cxGridDBColumn19: TcxGridDBColumn
          DataBinding.FieldName = 'PESO'
          Visible = False
        end
        object cxGridDBColumn20: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO_VENDA_UNITARIO'
          Visible = False
        end
        object cxGridDBColumn21: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT'
          Visible = False
        end
        object cxGridDBColumn22: TcxGridDBColumn
          DataBinding.FieldName = 'ACABAMENTO'
          Visible = False
        end
        object cxGridDBColumn23: TcxGridDBColumn
          DataBinding.FieldName = 'APROVEITAMENTO'
          Visible = False
        end
        object cxGridDBColumn24: TcxGridDBColumn
          DataBinding.FieldName = 'CODACABAMENTO'
          Visible = False
        end
        object cxGridDBColumn25: TcxGridDBColumn
          DataBinding.FieldName = 'CODCOR'
          Visible = False
        end
        object cxGridDBColumn26: TcxGridDBColumn
          DataBinding.FieldName = 'OBS_PRODUCAO'
          Visible = False
        end
        object cxGridDBColumn27: TcxGridDBColumn
          DataBinding.FieldName = 'TEM_PRODUCAO_FINALIZADA'
          Visible = False
        end
        object cxGridDBColumn28: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          Visible = False
        end
        object cxGridDBColumn29: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL_RELATORIO'
          Visible = False
        end
        object cxGridDBColumn30: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_COMPRA'
          Visible = False
        end
        object cxGridDBColumn31: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_RELATORIO'
          Visible = False
        end
        object cxGridDBColumn32: TcxGridDBColumn
          DataBinding.FieldName = 'VDESC'
          Visible = False
        end
        object cxGridDBColumn33: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ESTOQUE_BAIXA'
          Visible = False
        end
        object cxGridDBColumn34: TcxGridDBColumn
          DataBinding.FieldName = 'ESTOQUE_BAIXADO'
          Visible = False
        end
        object cxGridDBColumn35: TcxGridDBColumn
          DataBinding.FieldName = 'TEMPO_ESTIMADO'
          Visible = False
        end
        object cxGridDBColumn36: TcxGridDBColumn
          Caption = 'Inicio'
          DataBinding.FieldName = 'DT_EMISSAO'
          Width = 84
        end
        object cxGridDBColumn37: TcxGridDBColumn
          Caption = 'Fim'
          DataBinding.FieldName = 'DT_FINALIZADO'
          Width = 92
        end
        object cxGridDBColumn38: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_CATEGORIA'
          Visible = False
        end
        object cxGridDBColumn39: TcxGridDBColumn
          DataBinding.FieldName = 'CATEGORIA'
          Visible = False
        end
        object cxGridDBColumn40: TcxGridDBColumn
          DataBinding.FieldName = 'CODCENTRO_TRABALHO'
          Visible = False
        end
        object cxGridDBColumn41: TcxGridDBColumn
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
        end
        object cxGridDBColumn42: TcxGridDBColumn
          DataBinding.FieldName = 'PODE_ALTERAR_ESTOQUE'
          Visible = False
        end
        object cxGridDBColumn43: TcxGridDBColumn
          DataBinding.FieldName = 'PROTOCOLO'
          Visible = False
        end
        object cxGridDBColumn44: TcxGridDBColumn
          Caption = 'Tempo Min/Seg'
          DataBinding.FieldName = 'QUANT'
          Width = 89
        end
        object cxGridDBColumn45: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'USUARIO'
          Width = 108
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxGrid3: TcxGrid [60]
      Left = 10000
      Top = 10000
      Width = 490
      Height = 405
      TabOrder = 68
      Visible = False
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGridDBColumn46: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGridDBColumn47: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUCAO'
          Visible = False
        end
        object cxGridDBColumn48: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUCAO_OS'
          Visible = False
        end
        object cxGridDBColumn49: TcxGridDBColumn
          DataBinding.FieldName = 'CODVENDA'
          Visible = False
        end
        object cxGridDBColumn50: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
        end
        object cxGridDBColumn51: TcxGridDBColumn
          Caption = 'Servi'#231'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 256
        end
        object cxGridDBColumn52: TcxGridDBColumn
          DataBinding.FieldName = 'COMP'
          Visible = False
        end
        object cxGridDBColumn53: TcxGridDBColumn
          DataBinding.FieldName = 'LARG'
          Visible = False
        end
        object cxGridDBColumn54: TcxGridDBColumn
          DataBinding.FieldName = 'ESPESSURA'
          Visible = False
        end
        object cxGridDBColumn55: TcxGridDBColumn
          DataBinding.FieldName = 'QTDADEPECA'
          Visible = False
        end
        object cxGridDBColumn56: TcxGridDBColumn
          DataBinding.FieldName = 'MEDIDAS'
          Visible = False
        end
        object cxGridDBColumn57: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
        object cxGridDBColumn58: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
        end
        object cxGridDBColumn59: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDADE'
          Visible = False
        end
        object cxGridDBColumn60: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT_PREVISTA'
          Visible = False
        end
        object cxGridDBColumn61: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO_USO'
          Visible = False
        end
        object cxGridDBColumn62: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO_VENDA'
          Visible = False
        end
        object cxGridDBColumn63: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR'
          Visible = False
        end
        object cxGridDBColumn64: TcxGridDBColumn
          DataBinding.FieldName = 'PESO'
          Visible = False
        end
        object cxGridDBColumn65: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO_VENDA_UNITARIO'
          Visible = False
        end
        object cxGridDBColumn66: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT'
          Visible = False
        end
        object cxGridDBColumn67: TcxGridDBColumn
          DataBinding.FieldName = 'ACABAMENTO'
          Visible = False
        end
        object cxGridDBColumn68: TcxGridDBColumn
          DataBinding.FieldName = 'APROVEITAMENTO'
          Visible = False
        end
        object cxGridDBColumn69: TcxGridDBColumn
          DataBinding.FieldName = 'CODACABAMENTO'
          Visible = False
        end
        object cxGridDBColumn70: TcxGridDBColumn
          DataBinding.FieldName = 'CODCOR'
          Visible = False
        end
        object cxGridDBColumn71: TcxGridDBColumn
          DataBinding.FieldName = 'OBS_PRODUCAO'
          Visible = False
        end
        object cxGridDBColumn72: TcxGridDBColumn
          DataBinding.FieldName = 'TEM_PRODUCAO_FINALIZADA'
          Visible = False
        end
        object cxGridDBColumn73: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          Visible = False
        end
        object cxGridDBColumn74: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL_RELATORIO'
          Visible = False
        end
        object cxGridDBColumn75: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_COMPRA'
          Visible = False
        end
        object cxGridDBColumn76: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_RELATORIO'
          Visible = False
        end
        object cxGridDBColumn77: TcxGridDBColumn
          DataBinding.FieldName = 'VDESC'
          Visible = False
        end
        object cxGridDBColumn78: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ESTOQUE_BAIXA'
          Visible = False
        end
        object cxGridDBColumn79: TcxGridDBColumn
          DataBinding.FieldName = 'ESTOQUE_BAIXADO'
          Visible = False
        end
        object cxGridDBColumn80: TcxGridDBColumn
          DataBinding.FieldName = 'TEMPO_ESTIMADO'
          Visible = False
        end
        object cxGridDBColumn81: TcxGridDBColumn
          Caption = 'Inicio'
          DataBinding.FieldName = 'DT_EMISSAO'
          Width = 84
        end
        object cxGridDBColumn82: TcxGridDBColumn
          Caption = 'Fim'
          DataBinding.FieldName = 'DT_FINALIZADO'
          Width = 92
        end
        object cxGridDBColumn83: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_CATEGORIA'
          Visible = False
        end
        object cxGridDBColumn84: TcxGridDBColumn
          DataBinding.FieldName = 'CATEGORIA'
          Visible = False
        end
        object cxGridDBColumn85: TcxGridDBColumn
          DataBinding.FieldName = 'CODCENTRO_TRABALHO'
          Visible = False
        end
        object cxGridDBColumn86: TcxGridDBColumn
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
        end
        object cxGridDBColumn87: TcxGridDBColumn
          DataBinding.FieldName = 'PODE_ALTERAR_ESTOQUE'
          Visible = False
        end
        object cxGridDBColumn88: TcxGridDBColumn
          DataBinding.FieldName = 'PROTOCOLO'
          Visible = False
        end
        object cxGridDBColumn89: TcxGridDBColumn
          Caption = 'Tempo Min/Seg'
          DataBinding.FieldName = 'QUANT'
          Width = 89
        end
        object cxGridDBColumn90: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'USUARIO'
          Width = 108
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object cxGrid4: TcxGrid [61]
      Left = 10000
      Top = 10000
      Width = 517
      Height = 199
      TabOrder = 74
      Visible = False
      object cxGridDBTableView3: TcxGridDBTableView
        OnDblClick = cxGridDBTableView3DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGridDBTableView3CustomDrawCell
        DataController.DataSource = DSProducao_Vinculo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGridDBTableView3CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object cxGridDBTableView3PROTOCOLO: TcxGridDBColumn
          Caption = 'Protocolo'
          DataBinding.FieldName = 'PROTOCOLO'
          Width = 72
        end
        object cxGridDBTableView3SITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'SITUACAO'
          Width = 62
        end
        object cxGridDBTableView3RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 133
        end
        object cxGridDBTableView3PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTO'
          Width = 169
        end
        object cxGridDBTableView3QUANT: TcxGridDBColumn
          Caption = 'Quant. A Produzir'
          DataBinding.FieldName = 'QUANT_PRODUZIR'
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView3
      end
    end
    object cxGrid5: TcxGrid [62]
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 80
      Visible = False
      object cxGrid5DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGrid5DBTableView1CustomDrawCell
        DataController.DataSource = DSProducao_Movimento
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid5DBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          Width = 39
        end
        object cxGrid5DBTableView1USUARIO: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USUARIO'
          Width = 100
        end
        object cxGrid5DBTableView1PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTO'
          Width = 139
        end
        object cxGrid5DBTableView1QUANT: TcxGridDBColumn
          Caption = 'Quant'
          DataBinding.FieldName = 'QUANT'
        end
        object cxGrid5DBTableView1TIPO_USO: TcxGridDBColumn
          Caption = 'Tipo de Uso'
          DataBinding.FieldName = 'TIPO_USO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
        end
        object cxGrid5DBTableView1CENTRO_TRABALHO: TcxGridDBColumn
          Caption = 'Equipe'
          DataBinding.FieldName = 'CODCENTRO_TRABALHO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
          Width = 95
        end
        object cxGrid5DBTableView1PRODUCAO_ESTAGIO: TcxGridDBColumn
          Caption = 'Est'#225'gio'
          DataBinding.FieldName = 'PRODUCAO_ESTAGIO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
          Width = 84
        end
        object cxGrid5DBTableView1SITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'SITUACAO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
          Width = 70
        end
        object cxGrid5DBTableView1PRODUCAO_MOTIVO: TcxGridDBColumn
          Caption = 'Motivo'
          DataBinding.FieldName = 'PRODUCAO_MOTIVO'
          Width = 87
        end
        object cxGrid5DBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 102
        end
        object cxGrid5DBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
      end
      object cxGrid5Level1: TcxGridLevel
        GridView = cxGrid5DBTableView1
      end
    end
    object lblFinalizado: TcxDBLabel [63]
      Left = 247
      Top = 31
      DataBinding.DataField = 'DT_FINALIZADO'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 22
      Width = 152
    end
    object TreeListServico: TcxDBTreeList [64]
      Left = 10000
      Top = 10000
      Width = 541
      Height = 463
      Bands = <
        item
          Caption.AlignHorz = taCenter
          Caption.ShowEndEllipsis = False
          Caption.Text = 'Servi'#231'o'
          Options.Customizing = False
          Options.Moving = False
          Options.Sizing = False
          Options.VertSizing = False
        end>
      DataController.DataSource = DSProducaoProdutoServico
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'CODIGO'
      Navigator.Buttons.CustomButtons = <>
      OptionsCustomizing.BandsQuickCustomization = True
      OptionsCustomizing.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.CheckHasChildren = False
      OptionsSelection.MultiSelect = True
      RootValue = -1
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 54
      Visible = False
      object cxDBTreeList1CODSERVICO1: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownHeight = 200
        Properties.DropDownWidth = 600
        Properties.IncrementalFilteringOptions = [ifoHighlightSearchText]
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'CODIGO'
          end
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListSource = DSServico
        Properties.OnEditValueChanged = cxDBTreeList1CODSERVICO1PropertiesEditValueChanged
        Caption.Text = 'C'#243'd. Servico'
        DataBinding.FieldName = 'CODPRODUTO'
        Width = 126
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
        OnGetDisplayText = cxDBTreeList1CODSERVICO1GetDisplayText
        OnSetStoredPropertyValue = cxDBTreeList1CODSERVICO1SetStoredPropertyValue
      end
      object cxDBTreeList1DESCRICAO1: TcxDBTreeListColumn
        Caption.Text = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        Width = 152
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1USUARIO1: TcxDBTreeListColumn
        Caption.Text = 'Usu'#225'rio'
        DataBinding.FieldName = 'USUARIO'
        Width = 127
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1DT_ESTOQUE_BAIXA1: TcxDBTreeListColumn
        Caption.Text = 'Data de Baixa'
        DataBinding.FieldName = 'DT_ESTOQUE_BAIXA'
        Width = 100
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object BtnAdicionaServico: TcxButton [65]
      Left = 10000
      Top = 10000
      Width = 90
      Height = 25
      Caption = 'Novo Servi'#231'o'
      Colors.Default = clLime
      Colors.Normal = clLime
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001B744558745469746C65004164643B506C75733B426172
        733B526962626F6E3B9506332F0000004749444154785EE592C90900200C046D
        D0A6ACCAEE4604E32B8AB8011F3E0602590672244062DBCCA532E8F5D7024017
        AC98C11B4205C6D10896F50486B744235CA09FF1FD274A34995FABF9E946D7E8
        0000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 52
      Visible = False
      OnClick = BtnAdicionaServicoClick
    end
    object BtnRemoveServico: TcxButton [66]
      Left = 10000
      Top = 10000
      Width = 105
      Height = 25
      Caption = 'Remover Servi'#231'o'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000029744558745469746C650052656D6F76653B44656C6574
        653B426172733B526962626F6E3B5374616E646172643B635648300000002B49
        444154785EEDD03111000008C340C4E104D3B8091EE8C2711DB2FE9000A4CE00
        06BA924D32F066A281015E5FEF3B94FC8DC40000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 53
      Visible = False
      OnClick = btnRemoverTarefaClick
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox [67]
      Left = 114
      Top = 339
      AutoSize = False
      DataBinding.DataField = 'CODVENDA_PRODUTO'
      DataBinding.DataSource = DS
      Enabled = False
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ListColumns = <>
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 35
      Height = 21
      Width = 105
    end
    object rtgProducao: TdxDBRatingControl [68]
      Left = 460
      Top = 68
      DataBinding.DataField = 'PRIORIDADE_PRODUCAO'
      DataBinding.DataSource = DS
      Properties.FillPrecision = rcfpHalf
      Properties.Step = 0.500000000000000000
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
    end
    object cxDBMaskEdit1: TcxDBMaskEdit [69]
      Left = 400
      Top = 155
      DataBinding.DataField = 'TEMPO_ESTIMADO'
      DataBinding.DataSource = DS
      Properties.EditMask = '!90:00;1;_'
      Style.HotTrack = False
      TabOrder = 12
      Width = 49
    end
    object cxGrid6: TcxGrid [70]
      Left = 10000
      Top = 10000
      Width = 541
      Height = 233
      TabOrder = 73
      Visible = False
      object cxGridDBTableView4: TcxGridDBTableView
        OnDblClick = cxGridDBTableView3DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGridDBTableView3CustomDrawCell
        DataController.DataSource = DSProducaoRastro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGridDBTableView4DT_EMISSAO: TcxGridDBColumn
          Caption = 'DT Emiss'#227'o'
          DataBinding.FieldName = 'DT_EMISSAO'
          Width = 88
        end
        object cxGridDBTableView4FUNCIONARIO: TcxGridDBColumn
          Caption = 'Funcion'#225'rio'
          DataBinding.FieldName = 'FUNCIONARIO'
          Width = 136
        end
        object cxGridDBTableView4EQUIPE: TcxGridDBColumn
          Caption = 'Equipe'
          DataBinding.FieldName = 'EQUIPE'
          Width = 146
        end
        object cxGridDBTableView4PROTOCOLO: TcxGridDBColumn
          Caption = 'Protocolo'
          DataBinding.FieldName = 'PROTOCOLO'
          Width = 66
        end
        object cxGridDBTableView4CODUSUARIO: TcxGridDBColumn
          Caption = 'Cod. Usuario'
          DataBinding.FieldName = 'CODUSUARIO'
        end
        object cxGridDBTableView4TEM_DESPESA: TcxGridDBColumn
          Caption = 'Tem Despesa'
          DataBinding.FieldName = 'TEM_DESPESA'
          Visible = False
          Width = 78
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxGridDBTableView4
      end
    end
    object cxButton1: TcxButton [71]
      Left = 10000
      Top = 10000
      Width = 90
      Height = 25
      Caption = 'Nova Etapa'
      Colors.Default = clLime
      Colors.Normal = clLime
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001B744558745469746C65004164643B506C75733B426172
        733B526962626F6E3B9506332F0000004749444154785EE592C90900200C046D
        D0A6ACCAEE4604E32B8AB8011F3E0602590672244062DBCCA532E8F5D7024017
        AC98C11B4205C6D10896F50486B744235CA09FF1FD274A34995FABF9E946D7E8
        0000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 69
      Visible = False
      OnClick = BtnAdicionaServicoClick
    end
    object cxButton3: TcxButton [72]
      Left = 10000
      Top = 10000
      Width = 105
      Height = 25
      Caption = 'Remover Etapa'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000029744558745469746C650052656D6F76653B44656C6574
        653B426172733B526962626F6E3B5374616E646172643B635648300000002B49
        444154785EEDD03111000008C340C4E104D3B8091EE8C2711DB2FE9000A4CE00
        06BA924D32F066A281015E5FEF3B94FC8DC40000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 70
      Visible = False
      OnClick = btnRemoverTarefaClick
    end
    object cxButton4: TcxButton [73]
      Left = 10000
      Top = 10000
      Width = 105
      Height = 25
      Caption = 'Dupicar Etapa'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000029744558745469746C650052656D6F76653B44656C6574
        653B426172733B526962626F6E3B5374616E646172643B635648300000002B49
        444154785EEDD03111000008C340C4E104D3B8091EE8C2711DB2FE9000A4CE00
        06BA924D32F066A281015E5FEF3B94FC8DC40000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 71
      Visible = False
      OnClick = btnRemoverTarefaClick
    end
    object cxButton5: TcxButton [74]
      Left = 10000
      Top = 10000
      Width = 137
      Height = 25
      Caption = 'Adicionar depend'#234'ncia'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000029744558745469746C650052656D6F76653B44656C6574
        653B426172733B526962626F6E3B5374616E646172643B635648300000002B49
        444154785EEDD03111000008C340C4E104D3B8091EE8C2711DB2FE9000A4CE00
        06BA924D32F066A281015E5FEF3B94FC8DC40000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 72
      Visible = False
    end
    object cxDBDateEdit1: TcxDBDateEdit [75]
      Left = 12
      Top = 263
      AutoSize = False
      DataBinding.DataField = 'DT_ENTREGA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Kind = ckDateTime
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 30
      Height = 21
      Width = 132
    end
    object edtDT_Emissao: TcxDBDateEdit [76]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'DT_ENTREGA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Kind = ckDateTime
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 59
      Visible = False
      Height = 35
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [77]
      Left = 12
      Top = 299
      AutoSize = False
      DataBinding.DataField = 'DT_APROVACAO_SAIDA_ETAPA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Kind = ckDateTime
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 31
      Height = 25
      Width = 132
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      CaptionOptions.Visible = False
      LayoutDirection = ldVertical
      Padding.AssignedValues = [lpavTop]
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      Parent = TabCoisas
      CaptionOptions.Visible = False
      ItemIndex = 2
    end
    inherited GrupoMain: TdxLayoutGroup
      Parent = TabInformacoes
      AlignVert = avClient
      CaptionOptions.Visible = False
      Offsets.Bottom = 0
      Offsets.Left = 0
      Offsets.Right = 0
      Offsets.Top = 0
      LayoutDirection = ldTabbed
      ScrollOptions.Vertical = smAuto
      Index = 1
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      AlignVert = avClient
      Index = 4
    end
    inherited SeparadorGrupoMenu: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup17
      AlignHorz = ahRight
      Index = 0
    end
    inherited LiedtDescricao: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignVert = avTop
      CaptionOptions.Text = 'Assunto'
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 416
      Index = 0
    end
    inherited LiBtnMostrarLogAtividades: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 0
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Visible = True
      Index = -1
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      CaptionOptions.Text = 'Linha do Tempo'
      ControlOptions.MinHeight = 150
      ControlOptions.OriginalHeight = 82
      ControlOptions.OriginalWidth = 585
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = GrupoTabs
      AlignVert = avClient
      CaptionOptions.Text = 'Atividades'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    inherited LicbxAtivo: TdxLayoutItem
      AlignVert = avClient
      Index = 3
    end
    inherited liSeparadorFrameBase: TdxLayoutSeparatorItem
      Parent = nil
      AlignHorz = ahClient
      AlignVert = avClient
      Index = -1
    end
    object TabCoisas: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = '---'
      Visible = False
      ItemIndex = 2
      Index = 2
    end
    object liedtCodProdutoÎPRODUTOÎUNIDADE: TdxLayoutItem
      Parent = GrupoProduto
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Unidade'
      CaptionOptions.Layout = clTop
      Control = edtCodProdutoÎPRODUTOÎUNIDADE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtCodProdutoÎPRODUTOÎDESCRICAO: TdxLayoutItem
      Parent = GrupoProduto
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o do Item'
      CaptionOptions.Layout = clTop
      Control = edtCodProdutoÎPRODUTOÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 299
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtDT_Inicio: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup11
      AlignVert = avClient
      CaptionOptions.Text = 'Previs'#227'o de In'#237'cio'
      CaptionOptions.Layout = clTop
      Control = edtDT_Inicio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtQTDADePecas: TdxLayoutItem
      Parent = GrupoProdutoQuantidade
      CaptionOptions.Text = 'Pe'#231'as'
      CaptionOptions.Layout = clTop
      Control = edtQTDADePecas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoTabs: TdxLayoutGroup
      Parent = MainLayoutGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldTabbed
      ScrollOptions.Horizontal = smAuto
      ScrollOptions.Vertical = smAuto
      ShowBorder = False
      OnTabChanged = GrupoTabsTabChanged
      Index = 0
    end
    object TabInformacoes: TdxLayoutGroup
      Parent = GrupoTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Informa'#231#245'es'
      ItemIndex = 1
      Index = 0
    end
    object GrupoProducao: TdxLayoutGroup
      Parent = TabCoisas
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Produ'#231#227'o'
      Padding.Bottom = -4
      Padding.AssignedValues = [lpavBottom]
      UseIndent = False
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = GrupoProducao
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 1
    end
    object TabAnexos: TdxLayoutItem
      Parent = GrupoTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Anexos'
      CaptionOptions.Visible = False
      Control = PnlFrameAnexos
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 81
      ControlOptions.OriginalWidth = 585
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object libtnFinalizaOS: TdxLayoutItem
      AlignVert = avTop
      Offsets.Bottom = 5
      CaptionOptions.Visible = False
      Control = btnFinalizaOS
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LiimgImagem: TdxLayoutItem
      Parent = dxLayoutGroup23
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxDBImage1'
      CaptionOptions.Visible = False
      Control = imgImagem
      ControlOptions.OriginalHeight = 107
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtDT_Prazo_Final: TdxLayoutItem
      Parent = Cliente
      AlignVert = avBottom
      CaptionOptions.Hint = 'Data Limite'
      CaptionOptions.Text = 'Data Limite'
      CaptionOptions.Layout = clTop
      Control = edtDT_Prazo_Final
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtComp: TdxLayoutItem
      Parent = GrupoProdutoQuantidade
      CaptionOptions.Text = 'Comp'
      CaptionOptions.Layout = clTop
      Control = edtComp
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtLarg: TdxLayoutItem
      Parent = GrupoProdutoQuantidade
      CaptionOptions.Text = 'Larg'
      CaptionOptions.Layout = clTop
      Control = edtLarg
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtEspessura: TdxLayoutItem
      Parent = GrupoProdutoQuantidade
      CaptionOptions.Text = 'Esp'
      CaptionOptions.Layout = clTop
      Control = edtEspessura
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtQuant: TdxLayoutItem
      Parent = GrupoProdutoQuantidade
      AlignVert = avClient
      CaptionOptions.Text = 'A Produzir'
      CaptionOptions.Layout = clTop
      Control = edtQuantProduzir
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lilblNumeroVenda: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Hint = 'Venda'
      Control = lblNumeroVenda
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtDT_Fim: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup11
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Previs'#227'o de Finaliza'#231#227'o desta OS'
      CaptionOptions.Layout = clTop
      Control = edtDT_Fim
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 159
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtTempoRegistrado: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup17
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Tempo Registrado'
      CaptionOptions.Layout = clTop
      Control = edtTempoRegistrado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoTempos: TdxLayoutGroup
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tempos e Prazos'
      Padding.Bottom = -4
      Padding.AssignedValues = [lpavBottom]
      Index = 0
    end
    object GrupoProduto: TdxLayoutGroup
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'Produto'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Padding.Bottom = -4
      Padding.Top = -2
      Padding.AssignedValues = [lpavBottom, lpavTop]
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Offsets.Bottom = 5
      Offsets.Top = 10
      LayoutDirection = ldHorizontal
      Padding.AssignedValues = [lpavBottom]
      ShowBorder = False
      Index = -1
    end
    object liedtTempoReal: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup17
      AlignVert = avBottom
      CaptionOptions.Text = 'Tempo Real Gasto'
      CaptionOptions.Layout = clTop
      Control = edtTempoReal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lichkReverso: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = chkReverso
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lichkCom_Logo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = chkCom_Logo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object liedtCodProdutoÎPRODUTO: TdxLayoutItem
      Parent = GrupoProduto
      CaptionOptions.Text = 'C'#243'd. Produto'
      CaptionOptions.Layout = clTop
      Control = edtCodProdutoÎPRODUTO
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litbrPConclusao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = '   Perc. Conclus'#227'o'
      CaptionOptions.Layout = clTop
      Control = tbrPConclusao
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 275
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtPATH: TdxLayoutItem
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'Caminho do Arquivo'
      CaptionOptions.Layout = clTop
      Control = edtPATH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 583
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lilblTempoTotalOPDisplay: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignVert = avClient
      Offsets.Left = 5
      Visible = False
      CaptionOptions.Text = 'Tempo Total O.P.'
      Control = lblTempoTotalOPDisplay
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      Control = TreeListComposicao
      ControlOptions.OriginalHeight = 144
      ControlOptions.OriginalWidth = 583
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object licbxSituacao: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignVert = avBottom
      CaptionOptions.Text = 'Situa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cbxSituacao
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litokProducao_Marcador: TdxLayoutItem
      Parent = dxLayoutGroup27
      CaptionOptions.Text = 'Marcadores'
      CaptionOptions.Layout = clTop
      Control = tokProducao_Marcador
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 152
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litokUsuarios: TdxLayoutItem
      Parent = GrupoProducao
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Usu'#225'rios'
      CaptionOptions.Layout = clTop
      Control = tokUsuarios
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object licssSituacao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup17
      AlignVert = avClient
      CaptionOptions.Text = 'Situa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cssSituacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 44
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoAssunto: TdxLayoutGroup
      Parent = TabInformacoes
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object liedtCodPessoasÎPESSOAS: TdxLayoutItem
      Parent = Cliente
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = edtCodPessoasÎPESSOAS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Cliente: TdxLayoutGroup
      Parent = GrupoAssuntoDescricao
      CaptionOptions.Text = 'Cliente'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 4
    end
    object lirtcCodPessoasÎPESSOASÎESTRELA: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      Offsets.Right = 5
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = rtcCodPessoasÎPESSOASÎESTRELA
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lirctCodProdutoÎPRODUTOÎESTRELA: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = rctCodProdutoÎPRODUTOÎESTRELA
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtTempo_Estimado: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup17
      AlignVert = avBottom
      CaptionOptions.Text = 'Tempo Estimado'
      CaptionOptions.Layout = clTop
      Control = edtTempo_Estimado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtObservacao: TdxLayoutItem
      Parent = dxLayoutGroup30
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtObservacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 585
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtCodPessoasÎPESSOASÎRAZAOSOCIAL: TdxLayoutItem
      Parent = Cliente
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Nome do Cliente'
      CaptionOptions.Layout = clTop
      Control = edtCodPessoasÎPESSOASÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 443
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liBtnAdicionaTarefa: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = BtnAdicionaTarefa
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object libtnRemoverTarefa: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnRemoverTarefa
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object licxbUsuario: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignVert = avClient
      CaptionOptions.Text = 'Funcion'#225'rio'
      CaptionOptions.Layout = clTop
      Control = cxbFuncionario
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoProdutoQuantidade: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 6
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = GrupoAssuntoDescricao
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object GrupoAssuntoDescricao: TdxLayoutGroup
      Parent = GrupoAssunto
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 4
      ShowBorder = False
      Index = 0
    end
    object liEdtVendaÎVenda: TdxLayoutItem
      Parent = dxLayoutGroup29
      AlignVert = avBottom
      CaptionOptions.Text = 'Venda'
      CaptionOptions.Layout = clTop
      Control = EdtVendaÎVenda
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object licxbCentroTrabalho: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Equipe'
      CaptionOptions.Layout = clTop
      Control = cxbCentroTrabalho
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 158
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object libtnAgendarProduçao: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAgendarProduçao
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = GrupoTempos
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Tempo'
      CaptionOptions.Layout = clTop
      Control = edtTempo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 49
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Protocolo:'
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup
      Parent = GrupoTempos
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup16
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object libtnProduzir: TdxLayoutItem
      Parent = GrupoProdutoQuantidade
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnProduzir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = GrupoProdutoQuantidade
      AlignVert = avClient
      CaptionOptions.Text = 'Produzido'
      CaptionOptions.Layout = clTop
      Control = edtQuant
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = GrupoTabs
      CaptionOptions.Text = 'Motor de C'#225'lculo'
      Visible = False
      LayoutDirection = ldTabbed
      Index = 7
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      Control = SprFormula
      ControlOptions.OriginalHeight = 244
      ControlOptions.OriginalWidth = 460
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup13
      CaptionOptions.Text = 'Formulas Avan'#231'adas'
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup29
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel10'
      CaptionOptions.Visible = False
      Control = edtCodProjetoÎPROJETOÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 344
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup29
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Projeto'
      CaptionOptions.Layout = clTop
      Control = edtCodProjetoÎPROJETO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = GrupoTempos
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = cxGrid1
      ControlOptions.OriginalHeight = 367
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = GrupoTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Gest'#227'o de Tempo'
      Visible = False
      LayoutDirection = ldTabbed
      Index = 5
    end
    object LitokProducao_Tag: TdxLayoutItem
      Parent = dxLayoutGroup27
      CaptionOptions.Text = 'Tags'
      CaptionOptions.Layout = clTop
      Control = tokProducao_Tag
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 243
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup17: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnTarefasCliente
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 38
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LicbxEstagio: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignVert = avBottom
      CaptionOptions.Text = 'Est'#225'gio'
      CaptionOptions.Layout = clTop
      Control = cbxEstagio
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Classifica'#231#245'es'
      ItemIndex = 1
      ScrollOptions.Vertical = smAuto
      Index = 1
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = GrupoAssuntoDescricao
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = GrupoAssuntoDescricao
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = GrupoAssuntoDescricao
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = dxLayoutGroup23
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup23: TdxLayoutGroup
      Parent = dxLayoutGroup30
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = TabCoisas
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup27: TdxLayoutGroup
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup16
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup29: TdxLayoutGroup
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'Dados do projeto'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutGroup30: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Detalhes'
      ScrollOptions.Vertical = smAuto
      Index = 0
    end
    object LicbxAcabamento: TdxLayoutItem
      Parent = dxLayoutGroup31
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Acabamento'
      CaptionOptions.Layout = clTop
      Control = cbxAcabamento
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 132
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LicbxLocal: TdxLayoutItem
      Parent = dxLayoutGroup31
      CaptionOptions.Text = 'Local'
      CaptionOptions.Layout = clTop
      Control = cbxLocal
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 152
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LicbxTipo_Impressao: TdxLayoutItem
      Parent = dxLayoutGroup31
      AlignHorz = ahClient
      CaptionOptions.Text = 'Equipamento\Impressora'
      CaptionOptions.Layout = clTop
      Control = cbxTipo_Impressao
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup31: TdxLayoutGroup
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoEquipe: TdxLayoutGroup
      Parent = dxLayoutGroup16
      CaptionOptions.Text = 'Equipe'
      Index = 1
    end
    object GrupoProcessos: TdxLayoutGroup
      Parent = dxLayoutGroup16
      CaptionOptions.Text = 'Processos'
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = GrupoEquipe
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = cxGrid2
      ControlOptions.OriginalHeight = 270
      ControlOptions.OriginalWidth = 490
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = GrupoProcessos
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = cxGrid3
      ControlOptions.OriginalHeight = 270
      ControlOptions.OriginalWidth = 490
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = GrupoVinculo
      AlignVert = avClient
      Control = cxGrid4
      ControlOptions.OriginalHeight = 411
      ControlOptions.OriginalWidth = 490
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoVinculo: TdxLayoutGroup
      Parent = dxLayoutGroup24
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Etapas canceladas'
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = GrupoTabs
      CaptionOptions.Text = 'Produtos'
      Index = 3
    end
    object dxLayoutGroup9: TdxLayoutGroup
      CaptionOptions.Text = 'Movimenta'#231#227'o'
      Index = -1
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid5
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblFinalizado: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignVert = avClient
      CaptionOptions.Text = 'Finalizado:'
      Control = lblFinalizado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 152
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignVert = avClient
      Control = TreeListServico
      ControlOptions.OriginalHeight = 144
      ControlOptions.OriginalWidth = 490
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup10
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = BtnAdicionaServico
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup10
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = BtnRemoveServico
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtCodVendaProduto: TdxLayoutItem
      Parent = dxLayoutGroup29
      AlignVert = avBottom
      CaptionOptions.Text = 'Cod. Venda Produto'
      CaptionOptions.Layout = clTop
      Control = cxDBLookupComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup19
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft]
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Prioridade'
      CaptionOptions.Layout = clTop
      Control = rtgProducao
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = Cliente
      CaptionOptions.Text = 'Tempo'
      CaptionOptions.Layout = clTop
      Control = cxDBMaskEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 49
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignVert = avClient
      Control = cxGrid6
      ControlOptions.OriginalHeight = 447
      ControlOptions.OriginalWidth = 502
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup24: TdxLayoutGroup
      Parent = GrupoTabs
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001B744558745469746C6500537461636B65644C61796F75
        743B4C61796F75743B2B1CD8D50000022449444154785E7D52CF6B1351109EED
        BE6E62F0A0FF879E044D6CA362C5A227A92056C482BF0E82A078F0A0E041C183
        3FC016E945A4541AA9E9A19E228A6D4DD32C85FC17456C74CDAEB16677DF6EDF
        7366DF92476AF05B6667D86FDE9B6F66D600008666C2BF10A90DECE0E98C4CB9
        D8B8FFBA5E65CC2A825494444FD88EF8EAA3AB874FDD7B55AF98E66051EA93C9
        3B8E78EDF1F5E111F6DDF18BE3E7F603DF16C8EAACF242A38891D544FEC2F97D
        10C5A24B52DABBF9C630A967CDA6B73435BD721C7A410A96C90B21A0E97168FB
        518F42A18201F6FED9D93354098826532096AB0BE890AA0A5D6F24DF08ECEE74
        B5C2ACCC10311234221ED49FDC387ADA71DC95F9B9FAB1DE0990C2E04B32C489
        871FE5A58B79E0498F1AA5D23ABC7930BA171476F55118A0FD66D4CB37D7875F
        9D58293094C4B447EBF6E4D2A295C91624E81913C503DF7E716BE404134262B2
        5A2A48451A18D077C4E0A613162E4F1C505BD280D959BB403C6BFD74ABE539FB
        8822B4BE98FB556A550A015F5B3E78A85027A8ED200C56991A1FC320472BD971
        47072D725BDE6AB964D38FA65B2022DCAA91336E3EFF645BD95C3E3D878F410E
        C2606BFDE59DD193A482A4F629C0D102B6F983E7AF5D390861B2055D6266A676
        0823F3E9F2467B4F8EA916A42EF379B1011F26C7806193B0E174C0F3231AA0DE
        8250D74921C1FD1369FDA9CF58261058DB73D716DEDA437D7A5C239954299335
        15A77214A4EC0ADE8D66F5E93144F39319FC077F01AF892C2D1A3B651D000000
        0049454E44AE426082}
      CaptionOptions.Text = 'Etapas'
      Visible = False
      Index = 6
    end
    object dxLayoutGroup25: TdxLayoutGroup
      Parent = GrupoTabs
      CaptionOptions.Text = 'Servi'#231'os'
      Visible = False
      Index = 4
    end
    object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup25
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup24
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liDT_Entrega: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Data Entrega'
      CaptionOptions.Layout = clTop
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 132
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liDT_Emissao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup17
      AlignVert = avClient
      Control = edtDT_Emissao
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup15
      CaptionOptions.Text = 'Data Etapa'
      CaptionOptions.Layout = clTop
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup27
      AlignHorz = ahLeft
      AlignVert = avClient
      Index = 0
    end
  end
  object lblRecursoDescricao: TcxLabel [7]
    Left = 0
    Top = 22
    Style.HotTrack = False
    Transparent = True
  end
  inherited dxStatusBar1: TdxStatusBar
    Width = 553
    Visible = False
    ExplicitWidth = 553
  end
  inherited pnlMenuCadastro: TPanel
    Width = 553
    ExplicitWidth = 553
    inherited tcCadastro: TdxTileControl
      Left = 315
      Width = 73
      ExplicitLeft = 315
      ExplicitWidth = 73
    end
    inherited dxTileControl1: TdxTileControl
      Left = 388
      ExplicitLeft = 388
    end
    inherited tcCadastroMenu: TdxTileControl
      Left = 0
      Width = 56
      ExplicitLeft = 0
      ExplicitWidth = 56
    end
    inherited tcCadastroAcoes: TdxTileControl
      Left = 56
      Width = 144
      ExplicitLeft = 56
      ExplicitWidth = 144
    end
    inherited tcConfig: TdxTileControl
      Left = 388
      ExplicitLeft = 388
    end
    inherited tcCadastro_Consulta: TdxTileControl
      Left = 315
      Width = 0
      ExplicitLeft = 315
      ExplicitWidth = 0
    end
    inherited tcCadastro_Anterior_Proximo: TdxTileControl
      Left = 200
      Width = 115
      ExplicitLeft = 200
      ExplicitWidth = 115
    end
    inherited dxTileControl2: TdxTileControl
      Left = 502
      ExplicitLeft = 502
    end
  end
  inherited DS: TDataSource
    Left = 204
    Top = 200
  end
  inherited TimerStatusBar: TTimer
    Left = 288
    Top = 284
  end
  inherited ImgListBotoes24: TImageList
    Left = 232
    Top = 284
  end
  inherited ImgListBotoes16: TImageList
    Left = 260
    Top = 312
  end
  inherited MenuConfig: TPopupMenu
    Left = 288
    Top = 227
  end
  inherited ImgListMenuConfig: TImageList
    Left = 232
    Top = 312
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 288
    Top = 200
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      Offsets.TabSheetContentOffsetHorz = -3
      Offsets.TabSheetContentOffsetVert = -3
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = 4934475
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    GroupName = 'Produ'#231#227'o O.S'
    Left = 288
    Top = 312
  end
  inherited MenuImprimir: TPopupMenu
    Left = 232
    Top = 256
  end
  inherited WREventosCadastro: TWREventosCadastro
    OnLayoutChange = WREventosCadastroLayoutChange
    Versao_Configuracao = 5
    FormClassCadastro = 'TFrmProducao'
    FormClassConsulta = 'TConsuProducao'
    Left = 260
    Top = 228
  end
  inherited Cadastro: TFDQuery
    OnCalcFields = CadastroCalcFields
    SQL.Strings = (
      'select *'
      'from PRODUCAO'
      'where (CODIGO = :CODIGO)')
    Left = 176
    Top = 200
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object CadastroCodTabela: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodTabela'
      Calculated = True
    end
  end
  inherited TransaFD: TFDTransaction
    Options.DisconnectAction = xdCommit
    Left = 316
    Top = 284
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUCAO'
    Modulo = 'PRODUCAO'
    Left = 316
    Top = 200
  end
  inherited Fr3Cadastro: TfrxDBDataset
    Left = 344
    Top = 256
  end
  inherited MenuRegra_Acoes: TPopupMenu
    Left = 427
    Top = 284
  end
  inherited TransaConfiguracao: TFDTransaction
    Left = 316
    Top = 256
  end
  inherited CreateDaTela: TWRFormataCamposDataSets
    Left = 440
    Top = 232
  end
  object DS_CentroTrabalho: TDataSource
    DataSet = Producao_Centro_Trabalho
    Left = 204
    Top = 228
  end
  object DS_Composicao: TDataSource
    DataSet = Producao_Produto
    OnStateChange = DS_ComposicaoStateChange
    Left = 204
    Top = 256
  end
  object DSProducao_OS_Recurso: TDataSource
    DataSet = Producao_OS_Recurso
    Left = 204
    Top = 284
  end
  object ActionList1: TActionList
    Images = ImgListBotoes16
    Left = 260
    Top = 200
    object ActLiberarOS: TAction
      Caption = 'Liberar'
      Hint = 'Liberar Ordem de Servi'#231'o'
      ImageIndex = 7
    end
    object ActDesvincularMaterial: TAction
      Caption = 'Desvincular Material desta OS'
      OnExecute = ActDesvincularMaterialExecute
    end
    object ActVincularMaterial: TAction
      Caption = 'Vincular Material nesta OS'
      OnExecute = ActVincularMaterialExecute
    end
    object ActTransformarEmProducao: TAction
      Caption = 'Transformar em Producao'
      OnExecute = ActTransformarEmProducaoExecute
    end
    object ActAdicionarReceita: TAction
      Caption = '+'
      OnExecute = ActAdicionarReceitaExecute
    end
  end
  object frxProducao_OS: TfrxDBDataset
    UserName = 'Producao_OS'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 344
    Top = 200
  end
  object frxProducao_Composicao: TfrxDBDataset
    UserName = 'Producao_Composicao'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 372
    Top = 200
  end
  object frxProducao_OS_Recurso: TfrxDBDataset
    UserName = 'Producao_OS_Recurso'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 344
    Top = 228
  end
  object frxProducao_Centro_Trabalho: TfrxDBDataset
    UserName = 'Producao_Centro_Trabalho'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 372
    Top = 228
  end
  object MenuComposicao: TPopupMenu
    OnPopup = MenuComposicaoPopup
    Left = 260
    Top = 256
    object ActVincularMaterial1: TMenuItem
      Action = ActVincularMaterial
      Visible = False
    end
    object DesvincularMaterialdestaOS1: TMenuItem
      Action = ActDesvincularMaterial
      Visible = False
    end
    object ransformaremProducao1: TMenuItem
      Action = ActTransformarEmProducao
      Visible = False
    end
    object RemoverBaixadoEstoque1: TMenuItem
      Caption = 'Remover Baixa do Estoque'
      OnClick = RemoverBaixadoEstoque1Click
    end
  end
  object DSProducao_OS_Calc: TDataSource
    DataSet = Producao_OS_Calc
    Left = 204
    Top = 312
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 18612484
  end
  object WRCalc: TWRCalculaConfiguracoes
    DSProduto = DS_Composicao
    DSCentroTrabalho = DS_CentroTrabalho
    TipoCalculo = tcVenda
    SPrTipoCalc = tssCalcVenda
    NaoValida = True
    SprFormula = SprFormula
    Left = 232
    Top = 200
  end
  object Producao_Centro_Trabalho: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODPRODUCAO'
    DetailFields = 'CODPRODUCAO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select PT.*, PC.DESCRICAO'
      'from PRODUCAO_CENTRO_TRABALHO PT'
      
        'left join CENTRO_TRABALHO PC on (PC.CODIGO = PT.CODCENTRO_TRABAL' +
        'HO)'
      'where (CODPRODUCAO = :CODPRODUCAO)')
    Left = 176
    Top = 228
    ParamData = <
      item
        Name = 'CODPRODUCAO'
        ParamType = ptInput
      end>
  end
  object Producao_Produto: TFDQuery
    AfterInsert = Producao_ProdutoAfterInsert
    BeforePost = Producao_ProdutoBeforePost
    OnCalcFields = Producao_ProdutoCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'PROTOCOLO_PRINCIPAL'
    DetailFields = 'PROTOCOLO_PRINCIPAL'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select PC.*, U.USUARIO'
      'from PRODUCAO_PRODUTO PC'
      'left join USUARIO U on U.CODIGO = PC.CODUSUARIO'
      'where (PC.PROTOCOLO_PRINCIPAL = :PROTOCOLO_PRINCIPAL)'
      
        'and PC.CODPRODUTO <> '#39'Diferen'#231'a.'#39' and NOT(PC.CODPRODUTO = PC.COD' +
        'PRODUTO_COMPOSICAO)')
    Left = 176
    Top = 256
    ParamData = <
      item
        Name = 'PROTOCOLO_PRINCIPAL'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object Producao_ProdutoOrdenacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Ordenacao'
      Calculated = True
    end
  end
  object Producao_OS_Recurso: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select POR.CODIGO, POR.CODPRODUCAO_OS, POR.CODRECURSO, R.TIPO,'
      '       case R.TIPO'
      '         when '#39'PRODUTO'#39' then PR.DESCRICAO'
      '         when '#39'PESSOA'#39' then PS.RAZAOSOCIAL'
      '       end as DESCRICAO'
      'from PRODUCAO_OS_RECURSO POR'
      'left join RECURSO R on (POR.CODRECURSO = R.CODIGO)'
      'left join PESSOAS PS on (R.CODPESSOA = PS.CODIGO)'
      'left join PRODUTO PR on (R.CODPRODUTO = PR.CODIGO)'
      'where (POR.CODPRODUCAO_OS = :CODIGO)   ')
    Left = 176
    Top = 284
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Producao_OS_Tempo: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select *'
      'from PRODUCAO_OS_TEMPO'
      'where (CODPRODUCAO_OS = :CODIGO)')
    Left = 232
    Top = 228
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Producao_OS_Calc: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select *'
      'from PRODUCAO_OS'
      'where (CODPRODUCAO = :CODIGO)')
    Left = 176
    Top = 312
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object PmPrincipal: TwrProdutoMemoria
    SQLProduto.Strings = (
      'select P.CODIGO as CODPRODUTO,'
      
        '       --Campo que vem do cadastro com o nome usado no Venda_Pro' +
        'duto para aparecer na venda'
      
        '       P.OBSERVACAO as OBSERVACAO_PRODUTO, -- Mudar o Nome no ca' +
        'datro'
      ''
      '       P.VALOR as CALC_VALOR_ORIGINAL, '
      ''
      
        '       P.*,  0.0 as NF_VALIQ_ESTADUAL, 0.0 as NF_ALIQ_ESTADUAL, ' +
        '0.0 as NF_ALIQ_NACIONAL,'
      
        '       0.0 as NF_VALIQ_IMPORTACAO, 0.0 as NF_ALIQ_IMPORTACAO, 0.' +
        '0 as NF_VALIQ_MUNICIPAL,'
      
        '       0.0 as NF_ALIQ_MUNICIPAL, 0.0 as NF_VALIQ_NACIONAL, 0.0 a' +
        's CALC_POUTRO_MANUAL,'
      
        '       0.0 as CALC_VOUTRO_MANUAL,'#39'                              ' +
        #39' AS FORMULA, 0.0 AS QTDADEPECA_COMPOSICAO, 0.0 AS COMP_COMPOSIC' +
        'AO, 0.0 AS LARG_COMPOSICAO, 0.0 AS ESPESSURA_COMPOSICAO,'
      
        '       0.0 as CALC_VUNITARIO_DESC, 0.0 as CALC_VUNITARIO_OUTRO, ' +
        '0.0 as CALC_VUNITARIO_FRETE, 0.0 as CALC_VUNITARIO_LUCRO_DESEJAD' +
        'O,'
      '       '
      '       --Campos Venda_Produto'
      ''
      '       --Campo adicional apenas para controle'
      
        '       cast('#39'N'#39' as varchar(1)) as DEVOLUCAO, PT.DESCRICAO AS PRO' +
        'DUTO_TIPO'
      'from PRODUTO P'
      ''
      
        '--Faz um Left Join com o Venda_Produto apenas para existir os ca' +
        'mpos na query e ser compat'#237'vel com o destino'
      'left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO)'
      'where (P.CODIGO = :CODPRODUTO)   '
      'order by P.ordem desc'
      ''
      '')
    SQLComposicao.Strings = (
      
        'select PC.*, P.VALOR, P.CUSTO, P.TEM_COMPOSICAO, P.CALC_QPESO_BR' +
        'UTO, P.CALC_QPESO_LIQUIDO, P.UNIDADE'
      'from PRODUTO_COMPOSICAO PC'
      'left join PRODUTO P on (PC.CODPRODUTO = P.CODIGO)'
      'where (PC.CODPRODUTO_COMPOSICAO = :CODPRODUTO)   '
      'ORDER BY PC.ORDEM')
    SQLTabelaPreco.Strings = (
      'select PT.DESCRICAO, PT.ATIVO, PTP.*'
      'from PRODUTO_TABELA_PRECO PTP'
      'left join PRODUTO_TABELA PT on PT.CODIGO = PTP.CODPRODUTO_TABELA'
      'where PTP.CODPRODUTO = :CODPRODUTO')
    Connection = DMBanco.Banco
    TransacaoFD = TransaFD
    Left = 400
    Top = 256
  end
  object WRCalcMemoria: TWRCalculaConfiguracoes
    DSVendaOuCompra = DS
    TipoCalculo = tcVenda
    SPrTipoCalc = tssCalcCadastro
    ProdutoMemoriaConfiguracao = PmPrincipal
    TreeListEmMemoria = True
    SprFormula = SprMemoria
    Left = 372
    Top = 256
  end
  object WRFormataCamposDataSets1: TWRFormataCamposDataSets
    OnCarregaDataSets = WRFormataCamposDataSets1CarregaDataSets
    Left = 288
    Top = 256
  end
  object QuerProducaoOSTempo: TFDQuery
    OnCalcFields = QuerProducaoOSTempoCalcFields
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select sum(TEMPO) as TEMPO_TOTAL_OP'
      'from PRODUCAO_OS'
      'where (CODPRODUCAO = :CODPRODUCAO)')
    Left = 176
    Top = 340
    ParamData = <
      item
        Name = 'CODPRODUCAO'
        ParamType = ptInput
      end>
  end
  object Produto: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select p.*, pt.descricao as produto_tipo '
      'from Produto p'
      'left join produto_tipo pt on pt.codigo = p.codproduto_tipo')
    Left = 232
    Top = 340
  end
  object DSProduto: TDataSource
    DataSet = Produto
    OnStateChange = DSStateChange
    Left = 260
    Top = 340
  end
  object cxStyleRepositoryGrid: TcxStyleRepository
    Left = 288
    Top = 340
    PixelsPerInch = 96
    object stUnreadStyle: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object stDateOut: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
    object stDateOutHighPriority: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object stDeferred: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 10457735
    end
    object stDeferredHighPriority: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 10457735
    end
    object stWaiting: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 163044
    end
    object stWaitingHighPriority: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 163044
    end
    object stCompleted: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsStrikeOut]
      TextColor = 10457735
    end
    object StCanceled: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsStrikeOut]
      TextColor = clRed
    end
    object stDespesa: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object stRendimento: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clNone
      TextColor = clGreen
    end
  end
  object Categoria: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select *'
      'from Produto_categoria')
    Left = 232
    Top = 368
  end
  object DSCategoria: TDataSource
    DataSet = Categoria
    OnStateChange = DSStateChange
    Left = 260
    Top = 368
  end
  object Producao_Usuario: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select PC.*'
      'from PRODUCAO_USUARIO PU'
      'where (PC.CODPRODUCAO = :CODIGO)  ')
    Left = 176
    Top = 368
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSUsuario: TDataSource
    DataSet = Usuarios
    OnStateChange = DSStateChange
    Left = 316
    Top = 396
  end
  object Usuarios: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select *'
      'from Usuario')
    Left = 288
    Top = 396
  end
  object PmComposicao: TwrProdutoMemoria
    SQLProduto.Strings = (
      'select '
      
        '       P.*,  '#39'                              '#39' AS FORMULA, 0.0 AS' +
        ' QTDADEPECA_COMPOSICAO, 0.0 AS COMP_COMPOSICAO, 0.0 AS LARG_COMP' +
        'OSICAO, 0.0 AS ESPESSURA_COMPOSICAO,'
      '0.0 as QTDADEPECA_AVANCO1, 0.0 as QTDADEPECA_AVANCO2'
      'from PRODUTO P '
      'where (P.CODIGO = :CODPRODUTO)')
    SQLComposicao.Strings = (
      'select PC.*, P.*'
      'from PRODUTO_COMPOSICAO PC'
      'left join PRODUTO P on (PC.CODPRODUTO = P.CODIGO)'
      'where (PC.CODPRODUTO_COMPOSICAO = :CODPRODUTO)'
      'order by PC.ordem')
    SQLTabelaPreco.Strings = (
      'select PT.DESCRICAO, PT.ATIVO, PTP.*'
      'from PRODUTO_TABELA_PRECO PTP'
      'left join PRODUTO_TABELA PT on PT.CODIGO = PTP.CODPRODUTO_TABELA'
      'where PTP.CODPRODUTO = :CODPRODUTO')
    Connection = DMBanco.Banco
    TransacaoFD = TransaFD
    PermitirProdutoNaoCadastrado = True
    TreeListComposicao.TreeListPrincipalEmMemoria = False
    Left = 400
    Top = 284
  end
  object ProducaoEtapas: TFDQuery
    BeforeOpen = CadastroBeforeOpen
    AfterOpen = CadastroAfterOpen
    BeforeClose = CadastroBeforeClose
    AfterInsert = CadastroAfterInsert
    BeforeEdit = CadastroBeforeEdit
    BeforePost = CadastroBeforePost
    AfterPost = CadastroAfterPost
    OnCalcFields = CadastroCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'PROTOCOLO'
    DetailFields = 'PROTOCOLO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select *'
      'from PRODUCAO'
      'where (PROTOCOLO =:CODIGO)')
    Left = 316
    Top = 312
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object ProducaoEtapasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProducaoEtapasCODPRODUCAO: TIntegerField
      FieldName = 'CODPRODUCAO'
      Origin = 'CODPRODUCAO'
    end
    object ProducaoEtapasCODCENTRO_TRABALHO: TIntegerField
      FieldName = 'CODCENTRO_TRABALHO'
      Origin = 'CODCENTRO_TRABALHO'
    end
    object ProducaoEtapasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 600
    end
    object ProducaoEtapasORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
    end
    object ProducaoEtapasCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object ProducaoEtapasPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
    end
    object ProducaoEtapasPCONCLUSAO: TIntegerField
      FieldName = 'PCONCLUSAO'
      Origin = 'PCONCLUSAO'
    end
    object ProducaoEtapasCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
    end
    object ProducaoEtapasPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 300
    end
    object ProducaoEtapasQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'QUANT'
    end
    object ProducaoEtapasLARG: TFloatField
      FieldName = 'LARG'
      Origin = 'LARG'
    end
    object ProducaoEtapasCOMP: TFloatField
      FieldName = 'COMP'
      Origin = 'COMP'
    end
    object ProducaoEtapasESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
      Origin = 'ESPESSURA'
    end
    object ProducaoEtapasQTDADEPECA: TFloatField
      FieldName = 'QTDADEPECA'
      Origin = 'QTDADEPECA'
    end
    object ProducaoEtapasUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object ProducaoEtapasPESSOA_FUNCIONARIO_CODIGO: TStringField
      FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
      Origin = 'PESSOA_FUNCIONARIO_CODIGO'
      Size = 10
    end
    object ProducaoEtapasPESSOA_FUNCIONARIO_TIPO: TStringField
      FieldName = 'PESSOA_FUNCIONARIO_TIPO'
      Origin = 'PESSOA_FUNCIONARIO_TIPO'
      Size = 3
    end
    object ProducaoEtapasPESSOA_FUNCIONARIO_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_FUNCIONARIO_SEQUENCIA'
      Origin = 'PESSOA_FUNCIONARIO_SEQUENCIA'
    end
    object ProducaoEtapasPESSOA_RESPONSAVEL_CODIGO: TStringField
      FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
      Origin = 'PESSOA_RESPONSAVEL_CODIGO'
      Size = 10
    end
    object ProducaoEtapasPESSOA_RESPONSAVEL_TIPO: TStringField
      FieldName = 'PESSOA_RESPONSAVEL_TIPO'
      Origin = 'PESSOA_RESPONSAVEL_TIPO'
      Size = 3
    end
    object ProducaoEtapasPESSOA_RESPONSAVEL_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
      Origin = 'PESSOA_RESPONSAVEL_SEQUENCIA'
    end
    object ProducaoEtapasRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 150
    end
    object ProducaoEtapasTEMPO_INICIO: TSQLTimeStampField
      FieldName = 'TEMPO_INICIO'
      Origin = 'TEMPO_INICIO'
    end
    object ProducaoEtapasTEMPO_FIM: TSQLTimeStampField
      FieldName = 'TEMPO_FIM'
      Origin = 'TEMPO_FIM'
    end
    object ProducaoEtapasDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ProducaoEtapasDT_EMISSAO: TSQLTimeStampField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object ProducaoEtapasDT_FINALIZADO: TSQLTimeStampField
      FieldName = 'DT_FINALIZADO'
      Origin = 'DT_FINALIZADO'
    end
    object ProducaoEtapasDT_PRAZO_FINAL: TSQLTimeStampField
      FieldName = 'DT_PRAZO_FINAL'
      Origin = 'DT_PRAZO_FINAL'
    end
    object ProducaoEtapasPRE_REQUISITO_CENTRO_TRABALHO: TIntegerField
      FieldName = 'PRE_REQUISITO_CENTRO_TRABALHO'
      Origin = 'PRE_REQUISITO_CENTRO_TRABALHO'
    end
    object ProducaoEtapasOBS_PRODUCAO: TStringField
      FieldName = 'OBS_PRODUCAO'
      Origin = 'OBS_PRODUCAO'
      Size = 500
    end
    object ProducaoEtapasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 150
    end
    object ProducaoEtapasCALENDARIO_DT_INICIO: TSQLTimeStampField
      FieldName = 'CALENDARIO_DT_INICIO'
      Origin = 'CALENDARIO_DT_INICIO'
    end
    object ProducaoEtapasCALENDARIO_DT_FIM: TSQLTimeStampField
      FieldName = 'CALENDARIO_DT_FIM'
      Origin = 'CALENDARIO_DT_FIM'
    end
    object ProducaoEtapasCALENDARIO_ACTUAL_START: TIntegerField
      FieldName = 'CALENDARIO_ACTUAL_START'
      Origin = 'CALENDARIO_ACTUAL_START'
    end
    object ProducaoEtapasCALENDARIO_ACTUAL_FINISH: TIntegerField
      FieldName = 'CALENDARIO_ACTUAL_FINISH'
      Origin = 'CALENDARIO_ACTUAL_FINISH'
    end
    object ProducaoEtapasCALENDARIO_EVENT_TYPE: TIntegerField
      FieldName = 'CALENDARIO_EVENT_TYPE'
      Origin = 'CALENDARIO_EVENT_TYPE'
    end
    object ProducaoEtapasCALENDARIO_GROUP_ID: TIntegerField
      FieldName = 'CALENDARIO_GROUP_ID'
      Origin = 'CALENDARIO_GROUP_ID'
    end
    object ProducaoEtapasCALENDARIO_LOCATION: TStringField
      FieldName = 'CALENDARIO_LOCATION'
      Origin = 'CALENDARIO_LOCATION'
      Size = 255
    end
    object ProducaoEtapasCALENDARIO_OPTIONS: TIntegerField
      FieldName = 'CALENDARIO_OPTIONS'
      Origin = 'CALENDARIO_OPTIONS'
    end
    object ProducaoEtapasCALENDARIO_PARENT_ID: TIntegerField
      FieldName = 'CALENDARIO_PARENT_ID'
      Origin = 'CALENDARIO_PARENT_ID'
    end
    object ProducaoEtapasCALENDARIO_RECURRENCE_INDEX: TIntegerField
      FieldName = 'CALENDARIO_RECURRENCE_INDEX'
      Origin = 'CALENDARIO_RECURRENCE_INDEX'
    end
    object ProducaoEtapasCALENDARIO_RECURRENCE_INFO: TBlobField
      FieldName = 'CALENDARIO_RECURRENCE_INFO'
      Origin = 'CALENDARIO_RECURRENCE_INFO'
    end
    object ProducaoEtapasCALENDARIO_REMINDER_DATE: TSQLTimeStampField
      FieldName = 'CALENDARIO_REMINDER_DATE'
      Origin = 'CALENDARIO_REMINDER_DATE'
    end
    object ProducaoEtapasCALENDARIO_REMINDER_MINUTES: TIntegerField
      FieldName = 'CALENDARIO_REMINDER_MINUTES'
      Origin = 'CALENDARIO_REMINDER_MINUTES'
    end
    object ProducaoEtapasCALENDARIO_REMINDER_RESOURCES: TBlobField
      FieldName = 'CALENDARIO_REMINDER_RESOURCES'
      Origin = 'CALENDARIO_REMINDER_RESOURCES'
    end
    object ProducaoEtapasCALENDARIO_STATE: TIntegerField
      FieldName = 'CALENDARIO_STATE'
      Origin = 'CALENDARIO_STATE'
    end
    object ProducaoEtapasCALENDARIO_TAREFA_COMPLETA: TIntegerField
      FieldName = 'CALENDARIO_TAREFA_COMPLETA'
      Origin = 'CALENDARIO_TAREFA_COMPLETA'
    end
    object ProducaoEtapasCALENDARIO_TASK_INDEX: TIntegerField
      FieldName = 'CALENDARIO_TASK_INDEX'
      Origin = 'CALENDARIO_TASK_INDEX'
    end
    object ProducaoEtapasCALENDARIO_TASK_LINKS: TBlobField
      FieldName = 'CALENDARIO_TASK_LINKS'
      Origin = 'CALENDARIO_TASK_LINKS'
    end
    object ProducaoEtapasCALENDARIO_TASK_STATUS: TIntegerField
      FieldName = 'CALENDARIO_TASK_STATUS'
      Origin = 'CALENDARIO_TASK_STATUS'
    end
    object ProducaoEtapasDURACAO_PLANEJADA: TIntegerField
      FieldName = 'DURACAO_PLANEJADA'
      Origin = 'DURACAO_PLANEJADA'
    end
    object ProducaoEtapasDURACAO: TIntegerField
      FieldName = 'DURACAO'
      Origin = 'DURACAO'
    end
    object ProducaoEtapasCODPRODUCAO_OS_PRE_REQUISITO: TIntegerField
      FieldName = 'CODPRODUCAO_OS_PRE_REQUISITO'
      Origin = 'CODPRODUCAO_OS_PRE_REQUISITO'
    end
    object ProducaoEtapasTEMPO_ESTIMADO: TFloatField
      FieldName = 'TEMPO_ESTIMADO'
      Origin = 'TEMPO_ESTIMADO'
    end
    object ProducaoEtapasTEMPO: TIntegerField
      FieldName = 'TEMPO'
      Origin = 'TEMPO'
    end
    object ProducaoEtapasCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'CODUSUARIO'
    end
    object ProducaoEtapasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object ProducaoEtapasCUSTO_VENDA: TFloatField
      FieldName = 'CUSTO_VENDA'
      Origin = 'CUSTO_VENDA'
    end
    object ProducaoEtapasPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 50
    end
    object ProducaoEtapasSEQUENCIA_PROTOCOLO: TIntegerField
      FieldName = 'SEQUENCIA_PROTOCOLO'
      Origin = 'SEQUENCIA_PROTOCOLO'
    end
    object ProducaoEtapasCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
      Size = 10
    end
    object ProducaoEtapasCODVENDA_PRODUTO: TIntegerField
      FieldName = 'CODVENDA_PRODUTO'
      Origin = 'CODVENDA_PRODUTO'
    end
    object ProducaoEtapasTOKEN_USUARIO: TStringField
      FieldName = 'TOKEN_USUARIO'
      Origin = 'TOKEN_USUARIO'
      Size = 2000
    end
    object ProducaoEtapasTOKEN_PRODUCAO_MARCADOR: TStringField
      FieldName = 'TOKEN_PRODUCAO_MARCADOR'
      Origin = 'TOKEN_PRODUCAO_MARCADOR'
      Size = 2000
    end
    object ProducaoEtapasIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object ProducaoEtapasEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 1000
    end
    object ProducaoEtapasTEM_MENSAGEM: TIntegerField
      FieldName = 'TEM_MENSAGEM'
      Origin = 'TEM_MENSAGEM'
    end
    object ProducaoEtapasTEM_ARQUIVADO: TStringField
      FieldName = 'TEM_ARQUIVADO'
      Origin = 'TEM_ARQUIVADO'
      Size = 1
    end
    object ProducaoEtapasTEM_FRENTE_VERSO: TStringField
      FieldName = 'TEM_FRENTE_VERSO'
      Origin = 'TEM_FRENTE_VERSO'
      Size = 1
    end
    object ProducaoEtapasTEM_REVERSO: TStringField
      FieldName = 'TEM_REVERSO'
      Origin = 'TEM_REVERSO'
      Size = 1
    end
    object ProducaoEtapasTEM_LOGO: TStringField
      FieldName = 'TEM_LOGO'
      Origin = 'TEM_LOGO'
      Size = 1
    end
    object ProducaoEtapasTEM_PLAY: TStringField
      FieldName = 'TEM_PLAY'
      Origin = 'TEM_PLAY'
      Size = 1
    end
    object ProducaoEtapasTEM_ANEXO: TStringField
      FieldName = 'TEM_ANEXO'
      Origin = 'TEM_ANEXO'
      Size = 1
    end
    object ProducaoEtapasPODE_ENCAMINHAR: TStringField
      FieldName = 'PODE_ENCAMINHAR'
      Origin = 'PODE_ENCAMINHAR'
      Size = 1
    end
    object ProducaoEtapasPODE_CANCELAR: TStringField
      FieldName = 'PODE_CANCELAR'
      Origin = 'PODE_CANCELAR'
      Size = 1
    end
    object ProducaoEtapasPODE_LIBERAR: TStringField
      FieldName = 'PODE_LIBERAR'
      Origin = 'PODE_LIBERAR'
      Size = 1
    end
    object ProducaoEtapasATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ProducaoEtapasCUSTO_LOJA: TFloatField
      FieldName = 'CUSTO_LOJA'
      Origin = 'CUSTO_LOJA'
    end
    object ProducaoEtapasTEM_TRABALHANDO: TStringField
      FieldName = 'TEM_TRABALHANDO'
      Origin = 'TEM_TRABALHANDO'
      Size = 1
    end
  end
  object DSProducaoEtapas: TDataSource
    DataSet = ProducaoEtapas
    OnStateChange = DSStateChange
    Left = 344
    Top = 312
  end
  object MenuOpcoes: TPopupMenu
    Left = 392
    Top = 352
    object Abrircadastrodocliente1: TMenuItem
      Caption = 'Abrir cadastro do cliente'
      OnClick = Abrircadastrodocliente1Click
    end
    object OsdesseCliente1: TMenuItem
      Caption = 'Tudo desse cliente.'
      OnClick = OsdesseCliente1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Concluir1: TMenuItem
      Caption = 'Concluir'
      OnClick = Concluir1Click
    end
    object Duplicar1: TMenuItem
      Caption = 'Duplicar'
    end
    object Arquivar1: TMenuItem
      Caption = 'Arquivar'
      OnClick = Arquivar1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Arquivar2: TMenuItem
      Caption = 'Play'
      OnClick = Arquivar2Click
    end
  end
  object Producao_Tempo: TFDQuery
    AfterInsert = Producao_TempoAfterInsert
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUCAO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select *'
      'from PRODUCAO_TEMPO PT'
      'where'
      '(PT.CODPRODUCAO = :CODIGO)  ')
    Left = 120
    Top = 284
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object Producao_Vinculo: TFDQuery
    AfterInsert = Producao_ProdutoAfterInsert
    BeforePost = Producao_ProdutoBeforePost
    MasterSource = DS
    MasterFields = 'CODIGO;CODVENDA;CODVENDA_PRODUTO'
    DetailFields = 'CODIGO;CODVENDA;CODVENDA_PRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select P.CODIGO, P.PROTOCOLO, P.RAZAOSOCIAL, P.PRODUTO, P.QUANT_' +
        'PRODUZIR, P.SITUACAO'
      'from PRODUCAO P'
      
        'where (P.CODVENDA = :CODVENDA and P.CODVENDA_PRODUTO = :CODVENDA' +
        '_PRODUTO) '
      'and P.CODIGO <> :CODIGO  ')
    Left = 176
    Top = 396
    ParamData = <
      item
        Name = 'CODVENDA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end
      item
        Name = 'CODVENDA_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Producao_VinculoPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 50
    end
    object Producao_VinculoRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 150
    end
    object Producao_VinculoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 300
    end
    object Producao_VinculoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Producao_VinculoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 150
    end
    object Producao_VinculoQUANT_PRODUZIR: TFloatField
      FieldName = 'QUANT_PRODUZIR'
      Origin = 'QUANT_PRODUZIR'
    end
  end
  object DSProducao_Vinculo: TDataSource
    DataSet = Producao_Vinculo
    OnStateChange = DS_ComposicaoStateChange
    Left = 204
    Top = 396
  end
  object Producao_Movimento: TFDQuery
    AfterInsert = Producao_ProdutoAfterInsert
    BeforePost = Producao_ProdutoBeforePost
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUCAO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select PM.CODIGO, U.USUARIO, P.DESCRICAO as PRODUTO, CT.DESCRICA' +
        'O as CENTRO_TRABALHO, PM.SITUACAO, PM.PRODUCAO_ESTAGIO, PM.PRODU' +
        'CAO_MOTIVO, PM.OBSERVACAO, PM.DT_ALTERACAO, PM.TIPO_USO, PM.QUAN' +
        'T'
      'from PRODUCAO_MOVIMENTO PM'
      'left join PRODUTO P on P.CODIGO = PM.CODPRODUTO'
      
        'left join CENTRO_TRABALHO CT on CT.CODIGO = PM.CODCENTRO_TRABALH' +
        'O'
      'left join USUARIO U on U.CODIGO = PM.CODUSUARIO'
      'where PM.CODPRODUCAO = :CODIGO')
    Left = 176
    Top = 423
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSProducao_Movimento: TDataSource
    DataSet = Producao_Movimento
    OnStateChange = DS_ComposicaoStateChange
    Left = 204
    Top = 423
  end
  object ProducaoProdutoServico: TFDQuery
    AfterInsert = ProducaoProdutoServicoAfterInsert
    MasterSource = DS
    MasterFields = 'PROTOCOLO_PRINCIPAL'
    DetailFields = 'PROTOCOLO_PRINCIPAL'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select PC.CODPRODUTO, PC.DESCRICAO,PC.DT_ESTOQUE_BAIXA, U.USUARI' +
        'O'
      'from PRODUCAO_PRODUTO PC'
      'left join USUARIO U on U.CODIGO = PC.CODUSUARIO'
      'where '
      '(PC.PROTOCOLO_PRINCIPAL = :PROTOCOLO_PRINCIPAL)'
      'and PC.PRODUTO_TIPO = '#39'SERVICO'#39)
    Left = 120
    Top = 256
    ParamData = <
      item
        Name = 'PROTOCOLO_PRINCIPAL'
        ParamType = ptInput
      end>
  end
  object DSProducaoProdutoServico: TDataSource
    DataSet = ProducaoProdutoServico
    OnStateChange = DS_ComposicaoStateChange
    Left = 148
    Top = 256
  end
  object DSServico: TDataSource
    DataSet = Servico
    OnStateChange = DSStateChange
    Left = 260
    Top = 396
  end
  object Servico: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select p.*, pt.descricao as produto_tipo '
      'from Produto p'
      'left join produto_tipo pt on pt.codigo = p.codproduto_tipo'
      'where p.codproduto_tipo = 2')
    Left = 232
    Top = 396
  end
  object ProducaoRastro: TFDQuery
    AfterInsert = Producao_ProdutoAfterInsert
    BeforePost = Producao_ProdutoBeforePost
    MasterSource = DS
    MasterFields = 'PROTOCOLO_PRINCIPAL'
    DetailFields = 'PROTOCOLO_PRINCIPAL'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select p.protocolo, p.tem_despesa, ct.descricao as equipe, p.dt_' +
        'emissao, pe.razaosocial as funcionario, p.codusuario from produc' +
        'ao p'
      'left join centro_trabalho ct on ct.codigo = p.codcentro_trabalho'
      'left join pessoas pe on pe.codigo = p.PESSOA_FUNCIONARIO_CODIGO'
      'where p.protocolo_principal = :protocolo_principal')
    Left = 232
    Top = 424
    ParamData = <
      item
        Name = 'PROTOCOLO_PRINCIPAL'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object ProducaoRastroPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 50
    end
    object ProducaoRastroTEM_DESPESA: TStringField
      FieldName = 'TEM_DESPESA'
      Origin = 'TEM_DESPESA'
      Size = 1
    end
    object ProducaoRastroEQUIPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EQUIPE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object ProducaoRastroFUNCIONARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FUNCIONARIO'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 150
    end
    object ProducaoRastroCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'CODUSUARIO'
    end
    object ProducaoRastroDT_EMISSAO: TSQLTimeStampField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
  end
  object DSProducaoRastro: TDataSource
    DataSet = ProducaoRastro
    OnStateChange = DS_ComposicaoStateChange
    Left = 260
    Top = 424
  end
  object Producao_Requisicao: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select * from produto_requisicao')
    Left = 176
    Top = 451
  end
end
