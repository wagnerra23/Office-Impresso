inherited ImpriFaturamento: TImpriFaturamento
  Caption = 'ImpriFaturamento'
  ClientHeight = 703
  ClientWidth = 846
  ExplicitTop = -2
  ExplicitWidth = 862
  ExplicitHeight = 741
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep1: TQuickRep
    Left = 22
    Top = 40
    Height = 648
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Page.Values = (
      30.000000000000000000
      1714.500000000000000000
      30.000000000000000000
      2159.000000000000000000
      50.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    ExplicitLeft = 22
    ExplicitTop = 40
    ExplicitHeight = 648
    object QRChildBandOrcamento: TQRChildBand [0]
      Left = 19
      Top = 530
      Width = 759
      Height = 21
      Frame.DrawTop = True
      AlignToBottom = False
      Color = clWhite
      Enabled = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      PrintOrder = cboAfterParent
      object QRLabelEntrada: TQRLabel
        Left = 425
        Top = 5
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          1124.479166666667000000
          13.229166666666670000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Entrada'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelNParcelas: TQRLabel
        Left = 319
        Top = 5
        Width = 62
        Height = 15
        Size.Values = (
          39.687500000000000000
          844.020833333333300000
          13.229166666666670000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#176' Parcelas'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelJuros: TQRLabel
        Left = 548
        Top = 5
        Width = 45
        Height = 15
        Size.Values = (
          39.687500000000000000
          1449.916666666667000000
          13.229166666666670000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Juros %'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelValorParcela: TQRLabel
        Left = 639
        Top = 6
        Width = 88
        Height = 16
        Size.Values = (
          42.333333333333340000
          1690.687500000000000000
          15.875000000000000000
          232.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Outras Parcelas'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelOrcamento: TQRLabel
        Left = 6
        Top = 2
        Width = 182
        Height = 19
        Size.Values = (
          50.270833333333330000
          15.875000000000000000
          5.291666666666667000
          481.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Condi'#231#245'es de Pagamento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
    end
    object QRSubOrcamento: TQRSubDetail [1]
      Left = 19
      Top = 551
      Width = 759
      Height = 17
      AlignToBottom = False
      Color = clWhite
      Enabled = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.979166666666670000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QRChildBandOrcamento
      HeaderBand = QRChildBandOrcamento
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBEntrada: TQRDBText
        Left = 429
        Top = 0
        Width = 69
        Height = 16
        Size.Values = (
          42.333333333333330000
          1135.062500000000000000
          0.000000000000000000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBQuant: TQRDBText
        Left = 323
        Top = -2
        Width = 58
        Height = 16
        Size.Values = (
          42.333333333333330000
          854.604166666666800000
          -5.291666666666667000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'QUANT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QrDBJuros: TQRDBText
        Left = 533
        Top = -1
        Width = 60
        Height = 16
        Size.Values = (
          42.333333333333330000
          1410.229166666667000000
          -2.645833333333333000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'JUROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBValorParcela: TQRDBText
        Left = 633
        Top = -2
        Width = 94
        Height = 16
        Size.Values = (
          42.333333333333330000
          1674.812500000000000000
          -5.291666666666667000
          248.708333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'ValorParc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText50: TQRDBText
        Left = 4
        Top = 0
        Width = 309
        Height = 16
        Size.Values = (
          42.333333333333330000
          10.583333333333330000
          0.000000000000000000
          817.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
    end
    inherited QRBand3: TQRBand
      Top = 451
      Height = 63
      Size.Values = (
        166.687500000000000000
        2008.187500000000000000)
      ExplicitTop = 451
      ExplicitHeight = 63
      inherited QRLabel39: TQRLabel
        Top = 46
        Size.Values = (
          42.333333333333330000
          1145.645833333333000000
          121.708333333333300000
          214.312500000000000000)
        FontSize = 9
        ExplicitTop = 46
      end
      inherited QRLabel15: TQRLabel
        Top = 46
        Size.Values = (
          42.333333333333340000
          1568.979166666667000000
          121.708333333333300000
          171.979166666666700000)
        FontSize = 8
        ExplicitTop = 46
      end
      inherited QRDBText15: TQRDBText
        Top = 46
        Width = 88
        Size.Values = (
          42.333333333333330000
          1759.479166666667000000
          121.708333333333300000
          232.833333333333300000)
        Font.Height = -11
        FontSize = 8
        ExplicitTop = 46
        ExplicitWidth = 88
      end
      inherited QRLabel19: TQRLabel
        Top = 31
        Size.Values = (
          42.333333333333340000
          1568.979166666667000000
          82.020833333333330000
          171.979166666666700000)
        FontSize = 6
        ExplicitTop = 31
      end
      inherited QRDBText7: TQRDBText
        Top = 31
        Width = 88
        Size.Values = (
          42.333333333333330000
          1759.479166666667000000
          82.020833333333330000
          232.833333333333300000)
        Font.Height = -11
        FontSize = 8
        ExplicitTop = 31
        ExplicitWidth = 88
      end
      inherited QRLabel20: TQRLabel
        Top = 1
        Size.Values = (
          42.333333333333340000
          1568.979166666667000000
          2.645833333333333000
          193.145833333333300000)
        FontSize = 8
        ExplicitTop = 1
      end
      inherited QRDBText17: TQRDBText
        Top = 1
        Width = 88
        Size.Values = (
          42.333333333333330000
          1759.479166666667000000
          2.645833333333333000
          232.833333333333300000)
        Font.Height = -11
        FontSize = 8
        ExplicitTop = 1
        ExplicitWidth = 88
      end
      inherited QRDBText2: TQRDBText
        Top = 16
        Width = 88
        Size.Values = (
          42.333333333333330000
          1759.479166666667000000
          42.333333333333330000
          232.833333333333300000)
        Font.Height = -11
        FontSize = 8
        ExplicitTop = 16
        ExplicitWidth = 88
      end
      inherited QRLabel2: TQRLabel
        Top = 16
        Size.Values = (
          42.333333333333340000
          1568.979166666667000000
          42.333333333333340000
          256.645833333333300000)
        FontSize = 6
        ExplicitTop = 16
      end
      inherited QrLabel10: TQRLabel
        Top = 16
        Size.Values = (
          42.333333333333340000
          1145.645833333333000000
          42.333333333333340000
          171.979166666666700000)
        FontSize = 8
        ExplicitTop = 16
      end
      inherited QRDBText40: TQRDBText
        Top = 16
        Size.Values = (
          42.333333333333330000
          1344.083333333333000000
          42.333333333333330000
          198.437500000000000000)
        FontSize = 8
        ExplicitTop = 16
      end
      inherited QRLabel11: TQRLabel
        Top = 31
        Size.Values = (
          42.333333333333340000
          1145.645833333333000000
          82.020833333333330000
          171.979166666666700000)
        FontSize = 8
        ExplicitTop = 31
      end
      inherited QRDBText41: TQRDBText
        Top = 31
        Size.Values = (
          42.333333333333330000
          1344.083333333333000000
          82.020833333333330000
          198.437500000000000000)
        FontSize = 8
        ExplicitTop = 31
      end
      inherited QR_QtdItens: TQRLabel
        Top = 2
        Size.Values = (
          42.333333333333340000
          1145.645833333333000000
          5.291666666666667000
          214.312500000000000000)
        FontSize = 8
        ExplicitTop = 2
      end
      inherited QRDBText44: TQRDBText
        Left = 50
        Top = 31
        Width = 276
        Size.Values = (
          42.333333333333330000
          132.291666666666700000
          82.020833333333330000
          730.250000000000000000)
        FontSize = 8
        ExplicitLeft = 50
        ExplicitTop = 31
        ExplicitWidth = 276
      end
      inherited QRLabel58: TQRLabel
        Top = 31
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          82.020833333333330000
          129.645833333333300000)
        FontSize = 8
        ExplicitTop = 31
      end
      inherited QRDBText31: TQRDBText
        Height = 31
        Size.Values = (
          82.020833333333330000
          108.479166666666700000
          2.645833333333333000
          1031.875000000000000000)
        FontSize = 8
        ExplicitHeight = 31
      end
      inherited QRLabel52: TQRLabel
        Top = 1
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          2.645833333333333000
          87.312500000000000000)
        FontSize = 9
        ExplicitTop = 1
      end
      inherited QRDBText52: TQRDBText
        Left = 535
        Top = 2
        Width = 48
        Size.Values = (
          42.333333333333330000
          1415.520833333333000000
          5.291666666666667000
          127.000000000000000000)
        FontSize = 8
        ExplicitLeft = 535
        ExplicitTop = 2
        ExplicitWidth = 48
      end
      inherited QRLabel23: TQRLabel
        Top = 46
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          121.708333333333300000
          275.166666666666700000)
        FontSize = 9
        ExplicitTop = 46
      end
      inherited QRLabel37: TQRLabel
        Left = 113
        Top = 46
        Size.Values = (
          42.333333333333330000
          298.979166666666700000
          121.708333333333300000
          134.937500000000000000)
        FontSize = 9
        ExplicitLeft = 113
        ExplicitTop = 46
      end
      inherited QRLabel40: TQRLabel
        Left = 167
        Top = 46
        Size.Values = (
          42.333333333333330000
          441.854166666666700000
          121.708333333333300000
          214.312500000000000000)
        FontSize = 9
        ExplicitLeft = 167
        ExplicitTop = 46
      end
      inherited QRLabel43: TQRLabel
        Top = 46
        Size.Values = (
          42.333333333333330000
          664.104166666666700000
          121.708333333333300000
          214.312500000000000000)
        FontSize = 9
        ExplicitTop = 46
      end
      inherited QRLabel44: TQRLabel
        Top = 46
        Size.Values = (
          42.333333333333330000
          902.229166666666700000
          121.708333333333300000
          214.312500000000000000)
        FontSize = 9
        ExplicitTop = 46
      end
      inherited QRShape1: TQRShape
        Top = 62
        Width = 421
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          164.041666666666700000
          1113.895833333333000000)
        ExplicitTop = 62
        ExplicitWidth = 421
      end
    end
    inherited QRChildBand3: TQRChildBand
      Top = 168
      Size.Values = (
        37.041666666666670000
        2008.187500000000000000)
      ExplicitTop = 168
      inherited QRLabel30: TQRLabel
        Top = -3
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          -7.937500000000000000
          193.145833333333300000)
        FontSize = 8
        ExplicitTop = -3
      end
      inherited QRLabel31: TQRLabel
        Top = -3
        Size.Values = (
          39.687500000000000000
          590.020833333333300000
          -7.937500000000000000
          177.270833333333300000)
        FontSize = 8
        ExplicitTop = -3
      end
      inherited QRLabel32: TQRLabel
        Top = -3
        Size.Values = (
          39.687500000000000000
          1145.645833333333000000
          -7.937500000000000000
          100.541666666666700000)
        FontSize = 8
        ExplicitTop = -3
      end
      inherited QRLabel33: TQRLabel
        Top = -3
        Size.Values = (
          39.687500000000000000
          1449.916666666667000000
          -7.937500000000000000
          127.000000000000000000)
        FontSize = 8
        ExplicitTop = -3
      end
      inherited QRLabel45: TQRLabel
        Top = -4
        Size.Values = (
          39.687500000000000000
          206.375000000000000000
          -10.583333333333330000
          381.000000000000000000)
        FontSize = 8
        ExplicitTop = -4
      end
      inherited QRLabel48: TQRLabel
        Top = -4
        Size.Values = (
          44.979166666666670000
          1582.208333333333000000
          -10.583333333333330000
          412.750000000000000000)
        Font.Height = -13
        FontSize = 10
        ExplicitTop = -4
      end
      inherited QRLabel50: TQRLabel
        Top = -4
        Size.Values = (
          44.979166666666670000
          777.875000000000000000
          -10.583333333333330000
          111.125000000000000000)
        Font.Height = -13
        FontSize = 10
        ExplicitTop = -4
      end
      inherited QRLabel56: TQRLabel
        Top = -3
        Size.Values = (
          39.687500000000000000
          891.645833333333300000
          -7.937500000000000000
          71.437500000000000000)
        FontSize = 8
        ExplicitTop = -3
      end
      inherited QRDBText42: TQRDBText
        Top = -3
        Size.Values = (
          39.687500000000000000
          968.375000000000000000
          -7.937500000000000000
          171.979166666666700000)
        FontSize = 8
        ExplicitTop = -3
      end
      inherited QRLabel65: TQRLabel
        Size.Values = (
          39.687500000000000000
          1254.125000000000000000
          -2.645833333333333000
          185.208333333333300000)
        FontSize = 8
      end
    end
    inherited QRBand2: TQRBand
      Top = 65
      Height = 103
      Size.Values = (
        272.520833333333300000
        2008.187500000000000000)
      ExplicitTop = 65
      ExplicitHeight = 103
      inherited QRDBText1: TQRDBText
        Left = 118
        Top = 55
        Width = 312
        Size.Values = (
          42.333333333333330000
          312.208333333333300000
          145.520833333333300000
          825.500000000000000000)
        Font.Height = -13
        FontSize = 10
        ExplicitLeft = 118
        ExplicitTop = 55
        ExplicitWidth = 312
      end
      inherited QRDBText8: TQRDBText
        Left = 78
        Top = 37
        Width = 217
        Height = 17
        Size.Values = (
          44.979166666666670000
          206.375000000000000000
          97.895833333333330000
          574.145833333333300000)
        Font.Height = -13
        FontSize = 10
        ExplicitLeft = 78
        ExplicitTop = 37
        ExplicitWidth = 217
        ExplicitHeight = 17
      end
      inherited QRLabel7: TQRLabel
        Top = 55
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          145.520833333333300000
          171.979166666666700000)
        FontSize = 8
        ExplicitTop = 55
      end
      inherited QRLabel16: TQRLabel
        Left = 5
        Top = 37
        Height = 16
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          97.895833333333330000
          124.354166666666700000)
        FontSize = 8
        ExplicitLeft = 5
        ExplicitTop = 37
        ExplicitHeight = 16
      end
      inherited QRLabel29: TQRLabel
        Left = 436
        Top = 55
        Size.Values = (
          39.687500000000000000
          1153.583333333333000000
          145.520833333333300000
          129.645833333333300000)
        FontSize = 8
        ExplicitLeft = 436
        ExplicitTop = 55
      end
      inherited QRDBText26: TQRDBText
        Left = 492
        Top = 55
        Width = 115
        Size.Values = (
          39.687500000000000000
          1301.750000000000000000
          145.520833333333300000
          304.270833333333300000)
        FontSize = 8
        ExplicitLeft = 492
        ExplicitTop = 55
        ExplicitWidth = 115
      end
      inherited QRDBText27: TQRDBText
        Top = 55
        Width = 38
        Size.Values = (
          39.687500000000000000
          206.375000000000000000
          145.520833333333300000
          100.541666666666700000)
        FontSize = 8
        ExplicitTop = 55
        ExplicitWidth = 38
      end
      inherited QRLabel34: TQRLabel
        Top = 71
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          187.854166666666700000
          193.145833333333300000)
        FontSize = 8
        ExplicitTop = 71
      end
      inherited QRLabel35: TQRLabel
        Left = 546
        Top = 71
        Size.Values = (
          39.687500000000000000
          1444.625000000000000000
          187.854166666666700000
          150.812500000000000000)
        Font.Height = -11
        FontSize = 8
        ExplicitLeft = 546
        ExplicitTop = 71
      end
      inherited QRLabel36: TQRLabel
        Left = 608
        Top = 55
        Size.Values = (
          39.687500000000000000
          1608.666666666667000000
          145.520833333333300000
          148.166666666666700000)
        FontSize = 8
        ExplicitLeft = 608
        ExplicitTop = 55
      end
      inherited QRLabel46: TQRLabel
        Left = 601
        Top = 70
        Width = 153
        Height = 17
        Size.Values = (
          44.979166666666670000
          1590.145833333333000000
          185.208333333333300000
          404.812500000000000000)
        Font.Height = -13
        FontSize = 10
        ExplicitLeft = 601
        ExplicitTop = 70
        ExplicitWidth = 153
        ExplicitHeight = 17
      end
      inherited QRLabel49: TQRLabel
        Top = 72
        Width = 453
        Size.Values = (
          39.687500000000000000
          206.375000000000000000
          190.500000000000000000
          1198.562500000000000000)
        FontSize = 8
        ExplicitTop = 72
        ExplicitWidth = 453
      end
      inherited QRLabel51: TQRLabel
        Left = 667
        Top = 54
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          1764.770833333333000000
          142.875000000000000000
          230.187500000000000000)
        FontSize = 8
        ExplicitLeft = 667
        ExplicitTop = 54
        ExplicitWidth = 87
        ExplicitHeight = 17
      end
      inherited QRLabel1: TQRLabel
        Width = 150
        Height = 20
        Size.Values = (
          52.916666666666670000
          13.229166666666670000
          -5.291666666666667000
          396.875000000000000000)
        Font.Height = -16
        FontSize = 12
        ExplicitWidth = 150
        ExplicitHeight = 20
      end
      inherited QRLabel5: TQRLabel
        Left = 221
        Top = 14
        Size.Values = (
          39.687500000000000000
          584.729166666666700000
          37.041666666666670000
          836.083333333333300000)
        FontSize = 8
        ExplicitLeft = 221
        ExplicitTop = 14
      end
      inherited QRLabel6: TQRLabel
        Left = 211
        Top = 25
        Size.Values = (
          39.687500000000000000
          558.270833333333300000
          66.145833333333330000
          889.000000000000000000)
        FontSize = 8
        ExplicitLeft = 211
        ExplicitTop = 25
      end
      inherited QRLabel21: TQRLabel
        Left = 556
        Top = -2
        Size.Values = (
          44.979166666666670000
          1471.083333333333000000
          -5.291666666666667000
          105.833333333333300000)
        FontSize = 10
        ExplicitLeft = 556
        ExplicitTop = -2
      end
      inherited QRLabel22: TQRLabel
        Left = 595
        Width = 155
        Size.Values = (
          39.687500000000000000
          1574.270833333333000000
          92.604166666666670000
          410.104166666666700000)
        FontSize = 8
        ExplicitLeft = 595
        ExplicitWidth = 155
      end
      inherited QRLabel_Proximo: TQRLabel
        Size.Values = (
          39.687500000000000000
          926.041666666666700000
          254.000000000000000000
          571.500000000000000000)
        FontSize = 8
      end
      inherited QRLabel651: TQRLabel
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          254.000000000000000000
          150.812500000000000000)
        FontSize = 8
      end
      inherited QRLabel55: TQRLabel
        Size.Values = (
          42.333333333333340000
          772.583333333333400000
          251.354166666666700000
          150.812500000000000000)
        FontSize = 8
      end
      inherited QRLabel_Cidade: TQRLabel
        Size.Values = (
          39.687500000000000000
          206.375000000000000000
          254.000000000000000000
          560.916666666666700000)
        FontSize = 8
      end
      inherited QRLabel54: TQRLabel
        Left = 679
        Top = 3
        Size.Values = (
          44.979166666666670000
          1796.520833333334000000
          7.937500000000000000
          13.229166666666670000)
        FontSize = 10
        ExplicitLeft = 679
        ExplicitTop = 3
      end
      inherited QRDBText18: TQRDBText
        Size.Values = (
          42.333333333333340000
          1428.750000000000000000
          39.687500000000000000
          214.312500000000000000)
        FontSize = 9
      end
      inherited QRDBText21: TQRDBText
        Size.Values = (
          47.625000000000000000
          1666.875000000000000000
          39.687500000000000000
          320.145833333333400000)
        FontSize = 10
      end
    end
    inherited QRBand1: TQRBand
      Top = 11
      Height = 54
      Size.Values = (
        142.875000000000000000
        2008.187500000000000000)
      ExplicitTop = 11
      ExplicitHeight = 54
      inherited QRLabel3: TQRLabel
        Top = 36
        Size.Values = (
          42.333333333333340000
          1314.979166666667000000
          95.250000000000000000
          489.479166666666700000)
        FontSize = 10
        ExplicitTop = 36
      end
      inherited QRDBText22: TQRDBText
        Top = 36
        Size.Values = (
          42.333333333333330000
          1809.750000000000000000
          95.250000000000000000
          185.208333333333300000)
        FontSize = 10
        ExplicitTop = 36
      end
      inherited QRLabel_Titulo1: TQRLabel
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          13.229166666666670000
          1981.729166666667000000)
        FontSize = 12
      end
      inherited QRLabel_Titulo2: TQRLabel
        Top = 19
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          50.270833333333330000
          1981.729166666667000000)
        FontSize = 12
        ExplicitTop = 19
      end
      inherited QRLabel62: TQRLabel
        Left = 5
        Top = 36
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          95.250000000000000000
          150.812500000000000000)
        FontSize = 10
        ExplicitLeft = 5
        ExplicitTop = 36
      end
    end
    inherited QRSubDetail1: TQRSubDetail
      Top = 376
      Height = 13
      Size.Values = (
        34.395833333333330000
        2008.187500000000000000)
      ExplicitTop = 376
      ExplicitHeight = 13
      inherited QRDBText10: TQRDBText
        Size.Values = (
          42.333333333333330000
          21.166666666666670000
          2.645833333333333000
          238.125000000000000000)
        Font.Height = -11
        FontSize = 8
      end
      inherited QRDBText13: TQRDBText
        Left = 503
        Width = 83
        Size.Values = (
          42.333333333333330000
          1330.854166666667000000
          2.645833333333333000
          219.604166666666700000)
        Font.Height = -11
        FontSize = 8
        ExplicitLeft = 503
        ExplicitWidth = 83
      end
      inherited QRDBText14: TQRDBText
        Left = 654
        Width = 99
        Size.Values = (
          42.333333333333330000
          1730.375000000000000000
          2.645833333333333000
          261.937500000000000000)
        Font.Height = -11
        FontSize = 8
        ExplicitLeft = 654
        ExplicitWidth = 99
      end
      inherited QRShape2: TQRShape
        Size.Values = (
          2.645833333333333000
          275.166666666666700000
          31.750000000000000000
          1209.145833333333000000)
      end
      inherited QRDBText11: TQRDBText
        Width = 57
        Size.Values = (
          42.333333333333330000
          275.166666666666700000
          2.645833333333333000
          150.812500000000000000)
        Font.Height = -11
        FontSize = 8
        ExplicitWidth = 57
      end
      inherited QRDBText12: TQRDBText
        Left = 611
        Size.Values = (
          42.333333333333340000
          1616.604166666667000000
          2.645833333333333000
          108.479166666666700000)
        Font.Height = -11
        FontSize = 8
        ExplicitLeft = 611
      end
      inherited QRDBMetragem: TQRDBText
        Size.Values = (
          42.333333333333340000
          1161.520833333333000000
          2.645833333333333000
          87.312500000000000000)
        FontSize = 9
      end
      inherited QRDBText30: TQRDBText
        Size.Values = (
          42.333333333333330000
          1645.708333333333000000
          2.645833333333333000
          164.041666666666700000)
        FontSize = 9
      end
    end
    inherited ChildBand2: TQRChildBand
      Top = 389
      Size.Values = (
        79.375000000000000000
        2008.187500000000000000)
      ExplicitTop = 389
      inherited QRLabel4: TQRLabel
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          0.000000000000000000
          108.479166666666700000)
        FontSize = 8
      end
      inherited QRDBText3: TQRDBText
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          37.041666666666670000
          381.000000000000000000)
        FontSize = 8
      end
      inherited QRLabel8: TQRLabel
        Size.Values = (
          42.333333333333340000
          402.166666666666700000
          0.000000000000000000
          108.479166666666700000)
        FontSize = 8
      end
      inherited QRDBText4: TQRDBText
        Size.Values = (
          42.333333333333330000
          402.166666666666700000
          37.041666666666670000
          272.520833333333300000)
        FontSize = 8
      end
      inherited QRLabel9: TQRLabel
        Size.Values = (
          42.333333333333340000
          844.020833333333300000
          0.000000000000000000
          193.145833333333300000)
        FontSize = 8
      end
      inherited QRDBText5: TQRDBText
        Size.Values = (
          42.333333333333330000
          844.020833333333300000
          37.041666666666670000
          193.145833333333300000)
        FontSize = 8
      end
      inherited QRLabel12: TQRLabel
        Size.Values = (
          42.333333333333340000
          1047.750000000000000000
          0.000000000000000000
          95.250000000000000000)
        FontSize = 8
      end
      inherited QRDBText6: TQRDBText
        Size.Values = (
          42.333333333333330000
          1047.750000000000000000
          37.041666666666670000
          97.895833333333330000)
        FontSize = 8
      end
      inherited QRLabel13: TQRLabel
        Size.Values = (
          42.333333333333340000
          1174.750000000000000000
          0.000000000000000000
          39.687500000000000000)
        FontSize = 8
      end
      inherited QRDBText9: TQRDBText
        Size.Values = (
          42.333333333333330000
          1153.583333333333000000
          37.041666666666670000
          76.729166666666670000)
        FontSize = 8
      end
      inherited QRLabel14: TQRLabel
        Size.Values = (
          42.333333333333340000
          1238.250000000000000000
          0.000000000000000000
          79.375000000000000000)
        FontSize = 8
      end
      inherited QRDBText16: TQRDBText
        Size.Values = (
          42.333333333333330000
          1238.250000000000000000
          37.041666666666670000
          76.729166666666670000)
        FontSize = 8
      end
      inherited QRLabel18: TQRLabel
        Size.Values = (
          42.333333333333340000
          1322.916666666667000000
          0.000000000000000000
          209.020833333333300000)
        FontSize = 8
      end
      inherited QRDBText20: TQRDBText
        Size.Values = (
          42.333333333333330000
          1322.916666666667000000
          37.041666666666670000
          209.020833333333300000)
        FontSize = 8
      end
      inherited QRLabel26: TQRLabel
        Size.Values = (
          42.333333333333340000
          685.270833333333300000
          0.000000000000000000
          137.583333333333300000)
        FontSize = 8
      end
      inherited QRDBText23: TQRDBText
        Size.Values = (
          42.333333333333330000
          685.270833333333300000
          37.041666666666670000
          148.166666666666700000)
        FontSize = 8
      end
      inherited QRLabel27: TQRLabel
        Size.Values = (
          42.333333333333340000
          1539.875000000000000000
          0.000000000000000000
          47.625000000000000000)
        FontSize = 8
      end
      inherited QRDBText24: TQRDBText
        Size.Values = (
          42.333333333333330000
          1539.875000000000000000
          37.041666666666670000
          185.208333333333300000)
        FontSize = 8
      end
      inherited QRLabel28: TQRLabel
        Size.Values = (
          42.333333333333340000
          1733.020833333333000000
          0.000000000000000000
          63.500000000000000000)
        FontSize = 8
      end
      inherited QRDBText25: TQRDBText
        Width = 98
        Size.Values = (
          42.333333333333330000
          1733.020833333333000000
          37.041666666666670000
          259.291666666666700000)
        FontSize = 8
        ExplicitWidth = 98
      end
    end
    inherited ChildBand3: TQRChildBand
      Top = 251
      Height = 111
      Size.Values = (
        293.687500000000000000
        2008.187500000000000000)
      ExplicitTop = 251
      ExplicitHeight = 111
      inherited QRLabel38: TQRLabel
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          -2.645833333333333000
          590.020833333333300000)
        FontSize = 8
      end
      inherited QRLabel41: TQRLabel
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          108.479166666666700000
          375.708333333333300000)
        FontSize = 8
      end
      inherited QRDBText28: TQRDBText
        Size.Values = (
          74.083333333333330000
          18.520833333333330000
          37.041666666666670000
          1957.916666666667000000)
        FontSize = 8
      end
      inherited QRDBText29: TQRDBText
        Size.Values = (
          134.937500000000000000
          21.166666666666670000
          148.166666666666700000
          1957.916666666667000000)
        FontSize = 8
      end
      inherited QRLabel47: TQRLabel
        Size.Values = (
          39.687500000000000000
          764.645833333333300000
          108.479166666666700000
          127.000000000000000000)
        FontSize = 8
      end
      inherited QRDBText34: TQRDBText
        Size.Values = (
          42.333333333333340000
          896.937500000000000000
          108.479166666666700000
          214.312500000000000000)
        FontSize = 9
      end
      inherited QRLabel53: TQRLabel
        Size.Values = (
          39.687500000000000000
          1314.979166666667000000
          108.479166666666700000
          243.416666666666700000)
        FontSize = 8
      end
      inherited QRDBText36: TQRDBText
        Size.Values = (
          42.333333333333340000
          1568.979166666667000000
          108.479166666666700000
          256.645833333333400000)
        FontSize = 9
      end
    end
    inherited QRSubDetail3: TQRSubDetail
      Top = 514
      Height = 16
      Size.Values = (
        42.333333333333340000
        2008.187500000000000000)
      ExplicitTop = 514
      ExplicitHeight = 16
      inherited QRDBText45: TQRDBText
        Left = 167
        Size.Values = (
          42.333333333333330000
          441.854166666666700000
          -2.645833333333333000
          214.312500000000000000)
        FontSize = 8
        ExplicitLeft = 167
      end
      inherited QRDBText46: TQRDBText
        Left = 4
        Size.Values = (
          42.333333333333330000
          10.583333333333330000
          -2.645833333333333000
          277.812500000000000000)
        FontSize = 8
        ExplicitLeft = 4
      end
      inherited QRDBText47: TQRDBText
        Size.Values = (
          42.333333333333330000
          902.229166666666700000
          -2.645833333333333000
          214.312500000000000000)
        FontSize = 8
      end
      inherited QRDBText49: TQRDBText
        Top = -1
        Size.Values = (
          42.333333333333330000
          1145.645833333333000000
          -2.645833333333333000
          214.312500000000000000)
        FontSize = 8
        ExplicitTop = -1
      end
      inherited QRDBText48: TQRDBText
        Size.Values = (
          42.333333333333330000
          664.104166666666700000
          -2.645833333333333000
          230.187500000000000000)
        FontSize = 8
      end
      inherited QRDBText51: TQRDBText
        Left = 113
        Size.Values = (
          42.333333333333330000
          298.979166666666700000
          -2.645833333333333000
          134.937500000000000000)
        FontSize = 8
        ExplicitLeft = 113
      end
    end
    inherited QRBand4: TQRBand
      Top = 419
      Height = 32
      Size.Values = (
        84.666666666666670000
        2008.187500000000000000)
      ExplicitTop = 419
      ExplicitHeight = 32
      inherited Pedido_Linha1: TQRLabel
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          13.229166666666670000
          320.145833333333400000)
        FontSize = 8
      end
      inherited Pedido_Linha2: TQRLabel
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          58.208333333333340000
          320.145833333333400000)
        FontSize = 8
      end
    end
    inherited QRBand5: TQRBand
      Top = 568
      Height = 31
      Size.Values = (
        82.020833333333330000
        2008.187500000000000000)
      ExplicitTop = 568
      ExplicitHeight = 31
      inherited Pedido_Linha3: TQRLabel
        Size.Values = (
          124.354166666666700000
          10.583333333333330000
          50.270833333333330000
          1992.312500000000000000)
        FontSize = 9
      end
      inherited Pedido_Linha4: TQRLabel
        Size.Values = (
          124.354166666666700000
          13.229166666666670000
          177.270833333333300000
          1992.312500000000000000)
        FontSize = 9
      end
    end
    inherited ChildBand1: TQRChildBand
      Top = 362
      Height = 14
      Size.Values = (
        37.041666666666670000
        2008.187500000000000000)
      ExplicitTop = 362
      ExplicitHeight = 14
      inherited QRLabel57: TQRLabel
        Top = -3
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          -7.937500000000000000
          105.833333333333300000)
        FontSize = 8
        ExplicitTop = -3
      end
      inherited QRLabel59: TQRLabel
        Top = -3
        Size.Values = (
          39.687500000000000000
          275.166666666666700000
          -7.937500000000000000
          486.833333333333300000)
        FontSize = 8
        ExplicitTop = -3
      end
      inherited QRLabel60: TQRLabel
        Left = 589
        Top = -3
        Size.Values = (
          39.687500000000000000
          1558.395833333333000000
          -7.937500000000000000
          166.687500000000000000)
        FontSize = 8
        ExplicitLeft = 589
        ExplicitTop = -3
      end
      inherited QRLabel24: TQRLabel
        Left = 527
        Top = -3
        Size.Values = (
          39.687500000000000000
          1394.354166666667000000
          -7.937500000000000000
          156.104166666666700000)
        FontSize = 8
        ExplicitLeft = 527
        ExplicitTop = -3
      end
      inherited QRLabel25: TQRLabel
        Left = 699
        Top = -3
        Size.Values = (
          39.687500000000000000
          1849.437500000000000000
          -7.937500000000000000
          142.875000000000000000)
        FontSize = 8
        ExplicitLeft = 699
        ExplicitTop = -3
      end
      inherited QRLbMetragem: TQRLabel
        Size.Values = (
          39.687500000000000000
          1148.291666666667000000
          -2.645833333333333000
          108.479166666666700000)
        FontSize = 8
      end
      inherited QRLabel70: TQRLabel
        Size.Values = (
          39.687500000000000000
          1653.645833333333000000
          -2.645833333333333000
          156.104166666666700000)
        FontSize = 8
      end
    end
    inherited QRChildBand1: TQRChildBand
      Top = 182
      Size.Values = (
        134.937500000000000000
        2008.187500000000000000)
      ExplicitTop = 182
      inherited QRLabel61: TQRLabel
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          2.645833333333333000
          256.645833333333400000)
        FontSize = 8
      end
      inherited QRDBText19: TQRDBText
        Size.Values = (
          39.687500000000000000
          301.625000000000000000
          2.645833333333333000
          171.979166666666700000)
        FontSize = 8
      end
      inherited QRLabel63: TQRLabel
        Size.Values = (
          39.687500000000000000
          489.479166666666600000
          2.645833333333333000
          1502.833333333333000000)
        FontSize = 8
      end
      inherited QRLabel71: TQRLabel
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          44.979166666666670000
          171.979166666666700000)
        FontSize = 8
      end
      inherited QRDBText32: TQRDBText
        Left = 259
        Top = 36
        Width = 232
        Height = 17
        Size.Values = (
          44.979166666666670000
          685.270833333333300000
          95.250000000000000000
          613.833333333333300000)
        Font.Height = -13
        FontSize = 10
        ExplicitLeft = 259
        ExplicitTop = 36
        ExplicitWidth = 232
        ExplicitHeight = 17
      end
    end
    inherited QRBandEquipamentoElero: TQRChildBand
      Top = 233
      Size.Values = (
        47.625000000000000000
        2008.187500000000000000)
      ExplicitTop = 233
      inherited QRLabel64: TQRLabel
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          2.645833333333333000
          341.312500000000000000)
        FontSize = 8
      end
      inherited QRLabel67: TQRLabel
        Size.Values = (
          42.333333333333340000
          1219.729166666667000000
          2.645833333333333000
          320.145833333333400000)
        FontSize = 8
      end
      inherited QRLabel68: TQRLabel
        Size.Values = (
          39.687500000000000000
          1545.166666666667000000
          2.645833333333333000
          447.145833333333400000)
        FontSize = 8
      end
      inherited QRLabel69: TQRLabel
        Size.Values = (
          39.687500000000000000
          365.125000000000000000
          2.645833333333333000
          402.166666666666600000)
        FontSize = 8
      end
      inherited QRLabel17: TQRLabel
        Left = 5
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          2.645833333333333000
          214.312500000000000000)
        FontSize = 8
        ExplicitLeft = 5
      end
      inherited QRLabel42: TQRLabel
        Left = 5
        Top = 14
        Width = 425
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          37.041666666666670000
          1124.479166666667000000)
        FontSize = 8
        ExplicitLeft = 5
        ExplicitTop = 14
        ExplicitWidth = 425
        ExplicitHeight = 16
      end
    end
  end
  inherited QrDivisor: TQuickRep
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      0.000000000000000000
      66.145833333333340000
      0.000000000000000000
      2159.000000000000000000
      50.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBand6: TQRBand
      Size.Values = (
        66.145833333333340000
        2008.187500000000000000)
      inherited QRLinhaDivisoria: TQRLabel
        Size.Values = (
          39.687500000000000000
          0.000000000000000000
          -7.937500000000000000
          2002.895833333333000000)
        FontSize = 8
      end
      inherited QRLabel66: TQRLabel
        Size.Values = (
          39.687500000000000000
          963.083333333333400000
          23.812500000000000000
          82.020833333333340000)
        FontSize = 8
      end
    end
  end
  inherited UCControls1: TUCControls
    GroupName = 'Impress'#227'o Faturamento'
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 784
  end
  inherited QRPDFFilter1: TQRPDFFilter
    Left = 752
  end
end
