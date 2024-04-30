inherited Frame_Venda_Mestre: TFrame_Venda_Mestre
  Width = 1273
  AutoScroll = True
  Color = clWindow
  Ctl3D = False
  ParentColor = False
  ParentCtl3D = False
  ExplicitWidth = 1273
  DesignSize = (
    1273
    593)
  object LbControleCaixa: TLabel [0]
    Left = -287
    Top = 65
    Width = 113
    Height = 13
    Caption = 'Lb de Controle do Caixa'
    Transparent = True
  end
  object LbUCAlteraFuncionario: TLabel [1]
    Left = -287
    Top = 50
    Width = 109
    Height = 13
    Caption = 'LbUCAlteraFuncionario'
    Transparent = True
  end
  object LbUCAlterarDescricaoProduto: TLabel [2]
    Left = -287
    Top = 206
    Width = 142
    Height = 13
    Caption = 'LbUCAlterarDescricaoProduto'
    Transparent = True
  end
  object LbUCAlterarRazaoSocial: TLabel [3]
    Left = -287
    Top = 99
    Width = 117
    Height = 13
    Caption = 'LbUCAlterarRazaoSocial'
    Transparent = True
    Visible = False
  end
  object LbUCAlterarDescCondPagto: TLabel [4]
    Left = -287
    Top = 82
    Width = 135
    Height = 13
    Caption = 'LbUCAlterarDescCondPagto'
    Transparent = True
    Visible = False
  end
  object LbUCMensagem: TLabel [5]
    Left = -391
    Top = 50
    Width = 79
    Height = 13
    Caption = 'LbUCMensagem'
  end
  object LbUCFuncionarioOuRep: TLabel [6]
    Left = -287
    Top = 20
    Width = 116
    Height = 13
    Caption = 'LbUCFuncionarioOuRep'
    Transparent = True
  end
  object LbUCImpedirProducaoFatura: TLabel [7]
    Left = -295
    Top = -21
    Width = 6
    Height = 13
    Caption = 'u'
  end
  object LbUCPermiteFaturarPrazoSemCNPJ: TLabel [8]
    Left = -287
    Top = 187
    Width = 170
    Height = 13
    Caption = 'LbUCPermiteFaturarPrazoSemCNPJ'
    Transparent = True
  end
  object LbUCCampoOpcionalPrometidoPara: TLabel [9]
    Left = -295
    Top = -100
    Width = 151
    Height = 13
    Caption = 'Campo opcional Prometido Para'
  end
  object lbUCdtemissao: TLabel [10]
    Left = -287
    Top = 151
    Width = 70
    Height = 13
    Caption = 'lbUCdtemissao'
    Transparent = True
    Visible = False
  end
  object LbUCPermiteDarDesconto: TLabel [11]
    Left = -287
    Top = 244
    Width = 125
    Height = 13
    Caption = 'LbUCPermiteDarDesconto'
    Transparent = True
  end
  object LbUCPermiteVenderAbaixoDoValorMinimo: TLabel [12]
    Left = -287
    Top = 263
    Width = 199
    Height = 13
    Caption = 'LbUCPermiteVenderAbaixoDoValorMinimo'
    Transparent = True
  end
  object LbUCPermiteImprimirVendaAbaixoDoValorMinimo: TLabel [13]
    Left = -287
    Top = 282
    Width = 231
    Height = 13
    Caption = 'LbUCPermiteImprimirVendaAbaixoDoValorMinimo'
    Transparent = True
  end
  object LbUCPermiteAlterarParcelas: TLabel [14]
    Left = -287
    Top = 301
    Width = 133
    Height = 13
    Caption = 'LbUCPermiteAlterarParcelas'
    Transparent = True
  end
  object lblCampoObrigatorioImpressao: TLabel [15]
    Left = -295
    Top = 22
    Width = 92
    Height = 13
    Caption = '* Campo obrigat'#243'rio'
    Color = 16505534
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lblCampoObrigatorioOBSProduto: TLabel [16]
    Left = -295
    Top = 44
    Width = 92
    Height = 13
    Caption = '* Campo obrigat'#243'rio'
    Color = 16505534
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblCampoObrigatorioAplicacao: TLabel [17]
    Left = -295
    Top = 66
    Width = 92
    Height = 13
    Caption = '* Campo obrigat'#243'rio'
    Color = 16505534
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblCampoObrigatorioCaminho: TLabel [18]
    Left = -295
    Top = 88
    Width = 92
    Height = 13
    Caption = '* Campo obrigat'#243'rio'
    Color = 16505534
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object LbUCAlterarValorProduto: TLabel [19]
    Left = -287
    Top = 225
    Width = 118
    Height = 13
    Caption = 'LbUCAlterarValorProduto'
    Transparent = True
  end
  inherited PnlHistorico_SLA: TPanel
    TabOrder = 15
  end
  object pnlSprMemoria: TPanel [21]
    Left = -278
    Top = 175
    Width = 760
    Height = 162
    Color = 16505534
    ParentBackground = False
    TabOrder = 16
    Visible = False
    OnExit = pnlSprMemoriaExit
    object SprMemoria: TdxSpreadSheet
      Left = 1
      Top = 1
      Width = 758
      Height = 160
      Align = alClient
      OptionsView.GridLines = False
      PageControl.Visible = False
      OnEditValueChanged = SprMemoriaEditValueChanged
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
  object cxGrid3: TcxGrid [22]
    Left = -27
    Top = 130
    Width = 682
    Height = 130
    BorderStyle = cxcbsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu_Produto
    TabOrder = 6
    Visible = False
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView3: TcxGridDBTableView
      OnDblClick = cxGridDBTableView3DblClick
      OnKeyDown = cxGridDBTableView3KeyDown
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataModeController.GridModeBufferCount = 50
      DataController.DataSource = DSConsultaProdutoGrid
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Click aqui para definir um filtro'
      NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
      OptionsView.CellAutoHeight = True
      OptionsView.CellTextMaxLineCount = 1
      OptionsView.GroupByBox = False
      object cxGridDBTableView3CODIGO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CODIGO'
      end
      object cxGridDBTableView3DESCRICAO: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        Width = 241
      end
      object cxGridDBTableView3ESTOQUE: TcxGridDBColumn
        Caption = 'Estoque'
        DataBinding.FieldName = 'ESTOQUE_P'
      end
      object cxGridDBTableView3UNIDADE: TcxGridDBColumn
        Caption = 'Unidade'
        DataBinding.FieldName = 'UNIDADE'
      end
      object cxGridDBTableView3CustoStr: TcxGridDBColumn
        Caption = 'R$ Custo'
        DataBinding.FieldName = 'CustoStr'
        Width = 82
      end
      object cxGridDBTableView3VALOR: TcxGridDBColumn
        Caption = 'R$ Valor'
        DataBinding.FieldName = 'VALOR'
      end
      object cxGridDBTableView3UNIDADEATACADO: TcxGridDBColumn
        Caption = 'Un. Atacado'
        DataBinding.FieldName = 'UNIDADEATACADO'
      end
      object cxGridDBTableView3VALORATACADO: TcxGridDBColumn
        Caption = 'R$ Atacado'
        DataBinding.FieldName = 'VALOR_ATACADO'
      end
      object cxGridDBTableView3VALOR_PRAZO: TcxGridDBColumn
        Caption = 'R$ Prazo'
        DataBinding.FieldName = 'VALOR_PRAZO'
      end
      object cxGridDBTableView3LOCAL: TcxGridDBColumn
        Caption = 'Local'
        DataBinding.FieldName = 'LOCAL'
      end
      object cxGridDBTableView3CODFABRICA: TcxGridDBColumn
        Caption = 'C'#243'd. F'#225'brica'
        DataBinding.FieldName = 'CODFABRICA'
      end
      object cxGridDBTableView3CUSTO_FABR: TcxGridDBColumn
        Caption = 'R$ Custo F'#225'b.'
        DataBinding.FieldName = 'CUSTO_FABR'
        Visible = False
      end
      object cxGridDBTableView3CUSTO_VENDA_TOTAL: TcxGridDBColumn
        Caption = 'R$ Custo Venda Total'
        DataBinding.FieldName = 'CUSTO_VENDA_TOTAL'
        Visible = False
      end
      object cxGridDBTableView3PERC_DESC_ATACADO: TcxGridDBColumn
        Caption = '% Desc. Atacado'
        DataBinding.FieldName = 'PERC_DESC_ATACADO'
      end
      object cxGridDBTableView3PERC_ACRESC_PRAZO: TcxGridDBColumn
        Caption = '% Acresc. Prazo'
        DataBinding.FieldName = 'PERC_ACRESC_PRAZO'
      end
    end
    object cxGridLevel3: TcxGridLevel
      Caption = 'Relat'#243'rio'
      GridView = cxGridDBTableView3
    end
  end
  object PnlCentroTrabalhoProduto: TPanel [23]
    Left = 29
    Top = 37
    Width = 522
    Height = 135
    TabOrder = 13
    Visible = False
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 520
      Height = 133
      Align = alClient
      TabOrder = 0
      object EdtCTProdutoÎCentro_Trabalho: TcxButtonEdit
        Left = 10
        Top = 46
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
        Width = 104
      end
      object BtnCTProdutoCancelar: TcxButton
        Left = 302
        Top = 98
        Width = 101
        Height = 25
        Caption = 'Cancelar'
        ModalResult = 2
        TabOrder = 3
      end
      object BtnCTProdutoConfirmar: TcxButton
        Left = 409
        Top = 98
        Width = 101
        Height = 25
        Caption = 'Confirmar'
        ModalResult = 1
        TabOrder = 4
      end
      object LblCTProdutoÎCentro_TrabalhoÎDESCRICAO: TcxLabel
        Left = 120
        Top = 46
        AutoSize = False
        Style.HotTrack = False
        Height = 21
        Width = 390
      end
      object cxLabel2: TcxLabel
        Left = 10
        Top = 10
        Caption = 
          'Selecione um Centro de Trabalho para definir nos produtos. Somen' +
          'te ser'#225' aplicado aos produtos que atualmente n'#227'o possuirem nenhu' +
          'm Centro de Trabalho.'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Properties.WordWrap = True
        Transparent = True
        Width = 500
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 2
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem38: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup18
        CaptionOptions.Layout = clTop
        Control = EdtCTProdutoÎCentro_Trabalho
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 104
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem39: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup19
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = BtnCTProdutoCancelar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 101
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem40: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup19
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton6'
        CaptionOptions.Visible = False
        Control = BtnCTProdutoConfirmar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 101
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem41: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup18
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = LblCTProdutoÎCentro_TrabalhoÎDESCRICAO
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 47
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutAutoCreatedGroup19: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avBottom
        LayoutDirection = ldHorizontal
        Index = 3
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutControl1Group_Root
        AlignVert = avBottom
        CaptionOptions.Text = 'Separator'
        Index = 2
      end
      object dxLayoutItem42: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Visible = False
        Control = cxLabel2
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 7
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object pnlPessoaContato: TPanel [24]
    Left = -159
    Top = 77
    Width = 706
    Height = 253
    Align = alCustom
    Caption = 'Contato'
    TabOrder = 14
    Visible = False
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 704
      Height = 251
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object cxGrid10: TcxGrid
        Left = 0
        Top = 0
        Width = 704
        Height = 216
        TabOrder = 0
        object cxGrid10DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid10DBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSPessoas_Contato
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.GroupByBox = False
          object cxGrid10DBTableView1CONTATO: TcxGridDBColumn
            Caption = 'Contato'
            DataBinding.FieldName = 'CONTATO'
            Width = 177
          end
          object cxGrid10DBTableView1DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 177
          end
          object cxGrid10DBTableView1FONE: TcxGridDBColumn
            Caption = 'Tefefone'
            DataBinding.FieldName = 'FONE'
            Width = 110
          end
          object cxGrid10DBTableView1CELULAR: TcxGridDBColumn
            Caption = 'Celular'
            DataBinding.FieldName = 'CELULAR'
            Width = 99
          end
          object cxGrid10DBTableView1EMAIL: TcxGridDBColumn
            Caption = 'Email'
            DataBinding.FieldName = 'EMAIL'
            Width = 200
          end
          object cxGrid10DBTableView1ENDERECO: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'ENDERECO'
            Width = 200
          end
        end
        object cxGrid10Level1: TcxGridLevel
          GridView = cxGrid10DBTableView1
        end
      end
      object btnInserir: TcxButton
        Left = 553
        Top = 217
        Width = 75
        Height = 34
        Caption = 'Confirmar'
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnInserirClick
      end
      object btnFechar: TcxButton
        Left = 629
        Top = 217
        Width = 75
        Height = 34
        Caption = 'Fechar'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnFecharClick
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl2Item1: TdxLayoutItem
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        Control = cxGrid10
        ControlOptions.OriginalHeight = 216
        ControlOptions.OriginalWidth = 684
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Group1: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Item2: TdxLayoutItem
        Parent = dxLayoutControl2Group1
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnInserir
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl2Group1
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnFechar
        ControlOptions.OriginalHeight = 50
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object pnlEnderecoEntrega: TPanel [25]
    Left = -57
    Top = 172
    Width = 592
    Height = 190
    Caption = 'Endere'#231'os de Entrega'
    Locked = True
    TabOrder = 9
    Visible = False
    object dxLayoutControl7: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 590
      Height = 188
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object btnConfirmaEndEntrega: TcxButton
        Left = 434
        Top = 160
        Width = 75
        Height = 23
        Caption = 'Confirmar'
        TabOrder = 1
        OnClick = btnConfirmaEndEntregaClick
      end
      object btnCancelaEndEntrega: TcxButton
        Left = 510
        Top = 160
        Width = 75
        Height = 23
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = btnCancelaEndEntregaClick
      end
      object cxGrid11: TcxGrid
        Left = 5
        Top = 5
        Width = 580
        Height = 147
        TabOrder = 0
        object cxGridDBTableView5: TcxGridDBTableView
          OnDblClick = cxGridDBTableView5DblClick
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSPessoas_Entrega
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBCODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
          end
          object cxGridDBDESCRICAO: TcxGridDBColumn
            Caption = 'Descricao'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 235
          end
          object cxGrid1DBTableView1BAIRRO: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'BAIRRO'
          end
          object cxGrid1DBTableView1ENDERECO: TcxGridDBColumn
            Caption = 'Logradouro'
            DataBinding.FieldName = 'ENDERECO'
            Width = 61
          end
          object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUMERO'
            Width = 78
          end
          object cxGrid1DBTableView1CEP: TcxGridDBColumn
            DataBinding.FieldName = 'CEP'
          end
          object cxGrid1DBTableView1CIDADE: TcxGridDBColumn
            Caption = 'Cidade'
            DataBinding.FieldName = 'CIDADE'
            Width = 108
          end
          object cxGrid1DBTableView1COMPLEMENTO: TcxGridDBColumn
            Caption = 'Complemento'
            DataBinding.FieldName = 'COMPLEMENTO'
            Width = 274
          end
          object cxGrid1DBTableView1UF: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
      object dxLayoutControl7Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Offsets.Bottom = 5
        Offsets.Left = 5
        Offsets.Right = 5
        Offsets.Top = 5
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object LiGridEnderecoEntrega: TdxLayoutItem
        Parent = dxLayoutControl7Group_Root
        Control = cxGrid11
        ControlOptions.OriginalHeight = 147
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl7Group1: TdxLayoutGroup
        Parent = dxLayoutControl7Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object dxLayoutControl7Item1: TdxLayoutItem
        Parent = dxLayoutControl7Group1
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton11'
        CaptionOptions.Visible = False
        Control = btnConfirmaEndEntrega
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl7Item3: TdxLayoutItem
        Parent = dxLayoutControl7Group1
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton12'
        CaptionOptions.Visible = False
        Control = btnCancelaEndEntrega
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl7SeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutControl7Group_Root
        AlignHorz = ahClient
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        CaptionOptions.Text = 'Separator'
        Index = 1
      end
    end
  end
  object LbUCPermiteAlterarQuantNoGrid: TcxLabel [26]
    Left = -289
    Top = 166
    Caption = 'LbUCPermiteAlterarQuantNoGrid'
    Style.HotTrack = False
    Transparent = True
  end
  object LbUCPermiteCustomizarGridFinanceiro: TcxLabel [27]
    Left = -289
    Top = 33
    Caption = 'LbUCPermiteCustomizarGridFinanceiro'
    Style.HotTrack = False
    Transparent = True
  end
  object pnlDadosVeiculo: TPanel [28]
    Left = 71
    Top = 146
    Width = 421
    Height = 305
    Caption = 'Dados do Ve'#237'culo'
    Locked = True
    TabOrder = 8
    Visible = False
    object dxLayoutControl10: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 419
      Height = 303
      Align = alClient
      TabOrder = 0
      object EdtVeiculoAnoModelo: TcxDBTextEdit
        Left = 0
        Top = 104
        DataBinding.DataField = 'VEICULO_ANO_MODELO'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 6
        Width = 88
      end
      object EdtVeiculoRenavan: TcxDBTextEdit
        Left = 181
        Top = 104
        DataBinding.DataField = 'VEICULO_RENAVAN'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 8
        Width = 145
      end
      object EdtVeiculoKM: TcxDBTextEdit
        Left = 0
        Top = 150
        DataBinding.DataField = 'VEICULO_KM'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 10
        Width = 120
      end
      object EdtVeiculoCondicaoVeiculo: TcxDBTextEdit
        Left = 0
        Top = 240
        DataBinding.DataField = 'VEICULO_CONDICAO_VEICULO'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 17
        Width = 139
      end
      object EdtVeiculoCMOD: TcxDBTextEdit
        Left = 140
        Top = 240
        DataBinding.DataField = 'VEICULO_CMOD'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 18
        Width = 139
      end
      object EdtVeiculoCorDenatran: TcxDBTextEdit
        Left = 280
        Top = 240
        DataBinding.DataField = 'VEICULO_COR_DENATRAN'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 19
        Width = 139
      end
      object EdtVeiculoAnoFabricacao: TcxDBTextEdit
        Left = 89
        Top = 104
        DataBinding.DataField = 'VEICULO_ANO_FABRICACAO'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 7
        Width = 91
      end
      object EdtVeiculoPesoBruto: TcxDBCurrencyEdit
        Left = 121
        Top = 150
        DataBinding.DataField = 'VEICULO_PESO_BRUTO'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 11
        Width = 149
      end
      object EdtVeiculoPesoLiquido: TcxDBCurrencyEdit
        Left = 271
        Top = 150
        DataBinding.DataField = 'VEICULO_PESO_LIQUIDO'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 12
        Width = 148
      end
      object EdtVeiculoPassageiros: TcxDBCurrencyEdit
        Left = 0
        Top = 195
        DataBinding.DataField = 'VEICULO_PASSAGEIROS'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 13
        Width = 121
      end
      object EdtVeiculoEspecie: TcxDBTextEdit
        Left = 122
        Top = 195
        DataBinding.DataField = 'VEICULO_ESPECIE'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 14
        Width = 98
      end
      object EdtVeiculoPlaca: TcxDBTextEdit
        Left = 327
        Top = 104
        DataBinding.DataField = 'VEICULO_PLACA'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 9
        Width = 92
      end
      object EdtVeiculoTipo: TcxDBTextEdit
        Left = 221
        Top = 195
        DataBinding.DataField = 'VEICULO_TIPO'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 15
        Width = 99
      end
      object EdtVeiculoDist: TcxDBTextEdit
        Left = 321
        Top = 195
        DataBinding.DataField = 'VEICULO_DIST'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 16
        Width = 98
      end
      object EdtVeiculoMotor: TcxDBTextEdit
        Left = 0
        Top = 59
        DataBinding.DataField = 'VEICULO_MOTOR'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 2
        Width = 104
      end
      object EdtVeiculoCombustivel: TcxDBTextEdit
        Left = 105
        Top = 59
        DataBinding.DataField = 'VEICULO_COMBUSTIVEL'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 3
        Width = 116
      end
      object EdtVeiculoHP: TcxDBCurrencyEdit
        Left = 222
        Top = 59
        DataBinding.DataField = 'VEICULO_HP'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 4
        Width = 105
      end
      object EdtVeiculoCilindrada: TcxDBTextEdit
        Left = 328
        Top = 59
        DataBinding.DataField = 'VEICULO_CILINDRADA'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 5
        Width = 91
      end
      object EdtVeiculoChassi: TcxDBTextEdit
        Left = 0
        Top = 14
        DataBinding.DataField = 'VEICULO_CHASSI'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 0
        Width = 247
      end
      object EdtVeiculoNumeroSerie: TcxDBTextEdit
        Left = 248
        Top = 14
        DataBinding.DataField = 'VEICULO_NUMERO_SERIE'
        DataBinding.DataSource = DSVenda_Produto
        Style.HotTrack = False
        TabOrder = 1
        Width = 171
      end
      object btnDadosVeiculoFechar: TcxButton
        Left = 322
        Top = 271
        Width = 97
        Height = 25
        Caption = 'Fechar'
        TabOrder = 20
        OnClick = btnDadosVeiculoFecharClick
      end
      object dxLayoutControl10Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl10Group2: TdxLayoutGroup
        Parent = dxLayoutControl10Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object dxLayoutControl10Item4: TdxLayoutItem
        Parent = dxLayoutControl10Group2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Ano Modelo'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoAnoModelo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 88
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl10Item2: TdxLayoutItem
        Parent = dxLayoutControl10Group2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Renavan'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoRenavan
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl10Group7: TdxLayoutGroup
        Parent = dxLayoutControl10Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object dxLayoutControl10Item5: TdxLayoutItem
        Parent = dxLayoutControl10Group7
        AlignHorz = ahClient
        CaptionOptions.Text = 'KM'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoKM
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 120
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl10Group1: TdxLayoutGroup
        Parent = dxLayoutControl10Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 4
      end
      object dxLayoutControl10Group5: TdxLayoutGroup
        Parent = dxLayoutControl10Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 5
      end
      object dxLayoutControl10Item17: TdxLayoutItem
        Parent = dxLayoutControl10Group5
        AlignHorz = ahClient
        CaptionOptions.Text = 'Condi'#231#227'o Ve'#237'culo'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoCondicaoVeiculo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 139
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl10Item18: TdxLayoutItem
        Parent = dxLayoutControl10Group5
        AlignHorz = ahClient
        CaptionOptions.Text = 'CMOD'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoCMOD
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 139
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl10Item19: TdxLayoutItem
        Parent = dxLayoutControl10Group5
        AlignHorz = ahClient
        CaptionOptions.Text = 'Cor Detatran'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoCorDenatran
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 139
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl10Item13: TdxLayoutItem
        Parent = dxLayoutControl10Group2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Ano Fabrica'#231#227'o'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoAnoFabricacao
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 91
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl10Item11: TdxLayoutItem
        Parent = dxLayoutControl10Group7
        AlignHorz = ahClient
        CaptionOptions.Text = 'Peso Bruto'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoPesoBruto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 149
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl10Item9: TdxLayoutItem
        Parent = dxLayoutControl10Group7
        AlignHorz = ahClient
        CaptionOptions.Text = 'Peso L'#237'quido'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoPesoLiquido
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 148
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl10Item10: TdxLayoutItem
        Parent = dxLayoutControl10Group1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Passageiros'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoPassageiros
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl10Item15: TdxLayoutItem
        Parent = dxLayoutControl10Group1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Esp'#233'cie'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoEspecie
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 98
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl10Item8: TdxLayoutItem
        Parent = dxLayoutControl10Group2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Placa'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoPlaca
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 92
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutControl10Item14: TdxLayoutItem
        Parent = dxLayoutControl10Group1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Tipo'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoTipo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 99
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl10Item16: TdxLayoutItem
        Parent = dxLayoutControl10Group1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Dist.'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoDist
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 98
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutControl10Group3: TdxLayoutGroup
        Parent = dxLayoutControl10Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl10Item1: TdxLayoutItem
        Parent = dxLayoutControl10Group3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Motor'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoMotor
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 104
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl10Item6: TdxLayoutItem
        Parent = dxLayoutControl10Group3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Combust'#237'vel'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoCombustivel
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 116
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl10Item7: TdxLayoutItem
        Parent = dxLayoutControl10Group3
        AlignHorz = ahClient
        CaptionOptions.Text = 'HP'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoHP
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 105
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl10Item3: TdxLayoutItem
        Parent = dxLayoutControl10Group3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Cilindrada (CMT)'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoCilindrada
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 91
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutControl10Group4: TdxLayoutGroup
        Parent = dxLayoutControl10Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object LayoutItemVeiculoChassi: TdxLayoutItem
        Parent = dxLayoutControl10Group4
        AlignHorz = ahClient
        CaptionOptions.Text = 'Chassi'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoChassi
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 247
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl10Item12: TdxLayoutItem
        Parent = dxLayoutControl10Group4
        AlignHorz = ahClient
        CaptionOptions.Text = 'N'#250'mero de S'#233'rie'
        CaptionOptions.Layout = clTop
        Control = EdtVeiculoNumeroSerie
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 171
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl10Group6: TdxLayoutGroup
        Parent = dxLayoutControl10Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        ShowBorder = False
        Index = 6
      end
      object dxLayoutControl10Item20: TdxLayoutItem
        Parent = dxLayoutControl10Group6
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = btnDadosVeiculoFechar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 97
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object LbUCPermiteEmissaoNFVendaNaoFaturada: TcxLabel [29]
    Left = -289
    Top = 131
    Caption = 'LbUCPermiteEmissaoNFVendaNaoFaturada'
    Style.HotTrack = False
    Transparent = True
  end
  object PnlObservacaoVenda: TPanel [30]
    Left = -191
    Top = 134
    Width = 523
    Height = 337
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 7
    Visible = False
    object dxLayoutControl8: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 519
      Height = 333
      Align = alClient
      TabOrder = 0
      object MemObservacao: TcxDBMemo
        Left = 10
        Top = 38
        DataBinding.DataField = 'OBSERVACAO'
        DataBinding.DataSource = DS
        Properties.ScrollBars = ssBoth
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Height = 285
        Width = 499
      end
      object Panel1: TPanel
        Left = 10
        Top = 10
        Width = 472
        Height = 22
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object btnFecharPnlObservacaoVenda: TcxButton
        AlignWithMargins = True
        Left = 488
        Top = 10
        Width = 21
        Height = 22
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          000000000003000000120000002E0000004700000051000000440000002A0000
          000E000000010000000000000000000000000000000000000000000000000000
          000B000000370000007A000000A101010CA801011EAB000008A80000009F0000
          0072000000300000000800000000000000000000000000000000000000110000
          0053000003A304044BB3050670C7050775C9060B87CC050673C905066FC50304
          44B30000009C000000480000000D000000000000000000000009000000510101
          0AAA05066EC40911A7DC0F21C3FA1123BEFF1022BAFF1023BEFF101FC2F90810
          9FD7050669C001010AA60000003F00000005000000000000002901010A9F0506
          73CC0F1EC9F7101FB6FF101FAEFF1120ADFF1020ADFF1120ADFF101FAEFF101F
          B8FF0E1CCAF4050671C90001078E0000001B000000000000005606086AC8101C
          CBF4101EB5FF101EB0FF101EB0FF101EB0FF101EB0FF101EB0FF101EB0FF101E
          B0FF101EB7FF0C13ADE2060756C3000000450000000001011D8E0C1086D1101D
          C2FF111CB3FF111DB3FFFFFFFFFFC4C6E1FF101CB3FFC4C7E1FFFFFFFFFF111C
          B3FF101CB3FF111FC9FF070976CD00000D7200000001060646B11B20B3E4111C
          B9FF101AB6FF101AB7FFC3C4D4FFFFFFFFFFC5C6E2FFFFFFFFFFC3C4D4FF101A
          B7FF101AB6FF131DBFFF191CA3DC0202309A000000030A0B5BBC2B30C9EE141D
          BCFF1019BAFF1018BAFF0A0F73FFC3C4D4FFFFFFFFFFC3C4D5FF0A0F73FF1119
          BAFF1119BAFF1820BDFF292DBDE8050644A6000000020B0B58B53A3CC9ED2126
          C5FF1118BDFF1017BDFFC5C6E3FFFFFFFFFFC3C4D5FFFFFFFFFFC4C6E3FF1117
          BDFF1119BDFF272DC8FF3133B5E503043C980000000105054293393AAFE33D40
          D5FF181DC3FF1115C0FFFFFFFFFFC3C4D5FF0A0D76FFC3C4D5FFFFFFFFFF1116
          C0FF1C20C4FF4749DBFF2A2A95D90102286C0000000001011137121279CD6D6D
          EFFF3B3CD2FF1C20C7FF0A0C6AFF0A0C78FF1014C2FF0A0C78FF0A0C6AFF2021
          C8FF4042D6FF7171F0FD040572CC0000001200000000000000050B0B56A14645
          AFE37573EDFF4D4DDBFF3535D2FF2B2BCEFF2729CDFF2A2BCEFF3736D2FF5252
          DDFF7B79F0FF37379CDA06064487000000010000000000000000000006130D0E
          6BBC4D4CB2E38E8AF6FF7A76EBFF6B68E6FF6764E4FF6C69E6FF7C79EDFF908C
          F7FF4342A7DF0D0D5FAA00000007000000000000000000000000000000000000
          07140D0E5FA72B2B8CD16D6BCDED8F8BEFFA8D8AEEFA8E8BEDF96764C8EB2121
          83CD0B0B56990000020800000000000000000000000000000000000000000000
          000000000000010222410B0C589A0A0B70C40B0B71C50B0C70C40A0A51900101
          1C350000000000000000000000000000000000000000}
        OptionsImage.ImageIndex = 0
        OptionsImage.Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
        TabOrder = 1
        OnClick = btnFecharPnlObservacaoVenda1Click
      end
      object dxLayoutControl8Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl8Item1: TdxLayoutItem
        Parent = dxLayoutControl8Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Observa'#231#227'o'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = MemObservacao
        ControlOptions.OriginalHeight = 285
        ControlOptions.OriginalWidth = 499
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl8Group1: TdxLayoutGroup
        Parent = dxLayoutControl8Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl8Item2: TdxLayoutItem
        Parent = dxLayoutControl8Group1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Panel1'
        CaptionOptions.Visible = False
        Control = Panel1
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 472
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl8Item3: TdxLayoutItem
        Parent = dxLayoutControl8Group1
        AlignHorz = ahRight
        CaptionOptions.Visible = False
        Control = btnFecharPnlObservacaoVenda
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 21
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object cxGrid5: TcxGrid [31]
    Left = -184
    Top = 99
    Width = 3129
    Height = 17
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = cxcbsNone
    TabOrder = 4
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      OnKeyDown = cxGrid1DBTableView1KeyDown
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.GridModeBufferCount = 50
      DataController.DataSource = DSEquipamento
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Click aqui para definir um filtro'
      NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
      OptionsView.CellAutoHeight = True
      OptionsView.CellTextMaxLineCount = 2
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'CODIGO'
      end
      object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRICAO'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Relat'#243'rio'
      GridView = cxGrid1DBTableView1
    end
  end
  object PnlFrenteVerso: TPanel [32]
    Left = 213
    Top = 192
    Width = 247
    Height = 109
    Caption = 'Aplicar acr'#233'scimo'
    Locked = True
    TabOrder = 11
    Visible = False
    object dxLayoutControl6: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 245
      Height = 107
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object EdtFrenteVersoPorcentagem: TcxCurrencyEdit
        Left = 69
        Top = 27
        EditValue = 0.000000000000000000
        Properties.DisplayFormat = '% ,0.00;-% ,0.00'
        Style.HotTrack = False
        TabOrder = 1
        OnExit = EdtFrenteVersoPorcentagemExit
        Width = 171
      end
      object EdtFrenteVersoValor: TcxCurrencyEdit
        Left = 69
        Top = 5
        EditValue = 0.000000000000000000
        Style.HotTrack = False
        TabOrder = 0
        OnExit = EdtFrenteVersoValorExit
        Width = 171
      end
      object cxButton10: TcxButton
        Left = 39
        Top = 77
        Width = 100
        Height = 25
        Caption = 'Confirmar'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = ImgListBotoes16
        TabOrder = 2
      end
      object cxButton9: TcxButton
        Left = 140
        Top = 77
        Width = 100
        Height = 25
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Images = ImgListBotoes16
        TabOrder = 3
        OnClick = cxButton9Click
      end
      object dxLayoutControl6Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Offsets.Bottom = 5
        Offsets.Left = 5
        Offsets.Right = 5
        Offsets.Top = 5
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl6Item3: TdxLayoutItem
        Parent = dxLayoutControl6Group_Root
        CaptionOptions.Text = 'Porcentagem'
        Control = EdtFrenteVersoPorcentagem
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 171
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl6Item4: TdxLayoutItem
        Parent = dxLayoutControl6Group_Root
        CaptionOptions.Text = 'Valor'
        Control = EdtFrenteVersoValor
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 171
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl6Group3: TdxLayoutGroup
        Parent = dxLayoutControl6Group_Root
        AlignVert = avBottom
        CaptionOptions.Visible = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object dxLayoutControl6Item2: TdxLayoutItem
        Parent = dxLayoutControl6Group3
        AlignHorz = ahRight
        AlignVert = avCenter
        CaptionOptions.Visible = False
        Control = cxButton10
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 100
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl6Item1: TdxLayoutItem
        Parent = dxLayoutControl6Group3
        AlignHorz = ahRight
        AlignVert = avCenter
        CaptionOptions.Visible = False
        Control = cxButton9
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 100
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl6SeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutControl6Group_Root
        AlignVert = avBottom
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        CaptionOptions.Text = 'Separator'
        Index = 2
      end
    end
  end
  object PnlCheque: TPanel [33]
    Left = -74
    Top = 192
    Width = 644
    Height = 231
    Caption = 'Cheque'
    ParentBackground = False
    TabOrder = 10
    Visible = False
    object dxLayoutControl9: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 642
      Height = 229
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object lblChequeContaÎContasÎDESCRICAO: TLabel
        Left = 63
        Top = 20
        Width = 288
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
      end
      object edtChequeContaÎContas: TcxDBButtonEdit
        Left = 5
        Top = 19
        Hint = 'F2 - Consulta / F3 - Cadastro'
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DataBinding.DataField = 'CODCONTA'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 113
        ShowHint = True
        Style.HotTrack = False
        TabOrder = 0
        Height = 21
        Width = 57
      end
      object edtCheque_Numero: TcxDBTextEdit
        Left = 352
        Top = 19
        DataBinding.DataField = 'CHEQUE_NUMERO'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 92
      end
      object edtCheque_DT_Bom_Para: TcxDBDateEdit
        Left = 445
        Top = 19
        Margins.Left = 2
        Margins.Top = 2
        DataBinding.DataField = 'CHEQUE_DT_BOM_PARA'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 2
        Width = 92
      end
      object edtChequeValor: TcxDBTextEdit
        Left = 538
        Top = 19
        DataBinding.DataField = 'VALOR'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 3
        Width = 99
      end
      object edtChequeBancoÎBancos: TcxDBButtonEdit
        Left = 5
        Top = 55
        Hint = 'F2 - Consulta / F3 - Cadastro'
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DataBinding.DataField = 'CHEQUE_CODBANCO'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        ShowHint = True
        Style.HotTrack = False
        TabOrder = 4
        Height = 21
        Width = 57
      end
      object edtChequeBancoÎBancosÎDESCRICAO: TcxDBTextEdit
        Left = 63
        Top = 55
        DataBinding.DataField = 'CHEQUE_BANCO'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 5
        Width = 185
      end
      object edtCheque_Nome: TcxDBTextEdit
        Left = 249
        Top = 55
        DataBinding.DataField = 'CHEQUE_NOME'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 6
        Width = 388
      end
      object edtCheque_DT_Cadastro: TcxDBDateEdit
        Left = 5
        Top = 91
        Margins.Left = 2
        Margins.Top = 2
        DataBinding.DataField = 'CHEQUE_DT_CADASTRO'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.Color = clSilver
        Style.HotTrack = False
        TabOrder = 7
        Width = 92
      end
      object edtCheque_DT_Repassado: TcxDBDateEdit
        Left = 98
        Top = 91
        Margins.Left = 2
        Margins.Top = 2
        DataBinding.DataField = 'CHEQUE_DT_REPASSADO'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 8
        Width = 92
      end
      object edtCheque_Repassado: TcxDBTextEdit
        Left = 191
        Top = 91
        DataBinding.DataField = 'CHEQUE_REPASSADO'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 9
        Width = 446
      end
      object edtCheque_Tipo: TcxDBComboBox
        Left = 5
        Top = 127
        DataBinding.DataField = 'CHEQUE_TIPO'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Properties.Items.Strings = (
          'J'
          'F'
          'O')
        Style.HotTrack = False
        TabOrder = 10
        Width = 40
      end
      object edtCheque_CNPJCPF: TcxDBTextEdit
        Left = 46
        Top = 127
        DataBinding.DataField = 'CHEQUE_CNPJCPF'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 11
        Width = 116
      end
      object edtCheque_Compe: TcxDBTextEdit
        Left = 309
        Top = 127
        DataBinding.DataField = 'CHEQUE_COMPE'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 13
        Width = 39
      end
      object edtCheque_Agencia: TcxDBTextEdit
        Left = 349
        Top = 127
        DataBinding.DataField = 'CHEQUE_AGENCIA'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 14
        Width = 45
      end
      object edtCheque_C1: TcxDBTextEdit
        Left = 395
        Top = 127
        DataBinding.DataField = 'CHEQUE_C1'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 15
        Width = 23
      end
      object edtCheque_Conta: TcxDBTextEdit
        Left = 419
        Top = 127
        DataBinding.DataField = 'CHEQUE_CONTA'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 16
        Width = 94
      end
      object edtCheque_C2: TcxDBTextEdit
        Left = 514
        Top = 127
        DataBinding.DataField = 'CHEQUE_C2'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 17
        Width = 23
      end
      object edtCheque_C3: TcxDBTextEdit
        Left = 538
        Top = 127
        DataBinding.DataField = 'CHEQUE_C3'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 18
        Width = 23
      end
      object edtCodCheque: TcxDBTextEdit
        Left = 562
        Top = 127
        TabStop = False
        DataBinding.DataField = 'CODCHEQUE'
        DataBinding.DataSource = DS_Financeiro
        Enabled = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 19
        Width = 75
      end
      object BtnPnlChequeFechar: TcxButton
        Left = 525
        Top = 199
        Width = 112
        Height = 25
        Caption = 'Fechar'
        OptionsImage.ImageIndex = 6
        TabOrder = 20
        OnClick = BtnPnlChequeFecharClick
      end
      object cbxCheque_CNPJCPF: TcxDBLookupComboBox
        Left = 163
        Top = 127
        AutoSize = False
        DataBinding.DataField = 'CHEQUE_CNPJCPF'
        DataBinding.DataSource = DS_Financeiro
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownSizeable = True
        Properties.GridMode = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'DOCUMENTO'
        Properties.ListColumns = <
          item
            Caption = 'Documento'
            FieldName = 'DOCUMENTO'
          end
          item
            Caption = 'Restri'#231#227'o'
            FieldName = 'RESTRICAO'
          end
          item
            Caption = 'T'#237'tular'
            FieldName = 'TITULAR'
          end>
        Properties.ListSource = DS_PessoasChequesAutorizados
        Properties.OnEditValueChanged = cxDBLookupComboBox1PropertiesEditValueChanged
        Style.HotTrack = False
        TabOrder = 12
        Height = 21
        Width = 145
      end
      object dxLayoutControl9Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Offsets.Bottom = 5
        Offsets.Left = 5
        Offsets.Right = 5
        Offsets.Top = 5
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl9Group1: TdxLayoutGroup
        Parent = dxLayoutControl9Group_Root
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object liedtChequeContaÎContas: TdxLayoutItem
        Parent = dxLayoutControl9Group1
        CaptionOptions.Text = 'Conta'
        CaptionOptions.Layout = clTop
        Control = edtChequeContaÎContas
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 57
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lilblChequeContaÎContasÎDESCRICAO: TdxLayoutItem
        Parent = dxLayoutControl9Group1
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = lblChequeContaÎContasÎDESCRICAO
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 57
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liedtCheque_Numero: TdxLayoutItem
        Parent = dxLayoutControl9Group1
        CaptionOptions.Text = 'Cheque N'#186
        CaptionOptions.Layout = clTop
        Control = edtCheque_Numero
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 92
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object liedtCheque_DT_Bom_Para: TdxLayoutItem
        Parent = dxLayoutControl9Group1
        CaptionOptions.Text = 'Bom Para'
        CaptionOptions.Layout = clTop
        Control = edtCheque_DT_Bom_Para
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 92
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object liedtChequeValor: TdxLayoutItem
        Parent = dxLayoutControl9Group1
        CaptionOptions.Text = 'R$ Valor'
        CaptionOptions.Layout = clTop
        Control = edtChequeValor
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 99
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutControl9Group2: TdxLayoutGroup
        Parent = dxLayoutControl9Group_Root
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object liedtChequeBancoÎBancos: TdxLayoutItem
        Parent = dxLayoutControl9Group2
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Banco'
        CaptionOptions.Layout = clTop
        Control = edtChequeBancoÎBancos
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 57
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object liedtChequeBancoÎBancosÎDESCRICAO: TdxLayoutItem
        Parent = dxLayoutControl9Group2
        AlignVert = avBottom
        CaptionOptions.Layout = clTop
        Control = edtChequeBancoÎBancosÎDESCRICAO
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liedtCheque_Nome: TdxLayoutItem
        Parent = dxLayoutControl9Group2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Nome do Cheque'
        CaptionOptions.Layout = clTop
        Control = edtCheque_Nome
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 303
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl9Group3: TdxLayoutGroup
        Parent = dxLayoutControl9Group_Root
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object liedtCheque_DT_Cadastro: TdxLayoutItem
        Parent = dxLayoutControl9Group3
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Cadastro'
        CaptionOptions.Layout = clTop
        Control = edtCheque_DT_Cadastro
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 92
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object liedtCheque_DT_Repassado: TdxLayoutItem
        Parent = dxLayoutControl9Group3
        CaptionOptions.Text = 'Data Repasse'
        CaptionOptions.Layout = clTop
        Control = edtCheque_DT_Repassado
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 92
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liedtCheque_Repassado: TdxLayoutItem
        Parent = dxLayoutControl9Group3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Onde est'#225' o Cheque?'
        CaptionOptions.Layout = clTop
        Control = edtCheque_Repassado
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 361
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl9Group4: TdxLayoutGroup
        Parent = dxLayoutControl9Group_Root
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object liedtCheque_Tipo: TdxLayoutItem
        Parent = dxLayoutControl9Group4
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Tipo'
        CaptionOptions.Layout = clTop
        Control = edtCheque_Tipo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 40
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object liedtCheque_CNPJCPF: TdxLayoutItem
        Parent = dxLayoutControl9Group4
        AlignHorz = ahClient
        CaptionOptions.Text = 'CPF / CNPJ do Cheque'
        CaptionOptions.Layout = clTop
        Control = edtCheque_CNPJCPF
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 177
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liedtCheque_Compe: TdxLayoutItem
        Parent = dxLayoutControl9Group4
        CaptionOptions.Text = 'Compe'
        CaptionOptions.Layout = clTop
        Control = edtCheque_Compe
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 39
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object liedtCheque_Agencia: TdxLayoutItem
        Parent = dxLayoutControl9Group4
        CaptionOptions.Text = 'Ag'#234'ncia'
        CaptionOptions.Layout = clTop
        Control = edtCheque_Agencia
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 45
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object liedtCheque_C1: TdxLayoutItem
        Parent = dxLayoutControl9Group4
        CaptionOptions.Text = 'C1'
        CaptionOptions.Layout = clTop
        Control = edtCheque_C1
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 23
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object liedtCheque_Conta: TdxLayoutItem
        Parent = dxLayoutControl9Group4
        CaptionOptions.Text = 'Conta'
        CaptionOptions.Layout = clTop
        Control = edtCheque_Conta
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 94
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object liedtCheque_C2: TdxLayoutItem
        Parent = dxLayoutControl9Group4
        CaptionOptions.Text = 'C2'
        CaptionOptions.Layout = clTop
        Control = edtCheque_C2
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 23
        ControlOptions.ShowBorder = False
        Index = 7
      end
      object liedtCheque_C3: TdxLayoutItem
        Parent = dxLayoutControl9Group4
        CaptionOptions.Text = 'C3'
        CaptionOptions.Layout = clTop
        Control = edtCheque_C3
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 23
        ControlOptions.ShowBorder = False
        Index = 8
      end
      object liedtCodCheque: TdxLayoutItem
        Parent = dxLayoutControl9Group4
        CaptionOptions.Text = 'Seu N'#250'mero'
        CaptionOptions.Layout = clTop
        Control = edtCodCheque
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 9
      end
      object dxLayoutControl9Item21: TdxLayoutItem
        Parent = dxLayoutControl9Group_Root
        AlignHorz = ahRight
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = BtnPnlChequeFechar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 112
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutControl9SeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutControl9Group_Root
        AlignVert = avBottom
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        CaptionOptions.Text = 'Separator'
        Index = 4
      end
      object licbxCheque_CNPJCPF: TdxLayoutItem
        Parent = dxLayoutControl9Group4
        AlignVert = avClient
        CaptionOptions.Text = 'CPF / CNPJ do Cheque'
        CaptionOptions.Layout = clTop
        Control = cbxCheque_CNPJCPF
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  inherited PnlHistorico_Seguidor: TPanel
    Left = 249
    ExplicitLeft = 249
  end
  inherited MainLayout: TdxLayoutControl
    Width = 1165
    ExplicitWidth = 1165
    DesignSize = (
      1165
      573)
    inherited edtCodigo: TcxDBTextEdit
      Left = -16646
      Top = 10000
      TabOrder = 141
      Visible = False
      ExplicitLeft = -16646
      ExplicitTop = 10000
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = -16646
      Top = 10000
      TabOrder = 147
      Visible = False
      ExplicitLeft = -16646
      ExplicitTop = 10000
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = -16646
      Top = 10000
      TabOrder = 143
      Visible = False
      ExplicitLeft = -16646
      ExplicitTop = 10000
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = -16646
      TabOrder = 149
      ExplicitLeft = -16646
    end
    inherited PnlFrameHistorico: TPanel
      Left = 8722
      Width = 1847
      Height = 353
      Caption = 'Carregando...'
      TabOrder = 120
      ExplicitLeft = 8722
      ExplicitWidth = 1847
      ExplicitHeight = 353
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = -16646
      Top = 10000
      TabOrder = 146
      Visible = False
      ExplicitLeft = -16646
      ExplicitTop = 10000
    end
    object lbTipo_Equipamento: TLabel [6]
      Left = 10000
      Top = 10000
      Width = 138
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
      Transparent = False
      Layout = tlCenter
      Visible = False
    end
    object edtResponsavelÎPessoas: TcxDBButtonEdit [7]
      Tag = 34
      Left = 185
      Top = 60
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
      TabOrder = 8
      OnExit = edtResponsavelÎPessoasExit
      Height = 21
      Width = 79
    end
    object edtResponsavelÎPessoasÎRAZAOSOCIAL: TcxDBTextEdit [8]
      Left = 264
      Top = 60
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'RAZAOSOCIAL'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      Properties.ValidationErrorIconAlignment = taRightJustify
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnChange = EdtResponsavelÎPessoasÎRAZAOSOCIALPropertiesChange
      Properties.OnValidate = EdtResponsavelÎPessoasÎRAZAOSOCIALPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 21
      Width = 1233
    end
    object edtResponsavelÎPessoasÎFONE1: TcxDBTextEdit [9]
      Left = 1497
      Top = 60
      Hint = 'F2 - Consulta'
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'TELEFONE'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 10
      Height = 21
      Width = 84
    end
    object edtSolicitacao_Servico: TcxDBMemo [10]
      Left = 9993
      Top = 10000
      DataBinding.DataField = 'SOLICITACAO_SERVICO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 92
      Visible = False
      Height = 151
      Width = 926
    end
    object edtObservacao_Servico: TcxDBMemo [11]
      Left = 9993
      Top = 10000
      DataBinding.DataField = 'OBSERVACAO_SERVICO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 93
      Visible = False
      Height = 151
      Width = 920
    end
    object edtPROJETO_DT_INICIO: TcxDBDateEdit [12]
      Left = 9993
      Top = 10000
      Margins.Top = 0
      TabStop = False
      DataBinding.DataField = 'PROJETO_DT_INICIO'
      DataBinding.DataSource = DS
      Properties.Kind = ckDateTime
      Style.HotTrack = False
      TabOrder = 96
      Visible = False
      Width = 133
    end
    object edtPROJETO_DT_FIM: TcxDBDateEdit [13]
      Left = 111
      Top = 24
      Margins.Top = 0
      TabStop = False
      DataBinding.DataField = 'PROJETO_DT_FIM'
      DataBinding.DataSource = DS
      Properties.Kind = ckDateTime
      Style.HotTrack = False
      TabOrder = 1
      Width = 133
    end
    object edtCondicaoPagtoÎCondicaoPagto: TcxDBButtonEdit [14]
      Left = 9963
      Top = 10000
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
      Properties.OnChange = EdtCondicaoPagtoÎCondicaoPagtoPropertiesChange
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 66
      Visible = False
      Height = 21
      Width = 96
    end
    object edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TcxDBTextEdit [15]
      Left = 9963
      Top = 10000
      Hint = 'O Intervalo deve ser informado  em Dias'
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'DIA_INTERVALO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 69
      Visible = False
      Height = 21
      Width = 56
    end
    object edtCondicaoPagtoÎCondicaoPagtoÎPARCELAS: TcxDBTextEdit [16]
      Left = 9963
      Top = 10000
      Hint = 'Quantidade de parcelas'
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'QUANTIDADE_PARCELAS'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 68
      Visible = False
      Height = 21
      Width = 61
    end
    object SpnCaixa: TcxSpinEdit [17]
      Left = 9963
      Top = 10000
      Anchors = [akTop, akRight]
      Style.HotTrack = False
      TabOrder = 71
      Value = 1
      Visible = False
      Width = 42
    end
    object btnParcelas: TcxButton [18]
      Left = 9963
      Top = 10000
      Width = 112
      Height = 34
      Anchors = [akTop, akRight]
      Caption = 'Gerar Parcelas'
      OptionsImage.Spacing = 2
      TabOrder = 72
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = btnParcelasClick
    end
    object edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TcxDBTextEdit [19]
      Left = 9963
      Top = 10000
      Hint = 'F2 - Consulta'
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'CONDICAOPAGTO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 67
      Visible = False
      Height = 21
      Width = 1404
    end
    object GridFinanceiro: TcxGrid [20]
      Left = 9963
      Top = 10000
      Width = 1847
      Height = 164
      PopupMenu = MenuFinanceiro
      TabOrder = 74
      Visible = False
      object cxGridViewFinanceiro: TcxGridDBTableView
        OnDblClick = cxGridViewFinanceiroDblClick
        OnKeyDown = cxGridViewFinanceiroKeyDown
        OnMouseMove = cxGridViewFinanceiroMouseMove
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
        OnCustomDrawCell = cxGridViewFinanceiroCustomDrawCell
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DS_Financeiro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems.OnSummary = cxGridDBTableView1DataControllerSummaryFooterSummaryItemsSummary
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'VALOR'
            Column = cxGridViewFinanceiroVALOR
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
        end
        object cxGridViewFinanceiroCODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGridViewFinanceiroVALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          Width = 86
        end
        object cxGrid1DBTableView1VENCTO: TcxGridDBColumn
          Caption = 'Vencto'
          DataBinding.FieldName = 'VENCTO'
          PropertiesClassName = 'TcxDateEditProperties'
          SortIndex = 0
          SortOrder = soAscending
          Width = 106
        end
        object cxGrid1DBTableView1DATAPAGTO: TcxGridDBColumn
          Caption = 'Dt. Pagto'
          DataBinding.FieldName = 'DATAPAGTO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Kind = ckDateTime
          Options.Editing = False
          Width = 125
        end
        object cxGrid1DBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object cxGrid1DBTableView1TIPOPAGTO: TcxGridDBColumn
          Caption = 'Tipo Pagto'
          DataBinding.FieldName = 'TIPOPAGTO'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            'DINHEIRO'
            'CHEQUE'
            'CHEQUE-PR'#201
            'DEP'#211'SITO'
            'BOLETO'
            'CART'#195'O DE CR'#201'DITO'
            'CART'#195'O DE D'#201'BITO'
            'CREDI'#193'RIO'
            'NOTA SIMPLES'
            'NOTA PROMISS'#211'RIA'
            'PERMUTA'
            'CR'#201'DITO'
            'DEP.RETORNO'
            'DUPLICATA'
            'TRANSFERENCIA'
            'NOTA FISCAL'
            'RECIBO SIMPLES'
            'RECIBO CONTABIL'
            'DEBITO EM CONTA')
          Properties.OnValidate = cxGrid1DBTableView1TIPOPAGTOPropertiesValidate
          Width = 114
        end
        object cxGrid1DBTableView1CODCONTA: TcxGridDBColumn
          Caption = 'C'#243'd. Conta'
          DataBinding.FieldName = 'CODCONTA'
          Width = 69
        end
        object cxGrid1DBTableView1CONTA: TcxGridDBColumn
          Caption = 'Conta'
          DataBinding.FieldName = 'CONTA'
        end
        object cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
        end
        object cxGrid1DBTableView1CODCONDICAOPAGTO: TcxGridDBColumn
          Caption = 'C'#243'd. Cond. Pagto.'
          DataBinding.FieldName = 'CODCONDICAOPAGTO'
        end
        object cxGrid1DBTableView1JUROS: TcxGridDBColumn
          Caption = 'Juros'
          DataBinding.FieldName = 'JUROS'
        end
        object cxGrid1DBTableView1DESCONTO: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'DESCONTO'
        end
        object cxGrid1DBTableView1DOCUMENTO: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'DOCUMENTO'
        end
        object cxGrid1DBTableView1EMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'EMISSAO'
        end
        object cxGrid1DBTableView1CODCHEQUE: TcxGridDBColumn
          Caption = 'Cheque C'#243'd.'
          DataBinding.FieldName = 'CODCHEQUE'
        end
        object cxGrid1DBTableView1CHEQUE_NUMERO: TcxGridDBColumn
          Caption = 'Cheque N'#186
          DataBinding.FieldName = 'CHEQUE_NUMERO'
          Width = 59
        end
        object cxGrid1DBTableView1CHEQUE_DT_CADASTRO: TcxGridDBColumn
          Caption = 'Cheque Dt. Cadastro'
          DataBinding.FieldName = 'CHEQUE_DT_CADASTRO'
        end
        object cxGrid1DBTableView1CHEQUE_TIPO: TcxGridDBColumn
          Caption = 'Cheque Tipo'
          DataBinding.FieldName = 'CHEQUE_TIPO'
        end
        object cxGrid1DBTableView1CHEQUE_CNPJCPF: TcxGridDBColumn
          Caption = 'Cheque CNPJ/CPF'
          DataBinding.FieldName = 'CHEQUE_CNPJCPF'
        end
        object cxGrid1DBTableView1CHEQUE_DT_BOM_PARA: TcxGridDBColumn
          Caption = 'Cheque Dt. Bom Para'
          DataBinding.FieldName = 'CHEQUE_DT_BOM_PARA'
        end
        object cxGrid1DBTableView1CHEQUE_C3: TcxGridDBColumn
          Caption = 'Cheque C3'
          DataBinding.FieldName = 'CHEQUE_C3'
        end
        object cxGrid1DBTableView1CHEQUE_C2: TcxGridDBColumn
          Caption = 'Cheque C2'
          DataBinding.FieldName = 'CHEQUE_C2'
        end
        object cxGrid1DBTableView1CHEQUE_C1: TcxGridDBColumn
          Caption = 'Cheque C1'
          DataBinding.FieldName = 'CHEQUE_C1'
        end
        object cxGrid1DBTableView1CHEQUE_CONTA: TcxGridDBColumn
          Caption = 'Cheque Conta'
          DataBinding.FieldName = 'CHEQUE_CONTA'
        end
        object cxGrid1DBTableView1CHEQUE_AGENCIA: TcxGridDBColumn
          Caption = 'Cheque Ag'#234'ncia'
          DataBinding.FieldName = 'CHEQUE_AGENCIA'
        end
        object cxGrid1DBTableView1CHEQUE_COMPE: TcxGridDBColumn
          Caption = 'Cheque Compe.'
          DataBinding.FieldName = 'CHEQUE_COMPE'
        end
        object cxGrid1DBTableView1CHEQUE_CODBANCO: TcxGridDBColumn
          Caption = 'Cheque C'#243'd. Banco'
          DataBinding.FieldName = 'CHEQUE_CODBANCO'
        end
        object cxGrid1DBTableView1CHEQUE_REPASSADO: TcxGridDBColumn
          Caption = 'Cheque Repassado'
          DataBinding.FieldName = 'CHEQUE_REPASSADO'
        end
        object cxGrid1DBTableView1CHEQUE_DT_REPASSADO: TcxGridDBColumn
          Caption = 'Cheque Dt. Repassado'
          DataBinding.FieldName = 'CHEQUE_DT_REPASSADO'
        end
        object cxGrid1DBTableView1CHEQUE_NOME: TcxGridDBColumn
          Caption = 'Cheque Nome'
          DataBinding.FieldName = 'CHEQUE_NOME'
        end
        object cxGrid1DBTableView1CHEQUE_BANCO: TcxGridDBColumn
          Caption = 'Cheque Banco'
          DataBinding.FieldName = 'CHEQUE_BANCO'
        end
        object cxGrid1DBTableView1CHEQUE_STATUS: TcxGridDBColumn
          Caption = 'Cheque Status'
          DataBinding.FieldName = 'CHEQUE_STATUS'
        end
        object cxGrid1DBTableView1CODRESPONSAVEL: TcxGridDBColumn
          Caption = 'C'#243'd. Respons'#225'vel'
          DataBinding.FieldName = 'CODRESPONSAVEL'
        end
        object cxGrid1DBTableView1STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
        end
        object cxGrid1DBTableView1HISTORICO: TcxGridDBColumn
          Caption = 'Hist'#243'rico'
          DataBinding.FieldName = 'HISTORICO'
        end
        object cxGrid1DBTableView1CODPLANOCONTAS: TcxGridDBColumn
          Caption = 'C'#243'd. Plano de Contas'
          DataBinding.FieldName = 'CODPLANOCONTAS'
          Options.ShowEditButtons = isebAlways
          Options.SortByDisplayText = isbtOn
        end
        object cxGrid1DBTableView1CONDICAOPAGTO: TcxGridDBColumn
          Caption = 'Cond. Pagto'
          DataBinding.FieldName = 'CONDICAOPAGTO'
        end
        object cxGrid1DBTableView1CODTIPOPAGTO: TcxGridDBColumn
          Caption = 'C'#243'd. Tipo Pagto'
          DataBinding.FieldName = 'CODTIPOPAGTO'
        end
        object cxGrid1DBTableView1CONTATOS: TcxGridDBColumn
          Caption = 'Contatos'
          DataBinding.FieldName = 'CONTATOS'
        end
        object cxGridViewFinanceiroTotal: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
        end
        object cxGridViewFinanceiroDATA: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
        end
        object cxGridViewFinanceiroFIN_VENCTO: TcxGridDBColumn
          Caption = 'Fin. Vencto'
          DataBinding.FieldName = 'FIN_VENCTO'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_DATAPAGTO: TcxGridDBColumn
          Caption = 'Fin. Data Pagto'
          DataBinding.FieldName = 'FIN_DATAPAGTO'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_STATUS: TcxGridDBColumn
          Caption = 'Fin. Status'
          DataBinding.FieldName = 'FIN_STATUS'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_TIPO: TcxGridDBColumn
          Caption = 'Fin. Tipo'
          DataBinding.FieldName = 'FIN_TIPO'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_TOTAL: TcxGridDBColumn
          Caption = 'Fin. Total'
          DataBinding.FieldName = 'FIN_TOTAL'
          Visible = False
        end
        object cxGridViewFinanceiroFIN_VALOR: TcxGridDBColumn
          Caption = 'Fin. Valor'
          DataBinding.FieldName = 'FIN_VALOR'
        end
        object cxGridViewFinanceiroFIN_DESCONTO: TcxGridDBColumn
          Caption = 'Fin. Desconto'
          DataBinding.FieldName = 'FIN_DESCONTO'
        end
        object cxGridViewFinanceiroFIN_JUROS: TcxGridDBColumn
          Caption = 'Fin. Juros'
          DataBinding.FieldName = 'FIN_JUROS'
        end
        object cxGridViewFinanceiroFIN_COUNTFIN: TcxGridDBColumn
          Caption = 'Fin. Quant'
          DataBinding.FieldName = 'FIN_COUNTFIN'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGridViewFinanceiroMsgFinanceiro: TcxGridDBColumn
          DataBinding.FieldName = 'MsgFinanceiro'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGridViewFinanceiroSTATUS_TEF: TcxGridDBColumn
          Caption = 'Status TEF'
          DataBinding.FieldName = 'TEF_STATUS'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridViewFinanceiro
      end
    end
    object edtAtendenteÎPessoas: TcxDBButtonEdit [21]
      Tag = 37
      Left = 9963
      Top = 10000
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'PESSOA_FUNCIONARIO_SEQUENCIA'
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
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 80
      Visible = False
      OnExit = edtAtendenteÎPessoasExit
      Height = 23
      Width = 71
    end
    object edtRepresentanteÎPessoas: TcxDBButtonEdit [22]
      Tag = 38
      Left = 9963
      Top = 10000
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'PESSOA_REPRESENTANTE_SEQUENCIA'
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
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 85
      Visible = False
      Height = 23
      Width = 71
    end
    object lblAtendenteÎPessoasÎRAZAOSOCIAL: TcxLabel [23]
      Left = 9963
      Top = 10000
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Visible = False
      Height = 23
      Width = 1433
    end
    object lblRepresentanteÎPessoasÎRAZAOSOCIAL: TcxLabel [24]
      Left = 9963
      Top = 10000
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Visible = False
      Height = 23
      Width = 1433
    end
    object lblCampoObrigatorioFuncionario: TcxLabel [25]
      Left = 9963
      Top = 10000
      Caption = '* Campo obrigat'#243'rio'
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Transparent = True
      Visible = False
    end
    object lblObriga_Representante: TcxLabel [26]
      Left = 9963
      Top = 10000
      AutoSize = False
      Caption = '* Campo obrigat'#243'rio'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.ShadowedColor = 8421631
      Transparent = True
      Visible = False
      Height = 17
      Width = 101
    end
    object edtCodProduto: TcxButtonEdit [27]
      Left = -9
      Top = 130
      AutoSize = False
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 113
      Properties.OnButtonClick = edtCodProdutoPropertiesButtonClick
      Properties.OnEditValueChanged = EdtCodProdutoPropertiesEditValueChanged
      TabOrder = 29
      OnKeyDown = edtCodProdutoKeyDown
      Height = 21
      Width = 143
    end
    object btnAdicionarProduto: TcxButton [28]
      Left = 1748
      Top = 118
      Width = 33
      Height = 33
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 54
      OnClick = btnAdicionarProdutoClick
    end
    object btnRemoverProduto: TcxButton [29]
      Left = 1782
      Top = 118
      Width = 33
      Height = 33
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 55
      TabStop = False
      OnClick = btnRemoverProdutoClick
    end
    object BtnImprimirDireto: TcxButton [30]
      Left = -16646
      Top = 10000
      Width = 42
      Height = 29
      Caption = 'Imprimir Direto'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = ImgListBotoes24
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 126
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = BtnImprimirDiretoClick
    end
    object LbImpressao2: TcxLabel [31]
      Left = -16646
      Top = 10000
      AutoSize = False
      Caption = 'Impress'#227'o'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Visible = False
      Height = 17
      Width = 115
      AnchorX = -16588
      AnchorY = 10009
    end
    object BtnMenu: TcxButton [32]
      Left = -16646
      Top = 10000
      Width = 116
      Height = 25
      Caption = 'Menu'
      TabOrder = 125
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = BtnMenuClick
    end
    object edtDT_Emissao: TcxDBDateEdit [33]
      Left = 91
      Top = 60
      AutoSize = False
      DataBinding.DataField = 'DT_EMISSAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 94
    end
    object btnConsultaTECVenda: TcxButton [34]
      Left = -16646
      Top = 10000
      Width = 116
      Height = 25
      Caption = 'Consulta TEC'
      TabOrder = 148
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnConsultaTECVendaClick
    end
    object edtQuantidade: TcxDBTextEdit [35]
      Left = 1172
      Top = 532
      AutoSize = False
      DataBinding.DataField = 'QUANTIDADE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 15
      Height = 21
      Width = 121
    end
    object Label10: TcxLabel [36]
      Left = 1678
      Top = 484
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Subtotal'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 34
      Width = 65
      AnchorX = 1711
      AnchorY = 501
    end
    object edtSub_Total: TcxDBTextEdit [37]
      Left = 1744
      Top = 484
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'SUB_TOTAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 25
      Height = 34
      Width = 104
    end
    object LbTotal: TcxLabel [38]
      Left = 1678
      Top = 519
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
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 34
      Width = 65
      AnchorX = 1711
      AnchorY = 536
    end
    object edtVendaTotal: TcxDBTextEdit [39]
      Left = 1744
      Top = 519
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'TOTAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Properties.OnEditValueChanged = edtVendaTotalPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 27
      Height = 34
      Width = 104
    end
    object edtTotal_Servicos: TcxDBTextEdit [40]
      Left = 1591
      Top = 484
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TOTAL_SERVICOS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.HotTrack = True
      Style.TextStyle = [fsBold]
      TabOrder = 22
      Height = 34
      Width = 86
    end
    object edtTOTAL_PRODUTOS: TcxDBTextEdit [41]
      Left = 1591
      Top = 519
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TOTAL_PRODUTOS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 23
      Height = 34
      Width = 86
    end
    object edtPOutro: TcxDBCurrencyEdit [42]
      Left = 1385
      Top = 494
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'POUTRO'
      DataBinding.DataSource = DS
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 8
      Properties.OnValidate = WRCalcVENDA
      Style.HotTrack = False
      TabOrder = 18
      Height = 23
      Width = 63
    end
    object edtPDesc: TcxDBCurrencyEdit [43]
      Left = 1385
      Top = 532
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'PDESC'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.OnValidate = WRCalcVENDA
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 63
    end
    object edtVDesc: TcxDBCurrencyEdit [44]
      Left = 1449
      Top = 532
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'VDESC'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.OnValidate = WRCalcVENDA
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 87
    end
    object LblResponsavelÎPessoasÎOBSERVACAO: TcxLabel [45]
      Left = -16646
      Top = 10000
      AutoSize = False
      ParentColor = False
      Style.HotTrack = False
      Visible = False
      Height = 97
      Width = 138
    end
    object edtResponsavelÎPessoasÎCONTATO: TcxDBTextEdit [46]
      Left = 1581
      Top = 60
      Hint = 'F2 - Consulta '
      AutoSize = False
      DataBinding.DataField = 'CONTATO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 11
      OnKeyDown = edtResponsavelÎPessoasÎCONTATOKeyDown
      Height = 21
      Width = 121
    end
    object cbxTipo_Venda: TcxDBLookupComboBox [47]
      Left = 1426
      Top = 24
      Hint = 
        'Clique em '#39'Definir como Padr'#227'o'#39' para definir este Tipo de venda ' +
        'como padr'#227'o'
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'VENDA_TIPO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'DESCRICAO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DSQuerVenda_Tipo
      Properties.OnChange = cbxTipo_VendaPropertiesChange
      Properties.OnEditValueChanged = cbxTipo_VendaPropertiesEditValueChanged
      Properties.OnValidate = cbxTipo_VendaPropertiesValidate
      ShowHint = False
      Style.Color = clMoneyGreen
      Style.HotTrack = False
      TabOrder = 2
      OnExit = cbxTipo_VendaExit
      Height = 21
      Width = 140
    end
    object edtCalc_VDesc_Manual: TcxDBCurrencyEdit [48]
      Left = 1571
      Top = 130
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CALC_VDESC_MANUAL'
      DataBinding.DataSource = DSPmPrincipal
      ParentFont = False
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.OnValidate = edtCalc_VDesc_ManualPropertiesValidate
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 51
      Height = 21
      Width = 62
    end
    object edtObeservacao: TcxDBMemo [49]
      Left = -19
      Top = 494
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Properties.ScrollBars = ssVertical
      Properties.OnEditValueChanged = DBMemo1PropertiesEditValueChanged
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 28
      Height = 59
      Width = 1190
    end
    object cbxSituacao: TcxDBComboBox [50]
      Left = 1708
      Top = 24
      AutoSize = False
      DataBinding.DataField = 'SITUACAO'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Style.Color = clMoneyGreen
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 140
    end
    object edtSequencia: TcxDBCurrencyEdit [51]
      Left = 28
      Top = 60
      DataBinding.DataField = 'SEQUENCIA'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 6
      Width = 63
    end
    object edtPedidoCliente: TcxDBTextEdit [52]
      Left = -16646
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'PEDIDO_COMPRA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 128
      Visible = False
      OnExit = edtPedidoClienteExit
      Height = 21
      Width = 123
    end
    object edtPedidoRepresentante: TcxDBTextEdit [53]
      Left = -16646
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'PEDIDO_REP'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 129
      Visible = False
      OnExit = edtPedidoRepresentanteExit
      Height = 21
      Width = 116
    end
    object PnlFrameAgrupamento: TPanel [54]
      Left = -16646
      Top = 10000
      Width = 1406
      Height = 353
      BevelOuter = bvNone
      Caption = 'Carregando...'
      Color = 16505534
      ParentBackground = False
      TabOrder = 116
      Visible = False
    end
    object chkIntervalo_Mensal: TcxDBCheckBox [55]
      Left = 9963
      Top = 10000
      Anchors = [akTop, akRight]
      Caption = 'M'#234's'
      DataBinding.DataField = 'INTERVALO_MENSAL'
      DataBinding.DataSource = DS
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'T'
      Properties.ValueUnchecked = 'F'
      Style.HotTrack = False
      TabOrder = 70
      Transparent = True
      Visible = False
    end
    object EdtTipodoEvento: TcxDBTextEdit [56]
      Left = -16646
      Top = 10000
      DataBinding.DataField = 'TIPO_EVENTO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 130
      Visible = False
      Width = 121
    end
    object EdtCerimonial: TcxDBTextEdit [57]
      Left = -16646
      Top = 10000
      DataBinding.DataField = 'CERIMONIAL'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 131
      Visible = False
      Width = 121
    end
    object EdtDatadoEvento: TcxDBDateEdit [58]
      Left = -16646
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'DATA_EVENTO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 132
      Visible = False
      Height = 21
      Width = 121
    end
    object edtVOutro: TcxDBCurrencyEdit [59]
      Left = 1449
      Top = 494
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'VOUTRO'
      DataBinding.DataSource = DS
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 8
      Properties.OnValidate = WRCalcVENDA
      Style.HotTrack = False
      TabOrder = 19
      Height = 23
      Width = 87
    end
    object edtNF_VFrete: TcxDBCurrencyEdit [60]
      Left = 1294
      Top = 532
      DataBinding.DataField = 'NF_VFRETE'
      DataBinding.DataSource = DS
      Properties.OnValidate = WRCalcVENDA
      Style.HotTrack = False
      TabOrder = 17
      Width = 90
    end
    object BtnAnexos: TcxButton [61]
      Left = 1294
      Top = 480
      Width = 90
      Height = 37
      Caption = 'Anexos'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000037260041B17800CEC58600E68C6000A30101000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000006D4C
        007E9A6B00B3030200040000000032220039D59400F606030006000000000000
        00000000000000000000000000000000000000000000000000000A07000BCD8E
        00EA000000000000000031230039583D0063160F0019D99600F70C08000E0000
        0000000000000000000000000000000000000000000000000000251A002A7C58
        008B000000007D58008D986B00AB46330050DC9C00F81B13001DD79800F4110C
        00130000000000000000000000000000000000000000000000001711001AB37E
        00C700000000DD9D00F600000000000000000F0B0011DD9D00F521170025D799
        00F1130E0014000000000000000000000000000000000000000000000000C58D
        00D9281E002CB98500CB231900260000000000000000150E0016D99D00EF251A
        0028DA9E00F1120C001300000000000000000000000000000000000000000906
        0009D99C00EC281C002BDB9E00F01B14001E000000000000000017110019DB9E
        00EF21180024E0A100F30C09000D000000000000000000000000000000000000
        000006040006E3A500F323190025E6A800F7130D001400000000000000001610
        0018E4A600F51C14001EE6A800F7050300060000000000000000000000000000
        00000000000004030004E2A805F2241B0127E6AA05F7130E0114000000000000
        0000110C0012E7AA05F71C15001E000000000000000000000000000000000000
        0000000000000000000004030004E2AA0AF2241C0227E7AD0AF71C15011E0000
        0000000000000E0B000FE7AD0AF70C09010D0000000000000000000000000000
        000000000000000000000000000004030004E4AD10F2221B0325E1AB11F0231B
        032500000000000000000E0B010FE8B010F70000000000000000000000000000
        00000000000000000000000000000000000003030004E6B015F4281F042AA880
        0FB20000000000000000000000005B4508605642095B00000000000000000000
        0000000000000000000000000000000000000000000006040107DEAF1BED271E
        0529000000000000000000000000513F09555E4A0B6400000000000000000000
        000000000000000000000000000000000000000000000000000009070109DCAF
        1FEA2F260732000000000D0A020EE8B821F40202000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000806
        0108C19A20CBDBB124E7E2B425ED231D06260000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 16
      OnClick = BtnAnexosClick
    end
    object PnlFrameAnexos: TPanel [62]
      Left = 5615
      Top = 10000
      Width = 1847
      Height = 353
      Caption = 'Carregando...'
      Color = 16505534
      ParentBackground = False
      TabOrder = 117
      Visible = False
    end
    object edtVendaCodigo: TcxDBTextEdit [63]
      Left = -19
      Top = 60
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'CODIGO'
      DataBinding.DataSource = DS
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 5
      Height = 21
      Width = 47
    end
    object edtAgenciaÎPessoas: TcxDBButtonEdit [64]
      Tag = 38
      Left = 9963
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'PESSOA_AGENCIA_SEQUENCIA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Enabled = False
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 75
      Visible = False
      Height = 23
      Width = 71
    end
    object lblAgenciaÎPessoasÎRAZAOSOCIAL: TcxLabel [65]
      Left = 9963
      Top = 10000
      AutoSize = False
      ParentColor = False
      Style.Color = clBtnFace
      Style.HotTrack = False
      Visible = False
      Height = 23
      Width = 1433
    end
    object edtDtCompetencia: TcxDBDateEdit [66]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'DT_COMPETENCIA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 97
      Visible = False
      Height = 21
      Width = 101
    end
    object chkLote: TcxCheckBox [67]
      Left = 1027
      Top = 130
      Hint = 'Quantidade ou Devolu'#231#227'o'
      TabStop = False
      AutoSize = False
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      Properties.DisplayGrayed = 'False'
      Properties.ReadOnly = True
      Properties.ValueChecked = 'S'
      Properties.ValueGrayed = 'N'
      Properties.ValueUnchecked = 'N'
      ShowHint = True
      State = cbsGrayed
      Style.HotTrack = False
      TabOrder = 44
      Transparent = True
      OnClick = chkDevolucaoClick
      Height = 21
      Width = 32
    end
    object chkVenda_Atenticar: TcxDBCheckBox [68]
      Left = 9963
      Top = 10000
      Caption = 'Aut'#234'ntica'
      DataBinding.DataField = 'VENDA_ATENTICAR'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueGrayed = 'N'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 89
      Transparent = True
      Visible = False
    end
    object lblAutenticar: TcxDBLabel [69]
      Left = 9963
      Top = 10000
      AutoSize = True
      DataBinding.DataField = 'VENDA_ATENTICADA'
      DataBinding.DataSource = DS
      ParentColor = False
      Style.HotTrack = False
      Transparent = True
      Visible = False
    end
    object EdtEquipamento: TcxDBButtonEdit [70]
      Left = -16646
      Top = 10000
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'PLACA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.OnButtonClick = RxDBComboEdit4PropertiesButtonClick
      Properties.OnChange = RxDBComboEdit4PropertiesChange
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 133
      Visible = False
      OnKeyDown = EdtEquipamentoKeyDown
      Height = 21
      Width = 83
    end
    object EdtEquipamentoÎEquipamentoÎDESCRICAO: TcxDBTextEdit [71]
      Left = -16646
      Top = 10000
      Hint = 'F2 - Consulta'
      AutoSize = False
      DataBinding.DataField = 'EQUIPAMENTO_DESCRICAO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 134
      Visible = False
      OnKeyDown = EdtEquipamentoÎEquipamentoÎDESCRICAOKeyDown
      Height = 21
      Width = 703
    end
    object edtGradeQuantTotal: TcxCurrencyEdit [72]
      Left = -16646
      Top = 10000
      ParentFont = False
      Properties.DecimalPlaces = 6
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Style.Color = cl3DLight
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 135
      Visible = False
      Width = 74
    end
    object DBEdit10: TcxDBTextEdit [73]
      Left = -16646
      Top = 10000
      Hint = 'F2 - Consulta'
      AutoSize = False
      DataBinding.DataField = 'EQUIPAMENTO_NUMERO_SERIE'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 136
      Visible = False
      Height = 21
      Width = 74
    end
    object DBEdit80: TcxDBTextEdit [74]
      Left = -16646
      Top = 10000
      Hint = 'F2 - Consulta'
      AutoSize = False
      DataBinding.DataField = 'EQUIPAMENTO_NUMERO_NF'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 137
      Visible = False
      Height = 21
      Width = 46
    end
    object cxDBDateEdit1: TcxDBDateEdit [75]
      Left = -16646
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'EQUIPAMENTO_DT_COMPRA'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 138
      Visible = False
      Height = 21
      Width = 84
    end
    object DBEdit81: TcxDBTextEdit [76]
      Left = -16646
      Top = 10000
      Hint = 'F2 - Consulta'
      AutoSize = False
      DataBinding.DataField = 'EQUIPAMENTO_DEFEITO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 139
      Visible = False
      Height = 21
      Width = 719
    end
    object EdtTituloServico: TcxDBTextEdit [77]
      Left = -16646
      Top = 10000
      Hint = 'F2 - Consulta'
      AutoSize = False
      DataBinding.DataField = 'TITULO_VENDA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 142
      Visible = False
      Height = 21
      Width = 926
    end
    object EdtProjetoÎProjeto: TcxDBButtonEdit [78]
      Left = -16646
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'CODPROJETO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 144
      Visible = False
      Height = 21
      Width = 83
    end
    object edtProdutoDescricao: TcxDBTextEdit [79]
      Left = 135
      Top = 130
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = DSPmPrincipal
      Style.HotTrack = False
      TabOrder = 30
      Width = 20
    end
    object edtUnidade: TcxDBTextEdit [80]
      Left = 182
      Top = 130
      DataBinding.DataField = 'UNIDADE'
      DataBinding.DataSource = DSPmPrincipal
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 32
      Width = 33
    end
    object edtQTDADePeca: TcxDBCurrencyEdit [81]
      Left = 395
      Top = 130
      DataBinding.DataField = 'QTDADEPECA'
      DataBinding.DataSource = DSPmPrincipal
      Properties.DecimalPlaces = 8
      Properties.OnEditValueChanged = edtQTDADePecaPropertiesEditValueChanged
      Properties.OnValidate = edtQTDADePecaPropertiesValidate
      Style.HotTrack = False
      TabOrder = 35
      Width = 59
    end
    object edtComp: TcxDBCurrencyEdit [82]
      Left = 455
      Top = 130
      DataBinding.DataField = 'COMP'
      DataBinding.DataSource = DSPmPrincipal
      Properties.DecimalPlaces = 8
      Properties.OnValidate = edtCompPropertiesValidate
      Style.HotTrack = False
      TabOrder = 36
      Width = 64
    end
    object edtLarg: TcxDBCurrencyEdit [83]
      Left = 520
      Top = 130
      DataBinding.DataField = 'LARG'
      DataBinding.DataSource = DSPmPrincipal
      Properties.DecimalPlaces = 8
      Properties.OnValidate = edtLargPropertiesValidate
      Style.HotTrack = False
      TabOrder = 37
      Width = 51
    end
    object edtEspessura: TcxDBCurrencyEdit [84]
      Left = 572
      Top = 130
      DataBinding.DataField = 'ESPESSURA'
      DataBinding.DataSource = DSPmPrincipal
      Properties.DecimalPlaces = 8
      Properties.OnValidate = edtEspessuraPropertiesValidate
      Style.HotTrack = False
      TabOrder = 38
      Width = 64
    end
    object edtQuant: TcxDBCurrencyEdit [85]
      Left = 637
      Top = 130
      Hint = 'F12 - Calcular quantidade por valor'
      AutoSize = False
      DataBinding.DataField = 'QUANT'
      DataBinding.DataSource = DSPmPrincipal
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 39
      Height = 21
      Width = 54
    end
    object edtValor: TcxDBCurrencyEdit [86]
      Left = 1634
      Top = 130
      AutoSize = False
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DSPmPrincipal
      Properties.DecimalPlaces = 8
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnEditValueChanged = edtValorPropertiesEditValueChanged
      Properties.OnValidate = edtValorPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 52
      Height = 21
      Width = 56
    end
    object edtTotal: TcxDBCurrencyEdit [87]
      Left = 1691
      Top = 130
      AutoSize = False
      DataBinding.DataField = 'TOTAL'
      DataBinding.DataSource = DSPmPrincipal
      Properties.DecimalPlaces = 8
      Properties.OnEditValueChanged = edtTotalPropertiesEditValueChanged
      Properties.OnValidate = edtTotalPropertiesValidate
      Style.HotTrack = False
      TabOrder = 53
      Height = 21
      Width = 56
    end
    object edtObservacao_Produto: TcxDBMemo [88]
      Left = -9
      Top = 166
      DataBinding.DataField = 'OBSERVACAO_PRODUTO'
      DataBinding.DataSource = DSPmPrincipal
      ParentFont = False
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.Color = clMenu
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 57
      Height = 89
      Width = 1847
    end
    object edtPath: TcxDBButtonEdit [89]
      Left = -16646
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'PATH'
      DataBinding.DataSource = DSPmPrincipal
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtPathPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 145
      Visible = False
      Height = 21
      Width = 121
    end
    object edtObs_Producao: TcxDBMemo [90]
      Left = 3
      Top = 290
      DataBinding.DataField = 'OBS_PRODUCAO'
      DataBinding.DataSource = DSPmPrincipal
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 58
      Height = 57
      Width = 1344
    end
    object edtLocalÎLocal: TcxDBButtonEdit [91]
      Left = 1358
      Top = 290
      AutoSize = False
      DataBinding.DataField = 'CODLOCAL'
      DataBinding.DataSource = DSPmPrincipal
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 59
      Height = 21
      Width = 53
    end
    object edtLocalÎLocalÎDESCRICAO: TcxDBTextEdit [92]
      Left = 1412
      Top = 290
      AutoSize = False
      DataBinding.DataField = 'LOCAL'
      DataBinding.DataSource = DSPmPrincipal
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 60
      Height = 21
      Width = 258
    end
    object edtCodTipo_ImpressaoÎTipo_Impressao: TcxDBButtonEdit [93]
      Left = 1358
      Top = 326
      Hint = 'F2 - Consulta/ F3 - Cadastro'
      DataBinding.DataField = 'CODTIPO_IMPRESSAO'
      DataBinding.DataSource = DSPmPrincipal
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 62
      Width = 53
    end
    object edtCodTipo_ImpressaoÎTipo_ImpressaoÎDESCRICAO: TcxDBTextEdit [94]
      Left = 1412
      Top = 326
      DataBinding.DataField = 'TIPO_IMPRESSAO'
      DataBinding.DataSource = DSPmPrincipal
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 63
      Width = 260
    end
    object edtCALENDARIO_DT_PREVISAO_FIM: TcxDBDateEdit [95]
      Left = 1671
      Top = 290
      Hint = 'Informe aqui a data Limite para entrega ou t'#233'rmino da produ'#231#227'o'
      AutoSize = False
      DataBinding.DataField = 'CALENDARIO_DT_PREVISAO_FIM'
      DataBinding.DataSource = DSPmPrincipal
      ParentShowHint = False
      Properties.Kind = ckDateTime
      Properties.OnChange = EdtPrevisaoEntregaPropertiesChange
      Properties.OnValidate = EdtPrevisaoEntregaPropertiesValidate
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 61
      Height = 21
      Width = 147
    end
    object chkDevolucao: TcxDBCheckBox [96]
      Left = 994
      Top = 130
      Hint = 'Quantidade ou Devolu'#231#227'o'
      TabStop = False
      DataBinding.DataField = 'Devolucao'
      DataBinding.DataSource = DSPmPrincipal
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      ShowHint = True
      TabOrder = 43
      Transparent = True
      OnClick = chkDevolucaoClick
    end
    object chkComissao_Agencia_Cobrar: TcxDBCheckBox [97]
      Left = 9963
      Top = 10000
      Caption = 'Cobrar do Cliente'
      DataBinding.DataField = 'COMISSAO_AGENCIA_COBRAR'
      DataBinding.DataSource = DS
      Properties.Alignment = taLeftJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = chkComissao_Agencia_CobrarPropertiesChange
      Style.HotTrack = False
      TabOrder = 78
      Transparent = True
      Visible = False
      OnClick = chkComissao_Agencia_CobrarClick
    end
    object chkComissao_Funcionario_Cobrar: TcxDBCheckBox [98]
      Left = 9963
      Top = 10000
      Caption = 'Cobrar do Cliente'
      DataBinding.DataField = 'COMISSAO_FUNCIONARIO_COBRAR'
      DataBinding.DataSource = DS
      Properties.Alignment = taLeftJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = chkComissao_Funcionario_CobrarPropertiesChange
      Style.HotTrack = False
      TabOrder = 83
      Transparent = True
      Visible = False
      OnClick = chkComissao_Funcionario_CobrarClick
    end
    object chkComissao_Representante_Cobrar: TcxDBCheckBox [99]
      Left = 9963
      Top = 10000
      Caption = 'Cobrar do Cliente'
      DataBinding.DataField = 'COMISSAO_REPRESENTANTE_COBRAR'
      DataBinding.DataSource = DS
      Properties.Alignment = taLeftJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = chkComissao_Representante_CobrarPropertiesChange
      Style.HotTrack = False
      TabOrder = 88
      Transparent = True
      Visible = False
      OnClick = chkComissao_Representante_CobrarClick
    end
    object edtAtendenteÎPessoasÎCOMISSAO: TcxDBCurrencyEdit [100]
      Left = 9963
      Top = 10000
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'COMISSAO'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtAtendenteÎPessoasÎCOMISSAOPropertiesValidate
      Style.HotTrack = False
      TabOrder = 82
      Visible = False
      Height = 21
      Width = 54
    end
    object edtRepresentanteÎPessoasÎCOMISSAO: TcxDBCurrencyEdit [101]
      Left = 9963
      Top = 10000
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'COMISSAO_REPRESENTANTE'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtRepresentanteÎPessoasÎCOMISSAOPropertiesValidate
      Style.HotTrack = False
      TabOrder = 87
      Visible = False
      Height = 21
      Width = 54
    end
    object edtAgenciaÎPessoasÎCOMISSAO: TcxDBCurrencyEdit [102]
      Left = 9963
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'COMISSAO_AGENCIA'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtAgenciaÎPessoasÎCOMISSAOPropertiesValidate
      Style.HotTrack = False
      TabOrder = 77
      Visible = False
      Height = 21
      Width = 54
    end
    object edtCalc_PDesc_Manual: TcxDBCurrencyEdit [103]
      Left = 1500
      Top = 130
      AutoSize = False
      DataBinding.DataField = 'CALC_PDESC_MANUAL'
      DataBinding.DataSource = DSPmPrincipal
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = False
      Properties.OnValidate = edtCalc_PDesc_ManualPropertiesValidate
      Style.HotTrack = False
      TabOrder = 50
      Height = 21
      Width = 70
    end
    object btnTabelaPreco: TcxButton [104]
      Left = 1826
      Top = 59
      Width = 22
      Height = 22
      Hint = 'Possui Tabela de pre'#231'o especial. Clique para visualizar.'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000040744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E536574526174696E67343B436F6E646974696F6E616C466F
        726D617474696E673BD97136570000020049444154785E85913F6B544114C5CF
        9BDD88160A0A898D8860238888680C3671593B7B0B7B91D858A929EC2D247E00
        21A2A56821960AFB4C1A2541D0460B1B21B09A7F9A6511943773EE953B333B2C
        44709A3B97CB39E73777AA17AF3E41154005D845D305D05CA1504DB72B974F55
        F79E7EAC9DAB3AA42CDDBD7AE6529BA2181C3A0C453AC94B41C1BF8E5345E7C4
        C9A3585AFEDCB1D83629909C52E5D071EDDC852937E2B31A28F83E6CC09CE044
        04A259288068329BDC3F11C5F38F567BF38FDF87DB8B2B3D2308649C330822C1
        87AD06383859128FB536D32E3232453B3333C7B1F2EE8B213B138AA010B44D74
        E44012DF3C5D5519D78D9069C8833FF039310446CAC0D43B28C68F9B5BA8EB1B
        0F96FDF5859E21B7422320156C1805666406F90970BBB68CEAE274F72C54DD45
        EB431050B510D05B0F1849DCC1FD6BE75BD94812B2626DE02109D1F9409040F0
        2C4FA04859A2BBF5F06D7D6771B5B16AC8A40D15CC6F34611081CF89561977C0
        84BCB3F37B76EADC34B6B77FCDDA522DD98B82A251B08B20FF4221F03EE0EB4F
        C0373951B24118235081098B81164238DF04D8CC8C4C204C4391244877336431
        B4917044D0100CC5200A6926C92026932511144D86D4D8B7073BC37AF8F25957
        E86B0061A3BF516FADBFEE32F57EF3DB7ABDF5FCC7D8BC5FAF3DE977C9E60D80
        883501602F803D005AB1FEBFDF976BF51783279F03C5ACD9A20000000049454E
        44AE426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      WordWrap = True
      OnClick = btnTabelaPrecoClick
    end
    object cbxCalc_Tipo_Desconto: TcxDBComboBox [105]
      Left = 1199
      Top = 130
      AutoSize = False
      DataBinding.DataField = 'CALC_TIPO_DESCONTO'
      DataBinding.DataSource = DSPmPrincipal
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 46
      Height = 21
      Width = 100
    end
    object btnProdutoTabelaPreco: TcxButton [106]
      Left = 1300
      Top = 129
      Width = 22
      Height = 22
      Hint = 'Tabela de Pre'#231'o. Clique para visualizar.'
      Enabled = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000040744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E536574526174696E67343B436F6E646974696F6E616C466F
        726D617474696E673BD97136570000020049444154785E85913F6B544114C5CF
        9BDD88160A0A898D8860238888680C3671593B7B0B7B91D858A929EC2D247E00
        21A2A56821960AFB4C1A2541D0460B1B21B09A7F9A6511943773EE953B333B2C
        44709A3B97CB39E73777AA17AF3E41154005D845D305D05CA1504DB72B974F55
        F79E7EAC9DAB3AA42CDDBD7AE6529BA2181C3A0C453AC94B41C1BF8E5345E7C4
        C9A3585AFEDCB1D83629909C52E5D071EDDC852937E2B31A28F83E6CC09CE044
        04A259288068329BDC3F11C5F38F567BF38FDF87DB8B2B3D2308649C330822C1
        87AD06383859128FB536D32E3232453B3333C7B1F2EE8B213B138AA010B44D74
        E44012DF3C5D5519D78D9069C8833FF039310446CAC0D43B28C68F9B5BA8EB1B
        0F96FDF5859E21B7422320156C1805666406F90970BBB68CEAE274F72C54DD45
        EB431050B510D05B0F1849DCC1FD6BE75BD94812B2626DE02109D1F9409040F0
        2C4FA04859A2BBF5F06D7D6771B5B16AC8A40D15CC6F34611081CF89561977C0
        84BCB3F37B76EADC34B6B77FCDDA522DD98B82A251B08B20FF4221F03EE0EB4F
        C0373951B24118235081098B81164238DF04D8CC8C4C204C4391244877336431
        B4917044D0100CC5200A6926C92026932511144D86D4D8B7073BC37AF8F25957
        E86B0061A3BF516FADBFEE32F57EF3DB7ABDF5FCC7D8BC5FAF3DE977C9E60D80
        883501602F803D005AB1FEBFDF976BF51783279F03C5ACD9A20000000049454E
        44AE426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 47
      WordWrap = True
      OnClick = btnProdutoTabelaPrecoClick
    end
    object btnConfigCamposProduto: TcxButton [107]
      Left = 1816
      Top = 118
      Width = 22
      Height = 33
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000F744558745469746C650053657474696E67733B0E6B2757000000D3
        49444154785EA5D0B18AC2401485E1F1B16211B7748BD9560C5849DE63F129B6
        B252B452B10A46F4B9B26C72FD8B1391214E942DBE0C17720E97EBCCEC2D5F8B
        C2E33EBF1BFC86E9F570CEF3E9A382365CB4252F17686D85995502FF2C94E117
        7315BCB4C11807A428613823C14A81E80DD60AD57A2D988FDAC4EB850A64A870
        8325267A1BF9080F8B7BC14CEB1A7EE05A9A0D05A65D0503540A433F896693EA
        D906194E3D1B5C917716C82872831A43B858C10EA680C9E3BCE92B18638B0417
        854AA4D8E3335610CAF1171EB4B380CFBFDC00878E26CDBB1558410000000049
        454E44AE426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 56
      WordWrap = True
      OnClick = btnConfigCamposProdutoClick
    end
    object GridProdutoTree: TcxDBTreeList [108]
      Left = -9
      Top = 360
      Width = 1847
      Height = 109
      Bands = <
        item
        end>
      DataController.DataSource = DSVenda_Produto
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'CODIGO'
      DragMode = dmAutomatic
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.DragDropText = True
      OptionsCustomizing.BandsQuickCustomization = True
      OptionsCustomizing.ColumnFiltering = bFalse
      OptionsCustomizing.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsView.DropNodeIndicator = True
      OptionsView.GridLines = tlglBoth
      OptionsView.TreeLineColor = clMoneyGreen
      PopupMenu = PopupMenu_Produto
      RootValue = -1
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 65
      OnClick = GridProdutoTreeClick
      OnCustomDrawDataCell = GridProdutoTreeCustomDrawDataCell
      OnCustomDrawIndentCell = GridProdutoTreeCustomDrawIndentCell
      OnDblClick = GridProdutoTreeDblClick
      OnDragOver = GridProdutoTreeDragOver
      OnEditing = GridProdutoTreeEditing
      OnEndDrag = GridProdutoTreeEndDrag
      OnExpanded = GridProdutoTreeExpanded
      OnExpanding = GridProdutoTreeExpanding
      OnMoveTo = GridProdutoTreeMoveTo
      OnStartDrag = GridProdutoTreeStartDrag
      object GridProdutoTreeTEM_COMPOSICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = FrmPrincipal.ImgProduto
        Properties.Items = <
          item
            Description = 'Possui Composi'#231#227'o'
            ImageIndex = 2
            Value = 'S'
          end>
        Properties.ReadOnly = True
        Caption.AlignVert = vaTop
        Caption.Text = 'Composi'#231#227'o'
        DataBinding.FieldName = 'TEM_COMPOSICAO'
        Width = 20
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeORDEM: TcxDBTreeListColumn
        Caption.Text = 'Ordem'
        DataBinding.FieldName = 'ORDEM'
        Options.Editing = False
        Width = 20
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        SortOrder = soAscending
        SortIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODIGO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Caption.AlignVert = vaTop
        Caption.Text = 'C'#243'digo'
        DataBinding.FieldName = 'CODIGO'
        Width = 49
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODPRODUTO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = GridComposicaoTreeCODPRODUTOPropertiesButtonClick
        Caption.AlignVert = vaTop
        Caption.Text = 'C'#243'd. Produto'
        DataBinding.FieldName = 'CODPRODUTO'
        Width = 87
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeDESCRICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Caption.AlignVert = vaTop
        Caption.Text = 'Produto/Servi'#231'o'
        DataBinding.FieldName = 'DESCRICAO'
        Options.ShowEditButtons = eisbAlways
        Width = 265
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeUNIDADE: TcxDBTreeListColumn
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.ReadOnly = True
        Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
        Caption.Text = 'Unidade'
        DataBinding.FieldName = 'UNIDADE'
        Width = 50
        Position.ColIndex = 10
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeQTDADEPECA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
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
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = GridProdutoTreeQTDADEPECAPropertiesButtonClick
        Properties.OnValidate = GridComposicaoTreeQTDADEPECAPropertiesValidate
        Caption.AlignVert = vaTop
        Caption.Text = 'Qtd. Pe'#231'as'
        DataBinding.FieldName = 'QTDADEPECA'
        Width = 60
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCOMP: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
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
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = GridProdutoTreeQTDADEPECAPropertiesButtonClick
        Properties.OnValidate = GridProdutoTreeCOMPPropertiesValidate
        Caption.AlignVert = vaTop
        Caption.Text = 'Comp'
        DataBinding.FieldName = 'COMP'
        Width = 45
        Position.ColIndex = 7
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeLARG: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
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
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = GridProdutoTreeQTDADEPECAPropertiesButtonClick
        Properties.OnValidate = GridProdutoTreeLARGPropertiesValidate
        Caption.AlignVert = vaTop
        Caption.Text = 'Largura'
        DataBinding.FieldName = 'LARG'
        Width = 45
        Position.ColIndex = 8
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeESPESSURA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
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
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = GridProdutoTreeQTDADEPECAPropertiesButtonClick
        Properties.OnValidate = GridProdutoTreeESPESSURAPropertiesValidate
        Caption.AlignVert = vaTop
        Caption.Text = 'Esp.'
        DataBinding.FieldName = 'ESPESSURA'
        Width = 45
        Position.ColIndex = 9
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCUSTO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Visible = False
        Caption.AlignVert = vaTop
        Caption.Text = 'R$ Custo'
        DataBinding.FieldName = 'CUSTO'
        Width = 77
        Position.ColIndex = 11
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeFORMULA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'A CADA'
          'BARRAS'
          'PER'#205'METRO'
          'PERSONALIZADA'
          'PROPORCIONAL'
          'SEM F'#211'RMULA'
          'IGUAL'
          'ILH'#211'S'
          'IGUAL LARGURA'
          'AREA QUADRADA')
        Properties.OnValidate = GridProdutoTreeFORMULAPropertiesValidate
        Caption.Text = 'F'#243'rmula'
        DataBinding.FieldName = 'FORMULA'
        Width = 100
        Position.ColIndex = 12
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeQUANT: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.AssignedValues.DisplayFormat = True
        Properties.ReadOnly = True
        Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
        Properties.OnChange = GridProdutoTreeQUANTPropertiesChange
        Styles.Content = FrmPrincipal.cxStyle3
        Caption.AlignHorz = taRightJustify
        Caption.AlignVert = vaTop
        Caption.Text = 'Quant'
        DataBinding.FieldName = 'QUANT'
        Width = 50
        Position.ColIndex = 13
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
        OnValidateDrawValue = GridProdutoTreeQUANTValidateDrawValue
      end
      object GridProdutoTreeVALOR: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
        Properties.OnValidate = GridProdutoTreeVALORPropertiesValidate
        Caption.AlignHorz = taRightJustify
        Caption.AlignVert = vaTop
        Caption.Text = 'R$ Valor'
        DataBinding.FieldName = 'VALOR'
        Width = 73
        Position.ColIndex = 14
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
        OnValidateDrawValue = GridProdutoTreeVALORValidateDrawValue
      end
      object GridProdutoTreeTOTAL: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ValidationOptions = [evoShowErrorIcon]
        Properties.OnValidate = GridProdutoTreeTOTALPropertiesValidate
        Styles.Content = FrmPrincipal.cxStyle3
        Caption.AlignHorz = taRightJustify
        Caption.AlignVert = vaTop
        Caption.Text = 'R$ Total'
        DataBinding.FieldName = 'TOTAL'
        Width = 77
        Position.ColIndex = 17
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <
          item
            AlignHorz = taRightJustify
            Kind = skSum
            AlignHorzAssigned = True
          end>
        Summary.GroupFooterSummaryItems = <>
        OnValidateDrawValue = GridProdutoTreeTOTALValidateDrawValue
      end
      object GridProdutoTreeVDESC: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Caption.Text = 'R$ Desconto'
        DataBinding.FieldName = 'VDESC'
        Width = 72
        Position.ColIndex = 15
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeVOUTRO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Caption.Text = 'R$ Outros'
        DataBinding.FieldName = 'VOUTRO'
        Width = 71
        Position.ColIndex = 16
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreePRODUTO_TIPO: TcxDBTreeListColumn
        Caption.Text = 'Tipo de Produto'
        DataBinding.FieldName = 'PRODUTO_TIPO'
        Width = 100
        Position.ColIndex = 18
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreePATH: TcxDBTreeListColumn
        Caption.Text = 'Caminho do Arquivo'
        DataBinding.FieldName = 'PATH'
        Width = 100
        Position.ColIndex = 25
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreePRODUCAO_PROTOCOLO: TcxDBTreeListColumn
        Caption.Text = 'Protocolo da Produ'#231#227'o'
        DataBinding.FieldName = 'PROTOCOLO'
        Options.Editing = False
        Width = 121
        Position.ColIndex = 32
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeOBS_PRODUCAO: TcxDBTreeListColumn
        Caption.Text = 'Observa'#231#227'o Produ'#231#227'o'
        DataBinding.FieldName = 'OBS_PRODUCAO'
        Width = 128
        Position.ColIndex = 31
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeEM_PRODUCAO: TcxDBTreeListColumn
        Caption.Text = 'Em Produ'#231#227'o'
        DataBinding.FieldName = 'EM_PRODUCAO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 24
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODLOCAL: TcxDBTreeListColumn
        Caption.Text = 'C'#243'd. Local'
        DataBinding.FieldName = 'CODLOCAL'
        Width = 100
        Position.ColIndex = 29
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeLOCAL: TcxDBTreeListColumn
        Caption.Text = 'Local de Aplica'#231#227'o'
        DataBinding.FieldName = 'LOCAL'
        Width = 100
        Position.ColIndex = 30
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODTIPO_IMPRESSAO: TcxDBTreeListColumn
        Caption.Text = 'C'#243'd. Tipo de Impress'#227'o'
        DataBinding.FieldName = 'CODTIPO_IMPRESSAO'
        Width = 100
        Position.ColIndex = 26
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODACABAMENTO: TcxDBTreeListColumn
        Caption.Text = 'C'#243'd. Acabamento'
        DataBinding.FieldName = 'CODACABAMENTO'
        Width = 100
        Position.ColIndex = 27
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeACABAMENTO: TcxDBTreeListColumn
        Caption.Text = 'Acabamento'
        DataBinding.FieldName = 'ACABAMENTO'
        Width = 100
        Position.ColIndex = 28
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODPRODUCAO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'C'#243'd. Produ'#231#227'o'
        DataBinding.FieldName = 'CODPRODUCAO'
        Width = 100
        Position.ColIndex = 33
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeVALOR_VENDA_MINIMO: TcxDBTreeListColumn
        Caption.Text = 'Valor M'#237'nimo'
        DataBinding.FieldName = 'VALOR_VENDA_MINIMO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 87
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreePODE_FATURAR: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Caption.Text = 'Pode Faturar'
        DataBinding.FieldName = 'PODE_FATURAR'
        Options.Editing = False
        Width = 77
        Position.ColIndex = 39
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCALENDARIO_DT_PREVISAO_FIM: TcxDBTreeListColumn
        PropertiesClassName = 'TcxDateEditProperties'
        Caption.Text = 'Previs'#227'o de Entrega'
        DataBinding.FieldName = 'CALENDARIO_DT_PREVISAO_FIM'
        Width = 117
        Position.ColIndex = 23
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCALC_QPESO_BRUTO: TcxDBTreeListColumn
        Caption.Text = 'Peso Bruto'
        DataBinding.FieldName = 'CALC_QPESO_BRUTO'
        Width = 41
        Position.ColIndex = 36
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCALC_QPESO_LIQUIDO: TcxDBTreeListColumn
        Caption.AlignVert = vaTop
        Caption.Text = 'Peso L'#237'quido'
        DataBinding.FieldName = 'CALC_QPESO_LIQUIDO'
        Width = 44
        Position.ColIndex = 34
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCALC_QPESO_BRUTO_TOTAL: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Caption.Text = 'Peso Bruto Total'
        DataBinding.FieldName = 'CALC_QPESO_BRUTO_TOTAL'
        Width = 46
        Position.ColIndex = 37
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCALC_QPESO_LIQUIDO_TOTAL: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Caption.Text = 'Peso L'#237'quido Total'
        DataBinding.FieldName = 'CALC_QPESO_LIQUIDO_TOTAL'
        Width = 46
        Position.ColIndex = 35
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeSequencia: TcxDBTreeListColumn
        Caption.AlignVert = vaTop
        Caption.Text = 'Sequ'#234'ncia'
        DataBinding.FieldName = 'Sequencia'
        Options.Editing = False
        Width = 49
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        SortOrder = soAscending
        SortIndex = 1
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCodTabela: TcxDBTreeListColumn
        Visible = False
        Caption.AlignVert = vaTop
        Caption.Text = 'C'#243'd. Tabela de Pre'#231'o'
        DataBinding.FieldName = 'CodTabela'
        Width = 74
        Position.ColIndex = 40
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCustoPorPeca: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '##,###,##0.00;- ##,###,##0.00'
        Visible = False
        Caption.AlignVert = vaTop
        Caption.Text = 'R$ Custo por Pe'#231'a'
        DataBinding.FieldName = 'CustoPorPeca'
        Width = 100
        Position.ColIndex = 41
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreePARENT: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Cod. Parent (Pai)'
        DataBinding.FieldName = 'PARENT'
        Options.Editing = False
        Width = 68
        Position.ColIndex = 38
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeDESCRICAO_NFE: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Descri'#231#227'o na Nota Fiscal'
        DataBinding.FieldName = 'DESCRICAO_NFE'
        Width = 168
        Position.ColIndex = 42
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeTOTAL_RELATORIO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'R$ Total Relat'#243'rio'
        DataBinding.FieldName = 'TOTAL_RELATORIO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 43
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeVALOR_RELATORIO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'R$ Valor Relat'#243'rio'
        DataBinding.FieldName = 'VALOR_RELATORIO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 44
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODIGOEAN: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'C'#243'd. EAN'
        DataBinding.FieldName = 'CODIGOEAN'
        Width = 100
        Position.ColIndex = 45
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeFATURADO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Faturado'
        DataBinding.FieldName = 'FATURADO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 46
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeMEDIDAS: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Medidas'
        DataBinding.FieldName = 'MEDIDAS'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 47
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeRATEIO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Ratear'
        DataBinding.FieldName = 'RATEIO'
        Width = 39
        Position.ColIndex = 48
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeSERIAL: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Serial'
        DataBinding.FieldName = 'SERIAL'
        Width = 100
        Position.ColIndex = 49
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODNF_CST: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Caption.Text = 'CST'
        DataBinding.FieldName = 'CODNF_CST'
        Width = 40
        Position.ColIndex = 19
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODNF_CFOP: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Caption.Text = 'CFOP'
        DataBinding.FieldName = 'CODNF_CFOP'
        Width = 52
        Position.ColIndex = 20
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODNF_NCM: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Caption.Text = 'NCM'
        DataBinding.FieldName = 'CODNF_NCM'
        Width = 64
        Position.ColIndex = 21
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODNF_CEST: TcxDBTreeListColumn
        Caption.Text = 'CEST'
        DataBinding.FieldName = 'CODNF_CEST'
        Width = 37
        Position.ColIndex = 22
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODFABRICA: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'C'#243'd. F'#225'brica'
        DataBinding.FieldName = 'CODFABRICA'
        Width = 100
        Position.ColIndex = 50
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODPRODUTO_LOTE: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Lote'
        DataBinding.FieldName = 'CODPRODUTO_LOTE'
        Width = 100
        Position.ColIndex = 51
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODPRODUTO_MARCA: TcxDBTreeListColumn
        Caption.Text = 'C'#243'd. Produto Marca'
        DataBinding.FieldName = 'CODPRODUTO_MARCA'
        Width = 100
        Position.ColIndex = 91
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODPRODUTO_GRUPO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'C'#243'd Grupo Produto'
        DataBinding.FieldName = 'CODPRODUTO_GRUPO'
        Width = 100
        Position.ColIndex = 52
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODVENDA_FATURADO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'C'#243'd. Venda Faturado'
        DataBinding.FieldName = 'CODVENDA_FATURADO'
        Width = 100
        Position.ColIndex = 53
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODVENDA_ORIGINAL: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'C'#243'd. Venda Original'
        DataBinding.FieldName = 'CODVENDA_ORIGINAL'
        Width = 100
        Position.ColIndex = 54
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODVENDA_PRODUTO_ORIGINAL: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'C'#243'd. Venda Produto Original'
        DataBinding.FieldName = 'CODVENDA_PRODUTO_ORIGINAL'
        Width = 100
        Position.ColIndex = 56
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VBC: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vBC'
        DataBinding.FieldName = 'NF_VBC'
        Width = 79
        Position.ColIndex = 57
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VBCST: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vBC ST'
        DataBinding.FieldName = 'NF_VBCST'
        Width = 75
        Position.ColIndex = 58
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VICMSST: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vICMS ST'
        DataBinding.FieldName = 'NF_VICMSST'
        Width = 100
        Position.ColIndex = 60
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VICMS: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vICMS'
        DataBinding.FieldName = 'NF_VICMS'
        Width = 100
        Position.ColIndex = 59
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_IPI_VIPI: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vIPI'
        DataBinding.FieldName = 'NF_IPI_VIPI'
        Width = 100
        Position.ColIndex = 61
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_PCREDSN: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf.  pCRED SN'
        DataBinding.FieldName = 'NF_PCREDSN'
        Width = 100
        Position.ColIndex = 63
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VCREDICMSSN: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vCRED ICMS SN'
        DataBinding.FieldName = 'NF_VCREDICMSSN'
        Width = 100
        Position.ColIndex = 62
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_COFINS_VCOFINS: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vCOFINS'
        DataBinding.FieldName = 'NF_COFINS_VCOFINS'
        Width = 100
        Position.ColIndex = 67
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_PIS_VPIS: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf.  vPIS'
        DataBinding.FieldName = 'NF_PIS_VPIS'
        Width = 100
        Position.ColIndex = 64
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_II_VII: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf.  vII'
        DataBinding.FieldName = 'NF_II_VII'
        Width = 100
        Position.ColIndex = 65
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VFRETE: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vFrete'
        DataBinding.FieldName = 'NF_VFRETE'
        Width = 100
        Position.ColIndex = 66
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_PISST_VPIS: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vPIS ST'
        DataBinding.FieldName = 'NF_PISST_VPIS'
        Width = 100
        Position.ColIndex = 68
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_ISS_VISS: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vISS'
        DataBinding.FieldName = 'NF_ISS_VISS'
        Width = 100
        Position.ColIndex = 69
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_ISS_VBC: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. ISS vBC'
        DataBinding.FieldName = 'NF_ISS_VBC'
        Width = 100
        Position.ColIndex = 70
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_ISSQN_VISSQN: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vISSQN'
        DataBinding.FieldName = 'NF_ISSQN_VISSQN'
        Width = 100
        Position.ColIndex = 71
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_ISSQN_VBC: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. ISSQN vBC'
        DataBinding.FieldName = 'NF_ISSQN_VBC'
        Width = 100
        Position.ColIndex = 72
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_ISSQN_VISSRET: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. ISSQN vISS Ret'
        DataBinding.FieldName = 'NF_ISSQN_VISSRET'
        Width = 100
        Position.ColIndex = 73
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_DESPADUANEIRA: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. Despesa Aduaneira'
        DataBinding.FieldName = 'NF_DESPADUANEIRA'
        Width = 100
        Position.ColIndex = 74
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VALIQ_ESTADUAL: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vALIQ Estadual'
        DataBinding.FieldName = 'NF_VALIQ_ESTADUAL'
        Width = 100
        Position.ColIndex = 75
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VALIQ_IMPORTACAO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vALIQ Importa'#231#227'o'
        DataBinding.FieldName = 'NF_VALIQ_IMPORTACAO'
        Width = 100
        Position.ColIndex = 76
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VALIQ_MUNICIPAL: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vALIQ Municipal'
        DataBinding.FieldName = 'NF_VALIQ_MUNICIPAL'
        Width = 100
        Position.ColIndex = 77
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VALIQ_NACIONAL: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vALIQ Nacional'
        DataBinding.FieldName = 'NF_VALIQ_NACIONAL'
        Width = 100
        Position.ColIndex = 78
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VFCPUFDEST: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vFCP UF Dest'
        DataBinding.FieldName = 'NF_VFCPUFDEST'
        Width = 100
        Position.ColIndex = 79
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VICMSUFDEST: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vICMS UF Dest'
        DataBinding.FieldName = 'NF_VICMSUFDEST'
        Width = 100
        Position.ColIndex = 80
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeNF_VICMSUFREMET: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Nf. vICMS UF Remet'
        DataBinding.FieldName = 'NF_VICMSUFREMET'
        Width = 100
        Position.ColIndex = 81
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCOMP_FORMULA: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'F'#243'rmula Comp'
        DataBinding.FieldName = 'COMP_FORMULA'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 82
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeLARG_FORMULA: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'F'#243'rmula Larg'
        DataBinding.FieldName = 'LARG_FORMULA'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 83
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeESPESSURA_FORMULA: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'F'#243'rmula Espessura'
        DataBinding.FieldName = 'ESPESSURA_FORMULA'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 84
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeQTDADEPECA_FORMULA: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'F'#243'rmula Pe'#231'as'
        DataBinding.FieldName = 'QTDADEPECA_FORMULA'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 85
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeTEM_FORMULACORRETA: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'F'#243'rmula OK'
        DataBinding.FieldName = 'TEM_FORMULACORRETA'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 86
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCODCOR: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'C'#243'd. Cor'
        DataBinding.FieldName = 'CODCOR'
        Width = 100
        Position.ColIndex = 55
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCOR: TcxDBTreeListColumn
        Caption.Text = 'Cor'
        DataBinding.FieldName = 'COR'
        Width = 100
        Position.ColIndex = 90
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeTAMANHO: TcxDBTreeListColumn
        Caption.Text = 'Tamanho'
        DataBinding.FieldName = 'TAMANHO'
        Width = 100
        Position.ColIndex = 92
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreePRODUTO_ESTOQUE_LOCAL: TcxDBTreeListColumn
        Caption.Text = 'Local de Estoque'
        DataBinding.FieldName = 'PRODUTO_ESTOQUE_LOCAL'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 93
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeESTOQUE: TcxDBTreeListColumn
        Caption.AlignVert = vaTop
        Caption.Text = 'Estoque'
        DataBinding.FieldName = 'ESTOQUE'
        Width = 100
        Position.ColIndex = 89
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreecxDBTreeTEM_ESTOQUE_ABAIXO_MINIMO: TcxDBTreeListColumn
        Caption.Text = 'Estoque M'#237'nimo'
        DataBinding.FieldName = 'TEM_ESTOQUE_ABAIXO_MINIMO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 88
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeTEM_TRIBUTACAO_INCORRETA: TcxDBTreeListColumn
        Caption.Text = 'Tem Tributa'#231#227'o Incorreta'
        DataBinding.FieldName = 'TEM_TRIBUTACAO_INCORRETA'
        Width = 100
        Position.ColIndex = 94
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeFOLHAS: TcxDBTreeListColumn
        Caption.Text = 'Folhas'
        DataBinding.FieldName = 'FOLHAS'
        Width = 100
        Position.ColIndex = 95
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCALC_VALOR_ORIGINAL: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Visible = False
        Caption.Text = 'Valor Original'
        DataBinding.FieldName = 'CALC_VALOR_ORIGINAL'
        Options.Editing = False
        Position.ColIndex = 96
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeedtDT_APROVACAO_SAIDA_ETAPA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = []
        Caption.Text = 'Data Etapa'
        DataBinding.FieldName = 'DT_APROVACAO_SAIDA_ETAPA'
        Position.ColIndex = 97
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridProdutoTreeCONTATOS: TcxDBTreeListColumn
        DataBinding.FieldName = 'CONTATOS'
        Position.ColIndex = 98
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object edtQtdDias: TcxCurrencyEdit [109]
      Left = 9993
      Top = 10000
      Properties.DecimalPlaces = 0
      Style.HotTrack = False
      TabOrder = 94
      Visible = False
      Width = 112
    end
    object btnMudarPrazo: TcxButton [110]
      Left = 9993
      Top = 10000
      Width = 82
      Height = 25
      Caption = 'Mudar Prazo'
      TabOrder = 95
      Visible = False
      OnClick = btnMudarPrazoClick
    end
    object edtPessoa_Responsavel_Codigo: TcxDBTextEdit [111]
      Left = 1702
      Top = 60
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'PESSOA_RESPONSAVEL_CODIGO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.OnEditValueChanged = edtPessoa_Responsavel_CodigoPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 12
      Height = 21
      Width = 124
    end
    object chkVenda_Tipo_Pode_Ser_Produzido: TcxDBCheckBox [112]
      Left = -16646
      Top = 10000
      Caption = 'N'#227'o Pode Produzir'
      DataBinding.DataField = 'VENDA_TIPO_PODE_SER_PRODUZIDO'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = CkVendaTipoPodeSerProduzidoPropertiesChange
      Style.HotTrack = False
      TabOrder = 127
      Transparent = True
      Visible = False
    end
    object edtStatus: TcxDBTextEdit [113]
      Left = 1172
      Top = 494
      DataBinding.DataField = 'STATUS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnChange = EdtStatusPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 38557
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 121
    end
    object lbPlaca_Equipamento: TLabel [114]
      Left = 10000
      Top = 10000
      Width = 138
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
      Transparent = False
      Layout = tlCenter
      Visible = False
    end
    object cbxProduto_Estoque_Local: TcxDBLookupComboBox [115]
      Left = 1060
      Top = 130
      DataBinding.DataField = 'PRODUTO_ESTOQUE_LOCAL'
      DataBinding.DataSource = DSPmPrincipal
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 45
      Width = 138
    end
    object sprMotorCalculo: TdxSpreadSheet [116]
      Left = -16646
      Top = 10000
      Width = 1303
      Height = 467
      Visible = False
      OnEditValueChanged = sprMotorCalculoEditValueChanged
      Data = {
        8002000044585353763242461000000042465320000000000000000001000101
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
    object dxSpreadSheetFormulaBar1: TdxSpreadSheetFormulaBar [117]
      Left = -16646
      Top = 10000
      Width = 1303
      Height = 20
      SpreadSheet = sprMotorCalculo
      TabOrder = 118
      Visible = False
    end
    object btnMostrarSpr: TcxButton [118]
      Left = 156
      Top = 126
      Width = 25
      Height = 25
      Hint = 'Mostrar Planilha de C'#225'lculos'
      Enabled = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000012744558745469746C6500496E736572745461626C653B2E867FB800
        0001C149444154785EA553316B145110FEDEEE4B8282A062215A080A2268B4D2
        DAABCF4A62A560E92F506CADB4132B2B3BB148E02AB1118E748A360997D80BA7
        494462938B72D999716676F67155401C989DFDBEFD66DECC3C368908FEC752F1
        43EC90EF92EEBFF83464A0C7AC4818CCA2513C9246319E190AC11AC5A2F3A291
        57B3E2DEBD5B9700520270C1C7D116AE5F39DD26A34DF8B0F61D3716CF808C11
        71FED5F2FACDCC8659F065FB3794F602E31F131CDBDA07BBB6E3F6707C67520E
        397FEA88BD215B753221FCE1C6E1C19A45EB21E9C650CFF6E5F3681BE39F1388
        CFDD666F6E7C2BBBB068361A8D4DEE78E7E4518FF9623DC5C3FE054CA704A4E4
        D557DE6D62A9BF0844A2F12B6F3770A77FD9A1B1737585672F775135149B2F6D
        0AC8B0B9B71C1C491903C113112A6A2844EA91C10D6B885BE1989968B6A05F2D
        A92E3D7AFA5ECE9D3D0176659A595CF21903141E41D9B45FC7BF901B12DCBD7D
        15D303F67CCB793358772ED6EFEAD78335E5AE95437255E1C9F321AAB63571E7
        AE5DE1168BC1143B302ECDEEC6B94C41CCE5AAB468A25A710A61D75A5DC53B10
        0732D283C783619DE77B0289843276C1C5C45545D11CFC5935B4A09E4DFFAF7F
        A2D5F80B78A36F0152EFC4E70000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 31
      OnClick = btnMostrarSprClick
    end
    object cbxEstagio: TcxDBComboBox [119]
      Left = 1567
      Top = 24
      AutoSize = False
      DataBinding.DataField = 'VENDA_ESTAGIO'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Style.Color = clMoneyGreen
      Style.HotTrack = False
      TabOrder = 3
      Height = 21
      Width = 140
    end
    object pnlPessoas: TPanel [120]
      Left = 7061
      Top = 10000
      Width = 1847
      Height = 353
      BevelOuter = bvNone
      Caption = 'Carregando...'
      Color = 16505534
      ParentBackground = False
      TabOrder = 91
      Visible = False
    end
    object edtCEP_Entrega: TcxDBButtonEdit [121]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'CEP_ENTREGA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 105
      Visible = False
      Height = 21
      Width = 99
    end
    object edtBairro_Entrega: TcxDBTextEdit [122]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'BAIRRO_ENTREGA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 103
      Visible = False
      Height = 21
      Width = 140
    end
    object edtComplemento_Entrega: TcxDBTextEdit [123]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'COMPLEMENTO_ENTREGA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 106
      Visible = False
      Height = 21
      Width = 1383
    end
    object btnBuscarEndEntrega: TcxButton [124]
      Left = 9993
      Top = 10000
      Width = 107
      Height = 35
      Caption = 'Buscar Endere'#231'o'
      TabOrder = 98
      Visible = False
    end
    object edtCodCidadeEntregaÎCIDADES: TcxDBButtonEdit [125]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'CODCIDADE_ENTREGA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 99
      Visible = False
      Height = 21
      Width = 100
    end
    object edtCodCidadeEntregaÎCIDADESÎUF: TcxDBTextEdit [126]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'UF_ENTREGA'
      DataBinding.DataSource = DS
      TabOrder = 101
      Visible = False
      Height = 21
      Width = 41
    end
    object edtEndereco_Entrega: TcxDBTextEdit [127]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'ENDERECO_ENTREGA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 102
      Visible = False
      Height = 21
      Width = 628
    end
    object edtNumero_Entrega: TcxDBTextEdit [128]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'NUMERO_ENTREGA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 104
      Visible = False
      Height = 21
      Width = 88
    end
    object chkIs_Orcamento: TcxDBCheckBox [129]
      Left = 9993
      Top = 10000
      AutoSize = False
      Caption = 'Or'#231'amento'
      DataBinding.DataField = 'IS_ORCAMENTO'
      DataBinding.DataSource = DS
      Enabled = False
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 113
      Transparent = True
      Visible = False
      Height = 35
      Width = 76
    end
    object chkIs_NotaFiscal: TcxDBCheckBox [130]
      Left = 9993
      Top = 10000
      AutoSize = False
      Caption = 'Nota Fiscal'
      DataBinding.DataField = 'IS_NOTAFISCAL'
      DataBinding.DataSource = DS
      Enabled = False
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 115
      Transparent = True
      Visible = False
      Height = 35
      Width = 77
    end
    object chkIs_Venda: TcxDBCheckBox [131]
      Left = 9993
      Top = 10000
      AutoSize = False
      Caption = 'Venda'
      DataBinding.DataField = 'IS_VENDA'
      DataBinding.DataSource = DS
      Enabled = False
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 114
      Transparent = True
      Visible = False
      Height = 35
      Width = 55
    end
    object edtEntrega_IE: TcxDBTextEdit [132]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'ENTREGA_IE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 112
      Visible = False
      Height = 21
      Width = 123
    end
    object edtEntrega_Nome: TcxDBTextEdit [133]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'ENTREGA_NOME'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 109
      Visible = False
      Height = 21
      Width = 352
    end
    object edtEntrega_Email: TcxDBTextEdit [134]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'ENTREGA_EMAIL'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 110
      Visible = False
      Height = 21
      Width = 1022
    end
    object edtEntrega_Fone: TcxDBTextEdit [135]
      Left = 9993
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'ENTREGA_FONE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 111
      Visible = False
      Height = 21
      Width = 112
    end
    object edtEntregaPaisÎPais: TcxDBButtonEdit [136]
      Left = 9993
      Top = 10000
      DataBinding.DataField = 'ENTREGA_CODPAIS'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 107
      Visible = False
      Width = 64
    end
    object edtCodCidadeEntregaÎCIDADESÎDescricao: TcxDBLabel [137]
      Left = 9993
      Top = 10000
      DataBinding.DataField = 'ENTREGA_CIDADE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      Visible = False
      Height = 20
      Width = 702
    end
    object edtEntregaPaisÎPaisÎDESCRICAO: TcxDBLabel [138]
      Left = 9993
      Top = 10000
      DataBinding.DataField = 'ENTREGA_PAIS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      Visible = False
      Height = 23
      Width = 274
    end
    object btnExcluirParcelas: TcxButton [139]
      Left = 9963
      Top = 10000
      Width = 26
      Height = 34
      Hint = 'Excluir Parcelas'
      Anchors = [akTop, akRight]
      OptionsImage.ImageIndex = 99
      OptionsImage.Images = FrmPrincipal.imgProducaoPequena
      OptionsImage.Spacing = 2
      TabOrder = 73
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = Excluirparcelas1Click
    end
    object edtOperacao: TcxDBTextEdit [140]
      Left = -19
      Top = 24
      Hint = 'F2 - Consulta'
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'OPERACAO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 0
      Height = 21
      Width = 129
    end
    object edtFolhas: TcxDBCurrencyEdit [141]
      Left = 355
      Top = 130
      DataBinding.DataField = 'FOLHAS'
      DataBinding.DataSource = DSPmPrincipal
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 34
      Width = 39
    end
    object edtValorOriginal: TcxDBCurrencyEdit [142]
      Left = 1323
      Top = 130
      AutoSize = False
      DataBinding.DataField = 'CALC_VALOR_ORIGINAL'
      DataBinding.DataSource = DSPmPrincipal
      Enabled = False
      Properties.DecimalPlaces = 8
      Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
      Style.Color = clWindow
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 48
      Height = 21
      Width = 73
    end
    object cbTabelaProduto: TcxDBLookupComboBox [143]
      Left = 1397
      Top = 130
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO_TABELA'
      DataBinding.DataSource = DSPmPrincipal
      Properties.KeyFieldNames = 'CODPRODUTO_TABELA'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DSProduto_Tabela_Preco
      Properties.OnValidate = cbTabelaProdutoPropertiesValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 49
      Height = 21
      Width = 102
    end
    object cbVariacao: TcxDBLookupComboBox [144]
      Left = 216
      Top = 130
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO_PRECO'
      DataBinding.DataSource = DSPmPrincipal
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DSProduto_Preco
      Properties.OnValidate = cbVariacaoPropertiesValidate
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 33
      Height = 21
      Width = 138
    end
    object lblComissaoÎPessoasÎRAZAOSOCIAL: TcxLabel [145]
      Left = 771
      Top = 130
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      Properties.Alignment.Vert = taVCenter
      Height = 21
      Width = 175
      AnchorY = 141
    end
    object edtComissaoÎPessoas: TcxButtonEdit [146]
      Tag = 37
      Left = 692
      Top = 130
      AutoSize = False
      Properties.Buttons = <
        item
          Enabled = False
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 40
      Height = 21
      Width = 78
    end
    object edtComissaoÎPessoasÎCOMISSAO: TcxCurrencyEdit [147]
      Left = 947
      Top = 130
      AutoSize = False
      Properties.DisplayFormat = '%,0.00;-%,0.00'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 42
      Height = 21
      Width = 46
    end
    object edtDT_APROVACAO_SAIDA_ETAPA: TcxDBDateEdit [148]
      Left = 1673
      Top = 328
      Hint = 'Informe aqui a data Limite para entrega ou t'#233'rmino da produ'#231#227'o'
      AutoSize = False
      DataBinding.DataField = 'DT_APROVACAO_SAIDA_ETAPA'
      DataBinding.DataSource = DSPmPrincipal
      ParentShowHint = False
      Properties.Kind = ckDateTime
      Properties.OnChange = EdtPrevisaoEntregaPropertiesChange
      Properties.OnValidate = EdtPrevisaoEntregaPropertiesValidate
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 64
      Height = 19
      Width = 147
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      CaptionOptions.Visible = False
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      Parent = GrupoDesativado
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Visible = False
      ItemIndex = 3
    end
    inherited GrupoMain: TdxLayoutGroup
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = []
      SizeOptions.Width = 837
      ItemIndex = 4
    end
    inherited LiBtnMostrarLogAtividades: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup17
      AlignVert = avBottom
      Index = 1
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = GrupoTabsPrincipal
      Index = 8
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      CaptionOptions.Text = 'Linha do Tempo'
      CaptionOptions.Layout = clTop
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = GrupoTabsPrincipal
      AlignVert = avClient
      Visible = True
      Index = 7
    end
    object licbxTipo_Venda: TdxLayoutItem
      Parent = LiGrupoVenda_Tipo
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = cbxTipo_Venda
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoTopo: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = GrupoTopo
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liedtResponsavelÎPessoas: TdxLayoutItem
      Parent = LiGrupoResponssavel
      CaptionOptions.Text = 'C'#243'digo ou Nome'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtResponsavelÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
      Parent = LiGrupoResponssavel
      AlignHorz = ahClient
      AlignVert = avBottom
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 173
      CaptionOptions.Text = 'Respons'#225'vel pela Venda'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtResponsavelÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtResponsavelÎPessoasÎFONE1: TdxLayoutItem
      Parent = LiGrupoResponssavel
      AlignHorz = ahRight
      CaptionOptions.Text = 'Telefone'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelÎPessoasÎFONE1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object GrupoTabsPrincipal: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tab Principal'
      CaptionOptions.Visible = False
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = GrupoTabsPrincipalTabChanged
      Index = 4
    end
    object TabDadosAdicionais: TdxLayoutGroup
      Parent = GrupoTabsPrincipal
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Dados Adicionais'
      ItemIndex = 3
      Index = 3
    end
    object liedtSolicitacao_Servico: TdxLayoutItem
      Parent = GrupoDadosAdicionais1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Solicita'#231#227'o de Servi'#231'o'
      CaptionOptions.Layout = clTop
      Control = edtSolicitacao_Servico
      ControlOptions.OriginalHeight = 86
      ControlOptions.OriginalWidth = 454
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtObservacao_Servico: TdxLayoutItem
      Parent = GrupoDadosAdicionais1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#227'o do Servi'#231'o'
      CaptionOptions.Layout = clTop
      Control = edtObservacao_Servico
      ControlOptions.OriginalHeight = 86
      ControlOptions.OriginalWidth = 451
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtPROJETO_DT_INICIO: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      CaptionOptions.Text = 'Data de Entrada'
      CaptionOptions.Layout = clTop
      Control = edtPROJETO_DT_INICIO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 133
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiEdtDtPrometidoPara: TdxLayoutItem
      Parent = GrupoData
      AlignHorz = ahRight
      CaptionOptions.Text = 'Prometido Para'
      CaptionOptions.Layout = clTop
      Control = edtPROJETO_DT_FIM
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 133
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      Parent = GrupoDadosAdicionais2
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoDadosAdicionais2: TdxLayoutGroup
      Parent = TabDadosAdicionais
      CaptionOptions.Visible = False
      Padding.AssignedValues = [lpavBottom]
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group17: TdxLayoutGroup
      Parent = GrupoDadosAdicionais2
      AlignVert = avBottom
      CaptionOptions.Visible = False
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object GrupoDadosAdicionais1: TdxLayoutGroup
      Parent = TabDadosAdicionais
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object TabFinanceiro: TdxLayoutGroup
      Parent = GrupoTabsPrincipal
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Financeiro'
      UseIndent = False
      Index = 1
    end
    object liedtCondicaoPagtoÎCondicaoPagto: TdxLayoutItem
      Parent = GrupoFinanceiroTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'C'#243'digo da Condi'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TdxLayoutItem
      Parent = GrupoFinanceiroTop
      CaptionOptions.Text = 'Intervalo'
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtCondicaoPagtoÎCondicaoPagtoÎPARCELAS: TdxLayoutItem
      Parent = GrupoFinanceiroTop
      CaptionOptions.Text = 'Parcelas'
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagtoÎPARCELAS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liSpnCaixa: TdxLayoutItem
      Parent = GrupoFinanceiroTop
      CaptionOptions.Text = 'Caixa'
      CaptionOptions.Layout = clTop
      Control = SpnCaixa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 42
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object libtnParcelas: TdxLayoutItem
      Parent = GrupoFinanceiroTop
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnParcelas
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TdxLayoutItem
      Parent = GrupoFinanceiroTop
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = ' de Pagamento'
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 468
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object ItemFinanceiroGrid: TdxLayoutItem
      Parent = GrupoRecebimento
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = GridFinanceiro
      ControlOptions.OriginalHeight = 437
      ControlOptions.OriginalWidth = 886
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoFinanceiroTop: TdxLayoutGroup
      Parent = GrupoRecebimento
      CaptionOptions.Visible = False
      ItemIndex = 7
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item54: TdxLayoutItem
      Parent = MainLayoutGroup3
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'C'#243'digo do'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtAtendenteÎPessoas
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtRepresentanteÎPessoas: TdxLayoutItem
      Parent = MainLayoutGroup7
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = edtRepresentanteÎPessoas
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item56: TdxLayoutItem
      Parent = MainLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = ' Funcion'#225'rio'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblAtendenteÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 512
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group18
      CaptionOptions.Visible = False
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object lilblRepresentanteÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
      Parent = MainLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      Control = lblRepresentanteÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 512
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group18
      CaptionOptions.Visible = False
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object GrupoFinanceiroBottom: TdxLayoutGroup
      Parent = GrupoRecebimento
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group18: TdxLayoutGroup
      Parent = GrupoFinanceiroBottom
      AlignHorz = ahClient
      CaptionOptions.Text = 'Comiss'#245'es'
      ItemIndex = 1
      Index = 0
    end
    object lilblCampoObrigatorioFuncionario: TdxLayoutItem
      Parent = MainLayoutGroup5
      AlignHorz = ahCenter
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblCampoObrigatorioFuncionario
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lilblObriga_Representante: TdxLayoutItem
      Parent = MainLayoutGroup4
      AlignHorz = ahCenter
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblObriga_Representante
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object TabProdutos: TdxLayoutGroup
      Parent = GrupoTabsPrincipal
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Produtos / Servi'#231'os'
      CaptionOptions.Visible = False
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object liedtCodProdutoÎProduto: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignVert = avBottom
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      CaptionOptions.Text = 'C'#243'digo do Produto ou Servi'#231'o'
      CaptionOptions.Layout = clTop
      Control = edtCodProduto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoVeiculo: TdxLayoutGroup
      Parent = GrupoDesativado
      AlignVert = avTop
      CaptionOptions.Text = 'TabComercial'
      CaptionOptions.Visible = False
      Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object libtnAdicionarProduto: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnAdicionarProduto
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 23
    end
    object libtnRemoverProduto: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnRemoverProduto
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 24
    end
    object GrupoTabComunicacaoVisual: TdxLayoutGroup
      Parent = TabProdutos
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Informa'#231#245'es Adicionais do Produto / Servi'#231'o'
      Visible = False
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object GrupoBottom: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item164: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = BtnImprimirDireto
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 42
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Visible = False
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object MainLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Visible = False
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object MainLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = MainLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'digo do Funcion'#225'rio'
      Index = 0
    end
    object MainLayoutLabeledItem2: TdxLayoutLabeledItem
      Parent = MainLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avBottom
      Offsets.Right = 107
      CaptionOptions.Text = 'Comiss'#227'o  '
      Index = 2
    end
    object GrupoEquipamento: TdxLayoutGroup
      Parent = GrupoDesativado
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Assist'#234'ncia T'#233'cnica'
      CaptionOptions.Visible = False
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object MainLayoutLabeledItem3: TdxLayoutLabeledItem
      Parent = MainLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'digo do Representante'
      Index = 0
    end
    object MainLayoutLabeledItem4: TdxLayoutLabeledItem
      Parent = MainLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avBottom
      Offsets.Right = 107
      CaptionOptions.Text = 'Comiss'#227'o  '
      Index = 2
    end
    object MainLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutItemLbImpressao2: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = LbImpressao2
      ControlOptions.AutoControlAreaAlignment = False
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object MainLayoutGroup10: TdxLayoutGroup
      Parent = TabProdutos
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 11
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object MainLayoutItem5: TdxLayoutItem
      CaptionOptions.Visible = False
      Control = BtnMenu
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object MainLayoutGroup11: TdxLayoutGroup
      Parent = TabProdutos
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 3
    end
    object liedtDT_Emissao: TdxLayoutItem
      Parent = LiGrupoResponssavel
      CaptionOptions.Text = 'Data Emiss'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDT_Emissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoRecebimento: TdxLayoutGroup
      Parent = GrupoFinanceiroParcelas
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Recebimentos'
      ShowBorder = False
      Index = 0
    end
    object GrupoFinanceiroParcelas: TdxLayoutGroup
      Parent = TabFinanceiro
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tabs Ocultas'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object LiGrupoVenda_Tipo: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object libtnConsultaTECVenda: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup17
      AlignHorz = ahRight
      AlignVert = avClient
      Offsets.Top = 20
      CaptionOptions.Text = 'Consulta TEC'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnConsultaTECVenda
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItemObservacaoResponsavel: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Observa'#231#227'o do Respons'#225'vel'
      CaptionOptions.Layout = clTop
      Control = LblResponsavelÎPessoasÎOBSERVACAO
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoAgrupamentoVendas: TdxLayoutGroup
      Parent = GrupoTabsPrincipal
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Vendas Vinculadas'
      Index = 4
    end
    object liedtResponsavelÎPessoasÎCONTATO: TdxLayoutItem
      Parent = LiGrupoResponssavel
      AlignHorz = ahRight
      CaptionOptions.Text = 'Contato  (F2 - Consulta)'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelÎPessoasÎCONTATO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object MainLayoutGroup65: TdxLayoutGroup
      Parent = GrupoTabComunicacaoVisual
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object MainLayoutGroup66: TdxLayoutGroup
      Parent = GrupoTabComunicacaoVisual
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Offsets.Left = 10
      ShowBorder = False
      Index = 1
    end
    object liedtCalc_VDesc_Manual: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'R$ Desconto'
      CaptionOptions.Layout = clTop
      Control = edtCalc_VDesc_Manual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 20
    end
    object liedtObeservacao: TdxLayoutItem
      Parent = GrupoBottom
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      CaptionOptions.Text = 'Observa'#231#227'o (F8 - Expande observa'#231#227'o)'
      CaptionOptions.Layout = clTop
      Control = edtObeservacao
      ControlOptions.OriginalHeight = 59
      ControlOptions.OriginalWidth = 327
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object liedtQuantidade: TdxLayoutItem
      Parent = MainLayoutGroup17
      AlignVert = avBottom
      CaptionOptions.Text = 'Soma Quant. Produtos'
      CaptionOptions.Layout = clTop
      Control = edtQuantidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group45: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Offsets.Left = 10
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object MainLayoutGroup51: TdxLayoutGroup
      Parent = dxLayoutControl1Group45
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object MainLayoutGroup55: TdxLayoutGroup
      Parent = dxLayoutControl1Group45
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup13: TdxLayoutGroup
      Parent = MainLayoutGroup55
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item154: TdxLayoutItem
      Parent = MainLayoutGroup13
      CaptionOptions.Visible = False
      Control = Label10
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtSub_Total: TdxLayoutItem
      Parent = MainLayoutGroup13
      Control = edtSub_Total
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup40: TdxLayoutGroup
      Parent = MainLayoutGroup55
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item156: TdxLayoutItem
      Parent = MainLayoutGroup40
      CaptionOptions.Visible = False
      Control = LbTotal
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtVendaTotal: TdxLayoutItem
      Parent = MainLayoutGroup40
      Control = edtVendaTotal
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtTotal_Servicos: TdxLayoutItem
      Parent = MainLayoutGroup51
      CaptionOptions.Text = 'Servi'#231'os'
      Control = edtTotal_Servicos
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtTOTAL_PRODUTOS: TdxLayoutItem
      Parent = MainLayoutGroup51
      CaptionOptions.Text = 'Produtos'
      Control = edtTOTAL_PRODUTOS
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup59: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group42: TdxLayoutGroup
      Parent = MainLayoutGroup59
      CaptionOptions.Visible = False
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group43: TdxLayoutGroup
      Parent = dxLayoutControl1Group42
      AlignVert = avBottom
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liedtPOutro: TdxLayoutItem
      Parent = dxLayoutControl1Group43
      CaptionOptions.Text = '% Acr'#233'scimo'
      CaptionOptions.Layout = clTop
      Control = edtPOutro
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group44: TdxLayoutGroup
      Parent = dxLayoutControl1Group42
      AlignVert = avBottom
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object liedtPDesc: TdxLayoutItem
      Parent = dxLayoutControl1Group44
      AlignVert = avClient
      CaptionOptions.Text = '% Desconto'
      CaptionOptions.Layout = clTop
      Control = edtPDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtVDesc: TdxLayoutItem
      Parent = dxLayoutControl1Group44
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'R$'
      CaptionOptions.Layout = clTop
      Control = edtVDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object licbxSituacao: TdxLayoutItem
      Parent = LiGrupoVenda_Tipo
      AlignVert = avBottom
      CaptionOptions.Text = 'Situa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cbxSituacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtSequencia: TdxLayoutItem
      Parent = LiGrupoResponssavel
      CaptionOptions.Text = 'Sequ'#234'ncia'
      CaptionOptions.Layout = clTop
      Control = edtSequencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoCodigoPedidoCompra: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup17
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object MainLayoutItem137: TdxLayoutItem
      Parent = GrupoCodigoPedidoCompra
      CaptionOptions.Text = ' Pedido Cliente'
      CaptionOptions.Layout = clTop
      Control = edtPedidoCliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem138: TdxLayoutItem
      Parent = GrupoCodigoPedidoCompra
      Padding.AssignedValues = [lpavLeft]
      CaptionOptions.Text = ' Pedido Representante'
      CaptionOptions.Layout = clTop
      Control = edtPedidoRepresentante
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem87: TdxLayoutItem
      Parent = GrupoAgrupamentoVendas
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Panel2'
      CaptionOptions.Visible = False
      Control = PnlFrameAgrupamento
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 548
      ControlOptions.OriginalWidth = 883
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoFaturamento: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = MainLayoutGroup66
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = MainLayoutGroup66
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoAcabamento: TdxLayoutGroup
      Parent = GrupoDesativado
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'GrupoAcabamento'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item48: TdxLayoutItem
      Parent = GrupoFinanceiroTop
      AlignVert = avBottom
      CaptionOptions.Text = 'Mes'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkIntervalo_Mensal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object GrupoEvento: TdxLayoutGroup
      Parent = TabDadosAdicionais
      CaptionOptions.Text = 'Grupo Evento'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 2
    end
    object GrupoData: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup9
      AlignVert = avBottom
      CaptionOptions.Text = 'Evento e Cerimonial'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LiTipodoEvento: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Tipo do Evento'
      CaptionOptions.Layout = clTop
      Control = EdtTipodoEvento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiCerimonial: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Cerimonial'
      CaptionOptions.Layout = clTop
      Control = EdtCerimonial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiDatadoEvento: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Data do Evento'
      CaptionOptions.Layout = clTop
      Control = EdtDatadoEvento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtVOutro: TdxLayoutItem
      Parent = dxLayoutControl1Group43
      AlignVert = avClient
      CaptionOptions.Text = 'R$'
      CaptionOptions.Layout = clTop
      Control = edtVOutro
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtNF_VFrete: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'R$ Frete'
      CaptionOptions.Layout = clTop
      Control = edtNF_VFrete
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem26: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = BtnAnexos
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = MainLayoutGroup59
      Index = 0
    end
    object GrupoAnexo: TdxLayoutItem
      Parent = GrupoTabsPrincipal
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Anexos'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = PnlFrameAnexos
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 41
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtVendaCodigo: TdxLayoutItem
      Parent = LiGrupoResponssavel
      CaptionOptions.Text = 'C'#243'digo'
      CaptionOptions.Layout = clTop
      Control = edtVendaCodigo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtAgenciaÎPessoas: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBButtonEdit1'
      CaptionOptions.Visible = False
      Control = edtAgenciaÎPessoas
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group18
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object MainLayoutLabeledItem11: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo da Ag'#234'ncia'
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      Index = 0
    end
    object lilblAgenciaÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxLabel4'
      CaptionOptions.Visible = False
      Control = lblAgenciaÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 488
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup3
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object liedtDtCompetencia: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Dt Compet'#234'ncia'
      CaptionOptions.Layout = clTop
      Control = edtDtCompetencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lichkLote: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Lote'
      CaptionOptions.Layout = clTop
      Control = chkLote
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 32
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object lichkVenda_Atenticar: TdxLayoutItem
      Parent = LiIntegracaoIBASI
      AlignHorz = ahRight
      CaptionOptions.Text = 'Aut'#234'ntica'
      CaptionOptions.Layout = clTop
      Control = chkVenda_Atenticar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblAutenticar: TdxLayoutItem
      Parent = LiIntegracaoIBASI
      AlignHorz = ahRight
      CaptionOptions.Text = 'Autenticado'
      CaptionOptions.Layout = clTop
      Control = lblAutenticar
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liEquipamento: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup7
      AlignVert = avTop
      CaptionOptions.Text = 'Placa de Ve'#237'culos e Equipamentos'
      CaptionOptions.Visible = False
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      Parent = liEquipamento
      CaptionOptions.Text = 'Equipamento'
      CaptionOptions.Layout = clTop
      Control = EdtEquipamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item32: TdxLayoutItem
      Parent = liEquipamento
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Descri'#231#227'o Equipamento'
      CaptionOptions.Visible = False
      Control = EdtEquipamentoÎEquipamentoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 703
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = liEquipamento
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = lbTipo_Equipamento
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object GrupoGrade: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup8
      CaptionOptions.Text = 'Grade do Produto - Quantidade por Tamanho'
      Visible = False
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object liedtGradeQuantTotal: TdxLayoutItem
      Parent = GrupoGrade
      AlignHorz = ahRight
      CaptionOptions.Text = 'Quant. Total'
      CaptionOptions.Layout = clTop
      Control = edtGradeQuantTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item30: TdxLayoutItem
      Parent = GrupoEquipamento
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'N'#186' de S'#233'rie'
      CaptionOptions.Layout = clTop
      Control = DBEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item31: TdxLayoutItem
      Parent = GrupoEquipamento
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'N. Fiscal'
      CaptionOptions.Layout = clTop
      Control = DBEdit80
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item34: TdxLayoutItem
      Parent = GrupoEquipamento
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Data Compra'
      CaptionOptions.Layout = clTop
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item35: TdxLayoutItem
      Parent = GrupoEquipamento
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Defeito'
      CaptionOptions.Layout = clTop
      Control = DBEdit81
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 719
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object GrupoOrcamento: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Visible = False
      ShowBorder = False
      UseIndent = False
      Index = 1
    end
    object LiTituloServico: TdxLayoutItem
      Parent = GrupoProjeto
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Descri'#231#227'o do projeto'
      CaptionOptions.Layout = clTop
      Control = EdtTituloServico
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 926
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiEdtProjetoÎProjeto: TdxLayoutItem
      Parent = GrupoProjeto
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Projeto'
      CaptionOptions.Layout = clTop
      Control = EdtProjetoÎProjeto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoProjeto: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup8
      CaptionOptions.Text = 'Projeto (Evento, Cerimonial, Obra, T'#237'tulo do Servi'#231'o)'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object liedtProdutoDescricao: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avBottom
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      CaptionOptions.Layout = clTop
      Control = edtProdutoDescricao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtUnidade: TdxLayoutItem
      Parent = MainLayoutGroup10
      CaptionOptions.Text = 'Unid.'
      CaptionOptions.Layout = clTop
      Control = edtUnidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtQTDADePeca: TdxLayoutItem
      Parent = MainLayoutGroup10
      CaptionOptions.Text = 'Pe'#231'as'
      CaptionOptions.Layout = clTop
      Control = edtQTDADePeca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtComp: TdxLayoutItem
      Parent = MainLayoutGroup10
      CaptionOptions.Text = 'Comprimento'
      CaptionOptions.Layout = clTop
      Control = edtComp
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtLarg: TdxLayoutItem
      Parent = MainLayoutGroup10
      CaptionOptions.Text = 'Largura'
      CaptionOptions.Layout = clTop
      Control = edtLarg
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtEspessura: TdxLayoutItem
      Parent = MainLayoutGroup10
      CaptionOptions.Text = 'Espessura'
      CaptionOptions.Layout = clTop
      Control = edtEspessura
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object liedtQuant: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignVert = avClient
      CaptionOptions.Text = 'Quant'
      CaptionOptions.Layout = clTop
      Control = edtQuant
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object liedtValor: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'R$ Valor'
      CaptionOptions.Layout = clTop
      Control = edtValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 21
    end
    object liedtTotal: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'R$ Total'
      CaptionOptions.Layout = clTop
      Control = edtTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 22
    end
    object liedtObservacao_Produto: TdxLayoutItem
      Parent = TabProdutos
      Visible = False
      CaptionOptions.Text = 'Observa'#231#227'o (uso interno)'
      CaptionOptions.Layout = clTop
      Control = edtObservacao_Produto
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtPath: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignVert = avClient
      CaptionOptions.Text = 'Caminho'
      CaptionOptions.Layout = clTop
      Control = edtPath
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtObs_Producao: TdxLayoutItem
      Parent = MainLayoutGroup65
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#227'o para a Produ'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtObs_Producao
      ControlOptions.OriginalHeight = 44
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtLocalÎLocal: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'C'#243'digo do'
      CaptionOptions.Layout = clTop
      Control = edtLocalÎLocal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtLocalÎLocalÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignHorz = ahClient
      CaptionOptions.Text = 'Local da Aplica'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtLocalÎLocalÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 258
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtCodTipo_ImpressaoÎTipo_Impressao: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'C'#243'digo do'
      CaptionOptions.Layout = clTop
      Control = edtCodTipo_ImpressaoÎTipo_Impressao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtCodTipo_ImpressaoÎTipo_ImpressaoÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Tipo de Impress'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtCodTipo_ImpressaoÎTipo_ImpressaoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 260
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtCALENDARIO_DT_PREVISAO_FIM: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignVert = avClient
      CaptionOptions.Text = 'Prazo Equipe(Produ'#231#227'o)'
      CaptionOptions.Layout = clTop
      Control = edtCALENDARIO_DT_PREVISAO_FIM
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lichkDevolucao: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avTop
      Visible = False
      CaptionOptions.Text = 'Devol.'
      CaptionOptions.Layout = clTop
      Control = chkDevolucao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object lichkComissao_Agencia_Cobrar: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxDBCheckBox3'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkComissao_Agencia_Cobrar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lichkComissao_Funcionario_Cobrar: TdxLayoutItem
      Parent = MainLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxDBCheckBox8'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkComissao_Funcionario_Cobrar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lichkComissao_Representante_Cobrar: TdxLayoutItem
      Parent = MainLayoutGroup7
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxDBCheckBox9'
      CaptionOptions.Visible = False
      Control = chkComissao_Representante_Cobrar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtAtendenteÎPessoasÎCOMISSAO: TdxLayoutItem
      Parent = MainLayoutGroup3
      CaptionOptions.AlignHorz = taRightJustify
      Control = edtAtendenteÎPessoasÎCOMISSAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtRepresentanteÎPessoasÎCOMISSAO: TdxLayoutItem
      Parent = MainLayoutGroup7
      CaptionOptions.AlignHorz = taRightJustify
      Control = edtRepresentanteÎPessoasÎCOMISSAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtAgenciaÎPessoasÎCOMISSAO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Comiss'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtAgenciaÎPessoasÎCOMISSAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtCalc_PDesc_Manual: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'Desconto %'
      CaptionOptions.Layout = clTop
      Control = edtCalc_PDesc_Manual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 19
    end
    object libtnTabelaPreco: TdxLayoutItem
      Parent = LiGrupoResponssavel
      AlignHorz = ahRight
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Layout = clTop
      Control = btnTabelaPreco
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object LiGrupoResponssavel: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object licbxCalc_Tipo_Desconto: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'Tipo de Pre'#231'o'
      CaptionOptions.Layout = clTop
      Control = cbxCalc_Tipo_Desconto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object libtnProdutoTabelaPreco: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnProdutoTabelaPreco
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 16
    end
    object libtnConfigCamposProduto: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnConfigCamposProduto
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 25
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = MainLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridProdutoTree
      ControlOptions.MinHeight = 70
      ControlOptions.OriginalHeight = 125
      ControlOptions.OriginalWidth = 217
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object GrupoDesativado: TdxLayoutGroup
      Tag = 99
      AlignVert = avClient
      CaptionOptions.Text = 'Componentes Ocultos'
      ItemIndex = 5
      Index = -1
    end
    object liedtQtdDias: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      CaptionOptions.Text = 'Quant dias Produ'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtQtdDias
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object libtnMudarPrazo: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnMudarPrazo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup
      Parent = GrupoDesativado
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object GrupoProducao: TdxLayoutGroup
      Parent = GrupoTabComunicacaoVisual
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      UseIndent = False
      Index = 2
    end
    object liedtPessoa_Responsavel_Codigo: TdxLayoutItem
      Parent = LiGrupoResponssavel
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'Codigo Interno do Cliente'
      CaptionOptions.Layout = clTop
      Control = edtPessoa_Responsavel_Codigo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object lichkVenda_Tipo_Pode_Ser_Produzido: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Control = chkVenda_Tipo_Pode_Ser_Produzido
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object liedtStatus: TdxLayoutItem
      Parent = MainLayoutGroup17
      CaptionOptions.Text = 'Status'
      CaptionOptions.Layout = clTop
      Control = edtStatus
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiIntegracaoIBASI: TdxLayoutGroup
      Parent = GrupoFinanceiroBottom
      CaptionOptions.Text = 'Integra'#231#227'o IBASI'
      Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem68: TdxLayoutItem
      Parent = liEquipamento
      CaptionOptions.Text = 'Placa'
      CaptionOptions.Layout = clTop
      Control = lbPlaca_Equipamento
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object licbxProduto_Estoque_Local: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Local de Estoque'
      CaptionOptions.Layout = clTop
      Control = cbxProduto_Estoque_Local
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      Index = 0
    end
    object TabMotorCalculo: TdxLayoutGroup
      Parent = GrupoTabsPrincipal
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Motor de C'#225'lculo'
      Visible = False
      ItemIndex = 1
      Index = 6
    end
    object LiMotorDeCalculo: TdxLayoutItem
      Parent = TabMotorCalculo
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Motor de C'#225'lculo'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = sprMotorCalculo
      ControlOptions.OriginalHeight = 240
      ControlOptions.OriginalWidth = 460
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = TabMotorCalculo
      AlignHorz = ahClient
      CaptionOptions.Text = 'Barra de F'#243'rmula'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = dxSpreadSheetFormulaBar1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnMostrarSpr
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = GrupoDesativado
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup6
      Index = 2
    end
    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup7
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object LicbxEstagio: TdxLayoutItem
      Parent = LiGrupoVenda_Tipo
      AlignVert = avBottom
      CaptionOptions.Text = 'Est'#225'gio'
      CaptionOptions.Layout = clTop
      Control = cbxEstagio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object TabDadosDoResponsavel: TdxLayoutItem
      Parent = GrupoTabsPrincipal
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Destinat'#225'rio(Cliente)'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = pnlPessoas
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 108
      ControlOptions.OriginalWidth = 695
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoBottom
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoDadosAdicionaisEnderecoEntrega: TdxLayoutGroup
      Parent = TabDadosAdicionais
      CaptionOptions.Text = ' Endere'#231'o de Entrega '
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Padding.AssignedValues = [lpavTop]
      Index = 3
    end
    object MainLayoutGroup70: TdxLayoutGroup
      Parent = GrupoDadosAdicionaisEnderecoEntrega
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object libtnBuscarEndEntrega: TdxLayoutItem
      Parent = MainLayoutGroup70
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnBuscarEndEntrega
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = MainLayoutGroup70
      Offsets.Left = 2
      Offsets.Right = 2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object liedtCodCidadeEntregaÎCIDADES: TdxLayoutItem
      Parent = MainLayoutGroup70
      CaptionOptions.Text = ' C'#243'd. Cidade'
      CaptionOptions.Layout = clTop
      Control = edtCodCidadeEntregaÎCIDADES
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtCodCidadeEntregaÎCIDADESÎDescricao: TdxLayoutItem
      Parent = MainLayoutGroup70
      AlignHorz = ahClient
      CaptionOptions.Text = 'Cidade'
      CaptionOptions.Layout = clTop
      Control = edtCodCidadeEntregaÎCIDADESÎDescricao
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 339
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtCodCidadeEntregaÎCIDADESÎUF: TdxLayoutItem
      Parent = MainLayoutGroup70
      CaptionOptions.Text = ' UF'
      CaptionOptions.Layout = clTop
      Control = edtCodCidadeEntregaÎCIDADESÎUF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 41
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtEndereco_Entrega: TdxLayoutItem
      Parent = MainLayoutGroup70
      AlignHorz = ahClient
      CaptionOptions.Text = ' Logradouro'
      CaptionOptions.Layout = clTop
      Control = edtEndereco_Entrega
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 303
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtBairro_Entrega: TdxLayoutItem
      Parent = MainLayoutGroup70
      AlignVert = avClient
      CaptionOptions.Text = 'Bairro'
      CaptionOptions.Layout = clTop
      Control = edtBairro_Entrega
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtNumero_Entrega: TdxLayoutItem
      Parent = MainLayoutGroup70
      CaptionOptions.Text = ' N'#250'mero'
      CaptionOptions.Layout = clTop
      Control = edtNumero_Entrega
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object MainLayoutGroup71: TdxLayoutGroup
      Parent = GrupoDadosAdicionaisEnderecoEntrega
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object liedtCEP_Entrega: TdxLayoutItem
      Parent = MainLayoutGroup71
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = ' CEP'
      CaptionOptions.Layout = clTop
      Control = edtCEP_Entrega
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtComplemento_Entrega: TdxLayoutItem
      Parent = MainLayoutGroup71
      AlignHorz = ahClient
      CaptionOptions.Text = ' Complemento'
      CaptionOptions.Layout = clTop
      Control = edtComplemento_Entrega
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 476
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtEntregaPaisÎPais: TdxLayoutItem
      Parent = MainLayoutGroup71
      CaptionOptions.Text = 'Pa'#237's'
      CaptionOptions.Layout = clTop
      Control = edtEntregaPaisÎPais
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtEntregaPaisÎPaisÎDESCRICAO: TdxLayoutItem
      Parent = MainLayoutGroup71
      AlignVert = avBottom
      CaptionOptions.Layout = clTop
      Control = edtEntregaPaisÎPaisÎDESCRICAO
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 274
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup20: TdxLayoutAutoCreatedGroup
      Parent = GrupoDadosAdicionaisEnderecoEntrega
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object liedtEntrega_Nome: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup20
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Layout = clTop
      Control = edtEntrega_Nome
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtEntrega_Email: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup20
      AlignHorz = ahClient
      CaptionOptions.Text = 'Email'
      CaptionOptions.Layout = clTop
      Control = edtEntrega_Email
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 282
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtEntrega_Fone: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup20
      AlignVert = avClient
      CaptionOptions.Text = 'Fone'
      CaptionOptions.Layout = clTop
      Control = edtEntrega_Fone
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtEntrega_IE: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup20
      AlignVert = avClient
      CaptionOptions.Text = 'Inscri'#231#227'o Estadual'
      CaptionOptions.Layout = clTop
      Control = edtEntrega_IE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liTipoDeVenda: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup20
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object lichkIs_Orcamento: TdxLayoutItem
      Parent = liTipoDeVenda
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBCheckBox5'
      CaptionOptions.Visible = False
      Control = chkIs_Orcamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object lichkIs_Venda: TdxLayoutItem
      Parent = liTipoDeVenda
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBCheckBox7'
      CaptionOptions.Visible = False
      Control = chkIs_Venda
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object lichkIs_NotaFiscal: TdxLayoutItem
      Parent = liTipoDeVenda
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBCheckBox6'
      CaptionOptions.Visible = False
      Control = chkIs_NotaFiscal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object libtnExcluirParcelas: TdxLayoutItem
      Parent = GrupoFinanceiroTop
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnExcluirParcelas
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtOperacao: TdxLayoutItem
      Parent = GrupoData
      AlignHorz = ahRight
      CaptionOptions.Text = 'Opera'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtOperacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedFolhas: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Folhas'
      CaptionOptions.Layout = clTop
      Control = edtFolhas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 39
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtValorOriginal: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'R$ Original'
      CaptionOptions.Layout = clTop
      Control = edtValorOriginal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 17
    end
    object licbTabelaProduto: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'Tabela'
      CaptionOptions.Layout = clTop
      Control = cbTabelaProduto
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 18
    end
    object licbVariacao: TdxLayoutItem
      Parent = MainLayoutGroup10
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'Varia'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cbVariacao
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lilblComissaoÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
      Parent = GrupoComissaoFuncProduto
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblComissaoÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtComissaoÎPessoas: TdxLayoutItem
      Parent = GrupoComissaoFuncProduto
      AlignVert = avBottom
      CaptionOptions.Text = 'Funcion'#225'rio'
      CaptionOptions.Layout = clTop
      Control = edtComissaoÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtComissao: TdxLayoutItem
      Parent = GrupoComissaoFuncProduto
      AlignVert = avClient
      CaptionOptions.Text = 'Comiss'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtComissaoÎPessoasÎCOMISSAO
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoComissaoFuncProduto: TdxLayoutGroup
      Parent = MainLayoutGroup10
      CaptionOptions.Text = 'New Group'
      Visible = False
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 11
    end
    object liedtDT_APROVACAO_SAIDA_ETAPA: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avBottom
      CaptionOptions.Text = 'Prazo Etapa'
      CaptionOptions.Layout = clTop
      Control = edtDT_APROVACAO_SAIDA_ETAPA
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
  end
  object PnlConfigCamposProduto: TPanel [36]
    Left = 248
    Top = 278
    Width = 197
    Height = 275
    TabOrder = 12
    Visible = False
    object LcConfigCamposProduto: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 195
      Height = 273
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object CkConfigCamposProdutoTabPreco: TcxCheckBox
        Left = 12
        Top = 105
        Caption = 'Tabela de Pre'#231'os'
        Style.HotTrack = False
        TabOrder = 4
        Transparent = True
        OnClick = CkConfigCamposProdutoTabPrecoClick
      end
      object CkConfigCamposProdutoTipoDesc: TcxCheckBox
        Left = 12
        Top = 83
        Caption = 'Tipo do Desconto'
        Style.HotTrack = False
        TabOrder = 3
        Transparent = True
        OnClick = CkConfigCamposProdutoTipoDescClick
      end
      object CkConfigCamposProdutoVDesc: TcxCheckBox
        Left = 12
        Top = 61
        Caption = 'Desconto R$'
        Style.HotTrack = False
        TabOrder = 2
        Transparent = True
        OnClick = CkConfigCamposProdutoVDescClick
      end
      object CkConfigCamposProdutoPDesc: TcxCheckBox
        Left = 12
        Top = 39
        Caption = 'Desconto %'
        Style.HotTrack = False
        TabOrder = 1
        Transparent = True
        OnClick = CkConfigCamposProdutoPDescClick
      end
      object CkAgrupar: TcxCheckBox
        Left = 12
        Top = 127
        Caption = 'Agrupar produtos ao inserir'
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 5
        Transparent = True
        OnClick = CkAgruparClick
      end
      object chkLocalEstoque: TcxCheckBox
        Left = 12
        Top = 149
        Caption = 'Local de Estoque'
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 6
        Transparent = True
        OnClick = chkLocalEstoqueClick
      end
      object chkConfDevolucao: TcxCheckBox
        Left = 12
        Top = 18
        AutoSize = False
        Caption = 'Devolu'#231#227'o'
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 0
        Transparent = True
        OnClick = chkConfDevolucaoClick
        Height = 20
        Width = 154
      end
      object chkInformacaoes_Adicionais: TcxCheckBox
        Left = 12
        Top = 171
        Caption = 'Informa'#231#245'es Adicionais'
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 7
        Transparent = True
        OnClick = chkInformacaoes_AdicionaisClick
      end
      object chkFolhas: TcxCheckBox
        Left = 12
        Top = 193
        Caption = 'Folhas'
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 8
        Transparent = True
        OnClick = chkFolhasClick
      end
      object chkTabelaPrecoProduto: TcxCheckBox
        Left = 12
        Top = 215
        Caption = 'Ver Tabela de Pre'#231'o'
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 9
        Transparent = True
        OnClick = chkTabelaPrecoProdutoClick
      end
      object chkValorOriginal: TcxCheckBox
        Left = 12
        Top = 233
        Caption = 'Ver Valor Original'
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 10
        Transparent = True
        OnClick = chkValorOriginalClick
      end
      object chkComissaoFuncionario: TcxCheckBox
        Left = 12
        Top = 251
        Caption = 'Comiss'#227'o Funcion'#225'rio'
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 11
        Transparent = True
        OnClick = chkComissaoFuncionarioClick
      end
      object LcConfigCamposProdutoGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object LiCkConfigCamposProdutoTabPreco: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = CkConfigCamposProdutoTabPreco
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 90
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object LiCkConfigCamposProdutoTipoDesc: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        CaptionOptions.Visible = False
        Control = CkConfigCamposProdutoTipoDesc
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 21
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object LiCkConfigCamposProdutoVDesc: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        CaptionOptions.Visible = False
        Control = CkConfigCamposProdutoVDesc
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 21
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object LiCkConfigCamposProdutoPDesc: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        CaptionOptions.Visible = False
        Control = CkConfigCamposProdutoPDesc
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 21
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object LiGrupConfigCabecalho: TdxLayoutGroup
        Parent = LcConfigCamposProdutoGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Configura'#231#227'o do item de venda'
        ItemIndex = 3
        Index = 0
      end
      object LiCkAgrupar: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = CkAgrupar
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 66
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object lichkLocalEstoque: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        CaptionOptions.Visible = False
        Control = chkLocalEstoque
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 105
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        CaptionOptions.Visible = False
        Control = chkConfDevolucao
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 21
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        CaptionOptions.Visible = False
        Control = chkInformacaoes_Adicionais
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 105
        ControlOptions.ShowBorder = False
        Index = 7
      end
      object lichkFolhas: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        CaptionOptions.Visible = False
        Control = chkFolhas
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 134
        ControlOptions.ShowBorder = False
        Index = 8
      end
      object lichkTabelaPrecoProduto: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        CaptionOptions.Visible = False
        Control = chkTabelaPrecoProduto
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 51
        ControlOptions.ShowBorder = False
        Index = 9
      end
      object lichkValorOriginal: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        CaptionOptions.Visible = False
        Control = chkValorOriginal
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 116
        ControlOptions.ShowBorder = False
        Index = 10
      end
      object lichkComissaoFuncionario: TdxLayoutItem
        Parent = LiGrupConfigCabecalho
        CaptionOptions.Visible = False
        Control = chkComissaoFuncionario
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 102
        ControlOptions.ShowBorder = False
        Index = 11
      end
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Width = 1273
    Images = FrmPrincipal.cxImageList_Pequena
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 29
        Text = 'USU'#193'RIO'
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'EMPRESA'
        Width = 400
        OnClick = dxStatusBar1Panels1Click
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 250
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Visible = False
    ExplicitWidth = 1273
  end
  inherited pnlMenuCadastro: TPanel
    Left = 1165
    ExplicitLeft = 1165
    inherited tcCadastro: TdxTileControl
      object tcCadastroGroup1: TdxTileControlGroup [1]
        Index = 1
      end
      inherited BtnImprimirPadrao: TdxTileControlItem
        Left = 1309
        Top = 371
      end
      object btnProducao: TdxTileControlItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 12
        GroupIndex = 1
        IndexInGroup = 0
        Size = tcisLarge
        Style.GradientBeginColor = clWhite
        Style.GradientEndColor = clWhite
        Text1.Align = oaMiddleRight
        Text1.AssignedValues = [avColor, avTextColor, avFont]
        Text1.Color = clNavy
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -12
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Produ'#231#227'o'
        Text1.TextColor = clPurple
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnProducaoClick
      end
    end
    inherited tcCadastroMenu: TdxTileControl
      inherited BtnConfiguracoes: TdxTileControlItem
        Left = 1358
      end
    end
    inherited tcCadastroAcoes: TdxTileControl
      inherited btnNovo: TdxTileControlItem
        Left = 1266
        Top = 34
      end
      inherited btnConfirmar: TdxTileControlItem
        OnClick = nil
        Left = 1266
        Top = 59
      end
      inherited btnExcluir: TdxTileControlItem
        Left = 1266
        Top = 137
      end
      inherited btnAlterar: TdxTileControlItem
        Left = 1266
        Top = 85
      end
      inherited btnCancelar: TdxTileControlItem
        Left = 1266
        Top = 111
      end
      inherited BtnAtivar: TdxTileControlItem
        Left = 1266
        Top = 163
      end
      inherited BtnDesativar: TdxTileControlItem
        Left = 1266
        Top = 189
      end
    end
    inherited tcCadastro_Consulta: TdxTileControl
      inherited btnConsultar: TdxTileControlItem
        Left = 1266
        Top = 230
      end
    end
    inherited tcCadastro_Anterior_Proximo: TdxTileControl
      inherited btnNavegacaoAnterior: TdxTileControlItem
        Left = 1266
        Top = 271
      end
      inherited btnNavegacaoProximo: TdxTileControlItem
        Left = 1325
        Top = 271
      end
    end
  end
  object PnlParcela: TPanel [39]
    Left = 88
    Top = 50
    Width = 594
    Height = 262
    Caption = 'Parcela'
    ParentBackground = False
    TabOrder = 5
    Visible = False
    object dxLayoutControlPnlParcela: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 592
      Height = 260
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object lblParcelaPlanoContasÎPlanoContasÎDESCRICAO: TLabel
        Left = 101
        Top = 128
        Width = 214
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
        Transparent = False
      end
      object lblParcelaContaÎContasÎDESCRICAO: TLabel
        Left = 374
        Top = 128
        Width = 213
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
        Transparent = False
      end
      object btn_wrRecibo: TcxButton
        Left = 111
        Top = 227
        Width = 118
        Height = 28
        Caption = 'Recibo'
        OptionsImage.ImageIndex = 14
        OptionsImage.Spacing = 3
        TabOrder = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        OnClick = btn_wrReciboClick
      end
      object btn_wrCancelar: TcxButton
        Left = 230
        Top = 227
        Width = 118
        Height = 28
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 3
        OptionsImage.Spacing = 3
        TabOrder = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        OnClick = btn_wrCancelarClick
      end
      object btn_wrConfirmar: TcxButton
        Left = 349
        Top = 227
        Width = 119
        Height = 28
        Caption = 'Confirmar'
        OptionsImage.ImageIndex = 1
        OptionsImage.Spacing = 3
        TabOrder = 18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        OnClick = btn_wrConfirmarClick
      end
      object btn_wrFechar: TcxButton
        Left = 469
        Top = 227
        Width = 118
        Height = 28
        Caption = 'Fechar'
        OptionsImage.ImageIndex = 6
        OptionsImage.Spacing = 3
        TabOrder = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        OnClick = btn_wrFecharClick
      end
      object edtParcelaResponsavelÎPessoas: TcxDBButtonEdit
        Left = 5
        Top = 19
        Hint = 'F2 - Consulta / F3 - Cadastro'
        Margins.Left = 0
        Margins.Top = 0
        AutoSize = False
        DataBinding.DataField = 'PESSOA_RESPONSAVEL_SEQUENCIA'
        DataBinding.DataSource = DS_Financeiro
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
        ShowHint = True
        Style.HotTrack = False
        TabOrder = 1
        Height = 21
        Width = 82
      end
      object edtParcelaResponsavelÎPessoasÎRAZAOSOCIAL: TcxDBTextEdit
        Left = 88
        Top = 19
        DataBinding.DataField = 'RAZAOSOCIAL'
        DataBinding.DataSource = DS_Financeiro
        Style.HotTrack = False
        TabOrder = 2
        Width = 332
      end
      object cbxTipo: TcxDBComboBox
        Left = 421
        Top = 19
        DataBinding.DataField = 'TIPO'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'A RECEBER'
          'RECEBIDA')
        Style.HotTrack = False
        TabOrder = 3
        OnExit = cbxTipoExit
        Width = 166
      end
      object cbxTipoPagto: TcxDBComboBox
        Left = 5
        Top = 55
        DataBinding.DataField = 'TIPOPAGTO'
        DataBinding.DataSource = DS_Financeiro
        ParentFont = False
        Properties.Items.Strings = (
          'DINHEIRO'
          'CHEQUE'
          'CHEQUE-PR'#201
          'DEP'#211'SITO'
          'BOLETO'
          'CART'#195'O DE CR'#201'DITO'
          'CART'#195'O DE D'#201'BITO'
          'CREDI'#193'RIO'
          'NOTA SIMPLES'
          'NOTA PROMISS'#211'RIA'
          'PERMUTA'
          'CR'#201'DITO'
          'DEP.RETORNO'
          'DUPLICATA')
        Properties.OnValidate = CbParcelaTipoPagtoPropertiesValidate
        Style.HotTrack = False
        TabOrder = 4
        OnExit = cbxTipoPagtoExit
        Width = 281
      end
      object btnCheque: TcxButton
        Left = 287
        Top = 41
        Width = 35
        Height = 35
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360900000000000036000000280000001800000018000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          0000000000000000000000000000000000000E0801184127046B693F07AD844E
          09D790570AEB90570AEB834E09D6683E07AB3F2604690D080116000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000F0901195F39069C995B0CF89E600DFEA1610EFFA262
          0FFFA3620FFFA2620FFEA2620FFFA0610EFE9F600DFF985B0CF75C3706970D08
          0116000000000000000000000000000000000000000000000000000000000000
          000000000000311D035191570AED9F600DFEA2620FFEA56411FEA76612FEA867
          12FEA96713FEA96713FEA86712FEA76612FEA56411FEA2620FFE9F600DFE9057
          0AEB2D1B034B0000000000000000000000000000000000000000000000000000
          00003F2604699D5D0CFDA1610EFEA66411FFA96712FFAB6914FEAE6A15FFB06B
          16FFB06C16FFAF6C16FEB06B16FFAD6A15FEAC6914FFA96712FFA56411FEA261
          0EFF9C5D0CFC3C2404630000000000000000000000000000000000000000321E
          03539D5D0CFDA2620FFFA66511FEAB6813FFAF6B15FFB16D17FEB46F19FFB670
          1AFFB7711AFFB6711AFEB6701AFFB36F19FEB26D17FFAF6B15FFAA6813FEA765
          11FFA2620FFF9C5D0CFC2E1B034C000000000000000000000000110A011C9358
          0AEFA1620EFEA66511FEAB6914FEBC833DFEC69353FEC99455FECB9656FECC97
          57FECD9758FECD9758FECC9757FECB9656FEC99455FEC69353FEBC833CFEAB69
          14FEA66511FEA1620EFE91570AEC0E0801170000000000000000623B06A29F60
          0DFEA66411FFAB6813FFAF6C16FEF2E6D7FFFFFFFFFFFDFDFDFEFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFEFFFFFFFFFDFDFDFEFFFFFFFFFFFFFFFFEFE1D1FEB06C
          16FFAB6813FFA56411FEA0600DFF5E38069A00000000120B011E9A5C0CFAA262
          0FFEA96712FFAF6B15FFB46F19FECA9350FFD5A56AFFD7A66CFEDBA86DFFDDAA
          6EFFDEAA6FFFDDA96FFEDDAA6EFFDAA76DFED8A76CFFD5A46AFFC8914FFEB56F
          19FFAF6B15FFA86712FEA3620FFF995B0CF80E090118462A05749E600DFEA564
          11FEAB6914FEB16D17FEB7721BFEBD761EFEC27A21FEC87D24FECC7F27FED082
          29FED1832AFED1832AFED08229FECC7F27FEC87D24FEC27A21FEBD761EFEB772
          1BFEB16D17FEAB6914FEA56411FE9E600DFE4227046D6F4308B7A1610EFFA766
          12FEAE6A15FFB56F19FFBA741CFEE4C6A1FFFFFFFFFFFDFDFDFEFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFEFFFFFFFFFDFDFDFEFFFFFFFFFFFFFFFFE2C29BFEBB74
          1CFFB56F19FFAD6A15FEA86612FFA1610EFF6A4008AF8B530AE3A3620FFFA867
          12FEB06C16FFB6701AFFBC751DFEC88432FFFAF3EBFFFDFDFDFEFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFEFFFFFFFFFDFDFDFEFFFFFFFFF9F1E9FFC68130FEBD75
          1DFFB6701AFFAF6C16FEA96712FFA3620FFF865009DB995B0BF8A3630FFFA967
          13FEB16C16FFB7711AFFBD761EFEC57B22FFDDAB70FFFDFDFDFEFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFEFFFFFFFFFDFDFDFEFEFEFEFFDCA86BFFC47B22FEBE76
          1EFFB7711AFFB06C16FEAA6713FFA3630FFF94580AF09D6213F9A2630FFEA967
          13FEB06C16FEB6711AFEBD761EFEC47B22FECB7F26FEF0D8BCFEFDFDFDFEFDFD
          FDFEFDFDFDFEFDFDFDFEFDFDFDFEFDFDFDFEEFD5B8FECB7F26FEC47B22FEBD76
          1EFEB6711AFEB06C16FEA96713FEA2630FFE975E10F1945E17E5A3620FFFA867
          12FEB06C16FFB6701AFFBC751EFEC47A21FFCB7E25FFD58F40FEFCF8F3FFFFFF
          FFFFFFFFFFFFFDFDFDFEFFFFFFFFFBF6F0FED58F3EFFCB7E25FFC37A21FEBD75
          1EFFB6701AFFAF6C16FEA96712FFA3620FFF905C17DD7B4F16BBA36412FEA766
          12FEAD6B15FEB46F19FEBA741CFEC07820FEC77C24FECD7F27FEE3B580FEFDFD
          FDFEFDFDFDFEFDFDFDFEFDFDFDFEE2B27CFECD7F27FEC77C24FEC07820FEBA74
          1CFEB46F19FEAD6A15FEA76612FEA46614FE764C15B34B2D077AB2772AFFA564
          11FEAC6914FFB26D17FFB7721BFEBE761EFFC47A21FFC87D24FECE8129FFF3E0
          CBFFFFFFFFFFFDFDFDFEF2DEC7FFCD8028FEC97D24FFC47A21FFBD761EFEB872
          1BFFB26D17FFAB6914FEA66411FFB2772AFF472B0772150D0223B47C31FCA263
          0FFEA96712FFAF6B15FFB46F19FEBA731CFFBF771FFFC37A21FEC87C24FFD292
          47FFFDFAF7FFFBF8F5FED29044FFC77C24FEC47A21FFBF771FFFB9731CFEB56F
          19FFAF6B15FFA86712FEA3630FFFB27B32FA120B021D00000000724A16ACB37A
          2DFEA56411FEAA6813FEB06C16FEB57019FEB9731CFEBD761EFEC07820FEC37A
          21FEDFB789FEDDB584FEC37A21FEC07820FEBD761EFEB9731CFEB57019FEB06C
          16FEAA6813FEA56411FEB57C30FE6B4614A30000000000000000160D0223B682
          3DF4A86918FFA76512FFAB6914FEB16C16FFB56F19FFB7721BFEBB741CFFBD75
          1EFFBE761EFFBD761EFEBD751EFFBA741CFEB8721BFFB56F19FFB06C16FEAC69
          14FFA76512FFA86B1AFEB37F3BF1130C021E0000000000000000000000003D26
          0861C89450FEA76715FFA66512FEAB6813FFAF6B15FFB16D17FEB56F19FFB770
          1AFFB7711AFFB6711AFEB6701AFFB46F19FEB26D17FFAF6B15FFAA6813FEA765
          12FFA76817FFC8944FFE39240859000000000000000000000000000000000000
          000050330C7CCC9956FEAC6F20FEA56411FEA86712FEAB6914FEAD6B15FEAF6C
          16FEB06C16FEB06C16FEAF6C16FEAD6B15FEAB6914FEA86712FEA56411FEAD71
          22FECB9855FE4B2F0B7400000000000000000000000000000000000000000000
          0000000000003E270862BD8C4AF4C7914BFFA76715FFA56411FEA86612FFA967
          12FFAA6713FFA96713FEA96712FFA76612FEA66411FFA76815FFC7924DFEBC8A
          47F33A25085C0000000000000000000000000000000000000000000000000000
          00000000000000000000160E0324754C18AECB9956FDCF9D5BFEBF873EFFB073
          24FFA86917FFA76917FEB07325FFBF873FFED19E5BFFCB9856FC724B17AA150D
          0221000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000180E022650310A7E865C24BFB282
          41EAC89652FDC89652FDB18141E9855B24BE4E310A7C160D0223000000000000
          00000000000000000000000000000000000000000000}
        OptionsImage.Layout = blGlyphRight
        OptionsImage.Spacing = 0
        TabOrder = 5
        TabStop = False
        WordWrap = True
        OnClick = btnChequeClick
      end
      object edtDocumento: TcxDBTextEdit
        Left = 323
        Top = 55
        DataBinding.DataField = 'DOCUMENTO'
        DataBinding.DataSource = DS_Financeiro
        Style.HotTrack = False
        TabOrder = 6
        Width = 97
      end
      object edtParcelaNotaFiscal: TcxDBTextEdit
        Left = 421
        Top = 55
        DataBinding.DataField = 'NOTAFISCAL'
        DataBinding.DataSource = DS
        Style.HotTrack = False
        TabOrder = 7
        Width = 74
      end
      object edtParcelaStatus: TcxDBTextEdit
        Left = 496
        Top = 55
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'STATUS'
        DataBinding.DataSource = DS_Financeiro
        Style.HotTrack = False
        TabOrder = 8
        Height = 21
        Width = 91
      end
      object edtVencto: TcxDBDateEdit
        Left = 216
        Top = 91
        Margins.Left = 0
        Margins.Top = 0
        DataBinding.DataField = 'VENCTO'
        DataBinding.DataSource = DS_Financeiro
        Style.HotTrack = False
        TabOrder = 10
        Width = 186
      end
      object edtDataPagto: TcxDBDateEdit
        Left = 403
        Top = 91
        Margins.Left = 0
        Margins.Top = 0
        DataBinding.DataField = 'DATAPAGTO'
        DataBinding.DataSource = DS_Financeiro
        Properties.Kind = ckDateTime
        Style.HotTrack = False
        TabOrder = 11
        Width = 184
      end
      object edtParcelaPlanoContasÎPlanoContas: TcxDBButtonEdit
        Left = 5
        Top = 127
        Hint = 'F2 - Consulta / F3 - Cadastro'
        Margins.Left = 0
        Margins.Top = 0
        AutoSize = False
        DataBinding.DataField = 'CODPLANOCONTAS'
        DataBinding.DataSource = DS_Financeiro
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        ShowHint = True
        Style.HotTrack = False
        TabOrder = 12
        Height = 21
        Width = 95
      end
      object edtParcelaContaÎContas: TcxDBButtonEdit
        Left = 316
        Top = 127
        Hint = 'F2 - Consulta / F3 - Cadastro'
        Margins.Left = 0
        Margins.Top = 0
        AutoSize = False
        DataBinding.DataField = 'CODCONTA'
        DataBinding.DataSource = DS_Financeiro
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        ShowHint = True
        Style.HotTrack = False
        TabOrder = 13
        Height = 21
        Width = 57
      end
      object edtHistorico: TcxDBTextEdit
        Left = 5
        Top = 198
        DataBinding.DataField = 'HISTORICO'
        DataBinding.DataSource = DS_Financeiro
        Style.HotTrack = False
        TabOrder = 0
        Width = 572
      end
      object edtParcelaValor: TcxDBCurrencyEdit
        Left = 5
        Top = 91
        AutoSize = False
        DataBinding.DataField = 'VALOR'
        DataBinding.DataSource = DS_Financeiro
        Style.HotTrack = False
        TabOrder = 9
        Height = 21
        Width = 210
      end
      object lblNSU: TcxLabel
        Left = 381
        Top = 165
        AutoSize = False
        Caption = '000000000'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Transparent = True
        Height = 17
        Width = 206
      end
      object edtContatos: TcxDBTextEdit
        Left = 5
        Top = 163
        DataBinding.DataField = 'CONTATOS'
        DataBinding.DataSource = DS_Financeiro
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 14
        Width = 365
      end
      object dxLayoutControlPnlParcelaGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Offsets.Bottom = 5
        Offsets.Left = 5
        Offsets.Right = 5
        Offsets.Top = 5
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControlPnlParcelaGroup5: TdxLayoutGroup
        Parent = dxLayoutControlPnlParcelaGroup_Root
        AlignVert = avBottom
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object LayoutItembtn_wrRecibo: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup5
        AlignHorz = ahRight
        CaptionOptions.Visible = False
        Control = btn_wrRecibo
        ControlOptions.OriginalHeight = 28
        ControlOptions.OriginalWidth = 118
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object LayoutItembtn_wrCancelar: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup5
        AlignHorz = ahRight
        CaptionOptions.Visible = False
        Control = btn_wrCancelar
        ControlOptions.OriginalHeight = 28
        ControlOptions.OriginalWidth = 118
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object LayoutItembtn_wrConfirmar: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup5
        AlignHorz = ahRight
        CaptionOptions.Visible = False
        Control = btn_wrConfirmar
        ControlOptions.OriginalHeight = 28
        ControlOptions.OriginalWidth = 119
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object LayoutItembtn_wrFechar: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup5
        AlignHorz = ahRight
        CaptionOptions.Visible = False
        Control = btn_wrFechar
        ControlOptions.OriginalHeight = 28
        ControlOptions.OriginalWidth = 118
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutControlPnlParcelaSeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutControlPnlParcelaGroup_Root
        AlignVert = avBottom
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        CaptionOptions.Text = 'Separator'
        Index = 2
      end
      object GrupoParcelaDados: TdxLayoutGroup
        Parent = dxLayoutControlPnlParcelaGroup_Root
        CaptionOptions.Text = 'New Group'
        ItemIndex = 4
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControlPnlParcelaGroup1: TdxLayoutGroup
        Parent = GrupoParcelaDados
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object liedtParcelaResponsavelÎPessoas: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup1
        CaptionOptions.Text = 'Respons'#225'vel'
        CaptionOptions.Layout = clTop
        Control = edtParcelaResponsavelÎPessoas
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object liedtParcelaResponsavelÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup1
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Layout = clTop
        Control = edtParcelaResponsavelÎPessoasÎRAZAOSOCIAL
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 332
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object licbxTipo: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup1
        CaptionOptions.Text = 'Lan'#231'amento'
        CaptionOptions.Layout = clTop
        Control = cbxTipo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 166
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControlPnlParcelaGroup2: TdxLayoutGroup
        Parent = GrupoParcelaDados
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object licbxTipoPagto: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Tipo de Pagamento'
        CaptionOptions.Layout = clTop
        Control = cbxTipoPagto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 281
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object libtnCheque: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup2
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = btnCheque
        ControlOptions.OriginalHeight = 35
        ControlOptions.OriginalWidth = 35
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liedtDocumento: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup2
        CaptionOptions.Text = 'Documento'
        CaptionOptions.Layout = clTop
        Control = edtDocumento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 97
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object liedtParcelaNotaFiscal: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup2
        CaptionOptions.Text = 'Nota Fiscal'
        CaptionOptions.Layout = clTop
        Control = edtParcelaNotaFiscal
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 74
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object liedtParcelaStatus: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup2
        CaptionOptions.Text = 'Status'
        CaptionOptions.Layout = clTop
        Control = edtParcelaStatus
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 91
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutControlPnlParcelaGroup3: TdxLayoutGroup
        Parent = GrupoParcelaDados
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object liedtVencto: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Dt Vencimento'
        CaptionOptions.Layout = clTop
        Control = edtVencto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 186
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liedtDataPagto: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Dt Pagamento'
        CaptionOptions.Layout = clTop
        Control = edtDataPagto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 184
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControlPnlParcelaGroup4: TdxLayoutGroup
        Parent = GrupoParcelaDados
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object liedtParcelaPlanoContasÎPlanoContas: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup4
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Plano de Contas'
        CaptionOptions.Layout = clTop
        Control = edtParcelaPlanoContasÎPlanoContas
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 95
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lilblParcelaPlanoContasÎPlanoContasÎDESCRICAO: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup4
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = lblParcelaPlanoContasÎPlanoContasÎDESCRICAO
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 84
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liedtParcelaContaÎContas: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup4
        CaptionOptions.Text = 'Conta'
        CaptionOptions.Layout = clTop
        Control = edtParcelaContaÎContas
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 57
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object lilblParcelaContaÎContasÎDESCRICAO: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup4
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = lblParcelaContaÎContasÎDESCRICAO
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 84
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object liedtHistorico: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup_Root
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'Hist'#243'rico'
        CaptionOptions.Layout = clTop
        Control = edtHistorico
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 572
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object liedtParcelaValor: TdxLayoutItem
        Parent = dxLayoutControlPnlParcelaGroup3
        CaptionOptions.Text = 'Valor'
        CaptionOptions.Layout = clTop
        Control = edtParcelaValor
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 210
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lilblNSU: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup10
        AlignHorz = ahClient
        AlignVert = avBottom
        Visible = False
        Padding.Left = 10
        Padding.AssignedValues = [lpavLeft]
        CaptionOptions.AlignVert = tavBottom
        CaptionOptions.Text = 'NSU TEF'
        CaptionOptions.Layout = clTop
        Control = lblNSU
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 200
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liedtContatos: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup10
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Contato'
        CaptionOptions.Layout = clTop
        Control = edtContatos
        ControlOptions.OriginalHeight = 19
        ControlOptions.OriginalWidth = 365
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
        Parent = GrupoParcelaDados
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 4
      end
    end
  end
  inherited DS: TDataSource
    Left = 203
    Top = 384
  end
  inherited TimerStatusBar: TTimer
    Left = 427
    Top = 440
  end
  inherited ImgListBotoes24: TImageList
    Left = 455
    Top = 496
    Bitmap = {
      494C010108000D00040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      000000000000000000002A2A2A2B7070707290909096A2A2A2B6A4A4A4D29191
      91E9969696E5A5A5A5CEA1A1A1B38F8F8F957171717324242425000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      0006000000090000000D00000012000000160000001900000019000000180000
      0015000000110000000C00000008000000050000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005D5D5D5EA6A6A6D6656565FE4E4E4EFF5C5C5CFF737373FF787878FF9494
      94FF909090FF808080FF6A6A6AFF5B5B5BFF494949FF545454FD9C9C9CDA4545
      4546000000000000000000000000000000000000000000000001060606071313
      1314212121222B2B2B2C32323233353535363A3A3A3B3D3D3D3E414141424242
      4243444444454343434442424243414141423939393A2D2D2D2E1F1F1F206666
      6668302E28FF302E28FF8E8D8D97000000000000000000000002000000060000
      000D000000150000001E000000260000002F0000003400000036000000330000
      002D000000250000001C000000130000000B0000000400000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000040101012E0505053E0000001900000000000000000000
      00020000000300000001000000000000000000000003000000080000000B0000
      0003000000000000000000000000000000000000000000000000000000004C4C
      4C4D6C6C6CFD696969FFC7C7C7FFEFEFEFFFF0F0F0FFE3E3E3FFD1D1D1FFD1D1
      D1FFD2D2D2FFD4D4D4FFD6D6D6FFD6D6D6FFE1E1E1FFCACACAFF4B4B4BFF6969
      69F71111111200000000000000000000000000000000070707089A9A9AA5858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF626461FF302E
      28FF858A88FF858A88FF302E28FF000000000000000000000002000000060000
      000E000000160000001F00000028000000300000003600000038000000350000
      002F000000260000001E000000150000000C0000000500000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000170B0B0B663B3B3BC34E4E51DE232325B004040445000000110000
      002001010140000000250000000B0000000E0000002906060661181716870404
      0439000000040000000000000000000000000000000000000000000000007C7C
      7C7F5B5B5BFFEFEFEFFFFCFCFCFFE7E7E7FFDBDBDBFFCECECEFFAFAFAFFFC7C7
      C7FFC5C5C5FFB0B0B0FFC4C4C4FFC6C6C6FFD9D9D9FFF6F6F6FFFFFFFFFF3434
      34FF3C3C3C3D000000000000000000000000000000000E0E0E0F858A88FFE6E7
      E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7
      E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7E7FFA6A6A4FF302E28FF858A
      88FF4F504CFF858A88FF302E28FF000000000000000000000001000000030000
      00070000000B0000000F0000001400000019000000240000001F0000001C0000
      00220202028F000000730000006F0000006D0000006A00000069000000670000
      00660000006600000065000000650000004000000000000000050000001B1010
      106F323232CC5F5F60FC8F908AFF9F9F95FF7E807BFF505051F7252526C63535
      35C85F5F5FF9282829DD1010109E17141198343029DB595649FC797769FF2F2D
      25E00808056D0000000B00000001000000000000000000000000000000009292
      929A616161FFEFEFEFFFE9E9E9FFCACACAFFD8D8D8FFC2C2C2FF8A8A8AFFBABA
      BAFFBABABAFF8A8A8AFFB6B6B6FFC2C2C2FFA6A6A6FFCDCDCDFFFFFFFFFF1A1A
      1AFF606060610000000000000000000000000000000011111112858A88FFE6E7
      E7FFE0E2E3FFDEE2E2FFDEE1E1FFDDE0E1FFDCE0E0FFDADEDFFFDADDDEFFD8DC
      DDFFD7DCDCFFD7DBDBFFD5DADAFFD5D9D9FFD4D8D9FF302E28FF858A88FF4F50
      4CFF858A88FF302E28FF5C5C5C5D000000000000000000000000000000010000
      000100000002000000030000000500000007000000280008229E0000000B0000
      002D293035FF1F2326FE030404F8000000F3000000EE000000EA000000E60000
      00E2000000DD000000D9000000D500000093000000170A0A0A5D262626AE5454
      54F27E7E7AFFADADA1FFDAD9C5FFE9E9D2FFD9DAC5FFA8A89BFF73736FFF6F71
      70FF7C7C7DFF6A6A6AFF535253FD9D9A96FCC6C4BFFF9D9C91FF828274FF3031
      24FF18180FED0606056E0000000E00000000000000000000000000000000A2A2
      A2B26D6D6DFFF4F4F4FFDFDFDFFFBBBBBBFFDADADAFFBCBCBCFF838383FFB9B9
      B9FFBABABAFF838383FFAEAEAEFFCDCDCDFF888888FFA6A6A6FFFFFFFFFF2A2A
      2AFF7F7F7F82000000000000000000000000000000000C0C0C0D858A88FFE6E7
      E7FFE1E4E4FFE0E3E4FFDFE2E3FFDEE2E2FFDDE0E1FFDCDFE0FFB3B7B7FF6D6F
      6CFF636662FF636662FF6D6F6CFFB0B5B5FF878885FF302E28FF4F504CFF858A
      88FF302E28FF5C5C5C5D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000100000022002494F1000E30970000
      002B40494FFF5C6972FF48525AFE1E2226FB030303F2000000EB000000E60000
      00E2000000DE000000DA000000D7000000941A1A1A98505050E8777677FCB1B1
      A8FFDBDAC5FFEAEAD1FFEAEAD2FFE8E8D1FFE9E9D1FFE6E5CDFFD2D1BBFFA5A4
      95FF797976FF6E6F71FF828283FFF9F9F8FFFFFFFFFFBDBCB4FF8D8E80FF3C3F
      31FF27281CFF0F0E07E00404035300000002000000000000000000000000A7A7
      A7C8797979FFFDFDFDFFD0D0D0FFAEAEAEFFE1E1E1FFB3B3B3FF727272FFB8B8
      B8FFB8B8B8FF737373FFA3A3A3FFDCDCDCFF696969FF717171FFFFFFFFFF5252
      52FF9A9A9AA50000000000000000000000000000000005050506858A88FFF2F2
      F2FFE2E5E6FFE1E4E5FFE0E3E4FFE0E2E3FFD4D7D7FF6D706CFF969B99FFD3D7
      D5FFD8DCDAFFD8DCDAFFD3D7D5FF969B99FF4D4E4AFF6F726EFF302E28FF302E
      28FF5C5C5C5D0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000021002CB1F30143D9FB0713
      31A84A5258FF64727BFF626F78FF5D6A73FF444D55FE1A1E21F7020203EA0000
      00E3000000DF000000DC000000D80000009517171661787977D1CECECAF7F4F4
      F0FFF6F5EAFFF1F1E0FFEAEAD7FFE4E3CEFFDEDDC6FFD7D4BCFFD1CCB4FFCCC7
      ABFFAEA68BFF615B4BFF585656FFFEFDFEFFFDFAFBFFC3C1BAFF999A8CFF4547
      3DFF3B3E34FF1D1D15FE0A0A08A201010111000000000000000000000000A0A0
      A0DC8E8E8EFFFDFDFDFFC2C2C2FFA2A2A2FFECECECFFA9A9A9FF696969FFB7B7
      B7FFBABABAFF6A6A6AFF969696FFE3E3E3FF5C5C5CFF515151FFFFFFFFFF6A6A
      6AFF9F9F9FC90606060700000000000000000000000001010102858A88FFF2F2
      F2FFE4E7E6FFE3E5E5FFE2E4E5FFE1E3E4FF6D706DFF9FA6A3FFB4AA9CFFD1C1
      B4FFD1C4BAFFC9BBAEFFC0AC9BFFC9B8A9FF9FA6A3FF555653FF959491FF858A
      88FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000021002BB0F3004BF8FF1E57
      D9FC2E3D58FF6E7C85FF6A7781FF64727BFF5D6A73FF535F69FF292F34FB0000
      00E4000000E1000000DD000000DB00000096000000060B0B0B313F3F3E8F898B
      86D6D0D0CAFFE6E6DCFFEDECDEFFEBEAD9FFDFDDC9FFCCC6AFFFB1AA92FF8F89
      72FF6F6A5CFF57544DFF797979FFF8E3E2FFEAB2AFFFC8C4BBFFA2A295FF484C
      44FF3E433BFF31352BFF11110DBC0303031E0000000000000000060606079393
      93EC999999FFF8F8F8FFB6B6B6FF9D9D9DFFEEEEEEFF9F9F9FFF5F5F5FFFB7B7
      B7FFBBBBBBFF5F5F5FFF878787FFE7E7E7FF555555FF303030FFDFDFDFFF8787
      87FF838383E10000000000000000000000000000000000000000858A88FFF2F2
      F2FFE5E7E8FFE4E6E7FFE4E6E6FFB7BBBAFF828683FFB6AB9EFFDAD0C7FFDBD0
      C8FFCEC1B5FFCEC1B5FFCDC0B5FFC9BBAEFFCAB9AAFF969B99FFC0C2C1FF858A
      88FF0000000000000000000000000000000000000021000047D600005AD60000
      5CD6000560D6000965D6000C68D600106ED6001471D60032D2FC0048F6FF1B5E
      F8FF3569DDFF44536CFF708088FF6C7A83FF64717AFF5A6670FF2F353BFB0000
      00E6000000E2000000DF000000DD000000970000000000000001010101143131
      3079A3A19EFF797977FF8C8B87FF8C8B80FFA7A493FF8A8576FF6A6660FF6463
      60FF646464FF5C5D5EFF767676FFF2E3DAFFEEC1ACFFD0CEC4FFACAE9FFF595D
      54FF414840FF3D4138FF1D1E19D50505042B0000000000000000121212137676
      76FBA6A6A6FFFAFAFAFFB6B6B6FFABABABFFEFEFEFFF929292FF545454FFB4B4
      B4FFBABABAFF555555FF6E6E6EFFE5E5E5FF6A6A6AFF363636FFBCBCBCFFABAB
      ABFF5C5C5CF00A0A0A0B00000000000000000000000000000000858A88FFF2F2
      F2FFE7E8E9FFE6E8E8FFE5E7E7FF989D9BFFA9B0ADFFD8CABEFFE9E3DDFFE0D6
      CFFFD5C8BEFFD2C5B9FFCFC3B7FFCEC2B6FFC4B09FFFA9B0ADFF9B9F9EFF858A
      88FF0000000000000000000000000000000000000021000088F30000B8FF0000
      B9FF0008C2FF0010CAFF0018D2FF0020DBFF0027E3FF0033EBFF0043F4FF0F56
      F8FF2E6CF9FF4573DEFF45556CFF72818AFF6B7882FF606D76FF32383EFC0000
      00E7000000E4000000E1000000DF000000980000000000000000000000004C4C
      4A9ED1D2CEFF373938FF424445FF333234FF5D5D5DFF78787AFF808081FF7D7D
      7EFF6C6B6BFF606060FF4C4B4CFF9A9A9AFFEDEDEDFFF0EFEEFFC1C1B6FF8889
      7EFF444A42FF40453BFF2A2C24E80707063500000000000000002F2F2F306464
      64FFB4B4B4FFFBFBFBFFB4B4B4FFB3B3B3FFEEEEEEFF8D8D8DFF565656FFB9B9
      B9FFBCBCBCFF575757FF6B6B6BFFE1E1E1FF909090FF363636FFA2A2A2FFC0C0
      C0FF383838FA1D1D1D1E00000000000000000000000000000000858A88FFF2F2
      F2FFE8E9EAFFE7E9E9FFE6E8E8FF888D8BFFB3BAB7FFE5DDD5FFEDE8E3FFEAE4
      DEFFE9E2DCFFDDD4CBFFDFD6CDFFD9CEC5FFCFC2B6FFB3BAB7FF717572FF858A
      88FF0000000000000000000000000000000000000021000088F30000B8FF0000
      B8FF0006BFFF000EC8FF0015D0FF001DD8FF0025E0FF002DE8FF003CF0FF004B
      F8FF1B5FF8FF3772F9FF4775DDFF45556CFF707E88FF66747DFF353C41FC0000
      00E9000000E6000000E3000000E1000000980000000000000000000000009392
      8EE0CACBCAFF505251FF898A89FF909090FF8E8D8EFF838383FF717172FF615F
      61FF555454FF575757FF626162FF757474FF989898FFC4C4C4FFEAEAE8FFBABA
      AFFF6A6C62FF383C32FF2C3025ED090907370000000000000000505050515959
      59FFCACACAFFEFEFEFFFB2B2B2FFBFBFBFFFE9E9E9FF848484FF4E4E4EFFC0C0
      C0FFB9B9B9FF505050FF646464FFDEDEDEFFBBBBBBFF2E2E2EFF717171FFF5F5
      F5FF151515FF3131313200000000000000000000000000000000858A88FFF2F2
      F2FFE9EBEBFFE8EAEAFFE7E9E9FF888D8BFFB7BDBAFFECE6E0FFEEE9E4FFEFEA
      E5FFECE6E1FFECE7E2FFEAE4DEFFEAE5DFFFE2D9D1FFB3BAB7FF717572FF858A
      88FF0000000000000000000000000000000000000021000088F30000B8FF0000
      B8FF0003BDFF000BC5FF0012CDFF001AD5FF0021DCFF0028E4FF0033EBFF0041
      F3FF054FF8FF1E61F8FF3470F9FF3E6FDDFF41516CFF6B7983FF383F44FC0000
      00EB000000E8000000E5000000E40000009A000000000000000000000000BBBB
      B8FFBDBDBDFF616262FF939392FF818180FF6A6B6AFF555455FF515151FF5B5B
      5CFF767677FF919090FF9D9E9EFF898889FF5E5E5EFF4E4E4DFFACADACFFE3E3
      E1FFB2B1A9FF55554AFF32352BEB0C0C0C3600000000000000006E6E6E705252
      52FFDCDCDCFFF6F6F6FFE2E2E2FFDCDCDCFFE1E1E1FFA3A3A3FF989898FFC9C9
      C9FFC8C8C8FF979797FF858585FFB6B6B6FFB3B3B3FF6D6D6DFF989898FFCACA
      CAFF020202FF5B5B5B5C00000000000000000000000000000000858A88FFFFFF
      FFFFEBECECFFEAEBEBFFE9EAEAFF999D9CFFA9B0ADFFDACBBDFFF0ECE8FFF1ED
      E8FFF1EDE8FFF1EDE8FFEDE8E3FFECE7E1FFCDBBABFFA9B0ADFF878987FF858A
      88FF00000000000000000000000000000000000000210E0E8EF44A4ACDFF4545
      CBFF4041CBFF3940CFFF313ED4FF2A3DD9FF233DDEFF1A3BE2FF133BE8FF0B3F
      EEFF0446F3FF034EF8FF165BF8FF2566F9FF294788FF657178FF3B4348FD0000
      00EC000000EA000000E8000000E60000009B000000000000000000000000BBBB
      B8FFB7B6B7FF545353FF595859FF535252FF5E5E5EFF787778FF8E8E8EFF9B9B
      9BFF919090FF6E6F6EFF404040FF1A1A19FF181817FF272827FF373636FF7575
      76FFD5D5D6FF9E9D96F9403F3BA80404041A00000000000000008888888C5A5A
      5AFFE3E3E3FFFFFFFFFFEEEEEEFFE1E1E1FFDADADAFFE1E1E1FFD9D9D9FFC6C6
      C6FFBABABAFFD2D2D2FFC0C0C0FF9F9F9FFFA6A6A6FFD7D7D7FFDFDFDFFFD0D0
      D0FF070707FF8282828700000000000000000000000000000000858A88FFFFFF
      FFFFECEEEEFFEBECECFFEAECECFFBBBEBDFF969B99FFBDB1A4FFE8DED8FFEFE9
      E3FFF2EEE9FFF0ECE7FFF0EBE6FFE5DDD4FFBCB2A4FF969B99FFC0C2C1FF858A
      88FF000000000000000000000000000000000000002112128FF45F5FD3FF5C5C
      D2FF5656D0FF4E51D1FF464FD5FF3D4BD8FF3347DCFF2A45E0FF2041E5FF173F
      E9FF0D40EDFF0342F1FF0047F6FF183F95FF6A7986FF77868FFF3E454BFD0000
      00EE000000EC000000EA000000E90000009B000000000000000000000000BABA
      B7FFB4B4B4FF626262FF767777FF888889FF959595FF939393FF828282FF6767
      66FF515151FF535252FF5C5C5CFF616161FF373636FF080807FF1F1E1EFF5857
      57FFA0A0A0FB535151A50C0C0A2E0000000200000000000000009C9C9CA67171
      71FFFCFCFCFFFFFFFFFFFFFFFFFFFEFEFEFFF4F4F4FFEAEAEAFFD8D8D8FFD0D0
      D0FFC4C4C4FFB9B9B9FFAFAFAFFFA3A3A3FFA5A5A5FFA2A2A2FFBBBBBBFFD1D1
      D1FF272727FF9B9B9BAC00000000000000000000000000000000858A88FFFFFF
      FFFFEDEEEFFFECEEEDFFECECEDFFEAEBECFF9A9E9CFF9FA6A3FFBEB3A6FFDAC8
      BAFFE8DFD6FFE7DDD5FFD3C0AEFFBFB5A7FF9FA6A3FF838684FFF2F2F2FF858A
      88FF0000000000000000000000000000000000000021131391F46D6DD7FF6A6A
      D6FF6262D4FF5858D1FF4F54D4FF454FD6FF3B4ADAFF3146DCFF2742E0FF1E3F
      E4FF133AE7FF0837EBFF193893FF788895FF8B9AA2FF7C8C94FF40484DFD0000
      00F0000000EE000000EC000000EB0000009C0000000000000000000000009393
      91E8BFBFBEFF777778FF828282FF878787FF767676FF666566FF606161FF7374
      74FF9E9D9EFFCDCDCEFFDADADAFFDCDCDDFF868587FF464546FF717171FE6261
      61DF3434348B0404041900000000000000000000000000000000A6A6A6C65A5A
      5AFF6A6A6AFF474747FF373737FF2F2F2FFF272727FF1F1F1FFF181818FF1313
      13FF161616FF222222FF2E2E2EFF393939FF464646FF5B5B5BFF818181FFABAB
      ABFF4B4B4BFF999999C900000000000000000000000000000000858A88FFFFFF
      FFFFEFEFEFFFEEEFEEFFEDEDEEFFECEDEDFFDEE0E0FF9A9E9CFF969B99FFA9B0
      ADFFB3BAB7FFB3BAB7FFA9B0ADFF969B99FF828683FFB3B6B7FFCCCDCDFF858A
      88FF00000000000000000000000000000000000000210E0E8EF45151CFFF5353
      CFFF4D4DCEFF4646CCFF3F40CCFF373ECFFF303CD3FF2F3FD7FF2C41DCFF223D
      DEFF1535E1FF1D3390FF92A0ABFF9DAEB5FF90A0A7FF829199FF424B50FE0000
      00F3000000F0000000EF000000EE0000009D0000000000000000000000002525
      246F7C7C79D76A6A68F6525253FF6B6A6BFF6A6A6AFF6D6C6DFEB8B8B9FFE8E8
      E9FFE7E7E8FFDDDDDEFFBDBDBEFF8D8C8DFF6F6E6FFF706F70FF515151FB1011
      107C000000030000000000000000000000000000000082828287353535FE5555
      55FFA2A2A2FFB9B9B9FFC6C6C6FFCBCBCBFFCDCDCDFFD0D0D0FFDADADAFFE2E2
      E2FFE1E1E1FFCFCFCFFFBBBBBBFFA9A9A9FF989898FF858585FF5F5F5FFF3838
      38FF262626FF525252F514141415000000000000000000000000858A88FFFFFF
      FFFFF0F0F1FFEFF0F0FFEEEFEFFFEDEEEEFFECEDEEFFECEDEDFFBCBEBEFF999D
      9CFF888D8BFF888D8BFF959A98FFADB1B0FFC1C3C3FFAFB1B1FFAEAFAFFF858A
      88FF000000000000000000000000000000000000001000001B7F00001D810000
      1D8100001D8100001D8100001D8100011E8100011C8E1922A0F72F3ED6FF2035
      D8FF152581FF9DAAB4FFBFCDD2FFA8B8BEFF95A5ACFF86959DFF444C52FE0000
      00F5000000F3000000F1000000F00000009E0000000000000000000000000202
      020F1D1D1C5A4C4C49A96B6C6AE64D4D4CD93B3B3BBD464646AF8D8D8FD28B8B
      8BE1808080F0707070FF666666FF636263FF636464FF656464FF595858FB1717
      178000000005000000000000000000000000000000008E8E8EDDFFFFFFFFF9F9
      F9FFDEDEDEFFC5C5C5FFACACACFF969696FF797979FF606060FF5E5E5EFF5C5C
      5CFF5D5D5DFF616161FF656565FF6A6A6AFF6D6D6DFF727272FF757575FF9494
      94FFCCCCCCFF767676FF9D9D9DB8000000000000000000000000858A88FFFFFF
      FFFFF2F2F2FFF1F1F1FFF0F0F0FFEEEFF0FFEDEEEEFFEDEEEEFFECEDEDFFEAEB
      ECFFE9EBEBFFE8EAEBFFCBCCCCFFB6B7B9FF818383FF818384FF9C9D9DFF858A
      88FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000021181D99F42934CFFF050D
      66DF69727DFFCADADEFFC4D2D7FFB7C6CBFF9AABB2FF8999A0FF464E54FE0000
      00F7000000F5000000F4000000F30000009F0000000000000000000000000000
      0000000000070909071E1717163310100F2D0505051F040404190B0B0B2F0D0D
      0D412A2A2AB3575657FF6B6B6BFF6C6C6CFF6B6B6BFF6E6D6DFF626162FC1B19
      198500000006000000000000000000000000000000006F6F6FF0ABABABFF6C6C
      6CFF494949FF434343FF464646FF4C4C4CFF545454FF606060FF696969FF7373
      73FF717171FF656565FF585858FF4C4C4CFF484848FF464646FF3D3D3DFF4545
      45FF929292FFB0B0B0FF8D8D8DDD000000000000000000000000858A88FFFFFF
      FFFFF3F3F3FFF2F2F2FFF2F2F1FFF0F1F1FFEFEFF0FFEEEFEFFFEDEEEEFFECED
      EDFFEBECEDFFEAECECFF9B9C9BFF858A88FF858A88FF858A88FF858A88FF858A
      88FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000002112138FF4060A62D90000
      0853889598FFD1E0E4FFC9D8DCFFBECCD1FFACBABFFF909FA6FF485055FE0000
      00F9000000F7000000F6000000F5000000A00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001D1D1D83616061FF757575FF737373FF747474FF757575FF6E6E6EFD2121
      21950000000C00000000000000000000000000000000686868F1565656FFAAAA
      AAFFBABABAFFC0C0C0FFCACACAFFD3D3D3FFDADADAFFDBDBDBFFDADADAFFD9D9
      D9FFD9D9D9FFDBDBDBFFDDDDDDFFD9D9D9FFD1D1D1FFC7C7C7FFBFBFBFFF9C9C
      9CFF727272FF464646FF636363F3000000000000000000000000858A88FFFFFF
      FFFFF3F3F3FFF3F3F3FFF2F3F2FFF1F2F1FFF0F1F0FFF0F0F0FFEEEFEFFFEDEE
      EFFFEDEEEDFFEBECECFFA3A4A4FFF0F0F0FFFFFFFFFFF4F4F4FFABABABFF858A
      88FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000002100003EDA000006330000
      00288E999CFFD6E6EAFFCDDCE1FFC1CFD4FFB3C1C6FFA5B2B8FF50585CFF0000
      00FB000000FA000000F8000000F8000000A10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000016161660696969F68F8F8FFF878687FF828282FF828282FF7E7E7EFF2E2E
      30AB03030316000000000000000000000000000000008888888E373737FFD3D3
      D3FFE3E3E3FFD7D7D7FFDADADAFF737373FF515151FF545454FF545454FF5454
      54FF545454FF545454FF535353FF4F4F4FFFA5A5A5FFD7D7D7FFD7D7D7FFE6E6
      E6FFDCDCDCFF343434FF9F9F9FBC000000000000000000000000858A88FFF6F6
      F6FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF1F1F1FFF0F0F0FFEFF0
      F0FFEEEEEFFFEDEEEEFFAEAFAFFFE9E9E9FFFFFFFFFFB3B3B3FF858A88FF2525
      2526000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000190000042F000000000000
      0028929FA2FFDCECF0FFD1E0E4FFC3D2D6FFB5C2C8FFA7B3B9FF525B60FF0000
      00FE000000FC000000FB000000FA000000A20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F0F3F6B6C6BE6B1B1B0FFB9B9B9FFC3C3C3FFC5C5C5FF9E9F9FFF393B
      3BB80202021C00000000000000000000000000000000000000004949494A8080
      80E7676767FFB2B2B2FFDADADAFF464646FF383838FF3C3C3CFF3C3C3CFF3C3C
      3CFF3C3C3CFF3C3C3CFF3C3C3CFF313131FF8D8D8DFFDFDFDFFFBCBCBCFF6E6E
      6EFF444444FB9494949F0B0B0B0C000000000000000000000000858A88FFD3D3
      D3FFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
      F9FFF8F9F9FFF8F9F9FFE7E7E7FFE4E4E4FFCDCDCDFF858A88FF2A2A2A2B0101
      0102000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      002897A3A6FFE0F1F4FFD2E2E6FFC4D2D7FFB6C3C9FFA7B4BAFF535B60FF0000
      00FE000000FE000000FD000000FD000000A20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080808255C5C5CC5B8B9B9FCB9B9BAFA9A9B9CED7C7D7DE3545454C41616
      1658000000070000000000000000000000000000000000000000000000000000
      000026262627707070729E9E9EB9343434FA1D1D1DFF1B1B1BFF1B1B1BFF1B1B
      1BFF1B1B1BFF1B1B1BFF1C1C1CFF1B1B1BFF4F4F4FF7989898D4989898A64E4E
      4E4F00000001000000000000000000000000000000000000000065656566858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF2F2F2F30000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      002899A5A8FFE2F1F5FFD3E2E6FFC4D3D7FFB6C3C9FFA7B4BAFF535B60FF0000
      00FE000000FE000000FE000000FE000000A30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101010A1818184D3A3B3B7A313232751D1D1D5C0E0E0E48030303220000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000898989906D6D6DFF6F6F6FFF6F6F6FFF6F6F
      6FFF6F6F6FFF6F6F6FFF6F6F6FFF707070F83B3B3B3C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00172A2E2ED3333638D02D3334D0292D2FD026292BD0222627D016181ACC0000
      00A3000000A3000000A3000000A3000000750000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000784C
      0BFF784C0BFF7A4B06FF794B06FF794B06FF794B06FF794B06FF794B06FF794B
      06FF794B06FF794B06FF794B06FF794B06FF794B06FF794B06FF784A05FF7445
      06FF744506FF744506FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000373737387171727887878FAE66667ED82222
      4BF522224BF566667ED887878FAE717172783737373800000000000000000000
      000000000000000000000000000000000000000000000000000000000000784C
      0BFFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EE
      E4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EEE4FFF2EE
      E4FFF2EEE4FF744506FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010606
      060713131314212121222B2B2B2C32323233353535363A3A3A3B3D3D3D3E4141
      414242424243444444454343434442424243414141423939393A2D2D2D2E1F1F
      1F20111111120303030400000001000000000000000000000000000000000000
      0000000000003C3C3C3D8484889835355BEF03038FFF0605A2FF0707AFFF0808
      B9FF0808B9FF0707AFFF0605A2FF03038FFF35355BEF848488983C3C3C3D0000
      0000000000000000000000000000000000000000000000000000000000007D51
      12FFEEE9E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2EEE4FF7D5112FF00000000000000000000000000000000000000000000
      00000000000000000000030303041C1C1C1D206913FF1C1C1C1D040404050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707089595
      95A5858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF969797A90F0F0F1002020203000000000000000000000000000000000000
      00006666676A666681D80605A6FF0B0BC2FF1010D6FF1211E1FF1212E6FF1212
      E8FF1212E6FF1111E3FF1110DBFF0D0DC6FF0A0ABEFF0605A4FF666681D86666
      676A000000000000000000000000000000000000000000000000000000009066
      28FFEEE9E1FFFFFFFFFFF2F0E8FFF2EFE3FFF2EFE3FFF2EFE5FFF2EFE5FFF2EF
      E5FFF2EFE5FFECE8DCFFECE2DAFFEDE5DBFFEFE8DCFFF0E9E0FFE8DFCFFFFFFF
      FFFFE4DBCCFF83520EFF00000000000000000000000000000000000000000000
      000000000000030303041B1B1B1C1F6B16FF13A130FF1F6A16FF1C1C1C1D0505
      0506000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E0F858A
      88FFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FF858A88FF1515151603030304000000000000000000000000000000007272
      747919194EF80B0ABCFF1010CBFF1212D4FF1111CDFF1010C4FF0E0EBFFF0D0D
      BDFF0D0DC0FF0F0FC5FF1111CCFF1311D2FF1211D0FF0D0DBCFF0A09B8FF1919
      4EF8727274790000000000000000000000000000000000000000000000009066
      28FFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EEFFF5F2EEFFF5F2EEFFF5F2EEFFF5F2
      EEFFF5F2EFFFF7F4EDFFF5F4EAFFF0F2EAFFF2F0EDFFF6F4F1FFF3EEE8FFFFFF
      FFFFE3DACAFF84540FFF00000000000000000000000000000000000000000000
      0000020202031B1B1B1C1F6E19FF14A335FF08D459FF14A335FF1F6D19FF1C1C
      1C1D040404050000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000011111112858A
      88FFFFFFFFFFE0E2E3FFDEE2E2FFDEE1E1FFDDE0E1FFDCE0E0FFDADEDFFFDADD
      DEFFD8DCDDFFD7DCDCFFD7DBDBFFD5DADAFFD5D9D9FFD4D8D9FFD2D8D8FFFFFF
      FFFF858A88FF13131314030303040000000000000000000000006666676A1919
      51F80F0DC3FF1212C2FF1010B9FF0C0CA7FF0C0CA7FF060587FF02026AFF0000
      4CFF00004CFF02026DFF060696FF0B0BAFFF0F0FBFFF1212C1FF1010BEFF0D0C
      BEFF191951F86666676A00000000000000000000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2
      EDFFF5F2EDFFF5F2EDFFF5F2EBFFF4F2E7FFF5F2E8FFF5F2EDFFF2EFE4FFFFFF
      FFFFE3D9CAFF84540FFF00000000000000000000000000000000000000000001
      00011C1C1C1D1E6F1CFF14A53CFF0EC35FFF12AE5AFF0EC35FFF14A53CFF1E6F
      1CFF1C1C1C1D0202020300000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C0D858A
      88FFFFFFFFFFE1E4E4FFE0E3E4FFDFE2E3FFDEE2E2FFDDE0E1FFDCDFE0FFDBDE
      DFFFD9DDDEFFD8DDDEFFD8DCDDFFD7DBDCFFD5DADBFFD5D9DAFFD4D8D9FFFFFF
      FFFF858A88FF0909090A0101010200000000000000003C3C3C3D666687D80F0F
      C4FF1212BEFF0F0FACFF0E0EA6FF0E0EABFF060684FF71719AFFB0B0C2FFD9D9
      DFFFD9D9DFFFB0B0C2FF71719AFF323267FD0A09AAFF1010C1FF1111B9FF1111
      BCFF0E0EC1FF666687D83C3C3C3D000000000000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2
      EDFFF5F2EDFFF5F2EDFFF6F2EEFFF6F3EEFFF6F4EEFFF6F4F0FFF3F2E7FFFFFF
      FFFFE3D9CAFF84540FFF00000000000000000000000000000000030303041C1C
      1C1D1D7320FF15A843FF13C96AFF19B163FF1AAC61FF19B163FF13C96AFF15A8
      43FF1D7320FF1C1C1C1D04040405000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005050506858A
      88FFFFFFFFFFE2E5E6FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF000000FF0057CEFFAEC3DAFFD8DCDDFFD7DBDCFFD7DADBFFD6D9DAFFFFFF
      FFFF858A88FF0101010200000000000000000000000084848A980C0BB9FF1413
      C3FF1010AEFF1010AAFF1010AAFF1010ADFF1010B8FF000049FFDDDDDEFFDDDD
      DEFFDDDDDEFFDDDDDEFFDDDDDEFFB9B9C6FF555588FF0908A1FF1212C6FF1212
      B9FF1312C1FF0C0BB8FF84848A98000000000000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2
      EDFFF8F5F0FFF3F2ECFFF6F2EFFFF9F4F4FFF9F5F3FFF9F5F1FFF5F2EBFFFFFF
      FFFFE3D9C9FF84540FFF000000000000000000000000040404051B1B1B1C1C76
      23FF15AA4AFF17CE74FF1EB96DFF20B46BFF2FD59EFF20B46BFF1EB96DFF17CE
      74FF15AA4AFF1C7623FF1C1C1C1D050505060000000000000000000000000000
      000000000000000000000000000000000000000000000000000001010102858A
      88FFFFFFFFFFE4E7E6FFE3E5E5FFE2E4E5FFE1E3E4FFE0E2E3FFDFE1E3FFDDE1
      E1FF0057CEFF000000FF315266FF0057CEFFACC3DAFFD8DCDCFFD7DADBFFFFFF
      FFFF858A88FF0101010200000000000000003737373835356FEF1414D1FF1414
      B9FF1212B1FF1212B3FF1212B1FF1212B1FF1313BBFF07078FFF00004EFFD1D1
      D3FFD1D1D3FFD1D1D3FFD1D1D3FFD1D1D3FFC6C6CCFF515187FF0D0CB4FF1413
      C3FF1515BDFF1313D0FF35356FEF373737380000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F1
      ECFFF9F7F2FFF4F2EDFFF8F4F0FFFCF6F4FFFAF5F2FFFDF6F4FFF5EEECFFFFFF
      FFFFE3D9C9FF84540FFF0000000000000000020202031B1B1B1C1B7928FF16AD
      51FF1CD482FF24C177FF26BD75FF36D7A8FF49E6C0FF39DCB0FF26BD75FF24C1
      77FF1CD482FF16AD51FF1B7928FF1C1C1C1D0404040500000000000000000000
      000000000000000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFE5E7E8FFE4E6E7FFE4E6E6FFE2E5E5FFE2E4E4FFE0E3E4FFDFE2
      E3FFDFE1E2FF0057CEFF39AFFCFF0074F5FF0057CEFFD9DCDEFFD8DCDDFFFFFF
      FFFF858A88FF000000000000000000000000717173780C0BA7FF1616CAFF1515
      BAFF1313B9FF090993FF1414C2FF1515C1FF1515BAFF1615C5FF090999FF0000
      54FFC9C9CBFFC9C9CBFFC9C9CBFFC9C9CBFFC9C9CBFFA8A8B8FF2C2C6DFD1212
      C4FF1515BEFF1616CAFF0C0BA7FF717173780000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2
      ECFFF7F5EFFFFBF5F2FFFCF9F2FFFAF7F1FFFAF5F1FFFCF7F6FFF4ECE1FFFFFF
      FFFFE3DACBFF845410FF00000000000000001B1B1B1C1A802CFF15B057FF1FD8
      8AFF28C781FF2AC37CFF35D8A8FF44E7BBFF1FD587FF45E8BDFF3ADEB4FF2EC9
      8BFF28C781FF1FD88AFF15B057FF1A802CFF1D1D1D1E02020203000000000000
      000000000000000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFE7E8E9FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF0057CEFF00D4F5FF39AFFCFF0074F5FF0057CEFFADC3DAFFFFFF
      FFFF858A88FF000000010000000000000000878795AE1211CCFF1717C2FF1717
      C6FF0B0BA1FF616195FF000059FF09099AFF1817C9FF1717BEFF1817C9FF0A09
      9FFF000059FFCACACCFFCACACCFFCACACCFFCACACCFFCACACCFF616195FF0D0C
      AEFF1817C7FF1717C2FF1211CCFF878795AE0000000000000000000000009E79
      3FFFEEE9E1FFFFFFFFFFF5F3EDFFF5F2EDFFF5F2ECFFF3F0EBFFF4F0EBFFF8F0
      F0FFFAF2F7FFFAF8F1FFFAFDF1FFFBFCF9FFFCF8F9FFF7F3EEFFEEE5DAFFFFFF
      FFFFE5DBCFFF845511FF0000000000000000198230FF16B15CFF23EAA1FF2BD0
      8DFF2EC987FF36D7A2FF46EBBFFF16B05BFF198230FF16B05BFF48ECC2FF3CDD
      AFFF2EC987FF2CCC89FF22DB91FF16B15CFF198230FF1D1D1D1E030303040000
      000000000000000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFE8E9EAFFE7E9E9FFE6E8E8FFE5E7E8FFE4E6E7FFE2E5E6FFE2E5
      E5FFE1E4E4FFE0E2E3FF0057CEFF00D4F5FF39AFFCFF0074F5FF0057CEFFCCDE
      F5FF858A88FF000000000000000100000000666693D81918DCFF1A19C2FF1B1B
      D3FF06068AFF9A9AB4FFCCCCCEFF00005FFF0B0BA4FF1B1BCFFF1A1AC4FF1B1B
      CFFF0B0BA4FF00005FFFCCCCCEFFCCCCCEFFCCCCCEFFCCCCCEFF9A9AB4FF0606
      8AFF1B1BD4FF1A19C2FF1918DCFF666693D80000000000000000000000009C7B
      4CFFEEE9E1FFFFFFFFFFF7F4ECFFF6F2EFFFF5F2ECFFF7F4F0FFF9F5F3FFFAF4
      F3FFFAFAF3FFFAFDF5FFFBFAF9FFFCF7F6FFF7F5EDFFF4EDE9FFE9E0D4FFFFFF
      FFFFE2D3C4FF855713FF000000000000000008080809198634FF18B665FF48EB
      BEFF33DA9EFF49ECC1FF17B462FF198634FF00000000198634FF17B462FF4DED
      C5FF3EDEAEFF33D090FF31D392FF26E09AFF17B563FF198635FF1C1C1C1D0505
      050600000000000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFE9EBEBFFE8EAEAFFE7E9E9FFE6E8E9FFE6E8E8FFE5E7E7FFE3E5
      E6FFE2E5E5FFE2E4E5FFE0E3E4FF0057CEFF00D4F5FF39AFFCFF0074F5FF0057
      CEFF5074A1FF000000000000000100000000232377F51F1EECFF1B1BC4FF1E1E
      DEFF000070FFC2C2CCFFD1D1D3FFD1D1D3FF000065FF0C0CA7FF1D1DD4FF1C1C
      C9FF1D1DD4FF0C0CA7FF000065FFD1D1D3FFD1D1D3FFD1D1D3FFC2C2CCFF0000
      70FF1E1EDEFF1B1BC4FF1F1EECFF232377F5000000000000000000000000A086
      57FFEEE9E1FFFFFFFFFFFBFAF4FFF9F8F3FFF8F8EFFFFAF8F6FFFBF9FBFFFAF9
      F8FFFAFBF6FFFBFCFCFFF9F8F9FFF5F4EEFFF2EDE4FFEDE9E3FFE3DBCEFFF8F4
      F2FFDACAB6FF875915FF0000000000000000000100010909090A1A8D3BFF18B9
      6AFF51F4CCFF17B666FF188A38FF000000000000000000000000188A38FF17B6
      66FF52F0C8FF40E1AEFF38D899FF35DA9BFF2AE5A2FF17B767FF188A39FF1C1C
      1C1D04040405000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFEBECECFF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF0057CEFF00D4F5FF39AFFCFF0074
      F5FF0057CEFF75787B7D000000000000000023237CF52221F3FF1E1EC9FF2222
      E3FF010179FFCBCBD5FFDBDBDCFFDCDCDEFFDEDEDFFF000088FF2220BCFF3D3D
      E3FF3A3AD9FF3939E2FF1D1CB8FF00007AFFDADADCFFD8D8DAFFC9C9D2FF0000
      75FF2121E3FF1E1EC9FF2221F3FF23237CF5000000000000000000000000A58E
      63FFEEE9E1FFFFFFFFFFFCFFFCFFFAFCF6FFFAFCF4FFFAFAF9FFFAFAFDFFFAFA
      FDFFFAFAFDFFFCF7F9FFF5F5F2FFEEF1E7FFEFE5E0FFE7E4DBFFDED4C7FFEFE6
      E0FFD1BFA5FF885B18FF0000000000000000000000000001000102020203178D
      3CFF17B86BFF178D3CFF0000000000000000000000000000000000000000178D
      3CFF17B86BFF58F2CDFF46E6B4FF41E0A6FF3AE0A2FF2DE9A8FF17B96CFF178D
      3CFF1C1C1C1D020202030000000000000000000000000000000000000000858A
      88FFFFFFFFFFECEEEEFFEBECECFFEAECECFFE9EBEBFFE8EAEAFFE7E8E9FFE6E7
      E9FFE5E7E7FFE4E7E7FFE3E5E5FFE2E5E5FFE1E4E4FF0057CEFF00D4F5FF39AF
      FCFF0074F5FF0057CEFF75787B7D0000000066669BD8201FEAFF2121D2FF2322
      E5FF0A0998FFA9A9C6FFDFDFE0FFE1E1E2FFE3E3E4FFE4E4E5FF00008FFF2322
      BFFF3D3DE6FF3A3ADCFF3737E4FF1A18B7FF000077FFDEDEDFFFA8A8C4FF0808
      97FF2322E4FF2121D2FF201FEAFF66669BD8000000000000000000000000B194
      6CFFEEE9E1FFFFFFFFFFFCFCFBFFFAFAF5FFFAFAFBFFFAFAFBFFFAFAFAFFFAFA
      FBFFFCFCFAFFF7F5EBFFF2EFE5FFEEEAE3FFE9E2D9FFE4DDD1FFDCCDBDFFE3DB
      CCFFC7B695FF8A5C1BFF00000000000000000000000000000000000000000101
      0102169140FF0000000000000000000000000000000000000000000000000000
      0000169140FF17BB6EFF5DF5D0FF4BEBBBFF44E5ACFF3DE5A7FF30EDAEFF17BD
      70FF169140FF1C1C1C1D0303030400000000000000000000000000000000858A
      88FFFFFFFFFFEDEEEFFFECEEEDFFECECEDFFEAEBECFFEAEBEBFFE8EAEAFFE8E9
      E9FFE6E8E9FFE6E7E7FFE5E6E7FFE3E6E6FFE8EAEBFFDCDFE1FF0057CEFF00D4
      F5FF39AFFCFF0074F5FF0057CEFF00000000878799AE1D1BD5FF2423DCFF2424
      E2FF1514BCFF6E6EAFFFE3E3E4FFE4E4E5FFE5E5E5FFE5E5E6FFE6E6E6FF0000
      84FF1918B7FF2D2DE6FF2A2AD9FF2828E5FF1110B1FF000075FF6E6EAFFF1312
      BCFF2424E0FF2423DCFF1D1BD5FF878799AE000000000000000000000000B89E
      73FFEEE9E1FFFFFFFFFFFCFCFCFFFAFAFAFFFAFAFAFFFAFAFBFFFAFBFCFFFAFC
      F9FFF8F9F5FFF7F2E7FFF1EDE3FFECE8E0FFEAE0D7FFE5D8CFFFDAC8B7FFDED2
      C1FFC1AE8FFF8B601EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000159445FF17BC73FF60F6D4FF4FEEBEFF48E9B1FF41E9ADFF33F0
      B3FF17BE75FF159445FF1C1C1C1D05050506000000000000000000000000858A
      88FFFFFFFFFFEFEFEFFF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FFBABDBEFF0057
      CEFF00D4F5FF39AFFCFF0057CEFF00000000717174781716BCFF2A2AEEFF2726
      DFFF2221E5FF333398FDC4C4D9FFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEA
      EBFF000080FF1211B4FF2827E9FF2626DDFF2727E4FF2524E7FF1313BAFF2323
      DEFF2626DDFF2A2AEEFF1716BCFF71717478000000000000000000000000BBA4
      7BFFEEE9E1FFFFFFFFFFF9FCFCFFFAFAFAFFFAFAFAFFFAFBFCFFFAFCF9FFF8F9
      F0FFF5F1EBFFF0EEE5FFEBE3DAFFC5B395FFC5B395FFC4A688FFBEA57AFFBEA5
      7AFFA48046FF8E6325FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000149748FF17BF77FF65F8D7FF52F0C2FF4CEDB7FF44ED
      B3FF35F2B8FF17C179FF149748FF1C1C1C1D000000000000000000000000858A
      88FFFFFFFFFFF0F0F1FFEFF0F0FFEEEFEFFFEDEEEEFFECEDEEFFECEDEDFFEBEB
      ECFFE9EAEBFFE8EAEAFFE7E9E9FFD6D7D7FFCFD2D3FFC1C3C3FFAFB1B1FFFFFF
      FFFF0057CEFF0057CEFF5A5A5B5C0000000037373738363697EF2F2DF7FF2B2A
      E7FF2B2AF3FF1D1BCBFF5E5EB1FFE4E4EBFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FF000085FF1212B7FF2929E8FF2827DBFF2827DBFF2828DEFF2828
      DCFF2D2DE6FF2D2BF7FF363697EF37373738000000000000000000000000BCA6
      82FFEEE9E1FFFFFFFFFFF7FCFCFFFAFAFAFFFAFBFBFFFAFCFAFFF8F9F1FFF4F1
      E6FFF1EBE2FFEEEAE4FFE0D4C3FFBDA176FFFFFFFFFFF3F1F0FFF2EEE4FFDAD3
      C6FFB89D72FF906628FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000139B4CFF17C17BFF69FADDFF51F3C3FF4DF1
      BBFF42F2B9FF2AF8C1FF17C380FF139B4CFF000000000000000000000000858A
      88FFFFFFFFFFF2F2F2FFF1F1F1FFF0F0F0FFEEEFF0FFEDEEEEFFEDEEEEFFECED
      EDFFEAEBECFFE9EBEBFFE8EAEBFFCBCCCCFFB6B7B9FF818383FF818384FFFFFF
      FFFF858A88FF0000000000000000000000000000000084848F982220D2FF3A39
      F9FF2F2EEBFF2E2DFFFF1917C1FF6161B6FFCFCFE5FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FF00008AFF2928F0FF2A29E0FF2929DCFF2929DCFF3534
      E6FF3232F8FF201ED0FF84848F9800000000000000000000000000000000BCA5
      84FFEEE9E1FFFFFFFFFFF9FCFCFFFAFAFBFFFCFCFCFFF8F9F4FFF3F0EAFFEFE9
      E0FFEEE3DAFFEDE3DAFFD1C1A9FFBDA176FFFFFFFFFFF2EEE4FFDCCEBDFFB89D
      72FF9E793FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000129D50FF17C382FF6DFCDDFF4CF6
      C3FF48FACBFF17C584FF129D50FF00000000000000000000000000000000858A
      88FFFFFFFFFFF3F3F3FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FFEAECECFF9B9C9BFF858A88FF858A88FF858A88FF858A
      88FF858A88FF000000000000000000000000000000003C3C3C3D6868A6D83331
      EFFF4E4DF8FF3C3CF2FF302FFFFF1F1ED0FF3737A7FD8080C6FFBEBEE1FFEAEA
      F4FFEAEAF4FFBEBEE1FF8080C6FF1716C7FF2C2CE6FF2F2FE2FF4747EFFF4141
      F6FF2B29ECFF6868A6D83C3C3C3D00000000000000000000000000000000BEA8
      86FFEEE9E1FFFFFFFFFFFCFCFCFFFAFBFCFFFDFBF6FFF5F3EEFFEBE8E5FFE8DF
      D8FFE7D7CCFFE2D4C6FFCEB89EFFAC9465FFF2EEE4FFEEE8E1FFB49868FF9E79
      3FFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000012A053FF17C584FF63FC
      DEFF18C98AFF12A053FF0000000000000000000000000000000000000000858A
      88FFFFFFFFFFF3F3F3FFF3F3F3FFF2F3F2FFF1F2F1FFF0F1F0FFF0F0F0FFEEEF
      EFFFEDEEEFFFEDEEEDFFEBECECFFA3A4A4FFF0F0F0FFFFFFFFFFF4F4F4FFFFFF
      FFFF858A88FF00000000000000000000000000000000000000006666686A1A1A
      9BF84240F7FF7170FDFF6E6EFBFF4A48FFFF322FECFF1C1AC9FF0E0DAEFF0302
      9BFF03029BFF0D0CAEFF1B1ACDFF3838F3FF5B5BF6FF7572FAFF5959FAFF3332
      F3FF1A1A9BF86666686A0000000000000000000000000000000000000000BEAB
      89FFEEE9E1FFFFFFFFFFFAFAFCFFF6FAF3FFF9F0E9FFF4E8E0FFE8E2D8FFE3DB
      D0FFDED0BDFFDCCEB8FFCAB28FFFAC9465FFD8D0C1FFB5996DFF9E793FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000016A55BFF16C6
      86FF11A256FF000000000000000000000000000000000000000000000000858A
      88FFFFFFFFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF1F1F1FFF0F0
      F0FFEFF0F0FFEEEEEFFFEDEEEEFFAEAFAFFFE9E9E9FFFFFFFFFFFFFFFFFF858A
      88FF252525260000000000000000000000000000000000000000000000007272
      76791A1A9DF83D39F1FF8786FFFFAFAFFFFFA3A0FEFF8D8DFFFF807AFFFF7675
      FFFF7978FFFF8786FFFF9996FEFFA9A9FEFFA39FFEFF5756FFFF302EEDFF1A1A
      9DF872727679000000000000000000000000000000000000000000000000BEAB
      89FFEEE9E1FFFFFFFFFFFFFFFFFFFEFFFEFFF8F5F4FFF5EDE7FFECE4D9FFE0D7
      CBFFDACCB4FFD7C4AFFFC3AD86FF99793FFFBCA179FF9E793FFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000010A4
      58FF00000000000000000000000000000000000000000000000000000000858A
      88FFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDFF858A88FF2A2A
      2A2B010101020000000000000000000000000000000000000000000000000000
      00006666686A6868ACD82725D9FF504EFBFF9B98FFFFC0C0FFFFD3D3FFFFD8D4
      FFFFD8D4FFFFC8C8FFFFAEAEFFFF6E6BFFFF4140FBFF2523D7FF6868ACD86666
      686A00000000000000000000000000000000000000000000000000000000C0AE
      8CFFEEE9E1FFEEE9E1FFF1EEE6FFECE3DCFFE2DBCEFFDED3C2FFD9CCB7FFCEC1
      A5FFCBB494FFC5AC8BFFAC9465FF99793FFF9A7038FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      6466858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
      88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF2F2F2F300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C3D848490983636A8EF1E1DCCFF2A28E1FF3130F0FF3736
      FBFF3736FBFF3130F0FF2A28E1FF1E1DCCFF3636A8EF848490983C3C3C3D0000
      000000000000000000000000000000000000000000000000000000000000C0AE
      8CFFC1AC8BFFBFA987FFBEA886FFBFA986FFBFA988FFC0AA89FFC0AB8BFFBEA2
      79FFBEA47CFFB59D6DFFA78D5AFF9A7038FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000373737387171757887879FAE6868AED82424
      A7F52424A7F56868AED887879FAE717175783737373800000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC003FFFFFFFC0007FFFFFFFF0000F80
      000180003FF8630FE0000780000180003FE00007E00007800001800000800001
      E00007800001C00000000001E00007800003FE0000000000E00007800007FF00
      00000000E0000380000FFF0000000000C00007C0000F000000800000C00003C0
      000F000000E00000C00003C0000F000000E00000C00003C0000F000000E00000
      C00003C0000F000000E00000C00003C0000F000000E00000C00003C0000F0000
      00E00003C00003C0000F000000E00007800001C0000F000000E00007800001C0
      000FFF0000F00007800001C0000FFF0000FFF007800001C0000FFF0000FFF007
      800001C0000FFF2000FFF007C00001C0000FFFE000FFF007F00007C0003FFFE0
      00FFF00FFE007FFFFFFFFFE000FFFBFFE00003FFFFFFFFFFFFFE007FE00003FF
      FFFFC00001F8001FE00003FC1FFFC00001F0000FE00003F80FFFC00001E00007
      E00003F007FFC00001C00003E00003E003FFC00001800001E00003C001FFC000
      03800001E000038000FFC00003000000E0000300007FE00007000000E0000300
      003FE00003000000E0000300001FE00005000000E0000300800FE00005000000
      E0000301C007E00003000000E0000383E003E00001000000E00003E7F001E000
      01000000E00003FFF800E00001000000E00003FFFC00E00001000000E00003FF
      FE00E00007800001E00007FFFF01E00007800001E0000FFFFF83E00007C00003
      E0001FFFFFC7E00007E00007E0003FFFFFEFE00007F0000FE0007FFFFFFFE000
      1FF8001FE000FFFFFFFFFFFFFFFE007F00000000000000000000000000000000
      000000000000}
  end
  inherited ImgListBotoes16: TImageList
    Left = 455
    Top = 524
    Bitmap = {
      494C01010C001100040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F0F106C6C6E708C8CA2AF8888AABF8888AABF8C8CA1AF6C6C6E700F0F
      0F10000000000000000000000000000000000000000000000000000000000000
      00001D1D1D1E74747E8757579DDB0D0D8FFF0D0D8FFF53539DDE7676818D2323
      2324000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000070707131B1B1B3205050612000000000000000000000000000000000201
      00082D15095D683317BA32180B720300001201011F342222C2DE4343DDF20B0B
      55870000021303032A573E3ECEED4848F2FF0000000000000000000000006C6C
      6E704444B1EF0A0AACFF0A0AB6FF0D0DBFFF1313C6FF1818C7FF1919C0FF4A4A
      B4EF6C6C6E700000000000000000000000000000000000000000000000007474
      808A0E1196FF0D1CAAFF0D24B9FF0D28C0FF0D28C0FF0D25BAFF0D1CABFF0E12
      97FF7676828D0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000101010A1314142D3334365C56595C8C797D
      7EB69EA1A4DCB7B9BAFA5050508E0000000000000000000000000300000C2411
      075D9C4C23DE4C250F860401001100000000010117241C1CACC24E4EFEFF3A3A
      DCF4010168AA2A2AB7DF6868FFFF4646DEE800000000000000008989969F1111
      ACFF0202B2FF1212C1FF4B4BD2FF5A5AD3FF6161D6FF5E5EDFFF3A3AE0FF2828
      E2FF1F1FBDFF8989969F00000000000000000000000000000000787988960D19
      A4FF102CC1FF102DC3FF102DC3FF102DC3FF102DC3FF102DC3FF102DC3FF102C
      C1FF0E1AA6FF7879889600000000000000000000000000000000000000000C0C
      0D21242426443D3D4273585A5EA76F7178D380848AF6989799FFA59C99FFA191
      88FF9A7A67FFBEAEA6FF7A7C7DBD0000000000000000020100083D1D0E70B85A
      2DF0572A149C0703011700000000000000000000000000000E1B2323A2BA5757
      F7FC5252F4FF5C5CFCFF2F2FB4C80808283B000000006C6C6E703535BFFF0D0D
      B8FF1D1DBFFF4646C3FF8B8B979F4F4F4F504F4F4F508B8B979F6262D8FF3B3B
      ECFF3636F2FF1F1FBDFF6C6C6E7000000000000000007474808A101CA7FF1332
      C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332
      C6FF1332C6FF101DA9FF77778490000000002826284F484F529C676E72C87F84
      8AEA898C8EFF878A84FF78736DFF7A6B59FF786044FF87593BFFA05D33FFA95F
      2EFFB56129FFCDA58BFF8A8F91D000000007000000001A0C04439E532EDCA554
      2DE51309043A0000000100000000000000000000000000000000070747844848
      E3F97B7BFFFF6262FCFF07075B9A0000010F0F0F0F104F4FB9EF2B2BC2FF0404
      B4FF7F7FB2CF2F2F2F300000000000000000000000005E5E5F602525DEFF2C2C
      E6FF4646EDFF2929E3FF4A4AB3EF0F0F0F101A1A1A1B1318A0FF1636C8FF1638
      CAFF5B73DAFFFFFFFFFF5B73DAFF1638CAFF1638CAFF5B73DAFFFFFFFFFF5B73
      DAFF1638CAFF1637C9FF12189FFF2929292A65666AA7A59787FF89745BFF8569
      47FF875C3CFF965E30FFA35E2CFFB46531FFC46D34FFCD783EFFD07C42FFD37D
      43FFD4793BFFD7A381FF9BA1A3E40707071A0F05031E7A3F24BDCC7146F75029
      1498010101060000000000000000000000000000000900002D733636CDFA8282
      FCFF6767CFDE8383F1F64040D0F806064E9C5E5E5F604444C6FF0707B5FF0F0F
      B0FF2F2F2F300000000000000000000000005E5E5F601A1AD2FF1F1FD8FF2525
      DEFF6B6BDCFF3D3DE1FF1919BDFF5E5E5F6072727C841E31B8FF1A3FCEFF1A3F
      CEFFFFFFFFFFFFFFFFFFFFFFFFFF5E78DDFF5E78DDFFFFFFFFFFFFFFFFFFFFFF
      FFFF1A3FCEFF1A3FCEFF1D32BBFF78788893434B5267C3916BFFBF6D32FFBD6B
      33FFC26D35FFC66E37FFC97037FFC86E35FFCC753DFFD0834AFFD2834AFFD384
      4AFFD58043FFDA9E75FFADB0B4F41011112A2E160A5AB46842EAB1643FE72511
      08520000000000000000000000000000000001010B2231319BCBA1A1FCFF6C6C
      B3CA0E0E26394B4B88A2A6A6FCFF4F4ECDF38888969F5B5BCFFF0C0CB5FF8989
      969F0000000000000000000000005E5E5F601010C8FF1515CDFF1A1AD2FF5E5E
      5F608B8B979F6262E0FF1818C5FF8989969F6568A5CF1E3EC9FF1E45D2FF1E45
      D2FF4044B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4044
      B7FF1E45D2FF1E45D2FF1E3FCCFF5659A6DB262D3337BE9275FFC5733BFFC275
      40FFC06F38FFC26D36FFC66E36FFC96E34FFCF7B42FFD58B53FFD68B52FFD78C
      53FFD98A4DFFDC9E71FFC1C1C1FF1E1F2043532C1A98D47F55FC9C5431D31008
      022A000000000000000000000000000000001B0D0829674F63AE6D6A9EB50909
      1522000000000000030C585888A64D4D7C998787ABBF6969D5FF3232BFFF7A7A
      7E8000000000000000005D5D5F600909BFFF0C0CC3FF1010C8FF5E5E5F600000
      00006C6C6E707777DEFF1212C4FF8888AABF2B2EA7F3254CD4FF234DD6FF234D
      D6FF234DD6FF4044B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4044B7FF234D
      D6FF234DD6FF234DD6FF254ED5FF1D22A5F9141A1D1DAF8E7BF5C87B42FFC479
      44FFC16E37FFC56D36FFC96F36FFCC6F34FFD3854BFFD8945CFFD9935AFFDA94
      5BFFDB9258FFDE9D6CFFD0C9C5FF2F31335E723D23BAE1895DFF914F31CB0C05
      0226000000000000000000000000000000002110073A9B5028D2874B36BB2B16
      0A3600000000000000000707121C060610198787ABBF6C6CD6FF3B3BC2FF7A7A
      7E80000000005D5D5F600303B9FF0606BCFF0909BFFF5E5E5F60000000000000
      00006C6C6E706A6AD9FF0D0DBDFF8888AABF1C22A8F93A62DDFF2754DBFF2754
      DBFF2754DBFF678AE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF678AE6FF2754
      DBFF2754DBFF2754DBFF3760DDFF1C22A8F905070707A28B7EDECA8B5CFFC47B
      47FFC36C34FFC76E36FFCB6F35FFD07136FFD88F55FFDB9B64FFDC9A62FFDC9A
      62FFDD9A60FFDF9F6AFFD9CDC5FF434648787D432AC8DE895EFFAD623DE51F10
      0740000000000000000000000000000000000101000A7B3F1DAAE0743BFFD871
      37FF8C4722AB3F200E4E0A04020C000000008888969F6464D2FF3F3FC6FF8989
      969F5E5E5F602A2AC2FF1E1EC0FF0E0EBCFF5D5D5F6000000000000000000000
      00008B8B979F4B4BD1FF0B0BB4FF8989969F6468A9CF4E6CDCFF2B5ADFFF2B5A
      DFFF6A8FE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A8F
      E9FF2B5ADFFF2B5ADFFF506FDDFF5E61ABD50000000095867ECAD29567FFC876
      40FFC76C34FFCC7036FFD17035FFD7763AFFDD9960FFDDA16AFFDDA168FFDDA1
      69FFDDA268FFDEA167FFDECFC3FF565A5E926B3923B4DA855BFECD784EFA4724
      1488000000000000000000000000000000000000000131170B66E17439FFE377
      3AFFE0783CFFCA6A35ED884420A7391C0D475E5E5F605757CEFF4949C9FF2D2D
      BEFF3333C4FF3434C4FF2D2DC3FF5E5E5F600000000000000000000000002F2F
      2F305959C9FF3030C9FF1818B0FF5E5E5F6072727D844E60D0FF3666E4FF2F61
      E3FFFFFFFFFFFFFFFFFFFFFFFFFF4044B7FF4044B7FFFFFFFFFFFFFFFFFFFFFF
      FFFF2F61E3FF3465E4FF4C5ED0FF72727D8400000000857670B1B59F88FFB07E
      59FFCD6C30FFCF7136FFD47033FFDA7E42FFDDA26BFFDDA56EFFDDA56DFFDDA6
      6EFFDDA66FFFDEA267FFE7D3C3FF6D7174AA3A1F1267CB7B54FCDC7D4FFFD074
      47FF3F1F10761208042B040100120703021A1A0D06414C251288DA6E36FFE074
      35FFDF7835FFE37B3AFFE37B3FFFB7602FE00F0F0F105050BAEF6B6BD5FF3F3F
      C7FF3B3BC6FF3333C4FF5E5E5F600000000000000000000000002F2F2F305E5E
      BCEF4242CAFF2222BCFF4646B2EF0F0F0F101A1A1A1B131DB5FF7095EBFF3468
      E7FF4044B7FFFFFFFFFF4044B7FF3267E7FF3267E7FF4044B7FFFFFFFFFF4044
      B7FF3267E7FF6F96ECFF1823B7FF1A1A1A1B000000006A63628FBC9C83FFB780
      56FFCE6D30FFD17136FFD67032FFDC894EFFDEA972FFDEA76FFFDEA66DFFDEA6
      6CFFDEA66CFFDFA366FFF5DBC3FF8A8E90C9180C052E945434D5DD8255FFDA79
      4AFFBA663DED8A4929CA7B3D1EB3874221BBA45229DDD16B36F7DF7338FFDD72
      32FFDC7330FFDF7734FFDA753AFA582C156C000000006C6C6E704242C5FF6565
      D3FF3F3FC7FF3232BFFF8989969F6C6C6E706C6C6E708989969F2828B8FF3232
      C3FF3434C4FF1A1AB0FF6C6C6E70000000000000000072727E843544C7FF7BA2
      F1FF3B70EBFF1116A5FF356CEAFF356CEAFF356CEAFF356CEAFF1116A5FF3A6F
      EAFF78A0F1FF3A49CAFF7475828A00000000000000004F54566DC38262FFC66D
      47FFCE7032FFD77132FFDF7333FFE4955BFFE7B381FFE6B384FFE5B68BFFE6BB
      94FFE4C1A0FFDCBFA3FEE0D5CBEE7D7E7EA5000000001C0D064AB1643FEAD97C
      4FFEDB7643FFDD7643FFDD7340FFDF713BFFDD7239FFDB7338FFDE753CFFE177
      3DFFDD7637FFE3773AFF9F5127C3160C061D00000000000000008888969F4242
      C5FF7373D9FF4A4AC9FF3F3FC6FF3838C1FF3636C0FF3939C4FF3838C5FF5A5A
      D2FF3636BFFF8989969F0000000000000000000000000000000077798A933141
      C7FF8FACF1FF6C9AF2FF578BF0FF4379EEFF4379EEFF568AF0FF6A98F2FF8FAD
      F2FF3849CAFF78798C96000000000000000000000000393D3E4FC49C8AFFCC8D
      70FFC69272FFB88E74F4B18F7BE2A79387D0998C84BB867E78A36B6A6B845658
      5B664346494D30323535212325250A09090A00000000010100022D160D62844A
      2ECCD27447FCDD7847FFDE7541FFDE733CFFDE7139FFE4753BFFD26C36FCD66E
      39FEE2783FFFDD753BFF5A2C1573010100020000000000000000000000006C6C
      6E705050BAEF5F5FD2FF6E6ED6FF6E6ED7FF6B6BD7FF6565D4FF5B5BCFFF5151
      BAEF6C6C6E700000000000000000000000000000000000000000000000007374
      8087121FBCFF4D61D5FF6C88E3FF8EA9EFFF8FABF0FF6E8AE3FF5165D7FF1421
      BCFF7475838A000000000000000000000000000000001515151E525556773E42
      43572F33373F1F23272B12181919040707070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030804
      011F2D160C6E60321CA08F4927CA904926C7864020C25D2D14982D150868642F
      16A7E1753EFFB95D2EE60904020C000000000000000000000000000000000000
      00000F0F0F106C6C6E708B8BA2AF8787ABBF8787ABBF8B8BA2AF6C6C6E700F0F
      0F10000000000000000000000000000000000000000000000000000000000000
      0000111111126B6C7478787B9EAE4C52B5E1464DB6E4787A9FB16F6F797E1414
      1415000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020100080000000E0F0802240C0502210B0502200100000E000000021B0D
      054CCF6834FD63311781000000000000000000000000000000000909090A3939
      393A7A7A7A81989898B1A5A5A5D49E9E9EEBA1A1A1E8A5A5A5D2989898B17979
      797F373737380707070800000000000000000000000001010102070707080D0D
      0D0E101010111212121314141415151515161616161715151516141414151010
      10111212121343434344484848491010101100000000020202030909090A1010
      10111919191A20202021212121221D1D1D1E141414150C0C0C0D050505060000
      0001000000000000000000000000000000000000000000000000000000000000
      00000A0A0A0B4545464B67697187717182A17171819F64646A7D3B3B3C3F0202
      0203000000000000000000000000000000000000000000000000636363659494
      94E3ADADADFFBDBDBDFFBBBBBBFFBABABAFFBBBBBBFFB4B4B4FFAEAEAEFFA7A7
      A7FF8C8C8CE0454545460000000000000000010101024C4C4C4D9C9D9DB29E9F
      9EB89F9F9FBB9FA0A0BD9FA1A1BF9FA1A1C0A0A1A0C19FA1A1C09FA1A1BF9F9F
      9FBB959594BD767874EE70716FF3484848490000000104040405101010111B1B
      1B1C2929292A32323233353535362F2F2F3022222223161616170909090A0101
      0102000000000000000000000000000000000000000000000000000000004D4D
      4F575D66AFD1485AF5FF6270FFFF7681FFFF8C8DFFFF9291FFFF8282EDFE7676
      98BF3737383B0000000000000000000000000000000000000000999999B0BFBF
      BFFFEEEEEEFFDBDBDBFFBDBDBDFFB8B8B8FFB7B7B7FFB6B6B6FFC6C6C6FFDDDD
      DDFFB9B9B9FF7D7D7D860000000000000000040404059B9C9BAFE5E6E7FFE4E5
      E5FFE3E5E5FFE3E5E5FFE2E4E4FFE2E3E4FFE1E3E3FFE1E3E3FFE0E2E2FF9FA0
      9DFF555652FF636562FF797A75ED424242430000000001010102050505060909
      090A101010111E1E1E1F37373738202020217A7B7BAE7878789E777777987676
      7694757575917575758E7474748B6363636B00000000000000005F606A79102F
      F5FF193CFFFF2A45FFFF3E55FFFF5264FFFF6673FFFF7881FFFF8888FFFF9695
      FFFF8080CFEE49494A5200000000000000000000000000000000A2A2A2C7C5C5
      C5FFD7D7D7FFD1D1D1FFABABABFFA8A8A8FFA9A9A9FFA2A2A2FFB7B7B7FFA8A8
      A8FFB6B6B6FF909090A50000000000000000040404059B9C9BAFE4E6E6FFE0E3
      E3FFDFE2E2FFDDE1E1FFD2D6D6FFA1A4A3FF8A8E8BFF8F918FFFB3B7B6FF5151
      4CFF636562FF555652FF6969696C0909090A0000000000000000000000000000
      00010101010218181819757A8DB13F3F3F40394349FF3B4348FD242426F62F2F
      2FEC3D3D3DE5484848DF525252D9777777AA0000000055555A650510E9FF0216
      E7FF0522F7FF1E39EAFA676C92AF6466768367687F877275AABF6C73FDFF7C81
      FFFF9191FFFF8180D7F23737373A000000000000000000000000A6A6A6DFD3D3
      D3FFC0C0C0FFD1D1D1FF9B9B9BFFA0A0A0FFA1A1A1FF8F8F8FFFB6B6B6FF6262
      62FFC9C9C9FFA0A0A0CB010101020000000001010102999B9AACEDEEEEFFE2E5
      E5FFE1E3E4FFC1C4C4FF898C88FFC2C0BAFFD5D3CEFFCFCCC5FF92928CFF6365
      62FF4C4B46FF7878787E00000000000000000000000000000000000000000000
      000000000000151515161843C1F65971A7D74A5561FF626F78FF55616AFF3B44
      4AFB363739EC454545E14E4E4EDB767676AC171717184949BCE70000D5FF0005
      DCFF464CB8D83A3A3B3E0000000000000000000000006B6F8B9F5061FDFF616B
      FEFF7378FEFF9394FFFF777795BE0404040500000000020202039F9F9FEFD8D8
      D8FFB1B1B1FFD3D3D3FF8D8D8DFF9B9B9BFF9E9E9EFF7A7A7AFFB7B7B7FF4040
      40FFC6C6C6FF999999E60101010200000000000000009A9A9AAAEEEEEFFFE4E6
      E6FFD9DCDCFF949895FFB9B2A8FFD4C8BFFFCEC1B5FFCABBAEFFC4B7ABFF9494
      8FFFA3A5A3FF5454545500000000000000003D3D3D3E75757D8F75757E8F7575
      7F8F75767F8F76798396093BD3FB1254EFFE39599CFF607080FF637079FF5764
      6DFF36383CF4414141E34B4B4BDD767676AE5D5D62706061F2FF3B3ADAFF3232
      BBEA2525252600000000000000000808080962678CAF2242FFFF3149FCFF465A
      FFFF5865FFFF6D75FFFF7C7FF3FE3838383C0000000012121213868686FDE0E0
      E0FFB3B3B3FFD9D9D9FF787878FF959595FF9A9A9AFF616161FFBFBFBFFF4747
      47FFB3B3B3FF767676F70A0A0A0B00000000000000009A9A9AAAEEEFEFFFE6E8
      E8FFCACDCCFFA4AAA7FFE1D7CEFFE6DED8FFDACEC5FFD5CABFFFCFC1B4FFB5B4
      ADFF8B8F8DFF545454550000000000000000606062670909A8FB0000BBFF0008
      C6FF0016D4FF0020DFFF0032EDFF0349F6FF2C67F3FF4062AEFF627181FF626F
      78FF373A3EF53C3C3CE6454545E1767676B0737492AE686CF3FF6567F2FF6969
      738C000000000000000008080809626485A50620FBFF0727F5FF193CFFFF686C
      8BA8666DAAC64E5FFFFF6873FFFF61616778000000002E2E2E2F7A7A7AFFE3E3
      E3FFB5B5B5FFDBDBDBFF707070FF999999FF989898FF5B5B5BFFCECECEFF5656
      56FFA3A3A3FF606060FE1C1C1C1D00000000000000009A9A9AAAEFF0F0FFE8EA
      EAFFC7CACAFFA6ACA9FFEBE5DFFFEEE8E3FFEAE3DDFFE7E0D9FFE1D9D1FFC1C2
      BDFF737875FF545454550000000000000000606062670909A8FB0000BAFF0005
      C3FF0012D1FF001CDBFF002AE8FF003BF2FF1156F8FF306AF3FF4260A1FF5D6C
      79FF373A3DF6373737E8404040E4757575B27B80B0CB7581F6FF6B71EFFF494A
      4B51000000000909090A69698DB01317E7FF0008D7FF0619F7FF636789A60000
      000164667587334EFFFF5669FFFF6D6E7F9C0000000050505051838383FFF0F0
      F0FFE3E3E3FFDEDEDEFFB4B4B4FFBFBFBFFFBBBBBBFF9F9F9FFFAEAEAEFF9B9B
      9BFFB9B9B9FF424242FF4646464700000000000000009A9A9AAAF8F9F9FFEAEC
      ECFFD2D4D4FFA3A9A6FFDACFC4FFF0EAE5FFF1EDE8FFEFEAE5FFDED5CBFFAFAE
      A7FF939694FF545454550000000000000000606062673F3FB9FB4747CDFF3E42
      CFFF323FD6FF273DDCFF193AE3FF0E3BEBFF0242F3FF074DF7FF2655BDFF5869
      82FF383B3FF72F2F2FEC373737E8747474B48289B6CF8794FEFF7883F0FF4242
      434700000001707186A66A6AF5FF5B5BDDFF5354F1FF6A6B8FAF0A0A0A0B0000
      0000656773864D69FFFF6177FFFF6D6F819E0000000067676769989898FFFBFB
      FBFFF8F8F8FFEEEEEEFFE2E2E2FFD1D1D1FFC1C1C1FFB9B9B9FFA3A3A3FFAFAF
      AFFFCACACAFF545454FF6969696B00000000000000009A9A9AAAF9F9FAFFECEE
      EEFFE5E7E7FFAFB2B1FFB4B1AAFFDACDC2FFEBE3DCFFE1D5C9FFC0BAB0FF9497
      93FFC3C4C4FF545454550000000000000000606062675151C0FB5F5FD4FF5454
      D2FF454DD5FF3747DAFF2841DFFF1B3CE5FF0938EAFF0938C7FF617696FF788C
      95FF35393DF92A2A2AEE313131EB737373B68285A4BA99A9FFFF8F9DFDFF6768
      70867172839E8186FDFF6D70E6FF7475F8FF717187A507070708000000000000
      00006F7195B35568FEFF5770FFFF64656D800E0E0E0F9191919F606060FF6E6E
      6EFF616161FF5C5C5CFF555555FF545454FF565656FF585858FF5B5B5BFF6262
      62FF767676FF525252FF8888889201010102000000009A9A9AAAFAFAFAFFEEEF
      EFFFEDEEEEFFE6E7E7FFAFB2B1FFA4A9A6FFA5ABA8FFA3A9A7FF9BA09EFFA9AC
      ACFFADB0AFFF545454550000000000000000525253567171A3D27676ABD57373
      ABD56E70ABD5666BACD82B3BCAFD2138DBFF223AB5FF8393AFFF9CACB3FF8897
      9FFF33393EFA222222F2272727F0727272B86D6E7B87B4C1FFFF99A8FDFF8693
      EFFE8B99FCFF858EF2FF8B92FFFF75758FAE0909090A00000000000000003232
      33356467D8F45A63EEFF5968F5FF414141463F3F3F40B4B4B4EAC5C5C5FFC4C4
      C4FFB1B1B1FF9B9B9BFF868686FF898989FF888888FF848484FF797979FF7575
      75FF6C6C6CFF8A8A8AFF9A9A9AD32A2A2A2B000000009A9A9AAAFBFBFBFFF0F1
      F1FFEFF0F0FFEDEEEFFFE7E8E8FFD4D5D5FFC9CCCBFFBEC1C0FFA9ACACFF9294
      95FF989B9AFF545454550000000000000000111111122A2A2A2B2A2A2A2B2A2A
      2A2B2A2A2A2B3C3C3C3D2A30AFF93640A9F16D7A99FFC0CED3FFA9B9BFFF8E9D
      A5FF33393DFC1A1A1AF51F1F1FF3717171BA2D2D2E2FB7BEF5FBB3BEFFFFA6B3
      FFFF9AA9FEFF94A1FAFE71717E960000000000000000000000002E2E2E307778
      BFDB6B6CE9FF6A6CF1FF6F71ABD0070707084F4F4F50878787FA767676FF6969
      69FF707070FF7A7A7AFF8C8C8CFF949494FF929292FF878787FF757575FF6E6E
      6EFF626262FF777777FF909090F64B4B4B4C000000009A9A9AAAFBFBFBFFF2F2
      F2FFF1F2F1FFEFF0F0FFEEEFEFFFECEDEEFFEBECEDFFB7B9B8FFAAAEACFFABAF
      ADFF8D9190FF5454545500000000000000000000000000000000000000000000
      000000000000151515165D5E8DD35D5D5E64A2B0B3FFCDDCE1FFB9C7CCFF9FAD
      B3FF34393CFD0F0F0FF9151515F76F6F6FBD0000000074758592D8DFFFFFB8C0
      FEFFB0BBFFFF99A5EDFB66676C814646484D4D4D4F556C6D768D7D80CBEC8284
      F1FF7777E7FF7474EFFF49494A51000000003939393A7D7D7DE4CACACAFFD1D1
      D1FFBFBFBFFF868686FF828282FF818181FF818181FF818181FF8F8F8FFFC7C7
      C7FFCECECEFFC0C0C0FF6B6B6BEF44444445000000009A9A9AAAF7F7F7FFF3F3
      F3FFF3F3F3FFF1F2F1FFF0F1F1FFEEEFF0FFEDEEEEFFC0C1C1FFF2F2F2FFDBDB
      DBFFA5A6A5CF2424242500000000000000000000000000000000000000000000
      000000000000121212134848494B20202021A9B7BAFFD3E2E7FFBDCCD0FFABB8
      BEFF32383BFF060606FC0C0C0CFA6D6D6DBF000000000B0B0B0C86889FB0E0E5
      FFFFC6CDFFFFB8C1FFFFB4C0FFFFA0ADF7FF9AA6F6FF9EA8FFFF939BF8FF9196
      F3FF8B8EF7FF6262687600000000000000000000000020202021939393A4A6A6
      A6C8A4A4A4EF343434FE2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF434343FEAFAF
      AFF5ACACACD8949494B148484849020202030000000082828288C1C3C2FFD4D6
      D5FFD6D8D7FFD6D8D7FFD6D8D7FFD4D5D5FFD2D4D3FFCACCCBFFBFC1C0FFA8A9
      A9D1121212130000000100000000000000000000000000000000000000000000
      00000000000000000000000000001A1A1A1BB0BDC1FFD7E7EBFFBFCDD2FFACB9
      BFFF33393CFF000000FE030303FD6D6D6DC000000000000000000909090A7576
      8390CACCEEF8DBE1FFFFCDD5FFFFC1CBFFFFB6C2FFFFB0BEFFFFA8B3FDFF8F93
      C9E258585B650000000000000000000000000000000000000000030303041D1D
      1D1E636363657E7E7EE64F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF8F8F8FCF5656
      56582D2D2D2E0808080900000000000000000000000016161617545454555454
      5455545454555454545554545455545454555454545554545455545454552626
      2627000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000121212137F8284E18A8F8FE0808587E07A7E
      80E066686AD46C6C6CC16C6C6CC1777777980000000000000000000000000000
      0000313132336E6E7A849091A8B8A1A3C7D7989CBFD0808293AB5E5F636D1818
      1819000000000000000000000000000000000000000000000000865D22FFA181
      50FFA1814FFFA1814FFFA1814FFFA1814FFFA1814FFFA1814FFFA1814FFFA181
      4FFFA07E4EFF9E7C4FFF4D2D03AA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000040101
      010A0202020F0404041205050514040404160606061706060617060606160505
      05140101010E01010108000000010000000000000000000000004242768F3E3E
      8BAF0F0F0F100000000000000000000000000000000000000000000000000F0F
      0F10494995AF4D4D808F00000000000000000000000000000000A28355FFF7F5
      EFFFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFF5F2EAFF513309AA000000000000000000000000000000000000
      0000010101080F2E08780000000E000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000004484949865A5C
      5CB45A5E5DB95A605EBC5B615FBE5D6060C05D625EC15E6261C15D6260C05B61
      5FBE5A5E5CB84A4C4B8C0000000900000001000000004040819F0404B7FF0707
      BAFF33339DCF0F0F0F10000000000000000000000000000000000F0F0F103F3F
      A8CF3636EEFF3E3EF7FF5050909F000000000000000000000000AF9265FFF9F8
      F5FFF3F1E8FFF3F0E7FFF3F0E8FFF3F0E8FFF2EFE6FFEFE9E0FFEFEAE0FFF2EC
      E5FFF2EDE5FFEDE7DDFF573709AA000000000000000000000000000000000000
      00091043109A12A133FF175F18CD040C032C0000000100000000000000000000
      000000000000000000000000000000000000000000000000000BABAFADFFF6F7
      F7FFF4F5F5FFF4F5F5FFF3F4F5FFF3F4F4FFF2F3F4FFF2F3F3FFF1F3F3FFF1F2
      F2FFF3F4F4FFACAFAEFF01010110000000014F4F7A8F0505B5FF0404B7FF0707
      BAFF0A0ABDFF33339ECF0F0F0F1000000000000000000F0F0F103C3CA5CF2D2D
      E4FF3434ECFF3939F2FF3B3BF4FF4D4D808F0000000000000000B69A6FFFF9F8
      F5FFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F3ECFFF3F2E8FFF5F2
      EDFFF6F4EEFFECE6DCFF583709AA000000000000000000000000000000070E32
      0D7F149F3AFF0EBA56FF12AC45FF15621CCD0000000E00000001000000000000
      000000000000000000000000000000000000000000000101010AAEB1B0FFEBED
      EDFFDFE3E3FFDEE1E2FFDCE0E1FFDBDEDFFFD9DDDEFFD8DCDCFFD6DBDBFFD5D9
      DAFFE2E5E6FFAEB1B0FF0000000A00000001565693AF5252CEFF0707B7FF0606
      B9FF0909BCFF0C0CC0FF3434A0CF0F0F0F100F0F0F103B3BA4CF2424DAFF2A2A
      E0FF2F2FE6FF3333EBFF3434ECFF494995AF0000000000000000B99E74FFF9F8
      F5FFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F3EEFFF6F2EEFFF7F3F0FFF7F4
      F0FFF7F6F0FFECE6DCFF583709AA0000000000000001000000091047189A16A5
      46FF17BE68FF1EB76FFF19B866FF15BA5AFF146723CD040D052B000000010000
      0000000000000000000000000000000000000000000000000003AEB1B0FFECEE
      EEFFA4A8A7FFA4A8A7FFA3A7A6FFA3A7A6FF00265BFF577BA5FFA3BCD9FFD2D8
      DBFFE4E6E6FFAEB1B0FF00000001000000000F0F0F105353A8CF5353CFFF0909
      B9FF0808BBFF0B0BBFFF0F0FC3FF3535A0CF3737A2CF1C1CD1FF2121D6FF2525
      DBFF2929E0FF2C2CE3FF3F3FA8CF0F0F0F100000000000000000B99E74FFF9F8
      F5FFF5F3EDFFF5F2EDFFF5F2EDFFF5F1ECFFF7F5F0FFF6F3EFFFFAF5F3FFFBF6
      F3FFF8F5F2FFECE6DBFF583709AA00000000010101080C36127E18A950FF1CC5
      73FF26C17CFF3AD9AAFF2BC98CFF20C274FF18B85FFF136928CD0000000F0000
      0001000000000000000000000000000000000000000000000000AEB1B0FFEEEF
      EFFFE4E6E6FFE2E4E5FFE1E3E4FFDFE2E3FF628BC0FF2373B5FF126FE1FFA4BC
      DAFFE5E7E8FFAEB1B0FF0000000000000000000000000F0F0F105353A8CF5353
      D0FF0A0ABBFF0A0ABEFF0D0DC1FF1111C5FF1515C9FF1919CEFF1D1DD2FF2020
      D6FF2323D9FF3C3CA5CF0F0F0F10000000000000000000000000B99E74FFF9F8
      F5FFF5F3EDFFF5F2EDFFF4F1ECFFF6F1EDFFF9F5F2FFFBF9F2FFFAF8F4FFFAF6
      F3FFF7F1E9FFEDE6DDFF58370BAA000000000D4F1E9A19B25EFF24D188FF2BC9
      87FF38DBA9FF24C279FF37DAA6FF36D6A2FF27CC85FF1BC574FF136F2DCD040F
      072B000000010000000000000000000000000000000000000000AEB1B0FFEFF0
      F0FFA6AAA8FFA5A9A8FFA4A9A8FFA4A8A7FF869CB6FF189EE2FF1FAAF9FF056D
      E4FF9CBBE2FFA8ADAFFF000000010000000000000000000000000F0F0F105454
      A8CF5454D0FF0C0CBCFF0C0CBFFF0F0FC3FF1212C6FF1515CAFF1818CDFF1C1C
      D1FF3A3AA4CF0F0F0F1000000000000000000000000000000000B89F7AFFF9F8
      F5FFF6F3EDFFF5F2EDFFF6F3EFFFF9F3F1FFFAF9F4FFFBFBF6FFFAF8F5FFF6F2
      EDFFF1EBE3FFEDE4DAFF59390BAA000000000D4E1E9219B666FF39DDA6FF3CDF
      ACFF21B66BFF0C4E1F8E1CA555FF3CDDAAFF35D49BFF2DD390FF1DC273FF1173
      32CD0000000F0000000100000000000000000000000000000000AEB1B0FFF0F1
      F2FFE8EAEAFFE6E8E9FFE5E7E8FFE3E6E6FFE2E4E5FFAFC4DFFF0599E4FF1FAA
      F9FF1672E4FF577DAFFF00000000000000000000000000000000000000000F0F
      0F105454A8CF4B4BCFFF0A0ABDFF0C0CC0FF0F0FC3FF1212C6FF1414C9FF3737
      A1CF0F0F0F100000000000000000000000000000000000000000BBA988FFF9F8
      F5FFFAFBF6FFF9F9F2FFFAF9F9FFFAF9FAFFFAFAF9FFF9F8F8FFF2F0E9FFEDE8
      E1FFE8E0D6FFE1D4C4FF5A3B0FAA00000000000000030A3E197423BC75FF23BB
      73FF0B3D187100000000041F0C39138E46E341E0AEFF40E0A9FF35DFA0FF23D1
      89FF117738CD0410072B00000001000000000000000000000000AEB1B0FFF2F3
      F3FFA7ABA9FFA6AAA9FFA6AAA9FFA5A9A8FFA5A9A8FFA4A9A7FF879DB6FF189E
      E2FF1FAAF9FF056DE4FF1F334F7E0507070E0000000000000000000000000F0F
      0F103E3EA0CF2C2CC4FF1B1BC1FF0C0CBEFF0C0CC0FF0E0EC2FF1111C5FF3535
      A0CF0F0F0F100000000000000000000000000000000000000000C2AF91FFF9F8
      F5FFFBFCF9FFFAFBF8FFFAFAFBFFFAFAFCFFFAFAF7FFF5F3EBFFEDE9E2FFE7E1
      D7FFE0D5C6FFD4C5ADFF5C3D11AA0000000000000000000000010C54268E0C54
      268E000000000000000000000000041F0C391DAE62FF47E5B3FF45E6B0FF39E5
      A8FF21CC85FF117A3CCD0000000F000000010000000000000000AEB1B0FFF3F4
      F4FFECEDEDFFEAEBECFFE9EAEBFFE7E8E9FFE6E8E8FFE4E6E7FFE4E6E7FFAEC4
      DFFF0599E4FF1FAAF9FF0560CFF10619344700000000000000000F0F0F103F3F
      A0CF3232C4FF3030C5FF2E2EC5FF2D2DC6FF2626C5FF1E1EC4FF1D1DC5FF1D1D
      C6FF3C3CA1CF0F0F0F1000000000000000000000000000000000CBB89AFFF9F8
      F5FFFAFBFBFFFAFAFAFFFAFAFBFFFAFBF8FFF6F5EEFFF1ECE2FFDED4C5FFDBCB
      BBFFD1BEA5FFC1AB88FF5E4115AA000000000000000000000000000000000000
      00000000000000000000000000000000000004210E39129652E34BE8BBFF4EEE
      BCFF3FECB1FF28DA99FF107C41CD0311082C0000000000000000AEB1B0FFF4F4
      F5FFA8ACABFFA8ABAAFFA7ABAAFFA7ABA9FFA6AAA9FFA6AAA8FF9FA3A2FF9B9F
      9DFF96ABC6FF1BA1E5FF1C78CEED03173143000000000F0F0F103F3FA0CF3737
      C4FF3434C4FF3232C4FF3030C5FF2E2EC5FF6666D7FF2F2FC7FF2C2CC7FF2C2C
      C8FF2B2BC9FF3C3CA0CF0F0F0F10000000000000000000000000CDBCA0FFF9F8
      F5FFF8FBFBFFFAFBFBFFF9FBF8FFF6F6EDFFF1EDE5FFE8DFD3FFCEBC9FFFE6DD
      D2FFDBD0BAFFBCA37BFF604319AA000000000000000000000000000000000000
      00000000000000000000000000000000000000000000042210391DB66FFF50EB
      C0FF4DF0BDFF41F1B9FF1ED595FF0F8046CD0000000000000000AEB1B0FFF6F6
      F6FFF0F1F1FFEEEFEFFFEDEEEEFFECEDEDFFEAEBECFFE8EAEAFFC9CACBFFA4A5
      A6FFB5B6B7FF90A6BFFF031730430303030A0F0F0F104242A1CF3C3CC5FF3939
      C5FF3737C4FF3434C4FF3232C4FF3E3EA0CF5959AACF6E6ED9FF3030C6FF2D2D
      C6FF2C2CC6FF2C2CC7FF3E3EA0CF0F0F0F100000000000000000CDBDA3FFF9F8
      F5FFFAFBFCFFFBFBFBFFF5F4EFFFEEE8E1FFEBDFD5FFD8C8B4FFCEBB9DFFF4F1
      E9FFC4AE8BFF81663BC600000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004231239119C
      5CE350EEC3FF40EFBDFF119D5DE3042312390000000000000000AEB1B0FFF7F7
      F7FFAAADACFFA9ADABFFA9ACABFFA8ACAAFFA8ABAAFFD4D6D6FFA2A3A2FFACAF
      AEFFABAFADFF939795FF00000000000000005D5D96AF5252CCFF3F3FC6FF3C3C
      C5FF3939C5FF3737C4FF3F3FA0CF0F0F0F100F0F0F105A5AAACF6F6FD8FF3131
      C5FF2E2EC5FF2E2EC5FF2E2EC5FF47478DAF0000000000000000CEBFA5FFF9F8
      F5FFFAFBFAFFF9F6F0FFF1E9E2FFE6DFD6FFE0D1C0FFD2BDA2FFBEAB88FFD0C0
      A7FF7F6538C6120C071C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000424
      12391EBD7BFF1CBD7AFF04241239000000000000000000000000AEB1B0FFF7F7
      F7FFF3F3F3FFF2F3F2FFF1F2F1FFF0F0F0FFEEEFEFFFEDEEEDFFC0C0C0FFF9F9
      F9FFE1E3E2FF5A5B5A9E00000000000000005D5D808F9898E6FF5151CCFF3F3F
      C6FF3C3CC5FF3F3FA0CF0F0F0F1000000000000000000F0F0F105A5AAACF7070
      D8FF3333C5FF3030C4FF3030C4FF4A4A788F0000000000000000CEC1A7FFF5F3
      EEFFFAF8F6FFF3EFEBFFEBE2D6FFDED4C4FFD4C1A7FFC3AD89FFA1814AFF8166
      3DC6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000022512390225123900000000000000000000000000000000878A89DDD2D4
      D3FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFC0C2
      C1FF3E403F850000000B00000000000000000000000063638E9F9898E6FF5252
      CCFF4242A1CF0F0F0F10000000000000000000000000000000000F0F0F105A5A
      AACF7272D8FF3636C4FF4B4B849F000000000000000000000000C5B495FFCFBF
      A6FFCEBEA5FFCCBBA0FFC9B79BFFC5B08EFFC0A780FFAF9565FF78582CC6110B
      061C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000171717332C2E
      2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E
      2D550101010B00000000000000000000000000000000000000005D5D808F5D5D
      96AF0F0F0F100000000000000000000000000000000000000000000000000F0F
      0F105C5C95AF55557C8F0000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F00FF00FFFF1E000E007E007FE01C100
      C003C003E001838080018001000083C003800000000007000700000000000F00
      0E00000000000F080C10000000000F0C0830000000000F010070000080000F00
      00E000008000000001C00000800000008001800180008000C003C00380008000
      E007E00780FFC001F00FF00FFFFFF003C0038000800FF00FC0030000000FE007
      C00300008000C003C0030000E0008001C0010003F80003808001800300000600
      8001800300000C00800180030000080080018003000000108001800300000030
      000080030000006000008003000001C000008003F800800100008003F8008003
      80008003FE00C007C003800FFE00F00FC001FFFFC001C7E3C001F0FF800083C1
      C001E07F80000180C001C03F80000000C001001F80010000C001000FC0038001
      C0010007C001C003C0010003C003E007C0010401C000E007C0018E00C000C003
      C001FF00C0008001C001FF80C0000000C003FFC0C0030000C003FFE1C0030180
      C00FFFF3C00383C1C00FFFFFC007C7E300000000000000000000000000000000
      000000000000}
  end
  inherited MenuConfig: TPopupMenu
    Left = 539
    Top = 468
    inherited CadEnviarEmail1: TMenuItem [0]
    end
    object Definiressetipodevendacomopadro1: TMenuItem [1]
      Caption = 'Definir esse tipo de venda como padr'#227'o'
      OnClick = Definiressetipodevendacomopadro1Click
    end
    inherited N15: TMenuItem [2]
    end
    inherited Layout1: TMenuItem [3]
    end
    inherited ConfiguracoesTela1: TMenuItem
      Caption = 'Configura'#231#227'o'
    end
  end
  inherited ImgListMenuConfig: TImageList
    Left = 483
    Top = 496
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 511
    Top = 440
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelCredito: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = 16757606
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = clBlack
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetVert = 0
      LookAndFeel.Kind = lfUltraFlat
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    GroupName = 'Base'
    Left = 427
    Top = 524
  end
  inherited MenuImprimir: TPopupMenu
    Left = 539
    Top = 524
  end
  inherited WREventosCadastro: TWREventosCadastro
    OnPreencheVariaveisImpressaoPersonalizada = WREventosCadastroPreencheVariaveisImpressaoPersonalizada
    OnImpressaoAfterPrint = WREventosCadastroImpressaoAfterPrint
    OnLayoutChange = WREventosCadastroLayoutChange
    OnValidaComponente = WREventosCadastroValidaComponente
    Versao_Configuracao = 7
    FormClassCadastro = 'TFrmVenda'
    FormClassConsulta = 'TConsuVenda'
    Left = 484
    Top = 468
  end
  inherited Cadastro: TFDQuery
    AfterClose = CadastroAfterClose
    AfterEdit = CadastroAfterEdit
    OnCalcFields = CadastroCalcFields
    FetchOptions.AssignedValues = [evCache, evDetailDelay, evDetailOptimize]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM VENDA'
      'WHERE (CODIGO = :CODIGO)'
      ''
      ''
      '')
    Left = 175
    Top = 384
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
    object CadastroCodPessoa: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodPessoa'
      Calculated = True
    end
    object CadastroCodTabela: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodTabela'
      Calculated = True
    end
    object CadastroNF_VFRETE: TFloatField
      FieldName = 'NF_VFRETE'
      Origin = 'NF_VFRETE'
    end
    object CadastroTOTAL_FATURA: TFloatField
      FieldName = 'TOTAL_FATURA'
    end
  end
  inherited TransaFD: TFDTransaction
    Left = 455
    Top = 440
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    Tabela = 'VENDA'
    Modulo = 'VENDAS'
    Left = 231
    Top = 384
  end
  inherited Fr3Cadastro: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    Left = 371
    Top = 384
  end
  inherited MenuRegra_Acoes: TPopupMenu
    Left = 511
    Top = 384
  end
  inherited TransaConfiguracao: TFDTransaction
    Left = 539
    Top = 384
  end
  object DS_Financeiro: TDataSource
    DataSet = Venda_Financeiro
    Left = 203
    Top = 440
  end
  object DSVenda_Produto: TDataSource
    DataSet = Venda_Produto
    Left = 203
    Top = 412
  end
  object OdNFe: TOpenDialog
    Filter = 
      'Arquivos TXT,XML(*.TXT,*.XML)|*.TXT;*.XML|Arquivos NFE (*-nfe.XM' +
      'L)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.T' +
      'XT|Todos os Arquivos (*.*)|*.*'
    InitialDir = '.\NFe'
    Title = 'Seleciona a NFe a ser complementada'
    Left = 539
    Top = 440
  end
  object PopupMenu_Produto: TPopupMenu
    OnPopup = PopupMenu_ProdutoPopup
    Left = 511
    Top = 496
    object VerDetalhes1: TMenuItem
      Caption = 'Ver Detalhes'
      Default = True
      OnClick = GridProdutoTreeDblClick
    end
    object NotaFiscal1: TMenuItem
      Caption = 'Nota Fiscal'
      object Impostos1: TMenuItem
        Caption = 'Impostos'
        OnClick = Impostos1Click
      end
      object ImpostosComValorbaseodeVenda1: TMenuItem
        Tag = 1
        Caption = 'Impostos - N'#227'o altera o valor de Venda'
        OnClick = ImpostosComValorbaseodeVenda1Click
      end
      object Calculartodososimpostos1: TMenuItem
        Caption = 'Calcular todos os Impostos'
        OnClick = Calculartodososimpostos1Click
      end
      object ZerarValoresdeImpostos1: TMenuItem
        Caption = 'Zerar Valores de Impostos para recalcular'
        OnClick = ZerarValoresdeImpostos1Click
      end
    end
    object ReplicarGrupo1: TMenuItem
      Caption = 'Replicar Grupo'
      OnClick = ReplicarGrupo1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object AbrirVendaOriginal1: TMenuItem
      Caption = 'Abrir Venda Original'
      OnClick = AbrirVendaOriginal1Click
    end
    object DuplicarProduto1: TMenuItem
      Caption = 'Duplicar Produto'
      OnClick = DuplicarProduto1Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object DadosVeiculo1: TMenuItem
      Caption = 'Informar Dados de Ve'#237'culo'
      OnClick = DadosVeiculo1Click
    end
    object DefinirCTparaosProdutos1: TMenuItem
      Action = ActDefinirCTProdutos
    end
    object Motordeclculodoitem1: TMenuItem
      Caption = 'Motor de c'#225'lculo do item'
      OnClick = Motordeclculodoitem1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object RemoverFrmula1: TMenuItem
      Caption = 'Remover F'#243'rmula'
      OnClick = RemoverFrmula1Click
    end
    object EnviarparaRequisio1: TMenuItem
      Caption = 'Enviar para Requisi'#231#227'o'
      OnClick = EnviarparaRequisio1Click
    end
  end
  object DSEquipamento: TDataSource
    AutoEdit = False
    DataSet = Equipamento
    Left = 343
    Top = 524
  end
  object ImgListBotoes32: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 483
    Top = 524
    Bitmap = {
      494C010105000900040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
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
      0000000000000303033022232284202020831F201F811F201F811F201F811F20
      1F811F201F811F201F811F201F811F201F811F201F811F201F811F201F811F20
      1F811F201F811F201F811F201F811F201F811F201F81222222840B0B0B5A0000
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
      0000000000003C3C3C77FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848584D90000
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
      0000000000000000000000000000000000000000000000000000040404040808
      0808040404043939394FE5E4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7AB60000
      00000A0A0A0A0404040402020202000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000040404040C0C0C0C1616
      16161F1F1F1F3C3C3C46D9DAD9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FF7979799C1717
      17171B1B1B1B1010101006060606020202020000000000000000000000000000
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
      000000000000000000000000000000000000020202020A0A0A0A171717172D2D
      2D304646464B5353535FCBCCCBF5FAFAFAFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF9F9F9FFE9E9E9FF7B7B7B974747
      474A3737373A1F1F1F1F0E0E0E0E040404040000000000000000000000000000
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
      000000000000000000000000000000000000030303040E0E0E10202020255B5B
      5B6B7B7B7B908282829CB9B9B9F1E2E2E2FFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFE1E1E1FFCECECEFE8A8A8AB17B7B
      7B906B6B6B7F3939394112121216070707080000000000000000000000000000
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
      000000000000000000000000000000000000030303060A0A0A14131313266361
      61987E7E7EBE7D7C7AC68B8B8BF7C9C9C9FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
      C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
      C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFCECECEFFA3A3A3FF797878D57E7D
      7DBD7C7C7BB23434335A0A0A0A140505050A0000000000000000000000000000
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
      000000000000000000000000000000000000010101060101010A1A1A1A6D8787
      86F38B8B8AFB818180FC525251FFA7A7A7FFA9A9A9FFA8A8A8FFA8A8A8FFA8A8
      A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8
      A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFB0B0B0FF696A69FF626261FE8C8C
      8BFB8D8D8CFA606060D30404041B010101060000000000000000000000000000
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
      0000000000000000000000000000000000000000000400000000646464CFE9E9
      E9FFDDDEDDFFD7D8D7FF9E9D9EFF9A999AFF9B9B9CFF9B9B9CFF9B9B9CFF9B9B
      9CFF9B9B9CFF9B9B9CFF9B9B9CFF9B9B9CFF9B9B9CFF9B9B9CFF9B9B9CFF9B9B
      9CFF9B9B9CFF9B9B9CFF9B9B9CFF9B9B9CFF9C9B9CFF959596FFBCBCBCFFE1E1
      E0FFDEDFDEFFD8D9D8FF0A0A0A4D000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000002000000005E5E5DD0C5C4
      C2FFBEBCBAFFB0AEADFF484648FF403F41FF424043FF424043FF424043FF4240
      43FF424043FF424043FF424043FF424043FF424043FF424043FF424043FF4240
      43FF424043FF424043FF424043FF424043FF414042FF3B393CFF767575FFC3C1
      C0FFBDBCBAFFB8B7B5FF0908084F000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000005A5A59C6DAD9
      D7FFD0CFCDFFC7C6C4FF636161FF575555FF595758FF595758FF595859FF5A58
      59FF5A5859FF5A5859FF5A5959FF5B595AFF5B595AFF5B595AFF5B595AFF5B5A
      5BFF5C5A5BFF5C5A5BFF5C5A5BFF5C5B5BFF5D5B5CFF555455FF959393FFD5D4
      D3FFD0CECDFFCAC9C7FF08070741000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000484848ADF7F6
      F5FFEBEAEAFFE4E4E3FF626164FF48474BFF4B4A4DFF49484BFF48474AFF4645
      48FF444347FF434245FF414043FF3F3E42FF3E3D40FF3C3B3EFF3A3A3DFF3838
      3BFF37363AFF353538FF343336FF323135FF303033FF242428FF9E9D9EFFF6F5
      F5FFEFEFEEFFD9D8D8FD01010121000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000002F2E2E8AF1F0
      F0FFE8E7E6FFE5E4E3FF969697FF8B8A8CFF89898BFF858487FF818083FF7C7C
      7EFF78777AFF747476FF707072FF6C6B6EFF68686AFF646466FF606063FF5C5C
      5FFF58585AFF555557FF505153FF4C4D4FFF48484BFF3C3C3EFFAFAEAFFFF3F2
      F2FFF1F0EFFFCAC9C8F801010108000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000004D4C4C67E5E4
      E3FFE5E4E3FFE6E5E4FF9E9E9EFF949496FF929394FF8F8F91FF8C8B8DFF8887
      8AFF858486FF807E82FF7C7B7DFF777779FF747376FF706F72FF6C6B6EFF6968
      6BFF656467FF616163FF5E5D60FF5A5A5CFF565659FF4A4B4DFFBBBABAFFF0F0
      EFFFEAE9E9FFD1D0CFEF00000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000039383845E0DF
      DFFFE4E3E2FFE4E3E2FFAAAAAAFFA3A3A4FF9FA0A0FF999A9BFF959697FF9292
      93FF8E8E90FF8C8C8EFF8B8A8DFF88888AFF828284FF828183FF7D7C7EFF7675
      78FF717073FF6B6A6DFF676669FF626164FF5E5D60FF58575AFFC4C4C4FFEEEE
      ECFFEAE9E8FFC0BEBDDF00000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000001B1B1923DBDA
      D9FDE3E3E2FFE4E3E2FFB2B2B2FFADADAEFFB5B5B6FFBBBBBBFFC0BFC0FFC4C3
      C3FFC9C8C8FFC7C6C6FFC1C0C0FFB8B7B8FFA8A7A8FFBEBCBDFFC1C0C0FFC7C6
      C6FFC4C3C3FFBEBCBCFFB4B2B3FFA8A7A8FF9A989AFF818082FFCCCBCAFFEDEC
      EBFFEAE9E8FFA8A7A6CA00000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000707070AD4D3
      D1F9E4E4E3FFE4E4E3FFBDBCBCFFDAD9D9FFE8E6E6FFECEAEAFFECEBEAFFECEB
      EBFFE3E2E1FFB5B4B4FFD7D7D7FFD6D6D6FFD7D6D6FFD2D1D2FFCECDCDFFB7B6
      B6FFEAE8E8FFE8E7E6FFE9E7E6FFE9E8E7FFEBE9E9FFCBCAC9FFD4D4D3FFEBEB
      EAFFEBEAE9FF8C8B8AAF00000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000C7C6
      C6F1E6E6E5FFEBEBEAFFA9A9A8FF878887FF8E8E8DFF8C8C8CFF8C8C8CFF8D8D
      8CFF8E8E8EFF909090FF929292FF949493FF949494FF939392FF909090FF8D8D
      8CFF8C8C8BFF8A8A89FF8A8A89FF8A8A89FF8A8A89FF838382FFDCDBDBFFEEED
      ECFFECEBEBFF6E6C6C8F00000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000B6B3
      B3E4E7E6E6FFE7E6E5FFC5C4C4FFD2D1D1FFD7D6D6FFD6D6D5FFD6D5D5FFD5D5
      D4FFD5D4D4FFD5D4D4FFD5D4D3FFD4D4D3FFD4D4D3FFD4D3D2FFD4D3D2FFD3D3
      D2FFD3D2D1FFD3D2D1FFD2D2D1FFD2D2D1FFD4D4D3FFBDBDBDFFDFDEDDFFEEED
      ECFFEAE9E9FF504D4D6D00000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000002D2C
      2C414C4B4B6B4B494968888887D0AAA9A9FFF2F1F1FFEEEDEDFFEEEDEDFFEEED
      EDFFEEEDEDFFEEEDEDFFEEEDECFFEEEDEDFFEEEDEDFFEEECECFFEEECECFFEEEC
      ECFFEDECECFFEEECECFFEDECECFFEDECECFFEFEEEEFFB1B1B0FC514F4F734C4A
      4A6A4C4A4A6A0F0F0E1600000000000000000000000000000000000000000000
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
      00000000000000000000000000008B8B8BFFFDFCFCFFF8F7F7FFF8F7F7FFF8F7
      F7FFF8F7F7FFF8F7F7FFF8F7F7FFF8F7F7FFF8F7F7FFF8F7F7FFF8F7F7FFF8F7
      F7FFF8F7F7FFF8F7F7FFF8F7F7FFF8F7F7FFFAF8F9FF8F908FFA000000000000
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
      0000000000000000000000000000909090FFFAF8F8FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF7F6F6FF9E9E9DFC0C0C0C100000
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
      00000000000000000000000000008D8C8CFFFAF9F9FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF8F7F7FF8E8E8EF20909090C0000
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
      00000000000000000000000000008A8A8AF5FFFFFFFFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFFFFEFEFF2F2F2F92000000000000
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
      00000000000000000000000000008A8A8AF5FFFFFFFFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFFFFFFFFF2D2D2D92000000000000
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
      00000000000000000000000000008A8A8AF5FFFFFFFFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFFFFFFFFF302E2E96000000000000
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
      00000000000000000000000000008A8A8AF5FFFFFFFFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFFFFFFFFF2F2F2F93000000000000
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
      0000000000000000000000000000898989F4FFFFFFFFF5F4F4FFF5F4F4FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFFFFFFFFF2D2D2D8B000000000000
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
      0000000000000000000000000000949493F8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32323290000000000000
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
      00000000000000000000000000003736369E5F5E5EC25B5A5AC25B5A5AC25B5A
      5AC25B5A5AC25B5B5AC25B5B5BC25B5B5BC25B5B5BC25C5B5BC25C5B5BC25C5C
      5CC25C5C5CC25C5C5CC25D5C5CC25D5C5CC2616161C20909096D000000000000
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
      0000000000000E100E39333333792E2E2E712E2E2E712E2E2E712E2E2E712E2E
      2E712E2E2E712E2E2E712E2E2E712E2E2E712E2E2E712E2E2E712E2E2E712E2E
      2E712E2E2E712E2E2E712E2E2E712E2E2E712E2E2E71323232780D0D0D350000
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
      00000000000042424275FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3A6C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A1A1A4DFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FF141614440000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000100000005000000090000000A0000000A0000
      000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
      000A0000000A0000000A00000009000000070000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0707074D161616870E0E0E6F0101
      011C000000000000000000000000000000060000000700000003000000000000
      0000000000000000000200000008000000120000001800000009000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040404073C393666514D
      498944403D730908080F0000000000000000000000000C0B0A1C59534DA19E97
      91D8817A75C61815133600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000005050528E2E2E2F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9EF030303220000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000080000002A242424653E3F3F833F3F3F843E3E
      3E833D3D3E833E3E3E833F3F3F843F3F3F843F3F3F843F3F3F843E3F3F843F3F
      3F843F3F3F843F3F3F843F3F3F801515154D0000001800000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000006040404391D1D1D9E484949DD808081FF505052FF2D2D
      2ECE101010720101011A000000130000003103040458010101450000001C0000
      000A0000000D000000210202024A1212128D373530BC13131280000000130000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000606050A423F3B70948C87E9C3B7B5FFECEA
      E8FFCFC8C6FF9A948CEF403D396C100E0D2359514BA9A9A29CE9E5DFDBFEE3DD
      D8FFE1DAD4FFD1CCC7EF706B66B80D0C0B1F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000EB0B0B0DBFCFCFCFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFFCFCFCFFA4A4A4D40000000A0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000100000004000000120000003C7E7774B9D4C2BBFDD6C5BDFBD1BA
      B0FAD0B4A8FADCC8BFFADFC7BCFBE1C6B9FBE5C9BDFBE7CBBDFBEDDAD0FBF1EC
      E9FBF0E2D6FBF0E1D1FBEBE5D9F94C4C4A830000002200000007000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      000201010133111111883F3F3FEF5E5E61FF7A7C7CFF8D8C86FF83847EFF6263
      64FF4E4E50FF2F2F2FD50E0E0E91393939C3686868FB272828ED181819B60808
      086D030301650B0906B12A261BEE5A574AFF888476FF504F43FF10100CAD0000
      0028000000000000000100000000000000000000000000000000000000000000
      0000000000000807070D46433F779A948DEDCAC0BEFFC0AFAFFFB8A5A5FFFDFC
      FCFFDCD3D3FFC6B9B9FF8A807AFF746D69FDA7A4A2FFE2DFDEFFF1EEECFFEBE7
      E3FFE4DFDAFFDED7D1FFE3DDD8FFC6C0BEEA56514C970505040E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E7E7EBEE6E6E6FFDADADAFFDBDBDBFFDBDBDBFFDBDB
      DBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDB
      DBFFDBDBDBFFDBDBDBFFDBDBDBFFDADADAFFE8E8E8FF737373B5000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000F00000032000000570000006D635148C1A3745DFFB98F7CFFC89D
      8CFFC89681FFD1A08CFFD7A38EFFE2B3A0FFE8BAA6FFEDBCA4FFF5CEB9FFFDF3
      EEFFFCEDE2FFFBE7D0FFF0E5D1FB434341970000005E00000044000000210000
      0006000000000000000000000000000000000000000000000002020202280F0F
      0F7D343436DC58585BFF68686BFF888884FFB3B4A5FFE6E5CDFFE3E3CCFFB2B3
      A4FF84847EFF575658FF494A4CFF7A7B7CFF868485FF636463FF414242FF2927
      28FA46423BF7878379FF918F86FF7B796BFF8E8D80FF444538FF1D1D11FF1618
      11CE020202390000000000000001000000000000000000000000000000000909
      08104B47437FA29B96F2D6CFCEFFD2C6C6FFC9BBBBFFC2B2B2FFBBA9A9FFFDFC
      FCFFE3DCDCFFC9BDBDFF746A61FF6C645FFF858484FFADADADFFCCCBCBFFECEA
      E8FFEEEBE8FFE8E3DFFFE1DBD6FFDCD4CEFFE5DFDAFDB2ADA9E53E3835740202
      0204000000000000000000000000000000000000000000000000000000010101
      010B0202020C02020217595959C8CFCFCFFFC3C3C3FFC4C4C4FFC4C4C4FFC4C4
      C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
      C4FFC4C4C4FFC4C4C4FFC4C4C4FFC3C3C3FFD0D0D0FF525452C9020202140202
      020C0101010B0000000100000000000000000000000000000000000000000000
      00000000000E030303432A2A2AAB333436C36F5E55E18C4F32FFB07D69FFC799
      89FFD0A08EFFD39F8BFFD7A089FFECCBBCFFF3D3C4FFF2C5B0FFF6C9B0FFFCE5
      D6FFFEEBDBFFFEEDD9FFF3E5D1FD60605FD1313131C31D1D1D8B000000290000
      000500000000000000000000000000000000000000170D0D0D742F2F2FD55453
      54FF6B6B6BFF858580FFB7B7A7FFE5E5CDFFF5F4DBFFEEEED7FFF0F0D7FFF5F5
      DCFFE3E4CBFFB2B1A2FF7C7D78FF707272FF7B7B7DFF89888AFF7C7B7CFF7978
      78FFDEDDDBFFFFFFFFFFFFFFFFFFA2A196FF9D9D91FF484B3BFF1B1B10FF1D1C
      11FF15150FDA010101370000000000000000000000000000000027252342A7A1
      9BF4E3DFDDFFE4DEDEFFDDD4D4FFD5CACAFFCEC1C1FFC7B8B8FFC0AFAFFFFDFC
      FCFFEAE4E4FFDAD1D1FFCABEBDFF8E827AFF746A60FF77716DFF9A9999FFBCBC
      BCFFD9D8D6FFF1EFECFFEBE7E3FFE4DFDAFFDED7D1FFDBD3CDFFE0D9D5F99D97
      91DD272320510000000000000000000000000000000001010104383838A35052
      50CE575757CF515151D6656565FA797979FF767676FF767676FF767676FF7676
      76FF767676FF767676FF767676FF767676FF767676FF767676FF767676FF7676
      76FF767676FF767676FF767676FF767676FF787878FF5D5D5DFB575858D45556
      55CF4F504FCE3535359D010101040000000000000000000000010000000C0705
      05270C0C0C3D1010105E353535DA3C3D3DFF6E6059FF8D5238FFA7705CFFC395
      84FFCE9D8BFFCF9882FFD09578FFE2B099FFEEC0ABFFF4C7B0FFF8D1BBFFFCDB
      C3FFFDDDBFFFFFE4C4FFEEE2CFFF5E5E5EFF3B3B3BFF292929B00D0D0D4C0C0C
      0C3A090909300000001300000004000000001E1E1DA5595A5AFF6F6F6FFF908F
      90FFBBBBB3FFE9E8D1FFF5F4DAFFEDEDD4FFE7E7D0FFE7E6CFFFE6E7CFFFE5E6
      CEFFEAE9D0FFEEEDD3FFDCDBC2FFA9A695FF7B7B74FF737374FF5F6063FF9291
      93FFFFFFFFFFFFFFFFFFFFFFFFFFA8A79CFFA2A395FF505445FF313426FF2A2B
      1FFF121006FF13110EBD0000000D0000000000000000000000007C7671CAF6F4
      F4FFF0ECECFFE9E3E3FFE1DADAFFDAD1D1FFD3C7C7FFCCBEBEFFC4B5B5FFFDFC
      FCFFF1EDEDFFE4DDDDFFDED6D6FFD9CECEFFC1B5B3FF82776FFF766C63FF8480
      7BFFA9A9A9FFC7C7C6FFE5E3E1FFEEEBE8FFE8E3DFFFE1DBD6FFDBD3CDFFD9D0
      C9FFC6BEB8F25A554EA300000000000000000000000002020208888888FAEAE9
      E8FFE4E3E3FFE7E7E7FFCBCACBFFC9C9C9FFC9C9CAFFC9C9CAFFC9C9CAFFC9C9
      CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9
      CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9CAFFC9C9C9FFCBCBCBFFCDCCCCFFE4E4
      E3FFE9E9E8FF7F7F7FF402020208000000000000000001010105313030507B7B
      7BBE9F9D9DE7A7A6A6E7555555F8101111FF524743FF925C46FF985B45FFB580
      6CFFC89785FFD19C88FFD59D85FFE0A991FFEEBDA7FFF5C9B1FFFAD8C2FFFDE3
      CFFFFEDDBDFFFFE3BFFFE4DAC9FF343433FF151515FF808080F1ACACABE6A2A1
      A1E78D8D8DD73F3F3F6B0303030B000000000F0F0F57787876F0C4C5BFFFF8F8
      F4FFFFFFFFFFFBFAEFFFF1F0E3FFEDEEDAFFE9E9D6FFE6E5CFFFE2E2CAFFDEDD
      C5FFDAD8BFFFD5D1BAFFD3CFB6FFD4CFB4FFC0BA9DFF9B937BFF2B271EFF5E5D
      5FFFFFFFFFFFFFFFFFFFFFFFFFFFADABA1FFADAD9EFF55584CFF34382EFF3D40
      35FF1B1A12FF16150EFD0808083C0000000000000000000000009A9590E6FCFB
      FBFFF5F2F2FFEEE9E9FFE6E0E0FFDFD7D7FFD8CECEFFD1C4C4FFDDD4D4FFFFFE
      FEFFFCFBFBFFF1EDEDFFE8E3E3FFE3DBDBFFDDD4D4FFD7CCCCFFB3A7A4FF7A70
      67FF7B726BFF92908EFFB8B8B8FFD3D2D0FFEDEBE8FFEBE7E3FFE4DFDAFFDED7
      D1FFD7CFC8FFABA49DEE08070714000000000000000002020209717070F1E6E5
      E4FFC0BEBCFF939191FF3F3D3EFF484547FF474547FF474547FF474547FF4745
      47FF474547FF474547FF474547FF474547FF474547FF474547FF474547FF4745
      47FF474547FF474547FF474547FF474547FF474547FF403E3FFF8D8B8AFFC1BF
      BDFFE6E5E4FF6B6A6AEC0202020900000000000000003232314A898887E98685
      84FF838282FF878686FF494948FF000101FF413B38FF9C705EFF9C6650FFA971
      5BFFBF8D79FFC9937CFFD5A08BFFE5B7A3FFEFC9B4FFF7D9C8FFFBE0CEFFFEEB
      DBFFFEDDBCFFFFE5C3FFDAD1C0FF1C1C1CFF0B0B0BFF6B6B6AFF888887FF8584
      83FF858483FF8B8A88F13E3C3C5E00000000000000001414142F50504E8F9898
      95FCCDCEC6FFF2F3ECFFFBFAF1FFFAFAEBFFF2F1E3FFEAE9D8FFE1E0CEFFD8D7
      C2FFD3CFB7FFCDC7AFFFC3BDA1FFB2A98CFF9A9074FF79705AFF433F36FF7E7E
      80FFFFFFFFFFF6E1EAFFFCF4F8FFB4B5A8FFB6B5A7FF595C52FF363832FF4145
      3BFF34382EFF100F05FF1B1B1B600000000000000000000000009A9590E6FFFF
      FFFFFAF8F8FFF2EFEFFFEBE6E6FFE4DDDDFFDFD6D6FFF0ECECFFFEFDFDFFDDD4
      D4FFEDE8E8FFFFFFFFFFFAF8F8FFEEEAEAFFE7E0E0FFE1D9D9FFDBD1D1FFD4C9
      C9FFA69B97FF766C63FF817972FF9F9E9DFFC3C3C2FFDEDCDAFFEEEBE8FFE8E3
      DFFFDBD5D0FD76706ABE000000000000000000000000020202098B8B8AE6F1F1
      F1FFDEDDDCFFBBB9B9FF4E4D4EFF535152FF535152FF535153FF535153FF5452
      53FF545253FF545253FF545254FF555354FF555354FF555354FF555455FF5554
      55FF565455FF565555FF575555FF575556FF575556FF4F4E4FFFACABAAFFE0DE
      DCFFF1F1F1FF828282E102020209000000000909090B545352B542403FFF3B3A
      39FF3D3C3BFF454443FF3E3D3DFF242425FF534F4EFFA68575FFAE8673FFBB93
      81FFCAA392FFD6AF9DFFDBB09EFFE6BFACFFF5E0D4FFFDF4EDFFFDF5EDFFFEF0
      E2FFFEE3C7FFFFEBD0FFD6CEBEFF353536FF2A2A2BFF464544FF454443FF3E3D
      3CFF3B3938FF41403FFF595856C80F0F0F150000000000000000020202091515
      164E3C3C3C939B9B98FFBBBBB6FFDBDBD4FFE8E7DCFFF3F3E2FFF0EDDCFFE1DD
      C9FFCFC8B1FFB1A890FF857D68FF605B4FFF4E4C4BFF525355FF535354FF9697
      97FFFFFFFFFFCE422AFFEAB2B0FFBFCABFFFBEBEB0FF5A5C54FF3C413AFF4348
      40FF43473EFF1C1E15FF1D1D1D8F0000000000000000000000009A9590E6FFFF
      FFFFFFFFFFFFF7F5F5FFF0ECECFFEEE9E9FFFBFAFAFFF9F7F7FFD6CBCBFFC4B5
      B5FFBEACACFFCEC1C1FFE6C7A8FFDDA667FFDEAA6FFFDAA264FFD7AB7CFFDDCF
      C9FFD9CFCFFFCDC2C1FF998E87FF766C62FF867E79FFB0AFAEFFCECDCCFFADA8
      A2EC2D2925590000000100000000000000000000000001010106919190D8F9F9
      F9FFF6F6F4FFD6D5D5FF525155FF515054FF4F4E52FF4D4D50FF4B4A4DFF4847
      4BFF464548FF444346FF424044FF3F3E42FF3D3C3FFF3B3A3DFF39383BFF3736
      39FF343436FF323135FF302F32FF2E2D31FF2B2A2DFF212125FFB9B9B9FFF8F8
      F6FFF9F9F9FF8A8888D201010106000000001515151D464441D8201E1CFF2725
      23FF32302EFF3C3B39FF383737FF3C3C3DFF5F5C5BFF967464FF9E7562FFB48D
      79FFC19A86FFD1AC99FFDFBFAFFFEDD8CCFFFBF0EAFFFEFAF5FFFFFEFCFFFEF9
      F1FFFDEEDCFFFEEDD4FFD1C8B9FF494A4BFF393939FF343332FF33312FFF2C2A
      28FF23211FFF1E1C1AFF444140E41D1D1C2B0000000000000000000000000303
      030815151536A9A7A3FF979693FF4A4A4AFF70706FFF62625CFF747267FF9E9A
      88FF7D796DFF5D5A55FF59585BFF666869FF6D6D6EFF686869FF5A5A5AFF7B7A
      7AFFF3F3F3FFF1CCA5FFF7E7DDFFC5C9C0FFBDBFAFFF828478FF3B413BFF464D
      45FF464A42FF2F3127FF1B1A17B30000000000000000000000009A9590E6FFFF
      FFFFFFFFFFFFFCFCFCFFFBFAFAFFFFFFFFFFF5F2F2FFDFD6D6FFD7CCCCFFD0C4
      C4FFCAB8B3FFC88C4DFFDEAA70FFD59143FFD69448FFDCA464FFE5B987FFDCA5
      66FFD49D63FFDBCCC5FFD7CDCDFFC6BBBAFF8D827AFF776D63FFADA19EFF938C
      85EF0707060C00000000000000000000000000000000020202047C7C7CC5F6F6
      F6FFF1F1F0FFDFDFDEFF8E8E90FF8B8B8DFF87878AFF848385FF807E81FF7B7A
      7CFF767678FF737275FF6F6E71FF6B6A6DFF666668FF626164FF5E5D60FF5A59
      5CFF555658FF535254FF4E4E51FF4A4A4DFF444547FF3E3F41FFC8C8C8FFF3F3
      F2FFF6F6F5FF767575BE02020204000000001D1D1C2C444140E5262421FF3634
      31FF44413FFF504E4BFF393736FF202020FF3E3C3CFF7D6457FF7E5B48FF8C66
      53FF9A735FFFAA846EFFBC9C8BFFD2C1B8FFE1DAD7FFE2DFDCFFE3E2E1FFE1DD
      D7FFDDCDB9FFDFCCB2FFA9A49AFF292A2AFF212121FF3B3937FF413F3CFF3A37
      35FF312E2CFF25221FFF413F3CEE2625243C0000000000000000000000000000
      00002D2E2B6FD7D7D0FFCCCECCFF030404FF3F4142FF0D0C0EFF222123FF5C5D
      5BFF707071FF797A7CFF838484FF818081FF747474FF6B6B6BFF646363FF4746
      47FF989898FFFFFFFFFFFFFFFFFFE8E7E4FFBABAADFFB1B0A3FF4C4F4AFF3F46
      3EFF454A42FF393E32FF1E1D18CE0000000000000000000000009A9590E6FFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFEFFF9F7F7FFF0ECECFFE9E3E3FFE3DBDBFFD7BA
      A1FFD38F46FFD89852FFCC781CFFCF822AFFD38C3BFFD7974CFFDBA15CFFE0AD
      6FFFE6BF8EFFD89A53FFD9B89AFFDBD2D2FFD5CACAFFBDB2B0FFC9BBBBFFC2B9
      B6FF23211F3B000000000000000000000000000000000101010260605FA7F4F4
      F3FFEEEEEDFFE1E0E0FF9A999BFF949496FF929293FF8E8E8FFF8A898BFF8585
      87FF808082FF7B7A7CFF767578FF747376FF6F7072FF69696CFF666568FF6362
      65FF5F5E62FF5D5B5FFF5A595CFF575659FF515254FF525153FFD3D2D2FFF0EF
      EEFFF3F3F3FF5A5A59A001010102000000002727263F464441EF302D2AFF413E
      3BFF4F4C4AFF5C5A57FF393736FF050505FF141313FF463932FF49362CFF523E
      33FF5B463CFF644F44FF6F5F55FF7C746EFF847E7BFF837D79FF868481FF827A
      72FF806E5CFF827767FF595854FF070708FF0C0C0CFF403D3BFF494643FF423F
      3CFF393633FF2E2B28FF43403DF62F2E2D500000000000000000000000000000
      0000585751ABF7F8F4FFA9ABACFF1F2120FF737674FF858485FF949394FF8D8E
      8EFF8F9090FF8C8B8CFF808080FF727071FF605F5FFF535453FF4D4C4DFF4947
      49FF403E3FFF929291FFE0E0DFFFFFFFFFFFE5E5E4FFBBBBAEFF8A8A7CFF3A3F
      37FF3D4238FF3D4237FF25281FDA000000000000000000000000827B76D2F6F5
      F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBFFEDDED1FFD2995DFFD697
      52FFCD781EFFC86B08FFCB7618FFCF8129FFD38B39FFD69549FFDA9F59FFDEA9
      69FFE1B278FFE5BC88FFDFAE72FFD5A16BFFDFD7D7FFD9CFCFFFD3C8C8FFC7BF
      BCFF21211F3A000000000000000000000000000000000101010260605FA7F4F4
      F3FFEEEEEDFFE1E0E0FF9A999BFF949496FF929293FF8E8E8FFF8A898BFF8585
      87FF808082FF7B7A7CFF767578FF747376FF6F7072FF69696CFF666568FF6362
      65FF5F5E62FF5D5B5FFF5A595CFF575659FF515254FF525153FFD3D2D2FFF0EF
      EEFFF3F3F3FF5A5A59A00101010200000000302F2E504A4743F636322EFF433F
      3BFF4C4945FF53504DFF32302EFF141415FF212020FF2E2B29FF302B28FF332D
      2BFF342E2BFF38322FFF3B3633FF3E3A38FF403E3CFF474442FF4F4D4BFF524C
      47FF514A43FF4F4C47FF3C3B3CFF1D1D1FFF111111FF423F3CFF4D4945FF4642
      3FFF3E3A36FF34302CFF46423FFA383736620000000000000000000000000000
      0000A5A5A1FFFEFFFEFF8A8A8BFF525352FF9C9C9CFF979796FF939393FF8C8A
      8BFF7D7D7DFF676869FF565556FF4B4A4CFF4D4C4CFF575657FF686969FF8183
      82FF9C9B9AFF888989FF666666FFA0A0A0FFFEFEFFFFEAEBE8FFB5B4A8FF7778
      6EFF363930FF313728FF2E3128DA00000000000000000000000039363362B5B0
      AAFEFCFCFBFFFFFFFFFFFAF5F1FFE4C7ADFFCE9259FFD08B43FFD99A55FFD897
      4FFFD48D3FFFD18533FFCF8029FFCE7E27FFD28834FFD59244FFD99B53FFDCA4
      61FFDFAC6DFFE1B277FFE2B57DFFD89B54FFE0C0A3FFE3DCDCFFDDD5D5FFC9C2
      BFFF1F1E1C35000000000000000000000000000000000000000042424287F2F2
      F2FFEEEDEDFFE0E0DFFFA9A9A9FFA3A3A4FF9D9D9EFF99999AFF959697FF9595
      96FF949496FF969697FF979698FF8E8E8FFF89888AFF919092FF8B8A8BFF8181
      83FF78777AFF717073FF676769FF616063FF58575BFF636164FFDDDCDCFFEFEE
      EDFFF1F1F1FF3D3D3C7F0000000000000000383735585D5956F82D2A26FF322F
      2BFF393531FF3E3A36FF393633FF737372FFA9A8A8FFAFADA8FFB0ADA9FFB5B4
      B3FFB0B0B0FFACACACFF989082FF8D7E64FF94866DFFA8A296FFBCBCBBFFB8B6
      B2FFC1BFBCFFD1D1D0FF9A9ABBFF79799AFF52504EFF3B3834FF3E3A37FF3A36
      32FF322F2BFF2D2926FF5A5753FC403E3E680000000000000000000000000000
      0000A5A5A1FFFFFFFFFF777777FF5C5D5DFF959495FF848383FF717170FF5A5B
      5BFF4C4A4CFF484849FF535452FF666666FF7D7E80FF989898FFAAA9A9FFA8A9
      A9FF8E8D8EFF686768FF464646FF343533FF787978FFE4E4E6FFF0F0EFFFB0AF
      A4FF706E63FF33352AFF42433BD60000000000000000000000003131307BA8A2
      9CF9928D88FC866F5DFFBE7C3EFFD18C42FFDEA76BFFEBC9A4FFE9C59EFFE4B8
      88FFDFAB71FFDB9E5CFFD89851FFD69347FFD38D3DFFD48E3EFFD79549FFD99D
      56FFDCA460FFDDA868FFDEAA6BFFDBA25FFFE6BD91FFF5F3F3FFE8E2E2FFCCC6
      C3FF1C1A192F00000000000000000000000000000000000000003131306FF0F0
      EFFFEEEEEDFFE0DFDFFFADADADFFB3B3B3FFC6C5C5FFCFCECEFFD0D0CFFFD7D6
      D6FFD8D7D7FFDEDDDDFFE6E5E6FFDEDEDEFFDBDADAFFE6E5E5FFE2E1E0FFDEDD
      DCFFDCDBDBFFD1CFCFFFC4C3C3FFBBB9B9FFAEACAEFF989899FFE1E0E0FFEEEE
      EDFFEFEFEFFF2C2C2C67000000000000000033313151959391F6767370FF5956
      53FF504D4AFF53514EFF575552FF6F6D6CFF838281FF8D8C8AFF8D8B8AFF8C8A
      89FF898887FF868583FF76716CFF6B645BFF706A61FF7A7671FF838281FF817E
      7CFF868482FF8F8E8CFF818086FF727177FF646260FF54524FFF53504EFF504D
      4AFF5B5856FF7B7875FF9B9894F93B3A395D0000000000000000000000000000
      0000A5A5A1FFFFFFFFFF737172FF504F4FFF606061FF4C4A4BFF484948FF5153
      52FF656465FF7A7A7AFF949494FFA7A7A7FFAAAAABFF989998FF707070FF3E3E
      3FFF1B1B1AFF111111FF232322FF393939FF3D3C3BFF565656FFC0C0C3FFEEED
      EEFFAFAEA5FF828174FF343332850000000000000000000000006A6765D1A8A0
      9AFF978F88FD837D77FF6C6057FF94602CFFD99D5BFFF0D7BCFFEFD3B6FFEAC6
      A0FFE5B98AFFE0AC73FFDCA363FFDA9D58FFD89750FFD6954AFFD7964CFFD89A
      52FFDA9F59FFDA9F59FFD49247FFC38C58FFD8CECEFFFBF9F9FFFDFDFDFFC5C0
      BBFF1918162A00000000000000000000000000000000000000001E1E1E59EEEE
      EEFFF0EFEFFFDFDFDEFFB2B2B1FFD8D6D6FFDEDDDDFFE0DFDEFFDFDEDEFFE2E1
      E0FFCECCCCFFCECDCDFFDFDFDFFFE0E0E0FFE0E0E0FFDDDCDCFFC9C9C9FFC7C6
      C5FFDFDEDDFFDCDADAFFDDDCDBFFDDDCDBFFE0DEDDFFC3C2C2FFE1E1E0FFEFEF
      EFFFEDEDEDFF1A1A1A5100000000000000002524243C9F9C99EEC8C4C1FFD5D3
      D1FFD0CFCEFFE7E6E6FFE6E5E4FFE2E1E0FFDFDEDDFFDCDBDAFFDAD9D8FFD8D7
      D6FFD7D5D4FFD5D4D2FFD4D3D2FFD4D2D1FFD1CFCEFFCAC8C7FFCBCAC8FFCECC
      CBFFD1CFCEFFD3D2D0FFD7D6D4FFDBDAD8FFE0DFDDFFE4E3E2FFE3E2E1FFD0CF
      CEFFD7D6D4FFC8C5C2FFA39F9CF22B2B2A460000000000000000000000000000
      0000A5A5A1FFFFFFFFFF666566FF3F3F3FFF545455FF656666FF7C7B7DFF9393
      92FFA4A5A5FFAAAAABFF9D9F9EFF7E7E7DFF585857FF3A3938FF282727FF2425
      24FF212121FF191919FF10100FFF070807FF121110FF282727FF474747FFD1D1
      D3FFB3B2B1FF494946A3050505120000000000000000000000003736368CC4C1
      BFF7959290FFBFBFBFFFC5C5C5FF8D847CFF6D5D4FFFA96A28FFDFAB71FFEED2
      B4FFEAC8A2FFE5BA8CFFE0AD76FFDDA668FFDB9F5DFFD99A53FFD7964BFFD89A
      53FFD7974EFFCC8332FFCAA17DFFC9BBBBFFC3B3B3FFC1B0B0FFE0D8D8FF9F97
      91FB0807070D00000000000000000000000000000000000000001414144AEDEC
      ECFFF8F8F8FFECECEAFF959695FF8E8F8EFF919191FF90908FFF908F8FFF9190
      90FF949392FF959594FF959594FF969796FF969796FF949494FF939493FF9292
      91FF8E8F8EFF8D8E8DFF8D8D8DFF8D8D8CFF8A8A89FF929291FFEEEEEDFFF8F8
      F8FFEBEBEBFF1212124200000000000000001615152391908DDDC5C2BFFFDCDB
      D9FFDCDBDAFFF3F2F2FFF3F2F2FFF0F0EFFFEEEDECFFECEBEAFFE9E8E7FFE7E6
      E5FFE5E4E3FFE3E2E0FFE1E0DEFFE0DEDDFFDBDAD8FFD6D4D3FFD9D7D5FFDCDA
      D8FFDFDDDCFFE2E1DFFFE6E4E3FFE9E8E7FFEDECEBFFF1F0EFFFEDEDECFFDDDD
      DCFFDDDBDAFFC5C2BFFF96938FE21A1A192A0000000000000000000000000000
      0000A5A5A1FFFAFAFAFF707171FF818181FF949594FF9C9E9EFFA2A2A4FF9B9C
      9BFF888788FF6B6B6CFF565656FF464746FF4C4C4DFF6C6C6CFF808081FF9C9C
      9CFFA4A4A5FFA4A3A5FF100F0FFF060506FF161616FF605F5FFF949493FF9999
      98F6353434830201020400000000000000000000000000000000000000006360
      5EAA908D8BFFDDDDDDFFC8C8C8FFCECECEFFC6C5C5FF7C716AFF765B43FFBE77
      2CFFE3B482FFEBC9A5FFE6BC8EFFE1B079FFDEA86BFFDBA05EFFD89850FFD288
      37FFC27323FFD7BCA7FFDCD2D2FFD5CACAFFCFC2C2FFCEC2C2FFABA49EFA3634
      315C000000000000000000000000000000000000000000000000161616269F9F
      9FDCC5C4C4F8B9B9B8F1B9B9B8F5C2C2C2FFE8E7E7FFE6E5E5FFE6E5E4FFE5E4
      E4FFE5E5E4FFE5E4E4FFE5E4E3FFE3E3E3FFE3E3E2FFE3E3E2FFE3E3E2FFE3E2
      E2FFE3E2E2FFE3E2E2FFE2E2E2FFE3E2E2FFB6B5B4FFB9B8B7F9B4B4B4F9C5C4
      C4F79C9C9CD81313132100000000000000000808080D7F7D7BC0C4C1BFFFDDDC
      DAFFDFDEDDFFF1F0F0FFF3F2F1FFF0EFEEFFEDECECFFEBEAE9FFE8E7E6FFE6E5
      E4FFE4E2E1FFE2E0DFFFE0DEDDFFD5D4D2FFC8C5C4FFD6D4D2FFD8D6D5FFDBD9
      D8FFDEDDDBFFE1E0DFFFE5E4E3FFE8E7E6FFECEBEAFFF0EFEFFFEBEAEAFFE2E1
      E0FFDDDBD9FFC3C1BEFF83827DC70B0A0A110000000000000000000000000000
      00007C7C77D6E8E8E7FF9B9B9AFF6B6B6CFF767676FF898989FF747474FF6766
      68FF5F5E5FFF595A5AFF6A6A6AFF8A8B8BFFA9A8A9FFDDDDDEFFF7F7F8FFEFEF
      EFFFF5F5F6FFDEDEDFFF4B4A4CFF626162FF908E8FFF808080FB535353AC2120
      205000000000000000000000000000000000000000000000000003030305B1AC
      A8ECA1A09FFFD5D5D5FFCACACAFFCECECEFFD4D4D4FFDADADAFFBCB9B7FF6F65
      5EFF865C35FFCB8436FFE5B989FFE6BD90FFE1B17BFFDA9C58FFCE7E28FFBA6C
      23FFEADBD0FFEEEAEAFFE8E1E1FFE1D9D9FFDAD3D2FF88817BD81A19172C0000
      0000000000000000000000000000000000000000000000000000000000000505
      05080404040B0505050A16171623B2B1B1FFF6F5F5FFF1F0F0FFF1F0F1FFF2F1
      F1FFF2F1F1FFF2F1F1FFF2F1F0FFF1F1F0FFF1F1F0FFF1F1F0FFF1F1F0FFF1F0
      F0FFF1F0F0FFF1F0F0FFF1F0F0FFF5F4F4FFBBBABBFF181818270404040B0604
      040B050505080000000000000000000000000000000062626095C2C0BDFFDEDC
      DBFFE4E3E2FFF0EFEFFFF3F2F1FFF0EFEEFFEDECEBFFEBEAE9FFE8E7E6FFE6E4
      E3FFE3E2E1FFE1DFDEFFDFDDDCFFD4D2D0FFCCCAC8FFD6D4D2FFD8D6D5FFDBD9
      D8FFDEDDDBFFE1E0DFFFE5E4E3FFE8E7E6FFECEBEAFFF0EFEFFFEAEAE9FFE6E5
      E4FFDDDBD9FFC1BFBCFF6866639E010101010000000000000000000000000000
      000040403D7082827ED9B7B6B6FF4E4E4DFF39393AFF6F6E6EFF757474FF6D6D
      6CFF626162FF7C7B7CFFD1D1D2FFF1F1F2FFF2F2F3FFF8F8F9FFF3F3F4FFD1D1
      D2FFA9A9A9FF767676FF747374FF777677FF626161FF212122ED030303080000
      00000000000000000000000000000000000000000000000000003A383753BAB5
      B3FFC7C7C7FFE3E3E3FFE1E1E1FFE0E0E0FFDFDFDFFFDEDEDEFFDEDEDEFFE1E1
      E1FFA7A19DFF6B5F57FF996029FFD59045FFD58E41FFB9620DFFC38D60FFFBF7
      F4FFFFFFFFFFFAF9F9FFF3F0F0FFCFCAC6FF5A55509805050509000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001A1A1A22BCBBBAFFF9F8F8FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF8F7F7FFC1C1C1FF1F1F1F26010101010000
      0000000000000000000000000000000000000000000042404063BFBCBAFEDEDC
      DBFFE8E7E6FFF0EFEFFFF3F2F1FFF0EFEEFFEDECEBFFEAE9E9FFE8E7E6FFE5E4
      E3FFE3E1E0FFDFDEDCFFD9D8D6FFD4D3D1FFD4D2D0FFD6D4D2FFD8D6D5FFDBD9
      D8FFDEDDDBFFE1E0DFFFE5E4E3FFE9E8E7FFECEBEAFFF0EFEFFFEBEBEAFFE9E9
      E7FFDCDBD9FFBEBCB9FF4747446D000000000000000000000000000000000000
      0000030303053F3F3C6A73736FC590908CE4838483FF5B5B5BFF5D5C5DFF6262
      62FF5D5D5DF9ECECEDFFEFEFF0FFE1E1E2FFCBCBCBFFB1B1B1FF7B7B7CFF6261
      63FF5E5D5EFF626262FF616262FF616061FF636363FF2D2F2DED0505050E0000
      00000000000000000000000000000000000000000000000000008B8784BD9C9A
      97FFEDEDEDFFECECECFFEAEAEAFFE8E8E8FFE8E8E8FFE9E9E9FFE9E9E9FFE4E4
      E4FFE2E2E2FFDCDCDCFF827973FF6B594CFF9A5926FFE0C9B9FFFFFFFFFFFFFF
      FFFFFEFEFEFFE0DEDBFF87807BD52D2B284C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101017B9B9B9F6FBFAFAFFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF9F8F8FFC0BFBFFB03030305000000000000
      0000000000000000000000000000000000000000000020202031AAA8A6EAD9D8
      D6FFE9E9E8FFEFEFEEFFF1F1F0FFEFEEEDFFEDECEBFFE9E8E7FFE6E5E4FFE2E1
      E0FFDDDCDAFFD8D6D5FFD4D3D1FFD3D1CFFFD2D0CFFFD4D2D1FFD7D5D3FFDAD8
      D6FFDDDBDAFFE0DFDDFFE4E3E2FFE8E7E6FFEBEAE9FFEEEEEDFFECECEBFFE9E9
      E7FFD5D4D2FFA5A3A1E922212134000000000000000000000000000000000000
      000000000000020202042222203951514E8C7B7B76D0757571CA41413F9B2828
      2872242424574445458D545454BF3E3E3EC6494949D7363736FF626262FF6767
      67FF696969FF686868FF696969FF6C6B6BFF6E6E6DFF333232F1060607130000
      000000000000000000000000000000000000000000000707070BC9C4C0FEA1A0
      9FFFEDEDEDFFF5F5F5FFF3F3F3FFF0F0F0FFEFEFEFFFEEEEEEFFEEEEEEFFEEEE
      EEFFE7E7E7FFDCDCDCFF9C9C9CFF898581F8A49E96FCD9D6D3FFF9F8F8FFDDDB
      D8FF847E78D3312E2B5201010101000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020204A1A1A1DCFFFFFFFFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFB7B6B6F400000002000000000000
      00000000000000000000000000000000000000000000030303055756557EACAB
      AAE3C8C7C6F1CFCFCEF2CFCECEF2CDCCCBFAC9C8C7FFCECDCCFFCDCCCBFFC9C7
      C5FFC4C3C2FFC2C1BFFFC0BFBDFFBFBDBBFFBEBDBBFFC0BEBDFFC2C0BFFFC4C3
      C1FFC8C5C4FFCAC8C7FFC2C1C0FFC3C2C1FEC7C6C5F4C9C9C8F2CACAC9F2C2C1
      C0EF9D9C9BD64745456A03020204000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000606061109090916323131864A494AFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6F6F6FFF707070FF757374FF393838F3090909180000
      0000000000000000000000000000000000000000000017161522CECAC7FFA1A1
      A0FFE7E7E7FFFCFCFCFFFBFBFBFFF9F9F9FFF6F6F6FFF5F5F5FFF3F3F3FFF3F3
      F3FFF2F2F2FFDEDEDEFF848383FEABA39EFF988F88FF615D5AC7514C48882D2B
      284C010101010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000019A9A9AE0FFFFFFFFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFAFAEAEF401010102000000000000
      0000000000000000000000000000000000000000000000000000030303051818
      1823282828362C2A2A392A2A2A37383838A5414040FFBFBEBEFFEFEEEEFFEBEB
      EBFFEAEAEAFFE9E9E9FFE8E8E8FFE7E7E7FFE7E6E6FFE6E6E5FFE6E5E5FFE5E5
      E4FFE5E5E5FFDCDBDBFF5E5E5DFF393939E62D2D2D50292929372A2A2A392424
      2332101010190101010200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000272626634F4E4EFF717171FF7372
      73FF727272FF757575FF767676FF757575FF7D7C7DFF414041F80E0E0E270000
      000000000000000000000000000000000000000000000B0B0A11C6C3BFFAC6C1
      BEFF9F9D9BFFD1D1D1FFF3F3F3FFFFFFFFFFFFFFFFFFFCFCFCFFFAFAFAFFF8F8
      F8FFF7F7F7FFCECECEFF767575DDB2AEABF2AFABA8F219191948000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001929292E3FFFFFFFFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFA4A3A3F500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C1C1C743E3E3EFFC5C5C5FFF8F8F8FFF4F4
      F4FFF3F3F3FFF2F2F2FFF1F1F1FFF0F0F0FFEFEFEFFFEEEEEEFFEDEDEDFFECEC
      ECFFECECECFFE2E2E2FF5D5D5DFF2C2C2CCF0404041200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001919193D595858FD7C7C7EFF8686
      86FF79797AFF777676FF787878FF7A7A7AFF878785FF4C4C4DFE171717470000
      0000000000000000000000000000000000000000000000000000787470A8E1DF
      DDFFC0BBB6FFBAB6B3FFA1A09FFFDDDDDDFFF7F7F7FFFFFFFFFFFFFFFFFFFFFF
      FFFFF6F6F6FFA1A1A1FF4342425A131313381E1E1E5400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001929292E3FFFFFFFFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFA4A3A3F500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F0F0F352F2F2F91BABABAE3EBEBEBFFE9E9
      E9FFE8E8E8FFE7E7E7FFE6E6E6FFE6E6E6FFE5E5E5FFE5E5E5FFE4E4E4FFE4E4
      E4FFE4E4E4FFDADADAF9515151A81C1C1C690101010500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E255B5B5BDE8A8C8BFFA1A2
      A1FF999899FF8E8D8DFF8F8E8EFF8B8B8CFF959595FF5E5E5EFF1B1B1B690000
      00000000000000000000000000000000000000000000000000000F0F0E17AEAB
      A6E2E0DDDBFFC2BEBAFFC9C4C0FFB4B1AEFFA5A4A4FFE4E4E4FFFBFBFBFFFFFF
      FFFFE7E7E7FF8D8C8CFA02020203000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001929292E3FFFFFFFFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFA4A3A3F500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008080809ABABABC0E4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE5E5E5FFE5E5E5FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8
      E8FFE9E9E9FFDDDDDDF232323238000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202094C4D4DC79FA09FFFC0C0
      BFFFC2C1C2FFD0D0D0FFDADADAFFD7D7D7FFB9B9BAFF6E6F6FFF1A1A1A730000
      0000000000000000000000000000000000000000000000000000000000001615
      1520ADA8A6DDE1DFDDFFD0CCC9FFC8C4C0FFCCC8C4FFA7A4A3FFB1B1B1FFDFDF
      DFFFCBCBCBFF5251519F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001929292E3FFFFFFFFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFFCFBFBFFA4A3A3F500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008080809AFAFAFBFE9E9E9FFEAEA
      EAFFEBEBEBFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2F2FFF4F4
      F4FFF5F5F5FFE9E9E9F233333337000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000444444ACA9AAAAFFDADB
      DAFFDADADBFFCACBCCFFACADADFF959797FF848585FE4B4B4BC0090A0A260000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030303044F4D4B6EC5C2BFEED9D6D3FFDAD6D4FFD1CDC9FFC6C2BFFF9594
      93FA8B8B8BFD0707071700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001929393E3FFFEFEFFF5F4F4FFF5F4F4FFF6F5
      F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6
      F6FFF7F6F6FFF7F6F6FFF7F6F6FFFDFCFCFF3434347800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050506ACACACB6F3F3F3FFF4F4
      F4FFF5F5F5FFF6F6F6FFF7F7F7FFF8F8F8FFF9F9F9FFFAFAFAFFFAFAFAFFFBFB
      FBFFFBFBFBFFE8E8E8ED2C2C2C2F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021232350676868DE8486
      86FA727373F45F5F5FCC434343A63131318A1C1C1C5504040412000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001D1C1C28494745624B4947633F3D3B530B0B
      0B0F080808190000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000019F9F9FEBFFFFFFFFFFFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1919195B01010102000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010101404040456464646A6161
      6168616161686161616861616168636363686363636863636368636363686363
      6368646464695858585E0E0E0E0F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020303010101020000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000191919532525256523222261232222612322
      2261232222612322226123232361232323612323236123232361232323612323
      236123232361232323612323236125252564211F1F5E00000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      F800001F000000000000000000000000F800001F000000000000000000000000
      C000001100000000000000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      4000000100000000000000000000000040000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000003000000000000000000000000
      C0000003000000000000000000000000C0000003000000000000000000000000
      C0000003000000000000000000000000E0000003000000000000000000000000
      E0000003000000000000000000000000E0000003000000000000000000000000
      FE00003F000000000000000000000000FE00001F000000000000000000000000
      FE00001F000000000000000000000000FE00003F000000000000000000000000
      FE00003F000000000000000000000000FE00003F000000000000000000000000
      FE00003F000000000000000000000000FE00003F000000000000000000000000
      FE00003F000000000000000000000000FE00003F000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFFF800001FFFFFFFFFFFFFFFFF
      FFFFFFFFF800001FFFFFFFFFFFFFFE7FFFFFFFFFF800001FFC00007FFE0E383F
      FF8383FFF800001FFC00003FF800001FFE0000FFF800001FF000001FE000000B
      F800003FFC00003FF000000F80000005E000000FC0000003F000000F00000003
      C0000007800000018000000100000001C0000003800000018000000100000001
      C0000001800000018000000180000001C00000038000000100000000C0000001
      C00000038000000100000000E0000001C00000078000000100000000F0000001
      C00000078000000100000000F0000001C00000078000000100000000F0000001
      C0000007C000000300000000F0000001C0000007C000000300000000F0000001
      C0000007C000000300000000F0000001C0000007C000000300000000F0000003
      E000000FC000000300000000F000000FC000001FE000000780000000F000001F
      C000003FFC00001F80000001F000001FC00000FFFC00003F80000001F800001F
      800001FFFC00003F80000001FFFC001F800007FFFC00003FC0000003FFFF001F
      80003FFFFC00007FFE00007FFFFF001FC0007FFFFC00007FFE00007FFFFF001F
      C001FFFFFC00007FFF0001FFFFFF001FE003FFFFFC00007FFF0001FFFFFF801F
      F003FFFFFC00007FFF0001FFFFFF803FFE07FFFFFC00003FFF0001FFFFFF9F7F
      FFFFFFFFFE00003FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Imagens'
    Left = 567
    Top = 440
  end
  object MenuDireita: TPopupMenu
    OnPopup = MenuDireitaPopup
    Left = 511
    Top = 468
    object Financeiro1: TMenuItem
      Caption = 'Financeiro'
      OnClick = Financeiro1Click
    end
    object PoupClientes: TMenuItem
      Caption = 'Clientes'
      OnClick = PoupClientesClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object PoupReativarVenda: TMenuItem
      Caption = 'Reativar Venda'
      OnClick = PoupReativarVendaClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object VerificarEstoque: TMenuItem
      Caption = 'Verificar Estoque'
      OnClick = VerificarEstoqueClick
    end
    object PoupCopiarVendacomProdutos: TMenuItem
      Caption = 'Duplicar Pedido'
      OnClick = PoupCopiarVendacomProdutosClick
    end
    object PoupTransferirVendaparaEmpresa: TMenuItem
      Caption = 'Transferir Pedido para Empresa'
    end
    object PoupCdigosdeBarras: TMenuItem
      Caption = 'C'#243'digos de Barras'
      object PoupAutoPreenchercdigodebarras: TMenuItem
        Caption = 'Auto-Preencher'
        OnClick = PoupAutoPreenchercdigodebarrasClick
      end
      object PoupImprimirCdigosdeBarras: TMenuItem
        Caption = 'Imprimir'
        OnClick = PoupImprimirCdigosdeBarrasClick
      end
    end
    object LanarCrdito2: TMenuItem
      Caption = 'Lan'#231'ar Cr'#233'dito'
    end
  end
  object UcHistVenda_Financeiro: TUCHist_DataSet
    DataSet = Venda_Financeiro
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    CampoPK2 = 'CODVENDA'
    Tabela = 'VENDA_FINANCEIRO'
    Modulo = 'VENDAS'
    Left = 231
    Top = 440
  end
  object UcHistVenda_Produto: TUCHist_DataSet
    DataSet = Venda_Produto
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    CampoPK2 = 'CODVENDA'
    Tabela = 'VENDA_PRODUTO'
    Modulo = 'VENDAS'
    Left = 231
    Top = 412
  end
  object UcHistFinanceiro: TUCHist_DataSet
    DataSet = Financeiro
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    CampoPK2 = 'CODPEDIDO'
    CampoPK3 = 'CODEMPRESA'
    Tabela = 'FINANCEIRO'
    Modulo = 'VENDAS'
    Left = 203
    Top = 496
  end
  object MenuFinanceiro: TPopupMenu
    OnPopup = MenuFinanceiroPopup
    Left = 567
    Top = 468
    object Excluirparcelas1: TMenuItem
      Caption = 'Excluir parcelas'
      OnClick = Excluirparcelas1Click
    end
    object Reajustarvenctodasparcelas1: TMenuItem
      Caption = 'Reajustar vencimento das parcelas'
      OnClick = Reajustarvenctodasparcelas1Click
    end
  end
  object UCHistWRGeral1: TUCHistWRGeral
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    Left = 539
    Top = 496
  end
  object MenuEmpresas: TPopupMenu
    OnPopup = MenuEmpresasPopup
    Left = 567
    Top = 524
  end
  object DSPessoas_Contato: TDataSource
    DataSet = Pessoas_Contato
    Left = 343
    Top = 412
  end
  object DSPessoas_Entrega: TDataSource
    DataSet = Pessoas_Entrega
    Left = 343
    Top = 440
  end
  object TimerHintGridFinanceiro: TTimer
    Enabled = False
    Interval = 200
    Left = 455
    Top = 468
  end
  object DSProduto_Centro_Trabalho: TDataSource
    DataSet = Venda_Produto_Centro_Trabalho
    Left = 203
    Top = 468
  end
  object DS_PessoasChequesAutorizados: TDataSource
    DataSet = PessoasChequesAutorizados
    Left = 343
    Top = 468
  end
  object DSConsultaProdutoGrid: TDataSource
    AutoEdit = False
    DataSet = ConsultaProdutoGrid
    Left = 287
    Top = 524
  end
  object ActionList1: TActionList
    Left = 427
    Top = 384
    object ActDefinirCTProdutos: TAction
      Caption = 'Definir C.T. para os Produtos'
      Hint = 
        'Define um Centro de Trabalho para os produtos que n'#227'o possuem ne' +
        'nhum'
      OnExecute = ActDefinirCTProdutosExecute
    end
  end
  object DSVenda_Produto_MD: TDataSource
    DataSet = Venda_Produto
    Left = 427
    Top = 468
  end
  object ImgListBotoesDescAcresc: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 32506283
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000090000
          000E0000000F0000000F0000000F0000000F0000001000000010000000100000
          0010000000100000001000000010000000100000000F0000000A784A2EC1A567
          3FFFA66640FFA5663FFFA5663EFFA5663EFFAD725EFFAC715DFFAC715DFFAC70
          5DFFAB705CFFAC705CFFAC705BFFAC6F5CFFAB6F5BFF7B5041C2A96B44FFE5C7
          98FFE6C896FFE9D1A6FFE5C696FFE5C696FFF5ECE5FFF5EBE5FFF4ECE5FFF4EB
          E5FFF5EBE5FFF5E9E4FFF4EBE4FFF4EBE4FFF4EBE5FFAC705CFFAB6E47FFE6CA
          9BFFE3C492FFAF7954FFE4C494FFE3C18CFFF5EBE5FFF4E9E2FFF4E9E3FFF4EA
          E2FFF4EAE3FFF4EAE3FFF4EAE2FFF4E9E2FFF4ECE6FFAD715EFFAE734BFFE8CC
          A0FFCFA77DFF95512DFFCEA77EFFE3C28FFFF5ECE8FF967568FFA78C80FFF4EA
          E3FFF4EAE5FFD3C2B8FF6B4130FFD5C2B8FFF6EDE9FFAD7360FFB1784FFFE9CF
          A5FFAA6F46FF975630FFA86D45FFE3C290FFF7EEEAFFF1E7E0FF8B6759FFBEA6
          9CFFF6EDE6FF6D4332FFF6EBE5FF6D4232FFF6EFEAFFAF7662FFB47C54FFEBD1
          AAFFE4C390FF9B5935FFE3C390FFE4C290FFF8F2EEFFF6EEE7FFE9DED6FF7F59
          4AFFCEBCB2FFD6C5BCFF704633FFD5C5BCFFF8F1EDFFB17864FFB78159FFECD6
          AFFFE4C591FF9E5E38FFE4C592FFE4C391FFF9F3F0FFF7EEE9FFF7EEEAFFE0D1
          CAFF835B4BFFDFD1C9FFF6EDE9FFF7EEE9FFF8F2EFFFB27A67FFBA865DFFEED9
          B3FFE5C592FFA3643CFFE5C593FFE5C592FFFAF5F2FFD8C8C0FF754B38FFD8C8
          C0FFD3C3BBFF845D4BFFE9DDD8FFF7EFEAFFFAF4F0FFB47C69FFBE8A61FFEFDB
          B7FFE5C593FFA7693FFFE5C693FFE5C694FFFAF5F4FF774D3AFFF7F0EDFF774D
          3AFFF8EFEDFFC2ACA3FF8F6C5EFFF3E9E7FFFAF5F3FFB67F6CFFC08E64FFF0DD
          BBFFE5C795FFAA6E44FFE5C795FFE6C795FFFBF7F6FFDBCBC4FF7A4E3BFFDACB
          C4FFF8F2EEFFF8F2EEFFB49B8FFF9F8072FFFAF7F4FFB7826FFFC29167FFF1DF
          BFFFE6C795FFAE7349FFE6C897FFE6C797FFFBF9F7FFFAF2F0FFFAF3F0FFF8F2
          EFFFFAF3F0FFFAF3F0FFF8F2EFFFFAF3EFFFFBF7F6FFB98472FFC5946AFFF1E0
          C1FFF1DFC1FFF1E0C1FFF1E0C1FFF1E0C1FFFDFCFBFFFCF9F8FFFCF9F8FFFCF9
          F7FFFCF8F7FFFCF8F6FFFCF8F7FFFCF8F6FFFCF8F7FFBB8775FF926F4FC0C595
          6BFFC5956BFFC5956BFFC5946AFFC4956AFFC08E7DFFC08E7CFFBF8D7CFFBF8D
          7BFFBF8C7AFFBF8B7AFFBE8B79FFBD8A79FFBD8A78FF8C6659C1000000020000
          0004000000040000000400000004000000040000000400000004000000040000
          0005000000050000000500000005000000050000000500000003}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C6500436F6E766572743B5265706561743B4172
          726F773B45786368616E6765762368D20000032A49444154785E6D53694C5467
          147D8330B21697B20D90B24C0483ED4075001FCB94B1044424D646238B457170
          196618360B3874405B96010B418AD461699125085202DABA0C830BAB92F00344
          88C4000D0442F901F8C78926A7EF23F32824BDC9C9FBBE77EE39F7BE7BF32812
          3FFE194A5DBB1F4A5DEDFA9ACAEB3A44E512741E2294C90F1D21C8BA237A109F
          EFE345EE0C38D9ADA2751D006A3D541D21D49A7E902224032306C68664CBCC3B
          C17831A3414167D4FBA45B7E6A9F309E8D81E76C1864B5065344187B55C093D7
          F84B537EA7DBD36ED3D3A90D011F526FD39859A9C3FCEA7D34F427435E1B301B
          7DED8B185260C38088132B842149D57E5D37B5E7F078AC18AF175AB0F0EE3146
          E71A31BEA4C6C06C26746F2FA37B220FDFE47B10A5396BC0892B1408641AFA69
          EBD0153C99284141CB499C2EDC8FD0741748AB6868DF48F1DBD011486F7AC337
          DE767EEFD19DF18C8ECB1A6CFBEEBAA0A8FCAF5834F7CA1197BF7F29F0A253B9
          30D6216CB78B99D3D1DC3DC86A3A80C0447BFD9E48EBF21D2E5C7B22DE3C0393
          98A2CF47EAFA629150EA8D83124715439A1263D26684920FF7C3564FEC7CCC0E
          327732C09D0CAC08CF1A708FE4F0F5114A77445CE1635FB88D1B439A19C02526
          0C2CE863E73D14B7FA91FC6B1FA273BBF4C48435303254B460601D79E1A72F65
          15DDDA14CD20612D0D2BB38CCE6928286C1F45AD6E12AE5FA58F93DC8D219224
          6FF1091B89BAF37A76FD90BE7D6401D28A67B073F5E2472695469D5236693234
          BDCBE50F277052D50647BFC4AACD5B308E5135464B6FF4FC5DA59D826EFA1D9A
          5FAD20A3660009255AA4302DABFF1843F5F3199C297E007771C6F02ECFC860A2
          630D4C253FEB70EFD532EE4EAEA2F2E53F281B5842E3F0021E4DADA1AE771619
          B5FD0853D4C33940DEF3A9D7B7C78966CB16C40965F1C7BE6F9B97D70C43FD74
          11EA678B0857B44070BCF8E3DEC3B9732EA2B4473CE159E5279F057A3082ED44
          4C849B67C0E579063988CEDCF8252AAB439FD23C0EF1A526C2BAB16B6357DB31
          B14AD909655B7FA6505933BB0D734F9124803E5DD91B24A927EC0E57B1927216
          65523C3A9DB2F75750B6BE72CA76AB018B8D6E4C0C15AD0DE7FF0DD6E05FDF42
          745F4BE48E490000000049454E44AE426082}
        FileName = 'Images\Actions\Convert_16x16.png'
        Keywords = 'Actions;Convert'
      end>
  end
  object WRCalc: TWRCalculaConfiguracoes
    DSVendaOuCompra = DS
    DSProduto = DSVenda_Produto
    DSCentroTrabalho = DSProduto_Centro_Trabalho
    DSProdutoPreco = DSProduto_Preco
    DSClientesProduto = DSProduto_Tabela_Preco
    TipoCalculo = tcVenda
    SPrTipoCalc = tssCalcVenda
    UsarTabelaDePreco = True
    TreeList = GridProdutoTree
    SprFormula = sprMotorCalculo
    Left = 455
    Top = 384
  end
  object DSPmPrincipal: TDataSource
    Left = 511
    Top = 412
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
      '      '
      
        '       P.*,   0.00000000 as NF_VALIQ_ESTADUAL,  0.00000000 as NF' +
        '_ALIQ_ESTADUAL, 0.00000000 as NF_ALIQ_NACIONAL,'
      
        '       0.00000000 as NF_VALIQ_IMPORTACAO,  0.00000000 as NF_ALIQ' +
        '_IMPORTACAO,  0.00000000 as NF_VALIQ_MUNICIPAL,'
      
        '        0.00000000 as NF_ALIQ_MUNICIPAL,  0.00000000 as NF_VALIQ' +
        '_NACIONAL,  0.00000000 as CALC_POUTRO_MANUAL,'
      
        '        0.00000000 as CALC_VOUTRO_MANUAL, 0 as SEQUENCIA,  0.000' +
        '00000 as CALC_VALOR_ORIGINAL,'
      
        '       0.00000000 as CALC_VUNITARIO_DESC,  0.00000000 as CALC_VU' +
        'NITARIO_OUTRO,  0.00000000 as CALC_VUNITARIO_FRETE,  0.00000000 ' +
        'as CALC_VUNITARIO_LUCRO_DESEJADO,'
      '       '
      '       --Campos Venda_Produto'
      
        '       VP.PATH, VP.PASSADAS, VP.FOLHAS, VP.TEM_REVERSO, VP.TEM_L' +
        'OGO, VP.CALC_TIPO_DESCONTO, VP.CODPRODUTO_PRECO,'
      
        '       VP.CODTIPO_IMPRESSAO, VP.TIPO_IMPRESSAO, VP.CODACABAMENTO' +
        ', VP.ACABAMENTO,'
      
        '       VP.NF_VFRETE, VP.CALENDARIO_DT_PREVISAO_FIM, VP.TEM_FRENT' +
        'E_VERSO, VP.OBS_PRODUCAO,'
      
        '       VP.VDESC, VP.PDESC, VP.NF_PREDBCST, VP.VOUTRO, VP.POUTRO,' +
        ' VP.CALC_VDESC_MANUAL,'
      
        '       VP.CALC_PDESC_MANUAL, VP.TOTAL_RELATORIO, VP.VALOR_RELATO' +
        'RIO, VP.DT_VALOR_ORIGINAL,'
      
        '       VP.NF_II_PII, VP.NF_II_VII, VP.CODPRODUTO_TABELA, VP.QTDA' +
        'DEPECA_FORMULA, VP.COMP_FORMULA, VP.LARG_FORMULA, VP.ESPESSURA_F' +
        'ORMULA, VP.ORDEM, VP. NF_PFCUFDEST, NF_PICMSUFDEST, NF_PICMS, NF' +
        '_PICMSST,'
      
        '       NF_PICMSINTER, NF_PICMSINTERPART, NF_VBCUFDEST, NF_VFCPUF' +
        'DEST, NF_VICMSUFDEST, vp.CODPRODUTO_TABELA,'
      '       NF_VICMSUFREMET, NF_VCREDICMSSN, NF_pCredSN,'
      '       P.PODE_SER_VENDIDO, P.PODE_SER_COMPRADO, P.ATIVO, '
      ''
      
        '       VP.NF_II_VDESPADU, VP.CALC_VMINIMO_VENDA, VP.CODUSUARIO_D' +
        'ESCONTO, VP.DT_APROVACAO_SAIDA_ETAPA, '
      ''
      '       --Campo adicional apenas para controle'
      
        '       cast('#39'N'#39' as varchar(1)) as DEVOLUCAO, PT.DESCRICAO AS PRO' +
        'DUTO_TIPO'
      'from PRODUTO P'
      ''
      
        '--Faz um Left Join com o Venda_Produto apenas para existir os ca' +
        'mpos na query e ser compat'#237'vel com o destino'
      
        'left join VENDA_PRODUTO VP on (VP.CODIGO is null) and (VP.CODVEN' +
        'DA is null)'
      'left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO)'
      'where (P.CODIGO = :CODPRODUTO)   '
      'order by VP.ordem desc'
      '')
    SQLComposicao.Strings = (
      
        'select PC.*, P.VALOR, P.CUSTO, P.TEM_COMPOSICAO, P.CALC_QPESO_BR' +
        'UTO, P.CALC_QPESO_LIQUIDO, P.UNIDADE, p.TEM_CONTROLE_ESTOQUE'
      'from PRODUTO_COMPOSICAO PC'
      'left join PRODUTO P on (PC.CODPRODUTO = P.CODIGO)'
      'where (PC.CODPRODUTO_COMPOSICAO = :CODPRODUTO)   '
      'ORDER BY PC.ORDEM')
    SQLTabelaPreco.Strings = (
      'select PT.DESCRICAO, PT.ATIVO, PTP.*'
      'from PRODUTO_TABELA_PRECO PTP'
      'left join PRODUTO_TABELA PT on PT.CODIGO = PTP.CODPRODUTO_TABELA'
      'where PTP.CODPRODUTO = :CODPRODUTO')
    SQLProdEtapas.Strings = (
      'SELECT PE.*, CT.DESCRICAO AS EQUIPE FROM PRODUTO_ETAPA PE '
      
        'LEFT JOIN CENTRO_TRABALHO CT ON CT.CODIGO = PE.CODCENTRO_TRABALH' +
        'O'
      'WHERE PE.CODPRODUTO = :CODPRODUTO'
      'ORDER BY PE.ordem ASC')
    SQLProdPreRequisito.Strings = (
      
        'SELECT PPR.*, CT1.DESCRICAO AS ETAPA, CT2.DESCRICAO AS PREREQUIS' +
        'ITO, PE1.ORDEM FROM PRODUTO_PREREQUISITO PPR'
      'LEFT JOIN PRODUTO_ETAPA PE1 ON PE1.CODIGO = PPR.CODPRODUTO_ETAPA'
      
        'LEFT JOIN PRODUTO_ETAPA PE2 ON PE2.CODIGO = PPR.CODPRODUTO_ETAPA' +
        '_PREREQUISITO'
      
        'LEFT JOIN CENTRO_TRABALHO CT1 ON CT1.CODIGO = PE1.CODCENTRO_TRAB' +
        'ALHO'
      
        'LEFT JOIN CENTRO_TRABALHO CT2 ON CT2.CODIGO = PE2.CODCENTRO_TRAB' +
        'ALHO'
      'WHERE PPR.CODPRODUTO = :CODPRODUTO'
      'ORDER BY PE1.ORDEM ASC')
    SQLProdBaixaAutomatica.Strings = (
      
        'SELECT PBA.*, PE.ORDEM, PC.DESCRICAO, CT.descricao AS EQUIPE FRO' +
        'M PRODUTO_BAIXA_AUTOMATICA PBA'
      'LEFT JOIN PRODUTO_ETAPA PE ON PE.CODIGO = PBA.CODPRODUTO_ETAPA'
      
        'LEFT JOIN CENTRO_TRABALHO CT ON CT.codigo = PE.codcentro_trabalh' +
        'o'
      
        'LEFT JOIN PRODUTO_COMPOSICAO PC ON PC.CODIGO = PBA.CODPRODUTO_CO' +
        'MPOSICAO'
      'WHERE PBA.CODPRODUTO = :CODPRODUTO')
    Connection = DMBanco.Banco
    DataSource = DSPmPrincipal
    TransacaoFD = DMBanco.Transacao
    Left = 483
    Top = 412
  end
  object WRCalcMemoria: TWRCalculaConfiguracoes
    DSVendaOuCompra = DS
    DSProdutoPreco = DSProduto_Preco
    DSClientesProduto = DSProduto_Tabela_Preco
    TipoCalculo = tcVenda
    SPrTipoCalc = tssCalcCadastro
    UsarTabelaDePreco = True
    ProdutoMemoriaConfiguracao = PmPrincipal
    TreeListEmMemoria = True
    SprFormula = SprMemoria
    Left = 455
    Top = 412
  end
  object WRFormataCamposDataSets1: TWRFormataCamposDataSets
    OnCarregaDataSets = WRFormataCamposDataSets1CarregaDataSets
    Left = 483
    Top = 384
  end
  object DSProduto_Preco: TDataSource
    DataSet = Produto_Preco
    Left = 287
    Top = 496
  end
  object DSProduto_Tabela_Preco: TDataSource
    DataSet = Produto_Tabela_Preco
    Left = 287
    Top = 440
  end
  object Venda_Produto: TFDQuery
    AfterClose = Venda_ProdutoAfterClose
    BeforeInsert = Venda_ProdutoBeforeInsert
    AfterInsert = Venda_ProdutoAfterInsert
    BeforeEdit = Venda_ProdutoBeforeEdit
    BeforePost = Venda_ProdutoBeforePost
    BeforeDelete = Venda_ProdutoBeforeDelete
    OnCalcFields = Venda_ProdutoCalcFields
    OnPostError = Venda_ProdutoPostError
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODVENDA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize, evCache]
    FetchOptions.RowsetSize = 10000
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select VP.*, P.VALOR_VENDA_MINIMO as VALOR_MINIMO_PRODUTO,  '
      '       iif('
      
        '       (select count(PR.SITUACAO) From PRODUCAO PR where (VP.COD' +
        'IGO = PR.CODVENDA_PRODUTO and VP.CODVENDA = PR.CODVENDA)and(PR.S' +
        'ITUACAO <> '#39'Cancelado'#39')and not(PR.SITUACAO is null)) > 0'
      '       , '#39'S'#39', '#39'N'#39') as EM_PRODUCAO,'
      
        '       iif(not(VPO.CODIGO is null), VP.TOTAL - VPO.TOTAL, 0) as ' +
        'DIFERENCA_TOTAL_VENDA_ORIGINAL,'
      
        '       iif(not(VPO.CODIGO is null), VP.VALOR - VPO.VALOR, 0) as ' +
        'DIFERENCA_VALOR_VENDA_ORIGINAL,'
      
        '       iif(not(VPO.CODIGO is null), VP.QUANT - VPO.QUANT, 0) as ' +
        'DIFERENCA_QUANT_VENDA_ORIGINAL'
      'from VENDA_PRODUTO VP'
      'left join PRODUTO P on (VP.CODPRODUTO = P.CODIGO)'
      
        'left join VENDA_PRODUTO VPO on (VP.CODVENDA_ORIGINAL = VPO.CODVE' +
        'NDA) and (VP.CODVENDA_PRODUTO_ORIGINAL = VPO.CODIGO)'
      'where (VP.CODVENDA = :CODIGO)'
      'order by VP.ORDEM asc  ')
    Left = 175
    Top = 412
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object Venda_ProdutoCodTabela: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodTabela'
      Calculated = True
    end
    object Venda_ProdutoSituacaoProducao: TStringField
      FieldKind = fkCalculated
      FieldName = 'SituacaoProducao'
      Size = 30
      Calculated = True
    end
    object Venda_ProdutoCustoPorPeca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CustoPorPeca'
      Calculated = True
    end
  end
  object Venda_Financeiro: TFDQuery
    AfterEdit = Venda_FinanceiroAfterEdit
    BeforePost = Venda_FinanceiroBeforePost
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODVENDA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select F.*, CO.DESCRICAO as CONTA, VFT.TEF_STATUS'
      'from VENDA_FINANCEIRO F'
      
        'left join CONTAS CO on (F.CODCONTA = CO.CODIGO) left join VENDA_' +
        'FINANCEIRO_TEF VFT on VFT.NSU = F.NSU'
      ''
      'where (F.CODVENDA = :CODIGO)'
      '      and (F.PESSOA_FORNECEDOR_CODIGO is null)')
    Left = 175
    Top = 440
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object Venda_FinanceiroMsgFinanceiro: TStringField
      FieldKind = fkCalculated
      FieldName = 'MsgFinanceiro'
      Size = 1000
      Calculated = True
    end
  end
  object Venda_Produto_Centro_Trabalho: TFDQuery
    AfterInsert = Venda_Produto_Centro_TrabalhoAfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSVenda_Produto_MD
    MasterFields = 'CODVENDA;CODIGO'
    DetailFields = 'CODVENDA;CODVENDA_PRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select VP.CODIGO, VP.CODVENDA, VP.CODVENDA_PRODUTO, VP.CODCENTRO' +
        '_TRABALHO,'
      
        '       VP.TEMPO, VP.SEQUENCIA, VP.DESCRICAO, VP.CODVENDA_PRODUTO' +
        '_CT_PRE_REQ'
      
        '       ,CT.DESCRICAO as CENTRO_TRABALHO, CT2.DESCRICAO as PRE_RE' +
        'QUISITO'
      'from VENDA_PRODUTO_CENTRO_TRABALHO VP'
      
        'left join CENTRO_TRABALHO CT on (VP.CODCENTRO_TRABALHO = CT.CODI' +
        'GO)'
      
        'left join VENDA_PRODUTO_CENTRO_TRABALHO REQ on (VP.CODVENDA_PROD' +
        'UTO_CT_PRE_REQ = REQ.CODIGO)'
      
        'left join CENTRO_TRABALHO CT2 on (REQ.CODCENTRO_TRABALHO = CT2.C' +
        'ODIGO)'
      'where (VP.CODVENDA = :CODVENDA)'
      '      and (VP.CODVENDA_PRODUTO = :CODIGO)')
    Left = 175
    Top = 468
    ParamData = <
      item
        Name = 'CODVENDA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ConsultaProdutoGrid: TFDQuery
    BeforeOpen = ConsultaProdutoGridBeforeOpen
    OnCalcFields = ConsultaProdutoGridCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = TransaFD
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select P.CODIGO, P.DESCRICAO, E.ESTOQUE as ESTOQUE_P, P.UNIDADE,' +
        ' P.VALOR, P.LOCAL,'
      
        '          P.CODFABRICA, P.VALOR_COMPRA, P.CALC_PDESC_ATACADO, P.' +
        'CALC_PACRESC_PRAZO,'
      
        '          P.CUSTO, P.CALC_VPRAZO, P.CALC_VATACADO, CALC_VVENDA_C' +
        'USTO_TOTAL'
      'from PRODUTO P'
      
        'left join PRODUTO_ESTOQUE E on (P.CODIGO = E.CODPRODUTO) and (E.' +
        'CODEMPRESA = :CODEMPRESA)   ')
    Left = 259
    Top = 524
    ParamData = <
      item
        Name = 'CODEMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
    object ConsultaProdutoGridCustoStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'CustoStr'
      Calculated = True
    end
    object ConsultaProdutoGridCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ConsultaProdutoGridDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object ConsultaProdutoGridESTOQUE_P: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_P'
      Origin = 'ESTOQUE'
      ProviderFlags = []
    end
    object ConsultaProdutoGridUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object ConsultaProdutoGridVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object ConsultaProdutoGridLOCAL: TStringField
      FieldName = 'LOCAL'
      Origin = 'LOCAL'
      Size = 30
    end
    object ConsultaProdutoGridCODFABRICA: TStringField
      FieldName = 'CODFABRICA'
      Origin = 'CODFABRICA'
      Size = 60
    end
    object ConsultaProdutoGridVALOR_COMPRA: TFloatField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
    end
    object ConsultaProdutoGridCALC_PDESC_ATACADO: TFloatField
      FieldName = 'CALC_PDESC_ATACADO'
      Origin = 'CALC_PDESC_ATACADO'
    end
    object ConsultaProdutoGridCALC_PACRESC_PRAZO: TFloatField
      FieldName = 'CALC_PACRESC_PRAZO'
      Origin = 'CALC_PACRESC_PRAZO'
    end
    object ConsultaProdutoGridCUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object ConsultaProdutoGridCALC_VPRAZO: TFloatField
      FieldName = 'CALC_VPRAZO'
      Origin = 'CALC_VPRAZO'
    end
    object ConsultaProdutoGridCALC_VATACADO: TFloatField
      FieldName = 'CALC_VATACADO'
      Origin = 'CALC_VATACADO'
    end
  end
  object Equipamento: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = TransaFD
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM EQUIPAMENTO'
      'WHERE (DESCRICAO LIKE :Desc)')
    Left = 315
    Top = 524
    ParamData = <
      item
        Name = 'DESC'
        ParamType = ptInput
      end>
  end
  object Financeiro: TFDQuery
    AfterEdit = FinanceiroAfterEdit
    BeforePost = FinanceiroBeforePost
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPEDIDO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM FINANCEIRO'
      'WHERE CODPEDIDO like :Codigo'
      'ORDER BY CODIGO')
    Left = 175
    Top = 496
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object Produto_Tabela_Preco: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSPmPrincipal
    MasterFields = 'CODPRODUTO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      '--select PT.DESCRICAO, PTP.*'
      '--from PRODUTO_TABELA_PRECO PTP'
      '--left join PRODUTO P on (P.CODIGO = PTP.CODPRODUTO)'
      
        '--left join PRODUTO_TABELA PT on (PT.CODIGO = PTP.CODPRODUTO_TAB' +
        'ELA)'
      '--where (PTP.CODPRODUTO = :CODPRODUTO)'
      ''
      
        'SELECT '#39'SEM TABELA'#39' AS DESCRICAO, null AS CODPRODUTO_TABELA, 0 A' +
        'S CODPRODUTO,'
      
        '0 AS VALOR, CURRENT_TIMESTAMP AS DT_ALTERACAO, 0 AS PERC_DESCONT' +
        'O, NULL AS TEM_MARGEM_FIXA_CONTIBUICAO, 0 AS PERC_ACRESCIMO'
      'from PRODUTO_TABELA_PRECO PTP'
      ''
      'UNION'
      ''
      'select PT.DESCRICAO, PTP.CODPRODUTO_TABELA, PTP.CODPRODUTO,'
      
        'PTP.VALOR, PTP.DT_ALTERACAO, PTP.PERC_DESCONTO, PTP.tem_margem_f' +
        'ixa_contibuicao, PTP.perc_acrescimo'
      'from PRODUTO_TABELA_PRECO PTP'
      'left join PRODUTO P on (P.CODIGO = PTP.CODPRODUTO)'
      
        'left join PRODUTO_TABELA PT on (PT.CODIGO = PTP.CODPRODUTO_TABEL' +
        'A)'
      'where (PTP.CODPRODUTO = :CODPRODUTO)'
      'ORDER BY 2 ASC')
    Left = 259
    Top = 440
    ParamData = <
      item
        Name = 'CODPRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
  end
  object Produto_Preco: TFDQuery
    OnCalcFields = Produto_PrecoCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSPmPrincipal
    MasterFields = 'CODPRODUTO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select '
      
        'iif(PP.TIPO <> '#39'Acima de'#39', '#39'De '#39'|| iif(PP.DE IS NOT NULL, CAST(P' +
        'P.DE AS NUMERIC(15,2)), '#39'0.00'#39') || '#39' '#39', '#39#39') || PP.TIPO || '#39' '#39' ||' +
        ' CAST(PP.QUANT AS NUMERIC(15,2)) AS DESCRICAO'
      ', PP.* '
      'from PRODUTO_PRECO PP'
      'left join PRODUTO P on P.CODIGO = PP.CODPRODUTO_VINCULADO'
      'where (PP.CODPRODUTO = :CODPRODUTO) '
      'order by PP.TIPO desc, PP.QUANT asc')
    Left = 259
    Top = 496
    ParamData = <
      item
        Name = 'CODPRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
    object Produto_PrecoValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
  end
  object Endereco_Responsavel: TFDQuery
    AfterOpen = Endereco_ResponsavelAfterOpen
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'PESSOA_RESPONSAVEL_CODIGO'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select CI.DESCRICAO as CIDADE, CI.PAIS as PAIS, CI.CODPAIS as CO' +
        'DPAIS, PT.DESCRICAO as TABELA_PRECO, P.*'
      'from PESSOAS P'
      'left join CIDADES CI on (P.CODCIDADE = CI.CODIGO)'
      'left join PRODUTO_TABELA PT on (P.CODPRODUTO_TABELA = PT.CODIGO)'
      'where (P.CODIGO = :PESSOA_RESPONSAVEL_CODIGO)')
    Left = 259
    Top = 412
    ParamData = <
      item
        Name = 'PESSOA_RESPONSAVEL_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object Pessoas_Contato: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'PESSOA_RESPONSAVEL_CODIGO'
    DetailFields = 'CODPESSOA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select * from PESSOAS_CONTATO'
      'where CODPESSOA = :PESSOA_RESPONSAVEL_CODIGO')
    Left = 315
    Top = 412
    ParamData = <
      item
        Name = 'PESSOA_RESPONSAVEL_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object Pessoas_Entrega: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'PESSOA_RESPONSAVEL_CODIGO'
    DetailFields = 'CODPESSOA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select * from PESSOAS_ENTREGA'
      'where CODPESSOA = :PESSOA_RESPONSAVEL_CODIGO')
    Left = 315
    Top = 440
    ParamData = <
      item
        Name = 'PESSOA_RESPONSAVEL_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object PessoasChequesAutorizados: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'PESSOA_RESPONSAVEL_CODIGO'
    DetailFields = 'CODPESSOA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT *'
      'FROM PESSOAS_CHEQUES_AUTORIZADOS'
      'WHERE CODPESSOA = :PESSOA_RESPONSAVEL_CODIGO')
    Left = 315
    Top = 468
    ParamData = <
      item
        Name = 'PESSOA_RESPONSAVEL_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object Parametros: TFDQuery
    BeforeOpen = ParametrosBeforeOpen
    Connection = DMBanco.Banco
    Transaction = TransaFD
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'select *'
      'from PARAMETROS'
      'where (CODEMPRESA = :Cod)')
    Left = 399
    Top = 524
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QuerVenda_Tipo: TFDQuery
    BeforeOpen = QuerVenda_TipoBeforeOpen
    Connection = DMBanco.Banco
    Transaction = TransaFD
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      '--SQL montado no BeforeOpen'
      'select *'
      'from VENDA_TIPO')
    Left = 315
    Top = 384
  end
  object DSQuerVenda_Tipo: TDataSource
    AutoEdit = False
    DataSet = QuerVenda_Tipo
    Left = 343
    Top = 384
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'VendaFinanceiro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'VALOR=VALOR'
      'DOCUMENTO=DOCUMENTO'
      'VENCTO=VENCTO'
      'STATUS=STATUS'
      'TIPO=TIPO'
      'DATA=DATA'
      'DATAPAGTO=DATAPAGTO'
      'HISTORICO=HISTORICO'
      'EMISSAO=EMISSAO'
      'CODPLANOCONTAS=CODPLANOCONTAS'
      'CODCONDICAOPAGTO=CODCONDICAOPAGTO'
      'CONDICAOPAGTO=CONDICAOPAGTO'
      'CODCHEQUE=CODCHEQUE'
      'CHEQUE_CODBANCO=CHEQUE_CODBANCO'
      'CHEQUE_BANCO=CHEQUE_BANCO'
      'CHEQUE_NOME=CHEQUE_NOME'
      'CHEQUE_REPASSADO=CHEQUE_REPASSADO'
      'CHEQUE_CNPJCPF=CHEQUE_CNPJCPF'
      'CHEQUE_STATUS=CHEQUE_STATUS'
      'CHEQUE_COMPE=CHEQUE_COMPE'
      'CHEQUE_AGENCIA=CHEQUE_AGENCIA'
      'CHEQUE_C1=CHEQUE_C1'
      'CHEQUE_CONTA=CHEQUE_CONTA'
      'CHEQUE_NUMERO=CHEQUE_NUMERO'
      'CHEQUE_C2=CHEQUE_C2'
      'CHEQUE_C3=CHEQUE_C3'
      'CHEQUE_DT_CADASTRO=CHEQUE_DT_CADASTRO'
      'CHEQUE_DT_BOM_PARA=CHEQUE_DT_BOM_PARA'
      'CHEQUE_DT_REPASSADO=CHEQUE_DT_REPASSADO'
      'CHEQUE_TIPO=CHEQUE_TIPO'
      'CONTA=CONTA'
      'CODVENDA=CODVENDA'
      'ATUALIZADO=ATUALIZADO'
      'DT_ALTERACAO=DT_ALTERACAO'
      'CODCONTA=CODCONTA'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'PESSOA_FORNECEDOR_CODIGO=PESSOA_FORNECEDOR_CODIGO'
      'PESSOA_FORNECEDOR_TIPO=PESSOA_FORNECEDOR_TIPO'
      'PESSOA_FORNECEDOR_SEQUENCIA=PESSOA_FORNECEDOR_SEQUENCIA'
      'PARCELA=PARCELA'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'MsgFinanceiro=MsgFinanceiro'
      'TIPOPAGTO=TIPOPAGTO'
      'CONTATOS=CONTATOS'
      'PREVISAO=PREVISAO'
      'GERADO_DO_FINANCEIRO=GERADO_DO_FINANCEIRO'
      'PARCELA_ALTERADA=PARCELA_ALTERADA')
    DataSet = Venda_Financeiro
    BCDToCurrency = False
    Left = 371
    Top = 412
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'Produto'
    CloseDataSource = False
    DataSet = Venda_Produto
    BCDToCurrency = False
    Left = 399
    Top = 412
  end
  object frxReponsavel: TfrxDBDataset
    UserName = 'Responsavel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CIDADE=CIDADE'
      'PAIS=PAIS'
      'CODPAIS=CODPAIS'
      'CODIGO=CODIGO'
      'TIPO=TIPO'
      'CNPJCPF=CNPJCPF'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'CODCIDADE=CODCIDADE'
      'UF=UF'
      'PROXIMIDADE=PROXIMIDADE'
      'FONE1=FONE1'
      'FONE2=FONE2'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'DATACADASTRO=DATACADASTRO'
      'ATIVO=ATIVO'
      'CODEMPRESA=CODEMPRESA'
      'INSCIDENT=INSCIDENT'
      'AGENCIA=AGENCIA'
      'BAIRROCOMERCIAL=BAIRROCOMERCIAL'
      'BAIRROCOMERCIALCONJUGE=BAIRROCOMERCIALCONJUGE'
      'BLOQUEADO=BLOQUEADO'
      'CELPROPRIETARIO1=CELPROPRIETARIO1'
      'CELPROPRIETARIO2=CELPROPRIETARIO2'
      'CEPCOMERCIAL=CEPCOMERCIAL'
      'CEPCOMERCIALCONJUGE=CEPCOMERCIALCONJUGE'
      'COBRANCA=COBRANCA'
      'CODAGENDA1=CODAGENDA1'
      'CODAGENDA2=CODAGENDA2'
      'CODBANCO=CODBANCO'
      'CODCIDADECOMERCIAL=CODCIDADECOMERCIAL'
      'CODCIDADECOMERCIALCONJUGE=CODCIDADECOMERCIALCONJUGE'
      'CODCIDADENASC=CODCIDADENASC'
      'CODCONDICAOPAGTO=CODCONDICAOPAGTO'
      'CODPESSOAS_GRUPO=CODPESSOAS_GRUPO'
      'COMPLEMENTOCOMERCIAL=COMPLEMENTOCOMERCIAL'
      'COMPLEMENTOCOMERCIALCONJUGE=COMPLEMENTOCOMERCIALCONJUGE'
      'CONDICAOPAGTO_DIA_PROXIMO_MES=CONDICAOPAGTO_DIA_PROXIMO_MES'
      'CONTA=CONTA'
      'CONTACORRENTE=CONTACORRENTE'
      'CONTATO=CONTATO'
      'CONTRATO=CONTRATO'
      'CORRESBAIRRO=CORRESBAIRRO'
      'CORRESCEP=CORRESCEP'
      'CORRESCODCIDADE=CORRESCODCIDADE'
      'CORRESCOMPLEMENTO=CORRESCOMPLEMENTO'
      'CORRESENDERECO=CORRESENDERECO'
      'CORRESUF=CORRESUF'
      'CRT=CRT'
      'DATA_ADMISSAO=DATA_ADMISSAO'
      'DATA_CONTRATO1=DATA_CONTRATO1'
      'DATA_CONTRATO2=DATA_CONTRATO2'
      'DATA_FGTS=DATA_FGTS'
      'DATANASCIMENTO=DATANASCIMENTO'
      'DEMISSAO_DT=DEMISSAO_DT'
      'DEMISSAO_MOTIVO=DEMISSAO_MOTIVO'
      'DEMISSAO_OBSERVACAO=DEMISSAO_OBSERVACAO'
      'DESCONTO_PRODUTO=DESCONTO_PRODUTO'
      'DIAS=DIAS'
      'EMPRESA_TRABALHO=EMPRESA_TRABALHO'
      'ENDERECOCOMERCIAL=ENDERECOCOMERCIAL'
      'ENDERECOCOMERCIALCONJUGE=ENDERECOCOMERCIALCONJUGE'
      'ESTADO_CIVIL=ESTADO_CIVIL'
      'FLCASAPROPRIA=FLCASAPROPRIA'
      'FONE_TRABALHO=FONE_TRABALHO'
      'GRAU_INSTRUCAO=GRAU_INSTRUCAO'
      'HABILITACAO_CATEGORIA=HABILITACAO_CATEGORIA'
      'HABILITACAO_CODCIDADE=HABILITACAO_CODCIDADE'
      'HABILITACAO_N=HABILITACAO_N'
      'HABILITACAO_VALIDADE=HABILITACAO_VALIDADE'
      'INSCIDENT_DATA=INSCIDENT_DATA'
      'INSCIDENT_ORGAO=INSCIDENT_ORGAO'
      'INSCIDENT_UF=INSCIDENT_UF'
      'LIMITE_DESCONTO=LIMITE_DESCONTO'
      'LIMITECREDITO=LIMITECREDITO'
      'LOJA01=LOJA01'
      'LOJA02=LOJA02'
      'LOJA03=LOJA03'
      'MAE=MAE'
      'PAI=PAI'
      'MOTIVO=MOTIVO'
      'NACIONALIDADE=NACIONALIDADE'
      'NASCIMENTO_CODCIDADE=NASCIMENTO_CODCIDADE'
      'NASCIMENTO_DT=NASCIMENTO_DT'
      'NASCIMENTO_UF=NASCIMENTO_UF'
      'NOMECONJUGE=NOMECONJUGE'
      'NOMEEMPRESACONJUGE=NOMEEMPRESACONJUGE'
      'NPROPRIETARIO1=NPROPRIETARIO1'
      'NPROPRIETARIO2=NPROPRIETARIO2'
      'NUMERO=NUMERO'
      'NUMERO_REGISTRO=NUMERO_REGISTRO'
      'OBSERVACAO=OBSERVACAO'
      'OBSERVACAOCREDIARIO=OBSERVACAOCREDIARIO'
      'PAGAMENTO=PAGAMENTO'
      'PENSAO=PENSAO'
      'PENSAO_AGENCIA=PENSAO_AGENCIA'
      'PENSAO_BENEFICIARIO=PENSAO_BENEFICIARIO'
      'PENSAO_CODBANCO=PENSAO_CODBANCO'
      'PENSAO_CONTA=PENSAO_CONTA'
      'PLACA=PLACA'
      'PROFISSIONAL_CARTEIRA=PROFISSIONAL_CARTEIRA'
      'PROFISSIONAL_DT_EMISSAO=PROFISSIONAL_DT_EMISSAO'
      'PROFISSIONAL_PIS=PROFISSIONAL_PIS'
      'PROFISSIONAL_SERIE=PROFISSIONAL_SERIE'
      'PROFISSIONAL_UF=PROFISSIONAL_UF'
      'QUANT_MAQUINAS=QUANT_MAQUINAS'
      'RENDAFAMILIAR=RENDAFAMILIAR'
      'RESERVISTA_CARTEIRA=RESERVISTA_CARTEIRA'
      'RESERVISTA_CATEGORIA=RESERVISTA_CATEGORIA'
      'RESERVISTA_SERIE=RESERVISTA_SERIE'
      'SALARIO=SALARIO'
      'SALARIOCONJUGE=SALARIOCONJUGE'
      'SINDICATO=SINDICATO'
      'SPC=SPC'
      'SPC_RESPONSAVEL=SPC_RESPONSAVEL'
      'TELEFONEEMPRESACONJUGE=TELEFONEEMPRESACONJUGE'
      'TELEFONELOJA01=TELEFONELOJA01'
      'TELEFONELOJA02=TELEFONELOJA02'
      'TELEFONELOJA03=TELEFONELOJA03'
      'TITULO_N=TITULO_N'
      'TITULO_SECAO=TITULO_SECAO'
      'TITULO_ZONA=TITULO_ZONA'
      'TRANSPORTADORA=TRANSPORTADORA'
      'DT_ALTERACAO=DT_ALTERACAO'
      'COBRAR_CUSTO_BOLETO=COBRAR_CUSTO_BOLETO'
      'PAGINA=PAGINA'
      'CARGO=CARGO'
      'COMISSAO=COMISSAO'
      'PESSOA_REPRESENTANTE_CODIGO=PESSOA_REPRESENTANTE_CODIGO'
      'PESSOA_REPRESENTANTE_TIPO=PESSOA_REPRESENTANTE_TIPO'
      'PESSOA_REPRESENTANTE_SEQUENCIA=PESSOA_REPRESENTANTE_SEQUENCIA'
      'IS_CLI=IS_CLI'
      'SEQUENCIA_CLI=SEQUENCIA_CLI'
      'IS_FUN=IS_FUN'
      'SEQUENCIA_FUN=SEQUENCIA_FUN'
      'IS_FOR=IS_FOR'
      'SEQUENCIA_FOR=SEQUENCIA_FOR'
      'IS_REP=IS_REP'
      'SEQUENCIA_REP=SEQUENCIA_REP'
      'IS_PES=IS_PES'
      'SEQUENCIA_PES=SEQUENCIA_PES'
      'SEXO=SEXO'
      'REVISADO=REVISADO'
      'MENSALIDADE_DIA_VENCTO=MENSALIDADE_DIA_VENCTO'
      'MENSALIDADE_VALOR=MENSALIDADE_VALOR'
      'REVISADO_CONTRATO=REVISADO_CONTRATO'
      'COMPLEMENTO=COMPLEMENTO'
      'TABELA_PRECO=TABELA_PRECO'
      'SITUACAO=SITUACAO'
      'NAO_GERA_BOLETO_SINISTRO=NAO_GERA_BOLETO_SINISTRO'
      'ETIQUETA=ETIQUETA'
      'MOTORISTA_ATIVO=MOTORISTA_ATIVO'
      'PESSOA_ASSOCIADO_CODIGO=PESSOA_ASSOCIADO_CODIGO'
      'PESSOA_ASSOCIADO_TIPO=PESSOA_ASSOCIADO_TIPO'
      'PESSOA_ASSOCIADO_SEQUENCIA=PESSOA_ASSOCIADO_SEQUENCIA'
      'IMPENV=IMPENV'
      'AVALIACAO=AVALIACAO'
      'CREDITO=CREDITO'
      'PESSOA_MATRIZ_CODIGO=PESSOA_MATRIZ_CODIGO'
      'PESSOA_MATRIZ_TIPO=PESSOA_MATRIZ_TIPO'
      'PESSOA_MATRIZ_SEQUENCIA=PESSOA_MATRIZ_SEQUENCIA'
      'EQUIPAMENTOS_NA_MATRIZ=EQUIPAMENTOS_NA_MATRIZ'
      'ISS_RETIDO=ISS_RETIDO'
      'EMAIL_NFE=EMAIL_NFE'
      'REFERENCIA=REFERENCIA'
      'CODCLIENTE_SITE=CODCLIENTE_SITE'
      'CORRESEMAIL=CORRESEMAIL'
      'WEB_PLANO_HOSPEDAGEM=WEB_PLANO_HOSPEDAGEM'
      'WEB_TIPO_DESENVOLVIMENTO=WEB_TIPO_DESENVOLVIMENTO'
      'WEB_DT_CONTRATACAO=WEB_DT_CONTRATACAO'
      'WEB_DOMINIO=WEB_DOMINIO'
      'WEB_SERVIDOR=WEB_SERVIDOR'
      'SITE=SITE'
      'CODIGO_CMC=CODIGO_CMC'
      'SUFRAMA=SUFRAMA'
      'PESSOA_TRANSPORTADORA_CODIGO=PESSOA_TRANSPORTADORA_CODIGO'
      'PESSOA_TRANSPORTADORA_TIPO=PESSOA_TRANSPORTADORA_TIPO'
      'PESSOA_TRANSPORTADORA_SEQUENCIA=PESSOA_TRANSPORTADORA_SEQUENCIA'
      'TIPO_CONTRIBUINTE=TIPO_CONTRIBUINTE'
      'GERA_BOLETO_UNICO=GERA_BOLETO_UNICO'
      'VALOR_FRETE_PADRAO=VALOR_FRETE_PADRAO'
      'INSALUB_PERICUL=INSALUB_PERICUL'
      'CONSUMIDOR_FINAL=CONSUMIDOR_FINAL'
      'INSCEST_PESSOA_FISICA=INSCEST_PESSOA_FISICA'
      'INSC_MUNICIPAL=INSC_MUNICIPAL'
      'MENSAGEM_PARA_VENDA=MENSAGEM_PARA_VENDA'
      'FUNCIONARIO_LIMITE_DESCONTO=FUNCIONARIO_LIMITE_DESCONTO'
      'FUNCIONARIO_HORAS_MENSSAL=FUNCIONARIO_HORAS_MENSSAL'
      'FUNCIONARIO_HORAS_DIARIAS=FUNCIONARIO_HORAS_DIARIAS'
      'PODE_COMPRAR_COM_CHEQUE=PODE_COMPRAR_COM_CHEQUE'
      'CODIGO_DO_GUIA=CODIGO_DO_GUIA'
      'DT_AUTORIZACAO_COMPRA=DT_AUTORIZACAO_COMPRA'
      'TIPO_PADRAO=TIPO_PADRAO'
      'NAO_GERAR_REMESSA_BOLETO=NAO_GERAR_REMESSA_BOLETO'
      'CODTEMPO_TRABALHO=CODTEMPO_TRABALHO'
      'PCREDSN_PERMITE=PCREDSN_PERMITE'
      'ENVIA_RATEIO_EMAIL=ENVIA_RATEIO_EMAIL'
      'PESSOA_AGENCIA_CODIGO=PESSOA_AGENCIA_CODIGO'
      'PESSOA_AGENCIA_TIPO=PESSOA_AGENCIA_TIPO'
      'PESSOA_AGENCIA_SEQUENCIA=PESSOA_AGENCIA_SEQUENCIA'
      'PESSOA_FUNCIONARIO_CODIGO=PESSOA_FUNCIONARIO_CODIGO'
      'PESSOA_FUNCIONARIO_TIPO=PESSOA_FUNCIONARIO_TIPO'
      'PESSOA_FUNCIONARIO_SEQUENCIA=PESSOA_FUNCIONARIO_SEQUENCIA'
      'BOLETO_PERC_DESCONTO_PADRAO=BOLETO_PERC_DESCONTO_PADRAO'
      'NF_FRETEPORCONTA=NF_FRETEPORCONTA'
      'PERMITEVENDERPELOCUSTO=PERMITEVENDERPELOCUSTO'
      'VENDA_TIPO_PELO_CADASTRO=VENDA_TIPO_PELO_CADASTRO'
      'CODPRODUTO_TABELA=CODPRODUTO_TABELA'
      'ESTRELA=ESTRELA')
    DataSet = Endereco_Responsavel
    BCDToCurrency = False
    Left = 399
    Top = 384
  end
  object DSEndereco_Responsavel: TDataSource
    AutoEdit = False
    DataSet = Endereco_Responsavel
    Left = 287
    Top = 412
  end
  object QuerFinanceiroAReceber: TFDQuery
    MasterSource = DS
    MasterFields = 'PESSOA_RESPONSAVEL_CODIGO'
    DetailFields = 'PESSOA_RESPONSAVEL_CODIGO'
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select *'
      'from FINANCEIRO F'
      'where (F.STATUS like '#39'ATIVO%'#39')'
      '      and not(F.STATUS like '#39'ATIVO*%'#39')'
      '      and (F.TIPO = '#39'A RECEBER'#39')'
      
        '      and (F.PESSOA_RESPONSAVEL_CODIGO = :PESSOA_RESPONSAVEL_COD' +
        'IGO)')
    Left = 371
    Top = 524
    ParamData = <
      item
        Name = 'PESSOA_RESPONSAVEL_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object frxFinanceiroAReceber: TfrxDBDataset
    UserName = 'FinanceiroAReceber'
    CloseDataSource = True
    DataSet = QuerFinanceiroAReceber
    BCDToCurrency = False
    Left = 427
    Top = 412
  end
  object wrNotaFiscal: TwrNotaFiscal
    WRCalc = WRCalc
    VendaFinanceiro = Venda_Financeiro
    Transportadora = QuerTransportadora
    Empresa = FrmPrincipal.Empresa
    NotaTipo = nftNFSe
    NotaAmbiente = taProducao
    Left = 371
    Top = 440
  end
  object QuerTransportadora: TFDQuery
    MasterSource = DS
    MasterFields = 'PESSOA_TRANSPORTADORA_CODIGO'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select P.*, CI.DESCRICAO as CIDADE'
      'from PESSOAS P'
      'left join CIDADES CI on (P.CODCIDADE = CI.CODIGO)'
      'where (P.CODIGO = :PESSOA_TRANSPORTADORA_CODIGO)')
    Left = 399
    Top = 440
    ParamData = <
      item
        Name = 'PESSOA_TRANSPORTADORA_CODIGO'
        ParamType = ptInput
      end>
  end
  object ProtEstiloAvisoValidacao: TcxEditStyleController
    Style.BorderColor = 33023
    Style.BorderStyle = ebsSingle
    Left = 259
    Top = 384
    PixelsPerInch = 96
  end
  object ProtEstiloFalhaValidacao: TcxEditStyleController
    Style.BorderColor = clRed
    Style.BorderStyle = ebsThick
    Left = 287
    Top = 384
    PixelsPerInch = 96
  end
  object TransaCredito: TFDTransaction
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 483
    Top = 440
  end
  object Produto_Estoque_Reservado: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODVENDA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from PRODUTO_ESTOQUE_RESERVA PER'
      'where (PER.CODVENDA = :CODIGO) ')
    Left = 175
    Top = 524
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodTabela'
      Calculated = True
    end
    object StringField2: TStringField
      FieldKind = fkCalculated
      FieldName = 'SituacaoProducao'
      Size = 30
      Calculated = True
    end
  end
  object DSProduto_Estoque_Reservado: TDataSource
    DataSet = Produto_Estoque_Reservado
    Left = 203
    Top = 524
  end
  object menuProducao: TPopupMenu
    Left = 567
    Top = 496
    object Enviarparaproduo1: TMenuItem
      Caption = 'Enviar para produ'#231#227'o'
      OnClick = Enviarparaproduo1Click
    end
    object Verproduo1: TMenuItem
      Caption = 'Ver produ'#231#227'o'
      OnClick = btnVerProducaoClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object poupCancelarProducao: TMenuItem
      Caption = 'Cancelar Produ'#231#227'o'
      Visible = False
      OnClick = btnCancelarProducaoClick
    end
  end
  object Producao_Produto: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select PC.*, U.USUARIO'
      'from PRODUCAO_PRODUTO PC'
      'left join USUARIO U on U.CODIGO = PC.CODUSUARIO'
      'where (PC.ATIVO <> '#39'N'#39') and (PC.CODPRODUCAO = :CODIGO)  ')
    Left = 672
    Top = 389
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Producao: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSVenda_Produto
    MasterFields = 'CODIGO;CODVENDA'
    DetailFields = 'CODIGO;CODVENDA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select p.*, U.USUARIO'
      'from PRODUCAO P'
      'left join USUARIO U on U.CODIGO = P.CODUSUARIO'
      
        'where (P.CODVENDA = :CODVENDA) AND (P.CODVENDA_PRODUTO = :CODIGO' +
        ')')
    Left = 644
    Top = 389
    ParamData = <
      item
        Name = 'CODVENDA'
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object StringField3: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodTabela'
      Calculated = True
    end
  end
  object UCHist_Producao: TUCHist_DataSet
    OnAddHistorico = UCHist_CadastroAddHistorico
    DataSet = Producao
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    DS = DS
    Tabela = 'PRODUCAO'
    Modulo = 'PRODUCAO'
    Left = 701
    Top = 389
  end
  object PmComposicao2: TwrProdutoMemoria
    SQLProduto.Strings = (
      'select '
      
        '       P.*, 0.0 as TOTAL, 0.0 as QUANT, 0.0 as QTDADEPECA, 0 as ' +
        'ORDEM, 0 as SEQUENCIA'
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
    TransacaoFD = DMBanco.Transacao
    PermitirProdutoNaoCadastrado = True
    Left = 539
    Top = 412
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
    TransacaoFD = DMBanco.Transacao
    PermitirProdutoNaoCadastrado = True
    Left = 567
    Top = 412
  end
end
