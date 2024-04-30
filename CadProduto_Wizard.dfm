object FrmProduto_Wizard: TFrmProduto_Wizard
  Left = 0
  Top = 0
  Caption = 'Roteiro do Produto'
  ClientHeight = 491
  ClientWidth = 1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Wizard: TdxWizardControl
    Left = 0
    Top = 0
    Width = 1077
    Height = 491
    Hint = 'Onde aperece esse Hint?'
    Buttons.Back.Caption = '&Voltar'
    Buttons.Cancel.Caption = '&Cancelar'
    Buttons.CustomButtons.Buttons = <
      item
        Caption = 'Selecionar'
        Visible = False
        OnClick = WizardTdxWizardControlButtonsTdxWizardControlCustomButtonsButtons0Click
      end>
    Buttons.Finish.Caption = '&Finalizar'
    Buttons.Help.Visible = False
    Buttons.Next.Caption = '&Pr'#243'ximo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Header.AssignedValues = [wchvDescriptionVisibility, wchvGlyphVisibility, wchvVisible]
    Header.DescriptionVisibility = wcevAlwaysHidden
    Header.GlyphVisibility = wcevAlwaysHidden
    Header.Visible = wcevAlwaysHidden
    InfoPanel.Caption = 'Ap'#243's realizar a confer'#234'ncia, clique em Finalizar.'
    InfoPanel.HyperlinkColor = clMenuHighlight
    OptionsViewStyleAero.Title.Text = 'Informe a lista de materiais e servi'#231'os do seu produto.'
    ParentFont = False
    ViewStyle = wcvsAero
    OnButtonClick = WizardButtonClick
    object wizPaginaDecisaoRoteiro: TdxWizardControlPage
      Header.Title = 'Escolha qual caminho do roteiro deve ser seguido.'
      object DBTree: TdxDbOrgChart
        Left = 0
        Top = 0
        Width = 1030
        Height = 364
        DataSource = DSProducao_Roteiro_Organograma
        KeyFieldName = 'CODIGO'
        ParentFieldName = 'PARENT'
        TextFieldName = 'DESCRICAO'
        OrderFieldName = 'ORDEM'
        ImageFieldName = 'IMAGEM'
        LineColor = clGray
        DefaultNodeWidth = 90
        DefaultNodeHeight = 80
        IndentX = 32
        IndentY = 32
        Options = [ocSelect, ocFocus, ocButtons, ocDblClick, ocEdit, ocCanDrag, ocShowDrag, ocInsDel, ocAnimate]
        EditMode = [emCenter, emVCenter, emWrap]
        DefaultImageAlign = iaLT
        BorderStyle = bsNone
        Rotated = True
        Align = alClient
        Color = clDefault
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object wizPagina_Resposta: TdxWizardControlPage
      Header.AssignedValues = [wchvDescriptionVisibility]
      Header.DescriptionVisibility = wcevAlwaysVisible
      Header.Description = 'Aqui descreva como deve ficar o produto'
      Header.Title = 'Pergunta ?'
      PageVisible = False
      object edtRespostaEmTexto: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'OBS_PRODUCAO'
        DataBinding.DataSource = DSMateriaPrima
        Style.HotTrack = False
        TabOrder = 0
        Height = 364
        Width = 1030
      end
    end
    object wizPagina_Produto: TdxWizardControlPage
      Header.AssignedValues = [wchvDescriptionVisibility, wchvGlyphVisibility]
      Header.DescriptionVisibility = wcevAlwaysVisible
      Header.GlyphVisibility = wcevAlwaysHidden
      Header.Description = 'Observa'#231#227'o'
      Header.Title = 'Pergunta?'
      object MainLayout: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1030
        Height = 364
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        object EdtPecas: TcxDBCurrencyEdit
          Left = 0
          Top = 343
          AutoSize = False
          DataBinding.DataField = 'QTDADEPECA'
          DataBinding.DataSource = DSMateriaPrima
          Style.HotTrack = False
          TabOrder = 4
          Height = 21
          Width = 65
        end
        object EdtComprimento: TcxDBCurrencyEdit
          Left = 66
          Top = 343
          AutoSize = False
          DataBinding.DataField = 'COMP'
          DataBinding.DataSource = DSMateriaPrima
          Style.HotTrack = False
          TabOrder = 5
          Height = 21
          Width = 72
        end
        object EdtLargura: TcxDBCurrencyEdit
          Left = 139
          Top = 343
          AutoSize = False
          DataBinding.DataField = 'LARG'
          DataBinding.DataSource = DSMateriaPrima
          Style.HotTrack = False
          TabOrder = 6
          Height = 21
          Width = 58
        end
        object EdtEspessura: TcxDBCurrencyEdit
          Left = 198
          Top = 343
          AutoSize = False
          DataBinding.DataField = 'ESPESSURA'
          DataBinding.DataSource = DSMateriaPrima
          Style.HotTrack = False
          TabOrder = 7
          Height = 21
          Width = 55
        end
        object EdtQuant: TcxDBCurrencyEdit
          Left = 254
          Top = 343
          AutoSize = False
          DataBinding.DataField = 'QUANT'
          DataBinding.DataSource = DSMateriaPrima
          Style.Color = clWindow
          Style.HotTrack = False
          TabOrder = 8
          Height = 21
          Width = 49
        end
        object cxDBButtonEdit1: TcxDBButtonEdit
          Left = 42
          Top = 307
          DataBinding.DataField = 'ARQUIVO'
          DataBinding.DataSource = DSMateriaPrima
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Style.HotTrack = False
          TabOrder = 1
          Width = 875
        end
        object EdtValor: TcxDBCurrencyEdit
          Left = 345
          Top = 343
          AutoSize = False
          DataBinding.DataField = 'VALOR'
          DataBinding.DataSource = DSMateriaPrima
          Properties.ReadOnly = True
          Style.Color = clInactiveCaption
          Style.HotTrack = False
          TabOrder = 10
          Height = 21
          Width = 77
        end
        object EdtValorSomaTotal: TcxDBCurrencyEdit
          Left = 903
          Top = 343
          AutoSize = False
          DataBinding.DataField = 'Total'
          Style.HotTrack = False
          TabOrder = 3
          Height = 21
          Width = 121
        end
        object EdtTotal: TcxDBCurrencyEdit
          Left = 423
          Top = 343
          AutoSize = False
          DataBinding.DataField = 'TOTAL'
          DataBinding.DataSource = DSMateriaPrima
          ParentFont = False
          Properties.ReadOnly = True
          Style.Color = clBtnShadow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 11
          Height = 21
          Width = 141
        end
        object EdtUnidade: TcxDBTextEdit
          Left = 304
          Top = 343
          AutoSize = False
          DataBinding.DataField = 'UNIDADE'
          DataBinding.DataSource = DSMateriaPrima
          Properties.ReadOnly = True
          Style.Color = clInactiveCaption
          Style.HotTrack = False
          TabOrder = 9
          Height = 21
          Width = 40
        end
        object GridConsulta: TcxGrid
          Left = 0
          Top = 0
          Width = 1030
          Height = 300
          BorderStyle = cxcbsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object GridConsultaDBTableView1: TcxGridDBTableView
            DragMode = dmAutomatic
            Navigator.Buttons.CustomButtons = <>
            FindPanel.ClearFindFilterTextOnClose = False
            FindPanel.DisplayMode = fpdmManual
            FindPanel.InfoText = 'Pesquisa...'
            FindPanel.UseExtendedSyntax = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataModeController.GridModeBufferCount = 50
            DataController.Filter.AutoDataSetFilter = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DateTimeHandling.Grouping = dtgByDate
            FilterRow.InfoText = 'Click aqui para definir um filtro'
            NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
            OptionsBehavior.IncSearch = True
            OptionsBehavior.RecordScrollMode = rsmByPixel
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsCustomize.DataRowSizing = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
            OptionsView.CellAutoHeight = True
            OptionsView.CellTextMaxLineCount = 1
            OptionsView.GridLines = glNone
            OptionsView.GroupByHeaderLayout = ghlHorizontal
            OptionsView.RowSeparatorColor = clMoneyGreen
            OptionsView.RowSeparatorWidth = 1
            object GridConsultaDBTableView1COMPOSICAO: TcxGridDBColumn
              Caption = 'Composto'
              DataBinding.FieldName = 'TEM_COMPOSICAO'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = FrmPrincipal.ImgProduto
              Properties.Items = <
                item
                end
                item
                  ImageIndex = 2
                  Value = 'S'
                end
                item
                  Value = 'N'
                end>
              Width = 22
            end
            object GridConsultaDBTableView1TEM_GRADE: TcxGridDBColumn
              Caption = 'Grade'
              DataBinding.FieldName = 'TEM_GRADE'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = FrmPrincipal.cxImageList_Pequena
              Properties.Items = <
                item
                end
                item
                  ImageIndex = 9
                  Value = 'S'
                end
                item
                  Value = 'N'
                end>
              Width = 34
            end
            object GridConsultaDBTableView1TEM_TABELA_PRECO: TcxGridDBColumn
              Caption = 'Tabela de Pre'#231'o'
              DataBinding.FieldName = 'TEM_TABELA_PRECO'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = FrmPrincipal.ImgProduto
              Properties.Items = <
                item
                end
                item
                  ImageIndex = 3
                  Value = 'S'
                end
                item
                  Value = 'N'
                end>
              Width = 38
            end
            object GridConsultaDBTableView1TEM_FLUXO: TcxGridDBColumn
              Caption = 'Fluxo de Produ'#231#227'o'
              DataBinding.FieldName = 'TEM_FLUXO'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.DefaultImageIndex = 2
              Properties.Items = <
                item
                end
                item
                  Description = 'FLUXO'
                  ImageIndex = 0
                  Value = 'S'
                end>
              Visible = False
            end
            object GridConsultaDBTableView1TEM_WIZARD: TcxGridDBColumn
              Caption = 'Wizard'
              DataBinding.FieldName = 'TEM_WIZARD'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <>
              Visible = False
            end
            object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CODIGO'
              Width = 79
            end
            object GridConsultaDBTableView1CODFABRICA: TcxGridDBColumn
              Caption = 'Cod.F'#225'brica'
              DataBinding.FieldName = 'CODFABRICA'
              Width = 83
            end
            object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              Width = 300
            end
            object GridConsultaDBTableView1UNIDADE: TcxGridDBColumn
              Caption = 'UN'
              DataBinding.FieldName = 'UNIDADE'
              Width = 30
            end
            object GridConsultaDBTableView1ESTOQUE_P: TcxGridDBColumn
              Caption = 'Estoque'
              DataBinding.FieldName = 'ESTOQUE_P'
              Width = 65
            end
            object GridConsultaDBTableView1VALOR: TcxGridDBColumn
              Caption = 'R$ Valor'
              DataBinding.FieldName = 'VALOR'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderImageIndex = 3
              Width = 93
            end
            object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
              Caption = 'Ativo'
              DataBinding.FieldName = 'ATIVO'
              Width = 30
            end
            object GridConsultaDBTableView1CODNF_NCM: TcxGridDBColumn
              Caption = 'NCM'
              DataBinding.FieldName = 'CODNF_NCM'
              Width = 90
            end
            object GridConsultaDBTableView1PRODUTO_TIPO: TcxGridDBColumn
              Caption = 'Tipo do Produto'
              DataBinding.FieldName = 'PRODUTO_TIPO'
            end
            object GridConsultaDBTableView1ESTRELA: TcxGridDBColumn
              Caption = 'Estrela'
              DataBinding.FieldName = 'ESTRELA'
              PropertiesClassName = 'TdxRatingControlProperties'
              Visible = False
              Width = 79
            end
            object GridConsultaDBTableView1PRODUTO_GRUPO: TcxGridDBColumn
              Caption = 'Grupo do Produto'
              DataBinding.FieldName = 'PRODUTO_GRUPO'
              Width = 152
            end
            object GridConsultaDBTableView1ESTOQUE_MIN: TcxGridDBColumn
              Caption = 'Estoque M'#237'n.'
              DataBinding.FieldName = 'ESTOQUE_MIN'
              Width = 71
            end
            object GridConsultaDBTableView1ESTOQUE_MAX: TcxGridDBColumn
              Caption = 'Estoque Max.'
              DataBinding.FieldName = 'ESTOQUE_MAX'
              Width = 80
            end
            object GridConsultaDBTableView1CATEGORIA: TcxGridDBColumn
              Caption = 'Categoria'
              DataBinding.FieldName = 'CATEGORIA'
            end
            object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
              Caption = #218'ltima Altera'#231#227'o'
              DataBinding.FieldName = 'DT_ALTERACAO'
            end
            object GridConsultaDBTableView1DT_ULTIMA_COMPRA: TcxGridDBColumn
              Caption = 'Dt.Compra'
              DataBinding.FieldName = 'DT_ULTIMA_COMPRA'
              Width = 128
            end
            object GridConsultaDBTableView1LOCAL: TcxGridDBColumn
              Caption = 'Local de armazenagem do estoque'
              DataBinding.FieldName = 'LOCAL'
            end
            object GridConsultaDBTableView1FORNECEDOR: TcxGridDBColumn
              Caption = 'Fornecedor padr'#227'o'
              DataBinding.FieldName = 'FORNECEDOR'
              Width = 179
            end
            object GridConsultaDBTableView1COR: TcxGridDBColumn
              DataBinding.FieldName = 'COR'
              Visible = False
            end
            object GridConsultaDBTableView1LOCAL_APLICACAO: TcxGridDBColumn
              Caption = 'Local de Aplica'#231#227'o'
              DataBinding.FieldName = 'LOCAL_APLICACAO'
              Visible = False
            end
            object GridConsultaDBTableView1CLASSIFICACAO: TcxGridDBColumn
              Caption = 'Classifica'#231#227'o'
              DataBinding.FieldName = 'CLASSIFICACAO'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <>
            end
            object GridConsultaDBTableView1CustoRef: TcxGridDBColumn
              Caption = 'Refer'#234'ncia'
              DataBinding.FieldName = 'CustoRef'
            end
            object GridConsultaDBTableView1CALC_PACRESC_PRAZO: TcxGridDBColumn
              AlternateCaption = 'CALC_PACRESC_PRAZO'
              Caption = 'Acr'#233'scimo Prazo'
              DataBinding.FieldName = 'PACRESC_PRAZO'
              Visible = False
            end
            object GridConsultaDBTableView1CALC_PDESC_ATACADO: TcxGridDBColumn
              Caption = 'Desconto Atacado'
              DataBinding.FieldName = 'CALC_PDESC_ATACADO'
              Visible = False
            end
            object GridConsultaDBTableView1CALC_VPRAZO: TcxGridDBColumn
              Caption = 'R$ Prazo'
              DataBinding.FieldName = 'CALC_VPRAZO'
              Visible = False
            end
            object GridConsultaDBTableView1CALC_VATACADO: TcxGridDBColumn
              Caption = 'R$ Atacado'
              DataBinding.FieldName = 'CALC_VATACADO'
              Visible = False
            end
            object GridConsultaDBTableView1CUSTO: TcxGridDBColumn
              Caption = 'R$ Custo'
              DataBinding.FieldName = 'CUSTO'
              Visible = False
              VisibleForCustomization = False
            end
            object GridConsultaDBTableView1VALOR_COMPRA: TcxGridDBColumn
              Caption = 'R$ Valor_Venda'
              DataBinding.FieldName = 'VALOR_COMPRA'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object GridConsultaDBLayoutView1: TcxGridDBLayoutView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.ItemHotTrack = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.FocusRect = False
            OptionsView.ScrollBars = ssNone
            OptionsView.MinValueWidth = 8
            OptionsView.RecordBorderWidth = 2
            OptionsView.RecordCaption.Visible = False
            OptionsView.RecordIndent = 0
            OptionsView.SeparatorColor = clBtnShadow
            OptionsView.SeparatorWidth = 0
            OptionsView.ViewMode = lvvmMultiColumn
            object GridConsultaDBLayoutView1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              Hidden = True
              ShowBorder = False
              Index = -1
            end
          end
          object cxGridLevel1: TcxGridLevel
            Caption = 'Relat'#243'rio'
            GridView = GridConsultaDBTableView1
          end
        end
        object edtCodigo: TcxDBTextEdit
          Left = 952
          Top = 307
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = DSProducao_Roteiro_Organograma
          Properties.OnChange = cxDBTextEdit1PropertiesChange
          Style.HotTrack = False
          TabOrder = 2
          Width = 78
        end
        object MainLayoutGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object GrupoValores: TdxLayoutGroup
          Parent = MainLayoutGroup_Root
          AlignHorz = ahClient
          AlignVert = avClient
          ItemIndex = 2
          ShowBorder = False
          Index = 0
        end
        object GrupoMedidas: TdxLayoutGroup
          Parent = GrupoValores
          AlignVert = avBottom
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object LayoutItemQtPeca: TdxLayoutItem
          Parent = GrupoMedidas
          CaptionOptions.Text = 'Qtd. Pe'#231'as'
          CaptionOptions.Layout = clTop
          Control = EdtPecas
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 65
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object LayoutItemComprimento: TdxLayoutItem
          Parent = GrupoMedidas
          CaptionOptions.Text = 'Comprimento'
          CaptionOptions.Layout = clTop
          Control = EdtComprimento
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 72
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object LayoutItemLargura: TdxLayoutItem
          Parent = GrupoMedidas
          CaptionOptions.Text = 'Largura'
          CaptionOptions.Layout = clTop
          Control = EdtLargura
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 58
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object LayoutItemEspessura: TdxLayoutItem
          Parent = GrupoMedidas
          CaptionOptions.Text = 'Espessura'
          CaptionOptions.Layout = clTop
          Control = EdtEspessura
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 55
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object GrupoCustoEValor: TdxLayoutGroup
          Parent = GrupoValores
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object MainLayoutItem6: TdxLayoutItem
          Parent = GrupoMedidas
          CaptionOptions.Text = 'Quant.'
          CaptionOptions.Layout = clTop
          Control = EdtQuant
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 49
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object GrupoCusto: TdxLayoutGroup
          Parent = GrupoCustoEValor
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object LayoutItemArquivo: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Text = 'Arquivo:'
          Control = cxDBButtonEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 559
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object MainLayoutValorAdicional: TdxLayoutGroup
          Parent = GrupoMedidas
          AlignHorz = ahRight
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 7
        end
        object ItemValorProduto: TdxLayoutItem
          Parent = GrupoMedidas
          AlignVert = avClient
          CaptionOptions.Text = 'R$ Valor'
          CaptionOptions.Layout = clTop
          Control = EdtValor
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 77
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = GrupoMedidas
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'R$ Total Produto '
          CaptionOptions.Layout = clTop
          Control = EdtValorSomaTotal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object ItemTotalProduto: TdxLayoutItem
          Parent = GrupoMedidas
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'R$ Total do Item Selecionado'
          CaptionOptions.Layout = clTop
          Control = EdtTotal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 141
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object MainLayoutItem3: TdxLayoutItem
          Parent = GrupoMedidas
          AlignVert = avBottom
          CaptionOptions.Text = 'Unidade'
          CaptionOptions.Layout = clTop
          Control = EdtUnidade
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 40
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = GrupoValores
          AlignHorz = ahClient
          AlignVert = avClient
          Control = GridConsulta
          ControlOptions.OriginalHeight = 204
          ControlOptions.OriginalWidth = 250
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object LiedtCodigo: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignVert = avBottom
          Visible = False
          CaptionOptions.Text = 'C'#243'digo'
          Control = edtCodigo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 78
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = GrupoValores
          AlignVert = avBottom
          LayoutDirection = ldHorizontal
          Index = 1
        end
      end
    end
    object wizPagina_Upload: TdxWizardControlPage
      Header.Title = 'Escolha os arquivos desse sevi'#231'o'
    end
    object wizPagina_DataHora: TdxWizardControlPage
      Header.AssignedValues = [wchvDescriptionVisibility]
      Header.DescriptionVisibility = wcevAlwaysVisible
      Header.Description = 'Ultima Observa'#231#227'o'
      Header.Title = 'Ultima'
    end
    object wizPagina_CheckList: TdxWizardControlPage
      Header.Title = 'Check List - Lembrete para n'#227'o de perguntar'
    end
    object wizPagina_Ornanograma_Completo: TdxWizardControlPage
      Header.Title = 'Mostra em detalhes todas as repostas'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1030
        Height = 364
        Align = alClient
        BorderStyle = cxcbsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FindPanel.ClearFindFilterTextOnClose = False
          FindPanel.DisplayMode = fpdmManual
          FindPanel.InfoText = 'Pesquisa...'
          FindPanel.UseExtendedSyntax = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataModeController.GridModeBufferCount = 50
          DataController.DataSource = DSFormulas
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.Grouping = dtgByDate
          FilterRow.InfoText = 'Click aqui para definir um filtro'
          NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
          OptionsBehavior.IncSearch = True
          OptionsBehavior.RecordScrollMode = rsmByPixel
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsCustomize.DataRowSizing = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
          OptionsView.CellAutoHeight = True
          OptionsView.CellTextMaxLineCount = 1
          OptionsView.GridLines = glNone
          OptionsView.RowSeparatorColor = clMoneyGreen
          OptionsView.RowSeparatorWidth = 1
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
          end
          object GridConsultaDBTableView1IMAGEM: TcxGridDBColumn
            Caption = 'Imagem'
            DataBinding.FieldName = 'IMAGEM'
            PropertiesClassName = 'TcxImageProperties'
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 322
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Dt. Altera'#231#227'o'
            DataBinding.FieldName = 'DT_ALTERACAO'
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Ativo'
            DataBinding.FieldName = 'ATIVO'
          end
          object GridConsultaDBTableView1PADRAO: TcxGridDBColumn
            Caption = 'Padr'#227'o'
            DataBinding.FieldName = 'PADRAO'
          end
          object GridConsultaDBTableView1QTDADEPECA_FORMULA: TcxGridDBColumn
            Caption = 'F'#243'rmula da quantidade de Pe'#231'as'
            DataBinding.FieldName = 'QTDADEPECA_FORMULA'
            Width = 170
          end
          object GridConsultaDBTableView1COMP_FORMULA: TcxGridDBColumn
            Caption = 'F'#243'rmula do Comprimento'
            DataBinding.FieldName = 'COMP_FORMULA'
            Width = 170
          end
          object GridConsultaDBTableView1LARG_FORMULA: TcxGridDBColumn
            Caption = 'F'#243'rmula do Largura'
            DataBinding.FieldName = 'LARG_FORMULA'
            Width = 170
          end
          object GridConsultaDBTableView1ESPESSURA_FORMULA: TcxGridDBColumn
            Caption = 'F'#243'rmula do Espessura'
            DataBinding.FieldName = 'ESPESSURA_FORMULA'
            Width = 170
          end
          object GridConsultaDBTableView1TIPO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TIPO'
          end
          object GridConsultaDBTableView1FORMULA: TcxGridDBColumn
            Caption = 'F'#243'rmula'
            DataBinding.FieldName = 'FORMULA'
            Visible = False
          end
          object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'OBSERVACAO'
            PropertiesClassName = 'TcxMemoProperties'
          end
        end
        object cxGridDBLayoutView1: TcxGridDBLayoutView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ItemHotTrack = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.FocusRect = False
          OptionsView.ScrollBars = ssNone
          OptionsView.MinValueWidth = 8
          OptionsView.RecordBorderWidth = 2
          OptionsView.RecordCaption.Visible = False
          OptionsView.RecordIndent = 0
          OptionsView.SeparatorColor = clBtnShadow
          OptionsView.SeparatorWidth = 0
          OptionsView.ViewMode = lvvmMultiColumn
          object dxLayoutGroup1: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            Hidden = True
            ShowBorder = False
            Index = -1
          end
        end
        object GridConsultaDBWinExplorerView1: TcxGridDBWinExplorerView
          OnDblClick = GridConsultaDBWinExplorerView1DblClick
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          ActiveDisplayMode = dmExtraLargeImages
          DataController.DataSource = DSFormulas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          ItemSet.DescriptionItem = GridConsultaDBWinExplorerView1OBSERVACAO
          ItemSet.ExtraLargeImageItem = GridConsultaDBWinExplorerView1IMAGEM
          ItemSet.ExtraLargeImageIndexItem = GridConsultaDBWinExplorerView1IMAGEM
          ItemSet.LargeImageItem = GridConsultaDBWinExplorerView1IMAGEM
          ItemSet.LargeImageIndexItem = GridConsultaDBWinExplorerView1IMAGEM
          ItemSet.MediumImageItem = GridConsultaDBWinExplorerView1IMAGEM
          ItemSet.MediumImageIndexItem = GridConsultaDBWinExplorerView1IMAGEM
          ItemSet.SmallImageItem = GridConsultaDBWinExplorerView1IMAGEM
          ItemSet.SmallImageIndexItem = GridConsultaDBWinExplorerView1IMAGEM
          ItemSet.TextItem = GridConsultaDBWinExplorerView1DESCRICAO
          object GridConsultaDBWinExplorerView1IMAGEM: TcxGridDBWinExplorerViewItem
            Caption = 'Imagem'
            DataBinding.FieldName = 'IMAGEM'
            PropertiesClassName = 'TcxImageProperties'
          end
          object GridConsultaDBWinExplorerView1CODIGO: TcxGridDBWinExplorerViewItem
            DataBinding.FieldName = 'CODIGO'
          end
          object GridConsultaDBWinExplorerView1DESCRICAO: TcxGridDBWinExplorerViewItem
            DataBinding.FieldName = 'DESCRICAO'
          end
          object GridConsultaDBWinExplorerView1TIPO: TcxGridDBWinExplorerViewItem
            DataBinding.FieldName = 'TIPO'
          end
          object GridConsultaDBWinExplorerView1COMP_FORMULA: TcxGridDBWinExplorerViewItem
            DataBinding.FieldName = 'COMP_FORMULA'
          end
          object GridConsultaDBWinExplorerView1LARG_FORMULA: TcxGridDBWinExplorerViewItem
            DataBinding.FieldName = 'LARG_FORMULA'
          end
          object GridConsultaDBWinExplorerView1ESPESSURA_FORMULA: TcxGridDBWinExplorerViewItem
            DataBinding.FieldName = 'ESPESSURA_FORMULA'
          end
          object GridConsultaDBWinExplorerView1QTDADEPECA_FORMULA: TcxGridDBWinExplorerViewItem
            DataBinding.FieldName = 'QTDADEPECA_FORMULA'
          end
          object GridConsultaDBWinExplorerView1FORMULA: TcxGridDBWinExplorerViewItem
            DataBinding.FieldName = 'FORMULA'
          end
          object GridConsultaDBWinExplorerView1ATIVO: TcxGridDBWinExplorerViewItem
            DataBinding.FieldName = 'ATIVO'
          end
          object GridConsultaDBWinExplorerView1DT_ALTERACAO: TcxGridDBWinExplorerViewItem
            DataBinding.FieldName = 'DT_ALTERACAO'
          end
          object GridConsultaDBWinExplorerView1OBSERVACAO: TcxGridDBWinExplorerViewItem
            DataBinding.FieldName = 'OBSERVACAO'
          end
        end
        object GridConsultaDBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          Bands = <
            item
              Caption = 'Imagem'
              Width = 180
            end
            item
              Caption = 'Descr'#231#227'o'
            end>
          object GridConsultaDBBandedTableView1IMAGEM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IMAGEM'
            PropertiesClassName = 'TcxImageProperties'
            HeaderAlignmentHorz = taCenter
            Width = 141
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.LineCount = 6
            Position.RowIndex = 0
          end
          object GridConsultaDBBandedTableView1CODIGO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridConsultaDBBandedTableView1DESCRICAO: TcxGridDBBandedColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 255
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridConsultaDBBandedTableView1TIPO: TcxGridDBBandedColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TIPO'
            Width = 47
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridConsultaDBBandedTableView1COMP_FORMULA: TcxGridDBBandedColumn
            Caption = 'F'#243'rmula do Comprimento'
            DataBinding.FieldName = 'COMP_FORMULA'
            Width = 130
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridConsultaDBBandedTableView1LARG_FORMULA: TcxGridDBBandedColumn
            Caption = 'F'#243'rmula do Largura'
            DataBinding.FieldName = 'LARG_FORMULA'
            Width = 127
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridConsultaDBBandedTableView1ESPESSURA_FORMULA: TcxGridDBBandedColumn
            Caption = 'F'#243'rmula do Altura'
            DataBinding.FieldName = 'ESPESSURA_FORMULA'
            Width = 119
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridConsultaDBBandedTableView1QTDADEPECA_FORMULA: TcxGridDBBandedColumn
            Caption = 'F'#243'rmula da Quantidade'
            DataBinding.FieldName = 'QTDADEPECA_FORMULA'
            Width = 137
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridConsultaDBBandedTableView1FORMULA: TcxGridDBBandedColumn
            Caption = 'F'#243'rmula'
            DataBinding.FieldName = 'FORMULA'
            Width = 100
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object GridConsultaDBBandedTableView1ATIVO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ATIVO'
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object GridConsultaDBBandedTableView1DT_ALTERACAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_ALTERACAO'
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object GridConsultaDBBandedTableView1OBSERVACAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OBSERVACAO'
            PropertiesClassName = 'TcxMemoProperties'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.LineCount = 5
            Position.RowIndex = 1
          end
        end
        object cxGridLevel2: TcxGridLevel
          Caption = 'Relat'#243'rio'
          GridView = GridConsultaDBWinExplorerView1
        end
      end
    end
    object wizPagina_Resumo_final: TdxWizardControlPage
      Header.AssignedValues = [wchvTitleFont, wchvVisible]
      Header.TitleFont.Charset = DEFAULT_CHARSET
      Header.TitleFont.Color = clDefault
      Header.TitleFont.Height = -11
      Header.TitleFont.Name = 'Tahoma'
      Header.TitleFont.Style = [fsBold]
      Header.Visible = wcevAlwaysHidden
      Header.Description = 'dfgsdgsdf'
      Header.Title = 'Achei '
      object cxLabel1: TcxLabel
        Left = 3
        Top = 4
        Caption = 
          'Aqui ficar'#225' os Roteiros, a pessoa pode escolher e apartir dqui, ' +
          'fazer um orcamento completo(Grid com as Imagens e Nomes deos rot' +
          'eiros)'
      end
    end
    object WizMonteSeuProduto: TdxWizardControlPage
    end
    object dxWizardControlPage2: TdxWizardControlPage
    end
    object dxWizardControlPage3: TdxWizardControlPage
    end
    object wizProdutoMontado: TdxWizardControlPage
      Header.Title = 'Monte seu produto'
      object pnlComposicao: TPanel
        Left = 0
        Top = 54
        Width = 1030
        Height = 310
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        Caption = 'pnlComposicao'
        TabOrder = 0
      end
      object edtCodProdutoDescricao: TcxDBTextEdit
        Left = 71
        Top = 27
        AutoSize = False
        DataBinding.DataField = 'DESCRICAO'
        DataBinding.DataSource = DSPmPrincipal
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = clBlack
        Style.TextStyle = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 22
        Width = 523
      end
      object edtCodProdutoÎPRODUTO: TcxButtonEdit
        Left = 0
        Top = 27
        AutoSize = False
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        Properties.ClickKey = 113
        Properties.OnEditValueChanged = edtCodProdutoÎPRODUTOPropertiesEditValueChanged
        TabOrder = 2
        Height = 21
        Width = 65
      end
      object cxLabel2: TcxLabel
        Left = 0
        Top = -4
        Caption = 'Produto Principal'
        ParentFont = False
        Style.BorderColor = clActiveBorder
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clGray
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
  end
  object DSMateriaPrima: TDataSource
    DataSet = MTMateriaPrima
    Left = 264
    Top = 25
  end
  object DSProduto_Wizard: TDataSource
    Left = 292
    Top = 25
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 320
    Top = 25
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
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
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = True
      PixelsPerInch = 96
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 1638748
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000001A16
          122F796555DF9D8C7EFF99887AFF968778FF8D7D6DFF847565FF7F705FFF7D6F
          5FFF7D7061FF827668FF7C7162FF574C3EDF12100D2F00000000000000008770
          5FEF988C7FFFA49C92FFA69D93FFA9A196FFA69D91FFA59B8FFFA69C90FFABA3
          96FFB0A89CFFAEA69BFFA39A8FFF857B6DFF5D5243EF0000000000000000937A
          67FFE9E6E2FFF7F2EBFFF5ECE1FFF5EADAFFEEDECAFFE8D8C1FFE6D6C0FFE8D9
          C4FFEBDDC9FFF2E5D3FFEEE1CEFFD2C5B2FF6B5E4EFF0000000000000000967C
          69FFE1DED9FFE2E0DCFFD9D5D0FFD9D5D0FFC0BAB1FFAEA599FFA69D90FFAEA5
          98FFB9B1A6FFCFCBC4FFC1BBB2FF9E9385FF6A5C4CFF0000000000000000997E
          6BFFDEDBD6FFE1DEDBFFD6D2CDFFD5D2CDFFBCB6ADFFABA296FFA3998CFFAAA1
          94FFB5ADA2FFCCC7C1FFBFB8B0FF968C7EFF6E5F4EFF00000000000000009B80
          6DFFDDD9D4FFE2DFDBFFD6D2CCFFD5D1CAFFBCB5AAFFAAA193FFA3998AFFA99F
          91FFB3AA9EFFCBC6BEFFC0B9AFFF93887AFF726251FF00000000000000009E82
          6EFFA39A8CFFA2988BFFA2988AFFA49A8DFF9F9586FF9C9282FF9D9283FFA398
          89FFA99E90FFAAA092FF9D9384FF887C6DFF756453FF0000000000000000A084
          70FFE9E3DCFFF7F1EAFFF8EEE3FFEDDECCFFE0CFB9FFDBC8B0FFDECCB4FFE2D0
          B8FFEEDEC9FFF7EAD8FFF0E3CFFFDACBB7FF796755FF0000000000000000A285
          71FFCDC4BDFFAA9484FFBBAA9CFF9F8D7EFF766B5CFFBBB5ADFFBEB4A9FF9B83
          71FFA89688FFB09E91FF756A5BFFC0B6ADFF7C6A58FF00000000000000003D32
          2A5F987D6AEF947B68FFCCBCB0FFBBAA9EFF826E5CFF967C69FF947B68FF7A68
          56FFA69385FFD2C3B9FF605545FF7B6856EF3028225F00000000000000000000
          000000000000997E6BFFDCD1CAFFCABDB3FF675648BF0000000000000000584B
          3EBFAD9B8EFFE3DBD4FF615646FF000000000000000000000000000000000000
          0000000000009D816EFFEBE5E1FFE8E3DFFF846F5DEF110E0C1F100D0B1F7362
          52EFCABDB4FFF2EEEBFF675A4AFF000000000000000000000000000000000000
          000000000000A08470FFEFEAE6FFFAF9F8FFBFAFA3FF907A67FF8B7664FFB2A2
          95FFF3EFEDFFF0EEECFF6D5E4EFF000000000000000000000000000000000000
          0000000000006553469FCABAAFFFEFE9E6FFEEE4DEFFE7DFD2FFECE6DAFFF2EC
          E6FFF7F4F2FFBAB1A8FF483E339F000000000000000000000000000000000000
          0000000000000A08070F846C5CCFB49D8EFFC3AFA1FFDFD4C9FFEBE4DDFFE2DB
          D5FFB8ABA1FF675749CF0706050F000000000000000000000000000000000000
          000000000000000000000A08070F6453469F947A68EF9A7F6CFF957C68FF8670
          5FEF55483C9F0807060F00000000000000000000000000000000}
      end>
  end
  object UCControls1: TUCControls
    GroupName = 'WizardProduto'
    UserControl = FrmPrincipal.UserControl
    Components = ''
    MostraMessagemErroValidacao = False
    Left = 376
    Top = 25
  end
  object MTMateriaPrima: TFDMemTable
    Filtered = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 236
    Top = 25
    object MTMateriaPrimaSELECAO: TIntegerField
      FieldName = 'SELECAO'
    end
    object MTMateriaPrimaCODPRODUTO_WIZARD: TIntegerField
      FieldName = 'CODPRODUTO_WIZARD'
    end
    object MTMateriaPrimaCODPRODUTO_MATERIA_PRIMA: TStringField
      FieldName = 'CODPRODUTO_MATERIA_PRIMA'
      Size = 15
    end
    object MTMateriaPrimaDESCRICAO_MATERIA_PRIMA: TStringField
      FieldName = 'DESCRICAO_MATERIA_PRIMA'
      Size = 300
    end
    object MTMateriaPrimaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object MTMateriaPrimaQTDADEPECA: TFloatField
      FieldName = 'QTDADEPECA'
    end
    object MTMateriaPrimaQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object MTMateriaPrimaCOMP: TFloatField
      FieldName = 'COMP'
    end
    object MTMateriaPrimaLARG: TFloatField
      FieldName = 'LARG'
    end
    object MTMateriaPrimaESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object MTMateriaPrimaCUSTO_LOJA: TFloatField
      FieldName = 'CUSTO_LOJA'
    end
    object MTMateriaPrimaCUSTO_FABR: TFloatField
      FieldName = 'CUSTO_FABR'
    end
    object MTMateriaPrimaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object MTMateriaPrimaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object MTMateriaPrimaMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object MTMateriaPrimaTIPO_OBS: TStringField
      FieldName = 'TIPO_OBS'
    end
    object MTMateriaPrimaOBS_PRODUCAO: TWideMemoField
      FieldName = 'OBS_PRODUCAO'
      BlobType = ftWideMemo
      Size = 8
    end
    object MTMateriaPrimaARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Size = 255
    end
    object MTMateriaPrimaARQUIVO_OBRIGATORIO: TStringField
      FieldName = 'ARQUIVO_OBRIGATORIO'
      Size = 1
    end
    object MTMateriaPrimaFIXO: TStringField
      FieldName = 'FIXO'
      Size = 1
    end
    object MTMateriaPrimaPERC_ADICIONA: TFloatField
      FieldName = 'PERC_ADICIONA'
    end
    object MTMateriaPrimaCUSTO_COMPOSICAO: TFloatField
      FieldName = 'CUSTO_COMPOSICAO'
    end
  end
  object Producao_Roteiro_Organograma: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    DetailFields = 'CODPRODUCAO_ROTEIRO'
    Connection = DMBanco.Banco
    SQL.Strings = (
      
        'SELECT PO.*, PP.TIPO_PERGUNTA, PP.DESCRICAO AS PERGUNTA, PP.OBSE' +
        'RVACAO, PP.FILTRO'
      ' FROM PRODUCAO_ROTEIRO_ORGANOGRAMA PO'
      
        'LEFT JOIN PRODUCAO_ROTEIRO_PERGUNTA PP ON PP.CODIGO = PO.CODPROD' +
        'UCAO_ROTEIRO_PERGUNTA'
      'WHERE PO.CODPRODUCAO_ROTEIRO = :Codigo')
    Left = 432
    Top = 25
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = '1'
      end>
    object Producao_Roteiro_OrganogramaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Producao_Roteiro_OrganogramaCODPRODUCAO_ROTEIRO: TIntegerField
      FieldName = 'CODPRODUCAO_ROTEIRO'
      Origin = 'CODPRODUCAO_ROTEIRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Producao_Roteiro_OrganogramaPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = 'PARENT'
    end
    object Producao_Roteiro_OrganogramaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object Producao_Roteiro_OrganogramaDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object Producao_Roteiro_OrganogramaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 150
    end
    object Producao_Roteiro_OrganogramaWIDTH: TIntegerField
      FieldName = 'WIDTH'
      Origin = 'WIDTH'
    end
    object Producao_Roteiro_OrganogramaHEIGHT: TIntegerField
      FieldName = 'HEIGHT'
      Origin = 'HEIGHT'
    end
    object Producao_Roteiro_OrganogramaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object Producao_Roteiro_OrganogramaCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object Producao_Roteiro_OrganogramaIMAGEM: TIntegerField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object Producao_Roteiro_OrganogramaIMAGEM_ALINHAMENTO: TStringField
      FieldName = 'IMAGEM_ALINHAMENTO'
      Origin = 'IMAGEM_ALINHAMENTO'
    end
    object Producao_Roteiro_OrganogramaORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
    end
    object Producao_Roteiro_OrganogramaALINHAMENTO: TStringField
      FieldName = 'ALINHAMENTO'
      Origin = 'ALINHAMENTO'
    end
    object Producao_Roteiro_OrganogramaCODPRODUCAO_ROTEIRO_PERGUNTA: TIntegerField
      FieldName = 'CODPRODUCAO_ROTEIRO_PERGUNTA'
      Origin = 'CODPRODUCAO_ROTEIRO_PERGUNTA'
    end
    object Producao_Roteiro_OrganogramaTIPO_PERGUNTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_PERGUNTA'
      Origin = 'TIPO_PERGUNTA'
      ProviderFlags = []
    end
    object Producao_Roteiro_OrganogramaPERGUNTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERGUNTA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 600
    end
    object Producao_Roteiro_OrganogramaOBSERVACAO: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      ProviderFlags = []
      BlobType = ftMemo
    end
    object Producao_Roteiro_OrganogramaFILTRO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'FILTRO'
      Origin = 'FILTRO'
      ProviderFlags = []
    end
  end
  object DSProducao_Roteiro_Organograma: TDataSource
    DataSet = Producao_Roteiro_Organograma
    Left = 460
    Top = 25
  end
  object WRFormataCamposDataSets1: TWRFormataCamposDataSets
    OnCarregaDataSets = WRFormataCamposDataSets1CarregaDataSets
    Left = 516
    Top = 22
  end
  object Formulas: TFDQuery
    CachedUpdates = True
    AggregatesActive = True
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evMode, evItems, evRecsMax, evRowsetSize, evRecordCountMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDynamic
    FetchOptions.RowsetSize = 100
    ResourceOptions.AssignedValues = [rvStoreItems]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'select *'
      'from FORMULAS')
    Left = 251
    Top = 97
    object AggregateField1: TAggregateField
      FieldName = 'MinData'
      Active = True
      DisplayName = ''
    end
    object AggregateField2: TAggregateField
      FieldName = 'MaxData'
      Active = True
      DisplayName = ''
    end
  end
  object DSFormulas: TDataSource
    DataSet = Formulas
    Left = 279
    Top = 97
  end
  object DSPmPrincipal: TDataSource
    Left = 428
    Top = 160
  end
  object WRCalcMemoria: TWRCalculaConfiguracoes
    TipoCalculo = tcVenda
    SPrTipoCalc = tssCalcCadastro
    ProdutoMemoriaConfiguracao = PmPrincipal
    TreeListEmMemoria = True
    Left = 364
    Top = 160
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
      
        '       P.*,  0.0 as NF_VALIQ_ESTADUAL, 0.0 as NF_ALIQ_ESTADUAL, ' +
        '0.0 as NF_ALIQ_NACIONAL,'
      
        '       0.0 as NF_VALIQ_IMPORTACAO, 0.0 as NF_ALIQ_IMPORTACAO, 0.' +
        '0 as NF_VALIQ_MUNICIPAL,'
      
        '       0.0 as NF_ALIQ_MUNICIPAL, 0.0 as NF_VALIQ_NACIONAL, 0.0 a' +
        's CALC_POUTRO_MANUAL,'
      
        '       0.0 as CALC_VOUTRO_MANUAL, 0 as SEQUENCIA, 0.0 as CALC_VA' +
        'LOR_ORIGINAL,'
      
        '      0.0 as CALC_VUNITARIO_DESC, 0.0 as CALC_VUNITARIO_OUTRO, 0' +
        '.0 as CALC_VUNITARIO_FRETE, 0.0 as CALC_VUNITARIO_LUCRO_DESEJADO' +
        ','
      '       '
      '       --Campos Venda_Produto'
      
        '       VP.PATH, VP.PASSADAS, VP.TEM_REVERSO, VP.TEM_LOGO, VP.CAL' +
        'C_TIPO_DESCONTO,'
      
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
      '       P.PODE_SER_VENDIDO, P.PODE_SER_COMPRADO, P.ATIVO,'
      ''
      '       VP.NF_II_VDESPADU, VP.CALC_VMINIMO_VENDA,'
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
      'order by VP.ordem desc')
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
    Connection = DMBanco.Banco
    DataSource = DSPmPrincipal
    TransacaoFD = TransaFD
    Left = 392
    Top = 160
  end
  object PmComposicao2: TwrProdutoMemoria
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
    Left = 390
    Top = 204
  end
  object TransaFD: TFDTransaction
    Options.Isolation = xiReadCommitted
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 314
    Top = 96
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
    TransacaoFD = TransaFD
    PermitirProdutoNaoCadastrado = True
    Left = 430
    Top = 204
  end
end
