inherited ImpriAgendaChamado: TImpriAgendaChamado
  Caption = 'Impress'#227'o do Camado'
  ExplicitWidth = 899
  ExplicitHeight = 625
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep1: TQuickRep
    Height = 561
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.PaperSize = Custom
    Page.Values = (
      50.000000000000000000
      1485.000000000000000000
      50.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    ExplicitHeight = 561
    inherited QRBand1: TQRBand
      Left = 19
      Top = 19
      Width = 756
      Size.Values = (
        317.500000000000000000
        2000.250000000000000000)
      ExplicitLeft = 19
      ExplicitTop = 19
      ExplicitWidth = 756
      inherited QRSysData1: TQRSysData
        Left = 600
        Top = 99
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          261.937500000000000000
          179.916666666666700000)
        FontSize = 10
        ExplicitLeft = 600
        ExplicitTop = 99
      end
      inherited QR_Titulo: TQRLabel
        Left = 271
        Top = 74
        Width = 191
        Size.Values = (
          63.500000000000000000
          717.020833333333400000
          195.791666666666700000
          505.354166666666700000)
        Caption = 'Controle de Chamado'
        FontSize = 12
        ExplicitLeft = 271
        ExplicitTop = 74
        ExplicitWidth = 191
      end
      inherited QR_Periodo: TQRLabel
        Top = 60
        Enabled = False
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          158.750000000000000000
          624.416666666666700000)
        FontSize = 10
        ExplicitTop = 60
      end
      inherited QRLabel1: TQRLabel
        Left = 521
        Top = 99
        Width = 70
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          261.937500000000000000
          185.208333333333300000)
        Caption = 'Impress'#227'o:'
        FontSize = 10
        ExplicitLeft = 521
        ExplicitTop = 99
        ExplicitWidth = 70
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
          60.854166666666680000
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
      object QRDBText4: TQRDBText
        Left = 344
        Top = 99
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          910.166666666666600000
          261.937500000000000000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FrmAgenda.Agenda
        DataField = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 271
        Top = 99
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          717.020833333333400000
          261.937500000000000000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Protocolo:'
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
      object qrlbl16: TQRLabel
        Left = 531
        Top = 66
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          1404.937500000000000000
          174.625000000000000000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Abertura:'
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
      object qrdbtxtDT_EMISSAO: TQRDBText
        Left = 600
        Top = 66
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          174.625000000000000000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FrmAgenda.Agenda
        DataField = 'DT_EMISSAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object qrlbl17: TQRLabel
        Left = 497
        Top = 83
        Width = 94
        Height = 17
        Size.Values = (
          44.979166666666670000
          1314.979166666667000000
          219.604166666666700000
          248.708333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Encerramento:'
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
      object QRLabel21: TQRLabel
        Left = 600
        Top = 83
        Width = 121
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          219.604166666666700000
          320.145833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '_____/____/_______'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 600
        Top = 83
        Width = 97
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          219.604166666666700000
          256.645833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FrmAgenda.Agenda
        DataField = 'DT_FATURAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
    inherited QRBand2: TQRBand
      Left = 19
      Top = 540
      Width = 756
      Height = 1
      Enabled = False
      Size.Values = (
        2.645833333333333000
        2000.250000000000000000)
      ExplicitLeft = 19
      ExplicitTop = 540
      ExplicitWidth = 756
      ExplicitHeight = 1
      inherited QRLabel2: TQRLabel
        Size.Values = (
          39.687500000000000000
          1418.166666666667000000
          -5.291666666666667000
          473.604166666666700000)
        FontSize = 8
      end
      inherited QRSysData2: TQRSysData
        Left = 358
        Size.Values = (
          39.687500000000000000
          947.208333333333400000
          -5.291666666666667000
          103.187500000000000000)
        FontSize = 8
        ExplicitLeft = 358
      end
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 139
      Width = 756
      Height = 401
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1060.979166666667000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object qrlbl10: TQRLabel
        Left = 9
        Top = 177
        Width = 253
        Height = 17
        Frame.Color = clSilver
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          468.312500000000100000
          669.395833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlbl12: TQRLabel
        Left = 261
        Top = 177
        Width = 195
        Height = 17
        Frame.Color = clSilver
        Size.Values = (
          44.979166666666670000
          690.562500000000000000
          468.312500000000100000
          515.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlbl14: TQRLabel
        Left = 455
        Top = 177
        Width = 290
        Height = 17
        Frame.Color = clSilver
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1203.854166666667000000
          468.312500000000100000
          767.291666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 593
        Top = 140
        Width = 152
        Height = 17
        Frame.Color = clSilver
        Frame.DrawBottom = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1568.979166666667000000
          370.416666666666700000
          402.166666666666600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 261
        Top = 140
        Width = 333
        Height = 17
        Frame.Color = clSilver
        Frame.DrawBottom = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          690.562500000000000000
          370.416666666666700000
          881.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 9
        Top = 140
        Width = 253
        Height = 17
        Frame.Color = clSilver
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          370.416666666666700000
          669.395833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlbl4: TQRLabel
        Left = 11
        Top = 105
        Width = 253
        Height = 17
        Frame.Color = clSilver
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          277.812500000000000000
          669.395833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlbl6: TQRLabel
        Left = 263
        Top = 105
        Width = 331
        Height = 17
        Frame.Color = clSilver
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          695.854166666666800000
          277.812500000000000000
          875.770833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlbl8: TQRLabel
        Left = 592
        Top = 105
        Width = 153
        Height = 17
        Frame.Color = clSilver
        Frame.DrawBottom = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          277.812500000000000000
          404.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlbl2: TQRLabel
        Left = 593
        Top = 70
        Width = 152
        Height = 17
        Frame.Color = clSilver
        Frame.DrawBottom = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1568.979166666667000000
          185.208333333333300000
          402.166666666666600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 11
        Top = 35
        Width = 506
        Height = 17
        Frame.Color = clSilver
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          92.604166666666680000
          1338.791666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlbl1: TQRLabel
        Left = 517
        Top = 5
        Width = 228
        Height = 45
        Frame.Color = clSilver
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          119.062500000000000000
          1367.895833333333000000
          13.229166666666670000
          603.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 11
        Top = 70
        Width = 507
        Height = 17
        Frame.Color = clSilver
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          185.208333333333300000
          1341.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 9
        Top = 193
        Width = 736
        Height = 205
        Frame.Color = clGray
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          542.395833333333400000
          23.812500000000000000
          510.645833333333300000
          1947.333333333334000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 14
        Top = 15
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          39.687500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Raz'#227'o Social'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrdbtxtFUNCIONARIO: TQRDBText
        Left = 523
        Top = 31
        Width = 214
        Height = 17
        Size.Values = (
          44.979166666666670000
          1383.770833333333000000
          82.020833333333340000
          566.208333333333400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FrmAgenda.Agenda
        DataField = 'FUNCIONARIO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 600
        Top = 6
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          15.875000000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Respons'#225'vel'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 16
        Top = 200
        Width = 713
        Height = 185
        Size.Values = (
          489.479166666666600000
          42.333333333333340000
          529.166666666666800000
          1886.479166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FrmAgenda.Agenda
        DataField = 'MENSSAGE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 67
        Top = 33
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          177.270833333333300000
          87.312500000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FrmAgenda.Agenda
        DataField = 'CAPTION'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 14
        Top = 68
        Width = 74
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          179.916666666666700000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Clientes
        DataField = 'ENDERECO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 507
        Top = 355
        Width = 222
        Height = 17
        Frame.DrawBottom = True
        Size.Values = (
          44.979166666666670000
          1341.437500000000000000
          939.270833333333400000
          587.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 597
        Top = 373
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          1579.562500000000000000
          986.895833333333400000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cliente'
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
      object QRDBText1: TQRDBText
        Left = 14
        Top = 33
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          87.312500000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = FrmAgenda.Agenda
        DataField = 'PESSOA_CLIENTE_CODIGO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 14
        Top = 51
        Width = 61
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          134.937500000000000000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Endere'#231'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 517
        Top = 70
        Width = 77
        Height = 17
        Frame.Color = clSilver
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          1367.895833333333000000
          185.208333333333300000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '   '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 524
        Top = 51
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1386.416666666667000000
          134.937500000000000000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#250'mero'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrdbtxtNUMERO: TQRDBText
        Left = 524
        Top = 68
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          1386.416666666667000000
          179.916666666666700000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Clientes
        DataField = 'NUMERO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object qrdbtxtPROXIMIDADE: TQRDBText
        Left = 600
        Top = 68
        Width = 89
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          179.916666666666700000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Clientes
        DataField = 'PROXIMIDADE'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object qrlbl3: TQRLabel
        Left = 600
        Top = 51
        Width = 90
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          134.937500000000000000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Complemento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrdbtxtBAIRRO: TQRDBText
        Left = 14
        Top = 103
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          272.520833333333400000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Clientes
        DataField = 'BAIRRO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object qrlbl5: TQRLabel
        Left = 14
        Top = 86
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          227.541666666666700000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Bairro'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrdbtxtCIDADE: TQRDBText
        Left = 267
        Top = 103
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          706.437500000000000000
          272.520833333333400000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Clientes
        DataField = 'CIDADE'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object qrlbl7: TQRLabel
        Left = 267
        Top = 86
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          706.437500000000000000
          227.541666666666700000
          121.708333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cidade'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrdbtxtUF: TQRDBText
        Left = 600
        Top = 103
        Width = 18
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          272.520833333333400000
          47.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Clientes
        DataField = 'UF'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object qrlbl9: TQRLabel
        Left = 600
        Top = 86
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          227.541666666666700000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Estado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrdbtxtCEP: TQRDBText
        Left = 14
        Top = 138
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          365.125000000000000000
          74.083333333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Clientes
        DataField = 'CEP'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 14
        Top = 121
        Width = 27
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          320.145833333333400000
          71.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CEP'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 267
        Top = 138
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          706.437500000000000000
          365.125000000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = FrmAgenda.Agenda
        DataField = 'LOCATION'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 267
        Top = 121
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          706.437500000000000000
          320.145833333333400000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrdbtxtINSCIDENT: TQRDBText
        Left = 600
        Top = 138
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          365.125000000000000000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Clientes
        DataField = 'INSCIDENT'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 600
        Top = 121
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          320.145833333333400000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ins. Estadual'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrdbtxtCONTATO: TQRDBText
        Left = 14
        Top = 175
        Width = 62
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          463.020833333333400000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Clientes
        DataField = 'CONTATO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object qrlbl11: TQRLabel
        Left = 14
        Top = 158
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          418.041666666666700000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Contato'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrdbtxtCNPJCPF: TQRDBText
        Left = 267
        Top = 175
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          706.437500000000000000
          463.020833333333400000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Clientes
        DataField = 'CNPJCPF'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object qrlbl13: TQRLabel
        Left = 267
        Top = 158
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          706.437500000000000000
          418.041666666666700000
          92.604166666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrdbtxtEMAIL: TQRDBText
        Left = 461
        Top = 175
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1219.729166666667000000
          463.020833333333400000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Clientes
        DataField = 'EMAIL'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object qrlbl15: TQRLabel
        Left = 461
        Top = 158
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1219.729166666667000000
          418.041666666666700000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'E-Mail'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 13
        Top = 381
        Width = 181
        Height = 17
        Enabled = False
        Size.Values = (
          44.979166666666670000
          34.395833333333340000
          1008.062500000000000000
          478.895833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '* Fazer Backup da Base de dados'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
  inherited QRHTMLFilter1: TQRHTMLFilter
    Left = 456
    Top = 147
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 424
    Top = 147
  end
  inherited QRTextFilter1: TQRTextFilter
    Left = 360
    Top = 147
  end
  inherited QRExcelFilter1: TQRExcelFilter
    Left = 328
    Top = 147
  end
  inherited QRPDFFilter1: TQRPDFFilter
    Left = 392
    Top = 147
  end
  object Clientes: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = FrmAgenda.SchedulerDataSource
    ParamCheck = True
    SQL.Strings = (
      'select C.*,CI.DESCRICAO AS CIDADE from PESSOAS C'
      'LEFT JOIN CIDADES CI ON CI.CODIGO=C.CODCIDADE'
      'WHERE C.Codigo like :PESSOA_CLIENTE_CODIGO')
    Left = 296
    Top = 147
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PESSOA_CLIENTE_CODIGO'
        ParamType = ptUnknown
      end>
  end
end
