inherited FrameCadProduto_Estoque: TFrameCadProduto_Estoque
  Width = 1065
  Height = 563
  Align = alClient
  OnEnter = FrameEnter
  ExplicitWidth = 1065
  ExplicitHeight = 563
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1065
    Height = 563
    LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
    ExplicitWidth = 1065
    ExplicitHeight = 563
    inherited btnMenuConfig: TcxButton
      Left = 1047
      ExplicitLeft = 1047
    end
    object edtDisponivel: TcxCurrencyEdit [1]
      Left = 26
      Top = 152
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.HotTrack = True
      TabOrder = 10
      Width = 59
    end
    object EdtPendente: TcxCurrencyEdit [2]
      Left = 153
      Top = 152
      Hint = 
        'Quantidade de Itens em estoque que est'#227'o em Pr'#233'-Vendas ou Or'#231'ame' +
        'ntos.'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = '##,##0.###;-##,##0.###'
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 12
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Width = 60
    end
    object edtEstoque_Min: TcxDBCurrencyEdit [3]
      Left = 410
      Top = 152
      AutoSize = False
      DataBinding.DataField = 'ESTOQUE_MIN'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 15
      Height = 21
      Width = 72
    end
    object edtEstoque_Max: TcxDBCurrencyEdit [4]
      Left = 331
      Top = 152
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'ESTOQUE_MAX'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 14
      Height = 21
      Width = 76
    end
    object edtLocalÎLocalÎDESCRICAO: TcxDBTextEdit [5]
      Left = 116
      Top = 252
      AutoSize = False
      DataBinding.DataField = 'LOCAL'
      DataBinding.DataSource = DS
      Properties.CharCase = ecUpperCase
      Style.HotTrack = False
      TabOrder = 22
      Height = 21
      Width = 935
    end
    object edtLocalÎLocal: TcxDBButtonEdit [6]
      Left = 14
      Top = 252
      DataBinding.DataField = 'CODLOCAL'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 21
      Width = 99
    end
    object PnlTabHistoricoMovimento: TPanel [7]
      Left = 10000
      Top = 10000
      Width = 1037
      Height = 466
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 24
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1037
        Height = 466
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
        object edtMovAno: TcxSpinEdit
          Left = 0
          Top = 45
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.MaxValue = 2100.000000000000000000
          Properties.MinValue = 1990.000000000000000000
          Properties.OnEditValueChanged = EdtMovAnoPropertiesEditValueChanged
          Style.HotTrack = False
          TabOrder = 1
          Value = 2000
          Width = 62
        end
        object cbxMovMes: TcxComboBox
          Left = 65
          Top = 45
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 12
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            'Janeiro'
            'Fevereiro'
            'Mar'#231'o'
            'Abril'
            'Maio'
            'Junho'
            'Julho'
            'Agosto'
            'Setembro'
            'Outubro'
            'Novembro'
            'Dezembro')
          Properties.OnEditValueChanged = CbMovMesPropertiesEditValueChanged
          Style.HotTrack = False
          TabOrder = 2
          Text = 'Janeiro'
          Width = 105
        end
        object btnMovMostrarMovimento: TcxButton
          Left = 182
          Top = 45
          Width = 96
          Height = 21
          Caption = 'Mostrar tudo'
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = btnMovMostrarMovimentoClick
        end
        object cxLabel14: TcxLabel
          Left = 0
          Top = 0
          Caption = 'Hist'#243'rico de Movimento'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = 7697781
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.TextColor = 11711154
          Style.IsFontAssigned = True
          Transparent = True
        end
        object edtMovSaldoInicial: TcxCurrencyEdit
          Left = 290
          Top = 45
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 4
          Width = 132
        end
        object GridMovimento_Produto: TcxGrid
          Left = 0
          Top = 66
          Width = 1037
          Height = 400
          TabOrder = 6
          object GridMovimento_ProdutoView: TcxGridDBTableView
            PopupMenu = PopupMenu2
            OnDblClick = GridMovimento_ProdutoViewDblClick
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = GridMovimento_ProdutoViewCustomDrawCell
            DataController.DataSource = DSMovimento_Produto
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,##0.00##'
                Kind = skSum
                FieldName = 'QUANT'
                Column = GridMovimento_ProdutoViewTIPO_MOVIMENTO
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QUANT'
                Column = GridMovimento_ProdutoViewQUANT
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object GridMovimento_ProdutoViewDATA: TcxGridDBColumn
              Caption = 'Data / Hora'
              DataBinding.FieldName = 'DATA'
              SortIndex = 0
              SortOrder = soDescending
              Width = 113
            end
            object GridMovimento_ProdutoViewTIPO_MOVIMENTO: TcxGridDBColumn
              Caption = 'Tipo do Movimento'
              DataBinding.FieldName = 'TIPO_MOVIMENTO'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Width = 36
            end
            object GridMovimento_ProdutoViewQUANT: TcxGridDBColumn
              Caption = 'Quantidade Movimentada'
              DataBinding.FieldName = 'QUANT'
            end
            object GridMovimento_ProdutoViewVALOR: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VALOR'
              PropertiesClassName = 'TcxCurrencyEditProperties'
            end
            object GridMovimento_ProdutoViewOBSERVACAO: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'OBSERVACAO'
              Width = 306
            end
            object GridMovimento_ProdutoViewESTOQUE_LOCAL: TcxGridDBColumn
              Caption = 'Local do Estoque'
              DataBinding.FieldName = 'PRODUTO_ESTOQUE_LOCAL'
            end
            object GridMovimento_ProdutoViewUSUARIO: TcxGridDBColumn
              Caption = 'Usu'#225'rio'
              DataBinding.FieldName = 'USUARIO'
            end
            object GridMovimento_ProdutoViewFANTASIA: TcxGridDBColumn
              Caption = 'Fornecedor'
              DataBinding.FieldName = 'FANTASIA'
            end
            object GridMovimento_ProdutoViewFORM: TcxGridDBColumn
              Caption = 'Form'
              DataBinding.FieldName = 'FORM'
              Visible = False
            end
            object GridMovimento_ProdutoViewCODVENDA: TcxGridDBColumn
              Caption = 'C'#243'd. Venda'
              DataBinding.FieldName = 'CODVENDA'
            end
            object GridMovimento_ProdutoViewCODNF_ENTRADA: TcxGridDBColumn
              Caption = 'C'#243'd. NF Entrada'
              DataBinding.FieldName = 'CODNF_ENTRADA'
              Width = 99
            end
            object GridMovimento_ProdutoViewCODEMPRESA: TcxGridDBColumn
              Caption = 'C'#243'd. Empresa'
              DataBinding.FieldName = 'CODEMPRESA'
              Visible = False
            end
            object GridMovimento_ProdutoViewQUANT_ANTIGA: TcxGridDBColumn
              Caption = 'Quant. Inicial'
              DataBinding.FieldName = 'QUANT_ANTIGA'
            end
            object GridMovimento_ProdutoViewQUANT_ATUAL: TcxGridDBColumn
              Caption = 'Quant. Final'
              DataBinding.FieldName = 'QUANT_ATUAL'
            end
            object GridMovimento_ProdutoTIPO_USO: TcxGridDBColumn
              Caption = 'Tipo Uso'
              DataBinding.FieldName = 'TIPO_USO'
            end
          end
          object GridMovimento_ProdutoLevel1: TcxGridLevel
            GridView = GridMovimento_ProdutoView
          end
        end
        object EdtMovSaldoFinal: TcxCurrencyEdit
          Left = 425
          Top = 45
          AutoSize = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 5
          Height = 21
          Width = 124
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
          Hidden = True
          ItemIndex = 2
          ShowBorder = False
          UseIndent = False
          Index = -1
        end
        object liedtMovAno: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          CaptionOptions.Text = 'Ano'
          CaptionOptions.Layout = clTop
          Control = edtMovAno
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 62
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Group1: TdxLayoutGroup
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ItemIndex = 6
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object licbxMes: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          CaptionOptions.Text = 'M'#234's'
          CaptionOptions.Layout = clTop
          Control = cbxMovMes
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 105
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item4: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          AlignVert = avBottom
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnMovMostrarMovimento
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 96
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl2SeparatorItem1: TdxLayoutSeparatorItem
          Parent = dxLayoutControl2Group1
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
          CaptionOptions.Text = 'Separator'
          Index = 2
        end
        object dxLayoutControl2SeparatorItem2: TdxLayoutSeparatorItem
          Parent = dxLayoutControl2Group1
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
          CaptionOptions.Text = 'Separator'
          Index = 4
        end
        object dxLayoutSeparatorItem13: TdxLayoutSeparatorItem
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Separator'
          Index = 1
        end
        object dxLayoutItem60: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Visible = False
          Control = cxLabel14
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 7
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liedtMovSaldoInicial: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          AlignVert = avBottom
          CaptionOptions.Text = 'Saldo Inicial do Per'#237'odo'
          CaptionOptions.Layout = clTop
          Control = edtMovSaldoInicial
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 132
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          Control = GridMovimento_Produto
          ControlOptions.OriginalHeight = 228
          ControlOptions.OriginalWidth = 250
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          AlignVert = avClient
          CaptionOptions.Text = 'Saldo Final do Per'#237'odo'
          CaptionOptions.Layout = clTop
          Control = EdtMovSaldoFinal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 124
          ControlOptions.ShowBorder = False
          Index = 6
        end
      end
    end
    object PnlTabFornecedores: TPanel [8]
      Left = 10000
      Top = 10000
      Width = 1037
      Height = 466
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 25
      Visible = False
      object dxLayoutControl9: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1037
        Height = 466
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
        object GridProdutoFornecedor: TcxGrid
          Left = 12
          Top = 186
          Width = 1013
          Height = 268
          TabOrder = 10
          object GridProdutoFornecedorView2: TcxGridDBTableView
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
            DataController.DataSource = DSProdutoFornecedor
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object GridProdutoFornecedorView2ATIVO: TcxGridDBColumn
              Caption = 'Ativo'
              DataBinding.FieldName = 'ATIVO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Width = 42
            end
            object GridProdutoFornecedorView2PESSOA_FORNECEDOR_TIPO: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'PESSOA_RESPONSAVEL_TIPO'
              Options.Editing = False
              Width = 34
            end
            object GridProdutoFornecedorView2PESSOA_FORNECEDOR_SEQUENCIA: TcxGridDBColumn
              Caption = 'C'#243'd. Fornecedor'
              DataBinding.FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
              Options.Editing = False
              Width = 90
            end
            object GridProdutoFornecedorView2RAZAOSOCIAL: TcxGridDBColumn
              Caption = 'Fornecedor - Raz'#227'o Social'
              DataBinding.FieldName = 'RAZAOSOCIAL'
              Options.Editing = False
              Width = 240
            end
            object GridProdutoFornecedorView2DT_ULTIMA_COMPRA: TcxGridDBColumn
              Caption = 'Dt. '#218'ltima Compra'
              DataBinding.FieldName = 'DT_ULTIMA_COMPRA'
              Options.Editing = False
              Width = 129
            end
            object GridProdutoFornecedorView2VALOR: TcxGridDBColumn
              Caption = 'R$ Valor'
              DataBinding.FieldName = 'CUSTO_VENDA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Width = 92
            end
            object GridProdutoFornecedorView2CODFABRICA: TcxGridDBColumn
              Caption = 'C'#243'd. F'#225'brica'
              DataBinding.FieldName = 'CODFABRICA'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ValidationOptions = [evoShowErrorIcon]
              Properties.OnValidate = cxGrid4DBTableView2CODFABRICAPropertiesValidate
              HeaderHint = 'C'#243'digo deste produto na nota de compra deste fornecedor'
              Width = 143
            end
            object GridProdutoFornecedorView2FANTASIA: TcxGridDBColumn
              Caption = 'Fornecedor - Fantasia'
              DataBinding.FieldName = 'FANTASIA'
              Options.Editing = False
              Width = 240
            end
            object GridProdutoFornecedorView2OBSERVACAO: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'OBSERVACAO'
              Width = 150
            end
          end
          object GridProdutoFornecedorLevel1: TcxGridLevel
            GridView = GridProdutoFornecedorView2
          end
        end
        object edtFornecedorValor: TcxCurrencyEdit
          Left = 870
          Top = 122
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          EditValue = 0.000000000000000000
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = '##,##0.00##;-##,##0.00##'
          Style.HotTrack = False
          TabOrder = 6
          Height = 21
          Width = 87
        end
        object btnAdicionarFornecedor: TcxButton
          Left = 960
          Top = 112
          Width = 31
          Height = 31
          OptionsImage.ImageIndex = 2
          OptionsImage.Images = FrmPrincipal.ImgListBotoes32
          TabOrder = 7
          OnClick = btnAdicionarFornecedorClick
        end
        object btnRemoverFornecedor: TcxButton
          Left = 994
          Top = 112
          Width = 31
          Height = 31
          OptionsImage.ImageIndex = 3
          OptionsImage.Images = FrmPrincipal.ImgListBotoes32
          TabOrder = 8
          TabStop = False
          OnClick = btnRemoverFornecedorClick
        end
        object lblFornecedoresAdicionarÎPessoasÎRAZAOSOCIAL: TcxLabel
          Left = 123
          Top = 122
          AutoSize = False
          ParentColor = False
          ParentFont = False
          Style.HotTrack = False
          Height = 21
          Width = 620
        end
        object edtFornecedorDataUltimaCompra: TcxDateEdit
          Left = 746
          Top = 122
          AutoSize = False
          Style.HotTrack = False
          TabOrder = 5
          Height = 21
          Width = 121
        end
        object edtObservacao: TcxTextEdit
          Left = 12
          Top = 162
          Style.HotTrack = False
          TabOrder = 9
          Width = 1013
        end
        object edtFornecedoresAdicionarÎPessoas: TcxButtonEdit
          Left = 12
          Top = 122
          Hint = 'F2 - Consulta / Cadastro'
          TabStop = False
          AutoSize = False
          ParentFont = False
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
          Style.HotTrack = False
          TabOrder = 3
          Height = 21
          Width = 108
        end
        object edtFornecedorÎPessoas: TcxDBButtonEdit
          Left = 12
          Top = 53
          Hint = 'F2 - Consulta / Cadastro'
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DataBinding.DataField = 'PESSOA_RESPONSAVEL_SEQUENCIA'
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
          Properties.ClickKey = 113
          Style.HotTrack = False
          TabOrder = 1
          Height = 20
          Width = 108
        end
        object lblFornecedorÎPessoasÎRAZAOSOCIAL: TcxLabel
          Left = 123
          Top = 53
          AutoSize = False
          ParentColor = False
          ParentFont = False
          Style.HotTrack = False
          Height = 20
          Width = 902
        end
        object cxLabel20: TcxLabel
          Left = 0
          Top = 0
          Caption = 'Fornecedores para esse produto'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = 7697781
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.TextColor = 11711154
          Style.IsFontAssigned = True
          Transparent = True
        end
        object dxLayoutControl9Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
          Hidden = True
          ItemIndex = 2
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl9Item1: TdxLayoutItem
          Parent = GrupoOutrosFornecedores
          AlignVert = avClient
          Control = GridProdutoFornecedor
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 403
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl9Group1: TdxLayoutGroup
          Parent = GrupoOutrosFornecedores
          CaptionOptions.Text = 'Hidden Group'
          Hidden = True
          ItemIndex = 2
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object liedtFornecedorValor: TdxLayoutItem
          Parent = dxLayoutControl9Group1
          AlignVert = avClient
          CaptionOptions.Text = 'R$ Valor'
          CaptionOptions.Layout = clTop
          Control = edtFornecedorValor
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 87
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object libtnAdicionarFornecedor: TdxLayoutItem
          Parent = dxLayoutControl9Group1
          AlignVert = avBottom
          CaptionOptions.Visible = False
          Control = btnAdicionarFornecedor
          ControlOptions.OriginalHeight = 31
          ControlOptions.OriginalWidth = 31
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object libtnRemoverFornecedor: TdxLayoutItem
          Parent = dxLayoutControl9Group1
          AlignVert = avBottom
          CaptionOptions.Visible = False
          Control = btnRemoverFornecedor
          ControlOptions.OriginalHeight = 31
          ControlOptions.OriginalWidth = 31
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object lilblFornecedoresAdicionarÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
          Parent = dxLayoutControl9Group1
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Text = 'cxLabel4'
          CaptionOptions.Visible = False
          Control = lblFornecedoresAdicionarÎPessoasÎRAZAOSOCIAL
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 20
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object liedtFornecedorDataUltimaCompra: TdxLayoutItem
          Parent = dxLayoutControl9Group1
          AlignVert = avClient
          CaptionOptions.Text = 'Dt. '#218'ltima Compra'
          CaptionOptions.Layout = clTop
          Control = edtFornecedorDataUltimaCompra
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object liedtObservacao: TdxLayoutItem
          Parent = GrupoOutrosFornecedores
          CaptionOptions.Text = 
            'Observa'#231#227'o desse fornecedor para ser lembrado quando for comprar' +
            ' novamente'
          CaptionOptions.Layout = clTop
          Control = edtObservacao
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object liedtFornecedoresAdicionarÎPessoas: TdxLayoutItem
          Parent = dxLayoutControl9Group1
          AlignVert = avBottom
          CaptionOptions.Text = 'Fornecedor'
          CaptionOptions.Layout = clTop
          Control = edtFornecedoresAdicionarÎPessoas
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 108
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liedtFornecedorÎPessoas: TdxLayoutItem
          Parent = GrupoFornecedorPrincipal
          Control = edtFornecedorÎPessoas
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 108
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lilblFornecedorÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
          Parent = GrupoFornecedorPrincipal
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = lblFornecedorÎPessoasÎRAZAOSOCIAL
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 73
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object GrupoFornecedorPrincipal: TdxLayoutGroup
          Parent = dxLayoutControl9Group_Root
          CaptionOptions.Text = 'Fornecedor Principal'
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object GrupoOutrosFornecedores: TdxLayoutGroup
          Parent = dxLayoutControl9Group_Root
          AlignVert = avClient
          CaptionOptions.Text = 'Outros Fornecedores'
          Index = 3
        end
        object dxLayoutItem69: TdxLayoutItem
          Parent = dxLayoutControl9Group_Root
          CaptionOptions.Visible = False
          Control = cxLabel20
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 272
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutSeparatorItem19: TdxLayoutSeparatorItem
          Parent = dxLayoutControl9Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Separator'
          Index = 1
        end
      end
    end
    object PnlTabHistoricoCompras: TPanel [9]
      Left = 10000
      Top = 10000
      Width = 1037
      Height = 431
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 27
      Visible = False
      object dxLayoutControl11: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1037
        Height = 431
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
        object GridNF_Entrada_Produto: TcxGrid
          Left = 0
          Top = 0
          Width = 1037
          Height = 403
          TabOrder = 0
          object GridNF_Entrada_ProdutoView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSHistoricoDeCompras
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object GridNF_Entrada_ProdutoView2CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Width = 54
            end
            object GridNF_Entrada_ProdutoView2DATA: TcxGridDBColumn
              Caption = 'Data da Compra'
              DataBinding.FieldName = 'DATA'
              Width = 105
            end
            object GridNF_Entrada_ProdutoView2NUN_NF: TcxGridDBColumn
              Caption = 'Nota Fiscal'
              DataBinding.FieldName = 'NUN_NF'
              Width = 74
            end
            object GridNF_Entrada_ProdutoView2FORNECEDOR: TcxGridDBColumn
              Caption = 'Fornecedor'
              DataBinding.FieldName = 'FORNECEDOR'
              Width = 390
            end
            object GridNF_Entrada_ProdutoView2QUANT: TcxGridDBColumn
              Caption = 'Quantidade Comprada'
              DataBinding.FieldName = 'QUANT'
              Width = 139
            end
            object GridNF_Entrada_ProdutoView2CUSTO_FABR: TcxGridDBColumn
              Caption = 'R$ Custo'
              DataBinding.FieldName = 'CUSTO_FABR'
            end
            object GridNF_Entrada_ProdutoView2VALOR: TcxGridDBColumn
              Caption = 'R$ Valor'
              DataBinding.FieldName = 'VALOR'
            end
            object GridNF_Entrada_ProdutoView2CODFABRICA: TcxGridDBColumn
              Caption = 'C'#243'd. F'#225'brica'
              DataBinding.FieldName = 'CODFABRICA'
              Width = 215
            end
            object GridNF_Entrada_ProdutoView2TIPO: TcxGridDBColumn
              Caption = 'Tipo da Nota'
              DataBinding.FieldName = 'TIPO'
            end
            object GridNF_Entrada_ProdutoView2Situacao: TcxGridDBColumn
              Caption = 'Situa'#231#227'o'
              DataBinding.FieldName = 'Situacao'
              Width = 124
            end
          end
          object GridNF_Entrada_ProdutoLevel1: TcxGridLevel
            GridView = GridNF_Entrada_ProdutoView2
          end
        end
        object btnFiltrarTiposNota: TcxButton
          Left = 884
          Top = 406
          Width = 153
          Height = 25
          Caption = 'Filtrar Tipos de Nota'
          TabOrder = 2
          OnClick = btnFiltrarTiposNotaClick
        end
        object chkMostrarComprasEmAberto: TcxCheckBox
          Left = 727
          Top = 406
          Caption = 'Mostrar compras em aberto'
          Properties.OnChange = CkMostrarComprasEmAbertoPropertiesChange
          Style.HotTrack = False
          TabOrder = 1
          Transparent = True
        end
        object dxLayoutControl11Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl11Item1: TdxLayoutItem
          Parent = dxLayoutControl11Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          Control = GridNF_Entrada_Produto
          ControlOptions.OriginalHeight = 31
          ControlOptions.OriginalWidth = 22
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem113: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup21
          AlignHorz = ahRight
          AlignVert = avBottom
          CaptionOptions.Text = 'cxButton10'
          CaptionOptions.Visible = False
          Control = btnFiltrarTiposNota
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 153
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup21: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl11Group_Root
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object lichkMostrarComprasEmAberto: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup21
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxCheckBox1'
          CaptionOptions.Visible = False
          Control = chkMostrarComprasEmAberto
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 154
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object edtReservado: TcxCurrencyEdit [10]
      Left = 88
      Top = 152
      Hint = 
        'Quantidade de Itens que j'#225' foram encaminhado a Produ'#231#227'o mas aind' +
        'a n'#227'o foram retirados do estoque.'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = '##,##0.###;-##,##0.###'
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 11
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Width = 62
    end
    object btnVerficar: TcxButton [11]
      Left = 216
      Top = 136
      Width = 88
      Height = 37
      Hint = 'Verificar Disponibilidade de Estoque'
      Caption = 'Verificar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00EAF4EEFF8DD1AFFFCCE7D9FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E6F2ECFF6ECC9DFF6DE3AAFF64D099FFD9E9DEFFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
        FDFFDAEBE1FF4EC485FF5BE399FF90F4BFFFABF9D3FF5DCC90FFB5DCC5FFFEFE
        FEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CDE2
        D5FF50C181FF2ADA78FF42E686FF70EEA7FF8EF4BEFF87EEB8FF51C885FFBDDB
        C8FFFDFDFDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFBFAFFBFDAC8FF24B6
        61FF11D060FF01D756FF14DC65FF3EE582FF52E890FF55E993FF4FE78FFF33C1
        6EFF93C9A6FFF9F9F9FFFFFFFF00FFFFFF00FFFFFF00B7D6C0FF2CB05EFF03C5
        4DFF01CA49FF0CD358FF1BDA66FF32E377FF3FE47FFF38E27CFF20DF6DFF10D8
        62FF1FBB5CFF99C5A7FFF6F7F6FFFFFFFF00FFFFFF0063C180FF07BB3EFF2CC7
        59FF56D47CFF70DE92FF5BDF87FF4EE084FF56E389FF74E69AFF71E497FF5ADE
        88FF34D76FFF10B149FF6AB17CFFEFF3F0FFFFFFFF00A7E1B4FF3CC75CFF8CDC
        9FFF93DFA5FF69DD8CFF6EDF93FFDFF8E7FF9FECBAFF60E08CFF8FE7A9FF8EE4
        A7FF89E1A2FF41CD6EFF0EA93AFF73AD7AFFECF1ECFFFFFFFF00C3EACAFF6CD2
        82FF70D88AFF8FE0A5FFF2FBF4FFFFFFFF00FFFFFF00B0EBC1FF72DF94FFAAE9
        BAFFAEE7BCFFADE4B9FF73D38BFF0F9D26FF56A059FFFFFFFF00FFFFFF00C0EA
        C8FFA2E2B0FFF6FCF7FFFFFFFF00FFFFFF00FFFFFF00F9FDFAFFC0EDCBFF79DB
        93FFC2EDCBFFC8EBCEFFC8EACDFF7DD28CFF36A841FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFEE
        D5FF84D995FFD5F1DAFFE4F5E7FF8DD393FFA1D8A3FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
        FEFFDBF1DEFF83D18DFF7CCC84FFAAD9ACFFF5FAF5FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00EAF5EAFFD4EAD4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = btnVerficarClick
    end
    object chkTem_Lote: TcxDBCheckBox [12]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 
        'Funciona para rastreabilidade do produto para cada compra ou ven' +
        'da ou movimenta'#231#227'o do estoque com um lote'
      DataBinding.DataField = 'TEM_LOTE'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 29
      Transparent = True
      Visible = False
      OnClick = chkTem_LoteClick
      Height = 21
      Width = 1037
    end
    object cxGridVenda: TcxGrid [13]
      Left = 10000
      Top = 10000
      Width = 874
      Height = 392
      TabOrder = 32
      Visible = False
      object cxGridVendaView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        object cxGridVendaView2DT_EMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'DT_EMISSAO'
          Width = 120
        end
        object cxGridVendaView2CODVENDA: TcxGridDBColumn
          Caption = 'C'#243'd. Venda'
          DataBinding.FieldName = 'CODVENDA'
          Width = 73
        end
        object cxGridVendaView2QUANT: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'QUANT'
          Width = 72
        end
        object cxGridVendaView2RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Respons'#225'vel'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 231
        end
        object cxGridVendaView2DT_FATURAMENTO: TcxGridDBColumn
          Caption = 'Faturamento'
          DataBinding.FieldName = 'DT_FATURAMENTO'
          Width = 118
        end
      end
      object cxGridVendaLevel1: TcxGridLevel
        GridView = cxGridVendaView2
      end
    end
    object lblGeralEstoque: TcxLabel [14]
      Left = 14
      Top = 83
      Caption = 'Geral - Estoque '
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = 7697781
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 11711154
      Style.IsFontAssigned = True
      Transparent = True
    end
    object GridSemDataset: TcxGrid [15]
      Left = 10000
      Top = 10000
      Width = 1037
      Height = 391
      TabOrder = 30
      Visible = False
      object GridSemDatasetView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object GridSemDatasetView2CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridSemDatasetView2CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'digo Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
        end
        object GridSemDatasetView2REFERENCIA: TcxGridDBColumn
          Caption = 'Referencia'
          DataBinding.FieldName = 'REFERENCIA'
        end
        object GridSemDatasetView2PESSOA_CLIENTE_SEQUENCIA: TcxGridDBColumn
          Caption = 'C'#243'digo Cliente'
          DataBinding.FieldName = 'PESSOA_CLIENTE_SEQUENCIA'
          Width = 251
        end
        object GridSemDatasetView2PESSOA_CLIENTE_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_CLIENTE_TIPO'
          Visible = False
        end
        object GridSemDatasetView2PESSOA_CLIENTE_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo Cliente'
          DataBinding.FieldName = 'PESSOA_CLIENTE_CODIGO'
          Visible = False
        end
        object GridSemDatasetView2QUANTIDADE: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'QUANTIDADE'
        end
        object GridSemDatasetView2DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
        end
        object GridSemDatasetView2DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
        object GridSemDatasetView2RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
        end
      end
      object GridSemDatasetLevel1: TcxGridLevel
        GridView = GridSemDatasetView2
      end
    end
    object lblControleEstoqueLote: TcxLabel [16]
      Left = 10000
      Top = 10000
      Caption = 'Controle do estoque por lote'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = 7697781
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 11711154
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object cxLabel21: TcxLabel [17]
      Left = 10000
      Top = 10000
      Caption = 'Hist'#243'rico de Compras desse produto'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = 7697781
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 11711154
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object cxLabel22: TcxLabel [18]
      Left = 10000
      Top = 10000
      Caption = 'Hist'#243'rico de Venda desse produto'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = 7697781
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 11711154
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object chkPode_Retornar_Ao_Estoque: TcxDBCheckBox [19]
      Left = 14
      Top = 188
      AutoSize = False
      Caption = 'Pode retorna para o estoque depois de Produzir/Faturar.'
      DataBinding.DataField = 'PODE_RETORNAR_AO_ESTOQUE'
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
      TabOrder = 19
      Transparent = True
      Height = 21
      Width = 1037
    end
    object chkMostrarVendasAberto: TcxCheckBox [20]
      Left = 10000
      Top = 10000
      Caption = 'Mostrar Vendas Em Aberto'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = chkMostrarVendasAbertoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 34
      Visible = False
    end
    object chkMostrarVendasFinalizadas: TcxCheckBox [21]
      Left = 10000
      Top = 10000
      Caption = 'Mostrar Vendas Finalizadas'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = chkMostrarVendasFinalizadasPropertiesEditValueChanged
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 33
      Visible = False
    end
    object lblHistoricoVendaMostrandoEmpresa: TcxLabel [22]
      Left = 10000
      Top = 10000
      Hint = 
        'Para mostrar ou ocultar as vendas de outras empresas, acesse as ' +
        'Configura'#231#245'es do sistema'
      Caption = 'lblHistoricoVendaMostrandoEmpresa'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 16744448
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object edtAplicacao: TcxDBTextEdit [23]
      Left = 14
      Top = 292
      DataBinding.DataField = 'APLICACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 23
      Width = 1037
    end
    object btnGeral: TWRButtonFlat [24]
      Left = 0
      Top = 21
      Width = 75
      Height = 25
      Caption = 'GERAL'
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      SpeedButtonOptions.GroupIndex = 22
      SpeedButtonOptions.Down = True
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      OnClick = btnGeralClick
    end
    object WRButtonFlat1: TWRButtonFlat [25]
      Left = 78
      Top = 21
      Width = 155
      Height = 25
      Caption = 'HIST'#211'RICO DE MOVIMENTO'
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      SpeedButtonOptions.GroupIndex = 22
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      OnClick = WRButtonFlat1Click
    end
    object WRButtonFlat2: TWRButtonFlat [26]
      Left = 236
      Top = 21
      Width = 85
      Height = 25
      Caption = 'FORNECEDOR'
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      SpeedButtonOptions.GroupIndex = 22
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      OnClick = WRButtonFlat2Click
    end
    object WRButtonFlat3: TWRButtonFlat [27]
      Left = 324
      Top = 21
      Width = 75
      Height = 25
      Caption = 'COMPRAS'
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      SpeedButtonOptions.GroupIndex = 22
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      OnClick = WRButtonFlat3Click
    end
    object WRButtonFlat4: TWRButtonFlat [28]
      Left = 402
      Top = 21
      Width = 75
      Height = 25
      Caption = 'LOTES'
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      SpeedButtonOptions.GroupIndex = 22
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      OnClick = WRButtonFlat4Click
    end
    object WRButtonFlat5: TWRButtonFlat [29]
      Left = 480
      Top = 21
      Width = 75
      Height = 25
      Caption = 'VENDAS'
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      SpeedButtonOptions.GroupIndex = 22
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      OnClick = WRButtonFlat5Click
    end
    object edtProduto_Estoque_Local: TcxDBLookupComboBox [30]
      Left = 913
      Top = 134
      DataBinding.DataField = 'PRODUTO_ESTOQUE_LOCAL'
      DataBinding.DataSource = DS
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 9
      Width = 138
    end
    object cxGridMovimento: TcxGrid [31]
      Left = 10000
      Top = 10000
      Width = 993
      Height = 301
      TabOrder = 7
      Visible = False
      object cxGridMovimentoDBChartView1: TcxGridDBChartView
        DataController.DataSource = DSMovimento_Produto
        DiagramColumn.Active = True
        DiagramColumn.AxisValue.Title.Text = 'Quantidade'
        ToolBox.Border = tbNone
        ToolBox.DiagramSelector = True
        object cxGridMovimentoDBChartView1DataGroup1: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'TIPO_MOVIMENTO'
          DisplayText = ' Movimento'
        end
        object cxGridMovimentoDBChartView1DataGroup2: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'FORM'
          DisplayText = 'Tela'
        end
        object cxGridMovimentoDBChartView1DataGroup4: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'TIPO_USO'
          DisplayText = 'Tipo de Uso'
        end
        object cxGridMovimentoDBChartView1DataGroup3: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'USUARIO'
          DisplayText = 'Usuario'
        end
        object cxGridMovimentoDBChartView1Series1: TcxGridDBChartSeries
          DataBinding.FieldName = 'QUANT'
        end
      end
      object cxGridMovimentoLevel1: TcxGridLevel
        GridView = cxGridMovimentoDBChartView1
      end
    end
    object cxDBCheckBox1: TcxDBCheckBox [32]
      Left = 14
      Top = 212
      AutoSize = False
      Caption = 'Controla Estoque'
      DataBinding.DataField = 'TEM_CONTROLE_ESTOQUE'
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
      TabOrder = 20
      Transparent = True
      Height = 21
      Width = 1037
    end
    object edtDias_Minimo_Compra: TcxDBCurrencyEdit [33]
      Left = 509
      Top = 152
      AutoSize = False
      DataBinding.DataField = 'DIAS_PARA_COMPRAR_MIN'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0;-0'
      Style.HotTrack = False
      TabOrder = 16
      Height = 21
      Width = 69
    end
    object edtDias_Maximo_Compra: TcxDBCurrencyEdit [34]
      Left = 612
      Top = 152
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DIAS_PARA_COMPRAR_MAX'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0;-0'
      Style.HotTrack = False
      TabOrder = 18
      Height = 21
      Width = 73
    end
    object cxLabel1: TcxLabel [35]
      Left = 581
      Top = 156
      Caption = '   a   '
      Style.HotTrack = False
      Transparent = True
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      ItemIndex = 2
    end
    object GrupoEstoque1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Estoque'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 2
    end
    object GrupoEstoqueP: TdxLayoutGroup
      Parent = GrupoEstoque1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object LiGeral: TdxLayoutGroup
      Parent = GrupoEstoqueP
      AlignHorz = ahClient
      CaptionOptions.Text = 'Geral'
      ItemIndex = 2
      Index = 1
    end
    object lilblGeralEstoque: TdxLayoutItem
      Parent = LiGeral
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblGeralEstoque
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 135
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem12: TdxLayoutSeparatorItem
      Parent = LiGeral
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = LiGeral
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object GrupoDisponibilidade: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup7
      CaptionOptions.Text = 'Disponibilidade'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object liedtEstoqueDisponivel: TdxLayoutItem
      Parent = GrupoDisponibilidade
      CaptionOptions.Text = 'Dispon'#237'vel'
      CaptionOptions.Layout = clTop
      Control = edtDisponivel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtReservado: TdxLayoutItem
      Parent = GrupoDisponibilidade
      CaptionOptions.Text = 'Reservado'
      CaptionOptions.Layout = clTop
      Control = edtReservado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liEdtPreVenda: TdxLayoutItem
      Parent = GrupoDisponibilidade
      CaptionOptions.Text = 'Pendente'
      CaptionOptions.Layout = clTop
      Control = EdtPendente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object libtnVerficar: TdxLayoutItem
      Parent = GrupoDisponibilidade
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnVerficar
      ControlOptions.OriginalHeight = 37
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object GrupoQuantidadePadroes: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup7
      AlignVert = avTop
      CaptionOptions.Text = 'Quantidades padr'#245'es'
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object liedtEstoque_Max: TdxLayoutItem
      Parent = GrupoQuantidadePadroes
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Estoque Max.'
      CaptionOptions.Layout = clTop
      Control = edtEstoque_Max
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtEstoque_Min: TdxLayoutItem
      Parent = GrupoQuantidadePadroes
      AlignVert = avClient
      CaptionOptions.Text = 'Estoque Min.'
      CaptionOptions.Layout = clTop
      Control = edtEstoque_Min
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem94: TdxLayoutItem
      Parent = LiGeral
      AlignHorz = ahClient
      AlignVert = avTop
      Visible = False
      CaptionOptions.Layout = clTop
      Control = chkPode_Retornar_Ao_Estoque
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 190
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup29: TdxLayoutAutoCreatedGroup
      Parent = LiGeral
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object liedtLocalÎLocal: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup29
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Local'
      CaptionOptions.Layout = clTop
      Control = edtLocalÎLocal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtLocalÎLocalÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup29
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Descri'#231#227'o do Local onde o produto vai o ser colocado'
      CaptionOptions.Layout = clTop
      Control = edtLocalÎLocalÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 304
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtAplicacao: TdxLayoutItem
      Parent = LiGeral
      CaptionOptions.Text = 'Aplica'#231#227'o (Explique para o que esse produto serve)'
      CaptionOptions.Layout = clTop
      Control = edtAplicacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LiHistoricoMovimento: TdxLayoutItem
      Parent = GrupoEstoqueP
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
      CaptionOptions.Text = 'Hist'#243'rico de Movimento'
      CaptionOptions.Visible = False
      Control = PnlTabHistoricoMovimento
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 288
      ControlOptions.OriginalWidth = 514
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiFornecedores: TdxLayoutItem
      Parent = GrupoEstoqueP
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Fornecedores'
      CaptionOptions.Visible = False
      Control = PnlTabFornecedores
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 42
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LiGrupoCompras: TdxLayoutGroup
      Parent = GrupoEstoqueP
      CaptionOptions.Text = 'Compras'
      Index = 4
    end
    object dxLayoutItem59: TdxLayoutItem
      Parent = LiGrupoCompras
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = cxLabel21
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 297
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem18: TdxLayoutSeparatorItem
      Parent = LiGrupoCompras
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object LiCompras: TdxLayoutItem
      Parent = LiGrupoCompras
      AlignVert = avClient
      CaptionOptions.Text = 'Hist'#243'rico de Compras'
      CaptionOptions.Visible = False
      Control = PnlTabHistoricoCompras
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiLotes: TdxLayoutGroup
      Parent = GrupoEstoqueP
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Lotes'
      ItemIndex = 3
      Index = 5
    end
    object dxLayoutItem66: TdxLayoutItem
      Parent = LiLotes
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = lblControleEstoqueLote
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 238
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem14: TdxLayoutSeparatorItem
      Parent = LiLotes
      AlignHorz = ahClient
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object lichkTem_Lote: TdxLayoutItem
      Parent = LiLotes
      AlignHorz = ahClient
      CaptionOptions.Text = 'Habilitar Lote'
      CaptionOptions.Layout = clTop
      Control = chkTem_Lote
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem65: TdxLayoutItem
      Parent = LiLotes
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridSemDataset
      ControlOptions.OriginalHeight = 216
      ControlOptions.OriginalWidth = 245
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object GrupoVendas: TdxLayoutGroup
      Parent = GrupoEstoqueP
      CaptionOptions.Text = 'Vendas'
      ItemIndex = 3
      Index = 6
    end
    object dxLayoutItem109: TdxLayoutItem
      Parent = GrupoVendas
      CaptionOptions.Visible = False
      Control = cxLabel22
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 265
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem20: TdxLayoutSeparatorItem
      Parent = GrupoVendas
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object LiVendas: TdxLayoutItem
      Parent = GrupoVendas
      AlignVert = avClient
      CaptionOptions.Text = 'Hist'#243'rico de Vendas'
      CaptionOptions.Visible = False
      Control = cxGridVenda
      ControlOptions.OriginalHeight = 74
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
      Parent = GrupoVendas
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object lichkMostrarVendasFinalizadas: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = chkMostrarVendasFinalizadas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 152
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lichkMostrarVendasAberto: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkMostrarVendasAberto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lilblHistoricoVendaMostrandoEmpresa: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxLabel33'
      CaptionOptions.Visible = False
      Control = lblHistoricoVendaMostrandoEmpresa
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 177
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ItemIndex = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LibtnGeral: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnGeral
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = WRButtonFlat3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      Visible = False
      CaptionOptions.Visible = False
      Control = WRButtonFlat4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      Visible = False
      CaptionOptions.Visible = False
      Control = WRButtonFlat5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtProduto_Estoque_Local: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Local de Estoque Padr'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtProduto_Estoque_Local
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object licxGridMovimento: TdxLayoutItem
      Parent = liDashBoard
      CaptionOptions.Text = 'cxGrid1'
      Control = cxGridMovimento
      ControlOptions.OriginalHeight = 301
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liDashBoard: TdxLayoutGroup
      Parent = GrupoEstoqueP
      CaptionOptions.Text = 'DashBoard'
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = LiGeral
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtDias_Minimo_Compra: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Dias M'#237'nimo'
      CaptionOptions.Layout = clTop
      Control = edtDias_Minimo_Compra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtDias_Maximo_Compra: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Dias M'#225'ximo'
      CaptionOptions.Layout = clTop
      Control = edtDias_Maximo_Compra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup7
      CaptionOptions.Text = 'Tempo(dias) para entrega do material'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 28
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object PnlAjusteEstoque: TPanel [1]
    Left = 229
    Top = 302
    Width = 291
    Height = 104
    Caption = 'Ajuste de Estoque'
    TabOrder = 1
    Visible = False
    object edtDtAjusteEstoque: TcxDateEdit
      Left = 105
      Top = 25
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      Width = 121
    end
    object lblAPartirDoDia: TcxLabel
      Left = 29
      Top = 27
      Caption = 'A partir do dia:'
    end
    object btnAjusteEstoque: TcxButton
      Left = 64
      Top = 56
      Width = 153
      Height = 25
      Caption = 'Executar ajuste'
      TabOrder = 2
      OnClick = btnAjusteEstoqueClick
    end
  end
  object PnlSelecaoTiposNotaCompra: TPanel [2]
    Left = 288
    Top = 138
    Width = 333
    Height = 246
    TabOrder = 2
    Visible = False
    object dxLayoutControl4: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 331
      Height = 244
      Align = alClient
      TabOrder = 0
      object CkListTiposNotaCompra: TcxCheckListBox
        Left = 10
        Top = 41
        Width = 311
        Height = 162
        Items = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = cbs3D
        TabOrder = 0
      end
      object cxButton6: TcxButton
        Left = 115
        Top = 209
        Width = 100
        Height = 25
        Caption = 'Cancelar'
        ModalResult = 2
        OptionsImage.ImageIndex = 3
        TabOrder = 1
      end
      object cxButton9: TcxButton
        Left = 221
        Top = 209
        Width = 100
        Height = 25
        Caption = 'Confirmar'
        ModalResult = 1
        OptionsImage.ImageIndex = 1
        TabOrder = 2
      end
      object dxLayoutControl4Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem110: TdxLayoutItem
        Parent = dxLayoutControl4Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 
          'Selecione quais Tipos de Notas devem aparecer na listagem de His' +
          't'#243'rico de Compras'
        CaptionOptions.WordWrap = True
        CaptionOptions.Layout = clTop
        Control = CkListTiposNotaCompra
        ControlOptions.OriginalHeight = 61
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem111: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton6'
        CaptionOptions.Visible = False
        Control = cxButton6
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 100
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem112: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton9'
        CaptionOptions.Visible = False
        Control = cxButton9
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 100
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl4Group_Root
        LayoutDirection = ldHorizontal
        Index = 1
      end
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 455
    Top = 243
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = False
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = 7237230
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.Padding.AssignedValues = [lpavTop]
      ItemOptions.Padding.Top = 2
      ItemOptions.ControlBorderStyle = lbsFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.ScrollbarMode = sbmDefault
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = 7237230
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderStyle = lbsFlat
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = True
      LookAndFeel.ScrollbarMode = sbmDefault
      PixelsPerInch = 96
    end
  end
  inherited DS: TDataSource
    Left = 405
    Top = 238
  end
  inherited wrFrameEventos: TwrFrameEventos
    OnInicializar = wrFrameEventosInicializar
  end
  object Divisao_Estoque: TFDQuery
    BeforeOpen = Divisao_EstoqueBeforeOpen
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM PRODUTO_ESTOQUE'
      'WHERE (CODPRODUTO = :CODIGO)'
      'AND (CODEMPRESA = :Emp)')
    Left = 422
    Top = 348
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end
      item
        Name = 'EMP'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object DSDivisao_Estoque: TDataSource
    AutoEdit = False
    DataSet = Divisao_Estoque
    Left = 450
    Top = 348
  end
  object PopupMenu2: TPopupMenu
    OnPopup = PopupMenu2Popup
    Left = 515
    Top = 396
    object VisualizarPedido1: TMenuItem
      Caption = 'Visualizar Pedido'
      OnClick = VisualizarPedido1Click
    end
    object VisualizarNotadeEntrada1: TMenuItem
      Caption = 'Visualizar Nota de Entrada'
      OnClick = VisualizarNotadeEntrada1Click
    end
    object RemoverdivergnciasdeEstoque1: TMenuItem
      Caption = 'Remover diverg'#234'ncias de Estoque'
      OnClick = RemoverdivergnciasdeEstoque1Click
    end
    object RemoverdivergnciasdeEstoque21: TMenuItem
      Caption = 'Remover diverg'#234'ncias de Estoque 2'
      OnClick = RemoverdivergnciasdeEstoque21Click
    end
  end
  object Movimento_Produto: TFDQuery
    BeforeOpen = Movimento_ProdutoBeforeOpen
    AfterOpen = Movimento_ProdutoAfterOpen
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select PM.CODIGO, PM.DATA, PM.CODPRODUTO, PM.TIPO_MOVIMENTO, PM.' +
        'QUANT, PM.OBSERVACAO, PM.CODPRODUTO_LOTE,'
      
        '       iif((pm.codvenda is null) or (:PERMISSAO_VER_VENDA = '#39'S'#39')' +
        ' or (vd.PESSOA_FUNCIONARIO_CODIGO = :CODIGO_FUNCIONARIO_USUARIO)' +
        ', PM.VALOR, NULL) as VALOR,'
      
        '       PM.CODEMPRESA, PM.CODNF_ENTRADA, PM.CODVENDA, PM.PRODUTO_' +
        'ESTOQUE_LOCAL, PM.CODUSUARIO, PM.FORM,'
      
        '       U.USUARIO, F.FANTASIA, vd.PESSOA_FUNCIONARIO_CODIGO as VE' +
        'NDA_PESSOA_FUNCIONARIO_CODIGO, PM.TIPO_USO, PM.QUANT_ANTIGA, PM.' +
        'QUANT_ATUAL, PM.TIPO_USO'
      'from PRODUTO_MOVIMENTO PM'
      'left join USUARIO U on (U.CODIGO = PM.CODUSUARIO)'
      'left join PESSOAS F on (F.CODIGO = PM.PESSOA_FORNECEDOR_CODIGO)'
      'left join VENDA vd on (vd.codigo = pm.codvenda)'
      'where (PM.CODPRODUTO = :CODIGO) '
      '           and (PM.CODEMPRESA = :Emp)')
    Left = 670
    Top = 212
    ParamData = <
      item
        Name = 'PERMISSAO_VER_VENDA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'CODIGO_FUNCIONARIO_USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Name = 'EMP'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object DSMovimento_Produto: TDataSource
    DataSet = Movimento_Produto
    Left = 698
    Top = 212
  end
  object Produto_Lote: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select PL.*, p.razaosocial'
      'from PRODUTO_LOTE PL'
      'left join PESSOAS P on P.CODIGO = PL.PESSOA_CLIENTE_CODIGO'
      'where (PL.CODPRODUTO = :CODIGO)')
    Left = 670
    Top = 296
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object DSProduto_Estoque_Lote: TDataSource
    DataSet = Produto_Lote
    Left = 698
    Top = 296
  end
  object HistoricoDeCompras: TFDQuery
    BeforeOpen = HistoricoDeComprasBeforeOpen
    AfterOpen = HistoricoDeComprasAfterOpen
    OnCalcFields = HistoricoDeComprasCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select N.CODIGO, N.DATA, N.NUN_NF, NP.CODPRODUTO, NP.CODFABRICA,'
      '          N.GERA_FINANCEIRO, N.ATUALIZA_ESTOQUE,'
      
        '          P.RAZAOSOCIAL as FORNECEDOR, N.TIPO, sum(NP.QUANT) as ' +
        'QUANT,'
      
        '          max(NP.VALOR) as VALOR, max(NP.VALOR_COMPRA) as CUSTO_' +
        'FABR'
      'from NF_ENTRADA_PRODUTOS NP'
      'left join NF_ENTRADA N on (NP.CODNF_ENTRADA = N.CODIGO)'
      'left join PESSOAS P on (N.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO)'
      'where (NP.CODPRODUTO = :CODIGO)'
      '--group by 1, 2, 3, 4, 5, 6, 7, 8, 9')
    Left = 670
    Top = 324
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
    object HistoricoDeComprasSituacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Size = 50
      Calculated = True
    end
  end
  object DSHistoricoDeCompras: TDataSource
    DataSet = HistoricoDeCompras
    Left = 698
    Top = 324
  end
  object HistoricoVendas: TFDQuery
    BeforeOpen = HistoricoVendasBeforeOpen
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      '--SQL Carregado em runtime'
      
        'select VP.CODVENDA, V.RAZAOSOCIAL, V.DT_EMISSAO, V.DT_FATURAMENT' +
        'O, sum(VP.QUANT) as QUANT'
      'from VENDA_PRODUTO VP'
      'inner join VENDA V on (V.CODIGO = VP.CODVENDA) '
      'group by 1, 2, 3, 4'
      ''
      
        'select VP.CODVENDA, V.RAZAOSOCIAL, V.DT_EMISSAO, V.DT_FATURAMENT' +
        'O, sum(VP.QUANT) as QUANT'
      'from VENDA_PRODUTO VP '
      'left  join VENDA V on (V.CODIGO = VP.CODVENDA) '
      'where (VP.CODPRODUTO = :CodProduto)')
    Left = 670
    Top = 352
    ParamData = <
      item
        Name = 'CODPRODUTO'
        ParamType = ptInput
      end>
  end
  object DSRelacaoVendasProdutosPendentes: TDataSource
    AutoEdit = False
    DataSet = HistoricoVendas
    Left = 698
    Top = 352
  end
  object Estoque_Produto: TFDQuery
    BeforeOpen = Estoque_ProdutoBeforeOpen
    AfterOpen = Estoque_ProdutoAfterOpen
    BeforePost = Estoque_ProdutoBeforePost
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select * from PRODUTO_ESTOQUE'
      'WHERE (CODPRODUTO = :Codigo) and (CODEMPRESA= :Emp)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 670
    Top = 268
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Name = 'EMP'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object DSEstoque_Produto: TDataSource
    DataSet = Estoque_Produto
    Left = 698
    Top = 268
  end
  object Produto_Fornecedor: TFDQuery
    BeforeEdit = Produto_FornecedorBeforeEdit
    BeforePost = Produto_FornecedorBeforePost
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select PF.* , F.RAZAOSOCIAL, F.FANTASIA'
      'from PRODUTO_FORNECEDOR PF'
      'left join PESSOAS F on (PF.PESSOA_RESPONSAVEL_CODIGO = F.CODIGO)'
      'where (PF.CODPRODUTO = :CODIGO)')
    Left = 670
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object DSProdutoFornecedor: TDataSource
    DataSet = Produto_Fornecedor
    Left = 698
    Top = 240
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 486
    Top = 243
    PixelsPerInch = 96
    object stBalanco: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNone
    end
    object stNormal: TcxStyle
    end
  end
end
