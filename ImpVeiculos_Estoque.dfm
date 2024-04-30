inherited ImpriVeiculos_Estoque: TImpriVeiculos_Estoque
  Caption = 'ImpriVeiculos_Estoque'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep1: TQuickRep
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
        Top = 71
        Width = 299
        Size.Values = (
          63.500000000000000000
          547.687500000000000000
          187.854166666666700000
          791.104166666666700000)
        Caption = 'Relat'#243'rio de Ve'#237'culos em Estoque'
        FontSize = 12
        ExplicitTop = 71
        ExplicitWidth = 299
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
    end
    inherited QRBand2: TQRBand
      Top = 270
      Height = 12
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      ExplicitTop = 270
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
      Height = 55
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        145.520833333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText9: TQRDBText
        Left = 3
        Top = 19
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          50.270833333333330000
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
      object QRDBText10: TQRDBText
        Left = 64
        Top = 19
        Width = 77
        Height = 17
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          50.270833333333330000
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
        Left = 637
        Top = 2
        Width = 80
        Height = 17
        Size.Values = (
          44.979166666666670000
          1685.395833333333000000
          5.291666666666667000
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
        Left = 2
        Top = 2
        Width = 40
        Height = 15
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          5.291666666666667000
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
      object QRLabel4: TQRLabel
        Left = 63
        Top = 2
        Width = 102
        Height = 15
        Size.Values = (
          39.687500000000000000
          166.687500000000000000
          5.291666666666667000
          269.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descri'#231#227'o da Moto'
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
      object QRLabel5: TQRLabel
        Left = 554
        Top = 1
        Width = 79
        Height = 23
        Size.Values = (
          60.854166666666670000
          1465.791666666667000000
          2.645833333333333000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Estoque : '
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
      object QRLabel6: TQRLabel
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
      object QRLabel7: TQRLabel
        Left = 202
        Top = 36
        Width = 57
        Height = 18
        Size.Values = (
          47.625000000000000000
          534.458333333333300000
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
      object QRLabel13: TQRLabel
        Left = 362
        Top = 36
        Width = 57
        Height = 18
        Size.Values = (
          47.625000000000000000
          957.791666666666700000
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
        Left = 426
        Top = 36
        Width = 79
        Height = 18
        Size.Values = (
          47.625000000000000000
          1127.125000000000000000
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
        Left = 661
        Top = 36
        Width = 55
        Height = 18
        Size.Values = (
          47.625000000000000000
          1748.895833333333000000
          95.250000000000000000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
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
      object QRLabel8: TQRLabel
        Left = 618
        Top = 36
        Width = 40
        Height = 18
        Size.Values = (
          47.625000000000000000
          1635.125000000000000000
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
      object QRLabel16: TQRLabel
        Left = 509
        Top = 36
        Width = 76
        Height = 18
        Size.Values = (
          47.625000000000000000
          1346.729166666667000000
          95.250000000000000000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Observa'#231#227'o'
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
      Top = 213
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
      Master = QuickRep1
      DataSet = Motos
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
        DataSet = Motos
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
        Left = 203
        Top = 0
        Width = 52
        Height = 15
        Size.Values = (
          39.687500000000000000
          537.104166666666700000
          0.000000000000000000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Motos
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
        DataSet = Motos
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
        DataSet = Motos
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
        Left = 363
        Top = 0
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          960.437499999999900000
          0.000000000000000000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Motos
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
        Left = 427
        Top = 0
        Width = 23
        Height = 15
        Size.Values = (
          39.687500000000000000
          1129.770833333333000000
          0.000000000000000000
          60.854166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Motos
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
        Left = 678
        Top = 0
        Width = 38
        Height = 15
        Size.Values = (
          39.687500000000000000
          1793.875000000000000000
          0.000000000000000000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Motos
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
      object QRDBText3: TQRDBText
        Left = 619
        Top = 0
        Width = 42
        Height = 15
        Size.Values = (
          39.687500000000000000
          1637.770833333333000000
          0.000000000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Motos
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
      object QRDBText14: TQRDBText
        Left = 509
        Top = 0
        Width = 100
        Height = 15
        Size.Values = (
          39.687500000000000000
          1346.729166666667000000
          0.000000000000000000
          264.583333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Motos
        DataField = 'OBSERVACAO'
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
      Top = 229
      Width = 718
      Height = 41
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        108.479166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRDBText4: TQRDBText
        Left = 640
        Top = 22
        Width = 78
        Height = 15
        Size.Values = (
          39.687500000000000000
          1693.333333333333000000
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
        Left = 546
        Top = 22
        Width = 89
        Height = 15
        Size.Values = (
          39.687500000000000000
          1444.625000000000000000
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
      object QRLabel10: TQRLabel
        Left = 646
        Top = 5
        Width = 72
        Height = 17
        Size.Values = (
          44.979166666666670000
          1709.208333333333000000
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
        Left = 584
        Top = 5
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
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
      object QRLabel17: TQRLabel
        Left = 465
        Top = 5
        Width = 72
        Height = 30
        Size.Values = (
          79.375000000000000000
          1230.312500000000000000
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
      
        'SELECT P.*, E.CODEMPRESA, E.ESTOQUE AS ESTOQUE_P, E.CODPRODUTO F' +
        'ROM PRODUTO P'
      'LEFT JOIN ESTOQUE_PRODUTO E ON P.CODIGO=E.CODPRODUTO'
      'WHERE (TIPO='#39'MOTO'#39') and (E.CODEMPRESA= :Emp)'
      'ORDER BY P.CODIGO'
      ''
      '')
    Left = 444
    Top = 145
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
    object FloatField2: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'PRODUTO.ESTOQUE'
      DisplayFormat = '00'
    end
    object ProdutoESTOQUE_P: TFloatField
      FieldName = 'ESTOQUE_P'
      Origin = '"ESTOQUE_PRODUTO"."ESTOQUE"'
    end
  end
  object DataSource1: TDataSource
    DataSet = Produto
    Left = 472
    Top = 145
  end
  object Motos: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = MotosBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      'SELECT P.*,C.DESCRICAO AS COR FROM PRODUTO_MOTO P'
      'LEFT JOIN CORES C ON P.CODCOR=C.CODIGO'
      'WHERE (CODPRODUTO= :Codigo) and (P.CODEMPRESA= :Emp)'
      'ORDER BY CHASSI')
    Left = 500
    Top = 145
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Emp'
        ParamType = ptUnknown
      end>
    object MotosCODPRODUTO: TIBStringField
      FieldName = 'CODPRODUTO'
      Origin = '"PRODUTO_MOTO"."CODPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object MotosCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"PRODUTO_MOTO"."CHASSI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MotosMOTOR: TIBStringField
      FieldName = 'MOTOR'
      Origin = '"PRODUTO_MOTO"."MOTOR"'
    end
    object MotosRENAVAN: TIBStringField
      FieldName = 'RENAVAN'
      Origin = '"PRODUTO_MOTO"."RENAVAN"'
      Size = 15
    end
    object MotosANO_MODELO: TIBStringField
      FieldName = 'ANO_MODELO'
      Origin = '"PRODUTO_MOTO"."ANO_MODELO"'
      Size = 15
    end
    object MotosCILINDRADA: TFloatField
      FieldName = 'CILINDRADA'
      Origin = '"PRODUTO_MOTO"."CILINDRADA"'
    end
    object MotosHP: TFloatField
      FieldName = 'HP'
      Origin = '"PRODUTO_MOTO"."HP"'
    end
    object MotosCODCOR: TIntegerField
      FieldName = 'CODCOR'
      Origin = '"PRODUTO_MOTO"."CODCOR"'
    end
    object MotosCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"PRODUTO_MOTO"."COMBUSTIVEL"'
      Size = 10
    end
    object MotosKM: TIBStringField
      FieldName = 'KM'
      Origin = '"PRODUTO_MOTO"."KM"'
      Size = 9
    end
    object MotosPASSAGEIROS: TFloatField
      FieldName = 'PASSAGEIROS'
      Origin = '"PRODUTO_MOTO"."PASSAGEIROS"'
    end
    object MotosFRETE: TFloatField
      FieldName = 'FRETE'
      Origin = '"PRODUTO_MOTO"."FRETE"'
    end
    object MotosPIS: TFloatField
      FieldName = 'PIS'
      Origin = '"PRODUTO_MOTO"."PIS"'
    end
    object MotosCOFINS: TFloatField
      FieldName = 'COFINS'
      Origin = '"PRODUTO_MOTO"."COFINS"'
    end
    object MotosCUSTO_FABR: TFloatField
      FieldName = 'CUSTO_FABR'
      Origin = '"PRODUTO_MOTO"."CUSTO_FABR"'
    end
    object MotosCUSTO_LOJA: TFloatField
      FieldName = 'CUSTO_LOJA'
      Origin = '"PRODUTO_MOTO"."CUSTO_LOJA"'
    end
    object MotosMARGEM: TFloatField
      FieldName = 'MARGEM'
      Origin = '"PRODUTO_MOTO"."MARGEM"'
    end
    object MotosVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"PRODUTO_MOTO"."VALOR"'
      DisplayFormat = '##,###,##0.00'
    end
    object MotosOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"PRODUTO_MOTO"."OBSERVACAO"'
      Size = 500
    end
    object MotosPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"PRODUTO_MOTO"."PLACA"'
      Size = 7
    end
    object MotosCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"CORES"."DESCRICAO"'
      Size = 50
    end
    object MotosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"PRODUTO_MOTO"."STATUS"'
      Size = 15
    end
  end
  object Soma: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT SUM(M.CUSTO_LOJA) TOTAL_CUSTO_LOJA, '
      'SUM(M.VALOR) TOTAL_VALOR'
      'FROM PRODUTO P'
      'LEFT JOIN PRODUTO_MOTO M ON M.CODPRODUTO=P.CODIGO'
      'WHERE P.TIPO='#39'MOTO'#39)
    Left = 444
    Top = 173
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
  end
  object Soma_Estoque: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT SUM(E.ESTOQUE) AS TOTAL_ESTOQUE FROM PRODUTO P'
      'LEFT JOIN ESTOQUE_PRODUTO E ON P.CODIGO=E.CODPRODUTO'
      'WHERE (TIPO='#39'MOTO'#39') and (E.CODEMPRESA= :Emp)'
      ''
      '')
    Left = 472
    Top = 173
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Emp'
        ParamType = ptUnknown
      end>
    object FloatField4: TFloatField
      FieldName = 'TOTAL_ESTOQUE'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.##'
    end
  end
  object Estoque: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM ESTOQUE_PRODUTO'
      'WHERE (CODPRODUTO= :Codigo)'
      ''
      ''
      ''
      '')
    Left = 388
    Top = 201
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 16
      end>
  end
  object DS: TDataSource
    DataSet = Produto
    Left = 416
    Top = 201
  end
  object Soma_Cor: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT P.CODCOR, COUNT(P.CODCOR), C.DESCRICAO FROM PRODUTO_MOTO ' +
        'P'
      'LEFT JOIN CORES C ON P.CODCOR=C.CODIGO'
      'GROUP BY P.CODCOR, C.DESCRICAO')
    Left = 444
    Top = 201
    object Soma_CorCODCOR: TIntegerField
      FieldName = 'CODCOR'
      ProviderFlags = []
    end
    object Soma_CorCOUNT: TIntegerField
      FieldName = 'COUNT'
      ProviderFlags = []
    end
    object Soma_CorDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
end
