inherited ImpriProduto_Pauta: TImpriProduto_Pauta
  Caption = 'ImpriProduto_Pauta'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep1: TQuickRep
    DataSet = Produto
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBand1: TQRBand
      Height = 140
      Frame.DrawBottom = True
      Size.Values = (
        370.416666666666700000
        1899.708333333333000000)
      ExplicitHeight = 140
      inherited QRSysData1: TQRSysData
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          256.645833333333300000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QR_Titulo: TQRLabel
        Width = 147
        Size.Values = (
          63.500000000000000000
          547.687500000000000000
          193.145833333333300000
          388.937500000000000000)
        Caption = 'Pauta de Pre'#231'os'
        FontSize = 12
        ExplicitWidth = 147
      end
      inherited QR_Periodo: TQRLabel
        Enabled = False
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          256.645833333333300000
          624.416666666666700000)
        FontSize = 10
      end
      inherited QRLabel1: TQRLabel
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          256.645833333333300000
          161.395833333333300000)
        FontSize = 10
      end
      inherited QR_Fantasia: TQRLabel
        Width = 430
        Size.Values = (
          52.916666666666670000
          547.687500000000000000
          0.000000000000000000
          1137.708333333333000000)
        FontSize = 12
        ExplicitWidth = 430
      end
      inherited QR_Endereco: TQRLabel
        Width = 402
        Size.Values = (
          39.687500000000000000
          547.687500000000000000
          60.854166666666670000
          1063.625000000000000000)
        Font.Height = -11
        FontSize = 8
        ExplicitWidth = 402
      end
      inherited QR_CNPJ_INSC_Fone: TQRLabel
        Width = 273
        Size.Values = (
          39.687500000000000000
          547.687500000000000000
          103.187500000000000000
          722.312500000000000000)
        Font.Height = -11
        FontSize = 8
        ExplicitWidth = 273
      end
      inherited QRImage1: TQRImage
        Size.Values = (
          317.500000000000000000
          2.645833333333333000
          2.645833333333333000
          529.166666666666700000)
      end
      object QRLabel3: TQRLabel
        Left = 168
        Top = 121
        Width = 63
        Height = 17
        Size.Values = (
          44.979166666666670000
          444.500000000000000000
          320.145833333333300000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descir'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 0
        Top = 121
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          320.145833333333300000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 660
        Top = 121
        Width = 55
        Height = 17
        Size.Values = (
          44.979166666666670000
          1746.250000000000000000
          320.145833333333300000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'R$ Valor'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 611
        Top = 122
        Width = 19
        Height = 17
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          322.791666666666700000
          50.270833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'UN'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 72
        Top = 121
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          320.145833333333300000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'd.Fab.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    inherited QRBand2: TQRBand
      Top = 190
      Height = 12
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      ExplicitTop = 190
      ExplicitHeight = 12
      inherited QRLabel2: TQRLabel
        Size.Values = (
          39.687500000000000000
          1418.166666666667000000
          -5.291666666666667000
          473.604166666666700000)
        FontSize = 8
      end
      inherited QRSysData2: TQRSysData
        Left = 339
        Size.Values = (
          39.687500000000000000
          896.937500000000000000
          -5.291666666666667000
          103.187500000000000000)
        FontSize = 8
        ExplicitLeft = 339
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 178
      Width = 718
      Height = 12
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText9: TQRDBText
        Left = 4
        Top = 0
        Width = 39
        Height = 13
        Size.Values = (
          34.395833333333330000
          10.583333333333330000
          0.000000000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produto
        DataField = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 170
        Top = 0
        Width = 427
        Height = 13
        Size.Values = (
          34.395833333333330000
          449.791666666666700000
          0.000000000000000000
          1129.770833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produto
        DataField = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText11: TQRDBText
        Left = 684
        Top = 0
        Width = 32
        Height = 13
        Size.Values = (
          34.395833333333330000
          1809.750000000000000000
          0.000000000000000000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produto
        DataField = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 610
        Top = -1
        Width = 22
        Height = 13
        Size.Values = (
          34.395833333333330000
          1613.958333333333000000
          -2.645833333333333000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produto
        DataField = 'UNIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 74
        Top = 0
        Width = 63
        Height = 13
        Size.Values = (
          34.395833333333330000
          195.791666666666700000
          0.000000000000000000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produto
        DataField = 'CODFABRICA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
    end
  end
  object Produto: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = ProdutoBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTO'
      ''
      'ORDER BY DESCRICAO')
    Left = 568
    Top = 94
    object ProdutoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PRODUTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object FloatField2: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'PRODUTO.ESTOQUE'
      DisplayFormat = '00'
    end
    object ProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PRODUTO"."UNIDADE"'
      Size = 3
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR'
      Origin = 'PRODUTO.VALOR'
      DisplayFormat = '##,##0.00'
    end
    object ProdutoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PRODUTO.DESCRICAO'
      Size = 300
    end
    object ProdutoCODFABRICA: TIBStringField
      FieldName = 'CODFABRICA'
      Origin = 'PRODUTO.CODFABRICA'
      Size = 60
    end
  end
  object UCHistWRGeral1: TUCHistWRGeral
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    MonitorarOnCreate = True
    MonitorarOnDestroy = True
    Left = 570
    Top = 125
  end
end
