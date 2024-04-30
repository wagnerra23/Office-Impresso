inherited FrmProducao_Roteiro: TFrmProducao_Roteiro
  Caption = 'Cadastro de Roteiro de Produ'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      Left = 135
      TabOrder = 18
      ExplicitLeft = 135
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 757
      TabOrder = 22
      ExplicitLeft = 757
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 188
      Properties.CharCase = ecNormal
      TabOrder = 19
      ExplicitLeft = 188
      ExplicitWidth = 361
      Width = 361
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 49
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 48
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 852
      Height = 527
      TabOrder = 44
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 852
      ExplicitHeight = 527
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 713
      TabOrder = 21
      ExplicitLeft = 713
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Processos'
    end
    object edtClassificacao: TcxDBImageComboBox [24]
      Left = 550
      Top = 61
      AutoSize = False
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = DS
      Properties.Images = ImgProduto_Tipo16x16
      Properties.Items = <
        item
          Description = 'PRODUTO'
          ImageIndex = 0
          Value = 'PRODUTO'
        end
        item
          Description = 'SERVICO'
          ImageIndex = 1
          Value = 'SERVICO'
        end
        item
          Description = 'COMPOSTO'
          ImageIndex = 2
          Value = 'COMPOSTO'
        end
        item
          Description = 'PROJETO'
          ImageIndex = 3
          Value = 'PROJETO'
        end
        item
          Description = 'FLUXO DE PRODU'#199#195'O'
          ImageIndex = 4
          Value = 'FLUXO'
        end
        item
          Description = 'F'#211'RMULA'
          ImageIndex = 5
          Value = 'F'#211'RMULA'
        end
        item
          Description = 'KIT'
          ImageIndex = 6
          Value = 'KIT'
        end
        item
          Description = 'WIZARD'
          ImageIndex = 7
          Value = 'WIZARD'
        end>
      Properties.LargeImages = ImgProduto_Tipo32x32
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 162
    end
    object edtPerguntaTexto: TcxDBMemo [25]
      Left = 135
      Top = 96
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 23
      Height = 80
      Width = 740
    end
    object DBTree: TdxDbOrgChart [26]
      Left = 14
      Top = 241
      Width = 273
      Height = 452
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
      Images = ImgProduto_Tipo32x32
      DefaultImageAlign = iaTC
      BorderStyle = bsNone
      OnCreateNode = DBTreeCreateNode
      Color = clDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      PopupMenu = menuRoteiro
      ParentFont = False
    end
    object imgImagem: TcxDBImage [27]
      Left = 3
      Top = 47
      DataBinding.DataField = 'IMAGEM'
      DataBinding.DataSource = DS
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.HotTrack = False
      TabOrder = 17
      ZoomingOptions.ZoomPercent = 140
      Height = 129
      Width = 132
    end
    object btnTreeListExpand: TcxButton [28]
      Left = 734
      Top = 211
      Width = 25
      Height = 28
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = ImgListActionsFrameComposicao
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 33
      OnClick = Expandir1Click
    end
    object btnTreeListCollapse: TcxButton [29]
      Left = 708
      Top = 211
      Width = 25
      Height = 28
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = ImgListActionsFrameComposicao
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 32
      OnClick = Encolher1Click
    end
    object btnMenuComposicao: TcxButton [30]
      Left = 760
      Top = 211
      Width = 105
      Height = 28
      Caption = 'Propriedades'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = ImgListActionsFrameComposicao
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 34
      OnClick = btnMenuComposicaoClick
    end
    object btnFluxoMaximizar: TcxButton [31]
      Left = 682
      Top = 211
      Width = 25
      Height = 28
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = ImgProduto_Tipo16x16
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 31
      OnClick = btnFluxoMinimizarClick
    end
    object btnFluxoMinimizar: TcxButton [32]
      Left = 656
      Top = 211
      Width = 25
      Height = 28
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = ImgListActionsFrameComposicao
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 30
      OnClick = btnFluxoMinimizarClick
    end
    object btnFluxoExluir: TcxButton [33]
      Left = 630
      Top = 211
      Width = 25
      Height = 28
      Caption = 'Excluir'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = ImgListActionsFrameComposicao
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 29
      OnClick = Excluir1Click
    end
    object btnFluxoNovo: TcxButton [34]
      Left = 578
      Top = 211
      Width = 25
      Height = 28
      Caption = 'Novo'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = ImgListActionsFrameComposicao
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 27
      OnClick = Novo1Click
    end
    object btnGirar: TcxButton [35]
      Left = 552
      Top = 211
      Width = 25
      Height = 28
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = ImgListActionsFrameComposicao
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 26
      OnClick = btnGirarClick
    end
    object btnFluxoNovoFilho: TcxButton [36]
      Left = 604
      Top = 211
      Width = 25
      Height = 28
      Caption = 'Novo Filho'
      OptionsImage.ImageIndex = 11
      OptionsImage.Images = ImgListActionsFrameComposicao
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 28
      OnClick = NovoFilho1Click
    end
    object GridPropriedades: TcxDBVerticalGrid [37]
      Left = 735
      Top = 240
      Width = 130
      Height = 454
      OptionsView.RowHeaderWidth = 33
      Navigator.Buttons.CustomButtons = <>
      TabOrder = 39
      DataController.DataSource = DSProducao_Roteiro_Organograma
      Version = 1
      object GridPropriedadesCODPRODUCAO_ROTEIRO: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'CODPRODUCAO_ROTEIRO'
        Visible = False
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object GridPropriedadesCategoryRow1: TcxCategoryRow
        Properties.Caption = 'Pergunta Vinculada'
        Properties.Hint = 'Informe aqui sua pergunta'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object GridPropriedadesTIPO_PERGUNTA: TcxDBEditorRow
        Properties.Caption = 'Tipo de Pergunta'
        Properties.DataBinding.FieldName = 'TIPO_PERGUNTA'
        ID = 2
        ParentID = 1
        Index = 0
        Version = 1
      end
      object GridPropriedadesCODPRODUCAO_ROTEIRO_PERGUNTA: TcxDBEditorRow
        Properties.Caption = 'C'#243'd. Pergunta'
        Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
        Properties.EditProperties.Buttons = <
          item
            Default = True
            Hint = 'Consulta'
            Kind = bkEllipsis
          end
          item
            Hint = 'Cadastro'
          end>
        Properties.EditProperties.OnButtonClick = GridPropriedadesCODPRODUCAO_ROTEIRO_PERGUNTAÎPRODUCAO_ROTEIRO_PERGUNTAEditPropertiesButtonClick
        Properties.DataBinding.FieldName = 'CODPRODUCAO_ROTEIRO_PERGUNTA'
        ID = 3
        ParentID = 1
        Index = 1
        Version = 1
      end
      object GridPropriedadesPERGUNTA: TcxDBEditorRow
        Properties.Caption = 'Pergunta'
        Properties.DataBinding.FieldName = 'PERGUNTA'
        ID = 4
        ParentID = 1
        Index = 2
        Version = 1
      end
      object GridPropriedadesOBSERVACAO: TcxDBEditorRow
        Properties.Caption = 'Observa'#231#227'o'
        Properties.DataBinding.FieldName = 'OBSERVACAO'
        ID = 5
        ParentID = 1
        Index = 3
        Version = 1
      end
      object GridPropriedadesCategoryRow2: TcxCategoryRow
        Properties.Caption = 'Personalizar'
        ID = 6
        ParentID = -1
        Index = 2
        Version = 1
      end
      object GridPropriedadesCODIGO: TcxDBEditorRow
        Properties.Caption = 'C'#243'digo'
        Properties.DataBinding.FieldName = 'CODIGO'
        ID = 7
        ParentID = 6
        Index = 0
        Version = 1
      end
      object GridPropriedadesALINHAMENTO: TcxDBEditorRow
        Properties.Caption = 'Alinhamento'
        Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsEditFixedList
        Properties.EditProperties.Items.Strings = (
          'Left'
          'Center'
          'Right')
        Properties.EditProperties.OnValidate = GridPropriedadesALINHAMENTOEditPropertiesValidate
        Properties.DataBinding.FieldName = 'ALINHAMENTO'
        ID = 8
        ParentID = 6
        Index = 1
        Version = 1
      end
      object GridPropriedadesDESCRICAO: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o'
        Properties.DataBinding.FieldName = 'DESCRICAO'
        ID = 9
        ParentID = 6
        Index = 2
        Version = 1
      end
      object GridPropriedadesORDEM: TcxDBEditorRow
        Properties.Caption = 'Ordem'
        Properties.DataBinding.FieldName = 'ORDEM'
        ID = 10
        ParentID = 6
        Index = 3
        Version = 1
      end
      object GridPropriedadesPARENT: TcxDBEditorRow
        Properties.Caption = 'Pai'
        Properties.DataBinding.FieldName = 'PARENT'
        ID = 11
        ParentID = 6
        Index = 4
        Version = 1
      end
      object GridPropriedadesCOR: TcxDBEditorRow
        Properties.Caption = 'Cor'
        Properties.EditPropertiesClassName = 'TdxColorEditProperties'
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.OnValidate = GridPropriedadesCOREditPropertiesValidate
        Properties.DataBinding.FieldName = 'COR'
        ID = 12
        ParentID = 6
        Index = 5
        Version = 1
      end
      object GridPropriedadesTIPO: TcxDBEditorRow
        Properties.Caption = 'Tipo'
        Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsEditFixedList
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.Items.Strings = (
          'Rectange'
          'Round Rect'
          'Ellipse'
          'Diamond')
        Properties.EditProperties.OnValidate = GridPropriedadesTIPOEditPropertiesValidate
        Properties.DataBinding.FieldName = 'TIPO'
        Left = 216
        Top = 120
        ID = 13
        ParentID = 6
        Index = 6
        Version = 1
      end
      object GridPropriedadesHEIGHT: TcxDBEditorRow
        Properties.Caption = 'Height'
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditProperties.DecimalPlaces = 0
        Properties.EditProperties.DisplayFormat = '0;-0'
        Properties.EditProperties.MinValue = 1.000000000000000000
        Properties.EditProperties.OnValidate = GridPropriedadesHEIGHTEditPropertiesValidate
        Properties.DataBinding.FieldName = 'HEIGHT'
        Left = 96
        Top = 48
        ID = 14
        ParentID = 6
        Index = 7
        Version = 1
      end
      object GridPropriedadesWIDTH: TcxDBEditorRow
        Properties.Caption = 'Width'
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditProperties.DecimalPlaces = 0
        Properties.EditProperties.DisplayFormat = '0;-0'
        Properties.EditProperties.OnValidate = GridPropriedadesWIDTHEditPropertiesValidate
        Properties.DataBinding.FieldName = 'WIDTH'
        Left = 88
        Top = 88
        ID = 15
        ParentID = 6
        Index = 8
        Version = 1
      end
      object GridPropriedadesCategoryRow3: TcxCategoryRow
        Properties.Caption = 'Imagem'
        Left = 256
        Top = 64
        ID = 16
        ParentID = -1
        Index = 3
        Version = 1
      end
      object GridPropriedadesIMAGEM: TcxDBEditorRow
        Properties.Caption = 'Imagem'
        Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.EditProperties.Images = ImgProduto_Tipo16x16
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.Items = <
          item
            Description = 'Pergunta'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Quest'#227'o'
            ImageIndex = 1
            Value = 1
          end
          item
            Description = 'Multiplas escolhas'
            ImageIndex = 2
            Value = 2
          end
          item
            Description = '1 Escolha'
            ImageIndex = 3
            Value = 3
          end
          item
            Description = 'Adicionar'
            ImageIndex = 4
            Value = 4
          end
          item
            Description = 'Zoom'
            ImageIndex = 5
            Value = 5
          end
          item
            Description = 'Pergunta e Resposta'
            ImageIndex = 6
            Value = 6
          end
          item
            Description = 'Pular'
            ImageIndex = 7
            Value = 7
          end
          item
            Description = 'Filtro'
            ImageIndex = 8
            Value = 8
          end
          item
            Description = 'Upload Arquivo'
            ImageIndex = 9
            Value = 9
          end
          item
            Description = 'Play'
            ImageIndex = 10
            Value = 10
          end>
        Properties.EditProperties.LargeImages = ImgProduto_Tipo32x32
        Properties.DataBinding.FieldName = 'IMAGEM'
        Left = 336
        Top = 80
        ID = 17
        ParentID = 16
        Index = 0
        Version = 1
      end
      object GridPropriedadesIMAGEM_ALINHAMENTO: TcxDBEditorRow
        Properties.Caption = 'Imagem Alinhamento'
        Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsEditFixedList
        Properties.EditProperties.Items.Strings = (
          'None'
          'Left-Top'
          'Left-Center'
          'Left-Bottom'
          'Right-Top'
          'Right-Center'
          'Right-Bottom'
          'Top-Left'
          'Top-Center'
          'Top-Right'
          'Bottom-Left'
          'Bottom-Center'
          'Bottom-Right')
        Properties.DataBinding.FieldName = 'IMAGEM_ALINHAMENTO'
        Left = 320
        Top = 24
        ID = 18
        ParentID = 16
        Index = 1
        Version = 1
      end
      object GridPropriedadesCategoryRow4: TcxCategoryRow
        Properties.Caption = 'Responss'#225'vel'
        Left = 256
        Top = 16
        ID = 19
        ParentID = -1
        Index = 4
        Version = 1
      end
      object GridPropriedadesRESPONSAVEL: TcxDBEditorRow
        Height = 18
        Properties.Caption = 'Respons'#225'vel'
        Properties.DataBinding.FieldName = 'RESPONSAVEL'
        Left = 376
        Top = 16
        ID = 20
        ParentID = 19
        Index = 0
        Version = 1
      end
      object GridPropriedadesDT_ALTERACAO: TcxDBEditorRow
        Properties.Caption = #218'ltima Altera'#231#227'o'
        Properties.DataBinding.FieldName = 'DT_ALTERACAO'
        Left = 216
        Top = 24
        ID = 21
        ParentID = 19
        Index = 1
        Version = 1
      end
    end
    object btnTestarRoteiro: TcxButton [38]
      Left = 285
      Top = 211
      Width = 122
      Height = 28
      Caption = 'Testar Roteiro'
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = ImgProduto_Tipo16x16
      SpeedButtonOptions.Transparent = True
      TabOrder = 24
      OnClick = btnTestarRoteiroClick
    end
    object cxButton1: TcxButton [39]
      Left = 408
      Top = 211
      Width = 143
      Height = 28
      Caption = 'Imprimir'
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = ImgListActionsFrameComposicao
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 25
      OnClick = cxButton1Click
    end
    object dxSpreadSheetReportDesigner1: TdxSpreadSheetReportDesigner [40]
      Left = 10000
      Top = 10000
      Width = 852
      Height = 483
      DataBinding.DataGroups = <>
      DataBinding.DataSource = DS
      DataBinding.SortedFields = <>
      OptionsLockedStateImage.Text = 'Por favor agurade...'
      Visible = False
      Data = {
        B002000044585353763242460C00000042465320000000000000000001000101
        010100000000000001004246532000000000424653200200000001000000200B
        00000007000000430061006C0069006200720069000000000000002000000020
        00000000200000000020000000002000000000200007000000470045004E0045
        00520041004C0000000000000200000000000000000101000000200B00000007
        000000430061006C006900620072006900000000000000200000002000000000
        200000000020000000002000000000200007000000470045004E004500520041
        004C000000000000020000000000000000014246532001000000424653201D00
        0000540064007800530070007200650061006400530068006500650074005200
        650070006F00720074005400610062006C006500560069006500770006000000
        53006800650065007400310001FFFFFFFFFFFFFFFF6400000002000000020000
        0002000000550000001400000002000000020000000002000000000000010000
        0000000101000042465320550000000000000042465320000000004246532014
        0000000000000042465320000000000000000000000000010000000000000000
        0000000000000000000000424653200000000002020000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000064000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000200020200020000000000000000000000000000000000020000000000
        0000000000000000000000000000000000000000000000000000000000000202
        0000000000000000424653200000000000000000}
      object ReportDesignerDetail1: TdxSpreadSheetReportDetail
        DataGroups = <>
        MasterKeyFieldName = 'CODIGO'
        DetailKeyFieldName = 'CODPRODUTO_COMPOSICAO'
        SectionID = 0
        SortedFields = <>
      end
    end
    object cxButton2: TcxButton [41]
      Left = 13
      Top = 211
      Width = 25
      Height = 28
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = ImgListActionsFrameComposicao
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 35
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton [42]
      Left = 39
      Top = 211
      Width = 25
      Height = 28
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = ImgListActionsFrameComposicao
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 36
    end
    object GridTree: TcxDBTreeList [43]
      Left = 288
      Top = 240
      Width = 446
      Height = 454
      Bands = <
        item
          Caption.MultiLine = True
          Caption.Text = 'Principal'
          Expandable = tlbeExpandable
        end>
      DataController.DataSource = DSProducao_Roteiro_Organograma
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'CODIGO'
      DragMode = dmAutomatic
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.DragDropText = True
      OptionsCustomizing.BandsQuickCustomization = True
      OptionsCustomizing.BandsQuickCustomizationSorted = True
      OptionsCustomizing.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.DropNodeIndicator = True
      OptionsView.TreeLineStyle = tllsSolid
      RootValue = -1
      TabOrder = 38
      object GridComposicaoTreeCODIGO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        Caption.Text = 'Sequ'#234'ncia'
        DataBinding.FieldName = 'CODIGO'
        Options.Editing = False
        Width = 64
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCODPRODUTO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        Caption.Text = 'C'#243'd. Produto'
        DataBinding.FieldName = 'CODPRODUTO'
        Options.Editing = False
        Width = 83
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeDESCRICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Caption.Text = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        Options.Editing = False
        Width = 324
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeUNIDADE: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Styles.Content = FrmPrincipal.cxStyle4
        Caption.Text = 'Unidade'
        DataBinding.FieldName = 'UNIDADE'
        Options.Editing = False
        Width = 46
        Position.ColIndex = 19
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeQTDADEPECA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Styles.Content = FrmPrincipal.cxStyle4
        Visible = False
        Caption.Text = 'Qtd. Pe'#231'as'
        DataBinding.FieldName = 'QTDADEPECA'
        Width = 60
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCOMP: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Styles.Content = FrmPrincipal.cxStyle4
        Visible = False
        Caption.Text = 'Comp'
        DataBinding.FieldName = 'COMP'
        Width = 45
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeLARG: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Styles.Content = FrmPrincipal.cxStyle4
        Visible = False
        Caption.Text = 'Largura'
        DataBinding.FieldName = 'LARG'
        Width = 45
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeESPESSURA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Styles.Content = FrmPrincipal.cxStyle4
        Visible = False
        Caption.Text = 'Esp.'
        DataBinding.FieldName = 'ESPESSURA'
        Width = 45
        Position.ColIndex = 7
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeQUANT: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        Caption.Text = 'Quant'
        DataBinding.FieldName = 'QUANT'
        Options.Editing = False
        Width = 55
        Position.ColIndex = 8
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCUSTO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Styles.Content = FrmPrincipal.cxStyle4
        Caption.Text = 'R$ Custo Unit'#225'rio'
        DataBinding.FieldName = 'CUSTO'
        Width = 90
        Position.ColIndex = 9
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeMARGEM: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.Content = FrmPrincipal.cxStyle4
        Caption.Text = 'Margem'
        DataBinding.FieldName = 'MARGEM'
        Width = 48
        Position.ColIndex = 11
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeVALOR: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.Content = FrmPrincipal.cxStyle4
        Caption.Text = 'R$ Valor'
        DataBinding.FieldName = 'VALOR'
        Width = 90
        Position.ColIndex = 12
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeQUANT_COMPOSICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 8
        Properties.ReadOnly = True
        Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
        Styles.Content = FrmPrincipal.cxStyle38
        Caption.Text = 'Quant Total'
        DataBinding.FieldName = 'QUANT_COMPOSICAO'
        Options.Editing = False
        Options.ShowEditButtons = eisbAlways
        Width = 65
        Position.ColIndex = 14
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCUSTO_COMPOSICAO: TcxDBTreeListColumn
        Styles.Content = FrmPrincipal.cxStyle4
        Caption.Text = 'R$ Custo Total'
        DataBinding.FieldName = 'CUSTO_COMPOSICAO'
        Options.Editing = False
        Width = 91
        Position.ColIndex = 20
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeTOTAL: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = False
        Styles.Content = FrmPrincipal.cxStyle38
        Visible = False
        Caption.Text = 'R$ Valor Total'
        DataBinding.FieldName = 'TOTAL'
        Width = 100
        Position.ColIndex = 18
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeVALOR_POR_PECA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Styles.Content = FrmPrincipal.cxStyle38
        Visible = False
        Caption.Text = 'R$ Valor por pe'#231'a'
        DataBinding.FieldName = 'VALOR_POR_PECA'
        Width = 110
        Position.ColIndex = 23
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeFORMULA_PERFIL: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        Caption.Text = 'Perfil de F'#243'rmula'
        DataBinding.FieldName = 'CODFORMULA_PERFIL'
        Width = 150
        Position.ColIndex = 22
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeMedidas: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'Medidas'
        Options.Hidden = True
        Width = 100
        Position.ColIndex = 10
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeVALOR_COMPOSICAO: TcxDBTreeListColumn
        Styles.Content = FrmPrincipal.cxStyle38
        Visible = False
        DataBinding.FieldName = 'VALOR_COMPOSICAO'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 13
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeTOTAL_COMPOSICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Styles.Content = FrmPrincipal.cxStyle38
        Caption.Text = 'R$ Valor Total'
        DataBinding.FieldName = 'TOTAL_COMPOSICAO'
        Width = 100
        Position.ColIndex = 21
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeDT_ALTERACAO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Dt. Altera'#231#227'o'
        DataBinding.FieldName = 'DT_ALTERACAO'
        Options.Editing = False
        Width = 112
        Position.ColIndex = 24
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeTotalPeso: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Peso Total'
        DataBinding.FieldName = 'TotalPeso'
        Width = 100
        Position.ColIndex = 15
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCODPRODUTO_COMPOSICAO: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CODPRODUTO_COMPOSICAO'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 16
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreePRODUCAO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Produ'#231#227'o'
        DataBinding.FieldName = 'PRODUCAO'
        Width = 100
        Position.ColIndex = 17
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreePERC_LUCRO_DESEJADO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Visible = False
        Caption.Text = '% Lucro Desejado'
        DataBinding.FieldName = 'PERC_LUCRO_DESEJADO'
        Width = 100
        Position.ColIndex = 25
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreePESO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Peso'
        DataBinding.FieldName = 'PESO'
        Width = 100
        Position.ColIndex = 26
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeESTOQUE: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Estoque'
        DataBinding.FieldName = 'ESTOQUE'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 27
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCODPRODUTO_TIPO: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CODPRODUTO_TIPO'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 28
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCUSTO_ATUAL: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'R$ Custo Atual'
        DataBinding.FieldName = 'CUSTO_ATUAL'
        Options.Hidden = True
        Options.Editing = False
        Width = 100
        Position.ColIndex = 29
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeVALOR_ATUAL: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'R$ Valor Atual'
        DataBinding.FieldName = 'VALOR_ATUAL'
        Options.Hidden = True
        Options.Editing = False
        Width = 100
        Position.ColIndex = 30
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreePARENT: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'PARENT'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 31
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCOMP_FORMULA: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'COMP_FORMULA'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 32
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeLARG_FORMULA: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'LARG_FORMULA'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 33
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeESPESSURA_FORMULA: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'ESPESSURA_FORMULA'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 34
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeQTDADEPECA_FORMULA: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'QTDADEPECA_FORMULA'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 35
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCOMP_COMPOSICAO: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'COMP_COMPOSICAO'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 36
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeLARG_COMPOSICAO: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'LARG_COMPOSICAO'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 37
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeESPESSURA_COMPOSICAO: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'ESPESSURA_COMPOSICAO'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 38
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeQTDADEPECA_COMPOSICAO: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'QTDADEPECA_COMPOSICAO'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 39
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeProdutoTipoClassificacao: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Classifica'#231#227'o'
        DataBinding.FieldName = 'ProdutoTipoClassificacao'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 40
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeTEM_COMPOSICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Possui Composi'#231#227'o'
            ImageIndex = 2
            Value = 'S'
          end>
        Properties.ReadOnly = True
        Caption.Text = 'Composi'#231#227'o'
        DataBinding.FieldName = 'TEM_COMPOSICAO'
        Options.Editing = False
        Width = 31
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object edtCheckListAssunto: TcxTextEdit [44]
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 40
      Visible = False
      Width = 776
    end
    object btnAdicionarCheckList: TButton [45]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 35
      Caption = 'Add'
      TabOrder = 41
      Visible = False
    end
    object cxGrid1: TcxGrid [46]
      Left = 10000
      Top = 10000
      Width = 852
      Height = 447
      TabOrder = 42
      Visible = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      Parent = GrupoTop
      AlignHorz = ahClient
      LayoutDirection = ldVertical
      UseIndent = False
      Index = 1
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited LiedtCodigo: TdxLayoutItem
      Parent = dxLayoutGroup2
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Parent = dxLayoutGroup2
      Index = 4
    end
    inherited LiedtDescricao: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 4
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Index = 3
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 3
    end
    inherited LicbxAtivo: TdxLayoutItem
      Parent = dxLayoutGroup2
      Index = 3
    end
    object liedtClassificacao: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Aplica na:'
      CaptionOptions.Layout = clTop
      Control = edtClassificacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 162
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descreva para que serve esse processo'
      CaptionOptions.Layout = clTop
      Control = edtPerguntaTexto
      ControlOptions.OriginalHeight = 80
      ControlOptions.OriginalWidth = 652
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiDBTree: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Roteiro'
      CaptionOptions.Visible = False
      Control = DBTree
      ControlOptions.OriginalHeight = 528
      ControlOptions.OriginalWidth = 524
      Index = 0
    end
    object GrupoTop: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoTop
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = imgImagem
      ControlOptions.OriginalHeight = 117
      ControlOptions.OriginalWidth = 132
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoLogAlteracoes
      CaptionOptions.Text = 'Roteiro'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Menu de op'#231#245'es'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object LibtnTreeListExpand: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnTreeListExpand
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LibtnTreeListCollapse: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnTreeListCollapse
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LibtnMenuComposicao: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnMenuComposicao
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LibtnFluxoMaximizar: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnFluxoMaximizar
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LibtnFluxoMinimizar: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnFluxoMinimizar
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LibtnFluxoExluir: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnFluxoExluir
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LibtnFluxoNovo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnFluxoNovo
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object LibtnGirar: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnGirar
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnFluxoNovoFilho
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LiGridPropriedades: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Propriedade'
      CaptionOptions.Visible = False
      Visible = False
      Control = GridPropriedades
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 249
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object SplitterPropriedades: TdxLayoutSplitterItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Splitter'
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnTestarRoteiro
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoLogAlteracoes
      AlignVert = avClient
      CaptionOptions.Text = 'Motor de C'#225'culo'
      CaptionOptions.Visible = False
      Control = dxSpreadSheetReportDesigner1
      ControlOptions.OriginalHeight = 372
      ControlOptions.OriginalWidth = 894
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object LiGridTree: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      Control = GridTree
      ControlOptions.OriginalHeight = 527
      ControlOptions.OriginalWidth = 852
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = GrupoLogAlteracoes
      CaptionOptions.Text = 'Ficha T'#233'cnica - Caracteristica a serem Respondidas'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Caraciteristica a ser Repondida'
      CaptionOptions.Layout = clTop
      Control = edtCheckListAssunto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 553
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAdicionarCheckList
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup4
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'GridCaracteristicas'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmProducao_Roteiro'
    FormClassConsulta = 'TConsuProducao_Roteiro'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUCAO_ROTEIRO'
      'WHERE CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUCAO_ROTEIRO'
    Modulo = 'PRODUCAO'
  end
  inherited MenuRegra_Acoes: TPopupMenu
    Left = 396
  end
  object ImgProduto_Tipo16x16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 432
    Top = 216
    Bitmap = {
      494C01010B000D00040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001E8902EF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF1F8C02F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0002000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF00000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000040000
      000A000000090000000400000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000052D42820000000000000000229C02FF229C02FF229C02FF0825007D0825
      007D229C02FF229C02FF229C02FF229C02FF00000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000000000000000000000000015173E
      30B9020504410000000F00000007000000030000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF052D428200000000229C02FF229C02FF0825007D000000000000
      00000825007D229C02FF229C02FF229C02FF00000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000163184
      65FF2E7C62FC123126A6000201300000000E0000000600000002000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF00000000229C02FF135701BF00000000092800820928
      0082000000000825007D229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000163489
      69FF55C8A2FF45A57CFF2E7B5FF50D241D8F000000220000000C000000050000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF00000000229C02FF229C02FF145901C2229C02FF229C
      02FF09280082000000000825007D229C02FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000D77610FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F0000000000000000000000000000000000000016378E
      6EFF62CEACFF48C69EFF50C29BFF4AA680FF2C735AEA09191377000000190000
      000B000000050000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF00000000229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0928008209280082229C02FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000D77610FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000163993
      72FF6FD4B4FF4DC9A2FF4DC9A2FF4DC9A2FF54BF97FF4CA782FF286752DC050F
      0C5F000000100000000500000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF00000000229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000D77610FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000163C99
      77FF7BD8BCFF52CCA7FF52CCA7FF52CCA7FF52CCA7FF5BCFACFF63C09DFF51A8
      86FF225644C40103022B00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF000000001D8702ED229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF1E8902EF000000001C1C1C7F1C1C1C7F1717
      17740000000B0000000000000000D77610FF0000000000000000000000091717
      17731C1C1C7F1C1C1C7F00000000000000000000000000000000000000163F9E
      7DFF89DDC4FF57CFABFF58CFACFF6DD5B6FF85DCC1FF8ADDC4FF8ADDC4FF79C7
      A9FF5AAD90FF07130F5B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000052D
      428214B1FFFF14B1FFFF052D4282000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F0C0C0C540603002DCD7010F9D77610FFCE7110FA070400300B0B0B511C1C
      1C7F1C1C1C7F1C1C1C7F000000000000000000000000000000000000001641A4
      83FF94E1CAFF65D4B4FF87DEC4FF8EE0C8FF8EE0C8FF86D2B7FF65B89AFF2762
      4FC8040A08410000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000052D428214B1
      FFFF14B1FFFF14B1FFFF14B1FFFF052D42820000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F03030329321C037CD77610FF351D037F020202271C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F000000000000000000000000000000000000001644A9
      87FFA6E7D4FF8FE1C9FF91E2CBFF94DCC4FF73C2A5FF327E65DD0814105A0000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000052D428214B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D428200000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F171717740000000F512C069D0000000E161616731C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F000000000000000000000000000000000000001647AE
      8CFFC0EFE2FFA2E6D1FF7BC9ADFF3D9579ED0E231D7500000007000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000052D428214B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D4282000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F0B0B0B53000000000B0B0B501C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000144CB3
      92FF8AD0B7FF45A688F716352C8D000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F0909094B1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000114BB4
      93FE1F4D3FA70102021F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF000000000000
      000000000000000000000000000000000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000000000000000000000000000000000070206
      0532000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000005323232AB28282899000000000000000000000000666666F27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF686868F500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005343434AD717171FF343434AD000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000666666F2717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF686868F500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000053434
      34AD717171FF343434AD00000005000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000100001200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000202
      02252C2C2C9F5E5E5EE8717171FF5E5E5EE82D2D2DA00303032C343434AD7171
      71FF343434AD0000000500000000000000000000000000000000717171FF0000
      0000D77610FFD77610FFD77610FFD77610FFD77610FF00000000D77610FFD776
      10FF00000000717171FF00000000000000002715026D00000000000000000000
      0000000000000000000000000000000000006A3A08B30301001F000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000000000000A0A0A4C5F5F
      5FEA191919780101011D000000010101011C17171775666666F2717171FF3434
      34AD000000050000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000452605914E2B069A0000000F0000
      000000000000000000000000000000000000D77610FFC56C0FF42B1803740000
      00040000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000020202245F5F5FEA0404
      0434000000000000000000000000000000000000000004040431666666F20303
      032C000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000009050035D77610FFBD680EEF4E2B
      069A180D02570603002B0000001100000006D77610FFD77610FFD77610FF8E4E
      0BCF0905003600000000000000000000000000000000717171FF000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF0000000000000000000000002A2A2A9C1A1A1A7B0000
      00000000000000000000D77610FF000000000000000000000000171717752C2C
      2CA0000000000000000000000000000000000000000000000000717171FF0000
      00003F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF00000000D77610FFD776
      10FF00000000717171FF0000000000000000000000006A3A08B3D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD37410FD472705930000000E0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000000000005A5A5AE3010101210000
      00000000000000000000D77610FF0000000000000000000000000101011C5E5E
      5EE8000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000002010019A95C0DE2D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFAD5F0DE5170C015400000000717171FF000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF0000000000000000000000006D6D6DFA000000060000
      0000D77610FFD77610FFD77610FFD77610FFD77610FF00000000000000017171
      71FF000000000000000000000000000000000000000000000000717171FF0000
      0000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF00000000D77610FFD776
      10FF00000000717171FF0000000000000000000000000000000003010020874A
      0ACAD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFA85C0DE2140B014E00000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000595959E3010101220000
      00000000000000000000D77610FF0000000000000000000000000101011D5E5E
      5EE8000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0002170C0154623507ACA65B0DE0CB700FF8D77610FFD77610FFD77610FFD776
      10FFD17310FC4224048E0000000C0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000000000002929299A1B1B1B7D0000
      00000000000000000000D77610FF000000000000000000000000191919782C2C
      2C9F000000000000000000000000000000000000000000000000717171FF0000
      00003F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF00000000D77610FFD776
      10FF00000000717171FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF884B
      0BCB0804003200000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000010101225F5F5FEA0505
      05380000000000000000000000000000000000000000040404345F5F5FEA0202
      0225000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFC16A0FF22715036E0000
      00030000000000000000000000000000000000000000646464F0717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF666666F200000000000000000000000000000000090909485F5F
      5FEA1B1B1B7D0101012200000006010101211A1A1A7B5F5F5FEA0A0A0A4C0000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000643708AE0201001C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01222929299A595959E36B6B6BF95A5A5AE42A2A2A9C02020224000000000000
      0000000000000000000000000000000000000000000000000000646464F07171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF666666F200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000505050D7717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF575757DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040404352A2A2A9C555555DD6F6F6FFD6F6F6FFD575757DF2C2C2CA00505
      053A000000000000000000000000000000000000000000000000000000000000
      00000001001A0A2C0188186D01D5219602FB219602FB186E02D70A2D018A0001
      001B00000000000000000000000000000000717171FF666666F2444444C64444
      44C6444444C6444444C6444444C6444444C6444444C6444444C6444444C64444
      44C6444444C6444444C6666666F2717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B2C2C
      2C9F717171FE717171FF646464F0474747CA464646C9636363EE717171FF7171
      71FF2F2F2FA50000000E00000000000000000000000000000000000000000412
      00581F8C02F2229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1F8E
      02F30414005C000000000000000000000000717171FF444444C6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF000000000000000A424242C37171
      71FF4D4D4DD20909094B00000003000000000000000000000002080808474949
      49CD717171FF464646C90000000E00000000000000000000000004120057229A
      02FD229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229A02FE0414005C0000000000000000717171FF444444C6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A2A2A9C717171FF3434
      34AD00000007000000000303032F1313136A1414146B04040432000000000000
      00052F2F2FA5717171FF2F2F2FA50000000000000000000100181F8B02F1229C
      02FF229C02FF229C02FF229C02FF0107003801060032229C02FF229C02FF229C
      02FF229C02FF1F8E02F30001001B00000000717171FF444444C6000000000000
      000000000000000000000101011B050505390000000000000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF04040431717171FE4E4E4ED40000
      00080000000A313131A9717171FF717171FF717171FF717171FF363636B00000
      000D00000005494949CD717171FF0505053A00000000092A0185229C02FF229C
      02FF229C02FF229C02FF229C02FF0108003D01070038229C02FF229C02FF229C
      02FF229C02FF229C02FF0A2D018A00000000717171FF444444C6000000000000
      0000000000000101011B535353DA666666F20606063C00000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027272796717171FF0B0B0B500000
      00002F2F2FA6717171FF717171FF717171FF717171FF717171FF717171FF3636
      36B00000000008080847717171FF2C2C2C9F00000000176901D2229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF186E02D700000000717171FF444444C6000000000000
      00000101011B535353DA717171FF717171FF666666F20606063C000000000000
      00000000000000000000444444C6717171FFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF505050D6676767F4000000060202
      0229717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0404043200000002636363EE575757DF00000000209102F6229C02FF229C
      02FF229C02FF229C02FF229C02FF0311005502090041229C02FF229C02FF229C
      02FF229C02FF229C02FF219602FB00000000717171FF444444C6000000000101
      011B535353DA717171FF717171FF717171FF717171FF666666F20606063C0000
      00000000000000000000444444C6717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000676767F44D4D4DD2000000001010
      1062717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF1414146B00000000464646C96F6F6FFD00000000209002F5229C02FF229C
      02FF229C02FF229C02FF229C02FF104A01B10000000305170063219602FA229C
      02FF229C02FF229C02FF219602FB00000000717171FF444444C6000000000000
      00174F4F4FD5717171FF27272796101010626F6F6FFD717171FF666666F20606
      063C0000000000000000444444C6717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000676767F34D4D4DD3000000001010
      1061717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF1313136A00000000474747CA6F6F6FFD00000000176701D0229C02FF229C
      02FF229C02FF145A01C30826007F229A02FD114C01B3000000000C39019B229C
      02FF229C02FF229C02FF186C01D500000000717171FF444444C6000000000000
      0000000000171A1A1A7B0000000100000000101010616F6F6FFD717171FF6666
      66F20303032D00000000444444C6717171FFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF4E4E4ED4696969F6000000070202
      0226717171FE717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0303032F00000003646464F0555555DD0000000009280183229C02FF229C
      02FF229C02FF114D01B4000000000E4101A5115001B8000000000B340194229C
      02FF229C02FF229C02FF0A2C018800000000717171FF444444C6000000000000
      00000000000000000000000000000000000000000000101010616F6F6FFD3535
      35AE0000000500000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025252593717171FF0C0C0C540000
      00002C2C2C9F717171FF717171FF717171FF717171FF717171FF717171FF3131
      31A9000000000909094B717171FF2A2A2A9C00000000000100171E8A02F0229C
      02FF229C02FF229C02FF0826007F000000140000000D05180065209002F5229C
      02FF229C02FF1F8C02F20001001A00000000717171FF444444C6000000000000
      0000000000000000000000000000000000000000000000000000070707440000
      00050000000000000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF0303032D6F6F6FFD525252D90000
      000A000000072C2C2C9F717171FE717171FF717171FF717171FF2F2F2FA60000
      000A000000074D4D4DD2717171FE04040435000000000000000003100053229A
      02FD229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229A02FD041200580000000000000000717171FF444444C6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFF00000000000000000000
      0000AFAFAFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027272796717171FF3838
      38B40000000A0000000002020226101010611010106202020229000000000000
      0008343434AD717171FF2C2C2C9F000000000000000000000000000000000310
      00531E8A02F0229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1F8B
      02F104120057000000000000000000000000717171FF444444C6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000444444C6717171FFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFF00000000AFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
      AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF00000000000000083E3E3EBD7171
      71FF515151D80C0C0C54000000070000000000000000000000060B0B0B504E4E
      4ED4717171FF424242C30000000B000000000000000000000000000000000000
      00000001001709280183176701D0209002F5209102F6176901D1092901840001
      001800000000000000000000000000000000717171FF666666F2444444C64444
      44C6444444C6444444C6444444C6444444C6444444C6444444C6444444C64444
      44C6444444C6444444C6666666F2717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000082727
      27966F6F6FFD717171FF696969F54D4D4DD34D4D4DD3676767F4717171FF7171
      71FE2A2A2A9C0000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4ACE717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF505050D60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303032D252525934E4E4ED4676767F3676767F3505050D6272727960404
      043100000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
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
      000000000000}
    DesignInfo = 14156208
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2251
          75657374696F6E223E0D0A09093C7061746820636C6173733D22477265656E22
          20643D224D31362C3243382E332C322C322C382E332C322C313673362E332C31
          342C31342C31347331342D362E332C31342D31345332332E372C322C31362C32
          7A204D31362C3234632D312E312C302D322D302E392D322D3263302D312E312C
          302E392D322C322D3220202623393B2623393B73322C302E392C322C32433138
          2C32332E312C31372E312C32342C31362C32347A204D32302E372C31332E3363
          2D302E322C302E342D302E342C302E372D302E362C31632D302E332C302E332D
          302E352C302E352D302E382C302E37632D302E332C302E322D302E362C302E34
          2D302E392C302E3620202623393B2623393B632D302E332C302E322D302E352C
          302E342D302E372C302E37632D302E322C302E332D302E332C302E362D302E34
          2C31563138682D322E37762D302E3963302D302E362C302E322D312C302E332D
          312E3463302E322D302E342C302E342D302E372C302E362D3120202623393B26
          23393B63302E322D302E332C302E352D302E352C302E382D302E3763302E332D
          302E322C302E352D302E342C302E382D302E3663302E322D302E322C302E342D
          302E342C302E362D302E3663302E312D302E322C302E322D302E352C302E322D
          302E3963302D302E362D302E322D312D302E352D312E3320202623393B262339
          3B632D302E332D302E332D302E372D302E342D312E332D302E34632D302E342C
          302D302E372C302E312D302E392C302E32632D302E332C302E312D302E352C30
          2E332D302E372C302E35632D302E322C302E322D302E332C302E352D302E342C
          302E384331342C31322E312C31342C31322E372C31342C3133682D3320202623
          393B2623393B63302D302E372C302E312D312E362C302E342D322E3163302E32
          2D302E362C302E362D312E312C312D312E3563302E342D302E342C302E392D30
          2E382C312E352D3163302E362D302E322C312E332D302E342C322D302E346331
          2C302C312E382C302E312C322E342C302E3420202623393B2623393B63302E36
          2C302E332C312E322C302E362C312E362C302E3963302E342C302E342C302E37
          2C302E382C302E382C312E3273302E332C302E382C302E332C312E324332312C
          31322E342C32302E392C31322E392C32302E372C31332E337A222F3E0D0A093C
          2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313820313822207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203138203138
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D302C3176313663302C302E362C302E34
          2C312C312C3168313663302E362C302C312D302E342C312D31563163302D302E
          362D302E342D312D312D31483143302E342C302C302C302E342C302C317A204D
          31362C3136483256326831345631367A222F3E0D0A3C706F6C79676F6E20636C
          6173733D22426C61636B2220706F696E74733D2231322C3520382C3920362C37
          20342C3920362C313120382C31332031302C31312031342C3720222F3E0D0A3C
          2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000017744558745469746C6500486964653B4869646550726F647563743B
          B35986300000003B49444154785EED91310A003008C4FAFFCFDC13D3C1457468
          417172C82212C41CA0445D20890860F337B6E88D4EF04512B45C30FA83968C9B
          71335E0056EFC3B0AA43F30000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313820313822207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203138203138
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D392C30222F3E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D392C3043342C302C302C342C302C3963
          302C352C342C392C392C3963352C302C392D342C392D394331382C342C31342C
          302C392C307A204D392C3136632D332E392C302D372D332E312D372D3763302D
          332E392C332E312D372C372D3720202623393B63332E392C302C372C332E312C
          372C374331362C31322E392C31322E392C31362C392C31367A222F3E0D0A3C63
          6972636C6520636C6173733D22426C61636B222063783D2239222063793D2239
          2220723D2235222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          616E6473636170652220786D6C6E733D22687474703A2F2F7777772E77332E6F
          72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F
          2F7777772E77332E6F72672F313939392F786C696E6B2220783D223070782220
          793D22307078222076696577426F783D2230203020333220333222207374796C
          653D22656E61626C652D6261636B67726F756E643A6E65772030203020333220
          33323B2220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A73
          706163653D227072657365727665223E2E426C61636B7B66696C6C3A23373237
          3237323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C
          75652220643D224D32322C31384838762D326831345631387A204D32322C3132
          483876326831345631327A222F3E0D0A3C7061746820636C6173733D22426C61
          636B2220643D224D32372C34483343322E342C342C322C342E342C322C357632
          3063302C302E362C302E342C312C312C3168323463302E362C302C312D302E34
          2C312D3156354332382C342E342C32372E362C342C32372C347A204D32362C32
          34483456366832325632347A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D225A
          6F6F6D5F496E2220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D2242
          6C75652220706F696E74733D2231382C31322031342C31322031342C38203132
          2C382031322C313220382C313220382C31342031322C31342031322C31382031
          342C31382031342C31342031382C313420222F3E0D0A3C7061746820636C6173
          733D22426C61636B2220643D224D32392E372C32372E334C32322C31392E3663
          302C302D302E312D302E312D302E312D302E3163312E332D312E382C322E312D
          342E312C322E312D362E3563302D362E312D342E392D31312D31312D31314336
          2E392C322C322C362E392C322C313320202623393B73342E392C31312C31312C
          313163322E342C302C342E372D302E382C362E352D322E3163302C302C302C30
          2E312C302E312C302E316C372E372C372E3763302E332C302E332C302E392C30
          2E332C312E322C306C312E322D312E324333302E312C32382E322C33302E312C
          32372E362C32392E372C32372E337A20202623393B204D342C313363302D352C
          342D392C392D3963352C302C392C342C392C39732D342C392D392C3943382C32
          322C342C31382C342C31337A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2247
          72616E645F546F74616C735F4F6E5F526F77735F436F6C756D6E735F5069766F
          745F5461626C652220786D6C6E733D22687474703A2F2F7777772E77332E6F72
          672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F
          7777772E77332E6F72672F313939392F786C696E6B2220783D22307078222079
          3D22307078222076696577426F783D2230203020333220333222207374796C65
          3D22656E61626C652D6261636B67726F756E643A6E6577203020302033322033
          323B2220786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C7374796C6520747970653D22746578742F6373732220786D6C3A7370
          6163653D227072657365727665223E2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D262331333B262331303B2623393B2E7374307B6F706163697479
          3A302E37353B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C
          61636B2220643D224D32372C32483543342E342C322C342C322E342C342C3376
          323663302C302E362C302E342C312C312C3168323263302E362C302C312D302E
          342C312D3156334332382C322E342C32372E362C322C32372C327A204D32362C
          3238483656346832305632387A222F3E0D0A3C6720636C6173733D2273743022
          3E0D0A09093C7061746820636C6173733D22426C61636B2220643D224D31382C
          3130483856386831305631307A204D31382C3132682D38763268385631327A20
          4D31382C3136483876326831305631367A222F3E0D0A093C2F673E0D0A3C7061
          746820636C6173733D22426C75652220643D224D32342C3130682D3456386834
          5631307A204D32342C3132682D34763268345631327A204D32342C3136682D34
          763268345631367A204D31382C3232483876326831305632327A204D32342C32
          32682D34763268345632327A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2252
          65646F2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F637373223E2E426C75657B66696C6C
          3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C75652220643D224D31362C313056346C31362C31304C31362C3234762D
          3643302C31382C302C32362C302C323653302C31302C31362C31307A222F3E0D
          0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
          233131373744373B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D22517569636B46696C746572223E0D0A09093C706F6C79676F6E20636C61
          73733D2259656C6C6F772220706F696E74733D22302C322032302C322032302C
          362031322C31342031322C323420382C323820382C313420302C36202623393B
          222F3E0D0A09093C7061746820636C6173733D22477265656E2220643D224D33
          312C3134483135632D302E352C302D312C302E352D312C3176313663302C302E
          352C302E352C312C312C3168313663302E352C302C312D302E352C312D315631
          354333322C31342E352C33312E352C31342C33312C31347A204D32322C32386C
          2D352D3520202623393B2623393B6C322D326C332C336C362D366C322C324C32
          322C32387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2246
          696C6C5F55702220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23373237
          3237323B7D262331333B262331303B2623393B2E7374307B6F7061636974793A
          302E353B7D3C2F7374796C653E0D0A3C6720636C6173733D22737430223E0D0A
          09093C7061746820636C6173733D22426C61636B2220643D224D32382C327632
          30483138762D3668342E374C31352C342E344C372E332C313648313276364832
          56324832387A222F3E0D0A093C2F673E0D0A3C7061746820636C6173733D2242
          6C75652220643D224D32382C33304832762D366832365633307A204D31362C32
          32762D3868336C2D342D366C2D342C36683376384831367A222F3E0D0A3C2F73
          76673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000011744558745469746C6500506C61793B53746172743B5D
          61407A000001F049444154785EAD904B6B13511886DF938C4E5A31C560A5174C
          68E3056C91D07A5D98B6D616BC54105CC4DB527F801050BA511411A550D14271
          2314ACC5955D14A90B770A820B15A9422B0DB69149C64E9C2493CB3973267E84
          5884566DC0071E38B3380FEF1CFC3746A74FAA2353273A50252E54D035AB160C
          6F1F4C1D7F32FCEC58A0EA407231EB9692B160735784B9F07978F2E8D0ED89FE
          4D6B0E64CCA28B0B81B6C03E74EF8978B636745E56143677F7697FF4EAC821F5
          9F01291D0821912E7C43412CC1DF588F03A1015F53C3EE3B5E9F3A736BBCF7EC
          91D3ADAE3F066CDB814D811C37A0673EA168E7A0281C417F13426D875B37FB82
          8FC30381D7D71F75F7ACBE409420B8036E5BC88B3434F3030C2B46A13C366E50
          B06BFB36ECDC71707F9DB7F9E5E068F81C2A28CB0B245D1692E667E82C40C0CC
          C7CBAE73D7C0343D48680652BAF62A9DE2EF0030B2A4FCFE0B8253C0CE4250E0
          17564E85AE99588ACF7E492C583726EE7D9C0460AD5820CB6FE0A0C0CB0BE8DB
          83F822C7F785989ED20B43CFC7E6C68C643E0D809336595A1110E547CC607E5E
          428F7DCD657FF0876F5EC4EFCFBE3792008AA4241DAC465FA465CBA59B1DA58B
          D742F6F968FBF8DEDEC610002FB9BEF2D80C7FA3EF4C4BFD852BEDD35DA7FC3D
          00EA489574930C6B44216BC99ACA99A14AD8F2D42AF809500AE0796F04355100
          00000049454E44AE426082}
      end>
  end
  object ImgProduto_Tipo32x32: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    Left = 460
    Top = 216
    Bitmap = {
      494C01010D001100040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000008000000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001000000010000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000100000004000000050000000400000001000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000100000002000000060000000F000000150000000F00000007000000020000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010000000500000012130B0666A8643AFF1109056600000012000000050000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00030000000C0100002C8E5936EBD2A46DFF814A2BEC0100002D0000000C0000
      0003000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0007000000173C2516A4C49160FFD5A870FFBB8656FF381F12A7000000180000
      0007000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      000F0A06034EB2784FFDD8AD77FFD4A86EFFD6AB75FFA46740FD090503500000
      0010000000040000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000090000
      001D754C30D6D2A877FFD6AB73FFD5A971FFD6AA72FFCD9F6CFF6D4126D90000
      001F000000090000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000005000000112519
      1083C49366FFDAB07CFFD6AB73FFD6AA73FFD6AA72FFD8AE78FFBA8356FF2415
      0C87000000130000000500000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000020000000B03020135AB75
      50F6DCB687FFD8AD77FFD7AD76FFD7AD75FFD6AC74FFD6AB74FFD8AF7CFF9D64
      3EF7030201370000000C00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000600000013593C28BBD4AB
      81FFDAB37EFFD8AF78FFD9AF77FFD8AE77FFD7AD76FFD8AD76FFDAAF7AFFCB9D
      6EFF53331FBE0000001600000007000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000030000000C130D0960C5946CFFDFBC
      8CFFD9B17BFFD9B17AFFD9B17AFFD9B079FFD8AF79FFD8AF78FFD8AE78FFDCB6
      82FFB68157FF140C07660000000E000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000020000000701000020996E4DE9E0C097FFDBB5
      80FFDAB27DFFDAB27CFFDAB27CFFDAB27CFFDAB17BFFD9B07AFFD9B079FFD9B0
      7BFFD8B282FF8D5D3DEA01000023000000080000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000040000000E3E2C1F9BD4AE89FFDFBB8CFFDBB5
      80FFDBB581FFDBB581FFDBB480FFDBB47EFFDAB47DFFDAB37DFFD9B27CFFDAB1
      7BFFDCB684FFC99A6FFF3C27199F000000110000000500000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000020000000909060442C1956FFDE5C89EFFDCB784FFDCB7
      84FFDDB683FFDCB783FFDCB682FFDCB682FFDBB581FFDBB580FFDAB380FFDAB3
      7DFFDAB27CFFDEBC8CFFB38056FD090503460000000B00000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000500000012805D43D3E2C5A2FFDFBD8CFFDEBB88FFE1C0
      90FFE3C594FFE4C594FFE4C796FFE5C796FFE3C493FFE2C190FFE0BE8DFFDEBA
      88FFDBB481FFDBB582FFD9B287FF795136D60000001600000006000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000300000009261C1579D4B08DFFE6CBA2FFE6CB9BFFE8CEA0FFE8CE
      A0FFE7CD9FFFE7CC9DFFE7CC9DFFE6CA9BFFE6C999FFE5C898FFE4C696FFE4C5
      95FFE3C393FFE0BF8DFFE1BF90FFC79A6FFF261A117E0000000C000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010000000503020128B78E6DF5EEDBBBFFEBD4A7FFEAD2A5FFEAD2A5FFEAD1
      A4FFE9D1A3FFEAD0A2FFE9CFA2FFE8CEA0FFE7CD9EFFE7CB9CFFE7CA9BFFE6C9
      99FFE4C797FFE4C695FFE3C594FFE5C89EFFAC7B57F60302012C000000070000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000075F4735B3EAD8C5FFFBF6ECFFFAF6EBFFFAF6EBFFFAF6EAFFF6ED
      D7FFECD4A8FFEBD3A6FFEAD3A6FFE9D2A4FFE9D0A3FFE8CFA1FFE8CE9FFFEEDA
      B7FFF6EBD6FFF8F1E2FFF8F0E0FFF8EFDFFFE4CDB5FF5B402CB8000000090000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000100000006C89A72FFC79972FFC69871FFC69870FFC5976FFFC5976FFFF8EF
      DBFFEDD8ACFFEDD7ABFFECD6A9FFECD5A9FFEBD4A7FFEAD2A5FFEAD1A4FFF0DE
      BCFFC18F68FFC18E66FFC18E66FFC08D65FFBF8D65FFBF8C64FF000000080000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010000000300000006000000090000000A0000000C00000011C79972FFF9F0
      DEFFEEDBB0FFEEDAAEFFEED9AEFFEED8ACFFEDD7ABFFECD6AAFFEBD4A8FFF2E1
      C1FFB8835CFF000000150000000F0000000D0000000C00000008000000040000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001000000010000000200000002000000040000000AC99D76FFF9F3
      E2FFF1DEB4FFF0DDB3FFF0DDB1FFEFDCB1FFEEDAAFFFEED9ADFFEDD8ACFFF3E5
      C6FFBA865FFF0000000D00000005000000030000000200000002000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000200000008CA9F78FFFAF5
      E6FFF2E1B8FFF1E0B7FFF1DFB5FFF0DEB4FFF0DDB2FFEFDCB1FFEFDAB0FFF4E7
      CAFFBB8A63FF0000000A00000003000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000200000007CCA27BFFFBF6
      E7FFF3E3BAFFF3E3BAFFF2E2B9FFF2E1B8FFF2E0B6FFF1DEB5FFF0DDB3FFF5EA
      CDFFBF8D65FF0000000900000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000006CDA47DFFFCF7
      E9FFF4E6BEFFF4E5BDFFF3E5BCFFF3E3BAFFF3E3B9FFF2E1B8FFF1E0B6FFF7EC
      D2FFC09168FF0000000800000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000005CFA680FFFCF8
      ECFFF5E8C0FFF5E8C0FFF5E6BFFFF5E6BDFFF4E5BCFFF3E4BBFFF3E2B9FFF7EE
      D4FFC1936BFF0000000700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003CFA983FFFEFC
      F6FFFEFCF6FFFDFCF6FFFDFCF5FFFDFBF4FFFDFBF4FFFDFBF4FFFDFBF4FFFDFB
      F3FFC3956EFF0000000500000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000026C5744B8D0A9
      85FFD1A984FFD0A984FFD0A883FFD0A883FFD0A882FFCFA882FFCFA782FFCEA6
      81FF664E3AB90000000300000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000020000
      0002000000030000000300000003000000030000000300000003000000030000
      0003000000020000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000001000000010000000100000001000000010000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000135701C0229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF166101CA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000030000000D000000190000001A0000000E0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000010000000600000334120E4FC80000023400000006000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D0917288C184A96F6184995F60816278D0000
      000E000000000000000000000000000000000000000000000000000000000000
      00010000000500000334221F7CE8434FCAFF181567E800000235000000060000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000172661ABFFD6EDF7FF5CB1E5FF215BA5FF0000
      0019000000000000000000000000000000000000000000000000000000010000
      00050000033224207CE74C5BD6FF4557DDFF4757D2FF19186AEA000002340000
      0006000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000019245EA9FFC1E6F5FF55AEE3FF1F57A3FF0000
      001B000000000000000000000000000000000000000000000001000000050000
      033126247EE75160D8FF485BDFFF4558DEFF465ADFFF4B5CD5FF1A186BEA0000
      0233000000050000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000052F458500000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0823007A0823007A229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000017225BA7FFABE2F6FF4CABE4FF1E55A2FF0000
      00190000000000000000000000000000000000000000000000040000032F2925
      80E65767DAFF4D60E1FF4A5DDFFF495CDFFF495CDFFF4A5DDFFF505FD6FF1C1A
      6DEA000002310000000500000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF052F4585000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF0823007A00000000000000000823007A229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000020000001B215AA6FF8FD6F4FF44A5E1FF1D53A1FF0000
      001E00000002000000000000000000000000000000040000032D2C2982E65D6D
      DCFF5366E3FF4F63E1FF4E62E1FF4D62E1FF4D61E1FF4C60E0FF4E62E1FF5363
      D8FF1C1B6EE90000023100000005000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF052F45850000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF0823
      007A000000000000000000000000000000000823007A229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000005000000160815278A2159A6FF76CAEEFF3AA0DEFF1D52A1FF0410
      228D000000180000000600000001000000000100032B2F2C84E57A8BE3FF8697
      EDFF8596EDFF7689EBFF5367E2FF5366E2FF5266E3FF6578E6FF7384E9FF7E8F
      ECFF7281DFFF211F6FE90000022F000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF052F
      45850000000000000000229C02FF229C02FF229C02FF229C02FF0823007A0000
      000000000000000000000000000000000000000000000823007A229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00050001022D1B4573D03A81C4FF4D96D2FF49A1D9FF3492D1FF2E7DC6FF2364
      B0FF0D2F60D2000102310000000700000001494A99E06061C7FF6060C7FF5F60
      C7FF443DB1FF7B8EEBFF576CE4FF566BE4FF566AE4FF6A7DE8FF3B33AAFF5C5C
      C3FF5C5BC3FF5B5BC3FF48479AE4000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF0823007A000000000000
      000000000000092A0085092A00850000000000000000000000000823007A229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000040102
      04332B68A3EE559FD6FF7BC0E8FF93CFEFFF5ABFE9FF40ADDFFF3187CEFF3385
      D2FF3081C9FF184A8CEF00020439000000050000000600000008000000090000
      00104742B4FF8193ECFF5C71E5FF5B71E5FF5B70E5FF6F84E8FF3E37ADFF0000
      00130000000B0000000B00000008000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF092A0085000000000000
      0000092A0085229C02FF229C02FF092A00850000000000000000000000000823
      007A229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010000000100000001000000010000000100000001000000020000000B1D49
      71C961ACDDFF86CDEFFFC3EAF9FFA8E2F8FF6ACFF0FF46BAE6FF388FD4FF2E79
      CBFF3B92DBFF358ACFFF123462CD0000000F0000000000000000000000000000
      00084A45B8FF8899EEFF6277E7FF6076E6FF6075E6FF7589EAFF403AAFFF0000
      000A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF092A0085092A
      0085229C02FF229C02FF229C02FF229C02FF092A008500000000000000000000
      00000823007A229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F000000000000000000000000000000000000000300000004000000040000
      0004000000040000000400000005000000050000000500000005000000050000
      0005000000050000000500000005000000050000000500000006040B11544892
      CCFF8BD2F1FFBAE9F9FFE2F7FDFFAFE7F9FF71D4F2FF49BFE8FF3E98D8FF2A72
      C8FF3386D2FF42A2E2FF296FBAFF0308105A0000000000000000000000000000
      00074E49BAFF8C9DEEFF667CE8FF667BE8FF657AE8FF7B8FECFF433DB2FF0000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF092A0085000000000000
      0000000000000823007A229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F000000000000000000000000000000000000000A0000000E000000100000
      0010000000110000001100000011000000110000001200000012000000120000
      0012000000120000001300000013000000130000001300000010163751AC6AB6
      E1FF99E1F7FFDFF7FDFFF5FCFFFFB1EBFBFF75D7F3FF4CC5EAFF46A2DEFF2971
      C6FF2E79CBFF43A2E4FF3791D4FF0E2849AE0000000000000000000000000000
      0006504DBCFF8FA2F0FF6B81EAFF6B80EAFF6A80EAFF8194EEFF4641B5FF0000
      0007000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF092A00850000
      000000000000092A0085229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F000000000000000000000000000000005D463EBDB08575FFB18574FFB184
      74FFB08474FFB08373FFB08473FFB08373FF1E52A2FF1E51A1FF1F50A0FF1E50
      A1FF1E4FA0FF1E4FA0FF1E4FA0FF1D4FA0FF1D4E9FFF050F1E743379B3F491D5
      F2FFC5EFFBFFF1FCFEFFEBFAFDFFE4F9FDFFDFF8FDFFDAF7FDFFD5F6FDFFC7EC
      F9FFA1D1EEFF86CBF1FF4EADE5FF1E5293EC0000000000000000000000000000
      00055350BFFF94A6F1FF6E85EBFF6E85EBFF6D84EBFF8499EFFF4944B7FF0000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF092A
      0085092A0085229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B38777FFFBF7F5FFF9F3F1FFFAF4
      F0FFF9F4F0FFFAF3F0FFFAF4F0FFFAF3F0FF3066AFFF50ACE6FF4EABE6FF4DAA
      E6FF4DAAE6FF4CA9E5FF4AA8E5FF49A8E4FF48A6E4FF0D1E2A713B8BC8FFF2FA
      FDFFB9C6E2FF6784C0FF3B63B1FF0E42A4FF1350ADFF1A5FB8FF2370C1FF519C
      D6FF75BBE6FFAAE0F4FFC5F0FBFF2564AFFE0000000000000000000000000000
      00045754C2FFA2B2F3FFA1B0F3FFA1B0F3FFA0B0F3FFA0B0F3FF4C48BAFF0000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B48979FFFCF7F6FFF9F2EEFFF9F2
      EEFFF9F2EEFFF9F2EEFFF9F2EEFFF8F2EDFF2054A3FF56AFE6FF3EA1E2FF3EA1
      E3FF3D9FE2FF3B9FE2FF3B9EE1FF3A9DE1FF399CE1FF0F2A3C86163952A3448C
      BFF693C7E7FFC7E6F4FFE4F4FBFFE8F7FCFFF4FCFEFFEFFBFDFFD6F2FAFFCAEB
      F8FFA6D6EFFF70AFDCFF2E68A6F1050D17640000000000000000000000000000
      0002383A6DB9696BCFFF686BCFFF686ACEFF686ACEFF676ACEFF35376BBA0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000D77610FFD77610FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B58B7BFFFCF8F7FFF9F2EFFFF9F2
      EFFFF9F2EFFFF9F3EEFFF9F2EEFFF9F2EEFF2157A5FF5CB3E8FF43A5E4FF42A4
      E4FF41A3E3FF40A2E3FF3EA2E3FF3DA0E2FF3DA0E2FF358CC7F0173E5AA20C20
      2E77132E49A43C627EC93D75A0E43B78A8EC3785C4FF3581C2FF366FA5EC3468
      99E52C4869CB06101A6900000017000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F0C0C0C550000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000000000
      000000000000000000000B0B0B4F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B68D7DFFFCF8F7FFF9F3EFFFFAF3
      EFFFFAF3EFFFF9F3EFFFF9F3EFFFFAF2EFFF235AA7FF61B7EAFF48A9E5FF47A8
      E5FF45A6E4FF44A6E4FF43A5E4FF42A4E3FF41A2E3FF40A2E3FF3EA2E2FF3485
      BDE9112D56BA5C59589B4946468A403F3E832D2B2B6D2D2B2B6D403F3E834947
      468A40302A9B0000000C00000004000000000000000000000000000000000000
      00030000000B00000011000000130000001300000013000000120000000C0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000020000000500000003000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000114E01B5229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF135701C000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0303032A00000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000000000
      000000000000020202251C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B88F80FFFCF9F7FFFAF3EFFFFAF3
      F0FFF9F4F0FFAD9C96FFFAF4EFFFF9F3EFFF245DA9FF66BBEBFF4DACE7FF4BAB
      E7FF4BAAE6FF49A9E6FF48A8E5FF46A7E5FF45A6E5FF44A6E4FF44A4E4FF42A3
      E4FF2157A5FFF9F3EEFFF8F2EEFFAA9993FFF9F2EDFFF8F1EEFFF8F2EDFFF9F4
      F0FFB18574FF0000001000000004000000000000000000000000000000000000
      000A103324C31E5D42FF1E5C41FF1E5C40FF1D5B41FF1E5B40FF0F3223C30000
      000B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000007173F85E30001022D000000030000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000052F458514B1FFFF14B1FFFF14B1FFFF14B1
      FFFF052F45850000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F171717740000000B000000005730
      07A3D77610FFD77610FFD77610FFD77610FFD77610FFD77610FF5F3407AA0000
      000000000008161616721C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000B99182FFFCF9F8FFF9F4F0FFFAF3
      F0FFAF9F98FF664C41FFFAF4F0FFFAF4F0FF2660ABFF6CBEEDFF52B0E8FF51AF
      E8FF50AEE8FF4EADE7FF4DACE7FF4CABE6FF4BAAE5FF49AAE5FF48A9E5FF46A8
      E5FF235AA7FFF9F3EFFFF9F2EFFF5F463CFFAC9B94FFF9F2EFFFF9F2EEFFFAF4
      F0FFB28777FF0000000F00000004000000000000000000000000000000000000
      000F2A7356FF71D7BAFF53CAA6FF51CAA5FF51C9A4FF51C9A4FF297053FF0000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000091E52AAFF16397AE80001022D0000
      0003000000010000000000000000000000000000000000000000000000000000
      00000000000000000000052F458514B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF052F458500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0C0C0C54000000000100
      0012AF600DE6D77610FFD77610FFD77610FFD77610FFB4630EEA010000150000
      00000A0A0A4E1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000BA9384FFFCFAF9FFFAF4F1FFB2A2
      9CFF6A5046FF6A5046FFFAF4F1FFFAF4F1FF2864AEFF71C2EEFF58B5EAFF56B4
      E9FF54B2E9FF53B1E9FF53B0E8FF50AFE8FF50AEE7FF4FADE7FF4DACE6FF4BAB
      E6FF255DA9FFF9F3F0FFFAF2EFFF634A40FF634A40FFAE9D96FFF9F3EFFFFBF5
      F1FFB48878FF0000000E00000004000000000000000000000000000000000000
      000E2B7658FF75D8BCFF45C59DFF45C59DFF44C49CFF53CBA7FF297355FF0000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000081F55ABFF63AFE2FF153779E70001
      032C000000030000000100000000000000000000000000000000000000000000
      000000000000052F458514B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF052F4585000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F020202280000
      0000140A014ED77610FFD77610FFD77610FFD77610FF170D0155000000000202
      02231C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000BD9586FFFCFAF9FFD7CCC6FF6F55
      4AFF6F544AFF6E544AFFFBF4F2FFFAF5F2FF2967B0FF76C7EFFF5DB9ECFF5CB8
      EBFF5AB6EAFF59B5EAFF57B4E9FF56B3E9FF54B2E9FF54B1E8FF52B0E8FF50AF
      E7FF2660ACFFFAF4F0FFFAF4F0FF684E44FF684D44FF674E43FFD3C9C3FFFAF5
      F2FFB58A7AFF0000000D00000003000000000000000000000000000000000000
      000D2B785AFF78DABEFF47C59FFF46C69EFF46C69EFF57CCA9FF2A7558FF0000
      000F000000000000000000000000000000000000000000000005000000070000
      00080000000800000008000000080000000F2056ADFF72C3EFFF53A7DFFF1538
      79E70001032C0000000300000001000000000000000000000000000000000000
      0000052F458514B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF052F45850000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F171717740000
      000A00000000573007A3D77610FFD77610FF5F3407AA00000000000000071616
      16711C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000BD9789FFFDFAF9FFFAF6F3FFB8A9
      A2FF745A4FFF73594EFFFBF5F2FFFAF5F2FF2B6BB2FF7CCAF1FF63BDEDFF61BB
      EDFF60BAECFF5EB9ECFF5DB9ECFF5CB8EBFF5AB6EBFF59B5EAFF58B4EAFF56B3
      E9FF2864ADFFFAF4F0FFFAF4F0FF6C5248FF6D5247FFB4A49DFFFAF4F0FFFBF6
      F2FFB78D7CFF0000000C00000003000000000000000000000000000000000000
      000C2C7B5DFF7BDBC1FF49C7A1FF49C7A0FF48C7A0FF5ACEACFF2B785AFF0000
      000E00000000000000000000000000000000000000000D2650BC194AA0FF1849
      9EFF18489DFF18489EFF18479DFF18469CFF2058AEFF66BDEEFF56B3EBFF57AA
      E1FF163A7BE70001032B0000000300000001000000000000000000000000052F
      458514B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052F458500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F0B0B
      0B530000000001000012AF600DE6B4630EEA01000015000000000A0A0A4E1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000BF988BFFFDFAF9FFFBF6F3FFFAF6
      F2FFBAABA4FF785E53FFFAF6F3FFFBF6F2FF2D6FB5FF82CEF2FF68C1EFFF66C0
      EEFF65BEEEFF64BEEDFF62BDEDFF61BCEDFF5FBBECFF5EBAEBFF5DB9ECFF5CB8
      EBFF2968B0FFFAF4F1FFFBF5F1FF71574CFFB7A79FFFFAF5F0FFFAF4F1FFFBF6
      F2FFB88E7EFF0000000B00000003000000000000000000000000000000000000
      000B2D7E5FFF7EDBC1FF4BC8A2FF4BC8A1FF4AC8A1FF5DCFAEFF2B7B5DFF0000
      000D00000000000000000000000000000000000000002461AEFF89D1F4FF75C7
      F2FF73C7F0FF71C4F1FF71C4F0FF6FC3F0FF6EC2F0FF6CC1F0FF5AB7ECFF5BB7
      EDFF5CADE2FF173A7CE70001032B000000030000000000000000052F458514B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052F4585000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0202022800000000140A014E170D015500000000020202231C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000C09A8DFFFDFAF9FFFBF7F4FFFBF6
      F3FFFBF6F3FFBDADA6FFFBF6F3FFFBF6F3FF2F73B7FF87D2F4FF6DC5F0FF6DC4
      F0FF6BC3EFFF69C2EFFF68C1EFFF66C0EFFF66BFEEFF64BEEDFF62BCEDFF61BC
      EDFF2B6CB3FFFAF5F1FFFAF5F1FFB9A9A2FFFAF5F1FFFAF5F2FFFBF5F1FFFBF7
      F3FFB99081FF0000000A000000030000000000000007000000090000000A0000
      00112E8362FF82DDC4FF4DC9A4FF4CC9A3FF4CC9A3FF61D0B0FF2D7E5FFF0000
      00150000000C0000000C0000000900000002000000002766B2FF8FD5F5FF68C3
      F1FF67C2F0FF66C1F0FF64C0EFFF63C0EFFF62BFEFFF61BEEEFF5FBCEFFF5EBB
      EEFF60BCEEFF60B1E3FF193D7DE70001022A00000000052F458514B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052F45850000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1616167300000009000000000000000000000007151515701C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000C29D8FFFFDFBF9FFFCF6F4FFFBF7
      F4FFFBF6F4FFFBF6F4FFFBF6F4FFFBF6F3FF3177BAFF8BD5F5FF73C9F1FF72C9
      F2FF70C7F1FF6FC7F1FF6EC5F0FF6CC4F0FF6BC3F0FF69C2EEFF68C1EEFF67BF
      EEFF2D70B5FFFBF6F2FFFBF5F2FFFBF5F2FFFBF5F2FFFBF5F2FFFAF5F2FFFBF7
      F3FFBA9284FF0000000900000002000000001C583FE0237352FF237152FF2270
      51FF2F8565FF66D4B5FF4ECBA6FF4ECBA5FF4ECAA5FF64D3B2FF2E8262FF226B
      4DFF216A4DFF21694DFF1B533CE40000000600000000286AB4FF95DAF7FF6EC9
      F3FF6DC8F1FF6DC7F3FF6BC5F1FF69C4F0FF69C4F0FF67C3F0FF66C1F0FF65C0
      EFFF63BFF0FF68C2F0FF6EB4E3FF143669C7052F458514B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052F
      4585000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F0B0B0B5100000000000000000A0A0A4C1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000C49E90FFFDFCFAFFFBF8F5FFFBF7
      F4FFFCF7F4FFFCF7F5FFFBF6F5FFFBF7F4FF337BBCFF90D8F6FF78CEF3FF77CD
      F3FF75CCF2FF74CAF2FF74CAF2FF72C9F1FF70C8F1FF6FC7F1FF6EC5F0FF6CC4
      F0FF2F74B7FFFBF5F3FFFBF5F3FFFBF5F2FFFBF6F2FFFBF6F2FFFBF6F3FFFCF7
      F4FFBC9585FF0000000900000002000000000002012732785FE592DBC6FF8AE0
      C9FF6FD8B9FF6AD5B7FF51CCA7FF50CCA7FF50CBA7FF67D4B6FF66D4B4FF69D4
      B6FF77D1B6FF2A644EE80002012A00000003000000002C70B8FF9CDEF8FF75CE
      F4FF74CDF4FF73CDF4FF72CBF4FF70CBF3FF6FC9F3FF6EC8F1FF6DC8F3FF6BC7
      F1FF6EC6F1FF7EC6ECFF275493E60001022614B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F02020227010101221C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000C4A092FFFDFCFAFFFCF8F5FFFCF8
      F6FFFCF7F5FFFCF7F5FFFCF7F5FFFBF7F5FF3580BFFF94DBF8FF7ED2F5FF7DD1
      F5FF7CD0F5FF7ACFF3FF79CEF4FF77CDF3FF76CBF2FF75CBF2FF73CAF1FF71C8
      F1FF3277BAFFFBF7F4FFFBF6F3FFFBF6F4FFFBF6F3FFFBF6F3FFFBF6F3FFFCF7
      F5FFBD9688FF0000000700000002000000000000000200020126327A61E591DC
      C6FF76D9BEFF58CFACFF53CEA9FF52CDA9FF53CDA8FF51CDA8FF59CFACFF78D1
      B9FF2D6651E7000201290000000300000000000000002E75BBFFAFE7FBFFAEE6
      FAFFADE5FAFFACE5F9FFABE4F9FFAAE2F9FFA8E2F9FF99DBF8FF74CDF4FF76CE
      F4FF87CAEFFF285796E6000102260000000214B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F16161673151515701C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F00000000000000000000000000000000C6A294FFFDFCFBFFFDFCFBFFFDFC
      FBFFFDFCFBFFFDFCFAFFFDFCFAFFFDFCFAFF6DACD8FFC0ECFBFFBEECFAFFBEEB
      FAFFBDEBFAFFBCEAFAFFBBE9FAFFB9E8F9FFB8E8F9FFB6E6F9FFB5E6F9FFB4E6
      F9FF65A5D2FFFDFAF9FFFDFAF9FFFDFAF9FFFDFBF9FFFCFBF9FFFCFBF9FFFCFB
      F8FFBF9889FF000000060000000200000000000000000000000200020125357C
      62E493DDC8FF78DABFFF59D1AEFF54CFAAFF54CEAAFF5BD0AEFF7BD3BBFF2E6B
      52E700020128000000030000000000000000000000001B436AC03684C6FF3683
      C5FF3582C5FF3582C4FF3481C4FF3481C4FF3480C3FF9FE0F8FF7DD5F5FF8DCF
      F0FF2B5A96E600010325000000020000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F000000000000000000000000000000006E5952BEC6A395FFC7A395FFC7A2
      95FFC6A294FFC6A294FFC5A194FFC6A193FF4096CDFF3F96CDFF3E94CCFF3E93
      CCFF3E92CBFF3E91CAFF3D90C9FF3C8FC9FF3C8EC8FF3B8DC8FF3A8CC7FF3A8A
      C6FF398AC6FFC29C8EFFC29C8EFFC29B8EFFC19C8DFFC19B8DFFC09A8CFFC09B
      8CFF6A554CBF0000000400000001000000000000000000000000000000010002
      0124367D64E495DDCAFF7ADCC0FF5BD1AEFF5ED1B0FF80D4BCFF2D6D53E60002
      0126000000020000000000000000000000000000000000000003000000040000
      0004000000040000000400000004000000083683C6FFA8E5FAFF94D4F1FF2C5D
      98E60001022400000002000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F000000000000000000000000000000000000000100000002000000020000
      0002000000020000000200000002000000020000000300000003000000030000
      0003000000030000000300000003000000030000000300000004000000040000
      0004000000040000000400000004000000050000000500000005000000050000
      0004000000030000000100000000000000000000000000000000000000000000
      000100020123378065E495DDCBFF83DFC5FF84D7BFFF2F7157E6000201240000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000043887C8FFA3DAF3FF2D609AE60001
      0223000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000000000000000000000000000000000000000000000000
      00000000000100020122368067E38DD5C1FF307357E400020123000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000004398BC9FF30639AE4000103230000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000201211D5541BF0002012200000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000022D6B9BDF00010222000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000144545
      45C7343434AD0000000700000000000000000000000000000000000000000000
      0000484848CC717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF5050
      50D6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000144B4B4BD07171
      71FF717171FF363636B200000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000484848CC717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF505050D600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000144B4B4BD0717171FF7171
      71FF717171FF4A4A4ACF00000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000144B4B4BD0717171FF717171FF7171
      71FF4B4B4BD00000001400000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B
      4BD0000000140000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD00000
      0014000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000C07003E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000016161616723B3B3BB95C5C
      5CE7717171FE717171FE5E5E5EE93D3D3DBB1616167200000017000000000000
      0000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD0000000140000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000004425059000000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E3C08B703020022000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      000000000000000000000000000B2121218A696969F6717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF6B6B6BF8242424900101
      01214B4B4BD0717171FF717171FF717171FF4B4B4BD000000014000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000003C2104874C2A0598000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFC76D0FF52E1A03770000
      0005000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00000000000002020226505050D7717171FF6F6F6FFD363636B00D0D0D560101
      011D00000002000000010101011B0B0B0B53333333AC6F6F6FFC717171FF6F6F
      6FFD717171FF717171FF717171FF4B4B4BD00000001400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000000000000000000011090149D77610FF4A2905970000
      0005000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF9250
      0BD20A0600390000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000020202255C5C5CE7717171FF4C4C4CD10404043200000000000000000000
      000000000000000000000000000000000000000000000303032D484848CC7171
      71FF717171FF717171FF4B4B4BD0000000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000000000000000000000000008C36C0FF3D77610FF8D4D
      0BCF0B06003C0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD37410FD4C29059700000010000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00094F4F4FD5717171FF3C3C3CBB0000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000083737
      37B3717171FF6F6F6FFD01010121000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000532D069FD77610FFD776
      10FFD77610FF7B4309C11D10025E000000100000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFB0610DE7190D02570000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000001F1F
      1F86717171FF4E4E4ED30000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008484848CC717171FF24242490000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000008040034D77610FFD776
      10FFD77610FFD77610FFD77610FFD07210FB84480AC847270593221302660F08
      01440503002A020100190000000C0000000BD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF6E3C08B703020022000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000126767
      67F4717171FE0505053600000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      00000303032D6F6F6FFC6B6B6BF8000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000683908B2D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFC76D0FF52E1A03770000
      000500000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000000000001414146B7171
      71FF393939B60000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000333333AC717171FF161616720000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF00000000000000000000000000000000000000000000000004020024C76D
      0FF5D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF9250
      0BD20A060039000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000363636B17171
      71FF0F0F0F5E0000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000B0B0B53717171FF3C3C3CBB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000002112
      0264D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD37410FD4C2905970000001000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000575757DF7171
      71FF020202250000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000101011B717171FF5E5E5EE90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00004023048BD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFB0610DE7190D0257717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000676767F47171
      71FF0000000C000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      00000000000000000001717171FF717171FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000000000003F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000361E0481D57610FED77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFA65C0DE1130A014D717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000676767F37171
      71FF0000000D000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      00000000000000000002717171FF717171FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000000000003F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000120A014AA95C0DE2D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD07210FB4124048D0000000B00000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000555555DE7171
      71FF020202270000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000101011D717171FF5E5E5EE80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A2B180373A2580CDDD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF864A
      0ACA07040031000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000353535AF7171
      71FF101010610000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000C0C0C56717171FF3C3C3CBA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000010A050037311B
      037B653808AF95510BD4B8650EECC56C0FF4D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFC06A0FF12715026D0000
      000300000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000121212677171
      71FF3C3C3CBB0000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000363636B0717171FF161616720000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF623607AC0201001B000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000000000000000000F6666
      66F2717171FE0606063C00000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000040404326F6F6FFD696969F6000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFA65C0DE1130A014D0000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000001C1C
      1C7F717171FF515151D80000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B4B4B4BD1717171FF2121218A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD07210FB4124048D0000000B000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00074B4B4BD0717171FF414141C20000000E0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B3D3D
      3DBB717171FF505050D70000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF864A
      0ACA070400310000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00000101011F595959E2717171FF515151D80606063C00000000000000000000
      00000000000000000000000000000000000000000000050505364D4D4DD47171
      71FF5C5C5CE70202022600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFC06A0FF12715026D0000
      0003000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000101011F4B4B4BD0717171FF717171FE3C3C3CBB101010610202
      02270000000C0000000C020202260F0F0F5E393939B6717171FE717171FF4F4F
      4FD5020202250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000623607AC0201001B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      00000000000000000000000000071C1C1C7F666666F2717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF676767F41F1F1F860000
      0009000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000404040C1717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF484848CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000F12121267353535AF5555
      55DE676767F3676767F4575757DF363636B11414146B00000012000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000404040C1717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4848
      48CC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000171717746B6B6BF9717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF6D6D6DFB1F1F1F850000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000151111
      11642E2E2EA34E4E4ED4696969F5717171FF717171FF6A6A6AF7505050D73131
      31A8131313690101011A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636363EE717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF6E6E6EFB0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000000000000000000000000000
      0000000000000000000000000000000000000303032E313131A86B6B6BF97171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF6D6D6DFB363636B0050505370000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000002020A
      00420B30018E156001C91E8702ED229C02FF229C02FF1E8902EF166201CB0B33
      0193020B00450000000300000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      000000000000000000000000000D272727966F6F6FFC717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF707070FE2D2D2DA200000012000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000305170064197402DC229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF1B7802E0051A0069000000040000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF4848
      48CD2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E484848CD717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      0000000000000303032B535353DB717171FF717171FF717171FF717171FF7171
      71FF6B6B6BF9454545C72A2A2A9C2222228E2222228E28282899434343C46A6A
      6AF7717171FF717171FF717171FF717171FF717171FF595959E2050505370000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000030027166201CB229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF176701D00104002C00000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      000004040434626262EE717171FF717171FF717171FF717171FF494949CD0F0F
      0F5E0000000D0000000000000000000000000000000000000000000000000000
      000A0D0D0D56434343C5717171FF717171FF717171FF717171FF676767F40606
      063F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020B00471F8C02F1229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF208E02F4030E004F000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000303
      032A626262ED717171FF717171FF717171FF626262ED0E0E0E5D000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B515B5B5BE5717171FF717171FF717171FF6767
      67F4050505370000000000000000000000000000000000000000000000000000
      000000000000020B0046209402F8229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF219602FA030E004F0000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C00000000000000000000000B5050
      50D7717171FF717171FF717171FF4C4C4CD10101011C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000015444444C6717171FF717171FF7171
      71FF595959E20000001200000000000000000000000000000000000000000000
      0000000300251F8B02F1229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF208E02F40104
      002C00000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C00000000000000002323238F7171
      71FF717171FF717171FF4D4D4DD2000000100000000000000000000000000000
      00000303032D2222228D454545C7595959E3595959E3484848CB252525920404
      04350000000000000000000000000000000000000009444444C6717171FF7171
      71FF717171FF2D2D2DA200000000000000000000000000000000000000000000
      0002145E01C7229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF104A01B100000013000000100F4301A8229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1767
      01D000000004000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C00000000020202276D6D6DFB7171
      71FF717171FF636363EF0101011F000000000000000000000000000000173232
      32AA717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF393939B60101011E000000000000000000000000000000155B5B5BE57171
      71FF717171FF707070FE05050537000000000000000000000000000000000415
      005F229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0001001B000000000000000000000010229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF051A0069000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000001414146D484848CC000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C000000002A2A2A9D717171FF7171
      71FF717171FF1111116400000000000000000000000002020227595959E27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF606060EB040404320000000000000000000000000B0B0B517171
      71FF717171FF717171FF363636B000000000000000000000000000000001196F
      01D7229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0002001E000000000000000000000013229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF1B7802E0000000030000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      00001414146D717171FE717171FF484848CD0000001200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C0000000D696969F5717171FF7171
      71FF505050D600000001000000000000000000000014585858E1717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF606060EB0101011E0000000000000000000000004343
      43C5717171FF717171FF6E6E6EFC0101011A00000000000000000108003B229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF125101B90002001E0001001B104A01B1229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF020B00450000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000001414
      146D717171FE717171FF717171FF717171FF484848CC00000011000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C0D0D0D56717171FF717171FF7171
      71FF131313690000000000000000000000002E2E2EA3717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF393939B60000000000000000000000000C0C
      0C56717171FF717171FF717171FF1313136900000000000000000A2C0188229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0B3201920000000000000000717171FF717171FF717171FF2222
      228E0000000000000000000000000000000000000000000000001414146D7171
      71FE717171FF717171FF717171FF717171FF717171FF484848CD000000120000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C26262695717171FF717171FF6F6F
      6FFD00000017000000000000000002020224707070FE717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0404043500000000000000000000
      000A6A6A6AF7717171FF717171FF313131A80000000000000000135701C0229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF166201CB0000000000000000717171FF717171FF717171FF2222
      228E00000000000000000000000000000000000000001414146D717171FE7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF484848CC0000
      0011000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C434343C4717171FF717171FF4F4F
      4FD50000000000000000000000001C1C1C7E717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF2424249100000000000000000000
      0000434343C4717171FF717171FF505050D700000000000000001B7C02E4229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0D3C019F00000000000000000F4201A7229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF1E8802EE0000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000001414146D717171FE717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4848
      48CD000000120000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C5A5A5AE4717171FF717171FF3333
      33AC0000000000000000000000003A3A3AB8717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF484848CB00000000000000000000
      000028282899717171FF717171FF6A6A6AF70000000000000000208E02F4229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF114D01B400000000000000000413005B229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0000000000000000717171FF717171FF717171FF2222
      228E0000000000000000000000001414146D717171FE717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF484848CC0000001100000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C636363ED717171FF717171FF2C2C
      2CA00000000000000000000000004C4C4CD1717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF595959E300000000000000000000
      00002222228E717171FF717171FF717171FF0000000000000000208E02F4229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF209002F5000100180000000000000000061B006B208E
      02F4229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0000000000000000717171FF717171FF717171FF2222
      228E0000000000000000000000000E0E0E5C6F6F6FFC717171FF717171FF7171
      71FF717171FF323232AA0909094A696969F6717171FF717171FF717171FF7171
      71FF717171FF484848CD00000012000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C616161EC717171FF717171FF2D2D
      2DA10000000000000000000000004B4B4BD0717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF595959E300000000000000000000
      00002222228E717171FF717171FF717171FF00000000000000001B7B02E3229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF114E01B60000000B00000000000000000104
      002B1D8402EB229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF1E8702ED0000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000E0E0E5D6F6F6FFC717171FF7171
      71FF323232AA0000000400000000080808466A6A6AF7717171FF717171FF7171
      71FF717171FF717171FF484848CC000000110000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C595959E2717171FF717171FF3535
      35AE000000000000000000000000383838B4717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF454545C700000000000000000000
      00002A2A2A9C717171FF717171FF696969F50000000000000000135601BE229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF186E01D700030027000000000000
      000004160062229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF156001C90000000000000000717171FF717171FF717171FF2222
      228E00000000000000000000000000000000000000000E0E0E5C6F6F6FFC3232
      32AA0000000400000000000000000000000008080846696969F6717171FF7171
      71FF717171FF717171FF717171FF484848CD0000001200000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C414141C1717171FF717171FF5353
      53DA00000000000000000000000019191979717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF2222228C00000000000000000000
      0000454545C7717171FF717171FF4E4E4ED4000000000000000009290084229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0000
      000E0000000000000000209002F5229C02FF229C02FF176701D0000000000000
      00000000000C229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0A30018E0000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000070707400000
      00040000000000000000000000000000000000000000080808466A6A6AF77171
      71FF717171FF717171FF717171FF717171FF2E2E2EA300000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C24242491717171FF717171FF7171
      71FE0101011B00000000000000000101011E6F6F6FFC717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0303032E00000000000000000000
      000D6C6C6CF9717171FF717171FF2E2E2EA3000000000000000001070037229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0106
      00350000000000000000145E01C7229C02FF229C02FF197302DB000000000000
      000000000007229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF020A00410000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808466969
      69F6717171FF717171FF717171FF4D4D4DD20000001500000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C0B0B0B51717171FF717171FF7171
      71FF1616167100000000000000000000000028282897717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF323232AA0000000000000000000000000F0F
      0F5E717171FF717171FF717171FF11111164000000000000000000000000176B
      01D3229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0D3C
      019F0000000000000000000300250F4301A9135701BF020C0048000000000000
      0000020D004C229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF197402DC000000020000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      08466A6A6AF7717171FF4D4D4DD2000000150000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C0000000A666666F2717171FF7171
      71FF555555DD0000000300000000000000000000000E515151D8717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF595959E2000000170000000000000000000000014949
      49CD717171FF717171FF6B6B6BF9000000150000000000000000000000000412
      0059229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229A
      02FE0415005F0000000000000000000000000000000000000000000000000001
      001B196F02D7229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF05170063000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008080846464646C900000015000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C0000000026262695717171FF7171
      71FF717171FF151515700000000000000000000000000101011D515151D87171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF585858E1020202270000000000000000000000000E0E0E5D7171
      71FF717171FF717171FF313131A8000000000000000000000000000000000000
      0001145801C1229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229A02FE0D3C019F0209003F000000100000000B00040029092A00851F8D
      02F3229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1662
      01CB00000003000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000000000000000000000000000
      0000000000990000009900000000000000000000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C000000000000
      000000000000000000000000004C0000004C00000000010101206B6B6BF87171
      71FF717171FF676767F4020202290000000000000000000000000000000E2828
      28986F6F6FFC717171FF717171FF717171FF717171FF717171FF717171FF7070
      70FE2E2E2EA3000000140000000000000000000000000101011C626262ED7171
      71FF717171FF6F6F6FFC0303032E000000000000000000000000000000000000
      0000000200201E8702ED229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1F8B02F10003
      002700000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C00000000000000001E1E1E837171
      71FF717171FF717171FF555555DD010101190000000000000000000000000000
      00000101011D1919197A383838B44B4B4BD04B4B4BD03A3A3AB81C1C1C7F0202
      022400000000000000000000000000000000000000104D4D4DD2717171FF7171
      71FF717171FF2727279600000000000000000000000000000000000000000000
      0000000000000209003F209102F6229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF209402F8020B00470000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000099000000990000009900000099000000990000
      0099000000990000009900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000074A4A
      4ACE717171FF717171FF717171FF555555DD0202022900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000101011F4D4D4DD2717171FF717171FF7171
      71FF535353DB0000000D00000000000000000000000000000000000000000000
      000000000000000000000209003F1E8702ED229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF1F8B02F1020B0046000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000101
      01205C5C5CE6717171FF717171FF717171FF686868F515151570000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000111111164646464F0717171FF717171FF717171FF6262
      62ED0303032B0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000020020145801C1229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF145E01C70003002500000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF2222
      228E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002222228E717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      0000020202295C5C5CE6717171FF717171FF717171FF717171FF555555DD1616
      16710101011B0000000000000000000000000000000000000000000000000000
      001613131369505050D6717171FF717171FF717171FF717171FF626262EE0404
      0433000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000104120059186B01D4229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF196F02D70415005F000000020000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF4848
      48CD2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E2222228E2222228E2222228E2222228E2222228E2222228E2222228E2222
      228E484848CD717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      000000000000010101204A4A4ACE717171FF717171FF717171FF717171FF7171
      71FF717171FE525252D9353535AF2D2D2DA12D2D2DA1333333AC505050D76F6F
      6FFD717171FF717171FF717171FF717171FF717171FF505050D70303032A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000107
      003709290084135601BE1B7C02E3208E02F4208E02F41B7C02E4135701C0092B
      01870108003A0000000100000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000004C0000004C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004C0000004C0000000000000000000000000000
      00000000000000000000000000071E1E1E836B6B6BF8717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF6D6D6DFB2323238F0000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000606060EB717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF6C6C6CF90000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000000000000000000000000000
      0000000000000000000000000000000000000101011F26262695666666F27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF696969F52A2A2A9D020202260000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000011111165606060EB717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF626262ED171717740000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A0B0B
      0B5124242490414141C1595959E2616161EC616161EC5A5A5AE4434343C42626
      26950D0D0D560000000E00000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000800000000100010000000000000800000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
    DesignInfo = 14156236
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2251
          75657374696F6E223E0D0A09093C7061746820636C6173733D22477265656E22
          20643D224D31362C3243382E332C322C322C382E332C322C313673362E332C31
          342C31342C31347331342D362E332C31342D31345332332E372C322C31362C32
          7A204D31362C3234632D312E312C302D322D302E392D322D3263302D312E312C
          302E392D322C322D3220202623393B2623393B73322C302E392C322C32433138
          2C32332E312C31372E312C32342C31362C32347A204D32302E372C31332E3363
          2D302E322C302E342D302E342C302E372D302E362C31632D302E332C302E332D
          302E352C302E352D302E382C302E37632D302E332C302E322D302E362C302E34
          2D302E392C302E3620202623393B2623393B632D302E332C302E322D302E352C
          302E342D302E372C302E37632D302E322C302E332D302E332C302E362D302E34
          2C31563138682D322E37762D302E3963302D302E362C302E322D312C302E332D
          312E3463302E322D302E342C302E342D302E372C302E362D3120202623393B26
          23393B63302E322D302E332C302E352D302E352C302E382D302E3763302E332D
          302E322C302E352D302E342C302E382D302E3663302E322D302E322C302E342D
          302E342C302E362D302E3663302E312D302E322C302E322D302E352C302E322D
          302E3963302D302E362D302E322D312D302E352D312E3320202623393B262339
          3B632D302E332D302E332D302E372D302E342D312E332D302E34632D302E342C
          302D302E372C302E312D302E392C302E32632D302E332C302E312D302E352C30
          2E332D302E372C302E35632D302E322C302E322D302E332C302E352D302E342C
          302E384331342C31322E312C31342C31322E372C31342C3133682D3320202623
          393B2623393B63302D302E372C302E312D312E362C302E342D322E3163302E32
          2D302E362C302E362D312E312C312D312E3563302E342D302E342C302E392D30
          2E382C312E352D3163302E362D302E322C312E332D302E342C322D302E346331
          2C302C312E382C302E312C322E342C302E3420202623393B2623393B63302E36
          2C302E332C312E322C302E362C312E362C302E3963302E342C302E342C302E37
          2C302E382C302E382C312E3273302E332C302E382C302E332C312E324332312C
          31322E342C32302E392C31322E392C32302E372C31332E337A222F3E0D0A093C
          2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313820313822207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203138203138
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D302C3176313663302C302E362C302E34
          2C312C312C3168313663302E362C302C312D302E342C312D31563163302D302E
          362D302E342D312D312D31483143302E342C302C302C302E342C302C317A204D
          31362C3136483256326831345631367A222F3E0D0A3C706F6C79676F6E20636C
          6173733D22426C61636B2220706F696E74733D2231322C3520382C3920362C37
          20342C3920362C313120382C31332031302C31312031342C3720222F3E0D0A3C
          2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D223020302033322033322220656E61626C65
          2D6261636B67726F756E643D226E6577203020302033322033322220786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C70617468
          206F7061636974793D22302E332220656E61626C652D6261636B67726F756E64
          3D226E6577202020202220643D224D33322C3048307633326C302C3068333256
          307A204D33302C3330483256326832385633307A222F3E0D0A3C726563742078
          3D2231362220793D223822206F7061636974793D22302E332220656E61626C65
          2D6261636B67726F756E643D226E657720202020222077696474683D22313022
          206865696768743D2234222F3E0D0A3C70617468206F7061636974793D22302E
          362220656E61626C652D6261636B67726F756E643D226E657720202020222064
          3D224D362C3676386838563648367A204D31322C31324838563868345631327A
          222F3E0D0A3C7265637420783D2231362220793D22323022206F706163697479
          3D22302E332220656E61626C652D6261636B67726F756E643D226E6577202020
          20222077696474683D22313022206865696768743D2234222F3E0D0A3C706174
          68206F7061636974793D22302E362220656E61626C652D6261636B67726F756E
          643D226E6577202020202220643D224D362C313876386838762D3848367A204D
          31322C32344838762D3468345632347A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313820313822207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203138203138
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D392C30222F3E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D392C3043342C302C302C342C302C3963
          302C352C342C392C392C3963352C302C392D342C392D394331382C342C31342C
          302C392C307A204D392C3136632D332E392C302D372D332E312D372D3763302D
          332E392C332E312D372C372D3720202623393B63332E392C302C372C332E312C
          372C374331362C31322E392C31322E392C31362C392C31367A222F3E0D0A3C63
          6972636C6520636C6173733D22426C61636B222063783D2239222063793D2239
          2220723D2235222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2245
          7175616C5F546F2220786D6C6E733D22687474703A2F2F7777772E77332E6F72
          672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F
          7777772E77332E6F72672F313939392F786C696E6B2220783D22307078222079
          3D22307078222076696577426F783D2230203020333220333222207374796C65
          3D22656E61626C652D6261636B67726F756E643A6E6577203020302033322033
          323B2220786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C7374796C6520747970653D22746578742F6373732220786D6C3A7370
          6163653D227072657365727665223E2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C61
          636B2220643D224D32392C32483143302E342C322C302C322E342C302C337632
          3463302C302E362C302E342C312C312C3168323863302E362C302C312D302E34
          2C312D3156334333302C322E342C32392E362C322C32392C327A204D32382C32
          36483256346832365632367A222F3E0D0A3C7061746820636C6173733D22426C
          75652220643D224D32302C3134483130762D326831305631347A204D32302C31
          3648313076326831305631367A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D225A
          6F6F6D5F496E2220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D2242
          6C75652220706F696E74733D2231382C31322031342C31322031342C38203132
          2C382031322C313220382C313220382C31342031322C31342031322C31382031
          342C31382031342C31342031382C313420222F3E0D0A3C7061746820636C6173
          733D22426C61636B2220643D224D32392E372C32372E334C32322C31392E3663
          302C302D302E312D302E312D302E312D302E3163312E332D312E382C322E312D
          342E312C322E312D362E3563302D362E312D342E392D31312D31312D31314336
          2E392C322C322C362E392C322C313320202623393B73342E392C31312C31312C
          313163322E342C302C342E372D302E382C362E352D322E3163302C302C302C30
          2E312C302E312C302E316C372E372C372E3763302E332C302E332C302E392C30
          2E332C312E322C306C312E322D312E324333302E312C32382E322C33302E312C
          32372E362C32392E372C32372E337A20202623393B204D342C313363302D352C
          342D392C392D3963352C302C392C342C392C39732D342C392D392C3943382C32
          322C342C31382C342C31337A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2247
          72616E645F546F74616C735F4F6E5F526F77735F436F6C756D6E735F5069766F
          745F5461626C652220786D6C6E733D22687474703A2F2F7777772E77332E6F72
          672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F
          7777772E77332E6F72672F313939392F786C696E6B2220783D22307078222079
          3D22307078222076696577426F783D2230203020333220333222207374796C65
          3D22656E61626C652D6261636B67726F756E643A6E6577203020302033322033
          323B2220786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C7374796C6520747970653D22746578742F6373732220786D6C3A7370
          6163653D227072657365727665223E2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D262331333B262331303B2623393B2E7374307B6F706163697479
          3A302E37353B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C
          61636B2220643D224D32372C32483543342E342C322C342C322E342C342C3376
          323663302C302E362C302E342C312C312C3168323263302E362C302C312D302E
          342C312D3156334332382C322E342C32372E362C322C32372C327A204D32362C
          3238483656346832305632387A222F3E0D0A3C6720636C6173733D2273743022
          3E0D0A09093C7061746820636C6173733D22426C61636B2220643D224D31382C
          3130483856386831305631307A204D31382C3132682D38763268385631327A20
          4D31382C3136483876326831305631367A222F3E0D0A093C2F673E0D0A3C7061
          746820636C6173733D22426C75652220643D224D32342C3130682D3456386834
          5631307A204D32342C3132682D34763268345631327A204D32342C3136682D34
          763268345631367A204D31382C3232483876326831305632327A204D32342C32
          32682D34763268345632327A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2252
          65646F2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F637373223E2E426C75657B66696C6C
          3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C75652220643D224D31362C313056346C31362C31304C31362C3234762D
          3643302C31382C302C32362C302C323653302C31302C31362C31307A222F3E0D
          0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
          233131373744373B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D22517569636B46696C746572223E0D0A09093C706F6C79676F6E20636C61
          73733D2259656C6C6F772220706F696E74733D22302C322032302C322032302C
          362031322C31342031322C323420382C323820382C313420302C36202623393B
          222F3E0D0A09093C7061746820636C6173733D22477265656E2220643D224D33
          312C3134483135632D302E352C302D312C302E352D312C3176313663302C302E
          352C302E352C312C312C3168313663302E352C302C312D302E352C312D315631
          354333322C31342E352C33312E352C31342C33312C31347A204D32322C32386C
          2D352D3520202623393B2623393B6C322D326C332C336C362D366C322C324C32
          322C32387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2246
          696C6C5F55702220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23373237
          3237323B7D262331333B262331303B2623393B2E7374307B6F7061636974793A
          302E353B7D3C2F7374796C653E0D0A3C6720636C6173733D22737430223E0D0A
          09093C7061746820636C6173733D22426C61636B2220643D224D32382C327632
          30483138762D3668342E374C31352C342E344C372E332C313648313276364832
          56324832387A222F3E0D0A093C2F673E0D0A3C7061746820636C6173733D2242
          6C75652220643D224D32382C33304832762D366832365633307A204D31362C32
          32762D3868336C2D342D366C2D342C36683376384831367A222F3E0D0A3C2F73
          76673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000013744558745469746C650052616E67653B46696C7465723BC978A1BF
          0000062549444154785EC5966D8C545719C77FE7CE0CCB2ECB7659DC055B087D
          13AA2CA02DD26A450BDA8D45A8E5AD2D35C63469524513131B9A603FF816931A
          D3267C5013633555A3AD544068A15A4BC952DD2D45A56597BEC0160B5D587658
          7687DD9D9D997BCFF338B9793237E392A861124FF2E4DC97F3DCFFCB73CE3DC7
          A92AFFCFE62E63DCE58426042C2E13DCFD97B96A21D6E37EF4CBBFEEC7B1021C
          28A8914315C5F1F1F14700454541412DD42E54B15E510150BA5B1EADC0A953B0
          F138102F071EFEF2CADB010F685A61C5839B6EBEB43FC03BBB1671DD6DEB50C4
          5E242C544D88588FF2D64BBBF9EAC65BAB3D40B14CB63D71F03620C05C488B08
          0A8491E200D56A2A677BBAB97AC97CFC44B6022C2A3823A0A280911161E0E8DF
          B8769D6082ABC404CEA12255A5498B2460A200CE482BEAC04782F808894A896A
          5114E26BE2B012A9E0BDB75240029590F1AA00418540AC22CE75E0CC5AC03820
          91A03E44C210879A8204D01CB1C14A3CDED020E9150507EA056BE680B7DA3AAD
          D8BF675F276BEEF824003E2610A15109D56AD51879B31F3002F6A13F3CFB129F
          5FBDC2D4BBB8F766B3056911ADA85594DDCF1D60573971CD1DCB515CAC48A210
          2D47627FA25E3506B439A1F8484C9063FBCE3FE245587BE7A7EDBDC3F05CE280
          150C945D7BF6B363F78BA80D86F88331B8940331756A6550C59E59083E52D414
          4561C8D3CFEC43BC67FD5D1D3840F4DF08785BBB478FF5F1F4EF9FC7B24D05C4
          0EF89295405131E5D565B05ED048B0461445A0F0DBEDCF32FF03F358D2BE00F1
          9356810760E10DD7B176F5CAD836C06C06F18A86B10349AD550DD4C7BD11B255
          A0600E465108C0C675AB68FFD07C14875C6A0E58FDD9B0F6B344DEF3BB1DCFA3
          009094202C99E244BD5A40E28678B15C8D1DB867C36A366DFC9CA55A6E950395
          35ED70C0BD1B57251F5145BC580942AAED4E26A2A2204C22707759F9A67BD610
          031BA49F34094530341407EACA49AB4D9143BCC6E0E243D0E43F80A947D47205
          8441F1FA1AC2BBE086EFBBF7CE22AA83EA1CA8B6A1D4A9E80C20AA72C00803C6
          DD25F7E22BCB300135DBD57255342722BBF345E96D9AD3B4A86FC75716FBD1EC
          55BE5498AAC5D19912091A340C790D8A37E6D2677E71FF822F1E787364C7935D
          E7869239306937325D5E91A814937060A0560A231389FC786894B9A9FA966F2D
          BBFBBEFAE9F39652D73417974A13641A510DF11367674A718C89EC892B87DE7A
          75E955EF3BF8E8F26BA63D64734049C5EE9B7475E088FBC69666F025D20DCDA6
          1CACFE567BA5500CB32285AD373DF014FD87BB38FCF327C9FDB387D19347A96F
          CA30ED8A3AEA67D4D3BA7031CDF3AE67F6473EC6BC151B9AF66EB9FFA7EE1BDF
          D9FE623A9D59A9B8642E284600161FF9BA0975387B5769763F11CA9645B7CEF9
          F692BB364DABBF7229A9E9EDA894408BA06125A2FC45C6FBDF2655EA67ECD42B
          74EDE91D724003900682C9A798E4FE3F3CF3CF6DBDE967EDCB6F59DF565639A5
          AD8320D34634FC670AE7FFC2C4853718EB2B3170E43499A919DE7F432B23C363
          1CEA1AD899068A40E932CF81EEDC48E1A95927DE59DF3CE76A82A9C74937A510
          DBC8A4E429E50B04CE51D7984150CE9CBCC8E9A1E233AE46875807D4EF7DF8C3
          FB172CBB7159CB35D7D33077395AE8A73074907CF604177A2F3291CDD33C7B3A
          63855259FD99BF3FB8F3BD95E9FFF158AE9744774E81E2C13786376782232F14
          47C766B48CE6A9BB6216A591118AA3254A852275D3325C181EE7584F76A4B36F
          F46B403E4D8DDA9F1E5A1C753CF6FAEB83C3C54FADCA157E35EB54FF92A6D699
          65D088426E8CC28467F0EC454E9ECA1D7DA12FFFA5BD27C68F0151408D5AEEC2
          04877FF089F0899707DEDCFCEBE31D9DDDEFFEB0E7E51E5A3FB888E94D5338DE
          3B4CE76BD9C7BFD739D45106EF054ADB3E33536BE680732051C8ABDFBF25FCE8
          23DDE7BFB9EFBD6DBFF9C2B55BA634CE26956900078F1FCA6D0306BBB6B60B22
          741F1E20A81D018746511C87BEBB5480C83947D03887D494A9B8C001845D5B17
          C6E0B62B523B07022380FD45210852019A6E4353F5468000B13D44B5B60462B0
          C89B1B0048F919415D2B41AA8E201D0048722AA6C60EA403CEE592D312903F7E
          BEF0D8F6076EDFACAA9C2C063F01C65FF947B63A4F556B52FFC98D94FDE61B01
          078C01E3802769FC0BD77F94C63A1C2A3D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000040744558745469746C6500436F6E646974696F6E616C466F726D6174
          74696E7349636F6E5365744172726F7773333B436F6E646974696F6E616C466F
          726D617474696E673BFDCD101C0000078249444154785EC555696C95C7153DF3
          FC81716C2031E015CA623050A5844280A4A1B1CB6276190A82AA0541042D5431
          7208B46C499A0815940AD236AC25C115AD40D4C4A5A46531C62CB6C12D5241D8
          0E8BB1E34078F6F38AFDBCBEF7CDCC6DEEB71857A2BF6CA9479A6FF434F7DD73
          EE99ABB9627BC62B6010D91F82C0AE35FF14EB774F18161611925151E15F7DF2
          C3FB152B77BEC88780B66339FCCFEF95808870736F12F88CEC0FDC842F6F28F0
          DCD833B5BCF48BEAE9CB331E549C5F3F96A0001204687B379422AC5EB499D9AD
          356AE012B16EE7F8E1515103AEBE3E71F6E0AC8E53790BDFA2A4A3DB4ABE2CAD
          CD242664ECD8FB015C045A0398F2E66F3A89C9C9850DD33CA4F5B0C1F1D17947
          96ABA4D97BEF7E29EBB3C9A916D9DBD2E1D1CA2D4B5BE46B3E183722266E50DE
          ECD7160E369E6BC3A259B3E3E3070FCA9FBF2E212171D0520F91022F16EE4249
          0DD2B27341DA8B41923071C5DAF8E1F1D1F99FFC68F80863C02C41DA0449135A
          01D8B87F124A6B320140ACDCFEE2C8F78ECC787CA37C3F5D29DB4E7FBDBD9CFE
          767B255D2C799FD6EE7AB572E6CA6189003C77AB8F61D92FC782E1381202C078
          C6EA737DC7140A7A4F5053C93ECAD938A5F2C0E261233947B0320BA7578D84A1
          349018B5D4F3E35F8C4D18322CFAF2DCE4D4F856F5184FDA1F426A1320C04F65
          58327F7A6CA6CCBD9ABC4CFF606CF44F1E2CD93846C141CE96F1B9E111A1494F
          FBC8DE194A6968B31D86A8C1A4E54B63F5D11379BF5DA0927AC72D2E3FB52241
          0B56B3F4AD31231346C75C5E3073515C87AA4443DB2328323B9B12D0303C7DD0
          D733149959977CA5C595D3F24F7D5DCAF9D9818B9BC753F286F7D90D4780BD43
          DBD74B8126487F19203C30E5F3F8D79F4E56DD2EAB4EDE7CDE5B267EF8E6E8D1
          A3BE1D73293565715C48AF0E347654422B138DED55705A1BFDC3A2390D3CECB4
          EA87CCBF5CACBE5F5435ADF01FDEFB44A4B2DF1E47C9EBD3211B4B9DCA6D7282
          B6764DFC5FDE35402130C1223EAF2AAAF0251BA28FCA2EABF0C6ED39F8B155C1
          C0817D919A3A0544CAB11290A470FAD40DD4D6B4D80484E80143FA5C0030C2EA
          C1A004C900C80CD864CCAF35880919A4A158101104691821418C9BFF7A6CC7F1
          BF1F35B2F6948D06E0012CAF4357EF78A9A17F583C9EB456595632B4B2BBFEF3
          7DE55100DA61430190D6B9246833081D0C5A248AC82167B10EB1258840C28356
          BFC299C3677D5F7CD5B0DA484D4B08ECD8BAD5227B29FEA7424982D28AED72E8
          D93A09AD38213A6E7E7D806DC0B60F76E3FCA715604853816410C2E8CBD110EA
          69E570AA9681060808B4B6699CF9E48AAFF851E38C03779AEF1B2F0C088776D5
          02C27E1714E8BF04B0036008B73216E8A2D2DB9CFBD9B6DF4FD756B5B69544F6
          8A8CEC83E435292029D1DA2E7026A3C057FC55E38C83F75AEE01D006574C509D
          02D86A45CABE434160588E28E71CD28A25854EA465FBE674B9C6AE08CD5A36BC
          51F48E404B4DFD37E485BEA2878D330F97B65AE43B27F6274369B73B1D0734A0
          9910DAB942FB0A94B6CF890304F07C64385C7C3A2BD65CB633DD8A85B318FD26
          6F07BBD25CD7843347AEFB8A1E3531F95D266FBCF60EED4FDB0B8314DB26C170
          AF8009C37AF563A3AD5C4A6B68A762E2D209E03817C4454893F3826177BB2358
          114E1F385F7DEB61534AC603873C7F0B9196569CA13561CBBB1FC181E97BEC2F
          F87057D65477E2096742CAA02AE0F32DDBF782F1C2C0A70E708E0BBB8F3C7D05
          F94BCE91A6C7B72A9ECCCD286BBDC3A1BF1EDF8FF6AF3FC0A1CF44088070CE0F
          604097150920C239EF0ADBF6FF0D0F805E4E5E8167407082FF278CA2F434B812
          C67FBCDF732B3DED1C944E01A88B4D04A974CEE44387E7FCFBE76B952BFAE543
          87D1DD028C266F0D26AC4AB5457C23A0B9B22EE5BB2BE602DA65B7F7C23F64CD
          644B1353262B00B87630AB671CE07149AACB3B2025748B1FC18A070E3FC11814
          05252D5E41BC13A04CD53302B49280964C6F0B500A244DB844FC215341ABA702
          8805A81E12A0A48696D2755A68FECD84D2B405100F1AB38B03A63DEA7B4E8072
          AA25478004A40499D29E68049E726EC51E4B9806068DFC1670AD0704CCC939DB
          1B39673BC7B1540A3A186052F741E151EB4EC3B0C837368A2EE3988374B7045C
          7F6355A91062A87BDF35E55E9069F272461AD3D85790BF62459D1BA73579938E
          1F4B0010E896801397F2E74D8E8DB990B43839EEB98870244E1A05DDEC8736ED
          BE10B07B2069E12B08090F47B3BF05278E9DA929F4D5CC0320D14D0816F1B3F8
          A163BF17139D3DF5B531B1A1813668259D9EA0CE89283C1EB48B5EF82CF766CD
          F5BA86D9679B1B4B580075F325320E257E47AE2B2DBE6B4A35475D55E7BEFFEA
          A8D85015B4BBDCCD2D04DAC840D6959BB54C7EAEC526B71476131EA7B9D41FAB
          1FDFC9F57AE75D2EB8E76B8701680D9212D00A6D247032F7566D5E6DDD1C977C
          53640CA107E051A451BD731371D2E375BE92DCAAAA79970B4B2D114440B31238
          79A5B836AFBE616E4EABBF98E32ADF4923AD093D23406950C044D5AFD22D1199
          F5D5C5177CBE05976F9457D777689CCCBB537DB5FEC9BCDC367F1100D3BB751D
          91D3233D01F1D19051EE44B3F64DDE72C1337C61FF81E3268485EFBBD2F424ED
          52BB4DFE76FF28D24027F9EFFCB5DD9E86FF01C07D16A8E02E27DE0000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000011744558745469746C6500446F776E3B4172726F773BBDFC82580000
          054949444154785EC5576B6C1455143E77765BB6A52F94572421FE43629598E0
          0F125F1053E2E387F1111225FCC184289A28602AD83F4D5684180D181F140289
          0643404C5A68402A058152207D00A5DDED63BBDD6E5BA8DD2E6BA58F7DDC7BAE
          7BEF9C19596BD88E89619293BB33B373CEF77DE77167989412EEE761C07D3EDC
          779F30C666EAE05E7FBCA7A4FF54DCED2020CB1E9C00903955C0B6CF8EB68109
          546A2F9FBCB18C790F5F3BC100564B60E675722FAD98D264178B8DD7EDDAF8CC
          8B00801F7C7BC126BC7BE3D33307802861D3AB8F69E7F96E43B39720576F7A6D
          994D525394D3A957EC6D2CA3DAC2CAF52BCC6B55179D298052DACCE830840098
          E408ED7F24CC3B088094536588008B0ADC2010810030CB8D40E91080908099F4
          18228290A63A529A1A2052B2D1FC3F2205A33A414A9510E81000CA6905881484
          2B143673A5960D00520A24BF0B800402201C01D032CACC86624220494D924BC8
          58A562AF9413DC063D372F870D4F24A5E0CE52C0BCEB9683779DDD6E86321598
          2B13044003D4800804DD3783B9E83958383B5766B46716008C02BAC8ACF31CCE
          11B880B409407265B32720292EAD7C7BC80F52504E26D47936055C9BF75E4E00
          3996946FA18BD052C0EC14A0D52ACC94402828C8830D5F9E1BA13AB167C6BE2D
          2BF32C40D91460A978A2764DD9D297972C9E03773764748A6B89911C23E51EA9
          16521CE1FDB54F4241AE6117A02F380ADF57379F527EB3D600C5C1C0F50B1F1D
          F3E4AE7A7EE592FCD184B0BAC26E3F29993E41CBD0BC178EC521149DB45393EF
          32E0B7FA8EA9BEAB67B658EC6704E0C4FE8AFEB98B977ADB3A0AB7CF5BF40024
          5411B80CBBFD084F4601521AF49AE4025CC0A0AD671022B7867634D57E15A21A
          C80A0008293FFEDDE6AA9C0FF7BDF9ECBCA2D2B1B8D015EEC971813BC7D06A1A
          1A0FD345278454AB4E4122298031801C8110EC1AF49F3FB86D0F0024C9EFB483
          5E48A66DC7CAFDACB2F53B57942E7FEAD7D2271E366EC6A6480106C04CB6F640
          A2A98394A6E27C37B434766277F3B9175A8EED541B817A181D6CC7DA67AA6E7F
          7973F1FCC307162C287EDB53381BC6931C98BDF35163DBE7666D78D20A0D0623
          303C30F4433A7813B1978EDE88D67AEB24214EB4FCB2FFD376DFE0C8EC1C531D
          21CC561448434898D704D147CEA1ABA32FE23F7BC04BCCC5AA770E3903203842
          EBE01D5D0BC1AB75A33783BE725FFB1014CC72EBAA27231048ED282137D705BE
          AB41F83DE4AF180E5C8AA8E7CFF4DC46CE053802C0050247B40A32597F60D3F1
          BEDEF0E989D804B80C06889A31AD661B1ACC80E8AD188403E1B3AD3595D54A3D
          C525A5D4710880640668EC1BB3C6683CD054BBCD776360CAE332F4F091C45C1B
          221880D0DE1A880FDC38B9150026158F93FEA814526F6E4E01A066C6A5BD2726
          3B1B7E0CDCEAEFFE22D43BAC6782662E4CF6EEF479777B1822E1DE5D03D76A02
          C41E39A2561353D2690A04A4E8E1740E256D22F12B3F57EE0D760DF853F1B8F5
          E6A4D7F1B10908FA7BBBFDA73FDF43EC454D7B44B1A71D943B4F814050A62BFE
          546754D74262FCF69F43FE868FBB6E0CA0DB30F4E6E462001D4D5D38D273B13C
          353536A6DA57A9A6141282F60A44E72F249CE6AD5E983D21E3BEFA6FAE142E7C
          E450C9FCE2B74A16CC81FE9E21180E058FF4371DBC6CB5DD4FD746242A02A4BC
          7300D4E7B4F9D863840A72A2FBFCBE1D79455B573FFE60D1DCC0F54034DC7C70
          BBCA84BA4FA0335EDDADF8331EC5CFBD7B444F351A71F6EFF3556B18812E7CF4
          A58AD74B1E2AAD1AF25FDA106AD87D1400EE2800A5AF7C2DFFED13A9A3FA3D6B
          74670390FD0B8940E4A52D97466DDCCAFDFFF56996418A8221553C7509DDFFCF
          1FA7CE4188E9D79C1F7F01A1F10A94BB25B4830000000049454E44AE426082}
      end>
  end
  object Producao_Roteiro_Organograma: TFDQuery
    AfterInsert = Producao_Roteiro_OrganogramaAfterInsert
    BeforeEdit = Producao_Roteiro_OrganogramaBeforeEdit
    BeforePost = Producao_Roteiro_OrganogramaBeforePost
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUCAO_ROTEIRO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'SELECT PO.*, PP.TIPO_PERGUNTA, PP.DESCRICAO AS PERGUNTA, PP.OBSE' +
        'RVACAO FROM PRODUCAO_ROTEIRO_ORGANOGRAMA PO'
      
        'LEFT JOIN PRODUCAO_ROTEIRO_PERGUNTA PP ON PP.CODIGO = PO.CODPROD' +
        'UCAO_ROTEIRO_PERGUNTA'
      'WHERE PO.CODPRODUCAO_ROTEIRO = :Codigo')
    Left = 320
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
    object Producao_Roteiro_OrganogramaCODPRODUCAO_ROTEIRO_PERGUNTA: TIntegerField
      FieldName = 'CODPRODUCAO_ROTEIRO_PERGUNTA'
      Origin = 'CODPRODUCAO_ROTEIRO_PERGUNTA'
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
  end
  object DSProducao_Roteiro_Organograma: TDataSource
    DataSet = Producao_Roteiro_Organograma
    OnStateChange = DSStateChange
    Left = 348
    Top = 264
  end
  object menuRoteiro: TPopupMenu
    OnPopup = menuRoteiroPopup
    Left = 432
    Top = 244
    object Novo1: TMenuItem
      Caption = 'Novo'
      OnClick = Novo1Click
    end
    object NovoFilho1: TMenuItem
      Caption = 'Novo Filho'
      OnClick = NovoFilho1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
    object Renomear1: TMenuItem
      Caption = 'Renomear'
      OnClick = Renomear1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Expandir1: TMenuItem
      Caption = 'Expandir tudo'
      OnClick = Expandir1Click
    end
    object Encolher1: TMenuItem
      Caption = 'Encolher tudo'
      OnClick = Encolher1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object AbrirPerguntaVinculada1: TMenuItem
      Caption = 'Abrir Pergunta Vinculada'
      OnClick = AbrirPerguntaVinculada1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object EditarPropriedades1: TMenuItem
      Caption = 'Editar Propriedades'
      OnClick = btnMenuComposicaoClick
    end
  end
  object ImgListActionsFrameComposicao: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 15991244
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000B0000
          0011000000120000001200000012000000110000000B00000003000000000000
          00000000000053372FFF523730FF51362FFF51362FFF0000000A6A443BC2935F
          51FF935F51FF935F51FF935F51FF935F51FF6A443AC30000000B000000000000
          000000000000553931FF0000000000000000000000000000000FA87869FFFBF8
          F5FFFBF7F5FFFBF7F5FFFBF7F5FFFBF7F5FFA67566FF00000010000000050000
          000800000009573B33FF00000009000000080000000500000010AA7B6CFFFBF8
          F6FFF7F1EDFFF7F2ECFFF7F1ECFFFBF7F5FFA77768FF0000001014412DBC1C59
          3FFF1C593EFF1B583DFF1B583DFF1B573DFF123F2BBC00000013AB7D6FFFFBF8
          F7FFF8F2EEFFF8F2EEFFF8F2EEFFFBF8F6FFA9796AFF0000000F328062FF62D6
          B1FF60D5B0FF9CE9D3FF5ED3ADFF5CD3ADFF307A5DFF00000014AD8071FFCAAC
          A2FFC5A398FFC4A398FFC5A398FFC4A297FFAA7B6CFF0000000E378669FF6AD9
          B8FFA4EBD7FF2D7456FFA1EAD7FF65D6B4FF338062FF00000014AF8274FFFCF9
          F8FFF9F4F1FFF9F4F0FFF8F4F0FFFBF9F7FFAC7D6FFF0000000E3A8D6EFF74DD
          BDFF2F775AFF2E7759FF2E7659FF6EDBB9FF368668FF00000012B18576FFFCFA
          F8FFFAF5F1FFF9F4F2FFF9F5F1FFFCFAF8FFAD8072FF0000000D3D9375FF7BE1
          C3FF7AE0C2FF1C5A3FFF77DFC0FF76DEBFFF3A8C6EFF00000011B38879FFFCFA
          F9FFF9F6F2FFF9F5F2FFF9F5F2FFFCFAF8FFB08374FF0000000C419A7BFFB6F1
          E1FFB5F1E1FFB5F0E0FFB4F0E0FFB3EFE0FF3D9375FF0000000FB58A7BFFCDAF
          A6FFC8A79CFFC7A69CFFC7A69CFFC7A69BFFB18677FF0000000B327660C0439F
          80FF439E7FFF429E7EFF429C7DFF429B7CFF30725BC00000000CB78D7EFFFCFB
          FAFFFBF8F5FFFAF7F5FFFBF7F4FFFCFBF9FFB3887AFF0000000A000000020000
          0003000000036F4F44FF00000004000000030000000200000009B98F80FFFDFB
          FAFFFBF8F6FFFBF8F5FFFBF8F5FFFDFBFAFFB58B7CFF00000009000000000000
          000000000000725046FF00000000000000000000000000000007BB9183FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB78D7EFF00000008000000000000
          000000000000735247FF735146FF725146FF715046FF000000048E7267C1C09A
          8BFFC09A8BFFC09A8BFFC09A8BFFC09A8BFF8E7267C200000005000000000000
          0000000000000000000000000000000000000000000000000001000000040000
          0006000000060000000700000007000000060000000500000001}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002000000080000000C0000000D0000000D00000008000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000007674337BF8E5E4DFF8E5D4CFF8E5C4BFF644036BF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000009A67667FFE5D6CDFFE5D5CCFFE4D5CBFFA47463FF000000000000
          00000000000000000000000000000000000000000000000000004E362CFF4E35
          2CFF4C332BFFAB7C6CFFF3EBE7FFF3EBE6FFF3EBE6FFA87A69FF000000000000
          000000000000000000000000000000000000000000000000000050372EFF0000
          000000000004825F54C1AF8171FFAD8070FFAD806EFF7F5E51C2000000000000
          000000000000000000000000000000000000000000000000000052382FFF0000
          0000000000030000000B0000001100000013000000130000000C000000000000
          0000000000000000000000000000000000000000000000000000543A31FF0000
          00000000000779584CBFA67C6BFFA67B6AFFA67A69FF76574BBF000000000000
          0000000000000000000000000000000000000000000000000000563B32FF0000
          000000000009BB9486FFE5D6CDFFE5D5CCFFE4D5CBFFBA9283FF000000000000
          0000000000000000000000000000000000000000000000000000583D34FF573D
          33FF543B31FFBF998BFFF3EBE7FFF3EBE6FFF3EBE6FFBD9788FF000000000000
          00000000000000000000000000000000000000000000000000005A3F35FF0000
          00000000000490756AC1C29D8FFFC19C8EFFC19C8DFF8E7367C2000000000000
          00000000000000000000000000000000000000000000000000005B4037FF0000
          0000000000010000000300000005000000060000000600000004000000000000
          000000000000000000000000000000000002000000080000000C593F35FF0000
          000D000000080000000200000000000000000000000000000000000000000000
          00003B2822C200000000000000000000000779584CBFA67C6BFFA67B6AFFA67A
          69FF76574BBF0000000800000000000000000000000000000000000000003E2B
          24C251372FFF3D2923C20000000000000009BB9486FFE5D6CDFFE5D5CCFFE4D5
          CBFFBA9283FF0000000A00000000000000000000000000000000412D26C2553B
          31FF533A31FF523930FF3E2B25C200000008BF998BFFF3EBE7FFF3EBE6FFF3EB
          E6FFBD9788FF0000000900000000000000000000000000000000000000000000
          00000000000000000000000000000000000490756AC1C29D8FFFC19C8EFFC19C
          8DFF8E7367C20000000500000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
          00000000000100000004000000090000000D0000000F0000000F0000000C0000
          00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
          0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
          1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
          02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
          50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
          3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
          C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
          7CFFEFE6DFFFCDA67CFFCDA36EFFE4C693FFEFD9ABFFE9D0A4FFD4B284FFD0AE
          88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
          C9FFDDC1A8FFC99966FFE8C085FFE9C388FFEDCB99FFF0D6ADFFF3DDB8FFD6B3
          8AFFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
          F2FFC79873FFDEAB77FFEFCDABFFF4DBC3FFF2D6B6FFF1D4B0FFF4DDC1FFF0D9
          BDFFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
          FCFFBE875FFFEDCFB9FF682612FF8A3F22FF8C4024FF8F4225FF924427FFF1CE
          AEFFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
          F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78FFFE7BC
          9AFFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
          D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBB08AFFCA8F
          6FFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
          A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88967FFCE9D
          84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
          4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
          F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
          020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
          A2FC62504B900404031000000002000000000000000000000000000000000000
          000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
          1F3E000000060000000100000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
          00000000000100000004000000090000000D0000000F0000000F0000000C0000
          00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
          0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
          1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
          02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
          50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
          3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
          C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
          7CFFEFE6DFFFCDA67CFFCDA36EFFE4C693FFEFD9ABFFEAD2A8FFD4B284FFD0AE
          88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
          C9FFDDC1A8FFC99966FFE8C085FFE9C388FF8F4B24FFF1D8B1FFF3DDB8FFD6B3
          8AFFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
          F2FFC79873FFDEAB77FFEFCDABFFF1D2B5FF8F4524FFEDC99EFFF1D4B2FFECCF
          AEFFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
          FCFFBE875FFFEDCFB9FF682612FF8A3F22FF8C4024FF8F4225FF924427FFF1CE
          AEFFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
          F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FF8B3C23FFF1CEB6FFEBB78FFFE7BC
          9AFFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
          D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FF6A2213FFF1C8B2FFEBB08AFFCA8F
          6FFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
          A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88967FFCE9D
          84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
          4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
          F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
          020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
          A2FC62504B900404031000000002000000000000000000000000000000000000
          000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
          1F3E000000060000000100000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002000000060000000900000006000000030000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000040000
          000A000000160000001F000000170000000E0000000400000002000000060000
          000A0000000A0000000A0000000A00000007000000040000000A000000120000
          001B3D29239C714C43FF311F1A9C0000001E0000001000000009000000140000
          001B0000001D0000001D0000001B000000140000000D0D09073221161369251A
          1579725145F5C2B0A7FF5F3F36F52316137B1D13106C0B0706380C5435C71073
          48FF107348FF107348FF0F7246FF0A5032C70000000F523B32BC987F76FF8467
          5DFFBFAEA4FFE2D9D2FFC6B7B1FF7D5F56FF896D63FF472F27BE148457FF70F0
          CEFF70F0CEFF47E9BAFF47E9BAFF117D51FF0000000D3C2C287EA48A80FFECE7
          E3FFBDA69CFF9E7E70FFC3AFA6FFEAE2DEFF997C72FF38282381169665FF92F9
          E1FF92F9E1FF92F9E1FF8CF8DDFF158E5EFF00000010000000198A6A5CFCEAE4
          E0FF8B6B5FFF281E1A6D8B6B60FFE7DFD9FF765549FC00000019137A55C117A3
          70FF17A370FF17A370FF18A06CFF13754FC50000001842332C89AC9388FFEFEA
          E6FFB19E98FF755349FFAC978FFFE9E1DCFFA1887EFF3A2A2483000000000000
          00058A6657FF00000016000000160000001A989898A4B9A197FFB7A095FFA88A
          7FFFD9CDC7FFF6F3F1FFD4C5BEFFA4877AFFB1998EFF665146B9000000000000
          00028A6657FF8A6657FF8A6657FF8A6657FF99796CFFEEE8E5FFE1D7D3FF3228
          235997786AF3E2D8D2FF8E6E62F23127225830252153120E0C22000000000000
          000000000000000000140000001E8A6657FF0000001E00000014000000060000
          000257453D8AA28273FF54413A8A000000020000000000000000000000000000
          0000000000009E693CC9CD874CFFCB8549FFCA8347FF9A6334CA000000090000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000D19158FFF0CF9EFFEFCB97FFEDC791FFCC874BFF0000000A0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000D59861FFF6DFB9FFF5DBB3FFF3D8ADFFCF8D53FF000000090000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000D89F6AFFFBECD0FFFAEACDFFF9E8C9FFD3945CFF000000060000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000A87F58C4DAA36FFFD9A16CFFD89E68FFA4764EC4000000020000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000009060533231815CC000000000000
          00000000000000000000231815CC0F0A09550000000000000000000000000000
          00000000000000000000000000000C080744291C18EE0F0A0955000000000000
          000000000000000000000F0A0955291C18EE0C080744000000001D1411AA2C1E
          1AFF2C1E1AFF231815CC00000000231815CC17100E88231815CC2C1E1AFF261A
          17DD2C1E1AFF2C1E1AFF231815CC17100E88231815CC00000000000000002F23
          1FEE2E221EEE000000000D0908442F221EFF0C09084400000000150F0D77150E
          0D772C1F1BFF201613BB030202110C0807442C1E1AFF0C080744000000003429
          25EE332824EE0000000019131177342824FF0A0807330000000000000000271D
          1ACC30231FFF0D09084400000000090706332E201CFF150F0D77000000003B31
          2DEE3A302CEE00000000201A18883B302CFF04030311000000000B090833372B
          27FF2B221ECC000000000000000003030211332622FF1B141288000000004038
          34EE3F3733EE000000001F1B1977413834FF0D0B0A33000000002E2623BB3E33
          2FFF211B1988100D0C44000000000C090933392D29FF1A151377332E2BAA4C44
          40FF4B433FFF3B3532CC1311104448403CFF1311104438322ECC453C38FF443B
          37FF312B28BB423935FF2B2523AA110F0E44403632FF110E0D44000000004C45
          41EE4B4440EE0000000000000000443E3ADD2925238800000000000000000000
          000000000000000000000000000026221F8838322ECC00000000000000003733
          31AA4D4844EE2C292788423D3ACC161413444D4642EE1B191855000000000000
          000000000000000000001A18165548413EEE1412114400000000000000000B0A
          0A22423E3ACC534D49FF322E2C99000000001C1A1855423E3ACC000000000000
          00000000000000000000423D3ACC100F0E330000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000010000000728130D8B8E6051FF8E6050FF8E6050FF8D5E
          4FFF8D5E4FFF8C5D4FFF8C5D4EFF8B5C4EFF8C5C4DFF6A453AC8000000000000
          00000000000100000006371F188BB39890FFF6EFEBFFF6EFEAFFF6EEEAFFF6EE
          EAFFF6EFEAFFF6EFEAFFF6EEEAFFF6EFE9FFF6EEE9FFA17564FF000000000000
          0000000000043B221B89B99E97FFF7F0ECFFF9F4F1FFFBF8F5FFF9F4F1FFFBF7
          F5FFFAF7F5FFFBF7F5FFFAF7F5FFF7EFEBFFF6F0EBFFA67A6CFF000000000000
          000000000007B38B7DFFFBF8F6FFD4BEB4FFB58F81FFD5C0B8FFFBF8F6FFB087
          78FFAF8676FFAE8676FFAD8575FFF7F1ECFFF7F0ECFFAC8273FF000000070000
          000B00000012B99484FFFBF9F7FFA1786AFF00000021A1786AFFFAF6F3FFFBF8
          F7FFFBF9F6FFFBF9F7FFFBF8F6FFF8F2EEFFF8F2EDFFB2897BFF794927BEA865
          36FFA46334FFBF9A8CFFFCFAF8FFC2A89FFF8C5D4EFFC1A69CFFF9F4F1FFBA95
          87FFBA9587FFB99485FFB99385FFF8F4F0FFF8F3EFFFB79182FFAA693AFFD499
          5EFFD2995DFFC69875FFDFCCC4FFFCFAF9FFFBF8F5FFFAF6F2FFF9F5F2FFF9F5
          F1FFF9F5F1FFFAF5F2FFFAF5F2FFF9F5F1FFF9F4F1FFBD9889FFAD6D3DFFD59D
          61FFFFFFFFFFDCB184FFC99C78FFE0CEC6FFFCFBF9FFFCFBF9FFFDFAF9FFFCFA
          F9FFFCFBF9FFFCFAF9FFFCFAF9FFFCFAF8FFFCFAF9FFC19E90FFB07141FFD79F
          64FFD7A065FFFFFFFFFFD49D63FFCA9E7AFFC6A496FFC6A496FFC6A496FFC6A4
          96FFC6A496FFC6A496FFC6A496FFC6A395FFC6A394FF967B71C5B27445FFD8A3
          68FFD9A369FFFFFFFFFFD9A267FFD6A166FFFBFBFBFFDDB489FFFBFBFBFFD49D
          64FFAB6E3FFF0000000D00000004000000040000000400000003B5784AFFDBA6
          6DFFDBA66DFFFFFFFFFFDAA66BFFDAA56BFFE3BB8EFFFFFFFFFFE2BA8EFFD9A4
          6AFFB17445FF0000000800000000000000000000000000000000B87C4EFFDDAA
          71FFFFFFFFFFFFFFFFFFFFFFFFFFDCA86FFFFFFFFFFFE4BD91FFFFFFFFFFDBA7
          6DFFB47749FF0000000800000000000000000000000000000000BB8152FFDEAD
          75FFDFAC75FFFFFFFFFFDEAC73FFDEAC73FFDEAB73FFDEAC72FFDDAB72FFDDAA
          72FFB67B4CFF0000000700000000000000000000000000000000BD8456FFE0B0
          78FFE0AF78FFF1DCC3FFFFFFFFFFFFFFFFFFE0AE77FFDFAE76FFDFAE76FFDFAD
          75FFB98050FF0000000600000000000000000000000000000000C0885AFFE1B2
          7BFFE2B27BFFE1B27BFFE1B17AFFE1B179FFE0B179FFE1B179FFE1B179FFE0B0
          79FFBC8455FF0000000500000000000000000000000000000000946D4ABFC792
          64FFC79264FFC69263FFC69163FFC59163FFC69062FFC59061FFC59061FFC48F
          61FF916947C00000000300000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000ABD2EEF9AFD7
          F4FF76B2DFFF22292F313440494C76B2DFFF76B2DFFF050607070001020400A1
          FDFF009BF3F5000608080005070700A1FDFF00BFFDFF00BBF7F9AFD7F4FFAFD7
          F4FF76B2DFFF76B2DFFF76B2DFFFAED5F2FD75B0DCFF07080A0A0003040400A1
          FDFF00BEFBFD00A1FDFF00A0FCFE00A1FDFF00BFFDFF00BFFDFF76B2DFFF76B2
          DFFFACD3EFFAAED5F2FDAFD7F4FFA9CFEBFF75B1DDFF07080A0A0004050500A1
          FDFF00BFFDFF00BFFDFF00BEFBFD00BBF8FA00A1FDFF00A1FDFF22292F3176B2
          DFFFAED6F3FEAFD7F4FFADD4F1FF76B2DFFF76B2DFFF13181B1C0010151500A1
          FDFF00BDFAFC00BFFDFF00BFFDFF00BEFCFE00A1FDFF001D27273440494C76B2
          DFFFAFD7F4FFAFD7F4FF76B2DFFF76B2DFFF1F262B2D000000FF000506060007
          0A0A0099F0F200B5F0F200BFFDFF00BFFDFF00A1FDFF0015222276B2DFFFAED5
          F2FDAFD7F4FFACD3F0FC76B2DFFF0405060600000000121110240D0C0B1D0000
          000000060808009EF8FA00BDFAFC00BFFDFF00BEFBFD00A1FDFF76B2DFFF76B2
          DFFF76B2DFFF76B2DFFF080A0B0C0000000000000000010101FF1615135F0000
          0000000000000001020200A1FDFF00A1FDFF00A1FDFF00A1FDFF000000000000
          0000000000000000000000000000000000000000000019181696010101FF0303
          0325000000000000000000000008000304040004060600070909010102020101
          0303010103030000000000000000000000001817162C0606050C1D1B19B80202
          02FF0000000000000000000000020000000000000000000000005234F8FF5234
          F8FF5234F8FF0202040400000101040403FF131211290605050B312F2B860101
          01F70000000000000000979702FF969602FE949402FA979702FF5234F8FF745D
          F0F05234F8FF5234F8FF03030707020202FF00000077070606180F0F0E9D0202
          02FD0F0F0013969602FEC6C600FCC8C800FFC6C600FD979702FF010103035234
          F8FF7B63FFFF6D58E2E25234F8FF06050D2B020202FB000000F3020202FC0101
          0020979702FFBEBE00F2C8C800FFC8C800FF979702FF3C3C004C000001015234
          F8FF7B63FEFE7B63FFFF6D58E3E35234F7FF0202050C020205090C0C00210202
          0018949402FFC8C800FFC8C800FFC7C700FE979702FF262600315234F8FF5234
          F8FF7961FAFA7A62FDFD7B63FFFF7B63FFFF5234F8FF010102020B0B000E9797
          02FFC7C700FEC8C800FFC6C600FDC4C400FA979702FF979702FF7B63FFFF7B63
          FFFF5234F8FF5234F8FF5234F8FF7A62FDFD5234F8FF00000101060600089797
          02FFC6C600FD979702FF979702FF979702FFC8C800FFC8C800FF7861F9F97B63
          FFFF5234F8FF05040A0A080610105234F8FF5234F8FF00000101040400059797
          02FF979702FF0303000502020003979702FFC8C800FFC3C300F9}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000030744558745469746C650044423B536F757263653B53746F723B6461
          7461736F757263653B44617461626173653B4164643B4E657722FBFACB000002
          8B49444154785E7DCE5168D56518C7F1EFFB3FEF71E8118732A9664AD344E782
          A4E8C2080BBD58811D8DD0C0180B73154A1122E1A54CD02B9D1769434548BA91
          290C4756A363CB226D93A00BBBB0CCCE6173B5ADE65C9EFDCFFFFF3ECFE3F042
          C641F681EFEDF3FC1C90F9AEE3CD2DD94CB43E72ACC0F429CC3589CAF510B418
          52B95949C2E54DFBBFEE06C4A631D3954FB7156EF4B4DBEDFE33F6EF6FDD3659
          EC351DBF6A776F74D9C8C0312B7EDB6EBF9E79DF7ADB5FFB01F066C6CC3CA61B
          5636BF0726A0092615D029E6D72D21B770112665EA1B1BF9E7E4A99780882A5E
          5221DCFB0B9F6B80081C8AA16814884787A8FC37089561240D008E2A918AA2E9
          04A13C02CC211DBFC264B193D16B1DFC79A19352A19BCA580909F2C8035E5361
          367E5E2DD9BA35D4AD5A0EF4659C7311A00F170409CC66EE138D9C1FF9999EA8
          977DA79FFFFF9313CF1580686FE75AF67CB6964852653696C9726B6298D62DBB
          D8F1C62E422AAF00D1CEB77693C48297205473991CBE7631B9154F1392409208
          A2C270F947924401FCEA856D00E6250D547335CBF8A2BF9B5B778631055523C8
          144948886361C781C629354352FDDEAB08D50CCF1F6343B4B5ECC44C0123D10A
          E974F9ADAB782CF702201C39FAF9CB7EF25EF2CDB5AEB3CDF54D2F52FB6413F3
          6A04E0C1A754624A777FC2503043119C1AC5F13E024625161C903BBCED99ED0B
          6A7C3E1BB1DC67DCCAC7D7ACCB5E9CF8C506E351170278EFC8BFB314C43877AA
          485C56540D09567080033C9005324034238068F3470D23BB3F7E7D7ACD55CE1F
          FF9BAF4E94160009A098597500E43F6CE0E2CD0F00E6BCDAB6CC7A7E7FD78E0D
          3C6B1B5B97185073EEFADB6C68598AE7D14862E1E8C12F01AC52D642477BEF46
          000DEE12A0C70F5D0607F701C8A46B6782959C4D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000022744558745469746C650044656C65746544617461536F
          757263653B44617461536F757263653B065FE940000002C349444154785E8593
          5D4894591C879F737C6D4A5DC96AA54D4BC21594095496BA32454476F7C6AE74
          A1A0A00B5B966097BD2A346865D9201665D90F840AC21B91F6C20C86325BC871
          CD6D6B5D898C4466D459AD1927751C67C671DE734E2FBC08C1ECB20FFCEE0ECF
          EFFF3F87237091633FB69E90D020A0DC187D1823BC4AABE75A993965AB59A5D4
          C3E60EDF10A08D03EF20277E6A1B99B9D365961EF79937D383263E3F6CF4EA84
          599FB965227FFE6CE647BACC54DF3973BFEBD351403A02B66301C2696CAAF8B8
          1D8C02BD855169D0290AF695905FB407A3921CA8AA227CEDFA7140021A1757A0
          320A3B3187957F18240834068D96369BCB8BA457FE81F42B54C60610BC830484
          561A9D89612723C00E32AB8F88CFF7B2FCA487C0502F0B0F0649471750B6FA57
          013AA3F87F40659F7357B0954D3602CFDE1AF6D6E6A19426AFB8106BF2570029
          8490B818CB35EB6CF37B47D0A94202BD83AC4E05A8EE3849496D33DF963EAB2D
          DFB9B37F4BEBBB3796C35FB997682BB2C82962AAFB16078E3653F3F525C62F76
          621D3948B5D7EBABEFBEB27B7174ECDCD695EE02E9BE42F60A5A6BA24EF3FB25
          05E486FEA2EE9B0B98509CC6AB97767B96A6D87FA8086D6890005A654F20A5C4
          7BA18DDBDFFD40623184083EA5EECB33C8B949364221063AAFAE4DAEAFB5E600
          B2A5E6838F92D14885D112838525A36436A6F1141D22BD2908DEFD83D2F26274
          78013B99C0DFFF9B999E099DEF59090F0B40009E5F4E557FB62B579EC8810FA5
          A4B2A2B12D371E8EEBF09D719ACEB64813F81B6D2B04406925BEEB43B1A78185
          4F042E02908005C86DE9F7C56593AD97DBCB7297A6D98C6DF0F8D19C397AECA0
          F0E4ED22BDA78C819E8179F763B8282769272927492091326A3C786F84B5A528
          C3F75EC6FCB3AFBF18BE3FB3BEF63A4AD0FF3B29A5262CFE1BFBDA6AE4F3CC98
          B17720EA67EDADD337639127A7B57E11F625FA9C26FFCDF8F2F9B7E61E7BE14B
          B7E8110000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000027744558745469746C6500526566726573685069766F745461626C65
          3B526566726573683B5570646174653BCE2F81B9000002D949444154785E8D92
          7B48946914C63F2F9997220802211A5128C882C255D7B4B551CB14C108F1D2EA
          AA38D3B6EABA3AB9BA5E721A2FE46DF29638339A94288EE688D1344C0682A5E8
          286B65D36639BA56DB7A5975839AB152779FDEF7EB53CCF9A70F7E9CF73D9CF7
          39E7F07C4C6175B7ACA8E62EBE065ACB308C05B3F1CBAFBC83D5FFFE877169C5
          8C77A6E57596575621A9D082085851916F037996AC405EB9862DAEBEF79A65EE
          DFF7985D5C62199B9A84AAA701254D6771BED20FA2F20824157B4BCE157A1D4E
          957E87C44B470E3159C5B7360AB00F67164C18181D4046650894DDC57830711B
          336F476964EF195521D00ED62341EC2E67328A6E5201DA79BDBBDE308E9FF2FD
          A1EEAF8561410BFD4C2B1E4D5F67E3F8BC06C38636BC7CD387F0B40360D20BBA
          364EC076AF5396BEA96DFF11BFBFAA42EBFD64FC7625902DCE2251FD301D3DCF
          73A19B2A4368E23E302249E7BA4055EF5F989E372232CDEBCFCE3E21D48F0510
          498F821FE5941424704145DB29748CC4A059170E8D5E8893092E6052C52A3381
          E8347EBA5FB493CE3FC609FC33BC0662D676F760C723C7A27857696E0DBFEF79
          0A2625AFC36C850BE22207F2682BC18EC3968BF604070A77B76192736F7CF11F
          BC357E44664D70CB2F64F4357E2EF55108C49E6E54949E692EA5CC47975CE21D
          CF9CCB6C6948CA69C767DA9098AD8440E281C5A567F8C7A8C7BCE90F6806E410
          4A3C119BED2694AB7EC582690C0F2734105CF41864E818DC483B083B09BBA83D
          4FE73A31F2BA1E83130A945E132036CB03979B92D1FBB8114F66DB51A74A4558
          8AAB980A5812AC095BB85D1DA83DBD06099AFB13D03D9689A117523C9D6DC4E8
          DF32F44D1642A68E475CB63B8E473BEF6500ACB12E7622CEB95EAA0C25DEBB22
          47C687421B86AE07F16CCC95FB21527410C49100DA74B38005C1CAFBF4EE6F02
          7E7002B5CE37624F21B16B98D8F681583BE41BB9A7C03DC8713FE792B5B90037
          85DD366B5A60BBC93A7B2E67C3AD6DF90981823369E83C28690000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000015744558745469746C6500446F776E6C6F61643B4172726F773BEC8F
          1AD00000023949444154785E75534D681341187DB3C98A37C18358A197D2AA85
          A220463C252D6AC5D26841F0E2A958905044114F9E440A82964A2E22A2077B11
          29D22262A968D5A412436D14FCA944A836C664B149BAA469F3373FCE245D1C08
          79F0F83EBE8FF786997D4B84105020844003A9B111DC691C9D010D63CF7A6AB3
          D1A7DDB3B2673AE56C5AED640F1D6E68E0655315C22AEEEEE1817BD071637CB0
          5719E42CCA9B19902BA75F186A46CB0C25B6827CF52B8400B618DB50A9504898
          2343615599A49084FE06AE6BE33E2A38A054E7CF5C855DFA0281BAC19D870F6A
          122E77C1CB5153EA68C31B247EAE4EEC6DDF8D813E3FAC7C0CAB450B76318D84
          3D0FFFA983E8DCD381CF0BD664B32BF0F8C75C4088E861BEF56FAB30F3E09C41
          080E0182D29A81278F13C9F4D27A60F30A0D5F41CC4D256D2B59189C9BFD2DB5
          04555691AC8231819793299EB58A438B914C0680D00D74F0E9FB4BA1E5B87DEB
          5BCC06E50C8C732C84B358FE51188BCD58AFB52C341AF407DA95338D3E4F8F7C
          7A6FCFAFA42AF89328E2C31B3BB618C95E07503D74729780829E284585E3E7DA
          107CB75FB5AE034777EEF30FB7157ACEB66E7478B6ABA1EB76B80B9EFE165D07
          A7D1236C6CD2E5E96BB9D0E5DB7171332F2E67A71BE839708F4EF95E11837819
          15608C4B8A1AB9EC29ADD78D751A0A5E8A1D7172A027D1CC66CADEDE639DC8E5
          53A08C81720EE690A94A313351F0AA6C493618885F71FBEDDD78C4C79D931505
          A4B07E3AE7808C79A859902A8F6E7E3F01C0D47E65557508C9AA64C919FC03C9
          195863EE9BB9A50000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002C744558745469746C6500446F63756D656E743B4D61703B53636865
          6D653B4469616772616D3B4869657261723B4E65744E0F2A44000001B8494441
          54785EA552CF4B1B41147E9B59D29C0A3D2581F6A6FF8187A2100F5E442C0429
          31079B9B20524A52F46211AAC583672F852084567BD41E7A9152682C0AFE0939
          24F41A9A644DD2CDFE9EE79BDD9D108584051F7C7CDF7E6FE6DB61DE288808B2
          DE9DD6E1686D4A21190B213484CC092E861B24D4D10FC7F604B1DDB3FA2F1653
          3372ABDFB3ECAB83DCF402496B6C801904A8960D99CD572F40FE0A497CFEF177
          8E647C628061B982585333A16B71D01D045414703C0ECDB6315C3FFE046180D6
          B3A0D132A1A5730A40405440D32DBF3731606038826286E142B36B43C7F00030
          B806F2FCDEC400CBE1825CBDAF5D7F3BAFCDFACB9103824266E7867A363C2C44
          1CE2E5F61F79CCA784E4526EEB64F1F5FB13D269C233829A7DB3776F8FB27FF1
          1C64D5BE17912300E75C24FB2C0C8EC4E8910E7A338563250808662C1F0E5B5D
          3F44A125560A7BE56CE16379D45BCEEF22311B7D68ACF825FDBBF835896F2B29
          DC28A7AAE43D89E8A92245D5FF7BF3A5DC0728E5B760D0F732E425A2783280F5
          3A1CDA4603EADD9FD0D7FC71C5237A4C8C91DFFE73AB3B9F2AF31C115C935F92
          E746F4B8BCC004210E41D921E2113CD31FC763EA0E8DE132223ABCF3B7000000
          0049454E44AE426082}
      end>
  end
  object WRCalcMemoria: TWRCalculaConfiguracoes
    DSVendaOuCompra = DS
    TipoCalculo = tcVenda
    SPrTipoCalc = tssCalcCompra
    UsarTabelaDePreco = True
    ProdutoMemoriaConfiguracao = PmPrincipal
    Left = 320
    Top = 292
  end
  object PmPrincipal: TwrProdutoMemoria
    SQLProduto.Strings = (
      'select P.CODIGO as CODPRODUTO,'
      
        '       --Campo que vem do cadastro com o nome usado no Venda_Pro' +
        'duto para aparecer na venda'
      
        '       P.OBSERVACAO as OBSERVACAO_PRODUTO, -- Mudar o Nome no ca' +
        'datro'
      ''
      '       P.VALOR as CALC_VALOR_ORIGINAL,'
      ''
      
        '       P.*, 0.0 as TOTAL, 0.0 as QUANT, 0.0 as QTDADEPECA, 0.0 a' +
        's NF_VALIQ_ESTADUAL, 0.0 as NF_ALIQ_NACIONAL,'
      
        '       0.0 as NF_VALIQ_IMPORTACAO, 0.0 as NF_ALIQ_IMPORTACAO, 0.' +
        '0 as NF_VALIQ_MUNICIPAL,'
      
        '       0.0 as NF_ALIQ_MUNICIPAL, 0.0 as NF_VALIQ_NACIONAL, 0.0 a' +
        's CALC_POUTRO_MANUAL,'
      '       0.0 as CALC_VOUTRO_MANUAL,'
      
        '      0.0 as CALC_VUNITARIO_DESC, 0.0 as CALC_VUNITARIO_OUTRO, 0' +
        '.0 as CALC_VUNITARIO_FRETE, 0.0 as CALC_VUNITARIO_LUCRO_DESEJADO' +
        ','
      '       --Campos Venda_Produto'
      
        '       VP.PATH, VP.PASSADAS, VP.TEM_REVERSO, VP.TEM_LOGO, VP.CAL' +
        'C_TIPO_DESCONTO,'
      
        '       VP.CODTIPO_IMPRESSAO, VP.TIPO_IMPRESSAO, VP.CODACABAMENTO' +
        ', VP.ACABAMENTO,'
      
        '       VP.NF_VFRETE, VP.DT_PREVISAO_ENTREGA, VP.TEM_FRENTE_VERSO' +
        ', VP.OBS_PRODUCAO,'
      
        '       VP.VDESC, VP.PDESC, VP.NF_PREDBCST, VP.VOUTRO, VP.POUTRO,' +
        ' VP.CALC_VDESC_MANUAL,'
      
        '       VP.CALC_PDESC_MANUAL, VP.TOTAL_RELATORIO, VP.VALOR_RELATO' +
        'RIO, VP.DT_VALOR_ORIGINAL,'
      
        '       VP.NF_II_PII, VP.NF_II_VII, VP.CODPRODUTO_TABELA, NF_PFCU' +
        'FDEST, NF_PICMSUFDEST, NF_PICMS, NF_PICMSST,'
      
        '       NF_PICMSINTER, NF_PICMSINTERPART, NF_VBCUFDEST, NF_VFCPUF' +
        'DEST, NF_VICMSUFDEST, vp.CODPRODUTO_TABELA,'
      '       NF_VICMSUFREMET, NF_VCREDICMSSN, NF_pCredSN,'
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
      'where (P.CODIGO = :CODPRODUTO)   ')
    SQLComposicao.Strings = (
      'select PC.*, P.TEM_COMPOSICAO'
      'from PRODUTO_COMPOSICAO PC'
      'left join PRODUTO P on (PC.CODPRODUTO = P.CODIGO)'
      'where (PC.CODPRODUTO_COMPOSICAO = :CODPRODUTO)')
    Connection = DMBanco.Banco
    TransacaoFD = TransaFD
    Left = 348
    Top = 292
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = Organograma
    PreviewOptions.Caption = 'Imprimir'
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 271
    Top = 261
    PixelsPerInch = 96
    object Organograma: TdxDBOrgChartReportLink
      Component = DBTree
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Roteiro'
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
