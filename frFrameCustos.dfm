inherited FrameCustos: TFrameCustos
  Width = 1059
  Height = 565
  OnEnter = FrameEnter
  ExplicitWidth = 1059
  ExplicitHeight = 565
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1059
    Height = 565
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ExplicitWidth = 1059
    ExplicitHeight = 565
    DesignSize = (
      1059
      565)
    inherited btnMenuConfig: TcxButton
      Left = 10000
      Top = 10000
      Width = 35
      TabOrder = 30
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 35
    end
    object cxLabel18: TcxLabel [1]
      Left = 26
      Top = 52
      Caption = 'Forma'#231#227'o do pre'#231'o do Produto'
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
    object EdtMargem: TcxDBCurrencyEdit [2]
      Left = 829
      Top = 124
      Hint = 'Margem de Contribui'#231#227'o'
      AutoSize = False
      DataBinding.DataField = 'MARGEM'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.DisplayFormat = '#,##0.00%'
      Properties.OnValidate = EdtMargemPropertiesValidate
      ShowHint = True
      Style.Color = clLime
      Style.HotTrack = False
      TabOrder = 10
      Height = 29
      Width = 78
    end
    object EdtValor: TcxDBCurrencyEdit [3]
      Left = 910
      Top = 124
      AutoSize = False
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.OnValidate = EdtValorPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 12615680
      Style.IsFontAssigned = True
      TabOrder = 11
      Height = 29
      Width = 107
    end
    object edtCalc_VAnterior_Custo: TcxDBCurrencyEdit [4]
      Left = 26
      Top = 326
      AutoSize = False
      DataBinding.DataField = 'CALC_VANTERIOR_CUSTO'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtCalc_VAnterior_CustoPropertiesValidate
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 86
    end
    object edtCusto: TcxDBCurrencyEdit [5]
      Left = 610
      Top = 128
      DataBinding.DataField = 'CUSTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.OnValidate = edtCustoPropertiesValidate
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 12615680
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 113
    end
    object btnBuscaCustoAnterior: TcxButton [6]
      Left = 200
      Top = 318
      Width = 160
      Height = 29
      Caption = 'Buscar Custo Anterior'
      TabOrder = 22
      OnClick = btnBuscaCustoAnteriorClick
    end
    object edt_VCompra_Total: TcxDBCurrencyEdit [7]
      Left = 285
      Top = 132
      AutoSize = False
      DataBinding.DataField = 'CALC_VCOMPRA_TOTAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.Color = clInfoBk
      TabOrder = 4
      Height = 21
      Width = 87
    end
    object edtCalc_QAnterior_Estoque: TcxDBCurrencyEdit [8]
      Left = 115
      Top = 326
      AutoSize = False
      DataBinding.DataField = 'CALC_QANTERIOR_ESTOQUE'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtCalc_QAnterior_EstoquePropertiesValidate
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 82
    end
    object edtValor_Compra: TcxDBCurrencyEdit [9]
      Left = 26
      Top = 132
      AutoSize = False
      DataBinding.DataField = 'VALOR_COMPRA'
      DataBinding.DataSource = DS
      Properties.OnValidate = edtValor_CompraPropertiesValidate
      Style.HotTrack = False
      TabOrder = 1
      Height = 21
      Width = 81
    end
    object chkPode_Ser_Comprado: TcxDBCheckBox [10]
      Left = 659
      Top = 218
      DataBinding.DataField = 'PODE_SER_COMPRADO'
      DataBinding.DataSource = DS
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 13
      Transparent = True
    end
    object chkPode_Ser_Vendido: TcxDBCheckBox [11]
      Left = 760
      Top = 218
      DataBinding.DataField = 'PODE_SER_VENDIDO'
      DataBinding.DataSource = DS
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 14
      Transparent = True
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [12]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'COMPOSICAO'
      DataBinding.DataSource = DS
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 31
      Visible = False
      Height = 21
      Width = 33
    end
    object chkTem_Margem_Fixa_Contribuicao: TcxDBCheckBox [13]
      Left = 34
      Top = 194
      AutoSize = False
      DataBinding.DataField = 'TEM_MARGEM_FIXA_CONTIBUICAO'
      DataBinding.DataSource = DS
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 17
      Transparent = True
      Height = 21
      Width = 21
    end
    object chkPode_Atualizar_Markup: TcxDBCheckBox [14]
      Left = 34
      Top = 218
      AutoSize = False
      DataBinding.DataField = 'PODE_ATUALIZAR_MARKUP'
      DataBinding.DataSource = DS
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 18
      Transparent = True
      Height = 21
      Width = 21
    end
    object edtvVenda_Custo_Minimo: TcxDBCurrencyEdit [15]
      Left = 990
      Top = 216
      AutoSize = False
      DataBinding.DataField = 'VALOR_VENDA_MINIMO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.OnChange = edtvVenda_Custo_MinimoPropertiesChange
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clGreen
      Style.IsFontAssigned = True
      TabOrder = 16
      Height = 23
      Width = 151
    end
    object btnCopiaCustoCompra: TcxButton [16]
      Left = 474
      Top = 127
      Width = 64
      Height = 26
      Hint = 'Copiar Custo Compra'
      Caption = 'Copiar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnCopiaCustoCompraClick
    end
    object lblCalc_VCompra_Extra: TcxDBButtonEdit [17]
      Left = 110
      Top = 132
      AutoSize = False
      DataBinding.DataField = 'CALC_VCOMPRA_EXTRA'
      DataBinding.DataSource = DS
      ParentColor = True
      ParentFont = False
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
      Properties.OnButtonClick = lblCalc_VCompra_ExtraPropertiesButtonClick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 6776679
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 21
      Width = 97
    end
    object edtRendimento: TcxDBButtonEdit [18]
      Left = 210
      Top = 132
      AutoSize = False
      DataBinding.DataField = 'QUANT_RENDIMENTO'
      DataBinding.DataSource = DS
      ParentColor = True
      ParentFont = False
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
      Properties.OnButtonClick = edtRendimentoPropertiesButtonClick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 6776679
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 21
      Width = 72
    end
    object edtCalc_PMarkup: TcxDBButtonEdit [19]
      Left = 726
      Top = 128
      AutoSize = False
      DataBinding.DataField = 'CALC_PMARKUP'
      DataBinding.DataSource = DS
      ParentColor = True
      ParentFont = False
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
      Properties.OnButtonClick = edtCalc_PMarkupPropertiesButtonClick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 6776679
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 25
      Width = 100
    end
    object chkPode_Alterar_Estoque: TcxDBCheckBox [20]
      Left = 241
      Top = 218
      AutoSize = False
      Caption = 'Movimenta Estoque'
      DataBinding.DataField = 'PODE_ALTERAR_ESTOQUE'
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
      Width = 21
    end
    object edtCalc_Venda_Minimo_Quant: TcxDBCurrencyEdit [21]
      Left = 852
      Top = 218
      AutoSize = False
      DataBinding.DataField = 'CALC_VENDA_MINIMO_QUANT'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 15
      Height = 21
      Width = 135
    end
    object edtLucroPrevisto: TcxDBCurrencyEdit [22]
      Left = 1020
      Top = 124
      AutoSize = False
      DataBinding.DataField = 'CALC_VLUCRO'
      DataBinding.DataSource = DS
      ParentColor = True
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 6776679
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Height = 29
      Width = 121
    end
    object cxGrid1: TcxGrid [23]
      Left = 26
      Top = 418
      Width = 1115
      Height = 200
      TabOrder = 28
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
    object edtCentro_CustoÎCentro_Custo: TcxButtonEdit [24]
      Left = 26
      Top = 394
      AutoSize = False
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 113
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 121
    end
    object lblCentro_CustoÎCentro_CustoÎDESCRICAO: TcxLabel [25]
      Left = 150
      Top = 392
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Height = 23
      Width = 505
    end
    object edtPercentual: TcxCurrencyEdit [26]
      Left = 658
      Top = 394
      AutoSize = False
      Properties.DisplayFormat = '0;-0'
      Style.HotTrack = False
      TabOrder = 25
      Height = 21
      Width = 69
    end
    object btnAdicionarCentroCusto: TcxButton [27]
      Left = 730
      Top = 380
      Width = 45
      Height = 35
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 26
    end
    object btnRemoverCentroCusto: TcxButton [28]
      Left = 778
      Top = 380
      Width = 45
      Height = 35
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 27
      TabStop = False
    end
    object cxGrid2: TcxGrid [29]
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 29
      Visible = False
      object cxGrid2DBChartView1: TcxGridDBChartView
        DataController.DataSource = DSQuantVenda
        DiagramColumn.Active = True
        object cxGrid2DBChartView1DataGroup1: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'VENDAS'
        end
        object cxGrid2DBChartView1Series1: TcxGridDBChartSeries
          DataBinding.FieldName = 'TOTAL'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBChartView1
      end
    end
    object btnUltimaCompra: TcxButton [30]
      Left = 375
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Ult. Compra'
      TabOrder = 5
      OnClick = btnUltimaCompraClick
    end
    object edtUnidadeRendimento: TcxDBTextEdit [31]
      Left = 541
      Top = 128
      AutoSize = False
      DataBinding.DataField = 'UNIDADE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 6776679
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 25
      Width = 66
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Parent = nil
      ControlOptions.OriginalWidth = 35
      Index = -1
    end
    object dxLayoutItem108: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = cxLabel18
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 173
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoTabCusto: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      UseIndent = False
      Index = 2
    end
    object LiCusctoComposicao: TdxLayoutGroup
      Parent = GrupoTabCusto
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Custos'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup59: TdxLayoutGroup
      Parent = LiCusctoComposicao
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object GrupoConfiguracaoVenda: TdxLayoutGroup
      Parent = dxLayoutGroup59
      CaptionOptions.Text = 'Configura'#231#227'o de pre'#231'o'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object LiEdtMargem: TdxLayoutItem
      Parent = GrupoCustoUnitario
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Hint = 'Margem'
      CaptionOptions.Text = 'Margem%'
      CaptionOptions.Layout = clTop
      Control = EdtMargem
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LiValor: TdxLayoutItem
      Parent = GrupoCustoUnitario
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'R$ Valor Venda'
      CaptionOptions.Layout = clTop
      Control = EdtValor
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtCalc_VAnterior_Custo: TdxLayoutItem
      Parent = GrupoCustoAnterior
      AlignVert = avBottom
      CaptionOptions.Text = 'Custo Anterior'
      CaptionOptions.Layout = clTop
      Control = edtCalc_VAnterior_Custo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtCusto: TdxLayoutItem
      Parent = GrupoCustoUnitario
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'R$ Custo'
      CaptionOptions.Layout = clTop
      Control = edtCusto
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object libtnBuscaCustoAnterior: TdxLayoutItem
      Parent = GrupoCustoAnterior
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnBuscaCustoAnterior
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoCustoAnterior: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'C'#225'lculo do Custo Unit'#225'rio pela M'#233'dio em estoque'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object liedt_VCompra_Total: TdxLayoutItem
      Parent = GrupoRendimentoCompra
      AlignVert = avBottom
      CaptionOptions.Text = 'R$ Compra'
      CaptionOptions.Layout = clTop
      Control = edt_VCompra_Total
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtCalc_QAnterior_Estoque: TdxLayoutItem
      Parent = GrupoCustoAnterior
      AlignVert = avBottom
      CaptionOptions.Text = 'Estoq Anterior'
      CaptionOptions.Layout = clTop
      Control = edtCalc_QAnterior_Estoque
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoCustoUnitario: TdxLayoutGroup
      Parent = liGurpoCusto
      CaptionOptions.Text = 'Forma'#231#227'o do Valor de Venda'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object liedtValor_Compra: TdxLayoutItem
      Parent = GrupoRendimentoCompra
      AlignVert = avBottom
      CaptionOptions.Text = 'Valor Compra'
      CaptionOptions.Layout = clTop
      Control = edtValor_Compra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoRendimentoCompra: TdxLayoutGroup
      Parent = liGurpoCusto
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Rendimento da '#218'ltima Compra'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lichkPode_Ser_Comprado: TdxLayoutItem
      Parent = GrupoConfiguracaoVenda
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'Pode Comprar'
      CaptionOptions.Layout = clRight
      Control = chkPode_Ser_Comprado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liGurpoCusto: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 1
    end
    object lichkPode_Ser_Vendido: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'Pode Vender'
      CaptionOptions.Layout = clRight
      Control = chkPode_Ser_Vendido
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avTop
      Visible = False
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object lichkTem_Margem_Fixa_Contribuicao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Mant'#233'm Margem na importa'#231#227'o'
      CaptionOptions.Layout = clRight
      Control = chkTem_Margem_Fixa_Contribuicao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lichkPode_Atualizar_Markup: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Atualiza Markup'
      CaptionOptions.Layout = clRight
      Control = chkPode_Atualizar_Markup
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'R$ Valor m'#237'nimo de venda'
      CaptionOptions.Layout = clTop
      Control = edtvVenda_Custo_Minimo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = GrupoConfiguracaoVenda
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup59
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Encargos sobre o Valor de Venda'
      Visible = False
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object LibtnCopiaCustoCompra: TdxLayoutItem
      Parent = GrupoCustoUnitario
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnCopiaCustoCompra
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoRendimentoCompra
      AlignVert = avBottom
      CaptionOptions.Text = 'Impostos/Desc...'
      CaptionOptions.Layout = clTop
      Control = lblCalc_VCompra_Extra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtRendimento: TdxLayoutItem
      Parent = GrupoRendimentoCompra
      AlignVert = avBottom
      CaptionOptions.Text = 'Rendimento'
      CaptionOptions.Layout = clTop
      Control = edtRendimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtCalc_PMarkup: TdxLayoutItem
      Parent = GrupoCustoUnitario
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Markup'
      CaptionOptions.Layout = clTop
      Control = edtCalc_PMarkup
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoConfiguracaoVenda
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Movimenta Estoque'
      CaptionOptions.Layout = clRight
      Control = chkPode_Alterar_Estoque
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = GrupoConfiguracaoVenda
      AlignHorz = ahRight
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Quant m'#237'nima de Venda'
      CaptionOptions.Layout = clTop
      Control = edtCalc_Venda_Minimo_Quant
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 135
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtLucroPrevisto: TdxLayoutItem
      Parent = GrupoCustoUnitario
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Lucro Previsto'
      CaptionOptions.Layout = clTop
      Control = edtLucroPrevisto
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoCentroCusto
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoCentroCusto: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Centro de Custo'
      Index = 5
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      Control = edtCentro_CustoÎCentro_Custo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = lblCentro_CustoÎCentro_CustoÎDESCRICAO
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 505
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = GrupoCentroCusto
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      Control = edtPercentual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Visible = False
      Control = btnAdicionarCentroCusto
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnRemoverCentroCusto
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup3
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Forma'#231#227'o de Pre'#231'o'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      Control = cxGrid2
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'DashBoard'
      Visible = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = GrupoRendimentoCompra
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnUltimaCompra
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = GrupoCustoUnitario
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Un. Rend.'
      CaptionOptions.Layout = clTop
      Control = edtUnidadeRendimento
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited ImgListMenuConfig: TImageList
    Left = 392
    Top = 156
  end
  inherited MenuConfig: TPopupMenu
    Left = 420
    Top = 156
  end
  inherited UCControls1: TUCControls
    Left = 420
    Top = 128
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 392
    Top = 128
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited DS: TDataSource
    Left = 312
    Top = 108
  end
  inherited wrFrameEventos: TwrFrameEventos
    OnInicializar = wrFrameEventosInicializar
    Left = 448
    Top = 128
  end
  inherited WRFormataCamposDataSets: TWRFormataCamposDataSets
    Left = 448
    Top = 156
  end
  object DSCustoExtra: TDataSource
    Left = 312
    Top = 136
  end
  object dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList
    Left = 340
    Top = 136
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
  object WRCalc: TWRCalculaConfiguracoes
    DSProduto = DS
    TipoCalculo = tcCompra
    SPrTipoCalc = tssCalcCompra
    Left = 340
    Top = 108
  end
  object DSQuantVenda: TDataSource
    DataSet = QuantVenda
    Left = 448
    Top = 312
  end
  object QuantVenda: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO_COMPOSICAO'
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select sum(VP.QUANT) as VENDAS, P.CODIGO, P.DESCRICAO,'
      
        '       sum((VP.VALOR * VP.QUANT) - coalesce(VP.VDESC, 0) + coale' +
        'sce(VP.VOUTRO, 0)) as TOTAL,'
      
        '       sum((VP.VALOR * VP.QUANT) - coalesce(VP.VDESC, 0) + coale' +
        'sce(VP.VOUTRO, 0)) / sum(VP.QUANT) as DIV,'
      '       max(P.UNIDADE)'
      'from VENDA V'
      'left join VENDA_PRODUTO VP on (V.CODIGO = VP.CODVENDA)'
      
        'left join PRODUTO P on (VP.CODPRODUTO = P.CODIGO) and (V.DT_FATU' +
        'RAMENTO is not null)'
      'where V.STATUS like '#39'ATIVO%'#39
      '      and (VP.PARENT is null)'
      '      and V.IS_VENDA = '#39'S'#39
      '      and VP.CODIGO = :CODIGO'
      'group by 2, 3'
      'order by 1 desc, 4 desc  ')
    Left = 422
    Top = 312
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QuantVendaVENDAS: TFloatField
      FieldName = 'VENDAS'
      Origin = 'VENDAS'
    end
    object QuantVendaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 15
    end
    object QuantVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object QuantVendaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QuantVendaDIV: TFloatField
      FieldName = 'DIV'
      Origin = 'DIV'
    end
    object QuantVendaMAX: TStringField
      FieldName = 'MAX'
      Origin = '"MAX"'
      Size = 6
    end
  end
end
