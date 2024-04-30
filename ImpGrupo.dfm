inherited ImpriGrupo: TImpriGrupo
  Caption = 'ImpriGrupo'
  ExplicitWidth = 899
  ExplicitHeight = 625
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep1: TQuickRep
    Left = -3
    DataSet = ConsuProduto_Grupo.Consulta
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRLOOPBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      '0')
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    ExplicitLeft = -3
    inherited QRBand1: TQRBand
      Height = 123
      Size.Values = (
        325.437500000000000000
        1899.708333333333000000)
      ExplicitHeight = 123
      inherited QRSysData1: TQRSysData
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          256.645833333333300000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QR_Titulo: TQRLabel
        Size.Values = (
          63.500000000000000000
          547.687500000000000000
          193.145833333333300000
          433.916666666666700000)
        FontSize = 12
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
        Size.Values = (
          52.916666666666670000
          547.687500000000000000
          0.000000000000000000
          1137.708333333333000000)
        FontSize = 12
      end
      inherited QR_Endereco: TQRLabel
        Size.Values = (
          39.687500000000000000
          547.687500000000000000
          60.854166666666670000
          754.062500000000000000)
        FontSize = 6
      end
      inherited QR_CNPJ_INSC_Fone: TQRLabel
        Size.Values = (
          39.687500000000000000
          547.687500000000000000
          103.187500000000000000
          510.645833333333300000)
        FontSize = 6
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
      Top = 201
      Height = 11
      Size.Values = (
        29.104166666666670000
        1899.708333333333000000)
      ExplicitTop = 201
      ExplicitHeight = 11
      inherited QRLabel2: TQRLabel
        Size.Values = (
          39.687500000000000000
          1418.166666666667000000
          -5.291666666666667000
          473.604166666666700000)
        FontSize = 8
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
    object QRBand3: TQRBand
      Left = 38
      Top = 185
      Width = 718
      Height = 16
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 33
        Top = 0
        Width = 52
        Height = 18
        Size.Values = (
          47.625000000000000000
          87.312500000000000000
          0.000000000000000000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataSet = ConsuProduto_Grupo.Consulta
        DataField = 'CODIGO'
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
      object QRDBText2: TQRDBText
        Left = 75
        Top = 0
        Width = 77
        Height = 18
        Size.Values = (
          47.625000000000000000
          198.437500000000000000
          0.000000000000000000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataSet = ConsuProduto_Grupo.Consulta
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
      object QRDBText3: TQRDBText
        Left = 627
        Top = 0
        Width = 104
        Height = 18
        Size.Values = (
          47.625000000000000000
          1658.937500000000000000
          0.000000000000000000
          275.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataSet = ConsuProduto_Grupo.Consulta
        DataField = 'ICMS_ALIQUOTA'
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
        Left = 429
        Top = 0
        Width = 89
        Height = 18
        Size.Values = (
          47.625000000000000000
          1135.062500000000000000
          0.000000000000000000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataField = 'CODNF_CFOP'
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
      object QRDBText5: TQRDBText
        Left = 472
        Top = 0
        Width = 132
        Height = 18
        Size.Values = (
          47.625000000000000000
          1248.833333333333000000
          0.000000000000000000
          349.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataSet = ConsuProduto_Grupo.Consulta
        DataField = 'CODNF_CFOP_FORA'
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
      object QRDBText6: TQRDBText
        Left = 398
        Top = 0
        Width = 78
        Height = 18
        Size.Values = (
          47.625000000000000000
          1053.041666666667000000
          0.000000000000000000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataSet = ConsuProduto_Grupo.Consulta
        DataField = 'CODNF_CST'
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
      object QRDBText7: TQRDBText
        Left = 662
        Top = 0
        Width = 66
        Height = 18
        Size.Values = (
          47.625000000000000000
          1751.541666666667000000
          0.000000000000000000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataSet = ConsuProduto_Grupo.Consulta
        DataField = 'ICMS_PAF'
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
    object QRBand4: TQRBand
      Left = 38
      Top = 161
      Width = 718
      Height = 24
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel3: TQRLabel
        Left = 13
        Top = 3
        Width = 46
        Height = 18
        Size.Values = (
          47.625000000000000000
          34.395833333333330000
          7.937500000000000000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Codigo'
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
        Left = 75
        Top = 3
        Width = 63
        Height = 18
        Size.Values = (
          47.625000000000000000
          198.437500000000000000
          7.937500000000000000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Descri'#231#227'o'
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
      object QRLabel5: TQRLabel
        Left = 619
        Top = 4
        Width = 34
        Height = 18
        Size.Values = (
          47.625000000000000000
          1637.770833333333000000
          10.583333333333330000
          89.958333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'ICMS'
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
        Left = 429
        Top = 3
        Width = 37
        Height = 18
        Size.Values = (
          47.625000000000000000
          1135.062500000000000000
          7.937500000000000000
          97.895833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'CFOP'
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
        Left = 471
        Top = 3
        Width = 144
        Height = 18
        Size.Values = (
          47.625000000000000000
          1246.187500000000000000
          7.937500000000000000
          381.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'CFOP( Fora do Estado)'
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
      object QRLabel8: TQRLabel
        Left = 397
        Top = 4
        Width = 27
        Height = 18
        Size.Values = (
          47.625000000000000000
          1050.395833333333000000
          10.583333333333330000
          71.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'CST'
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
        Left = 661
        Top = 3
        Width = 51
        Height = 18
        Size.Values = (
          47.625000000000000000
          1748.895833333333000000
          7.937500000000000000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Imposto'
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
end
