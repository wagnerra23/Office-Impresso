inherited FrmFrameComposicao: TFrmFrameComposicao
  Width = 1030
  Height = 390
  Align = alClient
  OnDblClick = ActComposicaoAbrirCadastroExecute
  ExplicitWidth = 1030
  ExplicitHeight = 390
  object SpAcimaDoValor: TShape [0]
    Left = 0
    Top = 22
    Width = 18
    Height = 18
    Brush.Color = 4227072
  end
  object pnlSprMemoria: TPanel [1]
    Left = 13
    Top = 137
    Width = 760
    Height = 162
    Color = 16505534
    ParentBackground = False
    TabOrder = 1
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
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1030
    Height = 390
    LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
    ExplicitWidth = 1030
    ExplicitHeight = 390
    DesignSize = (
      1030
      390)
    inherited btnMenuConfig: TcxButton
      Left = 239
      Top = 4
      Height = 28
      TabOrder = 11
      ExplicitLeft = 239
      ExplicitTop = 4
      ExplicitHeight = 28
    end
    object edtCompoCodProdutoÎProduto: TcxButtonEdit [1]
      Left = 14
      Top = 87
      Hint = 'F2 - Consulta / Cadastro'
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.OnEditValueChanged = EdtCompCodProdutoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 14
      Width = 95
    end
    object BtnAdicionarCompo: TcxButton [2]
      Left = 951
      Top = 77
      Width = 31
      Height = 31
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 26
      OnClick = BtnAdicionarCompoClick
    end
    object BtnRemoverCompo: TcxButton [3]
      Left = 985
      Top = 77
      Width = 31
      Height = 31
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 27
      TabStop = False
      OnClick = BtnRemoverCompoClick
    end
    object LbTituloFrameComposicao: TcxLabel [4]
      Left = 5
      Top = 5
      Caption = 'Composi'#231#227'o'
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
    object edtCompoQTDADePeca: TcxDBButtonEdit [5]
      Left = 370
      Top = 87
      Hint = 'Quantidade de pe'#231'as'
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DataBinding.DataField = 'QTDADEPECA'
      DataBinding.DataSource = DSPmComposicao
      ParentShowHint = False
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
          Visible = False
        end>
      Properties.OnButtonClick = edtCompoQuantPropertiesButtonClick
      Properties.OnChange = edtCompoQTDADePecaPropertiesChange
      Properties.OnValidate = edtCompoQTDADePecaPropertiesValidate
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 18
      Height = 21
      Width = 58
    end
    object edtCompoValor: TcxDBCurrencyEdit [6]
      Left = 801
      Top = 87
      Margins.Left = 2
      Margins.Top = 2
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DSPmComposicao
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 10
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clSkyBlue
      Style.HotTrack = False
      TabOrder = 24
      Width = 66
    end
    object edtCompoTotal: TcxDBCurrencyEdit [7]
      Left = 870
      Top = 87
      Margins.Left = 2
      Margins.Top = 2
      DataBinding.DataField = 'TOTAL'
      DataBinding.DataSource = DSPmComposicao
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 10
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clSkyBlue
      Style.HotTrack = False
      TabOrder = 25
      Width = 78
    end
    object BtnTreeListExpand: TcxButton [8]
      Left = 161
      Top = 4
      Width = 25
      Height = 28
      Action = ActTreeListFullExpand
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 8
    end
    object BtnTreeListCollapse: TcxButton [9]
      Left = 186
      Top = 4
      Width = 25
      Height = 28
      Action = ActTreeListFullCollapse
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 9
    end
    object BtnMenuComposicao: TcxButton [10]
      Left = 211
      Top = 4
      Width = 25
      Height = 28
      Caption = 'ActTreeListCustos'
      DropDownMenu = MenuComposicao
      Kind = cxbkDropDown
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = ImgListActionsFrameComposicao
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 10
    end
    object GridComposicaoTree: TcxDBTreeList [11]
      Left = 14
      Top = 113
      Width = 1002
      Height = 226
      Bands = <
        item
          Caption.MultiLine = True
          Caption.Text = 'Composi'#231#227'o'
          Expandable = tlbeExpandable
        end>
      DataController.DataSource = DSComposicao
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'CODIGO'
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.DragDropText = True
      OptionsCustomizing.BandsQuickCustomization = True
      OptionsCustomizing.BandsQuickCustomizationSorted = True
      OptionsCustomizing.ColumnsQuickCustomization = True
      OptionsData.Appending = True
      OptionsData.Inserting = True
      OptionsView.CellEndEllipsis = True
      OptionsView.DropNodeIndicator = True
      OptionsView.TreeLineStyle = tllsSolid
      PopupMenu = MenuComposicao
      RootValue = Null
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 28
      OnCustomDrawDataCell = GridComposicaoTreeCustomDrawDataCell
      OnCustomDrawIndentCell = GridComposicaoTreeCustomDrawIndentCell
      OnDragDrop = GridComposicaoTreeDragDrop
      OnDragOver = GridComposicaoTreeDragOver
      OnEditing = GridComposicaoTreeEditing
      OnEndDrag = GridComposicaoTreeEndDrag
      OnGetCellHint = GridComposicaoTreeGetCellHint
      object GridComposicaoTreeCODIGO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        Caption.Text = 'Sequ'#234'ncia'
        DataBinding.FieldName = 'CODIGO'
        Options.Editing = False
        Options.Sorting = False
        Width = 64
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCODPRODUTO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = GridComposicaoTreeCODPRODUTOPropertiesButtonClick
        Caption.Text = 'C'#243'd. Produto'
        DataBinding.FieldName = 'CODPRODUTO'
        Options.Sorting = False
        Width = 83
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeDESCRICAO: TcxDBTreeListColumn
        Caption.Text = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        Options.Sorting = False
        Width = 324
        Position.ColIndex = 3
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
        Options.Sorting = False
        Width = 46
        Position.ColIndex = 14
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeTIPO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Pergunta'
          'Produto')
        Visible = False
        Caption.Text = 'Produto/Pergunta'
        DataBinding.FieldName = 'TIPO'
        Options.Sorting = False
        Width = 114
        Position.ColIndex = 35
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeQTDADEPECA: TcxDBTreeListColumn
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
        Properties.OnButtonClick = GridComposicaoTreeQTDADEPECAPropertiesButtonClick
        Properties.OnValidate = GridComposicaoTreeQTDADEPECAPropertiesValidate
        Styles.Content = FrmPrincipal.cxStyle4
        Caption.Text = 'Qtd. Pe'#231'as Rendimento'
        DataBinding.FieldName = 'QTDADEPECA'
        Options.Sorting = False
        Width = 60
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCOMP: TcxDBTreeListColumn
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
        Properties.OnButtonClick = GridComposicaoTreeQTDADEPECAPropertiesButtonClick
        Properties.OnValidate = GridComposicaoTreeCOMPPropertiesValidate
        Styles.Content = FrmPrincipal.cxStyle4
        Caption.Text = 'Comp Rendimento'
        DataBinding.FieldName = 'COMP'
        Options.Sorting = False
        Width = 45
        Position.ColIndex = 7
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
        OnGetDisplayText = GridComposicaoTreeCOMPGetDisplayText
      end
      object GridComposicaoTreeLARG: TcxDBTreeListColumn
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
        Properties.OnButtonClick = GridComposicaoTreeQTDADEPECAPropertiesButtonClick
        Properties.OnValidate = GridComposicaoTreeLARGPropertiesValidate
        Styles.Content = FrmPrincipal.cxStyle4
        Caption.Text = 'Largura Rendimento'
        DataBinding.FieldName = 'LARG'
        Options.Sorting = False
        Width = 45
        Position.ColIndex = 8
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
        OnGetDisplayText = GridComposicaoTreeLARGGetDisplayText
      end
      object GridComposicaoTreeESPESSURA: TcxDBTreeListColumn
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
        Properties.OnButtonClick = GridComposicaoTreeQTDADEPECAPropertiesButtonClick
        Properties.OnValidate = GridComposicaoTreeESPESSURAPropertiesValidate
        Styles.Content = FrmPrincipal.cxStyle4
        Caption.Text = 'Esp. Rendimento'
        DataBinding.FieldName = 'ESPESSURA'
        Options.Sorting = False
        Width = 45
        Position.ColIndex = 9
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
        OnGetDisplayText = GridComposicaoTreeESPESSURAGetDisplayText
      end
      object GridComposicaoTreeFORMULA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'A CADA'
          'PER'#205'METRO'
          'PERSONALIZADA'
          'PROPORCIONAL'
          'SEM F'#211'RMULA'
          'BARRAS'
          'IGUAL'
          'ILH'#211'S'
          'IGUAL LARGURA'
          'AREA QUADRADA')
        Properties.OnValidate = GridComposicaoFORMULAPropertiesValidate
        Caption.Text = 'F'#243'rmula'
        DataBinding.FieldName = 'FORMULA'
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 10
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeQUANT: TcxDBTreeListColumn
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
        Properties.ReadOnly = True
        Styles.Content = Quant
        Caption.Text = 'Rendimento'
        DataBinding.FieldName = 'QUANT'
        Options.Editing = False
        Options.Sorting = False
        Width = 67
        Position.ColIndex = 11
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCUSTO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Styles.Content = FrmPrincipal.cxStyle4
        Visible = False
        Caption.Text = 'R$ Custo Unit'#225'rio'
        DataBinding.FieldName = 'CUSTO'
        Options.Sorting = False
        Width = 90
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeVALOR: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Styles.Content = FrmPrincipal.cxStyle4
        Caption.Text = 'R$ Valor'
        DataBinding.FieldName = 'VALOR'
        Options.Sorting = False
        Width = 90
        Position.ColIndex = 15
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCUSTO_RENDIMENTO: TcxDBTreeListColumn
        Styles.Content = FrmPrincipal.cxStyle4
        Visible = False
        Caption.Text = 'R$ Custo Total'
        DataBinding.FieldName = 'CUSTO_RENDIMENTO'
        Options.Sorting = False
        Width = 91
        Position.ColIndex = 13
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeTOTAL: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Styles.Content = FrmPrincipal.cxStyle38
        Caption.Text = 'R$ Valor Total'
        DataBinding.FieldName = 'TOTAL'
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 19
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeMedidas: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'Medidas'
        Options.Hidden = True
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeVALOR_RENDIMENTO: TcxDBTreeListColumn
        Styles.Content = FrmPrincipal.cxStyle38
        Visible = False
        DataBinding.FieldName = 'VALOR_RENDIMENTO'
        Options.Customizing = False
        Options.Editing = False
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 16
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeTOTAL_RENDIMENTO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Styles.Content = FrmPrincipal.cxStyle38
        Visible = False
        Caption.Text = 'R$ Valor Total'
        DataBinding.FieldName = 'TOTAL_RENDIMENTO'
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 20
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
        Options.Sorting = False
        Width = 112
        Position.ColIndex = 21
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeORDEM: TcxDBTreeListColumn
        Caption.Text = 'Ordem'
        DataBinding.FieldName = 'ORDEM'
        Options.Sorting = False
        Width = 60
        Position.ColIndex = 1
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
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 17
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreePRODUCAO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Produ'#231#227'o'
        DataBinding.FieldName = 'PRODUCAO'
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 18
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreePESO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Peso'
        DataBinding.FieldName = 'PESO'
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 22
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
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 23
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
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 24
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
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 25
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
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 26
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
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 27
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
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 28
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
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 29
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
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 30
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
        Options.Sorting = False
        Width = 100
        Position.ColIndex = 31
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeCOMP_COMPOSICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Caption.Text = 'Comp'
        DataBinding.FieldName = 'COMP_COMPOSICAO'
        Options.Customizing = False
        Options.Editing = False
        Options.Sorting = False
        Width = 51
        Position.ColIndex = 33
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeLARG_COMPOSICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Caption.Text = 'Larg'
        DataBinding.FieldName = 'LARG_COMPOSICAO'
        Options.Customizing = False
        Options.Editing = False
        Options.Sorting = False
        Width = 60
        Position.ColIndex = 37
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeESPESSURA_COMPOSICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Caption.Text = 'Esp.'
        DataBinding.FieldName = 'ESPESSURA_COMPOSICAO'
        Options.Customizing = False
        Options.Editing = False
        Options.Sorting = False
        Width = 54
        Position.ColIndex = 38
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeQTDADEPECA_COMPOSICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Caption.Text = 'Pe'#231'as'
        DataBinding.FieldName = 'QTDADEPECA_COMPOSICAO'
        Options.Customizing = False
        Options.Editing = False
        Options.Sorting = False
        Width = 39
        Position.ColIndex = 32
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeTEM_COMPOSICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = cxImageList1
        Properties.Items = <
          item
            Description = 'Possui Composi'#231#227'o'
            ImageIndex = 2
            Value = 'S'
          end>
        Properties.ReadOnly = True
        Visible = False
        Caption.Text = 'Composi'#231#227'o'
        DataBinding.FieldName = 'TEM_COMPOSICAO'
        Options.Editing = False
        Options.Sorting = False
        Width = 31
        Position.ColIndex = 34
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreeDESPERDICIO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Desperd'#237'cio'
        DataBinding.FieldName = 'DESPERDICIO'
        Options.Sorting = False
        Width = 61
        Position.ColIndex = 12
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridComposicaoTreecxDBTreeListPARENT: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'PARENT'
        Options.Sorting = False
        Position.ColIndex = 36
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object edtQtdaDePeca: TcxDBCurrencyEdit [12]
      Left = 763
      Top = 16
      AutoSize = False
      DataBinding.DataField = 'QTDADEPECA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.OnValidate = edtQtdaDePecaPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 2
      Height = 21
      Width = 68
    end
    object edtComp: TcxDBCurrencyEdit [13]
      Left = 834
      Top = 16
      AutoSize = False
      DataBinding.DataField = 'COMP'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.OnValidate = edtCompPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 3
      Height = 21
      Width = 69
    end
    object edtLarg: TcxDBCurrencyEdit [14]
      Left = 906
      Top = 16
      AutoSize = False
      DataBinding.DataField = 'LARG'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.OnValidate = edtLargPropertiesValidate
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 63
    end
    object edtEspessura: TcxDBCurrencyEdit [15]
      Left = 972
      Top = 16
      AutoSize = False
      DataBinding.DataField = 'ESPESSURA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.OnValidate = edtEspessuraPropertiesValidate
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 5
      Height = 21
      Width = 58
    end
    object chkTem_Composicao: TcxDBCheckBox [16]
      Left = 10000
      Top = 10000
      Caption = 'Usar Composi'#231#227'o Fixa'
      DataBinding.DataField = 'TEM_COMPOSICAO'
      DataBinding.DataSource = DS
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 40
      Visible = False
    end
    object cbxUnidade: TcxDBComboBox [17]
      Left = 710
      Top = 16
      AutoSize = False
      DataBinding.DataField = 'UNIDADE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.ImmediatePost = True
      Properties.Sorted = True
      Properties.OnEditValueChanged = cbxUnidadePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Height = 21
      Width = 50
    end
    object edtCompoDescricao: TcxDBTextEdit [18]
      Left = 112
      Top = 87
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = DSPmComposicao
      ParentColor = True
      Style.HotTrack = False
      TabOrder = 15
      Width = 174
    end
    object btnTestarRoteiro: TcxButton [19]
      Left = 352
      Top = 0
      Width = 81
      Height = 37
      Caption = 'Testar Roteiro'
      OptionsImage.ImageIndex = 1
      TabOrder = 13
      OnClick = btnTestarRoteiroClick
    end
    object btnNovo: TcxButton [20]
      Left = 109
      Top = 0
      Width = 49
      Height = 37
      Caption = 'Novo'
      Kind = cxbkDropDownButton
      OptionsImage.ImageIndex = 1
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 6
      OnClick = btnNovoClick
    end
    object SprFormula: TdxSpreadSheet [21]
      Left = 10000
      Top = 10000
      Width = 1002
      Height = 244
      OptionsBehavior.Inserting = False
      OptionsView.GridLines = False
      PageControl.Visible = False
      Visible = False
      OnEditValueChanged = SprFormulaEditValueChanged
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
    object dxSpreadSheetFormulaBar1: TdxSpreadSheetFormulaBar [22]
      Left = 10000
      Top = 10000
      Width = 1002
      Height = 21
      SpreadSheet = SprFormula
      TabOrder = 29
      Visible = False
    end
    object edtCalc_Qpeso_Bruto: TcxDBCurrencyEdit [23]
      Left = 551
      Top = 369
      AutoSize = False
      DataBinding.DataField = 'CALC_QPESO_BRUTO'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 31
      Height = 21
      Width = 121
    end
    object edtCalc_Qpeso_Liquido: TcxDBCurrencyEdit [24]
      Left = 675
      Top = 369
      AutoSize = False
      DataBinding.DataField = 'CALC_QPESO_LIQUIDO'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 32
      Height = 21
      Width = 107
    end
    object btnMostrarSpr: TcxButton [25]
      Left = 289
      Top = 83
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
      TabOrder = 16
      OnClick = btnMostrarSprClick
    end
    object cxLabel1: TcxLabel [26]
      Left = 479
      Top = 17
      Caption = 'Informe as Dimens'#245'es do Produto:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = 7697781
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 11711154
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cbxUnidade_Conversao: TcxDBComboBox [27]
      Left = 317
      Top = 87
      DataBinding.DataField = 'UNIDADE'
      DataBinding.DataSource = DSPmComposicao
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.ImmediatePost = True
      Properties.Sorted = True
      Properties.OnChange = cbxUnidade_ConversaoPropertiesChange
      Style.HotTrack = False
      TabOrder = 17
      Width = 50
    end
    object btnAtualizarPrecos: TcxButton [28]
      Left = 0
      Top = 362
      Width = 169
      Height = 28
      Caption = 'Atualizar Pre'#231'os'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = cxImageList1
      TabOrder = 35
      OnClick = btnAtualizarPrecosClick
    end
    object edtCompoQuant: TcxDBButtonEdit [29]
      Left = 724
      Top = 87
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DataBinding.DataField = 'QUANT'
      DataBinding.DataSource = DSPmComposicao
      ParentShowHint = False
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
      Properties.OnButtonClick = edtCompoQuantPropertiesButtonClick
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 74
    end
    object edtTotal: TcxDBCurrencyEdit [30]
      Left = 909
      Top = 369
      AutoSize = False
      DataBinding.DataField = 'TOTAL'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.OnValidate = edtTotalPropertiesValidate
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 34
      Height = 21
      Width = 121
    end
    object edtCusto_Total: TcxDBCurrencyEdit [31]
      Left = 785
      Top = 369
      AutoSize = False
      DataBinding.DataField = 'CUSTO_TOTAL'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 33
      Height = 21
      Width = 121
    end
    object cxButton2: TcxButton [32]
      Left = 332
      Top = 362
      Width = 77
      Height = 28
      Caption = 'Peso'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = cxImageList1
      TabOrder = 38
      OnClick = cxButton2Click
    end
    object btnCustos: TcxButton [33]
      Left = 172
      Top = 362
      Width = 77
      Height = 28
      Caption = 'Custos'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = cxImageList1
      TabOrder = 36
      OnClick = btnCustosClick
    end
    object btnMarkup: TcxButton [34]
      Left = 252
      Top = 362
      Width = 77
      Height = 28
      Caption = 'Markup'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = cxImageList1
      TabOrder = 37
      OnClick = btnMarkupClick
    end
    object chkTem_Wizard: TcxDBCheckBox [35]
      Left = 260
      Top = 8
      AutoSize = False
      DataBinding.DataField = 'TEM_WIZARD'
      DataBinding.DataSource = DS
      Properties.Alignment = taLeftJustify
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 12
      Transparent = True
      Height = 21
      Width = 21
    end
    object edtCompoCOMP: TcxDBButtonEdit [36]
      Left = 431
      Top = 87
      AutoSize = False
      DataBinding.DataField = 'COMP'
      DataBinding.DataSource = DSPmComposicao
      ParentShowHint = False
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
          Visible = False
        end>
      Properties.OnButtonClick = edtCompoQuantPropertiesButtonClick
      Properties.OnChange = edtCompoCOMPPropertiesChange
      Properties.OnValidate = edtCompoCOMPPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 19
      Height = 21
      Width = 58
    end
    object edtCompoLARG: TcxDBButtonEdit [37]
      Left = 492
      Top = 87
      AutoSize = False
      DataBinding.DataField = 'LARG'
      DataBinding.DataSource = DSPmComposicao
      ParentShowHint = False
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
          Visible = False
        end>
      Properties.OnButtonClick = edtCompoQuantPropertiesButtonClick
      Properties.OnChange = edtCompoLARGPropertiesChange
      Properties.OnValidate = edtCompoLARGPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 58
    end
    object edtCompoESPESSURA: TcxDBButtonEdit [38]
      Left = 553
      Top = 87
      AutoSize = False
      DataBinding.DataField = 'ESPESSURA'
      DataBinding.DataSource = DSPmComposicao
      ParentShowHint = False
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
          Visible = False
        end>
      Properties.OnButtonClick = edtCompoQuantPropertiesButtonClick
      Properties.OnChange = edtCompoESPESSURAPropertiesChange
      Properties.OnValidate = edtCompoESPESSURAPropertiesValidate
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 58
    end
    object edtFormula: TcxDBComboBox [39]
      Left = 614
      Top = 87
      DataBinding.DataField = 'FORMULA'
      DataBinding.DataSource = DSPmComposicao
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'A CADA'
        'AREA QUADRADA'
        'BARRAS'
        'FOLHAS/CHAPA'
        'IGUAL'
        'IGUAL LARGURA'
        'ILH'#211'S'
        'PER'#205'METRO'
        'PERSONALIZADA'
        'PROPORCIONAL'
        'SEM F'#211'RMULA')
      Properties.Sorted = True
      Properties.OnValidate = edtFormulaPropertiesValidate
      Style.HotTrack = False
      TabOrder = 22
      Width = 107
    end
    object cxButton3: TcxButton [40]
      Left = 412
      Top = 362
      Width = 77
      Height = 28
      Caption = 'Arruma'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = cxImageList1
      TabOrder = 39
      OnClick = cxButton3Click
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      CaptionOptions.Visible = False
      UseIndent = False
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      Index = 1
    end
    object liedtCompoCodProdutoÎProduto: TdxLayoutItem
      Parent = GrupoAdicionaComposicao
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Mat'#233'ria Prima'
      CaptionOptions.Layout = clTop
      Control = edtCompoCodProdutoÎProduto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiBtnCompAdd: TdxLayoutItem
      Parent = GrupoAdicionaComposicao
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = BtnAdicionarCompo
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 31
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object LiBtnCompRemover: TdxLayoutItem
      Parent = GrupoAdicionaComposicao
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = BtnRemoverCompo
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 31
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object LiLbTituloFrameComposicao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Left = 5
      Offsets.Top = 5
      CaptionOptions.Visible = False
      Control = LbTituloFrameComposicao
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoAdicionaComposicao: TdxLayoutGroup
      Parent = GrupoMateriais
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Offsets.Bottom = 2
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object liedtCompoQTDADePeca: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avBottom
      CaptionOptions.Text = 'Pe'#231'as'
      CaptionOptions.Layout = clTop
      Control = edtCompoQTDADePeca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtCompoValor: TdxLayoutItem
      Parent = GrupoAdicionaComposicao
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'R$ Valor'
      CaptionOptions.Layout = clTop
      Control = edtCompoValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtCompoTotal: TdxLayoutItem
      Parent = GrupoAdicionaComposicao
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'R$ Total'
      CaptionOptions.Layout = clTop
      Control = edtCompoTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object LiBtnTreeListExpand: TdxLayoutItem
      Parent = GrupoTopFrame
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = BtnTreeListExpand
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiBtnTreeListCollapse: TdxLayoutItem
      Parent = GrupoTopFrame
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Hint = 'Fechar nodes da Composi'#231#227'o'
      CaptionOptions.Visible = False
      Control = BtnTreeListCollapse
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiBtnMenuComposicao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Hint = 'Mostrar Custos'
      CaptionOptions.Visible = False
      Control = BtnMenuComposicao
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiGridComposicaoTree: TdxLayoutItem
      Parent = LiPerguntas
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridComposicaoTree
      ControlOptions.OriginalHeight = 122
      ControlOptions.OriginalWidth = 644
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiGrupoComposicao: TdxLayoutGroup
      Parent = GrupoMateriais
      AlignVert = avClient
      CaptionOptions.Text = 'Perguntas e Repostas'
      ShowBorder = False
      Index = 1
    end
    object GrupoTopFrame: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 2
    end
    object LiedtQtdaDePeca: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Pe'#231'as'
      CaptionOptions.Layout = clTop
      Control = edtQtdaDePeca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtComp: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Comp'
      CaptionOptions.Layout = clTop
      Control = edtComp
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtLarg: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Larg'
      CaptionOptions.Layout = clTop
      Control = edtLarg
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtEspessura: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Espessura'
      CaptionOptions.Layout = clTop
      Control = edtEspessura
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      CaptionOptions.Text = 'Materiais'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1233: TdxLayoutItem
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkTem_Composicao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Unidade'
      CaptionOptions.Layout = clTop
      Control = cbxUnidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoAdicionaComposicao
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtCompoDescricao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tabs'
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = dxLayoutGroup3TabChanged
      Index = 1
    end
    object LibtnTestarRoteiro: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnTestarRoteiro
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Visible = False
      Control = btnNovo
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 49
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiPerguntas: TdxLayoutGroup
      Parent = LiGrupoComposicao
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object LiSprFormula: TdxLayoutItem
      Parent = liFormulas
      AlignHorz = ahClient
      AlignVert = avClient
      Control = SprFormula
      ControlOptions.OriginalHeight = 128
      ControlOptions.OriginalWidth = 1084
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiFormulaFuncao: TdxLayoutItem
      Parent = liFormulas
      AlignHorz = ahClient
      AlignVert = avTop
      Control = dxSpreadSheetFormulaBar1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 1084
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liFormulas: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'F'#243'rmulas Avan'#231'adas'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object GrupoMateriais: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Materiais'
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ItemIndex = 8
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LiEdtCalc_Qpeso_Bruto: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Peso Bruto'
      CaptionOptions.Layout = clTop
      Control = edtCalc_Qpeso_Bruto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtCalc_Qpeso_Liquido: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Peso Liquido'
      CaptionOptions.Layout = clTop
      Control = edtCalc_Qpeso_Liquido
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = GrupoAdicionaComposicao
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnMostrarSpr
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 228
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object LicbxUnidade_Conversao: TdxLayoutItem
      Parent = GrupoAdicionaComposicao
      AlignVert = avBottom
      CaptionOptions.Hint = 'Unidade de Convers'#227'o'
      CaptionOptions.Text = 'Unidade'
      CaptionOptions.Layout = clTop
      Control = cbxUnidade_Conversao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object LibtnAtualizarPrecos: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnAtualizarPrecos
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LiedtRendimento: TdxLayoutItem
      Parent = GrupoAdicionaComposicao
      AlignVert = avBottom
      CaptionOptions.Text = 'Rendimento'
      CaptionOptions.Layout = clTop
      Control = edtCompoQuant
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = GrupoTopFrame
      AlignHorz = ahRight
      AlignVert = avCenter
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object LiedtTotal: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'R$ Total'
      CaptionOptions.Layout = clTop
      Control = edtTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LiedtCusto_Total: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'R$ Custo Total'
      CaptionOptions.Layout = clTop
      Control = edtCusto_Total
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object LibtnCustos: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnCustos
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LibtnMarkup: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnMarkup
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object lichkTem_Wizard: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avCenter
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Tem Wizard'
      CaptionOptions.Layout = clRight
      Control = chkTem_Wizard
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtCompoCOMP: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avBottom
      CaptionOptions.Text = 'Comp'
      CaptionOptions.Layout = clTop
      Control = edtCompoCOMP
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = GrupoAdicionaComposicao
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object lIedtCompoLARG: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avBottom
      CaptionOptions.Text = 'Larg'
      CaptionOptions.Layout = clTop
      Control = edtCompoLARG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lIedtCompoESPESSURA: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avBottom
      CaptionOptions.Text = 'Espessura'
      CaptionOptions.Layout = clTop
      Control = edtCompoESPESSURA
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LiedtFormula: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avBottom
      CaptionOptions.Text = 'F'#243'rmula'
      CaptionOptions.Layout = clTop
      Control = edtFormula
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 8
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 36
    Top = 228
    Width = 421
    Height = 108
    BorderStyle = bsNone
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
  object DBGrid2: TDBGrid [4]
    Left = 186
    Top = 114
    Width = 421
    Height = 108
    BorderStyle = bsNone
    DataSource = DSProdutoClone
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
  inherited ImgListMenuConfig: TImageList
    Left = 468
    Top = 148
  end
  inherited MenuConfig: TPopupMenu
    Left = 496
    Top = 148
  end
  inherited UCControls1: TUCControls
    Left = 412
    Top = 260
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 412
    Top = 232
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
    OnStateChange = DSStateChange
    Left = 412
    Top = 148
  end
  inherited wrFrameEventos: TwrFrameEventos
    OnInicializar = wrFrameEventosInicializar
    Left = 440
    Top = 260
  end
  inherited WRFormataCamposDataSets: TWRFormataCamposDataSets
    OnCarregaDataSets = WRFormataCamposDataSetsCarregaDataSets
    Left = 468
    Top = 260
  end
  object ActionListFrameComposicao: TActionList
    Images = ImgListActionsFrameComposicao
    Left = 440
    Top = 176
    object ActTreeListFullExpand: TAction
      Category = 'TreeList'
      Caption = 'Expandir tudo'
      ImageIndex = 1
      OnExecute = ActTreeListFullExpandExecute
    end
    object ActTreeListFullCollapse: TAction
      Category = 'TreeList'
      Caption = 'Retrair tudo'
      ImageIndex = 0
      OnExecute = ActTreeListFullCollapseExecute
    end
    object ActTreeListCollapseChildren: TAction
      Category = 'TreeList'
      Caption = 'Retrair filhos'
      ImageIndex = 0
      OnExecute = ActTreeListCollapseChildrenExecute
    end
    object ActTreeListExpandChildren: TAction
      Category = 'TreeList'
      Caption = 'Expandir filhos'
      ImageIndex = 1
      OnExecute = ActTreeListExpandChildrenExecute
    end
    object ActComposicaoAbrirCadastro: TAction
      Category = 'Composi'#231#227'o'
      Caption = 'Ir para o Cadastro'
      OnExecute = ActComposicaoAbrirCadastroExecute
    end
  end
  object ImgListActionsFrameComposicao: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 11534804
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
      end>
  end
  object MenuComposicao: TPopupMenu
    Images = ImgListActionsFrameComposicao
    Left = 496
    Top = 176
    object IrparaoCadastro1: TMenuItem
      Action = ActComposicaoAbrirCadastro
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Duplicar1: TMenuItem
      Caption = 'Duplicar'
      Visible = False
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Expandirtudo1: TMenuItem
      Action = ActTreeListFullExpand
    end
    object Expandirfilhos1: TMenuItem
      Action = ActTreeListExpandChildren
    end
    object Retrairtudo1: TMenuItem
      Action = ActTreeListFullCollapse
    end
    object Retrairfilhos1: TMenuItem
      Action = ActTreeListCollapseChildren
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object MostrarEcxel1: TMenuItem
      Caption = 'Gabarito do Produto'
      OnClick = MostrarEcxel1Click
    end
  end
  object EditRepositorioFrameComposicao: TcxEditRepository
    Left = 440
    Top = 204
    PixelsPerInch = 96
    object PropIconeComFormula: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 0
          Kind = bkGlyph
        end>
    end
    object PropIconeSemFormula: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          Enabled = False
          ImageIndex = 0
          Kind = bkGlyph
        end>
    end
  end
  object RepEstiloFrameComposicao: TcxStyleRepository
    Left = 468
    Top = 204
    PixelsPerInch = 96
    object EstiloSegoeSB14: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
    end
    object EstiloSegoe12: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 5395026
    end
    object EstiloSegoe14: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 12615680
    end
    object EstiloSegoe8: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object EstiloGrupo: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16744576
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object EstiloGrupoInterno: TcxStyle
    end
    object EstiloSegoe14Verde: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clGreen
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 12615680
    end
    object Quant: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object EstiloCusto: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object EstiloValor: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
  end
  object PmComposicao: TwrProdutoMemoria
    SQLProduto.Strings = (
      
        'select P.CODIGO, P.DESCRICAO, P.UNIDADE, P.CUSTO_FABR, P.CUSTO_M' +
        'EDIO, P.MARGEM, P.VALOR, '
      
        '       P.COMP, P.LARG, P.ESPESSURA, P.QUANT, P.QTDADEPECA, P.PES' +
        'O, P.PERC_LUCRO_DESEJADO,  '
      
        '       P.MARKUP, P.PESO_CALCULADO_COMPOSICAO, P.PERC_MARGEM_CONT' +
        'RIBUICAO, '
      
        '       P.TABELA_PRECO_FIXO, P.USA_COMPRIMENTO, P.USA_LARGURA, P.' +
        'USA_ESPESSURA, '
      '       P.COMPRIMENTO_FIXO, P.LARGURA_FIXA, P.ESPESSURA_FIXA,  '
      '       P.CUSTO_PERC, P.PERC_DESC_ATACADO, P.PERC_ACRESC_PRAZO,'
      
        '       P.APLICACAO, P.CODPRODUTO_MARCA, P.CUSTO_VENDA_TOTAL, P.V' +
        'ALOR_LUCRO, P.CUSTO_VENDA, '
      
        '       P.CUSTO, P.CUSTO_EXTRA, P.CUSTO_VENDA_EXTRA, P.CUSTO_BASE' +
        ', P.TOTAL,'
      
        '       P.CODNF_NCM, P.TAMANHO, P.NAO_ENVIA_PARA_PRODUCAO, P.RETO' +
        'RNAR_ESTOQUE_AO_PRODUZIR, '
      
        '       P.NAO_RETORNA_ESTOQUE_AO_CANCELAR, P.CODIGOEAN, P.CODFABR' +
        'ICA, P.DESCRICAO_NFE, '
      
        '       P.CODPRODUTO_GRUPO, P.CUSTO_VENDA_PERC, P.VALOR_POR_PECA,' +
        ' P.CUSTO_VENDA_MINIMO, P.ORDEM, P.FORMULA'
      'from PRODUTO P '
      'left join FORMULA_PERFIL FP on (FP.PADRAO = '#39'S'#39')'
      'where (P.CODIGO = :CODPRODUTO)'
      'ORDEM BY ORDEM')
    SQLComposicao.Strings = (
      
        'select PC.CODIGO, PC.DESCRICAO as PRODUTO, PC.CODPRODUTO, PC.QUA' +
        'NT, PC.COMP, PC.LARG, PC.QTDADEPECA,'
      
        '       PC.VALOR, PC.DT_ALTERACAO, PC.ESPESSURA, P.CODPRODUTO_GRU' +
        'PO, PC.PARENT,'
      
        '       PC.PRODUCAO, P.UNIDADE, PC.CUSTO_VENDA_TOTAL, P.CODLOCAL,' +
        ' P.LOCAL, PC.PESO,'
      '       PC.MARGEM, PC.CUSTO_EXTRA,'
      
        '       PC.CODFORMULA_PERFIL, P.NAO_RETORNA_ESTOQUE_AO_CANCELAR, ' +
        'PC.CUSTO_VENDA,'
      
        '       PC.CUSTO_VENDA_UNITARIO, PC.COMP_FORMULA, PC.LARG_FORMULA' +
        ', PC.ESPESSURA_FORMULA,'
      
        '       PC.QTDADEPECA_FORMULA, PC.COMP_COMPOSICAO, PC.LARG_COMPOS' +
        'ICAO,'
      
        '       PC.ESPESSURA_COMPOSICAO, PC.QTDADEPECA_COMPOSICAO, PC.QUA' +
        'NT_COMPOSICAO, PC.CUSTO,'
      
        '       PC.TOTAL_COMPOSICAO, PC.CUSTO_PERC, PC.CUSTO_VENDA_PERC, ' +
        'PC.CUSTO_VENDA_EXTRA,'
      
        '       PC.PERC_LUCRO_DESEJADO, PC.VALOR_POR_PECA, PC.CUSTO_VENDA' +
        '_MINIMO, PC.VALOR_LUCRO,'
      
        '       PC.PERC_MARGEM_CONTRIBUICAO, PC.MARKUP, PC.TOTAL, P.COMPO' +
        'SICAO, PC.CUSTO_COMPOSICAO,'
      '       PC.CUSTO_FABR, PC.VALOR_COMPRA, PC.ORDEM, PC.FORMULA'
      'from PRODUTO_COMPOSICAO PC'
      'left join PRODUTO P on (PC.CODPRODUTO = P.CODIGO)'
      'where (PC.CODPRODUTO_COMPOSICAO = :CODPRODUTO)'
      'order by PC.ordem ASC'
      '')
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
    BeforeClose = PmComposicaoBeforeClose
    Connection = DMBanco.Banco
    DataSource = DSPmComposicao
    PermitirProdutoNaoCadastrado = True
    Left = 468
    Top = 232
  end
  object DSPmComposicao: TDataSource
    Left = 496
    Top = 232
  end
  object WRCalcMemoria: TWRCalculaConfiguracoes
    TipoCalculo = tcCadastro
    SPrTipoCalc = tssCalcCadastro
    ProdutoMemoriaConfiguracao = PmComposicao
    TreeListEmMemoria = True
    SprFormula = SprMemoria
    Left = 440
    Top = 232
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 13369840
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000A0A0A16353535704F4F4FA8545454B3545454B34F4F
          4FA8353535700A0A0A1600000000000000000000000000000000000000000000
          00000000000010101022505050A8565656B3565656B3BFBFBFE3BFBFBFE35656
          56B3565656B3505050A810101022000000000000000000000000000000000000
          00000B0B0B16515151A8565656B3565656B3565656B3FFFFFFFFFFFFFFFF5656
          56B3565656B3565656B3515151A80B0B0B160000000000000000000000000000
          000037373770585858B3585858B3585858B3585858B3FFFFFFFFFFFFFFFF5858
          58B3585858B3585858B3585858B3373737700000000000000000000000000000
          0000535353A8585858B3585858B3585858B3585858B3FFFFFFFFFFFFFFFF5858
          58B3585858B3585858B3585858B3535353A80000000000000000000000000000
          00005A5A5AB35A5A5AB35A5A5AB35A5A5AB35A5A5AB3FFFFFFFFFFFFFFFF5A5A
          5AB35A5A5AB35A5A5AB35A5A5AB35A5A5AB30000000000000000000000000000
          00005B5B5BB35B5B5BB35B5B5BB35B5B5BB35B5B5BB3FFFFFFFFFFFFFFFF5B5B
          5BB35B5B5BB35B5B5BB35B5B5BB35B5B5BB30000000000000000000000000000
          0000565656A85B5B5BB35B5B5BB35B5B5BB35B5B5BB3C2C2C2E3C2C2C2E35B5B
          5BB35B5B5BB35B5B5BB35B5B5BB3565656A80000000000000000000000000000
          00003A3A3A705D5D5DB35D5D5DB35D5D5DB35D5D5DB35D5D5DB35D5D5DB35D5D
          5DB35D5D5DB35D5D5DB35D5D5DB33A3A3A700000000000000000000000000000
          00000B0B0B16585858A85D5D5DB35D5D5DB35D5D5DB3F5F5F5FBF5F5F5FB5D5D
          5DB35D5D5DB35D5D5DB3585858A80B0B0B160000000000000000000000000000
          00000000000012121222595959A85F5F5FB35F5F5FB3F5F5F5FBF5F5F5FB5F5F
          5FB35F5F5FB3595959A812121222000000000000000000000000000000000000
          000000000000000000000C0C0C163C3C3C705A5A5AA85F5F5FB35F5F5FB35A5A
          5AA83C3C3C700C0C0C1600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
          000000000000003A39700010101F000000000000000000000000000000000000
          0000000000000016152A001A1A33000000000000000000000000000000000000
          000000000000007674C4008784FC006563AA000D0D1A00000000000000000015
          1428006564AB008C89F6007876CB000000000000000000000000000000000000
          000000000000006261A100CBC9FF00C6C4FF00928FF1006462A600615F9E0096
          95EA00C4C3FF00C7C5FF006361A4000000000000000000000000000000000000
          00000000000000302F5D00BDBCFF00F9F9FF00EEEDFF00C8C7FF00BFBDFF00EA
          EAFF00F9F9FF00BBB9FF0031305F000000000000000000000000000000000000
          000000000000001B1B3500A5A3F400F9F9FF00F9F9FF00F9F9FF00F9F9FF00F9
          F9FF00F9F9FF00A2A0F5001A1A33000000000000000000000000000000000000
          00000000000000151529009A98F100F9F9FF00F9F9FF00F9F9FF00F9F9FF00F9
          F9FF00F9F9FF009390F50017172D000000000000000000000000000000000000
          000000100F1E008885F000CBCAFF00F9F9FF00F9F9FF00F9F9FF00F9F9FF00F9
          F9FF00F9F9FF00CCCBFF008A88E8000C0C180000000000000000000000000019
          1830008C8ADF00CCCAFF00F8F8FF00F9F9FF00F9F9FF00F9F9FF00F9F9FF00F9
          F9FF00F9F9FF00F9F9FF00CECDFF008A87ED0019183000000000000A0A140086
          83F600C2C1FF00ECECFF00F9F9FF00F9F9FF00F9F9FF00F9F9FF00F9F9FF00F9
          F9FF00F9F9FF00F8F8FF00F0F0FF00C4C3FF008A88EA0017162C0006060C006D
          6BBF007876CE008381E5008B88F2009795F300E8E8FF00F9F9FF00F9F9FF00E8
          E8FF009694F3008B88F2008481EB007B78D5006C69BC000A0A14000000000000
          00000000000000010102000A0A140043417900AAA8FA00F9F9FF00F6F6FF00A2
          A0FB00403E730007070E00000000000000000000000000000000000000000000
          000000000000000000000000000000000000008280DB00DCDBFF00DBDAFF0082
          80DF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000030305300A4A2FA00A8A6FA0033
          3258000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000030306008280DE008380E10000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000A00000010000000100000000A000000040000000A00000010000000100000
          000A000000040000000A00000010000000100000000A00000002000000080C54
          35C0107348FF0F7246FF0A5032C1000000110C5435C0107348FF0F7246FF0A50
          32C1000000110C5435C0107348FF0F7246FF0A5032C1000000090000000A1484
          57FF70F0CEFF47E9BAFF117D51FF00000015148457FF70F0CEFF47E9BAFF117D
          51FF00000015148457FF70F0CEFF47E9BAFF117D51FF0000000B000000071696
          65FF92F9E1FF8CF8DDFF158E5EFF0000000F169665FF92F9E1FF8CF8DDFF158E
          5EFF0000000F169665FF92F9E1FF8CF8DDFF158E5EFF0000000800000003137A
          54C017A370FF18A06CFF12754FC100000007137A54C017A370FF18A06CFF1275
          4FC100000007137A54C017A370FF18A06CFF12754FC100000004000000010000
          000200000003896557FF0000000200000002000000024E39329B4E39319B0000
          000200000002000000027D584CFF000000030000000200000001000000000000
          0000000000008C695BFF8C6859FF8A6657FF896557FF876355FF866154FF8460
          52FF815F51FF815D50FF7F5B4EFF000000000000000000000000000000000000
          00000000000000000000000000030000000E000000174B3730A449362EA40000
          0019000000110000000400000000000000000000000000000000000000000000
          000000000000000000000000000C8F592DC5C77A3EFFC77C3EFFC57B3EFFC67B
          3DFF8D582DC80000001000000000000000000000000000000000000000000000
          0000000000000000000000000010CA8045FFEECB98FFEBC286FFEBC186FFEBC1
          87FFCA8145FF0000001600000000000000000000000000000000000000000000
          000000000000000000000000000ECE894EFFF4DAAFFFF2CF9BFFF1D09AFFF2CF
          99FFCE8A4EFF0000001400000000000000000000000000000000000000000000
          000000000000000000000000000BD5975FFFFCEED1FFFBE9C6FFFCEAC5FFFAE7
          C0FFD5955FFF0000001100000000000000000000000000000000000000000000
          0000000000000000000000000008DDA876FFFEF5E0FFFEF5DFFFFEF5DFFFFEF4
          DEFFDEA876FF0000000D00000000000000000000000000000000000000000000
          0000000000000000000000000004A7845FC1E1B080FFE1B080FFE1B180FFE1B1
          80FFA8835FC40000000700000000000000000000000000000000000000000000
          0000000000000000000000000001000000030000000500000006000000060000
          0007000000050000000100000000000000000000000000000000}
      end>
  end
  object WRCalc: TWRCalculaConfiguracoes
    TipoCalculo = tcCadastro
    SPrTipoCalc = tssCalcCadastro
    ProdutoMemoriaConfiguracao = PmComposicao
    TreeList = GridComposicaoTree
    SprFormula = SprFormula
    Left = 412
    Top = 204
  end
  object DSComposicao: TDataSource
    Left = 412
    Top = 176
  end
  object SpreadSheet_Referencia: TFDQuery
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select *'
      'from SPREADSHEET_REFERENCIA'
      'where (SPREADSHEET = :SpreadSheet)')
    Left = 440
    Top = 148
    ParamData = <
      item
        Name = 'SPREADSHEET'
        ParamType = ptInput
      end>
  end
  object DSProdutoClone: TDataSource
    Left = 564
    Top = 152
  end
end
