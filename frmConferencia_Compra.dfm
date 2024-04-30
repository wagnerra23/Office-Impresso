object FormConferencia_Compra: TFormConferencia_Compra
  Left = 0
  Top = 0
  Caption = 'Confer'#234'ncia de Compra'
  ClientHeight = 566
  ClientWidth = 1323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1323
    Height = 566
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 10
      Top = 10
      Width = 1303
      Height = 496
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSNF_ENTRADA_PRODUTOS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'd Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          Width = 69
        end
        object cxGrid1DBTableView1CODFABRICA: TcxGridDBColumn
          Caption = 'C'#243'd Fabrica'
          DataBinding.FieldName = 'CODFABRICA'
          Width = 81
        end
        object cxGrid1DBTableView1NF_DESCRICAO: TcxGridDBColumn
          Caption = 'Desc. NF'
          DataBinding.FieldName = 'NF_DESCRICAO'
          Width = 209
        end
        object cxGrid1DBTableView1UNIDADE: TcxGridDBColumn
          Caption = 'Un Compra'
          DataBinding.FieldName = 'UNIDADE'
          Width = 58
        end
        object cxGrid1DBTableView1UN_SUBUNIDADE_DESCRICAO: TcxGridDBColumn
          Caption = 'SubUnidade'
          DataBinding.FieldName = 'UN_SUBUNIDADE_DESCRICAO'
          Width = 96
        end
        object cxGrid1DBTableView1CUSTO: TcxGridDBColumn
          Caption = 'Custo Compra'
          DataBinding.FieldName = 'CUSTO'
        end
        object cxGrid1DBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor Compra'
          DataBinding.FieldName = 'VALOR'
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Width = 43
        end
        object cxGrid1DBTableView1CODPRODUTO_LOCAL: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_LOCAL'
        end
        object cxGrid1DBTableView1CODFABRICA_LOCAL: TcxGridDBColumn
          DataBinding.FieldName = 'CODFABRICA_LOCAL'
          Width = 110
        end
        object cxGrid1DBTableView1DESCRICAO_LOCAL: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO_LOCAL'
          Width = 103
        end
        object cxGrid1DBTableView1UNIDADE_LOCAL: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDADE_LOCAL'
        end
        object cxGrid1DBTableView1UN_PADRAO_COMPRA: TcxGridDBColumn
          DataBinding.FieldName = 'UN_PADRAO_COMPRA'
          Width = 117
        end
        object cxGrid1DBTableView1CUSTO_LOCAL: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO_LOCAL'
        end
        object cxGrid1DBTableView1VALOR_LOCAL: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_LOCAL'
        end
        object cxGrid1DBTableView1CODUSUARIO_AUTORIZOU: TcxGridDBColumn
          DataBinding.FieldName = 'CODUSUARIO_AUTORIZOU'
        end
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'USUARIO'
        end
      end
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
        DataController.DataSource = DSNF_ENTRADA_PRODUTOS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.BandHeaderLineCount = 2
        OptionsView.FixedBandSeparatorWidth = 10
        Bands = <
          item
            Caption = 'EM ESTOQUE'
            Styles.Header = cxStyle1
            Width = 640
          end
          item
            Caption = 'COMPRA'
            Styles.Header = cxStyle1
            Width = 802
          end>
        object cxGrid1DBBandedTableView1CODPRODUTO: TcxGridDBBandedColumn
          Caption = 'C'#243'd. Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 86
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1CODFABRICA: TcxGridDBBandedColumn
          Caption = 'C'#243'd. Fabrica'
          DataBinding.FieldName = 'CODFABRICA'
          Width = 87
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1NF_DESCRICAO: TcxGridDBBandedColumn
          Caption = 'NF Descricao'
          DataBinding.FieldName = 'NF_DESCRICAO'
          Width = 212
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1UNIDADE: TcxGridDBBandedColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'UNIDADE'
          Visible = False
          Width = 84
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1UN_SUBUNIDADE_DESCRICAO: TcxGridDBBandedColumn
          Caption = 'SubUnidade'
          DataBinding.FieldName = 'UN_SUBUNIDADE_DESCRICAO'
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1QUANT: TcxGridDBBandedColumn
          Caption = 'Quant'
          DataBinding.FieldName = 'QUANT'
          Width = 53
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1CUSTO: TcxGridDBBandedColumn
          Caption = 'Custo'
          DataBinding.FieldName = 'CUSTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = 'R$,0.00;-R$,0.00'
          Width = 99
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1VALOR: TcxGridDBBandedColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 165
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1CODPRODUTO_LOCAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODPRODUTO_LOCAL'
          Visible = False
          Width = 22
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1CODFABRICA_LOCAL: TcxGridDBBandedColumn
          Caption = 'C'#243'd. Fabrica'
          DataBinding.FieldName = 'CODFABRICA_LOCAL'
          Width = 71
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1DESCRICAO_LOCAL: TcxGridDBBandedColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO_LOCAL'
          Width = 262
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1UNIDADE_LOCAL: TcxGridDBBandedColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'UNIDADE_LOCAL'
          Width = 55
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1UN_PADRAO_COMPRA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UN_PADRAO_COMPRA'
          Visible = False
          Width = 115
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1ESTOQUE: TcxGridDBBandedColumn
          Caption = 'Estoque'
          DataBinding.FieldName = 'ESTOQUE'
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1CUSTO_LOCAL: TcxGridDBBandedColumn
          Caption = 'Custo '
          DataBinding.FieldName = 'CUSTO_LOCAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 54
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1VALOR_LOCAL: TcxGridDBBandedColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR_LOCAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 57
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1CODUSUARIO_AUTORIZOU: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODUSUARIO_AUTORIZOU'
          Visible = False
          Width = 38
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1USUARIO: TcxGridDBBandedColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'USUARIO'
          Visible = False
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
      end
    end
    object dxTileControl1: TdxTileControl
      Left = 10
      Top = 512
      Width = 1303
      Height = 44
      Align = alNone
      OptionsView.CenterContentHorz = True
      OptionsView.CenterContentVert = True
      OptionsView.GroupIndent = 350
      OptionsView.IndentVert = 5
      OptionsView.ItemHeight = 30
      OptionsView.ItemWidth = 150
      TabOrder = 1
      object dxTileControl1Group1: TdxTileControlGroup
        Index = 0
      end
      object dxTileControl1Group2: TdxTileControlGroup
        Index = 1
      end
      object dxTileControl1Group3: TdxTileControlGroup
        Index = 2
      end
      object dxTileControl1Item1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Style.GradientBeginColor = clSilver
        Style.GradientEndColor = clSilver
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clBackground
        Text1.Font.Height = -13
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Fechar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = dxTileControl1Item1Click
      end
      object dxTileControl1Item2: TdxTileControlItem
        GroupIndex = 2
        IndexInGroup = 0
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Autorizar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = dxTileControl1Item2Click
      end
      object dxTileControl1Item3: TdxTileControlItem
        GroupIndex = 1
        IndexInGroup = 0
        Style.BorderColor = clWhite
        Style.GradientBeginColor = clWhite
        Style.GradientEndColor = clWhite
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clBackground
        Text1.Font.Height = -13
        Text1.Font.Name = 'Adobe Garamond Pro'
        Text1.Font.Style = [fsItalic, fsUnderline]
        Text1.Value = 'Autorizado por:'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = dxTileControl1Item3Click
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'dxTileControl1'
      CaptionOptions.Visible = False
      Control = dxTileControl1
      ControlOptions.OriginalHeight = 44
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object NF_Produtos_Conferencia: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      
        'select NEP.CODPRODUTO, NEP.CODFABRICA, NEP.NF_DESCRICAO, NEP.UNI' +
        'DADE,'
      
        '       NEP.UN_SUBUNIDADE_DESCRICAO, NEP.QUANT, NEP.CUSTO, NEP.VA' +
        'LOR,'
      
        '       PF.CODPRODUTO as CODPRODUTO_LOCAL, PF.CODFABRICA as CODFA' +
        'BRICA_LOCAL,'
      
        '       P.DESCRICAO as DESCRICAO_LOCAL, P.UNIDADE as UNIDADE_LOCA' +
        'L, P.UN_PADRAO_COMPRA, pe.estoque,'
      
        '       P.CUSTO as CUSTO_LOCAL, P.VALOR as VALOR_LOCAL, PF.CODUSU' +
        'ARIO_AUTORIZOU,'
      '       U.USUARIO'
      'from NF_ENTRADA_PRODUTOS NEP'
      
        'left join PRODUTO_FORNECEDOR PF on PF.CODPRODUTO = NEP.CODPRODUT' +
        'O'
      'left join PRODUTO P on P.CODIGO = NEP.CODPRODUTO'
      'left join USUARIO U on U.CODIGO = PF.CODUSUARIO_AUTORIZOU'
      
        'left join PRODUTO_ESTOQUE PE on PE.CODPRODUTO = NEP.CODPRODUTO a' +
        'nd PE.CODEMPRESA = :CODEMPRESA'
      'where NEP.CODNF_ENTRADA = :CODIGO   ')
    Left = 144
    Top = 224
    ParamData = <
      item
        Name = 'CODEMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
    object NF_Produtos_ConferenciaCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
    end
    object NF_Produtos_ConferenciaCODFABRICA: TStringField
      FieldName = 'CODFABRICA'
      Origin = 'CODFABRICA'
      Size = 60
    end
    object NF_Produtos_ConferenciaNF_DESCRICAO: TStringField
      FieldName = 'NF_DESCRICAO'
      Origin = 'NF_DESCRICAO'
      Size = 120
    end
    object NF_Produtos_ConferenciaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object NF_Produtos_ConferenciaUN_SUBUNIDADE_DESCRICAO: TStringField
      FieldName = 'UN_SUBUNIDADE_DESCRICAO'
      Origin = 'UN_SUBUNIDADE_DESCRICAO'
      Size = 150
    end
    object NF_Produtos_ConferenciaCUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object NF_Produtos_ConferenciaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object NF_Produtos_ConferenciaCODPRODUTO_LOCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODPRODUTO_LOCAL'
      Origin = 'CODPRODUTO'
      ProviderFlags = []
      Size = 15
    end
    object NF_Produtos_ConferenciaCODFABRICA_LOCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODFABRICA_LOCAL'
      Origin = 'CODFABRICA'
      ProviderFlags = []
      Size = 60
    end
    object NF_Produtos_ConferenciaDESCRICAO_LOCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_LOCAL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 300
    end
    object NF_Produtos_ConferenciaUNIDADE_LOCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE_LOCAL'
      Origin = 'UNIDADE'
      ProviderFlags = []
      Size = 6
    end
    object NF_Produtos_ConferenciaUN_PADRAO_COMPRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UN_PADRAO_COMPRA'
      Origin = 'UN_PADRAO_COMPRA'
      ProviderFlags = []
      Size = 150
    end
    object NF_Produtos_ConferenciaCUSTO_LOCAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTO_LOCAL'
      Origin = 'CUSTO'
      ProviderFlags = []
    end
    object NF_Produtos_ConferenciaVALOR_LOCAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_LOCAL'
      Origin = 'VALOR'
      ProviderFlags = []
    end
    object NF_Produtos_ConferenciaCODUSUARIO_AUTORIZOU: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODUSUARIO_AUTORIZOU'
      Origin = 'CODUSUARIO_AUTORIZOU'
      ProviderFlags = []
    end
    object NF_Produtos_ConferenciaUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object NF_Produtos_ConferenciaQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'QUANT'
    end
    object NF_Produtos_ConferenciaESTOQUE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
    end
  end
  object DSNF_ENTRADA_PRODUTOS: TDataSource
    DataSet = NF_Produtos_Conferencia
    Left = 168
    Top = 224
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 192
    Top = 224
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 14680288
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000040744558745469746C6500436F6E646974696F6E616C466F726D6174
          74696E7349636F6E5365744172726F7773333B436F6E646974696F6E616C466F
          726D617474696E673BFDCD101C000002CB49444154785E55925B48545F14C6D7
          9919D3C9B4CC994954D21CAF21198594141576F3A13FA3790311865049A84090
          4A1D93860145905E06FB3F5452440F4DE818F810245A2A2422961708876C2475
          BC4598848E3AFBACD6D9FB28F6C13A67C3F9BEDF5E7BAF23D9DA4E832244F140
          90A0A97C50BAD372225EBF4FDBE6F5AE96BD699EF45A1BD311148FCC6D7CF9B2
          6102748C2194E5DD57D2BC920C055265E3F1232653E4C773277362DBFDEEBEDC
          2A3CFFA26EE2BB67D9852450E470DAF95B23B36DACCCC3E5F6630951D1C6BE9C
          33B9B1BABD6B907735272626D6D87FADD26C4E361669101928A56CCC55DD9A09
          9E25179024AB2D3DB1E1D9A5D9A1A956FCF0CD861DA3A5D8396AC5EE898778B3
          29CB77D91A9FAC6CFA75F11514DF4B13802A6726EFA4E46E5A52FD938BB38353
          4EECF5D452B8045D9F0BD13552881D5F4AF1FD783D5638B2E62F141F4E25BFB6
          A09A5E2449091755A5269A53A27AFFBB9C17ED673EF8B5F603186E6D5F2A3FA2
          4E1302619A3870B5F72C78C67DD9FDEE190F659974FD564A4AD2D1A81ECB95FC
          686D901F56FC3E90D916ACACCF53505CF77EFD21422068404B917070BDEE5E9C
          1C9BCFFED4353729E557274E830471623C08064318582CA7E0F7FA024504234C
          6F82B7EE21585EFAB3334319A5B9AEFFA71294FE82A934547C5DE6C8F875A324
          1FA67F0E83183C01828DD0E91E86E7F6311379D64188516DE82CB7CD1B8EDA5A
          6ECE88A990580081C90C6494D538D23A00329381E41F9979ACB40175F61678F7
          D40BBA88C8506E06619764861C8EBB017CEEE2D251784586A4537644603B0046
          004601592680C411A223A67E8700F7924505C82A0D85817214A600C89C89288E
          403ED1816290000E1C0C15002432928124004C04F441E1402BCE651422261722
          E360F209804CE49A078F40D5D6C2ECEA407353FB59755A20A93F5360930D28DF
          6B6C4E6E8C30880E24F8575AAA10AA3D62B4AA046B531D21DB1DF80B3C7A8878
          001982610000000049454E44AE426082}
        FileName = 'Images\Conditional Formatting\IconSetArrows3_16x16.png'
        Keywords = 'Conditional Formatting;IconSetArrows3'
      end>
  end
end
