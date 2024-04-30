inherited ImpriClientesSimplificado: TImpriClientesSimplificado
  Caption = 'Relat'#243'rio de Clientes Simplificado'
  ExplicitWidth = 899
  ExplicitHeight = 625
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep1: TQuickRep
    Left = 0
    Top = 0
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
    ExplicitLeft = 0
    ExplicitTop = 0
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
        Left = 271
        Top = 89
        Width = 185
        Size.Values = (
          63.500000000000000000
          717.020833333333300000
          235.479166666666700000
          489.479166666666700000)
        Caption = 'Relat'#243'rio de Clientes'
        FontSize = 12
        ExplicitLeft = 271
        ExplicitTop = 89
        ExplicitWidth = 185
      end
      inherited QR_Periodo: TQRLabel
        Left = 256
        Top = 60
        Enabled = False
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          158.750000000000000000
          624.416666666666700000)
        FontSize = 10
        ExplicitLeft = 256
        ExplicitTop = 60
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
      Top = 192
      Size.Values = (
        26.458333333333330000
        1899.708333333333000000)
      ExplicitTop = 192
      inherited QRLabel2: TQRLabel
        Size.Values = (
          39.687500000000000000
          1426.104166666667000000
          -5.291666666666667000
          465.666666666666700000)
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
    object QRPBand1: TQRPBand
      Left = 38
      Top = 158
      Width = 718
      Height = 20
      AlignToBottom = False
      Color = clSilver
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      AlwaysUseSpace = False
      NotOnFirstPage = False
      NotOnLastPage = False
      object QRLabel4: TQRLabel
        Left = 5
        Top = 5
        Width = 71
        Height = 15
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          13.229166666666670000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Razao Social:'
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
      object QRLabel6: TQRLabel
        Left = 559
        Top = 5
        Width = 42
        Height = 15
        Size.Values = (
          39.687500000000000000
          1479.020833333333000000
          13.229166666666670000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Cidade:'
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
      object QRLabel7: TQRLabel
        Left = 695
        Top = 5
        Width = 17
        Height = 15
        Size.Values = (
          39.687500000000000000
          1838.854166666667000000
          13.229166666666670000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'UF:'
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
      object QRLabel10: TQRLabel
        Left = 483
        Top = 5
        Width = 53
        Height = 15
        Size.Values = (
          39.687500000000000000
          1277.937500000000000000
          13.229166666666670000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Telefone:'
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
      object QRLabel3: TQRLabel
        Left = 261
        Top = 5
        Width = 49
        Height = 15
        Size.Values = (
          39.687500000000000000
          690.562500000000000000
          13.229166666666670000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'Fantasia:'
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
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 178
      Width = 718
      Height = 14
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.041666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = RelClientesSimplificado.Clientes
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText1: TQRDBText
        Left = 5
        Top = 2
        Width = 250
        Height = 13
        Size.Values = (
          34.395833333333340000
          13.229166666666670000
          5.291666666666667000
          661.458333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = RelClientesSimplificado.Clientes
        DataField = 'RAZAOSOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object QRDBText8: TQRDBText
        Left = 483
        Top = 2
        Width = 70
        Height = 13
        Size.Values = (
          34.395833333333340000
          1277.937500000000000000
          5.291666666666667000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = RelClientesSimplificado.Clientes
        DataField = 'FONE1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
        Left = 559
        Top = 2
        Width = 130
        Height = 13
        Size.Values = (
          34.395833333333340000
          1479.020833333333000000
          5.291666666666667000
          343.958333333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = RelClientesSimplificado.Clientes
        DataField = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object QRDBText7: TQRDBText
        Left = 695
        Top = 2
        Width = 14
        Height = 13
        Size.Values = (
          34.395833333333330000
          1838.854166666667000000
          5.291666666666667000
          37.041666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = RelClientesSimplificado.Clientes
        DataField = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
        Left = 261
        Top = 2
        Width = 216
        Height = 13
        Size.Values = (
          34.395833333333340000
          690.562500000000000000
          5.291666666666667000
          571.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = RelClientesSimplificado.Clientes
        DataField = 'FANTASIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
  object UCHistWRGeral1: TUCHistWRGeral
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    MonitorarOnCreate = True
    MonitorarOnDestroy = True
    Left = 602
    Top = 125
  end
end
