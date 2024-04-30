inherited ImpriProdutoCusto_Loja: TImpriProdutoCusto_Loja
  Caption = 'ImpriProdutoCusto_Loja'
  OnClose = FormClose
  ExplicitWidth = 807
  ExplicitHeight = 623
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
        Width = 376
        Size.Values = (
          63.500000000000000000
          547.687500000000000000
          193.145833333333300000
          994.833333333333300000)
        Caption = ' Relat'#243'rio de Produtos com o custo da loja'
        FontSize = 12
        ExplicitWidth = 376
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
        Width = 481
        Size.Values = (
          52.916666666666670000
          547.687500000000000000
          0.000000000000000000
          1272.645833333333000000)
        FontSize = 12
        ExplicitWidth = 481
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
        Left = 96
        Top = 121
        Width = 63
        Height = 17
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
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
        Left = 2
        Top = 121
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
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
        Left = 602
        Top = 120
        Width = 55
        Height = 17
        Size.Values = (
          44.979166666666670000
          1592.791666666667000000
          317.500000000000000000
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
      object QRLabel5: TQRLabel
        Left = 666
        Top = 120
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1762.125000000000000000
          317.500000000000000000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Estoque'
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
        Left = 510
        Top = 120
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          1349.375000000000000000
          317.500000000000000000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Custo Loja'
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
        Left = 470
        Top = 120
        Width = 19
        Height = 17
        Size.Values = (
          44.979166666666670000
          1243.541666666667000000
          317.500000000000000000
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
    end
    inherited QRBand2: TQRBand
      Top = 218
      Height = 12
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      ExplicitTop = 218
      ExplicitHeight = 12
      inherited QRLabel2: TQRLabel
        Left = 387
        Width = 328
        Size.Values = (
          39.687500000000000000
          1023.937500000000000000
          -5.291666666666667000
          867.833333333333300000)
        FontSize = 8
        ExplicitLeft = 387
        ExplicitWidth = 328
      end
      inherited QRSysData2: TQRSysData
        Size.Values = (
          39.687500000000000000
          896.937500000000000000
          -5.291666666666667000
          103.187500000000000000)
        FontSize = 8
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 178
      Width = 718
      Height = 13
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText9: TQRDBText
        Left = 3
        Top = 0
        Width = 39
        Height = 13
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
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
        Left = 97
        Top = 0
        Width = 57
        Height = 13
        Size.Values = (
          34.395833333333330000
          256.645833333333300000
          0.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
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
        Left = 622
        Top = 0
        Width = 32
        Height = 13
        Size.Values = (
          34.395833333333330000
          1645.708333333333000000
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
      object QRDBText12: TQRDBText
        Left = 670
        Top = 0
        Width = 45
        Height = 13
        Size.Values = (
          34.395833333333330000
          1772.708333333333000000
          0.000000000000000000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produto
        DataField = 'ESTOQUE'
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
      object QRDBText1: TQRDBText
        Left = 515
        Top = 0
        Width = 61
        Height = 13
        Size.Values = (
          34.395833333333330000
          1362.604166666667000000
          0.000000000000000000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produto
        DataField = 'CUSTO_LOJA'
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
        Left = 467
        Top = 0
        Width = 22
        Height = 13
        Size.Values = (
          34.395833333333330000
          1235.604166666667000000
          0.000000000000000000
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
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 191
      Width = 718
      Height = 27
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRDBText3: TQRDBText
        Left = 228
        Top = 6
        Width = 109
        Height = 15
        Size.Values = (
          39.687500000000000000
          603.250000000000000000
          15.875000000000000000
          288.395833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Soma
        DataField = 'TOTAL_CUSTO_LOJA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 440
        Top = 6
        Width = 78
        Height = 15
        Size.Values = (
          39.687500000000000000
          1164.166666666667000000
          15.875000000000000000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Soma
        DataField = 'TOTAL_VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 626
        Top = 6
        Width = 89
        Height = 15
        Size.Values = (
          39.687500000000000000
          1656.291666666667000000
          15.875000000000000000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Soma
        DataField = 'TOTAL_ESTOQUE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 94
        Top = 6
        Width = 128
        Height = 17
        Size.Values = (
          44.979166666666670000
          248.708333333333300000
          15.875000000000000000
          338.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total  Custo da Loja'
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
      object QRLabel10: TQRLabel
        Left = 352
        Top = 6
        Width = 75
        Height = 17
        Size.Values = (
          44.979166666666670000
          931.333333333333300000
          15.875000000000000000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total  Valor'
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
      object QRLabel11: TQRLabel
        Left = 546
        Top = 6
        Width = 91
        Height = 17
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          15.875000000000000000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total  Estoque'
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
    Left = 443
    Top = 145
    object ProdutoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PRODUTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object IBStringField1: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PRODUTO.DESCRICAO'
      Size = 50
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
    object ProdutoCUSTO_LOJA: TFloatField
      FieldName = 'CUSTO_LOJA'
      Origin = '"PRODUTO"."CUSTO_LOJA"'
      DisplayFormat = '##,##0.00'
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR'
      Origin = 'PRODUTO.VALOR'
      DisplayFormat = '##,##0.00'
    end
  end
  object Soma: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT SUM(VALOR*ESTOQUE) TOTAL_CUSTO_LOJA, SUM(VALOR*ESTOQUE) T' +
        'OTAL_VALOR,SUM(ESTOQUE) AS TOTAL_ESTOQUE'
      'FROM PRODUTO'
      '')
    Left = 473
    Top = 145
    object SomaTOTAL_CUSTO_LOJA: TFloatField
      FieldName = 'TOTAL_CUSTO_LOJA'
      ProviderFlags = []
      DisplayFormat = '#,###,##0.00'
    end
    object SomaTOTAL_VALOR: TFloatField
      FieldName = 'TOTAL_VALOR'
      ProviderFlags = []
      DisplayFormat = '#,###,##0.00'
    end
    object SomaTOTAL_ESTOQUE: TFloatField
      FieldName = 'TOTAL_ESTOQUE'
      ProviderFlags = []
      DisplayFormat = '#,###,##0.###'
    end
  end
end
