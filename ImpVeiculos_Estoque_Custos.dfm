inherited ImpriVeiculos_Estoque_Custos: TImpriVeiculos_Estoque_Custos
  Caption = 'ImpriVeiculos_Estoque_Custos'
  ClientWidth = 1264
  OnClose = FormClose
  ExplicitWidth = 1280
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep1: TQuickRep
    Width = 1123
    Height = 794
    DataSet = Produto
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Orientation = poLandscape
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    ExplicitWidth = 1123
    ExplicitHeight = 794
    inherited QRBand1: TQRBand
      Width = 1047
      Height = 121
      Size.Values = (
        320.145833333333300000
        2770.187500000000000000)
      ExplicitWidth = 1047
      ExplicitHeight = 121
      inherited QRSysData1: TQRSysData
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          256.645833333333300000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QR_Titulo: TQRLabel
        Width = 11
        Size.Values = (
          63.500000000000000000
          547.687500000000000000
          193.145833333333300000
          29.104166666666670000)
        Caption = '``'
        FontSize = 12
        ExplicitWidth = 11
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
      Top = 271
      Width = 1047
      Height = 12
      Size.Values = (
        31.750000000000000000
        2770.187500000000000000)
      ExplicitTop = 271
      ExplicitWidth = 1047
      ExplicitHeight = 12
      inherited QRLabel2: TQRLabel
        Left = 715
        Width = 328
        Size.Values = (
          39.687500000000000000
          1891.770833333333000000
          -5.291666666666667000
          867.833333333333300000)
        FontSize = 8
        ExplicitLeft = 715
        ExplicitWidth = 328
      end
      inherited QRSysData2: TQRSysData
        Left = 504
        Size.Values = (
          39.687500000000000000
          1333.500000000000000000
          -5.291666666666667000
          103.187500000000000000)
        FontSize = 8
        ExplicitLeft = 504
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 159
      Width = 1047
      Height = 55
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        145.520833333333300000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText10: TQRDBText
        Left = 64
        Top = 16
        Width = 77
        Height = 17
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          42.333333333333330000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produto
        DataField = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      object QRDBText12: TQRDBText
        Left = 671
        Top = 3
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666670000
          1775.354166666667000000
          7.937500000000000000
          211.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produto
        DataField = 'ESTOQUE_P'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      object QRLabel3: TQRLabel
        Left = 63
        Top = 1
        Width = 102
        Height = 15
        Size.Values = (
          39.687500000000000000
          166.687500000000000000
          2.645833333333333000
          269.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descir'#231#227'o da Moto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 594
        Top = 2
        Width = 75
        Height = 20
        Size.Values = (
          52.916666666666670000
          1571.625000000000000000
          5.291666666666667000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Estoque :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 75
        Top = 36
        Width = 50
        Height = 18
        Size.Values = (
          47.625000000000000000
          198.437500000000000000
          95.250000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CHASSI'
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
        Left = 210
        Top = 36
        Width = 57
        Height = 18
        Size.Values = (
          47.625000000000000000
          555.625000000000000000
          95.250000000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Renavan'
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
        Left = 274
        Top = 36
        Width = 37
        Height = 18
        Size.Values = (
          47.625000000000000000
          724.958333333333300000
          95.250000000000000000
          97.895833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Motor'
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
      object QRLabel13: TQRLabel
        Left = 370
        Top = 36
        Width = 57
        Height = 18
        Size.Values = (
          47.625000000000000000
          978.958333333333300000
          95.250000000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ano/Mod'
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
        Left = 430
        Top = 36
        Width = 79
        Height = 18
        Size.Values = (
          47.625000000000000000
          1137.708333333333000000
          95.250000000000000000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cor da moto'
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
      object QRLabel15: TQRLabel
        Left = 918
        Top = 36
        Width = 55
        Height = 18
        Size.Values = (
          47.625000000000000000
          2428.875000000000000000
          95.250000000000000000
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
      object QRLabel16: TQRLabel
        Left = 778
        Top = 36
        Width = 88
        Height = 18
        Size.Values = (
          47.625000000000000000
          2058.458333333333000000
          95.250000000000000000
          232.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'R$ Custo Loja'
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
      object QRLabel17: TQRLabel
        Left = 534
        Top = 36
        Width = 40
        Height = 18
        Size.Values = (
          47.625000000000000000
          1412.875000000000000000
          95.250000000000000000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Status'
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
      object QRLabel18: TQRLabel
        Left = 637
        Top = 36
        Width = 108
        Height = 18
        Size.Values = (
          47.625000000000000000
          1685.395833333333000000
          95.250000000000000000
          285.750000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'R$ Custo F'#225'brica'
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
        Left = 2
        Top = 1
        Width = 40
        Height = 15
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          2.645833333333333000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 3
        Top = 16
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          42.333333333333330000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produto
        DataField = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
      object QRLabel11: TQRLabel
        Left = 2
        Top = 36
        Width = 45
        Height = 18
        Size.Values = (
          47.625000000000000000
          5.291666666666667000
          95.250000000000000000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PLACA'
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
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 214
      Width = 1047
      Height = 16
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = Veiculos
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText1: TQRDBText
        Left = 75
        Top = 0
        Width = 39
        Height = 15
        Size.Values = (
          39.687500000000000000
          198.437500000000000000
          0.000000000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'CHASSI'
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
      object QRDBText2: TQRDBText
        Left = 211
        Top = 0
        Width = 52
        Height = 15
        Size.Values = (
          39.687500000000000000
          558.270833333333300000
          0.000000000000000000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'RENAVAN'
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
      object QRDBText6: TQRDBText
        Left = 275
        Top = 0
        Width = 38
        Height = 15
        Size.Values = (
          39.687500000000000000
          727.604166666666700000
          0.000000000000000000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'MOTOR'
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
      object QRDBText7: TQRDBText
        Left = 3
        Top = 0
        Width = 36
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          0.000000000000000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'PLACA'
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
      object QRDBText8: TQRDBText
        Left = 371
        Top = 0
        Width = 46
        Height = 15
        Size.Values = (
          39.687500000000000000
          981.604166666666800000
          0.000000000000000000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'ANO_MODELO'
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
      object QRDBText11: TQRDBText
        Left = 430
        Top = 0
        Width = 23
        Height = 15
        Size.Values = (
          39.687500000000000000
          1137.708333333333000000
          0.000000000000000000
          60.854166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'COR'
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
      object QRDBText13: TQRDBText
        Left = 935
        Top = 0
        Width = 38
        Height = 15
        Size.Values = (
          39.687500000000000000
          2473.854166666667000000
          0.000000000000000000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'VALOR'
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
      object QRDBText14: TQRDBText
        Left = 675
        Top = 0
        Width = 70
        Height = 15
        Size.Values = (
          39.687500000000000000
          1785.937500000000000000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'CUSTO_FABR'
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
      object QRDBText15: TQRDBText
        Left = 534
        Top = 0
        Width = 42
        Height = 15
        Size.Values = (
          39.687500000000000000
          1412.875000000000000000
          0.000000000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'STATUS'
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
      object QRDBText16: TQRDBText
        Left = 796
        Top = 0
        Width = 69
        Height = 15
        Size.Values = (
          39.687500000000000000
          2106.083333333333000000
          0.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Veiculos
        DataField = 'CUSTO_LOJA'
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
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 230
      Width = 1047
      Height = 41
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        108.479166666666700000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRDBText3: TQRDBText
        Left = 756
        Top = 22
        Width = 109
        Height = 15
        Size.Values = (
          39.687500000000000000
          2000.250000000000000000
          58.208333333333330000
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
        Left = 896
        Top = 22
        Width = 78
        Height = 15
        Size.Values = (
          39.687500000000000000
          2370.666666666667000000
          58.208333333333330000
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
        Left = 434
        Top = 22
        Width = 89
        Height = 15
        Size.Values = (
          39.687500000000000000
          1148.291666666667000000
          58.208333333333330000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Soma_Estoque
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
        Left = 777
        Top = 5
        Width = 88
        Height = 17
        Size.Values = (
          44.979166666666670000
          2055.812500000000000000
          13.229166666666670000
          232.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Custo da Loja'
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
        Left = 902
        Top = 5
        Width = 72
        Height = 17
        Size.Values = (
          44.979166666666670000
          2386.541666666667000000
          13.229166666666670000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Geral'
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
      object QRLabel12: TQRLabel
        Left = 472
        Top = 5
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          13.229166666666670000
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
      object QRLabel19: TQRLabel
        Left = 321
        Top = 5
        Width = 72
        Height = 30
        Size.Values = (
          79.375000000000000000
          849.312500000000000000
          13.229166666666670000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Totais'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 18
      end
      object QRDBText17: TQRDBText
        Left = 636
        Top = 22
        Width = 110
        Height = 15
        Size.Values = (
          39.687500000000000000
          1682.750000000000000000
          58.208333333333330000
          291.041666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Soma
        DataField = 'TOTAL_CUSTO_FABR'
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
      object QRLabel20: TQRLabel
        Left = 638
        Top = 5
        Width = 108
        Height = 17
        Size.Values = (
          44.979166666666670000
          1688.041666666667000000
          13.229166666666670000
          285.750000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Custo da F'#225'brica'
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
    OnCalcFields = ProdutoCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT P.*, E.CODEMPRESA, E.ESTOQUE AS ESTOQUE_P, E.CODPRODUTO F' +
        'ROM PRODUTO P'
      'LEFT JOIN ESTOQUE_PRODUTO E ON P.CODIGO=E.CODPRODUTO'
      'WHERE (TIPO='#39'MOTO'#39') and (E.CODEMPRESA= :Emp)'
      'ORDER BY P.CODIGO')
    Left = 467
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Emp'
        ParamType = ptUnknown
      end>
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
    object ProdutoESTOQUE_P: TFloatField
      FieldName = 'ESTOQUE_P'
      Origin = '"ESTOQUE_PRODUTO"."ESTOQUE"'
    end
  end
  object DataSource1: TDataSource
    DataSet = Produto
    Left = 496
    Top = 89
  end
  object Veiculos: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = VeiculosBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      'SELECT P.*,C.DESCRICAO AS COR FROM PRODUTO_MOTO P'
      'LEFT JOIN CORES C ON P.CODCOR=C.CODIGO'
      'WHERE (CODPRODUTO= :Codigo) and (P.CODEMPRESA= :Emp)'
      'ORDER BY CHASSI')
    Left = 525
    Top = 89
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftUnknown
        Name = 'Emp'
        ParamType = ptUnknown
      end>
    object VeiculosCODPRODUTO: TIBStringField
      FieldName = 'CODPRODUTO'
      Origin = '"PRODUTO_MOTO"."CODPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object VeiculosCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"PRODUTO_MOTO"."CHASSI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object VeiculosMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"PRODUTO_MOTO"."MOTOR"'
    end
    object VeiculosRENAVAN: TIBStringField
      FieldName = 'RENAVAN'
      Origin = '"PRODUTO_MOTO"."RENAVAN"'
      Size = 15
    end
    object VeiculosANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"PRODUTO_MOTO"."ANO_MODELO"'
      Size = 15
    end
    object VeiculosCILINDRADA: TFloatField
      FieldName = 'CILINDRADA'
      Origin = '"PRODUTO_MOTO"."CILINDRADA"'
    end
    object VeiculosHP: TFloatField
      FieldName = 'HP'
      Origin = '"PRODUTO_MOTO"."HP"'
    end
    object VeiculosCODCOR: TIntegerField
      FieldName = 'CODCOR'
      Origin = '"PRODUTO_MOTO"."CODCOR"'
    end
    object VeiculosCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"PRODUTO_MOTO"."COMBUSTIVEL"'
      Size = 10
    end
    object VeiculosKM: TIBStringField
      FieldName = 'KM'
      Origin = '"PRODUTO_MOTO"."KM"'
      Size = 9
    end
    object VeiculosPASSAGEIROS: TFloatField
      FieldName = 'PASSAGEIROS'
      Origin = '"PRODUTO_MOTO"."PASSAGEIROS"'
    end
    object VeiculosFRETE: TFloatField
      FieldName = 'FRETE'
      Origin = '"PRODUTO_MOTO"."FRETE"'
    end
    object VeiculosPIS: TFloatField
      FieldName = 'PIS'
      Origin = '"PRODUTO_MOTO"."PIS"'
    end
    object VeiculosCOFINS: TFloatField
      FieldName = 'COFINS'
      Origin = '"PRODUTO_MOTO"."COFINS"'
    end
    object VeiculosCUSTO_FABR: TFloatField
      FieldName = 'CUSTO_FABR'
      Origin = '"PRODUTO_MOTO"."CUSTO_FABR"'
      DisplayFormat = '##,###,##0.00'
    end
    object VeiculosCUSTO_LOJA: TFloatField
      FieldName = 'CUSTO_LOJA'
      Origin = '"PRODUTO_MOTO"."CUSTO_LOJA"'
      DisplayFormat = '##,###,##0.00'
    end
    object VeiculosMARGEM: TFloatField
      FieldName = 'MARGEM'
      Origin = '"PRODUTO_MOTO"."MARGEM"'
    end
    object VeiculosVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"PRODUTO_MOTO"."VALOR"'
      DisplayFormat = '##,###,##0.00'
    end
    object VeiculosOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"PRODUTO_MOTO"."OBSERVACAO"'
      Size = 500
    end
    object VeiculosPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"PRODUTO_MOTO"."PLACA"'
      Size = 7
    end
    object VeiculosCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"CORES"."DESCRICAO"'
      Size = 50
    end
    object VeiculosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"PRODUTO_MOTO"."STATUS"'
      Size = 15
    end
  end
  object Soma_Estoque: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT SUM(ESTOQUE) AS TOTAL_ESTOQUE'
      'FROM PRODUTO'
      'WHERE TIPO='#39'MOTO'#39)
    Left = 521
    Top = 121
    object FloatField4: TFloatField
      FieldName = 'TOTAL_ESTOQUE'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.##'
    end
  end
  object Soma: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT SUM(M.CUSTO_FABR) TOTAL_CUSTO_FABR,SUM(M.CUSTO_LOJA) TOTA' +
        'L_CUSTO_LOJA, '
      'SUM(M.VALOR) TOTAL_VALOR'
      'FROM PRODUTO P'
      'LEFT JOIN PRODUTO_MOTO M ON M.CODPRODUTO=P.CODIGO'
      'WHERE P.TIPO='#39'MOTO'#39)
    Left = 489
    Top = 121
    object SomaTOTAL_CUSTO_LOJA: TFloatField
      FieldName = 'TOTAL_CUSTO_LOJA'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
    end
    object SomaTOTAL_VALOR: TFloatField
      FieldName = 'TOTAL_VALOR'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
    end
    object SomaTOTAL_CUSTO_FABR: TFloatField
      FieldName = 'TOTAL_CUSTO_FABR'
      DisplayFormat = '##,###,##0.00'
    end
  end
end
