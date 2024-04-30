object ImpriVenda: TImpriVenda
  Left = 4
  Top = 4
  Caption = 'ImpriVenda'
  ClientHeight = 658
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PrintScale = poNone
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Tag = 1
    Left = 49
    Top = 8
    Width = 816
    Height = 573
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Fixedsys'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Continuous = False
    Page.Values = (
      50.000000000000000000
      1516.062500000000000000
      0.000000000000000000
      2159.000000000000000000
      50.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = True
    PrinterSettings.UseCustomBinCode = True
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = True
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomOther
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand3: TQRBand
      Left = 19
      Top = 428
      Width = 759
      Height = 56
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand3BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        148.166666666666700000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRLabel39: TQRLabel
        Left = 433
        Top = 42
        Width = 81
        Height = 16
        Size.Values = (
          42.333333333333330000
          1145.645833333333000000
          111.125000000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Status'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        Left = 593
        Top = 42
        Width = 65
        Height = 16
        Size.Values = (
          42.333333333333330000
          1568.979166666667000000
          111.125000000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'R$ TOTAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 665
        Top = 42
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1759.479166666667000000
          111.125000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 593
        Top = 28
        Width = 65
        Height = 16
        Size.Values = (
          42.333333333333330000
          1568.979166666667000000
          74.083333333333330000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Desconto'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRDBText7: TQRDBText
        Left = 665
        Top = 28
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1759.479166666667000000
          74.083333333333320000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VALOR_DESC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel20: TQRLabel
        Left = 593
        Top = 0
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1568.979166666667000000
          0.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Sub-Total'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText17: TQRDBText
        Left = 665
        Top = 0
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1759.479166666667000000
          0.000000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'SUB_TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 665
        Top = 14
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1759.479166666667000000
          37.041666666666670000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VALOR_ACRESC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 593
        Top = 14
        Width = 97
        Height = 16
        Size.Values = (
          42.333333333333330000
          1568.979166666667000000
          37.041666666666670000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Frete/Acres.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QrLabel10: TQRLabel
        Left = 433
        Top = 14
        Width = 65
        Height = 16
        Size.Values = (
          42.333333333333330000
          1145.645833333333000000
          37.041666666666670000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Produtos'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText40: TQRDBText
        Left = 508
        Top = 14
        Width = 75
        Height = 16
        Size.Values = (
          42.333333333333330000
          1344.083333333333000000
          37.041666666666670000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'TOTAL_PRODUTOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 433
        Top = 28
        Width = 65
        Height = 16
        Size.Values = (
          42.333333333333330000
          1145.645833333333000000
          74.083333333333330000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Servi'#231'os'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText41: TQRDBText
        Left = 508
        Top = 28
        Width = 75
        Height = 16
        Size.Values = (
          42.333333333333330000
          1344.083333333333000000
          74.083333333333320000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'TOTAL_SERVICOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QR_QtdItens: TQRLabel
        Left = 433
        Top = 1
        Width = 81
        Height = 16
        Size.Values = (
          42.333333333333330000
          1145.645833333333000000
          2.645833333333333000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Quantidade'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText44: TQRDBText
        Left = 56
        Top = 28
        Width = 375
        Height = 16
        Size.Values = (
          42.333333333333330000
          148.166666666666700000
          74.083333333333320000
          992.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'CONDICAOPAGTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel58: TQRLabel
        Left = 5
        Top = 28
        Width = 49
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          74.083333333333330000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cond.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText31: TQRDBText
        Left = 41
        Top = 1
        Width = 390
        Height = 29
        Size.Values = (
          76.729166666666680000
          108.479166666666700000
          2.645833333333333000
          1031.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'OBSERVACAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel52: TQRLabel
        Left = 5
        Top = 0
        Width = 33
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          0.000000000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Obs.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText52: TQRDBText
        Left = 516
        Top = 1
        Width = 67
        Height = 16
        Size.Values = (
          42.333333333333340000
          1365.250000000000000000
          2.645833333333333000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 5
        Top = 42
        Width = 104
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          111.125000000000000000
          275.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Tipo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel37: TQRLabel
        Left = 197
        Top = 42
        Width = 51
        Height = 16
        Size.Values = (
          42.333333333333330000
          521.229166666666700000
          111.125000000000000000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'N.Cheq'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel40: TQRLabel
        Left = 113
        Top = 42
        Width = 81
        Height = 16
        Size.Values = (
          42.333333333333330000
          298.979166666666700000
          111.125000000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Documento'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel43: TQRLabel
        Left = 251
        Top = 42
        Width = 81
        Height = 16
        Size.Values = (
          42.333333333333330000
          664.104166666666800000
          111.125000000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Vencimento'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel44: TQRLabel
        Left = 341
        Top = 42
        Width = 81
        Height = 16
        Size.Values = (
          42.333333333333330000
          902.229166666666800000
          111.125000000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Valor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 55
        Width = 514
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          145.520833333333300000
          1359.958333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRChildBand3: TQRChildBand
      Left = 19
      Top = 138
      Width = 759
      Height = 14
      Frame.DrawBottom = True
      AlignToBottom = False
      Enabled = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.041666666666670000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRBand2
      PrintOrder = cboAfterParent
      object QRLabel30: TQRLabel
        Left = 5
        Top = -2
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          -5.291666666666667000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Veiculo :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel31: TQRLabel
        Left = 223
        Top = -2
        Width = 67
        Height = 15
        Enabled = False
        Size.Values = (
          39.687500000000000000
          590.020833333333300000
          -5.291666666666667000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ano/Modelo : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel32: TQRLabel
        Left = 433
        Top = -2
        Width = 38
        Height = 15
        Size.Values = (
          39.687500000000000000
          1145.645833333333000000
          -5.291666666666667000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Placa : '
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
      object QRLabel33: TQRLabel
        Left = 548
        Top = -2
        Width = 48
        Height = 15
        Size.Values = (
          39.687500000000000000
          1449.916666666667000000
          -5.291666666666667000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Chassi : '
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
      object QRLabel45: TQRLabel
        Left = 78
        Top = -1
        Width = 144
        Height = 15
        Size.Values = (
          39.687500000000000000
          206.375000000000000000
          -2.645833333333333000
          381.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel45'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel48: TQRLabel
        Left = 598
        Top = -3
        Width = 156
        Height = 17
        Size.Values = (
          44.979166666666670000
          1582.208333333333000000
          -7.937500000000000000
          412.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel50: TQRLabel
        Left = 294
        Top = -3
        Width = 42
        Height = 17
        Enabled = False
        Size.Values = (
          44.979166666666670000
          777.875000000000000000
          -7.937500000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel50'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel56: TQRLabel
        Left = 337
        Top = -2
        Width = 27
        Height = 15
        Size.Values = (
          39.687500000000000000
          891.645833333333300000
          -5.291666666666667000
          71.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'KM : '
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
      object QRDBText42: TQRDBText
        Left = 366
        Top = -2
        Width = 65
        Height = 15
        Size.Values = (
          39.687500000000000000
          968.375000000000000000
          -5.291666666666667000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'KILOMETRAGEM'
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
      object QRLabel65: TQRLabel
        Left = 474
        Top = -1
        Width = 70
        Height = 15
        Size.Values = (
          39.687500000000000000
          1254.125000000000000000
          -2.645833333333333000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel65'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 25
      Width = 759
      Height = 113
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        298.979166666666700000
        2008.187500000000000000)
      PreCaluculateBandHeight = True
      KeepOnOnePage = False
      BandType = rbTitle
      object QRDBText1: TQRDBText
        Left = 108
        Top = 65
        Width = 459
        Height = 16
        Size.Values = (
          42.333333333333330000
          285.750000000000000000
          171.979166666666700000
          1214.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'RAZAOSOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 628
        Top = 50
        Width = 127
        Height = 15
        Size.Values = (
          39.687500000000000000
          1661.583333333333000000
          132.291666666666700000
          336.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'DT_EMISSAO'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel7: TQRLabel
        Left = 5
        Top = 65
        Width = 65
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          171.979166666666700000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 581
        Top = 50
        Width = 47
        Height = 15
        Size.Values = (
          39.687500000000000000
          1537.229166666667000000
          132.291666666666700000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Emiss'#227'o :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel29: TQRLabel
        Left = 579
        Top = 65
        Width = 49
        Height = 15
        Size.Values = (
          39.687500000000000000
          1531.937500000000000000
          171.979166666666700000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText26: TQRDBText
        Left = 627
        Top = 65
        Width = 128
        Height = 15
        Size.Values = (
          39.687500000000000000
          1658.937500000000000000
          171.979166666666700000
          338.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'TELEFONE'
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
      object QRDBText27: TQRDBText
        Left = 78
        Top = 65
        Width = 30
        Height = 15
        Size.Values = (
          39.687500000000000000
          206.375000000000000000
          171.979166666666700000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'PESSOA_RESPONSAVEL_SEQUENCIA'
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
      object QRLabel34: TQRLabel
        Left = 5
        Top = 81
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          214.312500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel35: TQRLabel
        Left = 571
        Top = 81
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          1510.770833333333000000
          214.312500000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ/CPF : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel36: TQRLabel
        Left = 572
        Top = 95
        Width = 56
        Height = 15
        Size.Values = (
          39.687500000000000000
          1513.416666666667000000
          251.354166666666700000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Insc/Ident : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel46: TQRLabel
        Left = 627
        Top = 80
        Width = 128
        Height = 16
        Size.Values = (
          42.333333333333330000
          1658.937500000000000000
          211.666666666666700000
          338.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel49: TQRLabel
        Left = 78
        Top = 81
        Width = 489
        Height = 15
        Size.Values = (
          39.687500000000000000
          206.375000000000000000
          214.312500000000000000
          1293.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel51: TQRLabel
        Left = 627
        Top = 96
        Width = 128
        Height = 15
        Size.Values = (
          39.687500000000000000
          1658.937500000000000000
          254.000000000000000000
          338.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 5
        Top = -2
        Width = 222
        Height = 31
        Size.Values = (
          82.020833333333330000
          13.229166666666670000
          -5.291666666666667000
          587.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'WR CONSULTORIA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Century Schoolbook'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 18
      end
      object QRLabel5: TQRLabel
        Left = 5
        Top = 25
        Width = 316
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          66.145833333333330000
          836.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Av. Patricio Lima, 1027 - Humaita - Tubar'#227'o/SC - CEP: 88.704-410'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 5
        Top = 36
        Width = 336
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          95.250000000000000000
          889.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'CNPJ: 07.313.226/0001-91 INSC: 254.956.980 - Fone: (48) 3626-171' +
          '7'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 588
        Top = 33
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1555.750000000000000000
          87.312500000000000000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Func.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 627
        Top = 35
        Width = 128
        Height = 15
        Size.Values = (
          39.687500000000000000
          1658.937500000000000000
          92.604166666666680000
          338.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel22'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel_Proximo: TQRLabel
        Left = 350
        Top = 96
        Width = 216
        Height = 15
        Size.Values = (
          39.687500000000000000
          926.041666666666800000
          254.000000000000000000
          571.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel651: TQRLabel
        Left = 5
        Top = 96
        Width = 57
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          254.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cidade:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel55: TQRLabel
        Left = 292
        Top = 95
        Width = 57
        Height = 16
        Size.Values = (
          42.333333333333330000
          772.583333333333300000
          251.354166666666700000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pr'#243'ximo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel_Cidade: TQRLabel
        Left = 78
        Top = 96
        Width = 212
        Height = 15
        Size.Values = (
          39.687500000000000000
          206.375000000000000000
          254.000000000000000000
          560.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel54: TQRLabel
        Left = 623
        Top = 14
        Width = 5
        Height = 17
        Size.Values = (
          44.979166666666670000
          1648.354166666667000000
          37.041666666666670000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 540
        Top = 15
        Width = 81
        Height = 16
        Size.Values = (
          42.333333333333330000
          1428.750000000000000000
          39.687500000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataField = 'VENDA_TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText21: TQRDBText
        Left = 630
        Top = 15
        Width = 121
        Height = 18
        Size.Values = (
          47.625000000000000000
          1666.875000000000000000
          39.687500000000000000
          320.145833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Fixedsys'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 0
      Width = 759
      Height = 25
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel3: TQRLabel
        Left = 497
        Top = 1
        Width = 185
        Height = 16
        Enabled = False
        Size.Values = (
          42.333333333333330000
          1314.979166666667000000
          2.645833333333333000
          489.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#186' do Documento Fiscal:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 684
        Top = 4
        Width = 70
        Height = 16
        Size.Values = (
          42.333333333333330000
          1809.750000000000000000
          10.583333333333330000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'NOTAFISCAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Fixedsys'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel_Titulo1: TQRLabel
        Left = 5
        Top = 5
        Width = 749
        Height = 16
        Enabled = False
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          13.229166666666670000
          1981.729166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = True
        Caption = 'DOCUMENTO AUXILIAR DE VENDA -'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Fixedsys'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel_Titulo2: TQRLabel
        Left = 5
        Top = 3
        Width = 749
        Height = 16
        Enabled = False
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          7.937500000000000000
          1981.729166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = True
        Caption = 
          'N'#195'O '#201' DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARANTIA DE MERCADORI' +
          'A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Fixedsys'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel62: TQRLabel
        Left = 251
        Top = 4
        Width = 57
        Height = 16
        Enabled = False
        Size.Values = (
          42.333333333333330000
          664.104166666666700000
          10.583333333333330000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pedido:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 19
      Top = 340
      Width = 759
      Height = 14
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      TransparentBand = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Fixedsys'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        37.041666666666670000
        2008.187500000000000000)
      PreCaluculateBandHeight = True
      KeepOnOnePage = False
      Master = QuickRep1
      FooterBand = QRBand4
      PrintBefore = True
      PrintIfEmpty = False
      object QRDBText10: TQRDBText
        Left = 8
        Top = 1
        Width = 90
        Height = 16
        Size.Values = (
          42.333333333333330000
          21.166666666666670000
          2.645833333333333000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'CODPRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText13: TQRDBText
        Left = 549
        Top = 1
        Width = 67
        Height = 16
        Size.Values = (
          42.333333333333340000
          1452.562500000000000000
          2.645833333333333000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText14: TQRDBText
        Left = 665
        Top = 1
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1759.479166666667000000
          2.645833333333333000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRShape2: TQRShape
        Left = 104
        Top = 12
        Width = 457
        Height = 1
        Size.Values = (
          2.645833333333333000
          275.166666666666700000
          31.750000000000000000
          1209.145833333333000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText11: TQRDBText
        Left = 104
        Top = 1
        Width = 324
        Height = 16
        Frame.Style = psDot
        Size.Values = (
          42.333333333333330000
          275.166666666666700000
          2.645833333333333000
          857.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataField = 'PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText12: TQRDBText
        Left = 507
        Top = 1
        Width = 41
        Height = 16
        Size.Values = (
          42.333333333333330000
          1341.437500000000000000
          2.645833333333333000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataField = 'QUANT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBMetragem: TQRDBText
        Left = 439
        Top = 1
        Width = 33
        Height = 16
        Size.Values = (
          42.333333333333330000
          1161.520833333333000000
          2.645833333333333000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoStretch = True
        Color = clWhite
        DataField = 'COMP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText30: TQRDBText
        Left = 622
        Top = 1
        Width = 62
        Height = 16
        Size.Values = (
          42.333333333333330000
          1645.708333333333000000
          2.645833333333333000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'ACRESCIMO_DESCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
    end
    object ChildBand2: TQRChildBand
      Left = 19
      Top = 354
      Width = 759
      Height = 30
      AlignToBottom = False
      BeforePrint = ChildBand2BeforePrint
      Enabled = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        79.375000000000000000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRSubDetail1
      PrintOrder = cboAfterParent
      object QRLabel4: TQRLabel
        Left = 5
        Top = 0
        Width = 41
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          0.000000000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CHASSI'
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
      object QRDBText3: TQRDBText
        Left = 5
        Top = 14
        Width = 144
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          37.041666666666670000
          381.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VEICULO_CHASSI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
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
        Left = 152
        Top = 0
        Width = 41
        Height = 16
        Size.Values = (
          42.333333333333330000
          402.166666666666700000
          0.000000000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'MOTOR'
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
      object QRDBText4: TQRDBText
        Left = 152
        Top = 14
        Width = 103
        Height = 16
        Size.Values = (
          42.333333333333330000
          402.166666666666700000
          37.041666666666670000
          272.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VEICULO_MOTOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 319
        Top = 0
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          844.020833333333300000
          0.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ANO/MODELO'
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
      object QRDBText5: TQRDBText
        Left = 319
        Top = 14
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          844.020833333333200000
          37.041666666666670000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VEICULO_ANO_MODELO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 396
        Top = 0
        Width = 36
        Height = 16
        Size.Values = (
          42.333333333333330000
          1047.750000000000000000
          0.000000000000000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CILIND'
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
      object QRDBText6: TQRDBText
        Left = 396
        Top = 14
        Width = 37
        Height = 16
        Size.Values = (
          42.333333333333330000
          1047.750000000000000000
          37.041666666666670000
          97.895833333333320000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VEICULO_CILINDRADA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 444
        Top = 0
        Width = 15
        Height = 16
        Size.Values = (
          42.333333333333330000
          1174.750000000000000000
          0.000000000000000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'HP'
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
      object QRDBText9: TQRDBText
        Left = 436
        Top = 14
        Width = 29
        Height = 16
        Size.Values = (
          42.333333333333330000
          1153.583333333333000000
          37.041666666666670000
          76.729166666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VEICULO_HP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 468
        Top = 0
        Width = 30
        Height = 16
        Size.Values = (
          42.333333333333330000
          1238.250000000000000000
          0.000000000000000000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PASS'
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
      object QRDBText16: TQRDBText
        Left = 468
        Top = 14
        Width = 29
        Height = 16
        Size.Values = (
          42.333333333333330000
          1238.250000000000000000
          37.041666666666670000
          76.729166666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VEICULO_PASSAGEIROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 500
        Top = 0
        Width = 79
        Height = 16
        Size.Values = (
          42.333333333333330000
          1322.916666666667000000
          0.000000000000000000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'COMBUSTIVEL'
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
      object QRDBText20: TQRDBText
        Left = 500
        Top = 14
        Width = 79
        Height = 16
        Size.Values = (
          42.333333333333330000
          1322.916666666667000000
          37.041666666666670000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VEICULO_COMBUSTIVEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 259
        Top = 0
        Width = 52
        Height = 16
        Size.Values = (
          42.333333333333330000
          685.270833333333300000
          0.000000000000000000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RENAVAN'
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
      object QRDBText23: TQRDBText
        Left = 259
        Top = 14
        Width = 56
        Height = 16
        Size.Values = (
          42.333333333333330000
          685.270833333333200000
          37.041666666666670000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VEICULO_RENAVAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 582
        Top = 0
        Width = 18
        Height = 16
        Size.Values = (
          42.333333333333330000
          1539.875000000000000000
          0.000000000000000000
          47.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'KM'
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
      object QRDBText24: TQRDBText
        Left = 582
        Top = 14
        Width = 70
        Height = 16
        Size.Values = (
          42.333333333333330000
          1539.875000000000000000
          37.041666666666670000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VEICULO_KM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel28: TQRLabel
        Left = 655
        Top = 0
        Width = 24
        Height = 16
        Size.Values = (
          42.333333333333330000
          1733.020833333333000000
          0.000000000000000000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'COR'
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
      object QRDBText25: TQRDBText
        Left = 655
        Top = 14
        Width = 93
        Height = 16
        Size.Values = (
          42.333333333333330000
          1733.020833333333000000
          37.041666666666670000
          246.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'COR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
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
    object ChildBand3: TQRChildBand
      Left = 19
      Top = 221
      Width = 759
      Height = 107
      Frame.DrawBottom = True
      AlignToBottom = False
      BeforePrint = ChildBand3BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        283.104166666666700000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRBandEquipamentoElero
      PrintOrder = cboAfterParent
      object QRLabel38: TQRLabel
        Left = 7
        Top = -1
        Width = 223
        Height = 15
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          -2.645833333333333000
          590.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Solicita'#231#227'o de servi'#231'os feita pelo Cliente'
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
      object QRLabel41: TQRLabel
        Left = 8
        Top = 41
        Width = 142
        Height = 15
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          108.479166666666700000
          375.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Observa'#231#245'es de Servi'#231'os'
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
      object QRDBText28: TQRDBText
        Left = 7
        Top = 14
        Width = 740
        Height = 28
        Size.Values = (
          74.083333333333320000
          18.520833333333330000
          37.041666666666670000
          1957.916666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'SOLICITACAO_SERVICO'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText29: TQRDBText
        Left = 8
        Top = 56
        Width = 740
        Height = 51
        Size.Values = (
          134.937500000000000000
          21.166666666666670000
          148.166666666666700000
          1957.916666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'OBSERVACAO_SERVICO'
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
      object QRLabel47: TQRLabel
        Left = 289
        Top = 41
        Width = 48
        Height = 15
        Size.Values = (
          39.687500000000000000
          764.645833333333300000
          108.479166666666700000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Entrada: '
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
      object QRDBText34: TQRDBText
        Left = 339
        Top = 41
        Width = 81
        Height = 16
        Size.Values = (
          42.333333333333330000
          896.937500000000000000
          108.479166666666700000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataField = 'DT_ENTRADA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel53: TQRLabel
        Left = 497
        Top = 41
        Width = 92
        Height = 15
        Size.Values = (
          39.687500000000000000
          1314.979166666667000000
          108.479166666666700000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Prometido para: '
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
      object QRDBText36: TQRDBText
        Left = 593
        Top = 41
        Width = 97
        Height = 16
        Size.Values = (
          42.333333333333330000
          1568.979166666667000000
          108.479166666666700000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataField = 'DT_PROMETIDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
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
    object QRSubDetail3: TQRSubDetail
      Left = 19
      Top = 484
      Width = 759
      Height = 13
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      HeaderBand = QRBand3
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText45: TQRDBText
        Left = 113
        Top = -1
        Width = 81
        Height = 16
        Size.Values = (
          42.333333333333330000
          298.979166666666700000
          -2.645833333333333000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'DOCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText46: TQRDBText
        Left = 5
        Top = -1
        Width = 105
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          -2.645833333333333000
          277.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'TIPOPAGTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText47: TQRDBText
        Left = 341
        Top = -1
        Width = 81
        Height = 16
        Size.Values = (
          42.333333333333330000
          902.229166666666800000
          -2.645833333333333000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText49: TQRDBText
        Left = 433
        Top = 0
        Width = 81
        Height = 16
        Size.Values = (
          42.333333333333330000
          1145.645833333333000000
          0.000000000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText48: TQRDBText
        Left = 251
        Top = -1
        Width = 87
        Height = 16
        Size.Values = (
          42.333333333333330000
          664.104166666666800000
          -2.645833333333333000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'VENCTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText51: TQRDBText
        Left = 197
        Top = -1
        Width = 51
        Height = 16
        Size.Values = (
          42.333333333333330000
          521.229166666666700000
          -2.645833333333333000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'CHEQUE_NUMERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object QRBand4: TQRBand
      Left = 19
      Top = 384
      Width = 759
      Height = 44
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = ChildBand1
      Size.Values = (
        116.416666666666700000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object Pedido_Linha1: TQRLabel
        Left = 5
        Top = 5
        Width = 121
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          13.229166666666670000
          320.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '<Pedido_Linha1>'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object Pedido_Linha2: TQRLabel
        Left = 5
        Top = 22
        Width = 121
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          58.208333333333330000
          320.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '<Pedido_Linha2>'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRBand5: TQRBand
      Left = 19
      Top = 497
      Width = 759
      Height = 88
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        232.833333333333300000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object Pedido_Linha3: TQRLabel
        Left = 4
        Top = 19
        Width = 753
        Height = 47
        Size.Values = (
          124.354166666666700000
          10.583333333333330000
          50.270833333333330000
          1992.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '<Pedido_Linha3>'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object Pedido_Linha4: TQRLabel
        Left = 5
        Top = 67
        Width = 753
        Height = 47
        Size.Values = (
          124.354166666666700000
          13.229166666666670000
          177.270833333333300000
          1992.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '<Pedido_Linha4>'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
    end
    object ChildBand1: TQRChildBand
      Left = 19
      Top = 328
      Width = 759
      Height = 12
      Frame.DrawBottom = True
      AlignToBottom = False
      BeforePrint = ChildBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = ChildBand3
      PrintOrder = cboAfterParent
      object QRLabel57: TQRLabel
        Left = 8
        Top = -1
        Width = 40
        Height = 15
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          -2.645833333333333000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo'
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
      object QRLabel59: TQRLabel
        Left = 104
        Top = -1
        Width = 184
        Height = 15
        Size.Values = (
          39.687500000000000000
          275.166666666666700000
          -2.645833333333333000
          486.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descri'#231#227'o dos produtos/servi'#231'os'
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
      object QRLabel60: TQRLabel
        Left = 484
        Top = -1
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          1280.583333333333000000
          -2.645833333333333000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Quantidade'
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
      object QRLabel24: TQRLabel
        Left = 557
        Top = -1
        Width = 59
        Height = 15
        Size.Values = (
          39.687500000000000000
          1473.729166666667000000
          -2.645833333333333000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'R$ Unit'#225'rio'
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
      object QRLabel25: TQRLabel
        Left = 694
        Top = -1
        Width = 54
        Height = 15
        Size.Values = (
          39.687500000000000000
          1836.208333333333000000
          -2.645833333333333000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'R$ TOTAL'
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
      object QRLbMetragem: TQRLabel
        Left = 434
        Top = -1
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          1148.291666666667000000
          -2.645833333333333000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Metros'
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
      object QRLabel70: TQRLabel
        Left = 625
        Top = -1
        Width = 59
        Height = 15
        Size.Values = (
          39.687500000000000000
          1653.645833333333000000
          -2.645833333333333000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'R$ Dsc/Acr'
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
    object QRChildBand1: TQRChildBand
      Left = 19
      Top = 152
      Width = 759
      Height = 51
      AlignToBottom = False
      BeforePrint = QRChildBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        134.937500000000000000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRChildBand3
      PrintOrder = cboAfterParent
      object QRLabel61: TQRLabel
        Left = 5
        Top = 1
        Width = 97
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          2.645833333333333000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Equipamento:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText19: TQRDBText
        Left = 114
        Top = 1
        Width = 65
        Height = 15
        Size.Values = (
          39.687500000000000000
          301.625000000000000000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'PLACA'
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
      object QRLabel63: TQRLabel
        Left = 185
        Top = 1
        Width = 568
        Height = 15
        Size.Values = (
          39.687500000000000000
          489.479166666666600000
          2.645833333333333000
          1502.833333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel71: TQRLabel
        Left = 5
        Top = 17
        Width = 65
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          44.979166666666670000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Defeito:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRDBText32: TQRDBText
        Left = 114
        Top = 17
        Width = 639
        Height = 30
        Size.Values = (
          79.375000000000000000
          301.625000000000000000
          44.979166666666670000
          1690.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'EQUIPAMENTO_DEFEITO'
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
    end
    object QRBandEquipamentoElero: TQRChildBand
      Left = 19
      Top = 203
      Width = 759
      Height = 18
      AlignToBottom = False
      BeforePrint = QRBandEquipamentoEleroBeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625000000000000000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRChildBand1
      PrintOrder = cboAfterParent
      object QRLabel64: TQRLabel
        Left = 5
        Top = 1
        Width = 129
        Height = 16
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          2.645833333333333000
          341.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#250'mero de S'#233'rie:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel67: TQRLabel
        Left = 461
        Top = 1
        Width = 121
        Height = 16
        Size.Values = (
          42.333333333333330000
          1219.729166666667000000
          2.645833333333333000
          320.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data da Compra:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel68: TQRLabel
        Left = 584
        Top = 1
        Width = 169
        Height = 15
        Size.Values = (
          39.687500000000000000
          1545.166666666667000000
          2.645833333333333000
          447.145833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel69: TQRLabel
        Left = 138
        Top = 1
        Width = 152
        Height = 15
        Size.Values = (
          39.687500000000000000
          365.125000000000000000
          2.645833333333333000
          402.166666666666600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 293
        Top = 1
        Width = 81
        Height = 16
        Size.Values = (
          42.333333333333330000
          775.229166666666700000
          2.645833333333333000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#250'mero NF:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Fixedsys'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel42: TQRLabel
        Left = 378
        Top = 1
        Width = 77
        Height = 15
        Size.Values = (
          39.687500000000000000
          1000.125000000000000000
          2.645833333333333000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
  object QrDivisor: TQuickRep
    Left = 105
    Top = 592
    Width = 816
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Continuous = False
    Page.Values = (
      0.000000000000000000
      66.145833333333340000
      0.000000000000000000
      2159.000000000000000000
      50.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = True
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomOther
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand6: TQRBand
      Left = 19
      Top = 0
      Width = 759
      Height = 25
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        2008.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLinhaDivisoria: TQRLabel
        Left = 0
        Top = -3
        Width = 757
        Height = 15
        Size.Values = (
          39.687500000000000000
          0.000000000000000000
          -7.937500000000000000
          2002.895833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
          '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
          '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
          '- - - - - - - - - - - - '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel66: TQRLabel
        Left = 364
        Top = 9
        Width = 31
        Height = 15
        Size.Values = (
          39.687500000000000000
          963.083333333333300000
          23.812500000000000000
          82.020833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '1'#170' Via'
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
  object UCControls1: TUCControls
    GroupName = 'Impress'#227'o da Venda'
    UserControl = FrmPrincipal.UserControl
    Components = ''
    MostraMessagemErroValidacao = False
    Left = 5
    Top = 289
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = DefaultEncoding
    Left = 61
    Top = 289
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = ASCIIEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 33
    Top = 289
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'Venda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DT_EMISSAO=DT_EMISSAO'
      'CODUSUARIO=CODUSUARIO'
      'MOTORISTA=MOTORISTA'
      'MOTORISTA_DOCUMENTO=MOTORISTA_DOCUMENTO'
      'MOTORISTA_ENDERECO=MOTORISTA_ENDERECO'
      'SOLICITACAO_SERVICO=SOLICITACAO_SERVICO'
      'DT_FATURAMENTO=DT_FATURAMENTO'
      'DT_ENTRADA=DT_ENTRADA'
      'DT_PROMETIDO=DT_PROMETIDO'
      'KILOMETRAGEM=KILOMETRAGEM'
      'PERC_ACRESC=PERC_ACRESC'
      'VALOR_ACRESC=VALOR_ACRESC'
      'PERC_DESC=PERC_DESC'
      'VALOR_DESC=VALOR_DESC'
      'TOTAL_PRODUTOS=TOTAL_PRODUTOS'
      'TOTAL_SERVICOS=TOTAL_SERVICOS'
      'SUB_TOTAL=SUB_TOTAL'
      'TOTAL=TOTAL'
      'VENDA_TIPO=VENDA_TIPO'
      'PLACA=PLACA'
      'CHASSI=CHASSI'
      'QUANTIDADE_PARCELAS=QUANTIDADE_PARCELAS'
      'QUANTIDADE=QUANTIDADE'
      'DIA_INTERVALO=DIA_INTERVALO'
      'CODCONDICAOPAGTO=CODCONDICAOPAGTO'
      'CONDICAOPAGTO=CONDICAOPAGTO'
      'INTERVALO_MENSAL=INTERVALO_MENSAL'
      'COMISSAO=COMISSAO'
      'STATUS=STATUS'
      'ATUALIZADO=ATUALIZADO'
      'NF_DT_EMISSAO=NF_DT_EMISSAO'
      'NF_DT_SAIDAENTRADA=NF_DT_SAIDAENTRADA'
      'NF_SAIDA_ENTRADA=NF_SAIDA_ENTRADA'
      'NF_TRANPORTADORA_PLACA=NF_TRANPORTADORA_PLACA'
      'NF_UF=NF_UF'
      'NF_ESPECIE=NF_ESPECIE'
      'NF_MARCA=NF_MARCA'
      'NF_NUMERO=NF_NUMERO'
      'NF_PESO_BRUTO=NF_PESO_BRUTO'
      'NF_PESO_LIQUIDO=NF_PESO_LIQUIDO'
      'NF_STATUS=NF_STATUS'
      'NF_DADOS_ADICIONAIS=NF_DADOS_ADICIONAIS'
      'NF_VALOR_ISS_ALIQ=NF_VALOR_ISS_ALIQ'
      'NF_VALOR_ICMS_BC=NF_VALOR_ICMS_BC'
      'NF_VALOR_ISS_BC=NF_VALOR_ISS_BC'
      'NF_VALOR_FRETE=NF_VALOR_FRETE'
      'NF_VALOR_ISS=NF_VALOR_ISS'
      'NF_VALOR_ICMS=NF_VALOR_ICMS'
      'NF_VALOR_SEGURO=NF_VALOR_SEGURO'
      'NF_VALOR_ICMS_ST=NF_VALOR_ICMS_ST'
      'NF_VALOR_IPI=NF_VALOR_IPI'
      'NF_IE_SUBST=NF_IE_SUBST'
      'CODCARRO=CODCARRO'
      'ANO=ANO'
      'COR=COR'
      'VALOR=VALOR'
      'COMISSAO_REPRESENTANTE=COMISSAO_REPRESENTANTE'
      'NF_VALOR_ICMS_ST_BC=NF_VALOR_ICMS_ST_BC'
      'NF_PORCENTAGEM_DESCONTO=NF_PORCENTAGEM_DESCONTO'
      'NF_OBSERVACAO=NF_OBSERVACAO'
      'NF_VCREDSN=NF_VCREDSN'
      'NF_VADUANEIRA=NF_VADUANEIRA'
      'NF_VALOR_PIS=NF_VALOR_PIS'
      'NF_VALOR_COFINS=NF_VALOR_COFINS'
      'NF_VALOR_II=NF_VALOR_II'
      'NF_TOTAL_IMPOSTOS=NF_TOTAL_IMPOSTOS'
      'NF_NDI=NF_NDI'
      'NF_DDI=NF_DDI'
      'NF_XLOCDESEMB=NF_XLOCDESEMB'
      'NF_UFDESEMB=NF_UFDESEMB'
      'NF_DDESEMB=NF_DDESEMB'
      'NF_CEXPORTADOR=NF_CEXPORTADOR'
      'NF_TRANSPORTADORA_UF=NF_TRANSPORTADORA_UF'
      'CODCARROINTEIRO=CODCARROINTEIRO'
      'EQUIPAMENTO_NUMERO_SERIE=EQUIPAMENTO_NUMERO_SERIE'
      'EQUIPAMENTO_NUMERO_NF=EQUIPAMENTO_NUMERO_NF'
      'EQUIPAMENTO_DT_COMPRA=EQUIPAMENTO_DT_COMPRA'
      'EQUIPAMENTO_DESCRICAO=EQUIPAMENTO_DESCRICAO'
      'CODCONTA=CODCONTA'
      'DT_ALTERACAO=DT_ALTERACAO'
      'NFE_IMPRIMIR_QTDEPECA=NFE_IMPRIMIR_QTDEPECA'
      'BLOQUEIO=BLOQUEIO'
      'MOTORISTA_DOCUMENTO_NUMERO=MOTORISTA_DOCUMENTO_NUMERO'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'PESSOA_REPRESENTANTE_CODIGO=PESSOA_REPRESENTANTE_CODIGO'
      'PESSOA_REPRESENTANTE_TIPO=PESSOA_REPRESENTANTE_TIPO'
      'PESSOA_REPRESENTANTE_SEQUENCIA=PESSOA_REPRESENTANTE_SEQUENCIA'
      'PESSOA_MOTORISTA_CODIGO=PESSOA_MOTORISTA_CODIGO'
      'PESSOA_MOTORISTA_TIPO=PESSOA_MOTORISTA_TIPO'
      'PESSOA_MOTORISTA_SEQUENCIA=PESSOA_MOTORISTA_SEQUENCIA'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'PESSOA_FUNCIONARIO_CODIGO=PESSOA_FUNCIONARIO_CODIGO'
      'PESSOA_FUNCIONARIO_TIPO=PESSOA_FUNCIONARIO_TIPO'
      'PESSOA_FUNCIONARIO_SEQUENCIA=PESSOA_FUNCIONARIO_SEQUENCIA'
      'PESSOA_TRANSPORTADORA_CODIGO=PESSOA_TRANSPORTADORA_CODIGO'
      'PESSOA_TRANSPORTADORA_TIPO=PESSOA_TRANSPORTADORA_TIPO'
      'PESSOA_TRANSPORTADORA_SEQUENCIA=PESSOA_TRANSPORTADORA_SEQUENCIA'
      'TELEFONE=TELEFONE'
      'NF_TRANSPORTADORA=NF_TRANSPORTADORA'
      'CREDITO=CREDITO'
      'SEQUENCIA=SEQUENCIA'
      'CODVENDA=CODVENDA'
      'NFSE_RPS=NFSE_RPS'
      'NFSE_CODIGOVERIFICACAO=NFSE_CODIGOVERIFICACAO'
      'NF_FRETEPORCONTA=NF_FRETEPORCONTA'
      'NF_RATEIO=NF_RATEIO'
      'TRANSFERENCIA_TIPO=TRANSFERENCIA_TIPO'
      'ESTOQUE_LOCAL_ORIGEM=ESTOQUE_LOCAL_ORIGEM'
      'ESTOQUE_LOCAL_DESTINO=ESTOQUE_LOCAL_DESTINO'
      'CODEMPRESA_DESTINO=CODEMPRESA_DESTINO'
      'CODEMPRESA_ORIGEM=CODEMPRESA_ORIGEM'
      'NF_II_DESPACE=NF_II_DESPACE'
      'AUTENTICACAO=AUTENTICACAO'
      'CODUSUARIO_FATURAMENTO=CODUSUARIO_FATURAMENTO'
      'PEDIDO_COMPRA=PEDIDO_COMPRA'
      'NF_FINALIDADE=NF_FINALIDADE'
      'NF_NREF=NF_NREF'
      'PESSOA_AGENCIA_CODIGO=PESSOA_AGENCIA_CODIGO'
      'PESSOA_AGENCIA_TIPO=PESSOA_AGENCIA_TIPO'
      'PESSOA_AGENCIA_SEQUENCIA=PESSOA_AGENCIA_SEQUENCIA'
      'COMISSAO_AGENCIA=COMISSAO_AGENCIA'
      'PERC_COMPARTILHADA=PERC_COMPARTILHADA'
      'PERC_COMP_FUNCIONARIO=PERC_COMP_FUNCIONARIO'
      'PERC_COMP_REPRESENTANTE=PERC_COMP_REPRESENTANTE'
      'COMISSAO_COMPARTILHADA=COMISSAO_COMPARTILHADA'
      'CONTATO=CONTATO'
      'SITUACAO=SITUACAO'
      'PEDIDO_REP=PEDIDO_REP'
      'DT_SITUACAO=DT_SITUACAO'
      'OBSERVACAO_SERVICO=OBSERVACAO_SERVICO'
      'EQUIPAMENTO_DEFEITO=EQUIPAMENTO_DEFEITO'
      'CODCOLETA=CODCOLETA'
      'DT_COLETA=DT_COLETA'
      'OBSERVACAO=OBSERVACAO'
      'CODCIDADE_ENTREGA=CODCIDADE_ENTREGA'
      'BAIRRO_ENTREGA=BAIRRO_ENTREGA'
      'ENDERECO_ENTREGA=ENDERECO_ENTREGA'
      'NUMERO_ENTREGA=NUMERO_ENTREGA'
      'COMPLEMENTO_ENTREGA=COMPLEMENTO_ENTREGA'
      'UF_ENTREGA=UF_ENTREGA'
      'CEP_ENTREGA=CEP_ENTREGA'
      'VFCPUFDEST=VFCPUFDEST'
      'VICMSUFDEST=VICMSUFDEST'
      'VICMSUFREMET=VICMSUFREMET'
      'CONSUMIDOR_FINAL=CONSUMIDOR_FINAL'
      'NOTAFISCAL=NOTAFISCAL'
      'NFSE_PROTOCOLO=NFSE_PROTOCOLO'
      'NFE_ICMS_SOB_FRETE=NFE_ICMS_SOB_FRETE'
      'DEDUZIR_ISS_RETIDO=DEDUZIR_ISS_RETIDO'
      'TIPO_EVENTO=TIPO_EVENTO'
      'CERIMONIAL=CERIMONIAL'
      'DATA_EVENTO=DATA_EVENTO'
      'NFE_ICMS_SOB_OUTROS=NFE_ICMS_SOB_OUTROS'
      'DT_COMPETENCIA=DT_COMPETENCIA'
      'SITUACAOFINANCEIRA=SITUACAOFINANCEIRA'
      'IS_NOTAFISCAL=IS_NOTAFISCAL'
      'NFE_CALCULA_DIFAL=NFE_CALCULA_DIFAL'
      'NF_CRT_EMIT=NF_CRT_EMIT'
      'NF_CRT_DEST=NF_CRT_DEST'
      'NF_IE_EMIT=NF_IE_EMIT'
      'NF_UTILIZAR_CODFABRICA_NA_IMPR=NF_UTILIZAR_CODFABRICA_NA_IMPR'
      'VTOTTRIB=VTOTTRIB'
      'TOTALALIQ_NACIONAL=TOTALALIQ_NACIONAL'
      'TOTALALIQ_IMPORTACAO=TOTALALIQ_IMPORTACAO'
      'TOTALALIQ_ESTADUAL=TOTALALIQ_ESTADUAL'
      'TOTALALIQ_MUNICIPAL=TOTALALIQ_MUNICIPAL'
      'NF_OBSERVACAO_PADRAO=NF_OBSERVACAO_PADRAO'
      'CodPessoa=CodPessoa'
      'CodTabela=CodTabela'
      'CODCLIENTE_SITE=CODCLIENTE_SITE'
      'COMISSAO_AGENCIA_CALCULA=COMISSAO_AGENCIA_CALCULA'
      'VENDA_ATENTICADA=VENDA_ATENTICADA'
      'VENDA_ATENTICAR=VENDA_ATENTICAR'
      'TITULO_VENDA=TITULO_VENDA'
      'NF_PCREDSN=NF_PCREDSN'
      'SERVICO_ISS_RETIDO=SERVICO_ISS_RETIDO'
      'SERVICO_NATUREZA_OPERACAO=SERVICO_NATUREZA_OPERACAO'
      'SERVICO_REGIME_ESPECIAL_TRIBUT=SERVICO_REGIME_ESPECIAL_TRIBUT'
      'SERVICO_INCENTIVADOR_CULTURAL=SERVICO_INCENTIVADOR_CULTURAL'
      'NF_OBSERVACAO_SERVICO=NF_OBSERVACAO_SERVICO'
      'NF_CNAE=NF_CNAE'
      'NF_VALOR_ISS_RETIDO=NF_VALOR_ISS_RETIDO'
      'NF_CODIGOTRIBUTACAOMUNICIPIO=NF_CODIGOTRIBUTACAOMUNICIPIO'
      'RATEAR_FRETE=RATEAR_FRETE'
      'RATEAR_ACRESCIMO=RATEAR_ACRESCIMO'
      'RATEAR_DESCONTO=RATEAR_DESCONTO'
      'NFSE_DHRECEBIMENTO=NFSE_DHRECEBIMENTO'
      'NFSE_SITUACAO=NFSE_SITUACAO'
      'SERVICO_CODNF_NCM=SERVICO_CODNF_NCM'
      'SERVICO_NOTA_PADRAO=SERVICO_NOTA_PADRAO'
      'DT_ORCAMENTO_FINALIZADO=DT_ORCAMENTO_FINALIZADO'
      'ISSQN_CMUNFG=ISSQN_CMUNFG'
      'SERVICO_CODPAIS=SERVICO_CODPAIS'
      'SERVICO_MUNICIPIO_INCIDENCIA=SERVICO_MUNICIPIO_INCIDENCIA'
      'RATEAR_DESPADUANEIRA=RATEAR_DESPADUANEIRA'
      'IS_VENDA=IS_VENDA'
      'IS_ORCAMENTO=IS_ORCAMENTO'
      'CODVENDA_PRE_VENDA=CODVENDA_PRE_VENDA'
      'NF_TRIBUTACAO=NF_TRIBUTACAO'
      'NF_TRANSP_QVOL=NF_TRANSP_QVOL'
      'CODPROJETO=CODPROJETO'
      'ENTREGA_NOME=ENTREGA_NOME'
      'ENTREGA_CEP=ENTREGA_CEP'
      'ENTREGA_CODPAIS=ENTREGA_CODPAIS'
      'ENTREGA_FONE=ENTREGA_FONE'
      'ENTREGA_EMAIL=ENTREGA_EMAIL'
      'ENTREGA_IE=ENTREGA_IE'
      'NF_VALOR_ISSQN=NF_VALOR_ISSQN'
      'NF_VALOR_ISSQN_BC=NF_VALOR_ISSQN_BC'
      'NF_CODNATUREZA_OPERACAO=NF_CODNATUREZA_OPERACAO'
      'COMISSAO_FUNCIONARIO_COBRAR=COMISSAO_FUNCIONARIO_COBRAR'
      'COMISSAO_AGENCIA_COBRAR=COMISSAO_AGENCIA_COBRAR'
      'COMISSAO_REPRESENTANTE_COBRAR=COMISSAO_REPRESENTANTE_COBRAR'
      'NF_VALOR_ISSQN_RETIDO=NF_VALOR_ISSQN_RETIDO')
    BCDToCurrency = False
    Left = 36
    Top = 104
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'Produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDA=CODVENDA'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'QUANT=QUANT'
      'VALOR=VALOR'
      'VALOR_CADASTRO=VALOR_CADASTRO'
      'CUSTO_LOJA=CUSTO_LOJA'
      'CUSTO_FABR=CUSTO_FABR'
      'ACRESCIMO_DESCONTO=ACRESCIMO_DESCONTO'
      'VEICULO_CHASSI=VEICULO_CHASSI'
      'VEICULO_MOTOR=VEICULO_MOTOR'
      'VEICULO_RENAVAN=VEICULO_RENAVAN'
      'VEICULO_ANO_MODELO=VEICULO_ANO_MODELO'
      'VEICULO_CILINDRADA=VEICULO_CILINDRADA'
      'VEICULO_HP=VEICULO_HP'
      'VEICULO_COMBUSTIVEL=VEICULO_COMBUSTIVEL'
      'VEICULO_KM=VEICULO_KM'
      'VEICULO_PASSAGEIROS=VEICULO_PASSAGEIROS'
      'VEICULO_PLACA=VEICULO_PLACA'
      'ATUALIZADO=ATUALIZADO'
      'CODPRODUTO_GRUPO=CODPRODUTO_GRUPO'
      'CODNF_CFOP=CODNF_CFOP'
      'PICMS=PICMS'
      'PICMSST=PICMSST'
      'PMVAST=PMVAST'
      'PREDBC=PREDBC'
      'PREDBCST=PREDBCST'
      'UNIDADE=UNIDADE'
      'CODNF_NCM=CODNF_NCM'
      'COR=COR'
      'CODCOR=CODCOR'
      'COMP=COMP'
      'LARG=LARG'
      'QTDADEPECA=QTDADEPECA'
      'CODPRODUTO_MARCA=CODPRODUTO_MARCA'
      'APROVEITAMENTO=APROVEITAMENTO'
      'PATH=PATH'
      'PASSADAS=PASSADAS'
      'REVERSO=REVERSO'
      'COM_LOGO=COM_LOGO'
      'CODLOCAL=CODLOCAL'
      'VEICULO_PESO_LIQUIDO=VEICULO_PESO_LIQUIDO'
      'VEICULO_PESO_BRUTO=VEICULO_PESO_BRUTO'
      'VEICULO_NUMERO_SERIE=VEICULO_NUMERO_SERIE'
      'VEICULO_ANO_FABRICACAO=VEICULO_ANO_FABRICACAO'
      'VEICULO_TIPO=VEICULO_TIPO'
      'VEICULO_ESPECIE=VEICULO_ESPECIE'
      'VEICULO_DIST=VEICULO_DIST'
      'VEICULO_CONDICAO_VEICULO=VEICULO_CONDICAO_VEICULO'
      'VEICULO_CMOD=VEICULO_CMOD'
      'VBC=VBC'
      'VBCST=VBCST'
      'ICMS_PAF=ICMS_PAF'
      'VICMS=VICMS'
      'VICMSST=VICMSST'
      'VBCSTRET=VBCSTRET'
      'VICMSSTRET=VICMSSTRET'
      'VBCSTDEST=VBCSTDEST'
      'VICMSSTDEST=VICMSSTDEST'
      'PCREDSN=PCREDSN'
      'VCREDICMSSN=VCREDICMSSN'
      'CODTIPOFILME=CODTIPOFILME'
      'IPI_VBC=IPI_VBC'
      'IPI_QUNID=IPI_QUNID'
      'IPI_VUNID=IPI_VUNID'
      'IPI_PIPI=IPI_PIPI'
      'IPI_VIPI=IPI_VIPI'
      'II_VBC=II_VBC'
      'II_VDESPADU=II_VDESPADU'
      'PIS_VBC=PIS_VBC'
      'PIS_PPIS=PIS_PPIS'
      'PIS_VPIS=PIS_VPIS'
      'PIS_QBCPROD=PIS_QBCPROD'
      'PIS_VALIQPROD=PIS_VALIQPROD'
      'PISST_VBC=PISST_VBC'
      'PISST_PPIS=PISST_PPIS'
      'PISST_VPIS=PISST_VPIS'
      'PISST_QBCPROD=PISST_QBCPROD'
      'PISST_VALIQPROD=PISST_VALIQPROD'
      'COFINS_VBC=COFINS_VBC'
      'COFINS_PCOFINS=COFINS_PCOFINS'
      'COFINS_VBCPROD=COFINS_VBCPROD'
      'COFINS_VALIQPROD=COFINS_VALIQPROD'
      'COFINS_VCOFINS=COFINS_VCOFINS'
      'COFINSST_VBC=COFINSST_VBC'
      'COFINSST_PCOFINS=COFINSST_PCOFINS'
      'COFINSST_QBCPROD=COFINSST_QBCPROD'
      'COFINSST_VALIQPROD=COFINSST_VALIQPROD'
      'COFINSST_VCOFINS=COFINSST_VCOFINS'
      'ISSQN_VBC=ISSQN_VBC'
      'ISSQN_VISSQN=ISSQN_VISSQN'
      'ISSQN_CMUNFG=ISSQN_CMUNFG'
      'ISSQN_LISTSERV=ISSQN_LISTSERV'
      'CODNF_CST=CODNF_CST'
      'II_VII=II_VII'
      'II_VIOF=II_VIOF'
      'ISSQN_VALIQ=ISSQN_VALIQ'
      'ISSQN_PALIQ=ISSQN_PALIQ'
      'II_PII=II_PII'
      'II_PIOF=II_PIOF'
      'NDI=NDI'
      'DDI=DDI'
      'XLOCDESEMB=XLOCDESEMB'
      'DDESEMB=DDESEMB'
      'CEXPORTADOR=CEXPORTADOR'
      'PESONOFRETE=PESONOFRETE'
      'DESPADUANEIRA=DESPADUANEIRA'
      'VALORADUANEIRA=VALORADUANEIRA'
      'UFDESEMB=UFDESEMB'
      'IPI_ST=IPI_ST'
      'PIS_ST=PIS_ST'
      'COFINS_ST=COFINS_ST'
      'ESTOQUE_LOCAL=ESTOQUE_LOCAL'
      'IPI_CST=IPI_CST'
      'PIS_CST=PIS_CST'
      'COFINS_CST=COFINS_CST'
      'ICMS_MODBC=ICMS_MODBC'
      'ICMS_MODBCST=ICMS_MODBCST'
      'CODPRODUTO_TIPO=CODPRODUTO_TIPO'
      'MATERIAL_REVISADO=MATERIAL_REVISADO'
      'VALOR_ORIGINAL=VALOR_ORIGINAL'
      'ESPESSURA=ESPESSURA'
      'MEDIDAS=MEDIDAS'
      'DT_ALTERACAO=DT_ALTERACAO'
      'PARENT=PARENT'
      'GrupoComposicao=GrupoComposicao'
      'DT_PREVISAO_ENTREGA=DT_PREVISAO_ENTREGA'
      'PRODUTO_TIPO=PRODUTO_TIPO'
      'LOCAL=LOCAL'
      'MENSALIDADE=MENSALIDADE'
      'SERIAL=SERIAL'
      'SERVICO_ALIQUOTA=SERVICO_ALIQUOTA'
      'TotalCusto=TotalCusto'
      'CODFABRICA=CODFABRICA'
      'PESSOA_FORNECEDOR_CODIGO=PESSOA_FORNECEDOR_CODIGO'
      'PESSOA_FORNECEDOR_TIPO=PESSOA_FORNECEDOR_TIPO'
      'PESSOA_FORNECEDOR_SEQUENCIA=PESSOA_FORNECEDOR_SEQUENCIA'
      'RATEIO=RATEIO'
      'II_PIS=II_PIS'
      'II_COFINS=II_COFINS'
      'CODNF_ENTRADA=CODNF_ENTRADA'
      'CODNF_ENTRADA_PRODUTO=CODNF_ENTRADA_PRODUTO'
      'UNIDADE_COMPRA=UNIDADE_COMPRA'
      'COM_ARTE=COM_ARTE'
      'COM_INSTALACAO=COM_INSTALACAO'
      'PERC_CUSTO_FIXO=PERC_CUSTO_FIXO'
      'PERC_CUSTO_VARIAVEL=PERC_CUSTO_VARIAVEL'
      'PERC_CUSTO_FINANCEIRO=PERC_CUSTO_FINANCEIRO'
      'PERC_LUCRO_DESEJADO=PERC_LUCRO_DESEJADO'
      'DT_PREVISAO_INICIO=DT_PREVISAO_INICIO'
      'CODVENDA_AGRUPADA=CODVENDA_AGRUPADA'
      'Sequencia=Sequencia'
      'CODTIPOIMPRESSAO=CODTIPOIMPRESSAO'
      'DESCRICAOTIPOIMPRESSAO=DESCRICAOTIPOIMPRESSAO'
      'Perimetro=Perimetro'
      'OBSERVACAO_PRODUTO=OBSERVACAO_PRODUTO'
      'VEICULO_COR_DENATRAN=VEICULO_COR_DENATRAN'
      'VALOR_AGENCIA=VALOR_AGENCIA'
      'FATURADO=FATURADO'
      'CODVENDA_FATURADO=CODVENDA_FATURADO'
      'CODVENDA_PRODUTO_ORIGINAL=CODVENDA_PRODUTO_ORIGINAL'
      'CODVENDA_ORIGINAL=CODVENDA_ORIGINAL'
      'TAMANHO=TAMANHO'
      'FRENTE_VERSO=FRENTE_VERSO'
      'DT_PREVISAO_ENTREGA_TERCEIRO=DT_PREVISAO_ENTREGA_TERCEIRO'
      'OBS_PRODUCAO=OBS_PRODUCAO'
      'IPI_CENQ=IPI_CENQ'
      'CODNF_CEST=CODNF_CEST'
      'VBCUFDEST=VBCUFDEST'
      'PICMSUFDEST=PICMSUFDEST'
      'PICMSINTER=PICMSINTER'
      'PICMSINTERPART=PICMSINTERPART'
      'VFCPUFDEST=VFCPUFDEST'
      'VICMSUFDEST=VICMSUFDEST'
      'VICMSUFREMET=VICMSUFREMET'
      'PFCUFDEST=PFCUFDEST'
      'XPED=XPED'
      'NITEMPED=NITEMPED'
      'ACABAMENTO=ACABAMENTO'
      'CODACABAMENTO=CODACABAMENTO'
      'METODO_CALCULO_PRECO=METODO_CALCULO_PRECO'
      'CODPRODUTO_LOTE=CODPRODUTO_LOTE'
      'CodTabela=CodTabela'
      'FORMULA=FORMULA'
      'PERC_MARGEM_CONTRIBUICAO=PERC_MARGEM_CONTRIBUICAO'
      'CustoPorPeca=CustoPorPeca'
      'TotalCustoFabrica=TotalCustoFabrica'
      'VFRETE=VFRETE'
      'MARKUP=MARKUP'
      'PESO_CALCULADO_COMPOSICAO=PESO_CALCULADO_COMPOSICAO'
      'PESO=PESO'
      'VALOR_CENTRO_TRABALHO=VALOR_CENTRO_TRABALHO'
      'PERC_CUSTO_COMISSAO=PERC_CUSTO_COMISSAO'
      'NAO_RECALCULA_IMPOSTOS=NAO_RECALCULA_IMPOSTOS'
      'DESCRICAO_NFE=DESCRICAO_NFE'
      'VDESC=VDESC'
      'ALIQ_NACIONAL=ALIQ_NACIONAL'
      'ALIQ_IMPORTACAO=ALIQ_IMPORTACAO'
      'ALIQ_ESTADUAL=ALIQ_ESTADUAL'
      'ALIQ_MUNICIPAL=ALIQ_MUNICIPAL'
      'VPRODUTO_PAUTA=VPRODUTO_PAUTA'
      'FATORX=FATORX'
      'CALCULA_FATORX=CALCULA_FATORX'
      'VBC_FRETE=VBC_FRETE'
      'VBC_IPI=VBC_IPI'
      'VBC_CONFINS=VBC_CONFINS'
      'VBC_II=VBC_II'
      'VBC_PIS=VBC_PIS'
      'VBCST_FRETE=VBCST_FRETE'
      'VBCST_IPI=VBCST_IPI'
      'VBCST_CONFINS=VBCST_CONFINS'
      'VBCST_II=VBCST_II'
      'VBCST_PIS=VBCST_PIS'
      'CALCULA_ICMS=CALCULA_ICMS'
      'CALCULA_IPI=CALCULA_IPI'
      'CALCULA_PIS=CALCULA_PIS'
      'CALCULA_COFINS=CALCULA_COFINS'
      'OBS_FATURAMENTO=OBS_FATURAMENTO'
      'OBS_NOTAFISCAL=OBS_NOTAFISCAL'
      'APROVA_PRODUTO=APROVA_PRODUTO'
      'PODE_FATURAR=PODE_FATURAR'
      'SITUACAO=SITUACAO'
      'CALCULA_ICMS_ST=CALCULA_ICMS_ST'
      'ISSQN_TIPOTRIBUTACAO=ISSQN_TIPOTRIBUTACAO'
      'CALCULA_ISSQN=CALCULA_ISSQN'
      'ISSQN_INCENTIVADOR_CULTURAL=ISSQN_INCENTIVADOR_CULTURAL'
      'ISSQN_VISSRET=ISSQN_VISSRET'
      'ACRESCIMO=ACRESCIMO'
      'CODIGOEAN=CODIGOEAN'
      'VBC_DESCONTO=VBC_DESCONTO'
      'VBCST_DESCONTO=VBCST_DESCONTO'
      'CODPRODUCAO=CODPRODUCAO'
      'SituacaoProducao=SituacaoProducao'
      'MARGEM=MARGEM'
      'LOCAL_MOVIMENTO_ESTOQUE=LOCAL_MOVIMENTO_ESTOQUE'
      'CUSTO_COMPOSICAO=CUSTO_COMPOSICAO'
      'TotalImpostos=TotalImpostos'
      'DESCONTO_PRODUTO=DESCONTO_PRODUTO'
      'VALOR_COMPOSICAO=VALOR_COMPOSICAO'
      'CUSTO_CENTRO_TRABALHO=CUSTO_CENTRO_TRABALHO'
      'CUSTO_EXTRA=CUSTO_EXTRA'
      'CUSTO_EXTRA_FRETE=CUSTO_EXTRA_FRETE'
      'CUSTO_EXTRA_IMPOSTOS=CUSTO_EXTRA_IMPOSTOS'
      'CUSTO_EXTRA_OUTROS=CUSTO_EXTRA_OUTROS'
      'CUSTO_EXTRA_COMISSAO=CUSTO_EXTRA_COMISSAO'
      'CUSTO_LOJA_COMPOSICAO_INICIAL=CUSTO_LOJA_COMPOSICAO_INICIAL'
      'CUSTO_EXTRA_COMPOSICAO=CUSTO_EXTRA_COMPOSICAO'
      'CUSTO_EXTRA_COMPOSICAO_PERC=CUSTO_EXTRA_COMPOSICAO_PERC'
      'CUSTO_LOJA_TRABALHO_INICIAL=CUSTO_LOJA_TRABALHO_INICIAL'
      'CUSTO_EXTRA_TRABALHO=CUSTO_EXTRA_TRABALHO'
      'CUSTO_EXTRA_TRABALHO_PERC=CUSTO_EXTRA_TRABALHO_PERC'
      'CUSTO_LOJA_VENDA_INICIAL=CUSTO_LOJA_VENDA_INICIAL'
      'CUSTO_EXTRA_VENDA=CUSTO_EXTRA_VENDA'
      'CUSTO_EXTRA_VENDA_PERC=CUSTO_EXTRA_VENDA_PERC'
      'CUSTO_INICIAL=CUSTO_INICIAL'
      'VALOR_INICIAL=VALOR_INICIAL'
      'CUSTO_EXTRA_COMPRA=CUSTO_EXTRA_COMPRA'
      'CUSTO_EXTRA_COMPRA_PERC=CUSTO_EXTRA_COMPRA_PERC'
      'CUSTO_DIGITADO=CUSTO_DIGITADO'
      'CUSTO_MEDIO=CUSTO_MEDIO'
      'MARGEM_CENTROTRABALHO=MARGEM_CENTROTRABALHO'
      'MANTER_MARGEM_INICIAL=MANTER_MARGEM_INICIAL'
      'MANTER_MARGEM_COMPOSICAO=MANTER_MARGEM_COMPOSICAO'
      'MANTER_MARGEM_CENTROTRABALHO=MANTER_MARGEM_CENTROTRABALHO'
      'PERC_INICIAL=PERC_INICIAL'
      'VALOR_TRABALHO=VALOR_TRABALHO'
      'CUSTO_INICIAL_TOTAL=CUSTO_INICIAL_TOTAL'
      'CUSTO_COMPOSICAO_TOTAL=CUSTO_COMPOSICAO_TOTAL'
      'CUSTO_TRABALHO_TOTAL=CUSTO_TRABALHO_TOTAL'
      'CUSTO_VENDA_TOTAL=CUSTO_VENDA_TOTAL'
      'PERC_VENDA=PERC_VENDA'
      'PERC_VENDA_INTERNA=PERC_VENDA_INTERNA'
      'VALOR_LUCRO=VALOR_LUCRO'
      'CUSTO_VENDA=CUSTO_VENDA'
      'CUSTO_TRABALHO=CUSTO_TRABALHO'
      'CUSTO_INICIAL_EXTRA=CUSTO_INICIAL_EXTRA'
      'CUSTO_COMPOSICAO_EXTRA=CUSTO_COMPOSICAO_EXTRA'
      'CUSTO_TRABALHO_EXTRA=CUSTO_TRABALHO_EXTRA'
      'CUSTO_VENDA_EXTRA=CUSTO_VENDA_EXTRA'
      'PERC_COMPOSICAO_INTERNA=PERC_COMPOSICAO_INTERNA'
      'PERC_TRABALHO_INTERNA=PERC_TRABALHO_INTERNA'
      'VALOR_VENDA=VALOR_VENDA'
      'CUSTO_BASE=CUSTO_BASE'
      'CUSTO_EXTRA_INICIAL_PERC=CUSTO_EXTRA_INICIAL_PERC'
      'CUSTO_EXTRA_TOTAL=CUSTO_EXTRA_TOTAL'
      'PERC_COMPOSICAO=PERC_COMPOSICAO'
      'PERC_TRABALHO=PERC_TRABALHO'
      'PERC_INICIAL_INTERNA=PERC_INICIAL_INTERNA'
      'MARGEM_INTERNA=MARGEM_INTERNA'
      'CUSTO_DIFERENCA_ENCONTRADA=CUSTO_DIFERENCA_ENCONTRADA'
      'MANTER_ATUAL_VALOR_COMPOSICAO=MANTER_ATUAL_VALOR_COMPOSICAO'
      'MANTER_ATUAL_VALOR_TRABALHO=MANTER_ATUAL_VALOR_TRABALHO'
      'NAO_ENVIA_PARA_PRODUCAO=NAO_ENVIA_PARA_PRODUCAO'
      'RETORNAR_ESTOQUE_AO_PRODUZIR=RETORNAR_ESTOQUE_AO_PRODUZIR'
      'NAO_RETORNA_ESTOQUE_AO_CANCELAR=NAO_RETORNA_ESTOQUE_AO_CANCELAR'
      'ISS_VBC=ISS_VBC'
      'ISS_VISS=ISS_VISS'
      'VALOR_COMPOSICAO_PECA=VALOR_COMPOSICAO_PECA'
      'VALOR_COMPOSICAO_UNIDADE_VENDA=VALOR_COMPOSICAO_UNIDADE_VENDA'
      'VALOR_TRABALHO_PECA=VALOR_TRABALHO_PECA'
      'VALOR_TRABALHO_UNIDADE_VENDA=VALOR_TRABALHO_UNIDADE_VENDA'
      'TOTAL=Total'
      'SUB_TOTAL=SUB_TOTAL'
      'AreaQuadrada=AreaQuadrada'
      'AreaCubica=AreaCubica'
      'USA_COMPRIMENTO=USA_COMPRIMENTO'
      'USA_LARGURA=USA_LARGURA'
      'USA_ESPESSURA=USA_ESPESSURA'
      'COMPRIMENTO_FIXO=COMPRIMENTO_FIXO'
      'LARGURA_FIXA=LARGURA_FIXA'
      'ESPESSURA_FIXA=ESPESSURA_FIXA'
      'DIFERENCA_TOTAL_VENDA_ORIGINAL=DIFERENCA_TOTAL_VENDA_ORIGINAL'
      'DIFERENCA_VALOR_VENDA_ORIGINAL=DIFERENCA_VALOR_VENDA_ORIGINAL'
      'DIFERENCA_QUANT_VENDA_ORIGINAL=DIFERENCA_QUANT_VENDA_ORIGINAL'
      'COMISSAO=COMISSAO'
      'ACRESCIMO_PRODUTO=ACRESCIMO_PRODUTO'
      'NAO_CALCULA_VALOR_ISS=NAO_CALCULA_VALOR_ISS')
    BCDToCurrency = False
    Left = 36
    Top = 132
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'Empresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CNPJCPF=CNPJCPF'
      'INSCIDENT=INSCIDENT'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'FANTASIA=FANTASIA'
      'CONTATO=CONTATO'
      'ENDERECO=ENDERECO'
      'CIDADE=CIDADE'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'UF=UF'
      'FONE1=FONE1'
      'FONE2=FONE2'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'TIPO=TIPO'
      'PAGINA=PAGINA'
      'ATIVO=ATIVO'
      'MODULO=MODULO'
      'CODCIDADE=CODCIDADE'
      'NUMERO=NUMERO'
      'IM=IM'
      'IEST=IEST'
      'CNAE=CNAE'
      'ISSQN=ISSQN'
      'CRT=CRT'
      'CODIGO_MUNICIPIO=CODIGO_MUNICIPIO'
      'SUFRAMA=SUFRAMA'
      'CPF_PROPRIETARIO=CPF_PROPRIETARIO'
      'CONTADOR_NOME=CONTADOR_NOME'
      'CONTADOR_CPF=CONTADOR_CPF'
      'CONTADOR_CRC=CONTADOR_CRC'
      'CONTADOR_CNPJ=CONTADOR_CNPJ'
      'CONTADOR_CEP=CONTADOR_CEP'
      'CONTADOR_ENDERECO=CONTADOR_ENDERECO'
      'CONTADOR_NUMERO=CONTADOR_NUMERO'
      'CONTADOR_COMPLEMENTO=CONTADOR_COMPLEMENTO'
      'CONTADOR_BAIRRO=CONTADOR_BAIRRO'
      'CONTADOR_FONE=CONTADOR_FONE'
      'CONTADOR_FAX=CONTADOR_FAX'
      'CONTADOR_EMAIL=CONTADOR_EMAIL'
      'CONTADOR_CODIGO_MUNICIPIO=CONTADOR_CODIGO_MUNICIPIO'
      'CONTADOR_UF=CONTADOR_UF'
      'COMPLEMENTO=COMPLEMENTO'
      'TIPO_OS=TIPO_OS'
      'PAIS=PAIS'
      'CODPAIS=CODPAIS'
      'APP_SENHA=APP_SENHA'
      'EMITE_NFE=EMITE_NFE'
      'CONTADOR_IM=CONTADOR_IM')
    BCDToCurrency = False
    Left = 36
    Top = 160
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'VendaFinanceiro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'VALOR=VALOR'
      'DOCUMENTO=DOCUMENTO'
      'VENCTO=VENCTO'
      'STATUS=STATUS'
      'TIPO=TIPO'
      'DATA=DATA'
      'DATAPAGTO=DATAPAGTO'
      'HISTORICO=HISTORICO'
      'EMISSAO=EMISSAO'
      'CODPLANOCONTAS=CODPLANOCONTAS'
      'CODCONDICAOPAGTO=CODCONDICAOPAGTO'
      'CONDICAOPAGTO=CONDICAOPAGTO'
      'CODCHEQUE=CODCHEQUE'
      'CHEQUE_CODBANCO=CHEQUE_CODBANCO'
      'CHEQUE_BANCO=CHEQUE_BANCO'
      'CHEQUE_NOME=CHEQUE_NOME'
      'CHEQUE_REPASSADO=CHEQUE_REPASSADO'
      'CHEQUE_CNPJCPF=CHEQUE_CNPJCPF'
      'CHEQUE_STATUS=CHEQUE_STATUS'
      'CHEQUE_COMPE=CHEQUE_COMPE'
      'CHEQUE_AGENCIA=CHEQUE_AGENCIA'
      'CHEQUE_C1=CHEQUE_C1'
      'CHEQUE_CONTA=CHEQUE_CONTA'
      'CHEQUE_NUMERO=CHEQUE_NUMERO'
      'CHEQUE_C2=CHEQUE_C2'
      'CHEQUE_C3=CHEQUE_C3'
      'CHEQUE_DT_CADASTRO=CHEQUE_DT_CADASTRO'
      'CHEQUE_DT_BOM_PARA=CHEQUE_DT_BOM_PARA'
      'CHEQUE_DT_REPASSADO=CHEQUE_DT_REPASSADO'
      'CHEQUE_TIPO=CHEQUE_TIPO'
      'CONTA=CONTA'
      'CODVENDA=CODVENDA'
      'ATUALIZADO=ATUALIZADO'
      'DT_ALTERACAO=DT_ALTERACAO'
      'CODCONTA=CODCONTA'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'PESSOA_FORNECEDOR_CODIGO=PESSOA_FORNECEDOR_CODIGO'
      'PESSOA_FORNECEDOR_TIPO=PESSOA_FORNECEDOR_TIPO'
      'PESSOA_FORNECEDOR_SEQUENCIA=PESSOA_FORNECEDOR_SEQUENCIA'
      'PARCELA=PARCELA'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'MsgFinanceiro=MsgFinanceiro'
      'TIPOPAGTO=TIPOPAGTO'
      'CONTATOS=CONTATOS'
      'PREVISAO=PREVISAO'
      'GERADO_DO_FINANCEIRO=GERADO_DO_FINANCEIRO'
      'PARCELA_ALTERADA=PARCELA_ALTERADA')
    BCDToCurrency = False
    Left = 36
    Top = 188
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'VendaComposicao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDA=CODVENDA'
      'CODVENDA_PRODUTO=CODVENDA_PRODUTO'
      'PRODUTO=PRODUTO'
      'CODPRODUTO=CODPRODUTO'
      'QUANT=QUANT'
      'COMP=COMP'
      'LARG=LARG'
      'QTDADEPECA=QTDADEPECA'
      'APROVEITAMENTO=APROVEITAMENTO'
      'PATH=PATH'
      'PASSADAS=PASSADAS'
      'REVERSO=REVERSO'
      'COM_LOGO=COM_LOGO'
      'DT_ALTERACAO=DT_ALTERACAO'
      'CODPRODUTO_GRUPO=CODPRODUTO_GRUPO'
      'ESPESSURA=ESPESSURA'
      'PARENT=PARENT'
      'PRODUCAO=PRODUCAO'
      'PRIORIDADE=PRIORIDADE'
      'DT_PREVISAO_ENTREGA=DT_PREVISAO_ENTREGA'
      'UNIDADE=UNIDADE'
      'MEDIDAS=MEDIDAS'
      'ESTOQUE_LOCAL=ESTOQUE_LOCAL'
      'CODLOCAL=CODLOCAL'
      'LOCAL=LOCAL'
      'VINCULO_COMP=VINCULO_COMP'
      'VINCULO_LARG=VINCULO_LARG'
      'VINCULO_QTDADEPECA=VINCULO_QTDADEPECA'
      'VINCULO_ESPESSURA=VINCULO_ESPESSURA'
      'DT_PREVISAO_ENTREGA_TERCEIRO=DT_PREVISAO_ENTREGA_TERCEIRO'
      'PESSOA_FORNECEDOR_CODIGO=PESSOA_FORNECEDOR_CODIGO'
      'STATUS=STATUS'
      'REAPROVEITADO=REAPROVEITADO'
      'QUANT_RETIRADO=QUANT_RETIRADO'
      'OBS_PRODUCAO=OBS_PRODUCAO'
      'PERC_ADICIONA=PERC_ADICIONA'
      'CODPRODUTO_LOTE=CODPRODUTO_LOTE'
      'FORMULA=FORMULA'
      'PESO=PESO'
      'CODPRODUTO_TIPO=CODPRODUTO_TIPO'
      'QUANT_UNITARIO=QUANT_UNITARIO'
      'VALOR=VALOR'
      'QUANT_DETALHE=QUANT_DETALHE'
      'Total=Total'
      'TotalCusto=TotalCusto'
      'CustoEfetivo=CustoEfetivo'
      'CustoUnit=CustoUnit'
      'CUSTO_VENDA=CUSTO_VENDA'
      'SERVICO_TERCEIROS=SERVICO_TERCEIROS'
      'VINCULO_QUANT=VINCULO_QUANT'
      'MARGEM=Margem'
      'CODVENDA_COMPOSICAO_BASE=CODVENDA_COMPOSICAO_BASE'
      'CODFORMULA_PERFIL=CODFORMULA_PERFIL'
      'NAO_RETORNA_ESTOQUE_AO_CANCELAR=NAO_RETORNA_ESTOQUE_AO_CANCELAR'
      'CUSTO_VENDA_ATUAL=CUSTO_VENDA_ATUAL'
      'VALOR_ATUAL=VALOR_ATUAL'
      'USA_COMPRIMENTO=USA_COMPRIMENTO'
      'USA_LARGURA=USA_LARGURA'
      'USA_ESPESSURA=USA_ESPESSURA'
      'FORMULA_COMP=FORMULA_COMP'
      'FORMULA_LARG=FORMULA_LARG'
      'FORMULA_ESPESSURA=FORMULA_ESPESSURA'
      'FORMULA_QTDADEPECA=FORMULA_QTDADEPECA'
      'FORMULA_VINCULO_COMP=FORMULA_VINCULO_COMP'
      'FORMULA_VINCULO_LARG=FORMULA_VINCULO_LARG'
      'FORMULA_VINCULO_ESPESSURA=FORMULA_VINCULO_ESPESSURA'
      'FORMULA_VINCULO_QTDADEPECA=FORMULA_VINCULO_QTDADEPECA')
    BCDToCurrency = False
    Left = 36
    Top = 216
  end
end
