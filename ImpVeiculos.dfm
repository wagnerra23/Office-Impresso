inherited ImpriVeiculos: TImpriVeiculos
  Caption = 'ImpriVeiculos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep1: TQuickRep
    DataSet = Veiculos
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
      Size.Values = (
        317.500000000000000000
        1899.708333333333000000)
      inherited QRSysData1: TQRSysData
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          256.645833333333300000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QR_Titulo: TQRLabel
        Width = 189
        Size.Values = (
          63.500000000000000000
          547.687500000000000000
          193.145833333333300000
          500.062500000000000000)
        Caption = 'Relat'#243'rio de Ve'#237'culos'
        FontSize = 12
        ExplicitWidth = 189
      end
      inherited QR_Periodo: TQRLabel
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
    end
    inherited QRBand2: TQRBand
      Top = 331
      Height = 12
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      ExplicitTop = 331
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
      Top = 158
      Width = 718
      Height = 173
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        457.729166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRLabel3: TQRLabel
        Left = 5
        Top = 9
        Width = 44
        Height = 18
        Size.Values = (
          47.625000000000000000
          13.229166666666670000
          23.812500000000000000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Marca:'
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
        Left = 301
        Top = 42
        Width = 27
        Height = 20
        Size.Values = (
          52.916666666666670000
          796.395833333333300000
          111.125000000000000000
          71.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Cor:'
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
        Left = 498
        Top = 43
        Width = 83
        Height = 18
        Size.Values = (
          47.625000000000000000
          1317.625000000000000000
          113.770833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Combustivel:'
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
        Left = 499
        Top = 9
        Width = 93
        Height = 18
        Size.Values = (
          47.625000000000000000
          1320.270833333333000000
          23.812500000000000000
          246.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'ANO/MODELO:'
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
      object QRDBText2: TQRDBText
        Left = 591
        Top = 43
        Width = 93
        Height = 18
        Size.Values = (
          47.625000000000000000
          1563.687500000000000000
          113.770833333333300000
          246.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'COMBUSTIVEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 334
        Top = 42
        Width = 29
        Height = 20
        Size.Values = (
          52.916666666666670000
          883.708333333333300000
          111.125000000000000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'COR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 0
        Top = -3
        Width = 719
        Height = 9
        Size.Values = (
          23.812500000000000000
          0.000000000000000000
          -7.937500000000000000
          1902.354166666667000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 5
        Top = 42
        Width = 41
        Height = 18
        Size.Values = (
          47.625000000000000000
          13.229166666666670000
          111.125000000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Placa:'
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
      object QRDBText10: TQRDBText
        Left = 54
        Top = 42
        Width = 44
        Height = 18
        Size.Values = (
          47.625000000000000000
          142.875000000000000000
          111.125000000000000000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataSet = Veiculos
        DataField = 'PLACA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 5
        Top = 104
        Width = 86
        Height = 18
        Size.Values = (
          47.625000000000000000
          13.229166666666670000
          275.166666666666700000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Observa'#231#245'es:'
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
      object QRLabel14: TQRLabel
        Left = 165
        Top = 9
        Width = 52
        Height = 18
        Size.Values = (
          47.625000000000000000
          436.562500000000000000
          23.812500000000000000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Modelo:'
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
      object QRDBText11: TQRDBText
        Left = 55
        Top = 9
        Width = 48
        Height = 18
        Size.Values = (
          47.625000000000000000
          145.520833333333300000
          23.812500000000000000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataSet = Veiculos
        DataField = 'MARCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 181
        Top = 42
        Width = 49
        Height = 18
        Size.Values = (
          47.625000000000000000
          478.895833333333300000
          111.125000000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataSet = Veiculos
        DataField = 'CHASSI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 128
        Top = 42
        Width = 46
        Height = 18
        Size.Values = (
          47.625000000000000000
          338.666666666666700000
          111.125000000000000000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Chassi:'
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
      object QRDBText15: TQRDBText
        Left = 97
        Top = 105
        Width = 611
        Height = 58
        Size.Values = (
          153.458333333333300000
          256.645833333333400000
          277.812500000000000000
          1616.604166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'OBSERVACAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 600
        Top = 9
        Width = 92
        Height = 18
        Size.Values = (
          47.625000000000000000
          1587.500000000000000000
          23.812500000000000000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'ANO_MODELO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 226
        Top = 9
        Width = 77
        Height = 18
        Size.Values = (
          47.625000000000000000
          597.958333333333300000
          23.812500000000000000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataSet = Veiculos
        DataField = 'DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 5
        Top = 74
        Width = 39
        Height = 20
        Size.Values = (
          52.916666666666670000
          13.229166666666670000
          195.791666666666700000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Valor:'
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
      object QRDBText5: TQRDBText
        Left = 50
        Top = 74
        Width = 45
        Height = 20
        Size.Values = (
          52.916666666666670000
          132.291666666666700000
          195.791666666666700000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
  end
  object Veiculos: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT V.*, CL.RAZAOSOCIAL AS CLIENTE, CO.DESCRICAO AS COR'
      'FROM VEICULOS V'
      'LEFT JOIN CLIENTES CL ON V.CODCLIENTE=CL.CODIGO'
      'LEFT JOIN CORES CO ON V.CODCOR=CO.CODIGO'
      ' ')
    Left = 568
    Top = 96
  end
end
