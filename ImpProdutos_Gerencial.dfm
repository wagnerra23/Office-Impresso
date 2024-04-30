inherited ImpriProdutos_Gerencial: TImpriProdutos_Gerencial
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Produtos'
  ClientHeight = 363
  ClientWidth = 406
  Position = poScreenCenter
  ShowHint = True
  ExplicitWidth = 412
  ExplicitHeight = 392
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient3: TGradient [0]
    Left = 0
    Top = 0
    Width = 406
    Height = 363
    Align = alClient
    ColorEnd = 16756834
    Style = gsRadialTR
    ExplicitLeft = -1
    ExplicitWidth = 948
    ExplicitHeight = 506
  end
  object Label1: TLabel [1]
    Left = 8
    Top = 7
    Width = 192
    Height = 24
    Caption = 'Relat'#243'rio de produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblFornecedorÎPessoasÎRAZAOSOCIAL: TLabel [2]
    Left = 111
    Top = 59
    Width = 289
    Height = 22
    AutoSize = False
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 30
    Width = 336
    Height = 26
    Caption = 
      'C'#243'digo do Nome do Fornecedor'#13#10'(Preencher esse campo para imprimi' +
      'r de um s'#243' Fornecedor)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblGrupoÎProduto_GrupoÎDESCRICAO: TLabel [4]
    Left = 111
    Top = 98
    Width = 289
    Height = 21
    AutoSize = False
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 237
    Width = 98
    Height = 13
    Caption = 'Tipo de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [6]
    Left = 7
    Top = 118
    Width = 124
    Height = 13
    Caption = 'Descri'#231#227'o do Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel [7]
    Left = 160
    Top = 237
    Width = 100
    Height = 13
    Caption = 'Local de Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel [8]
    Left = 8
    Top = 275
    Width = 393
    Height = 14
    Shape = bsTopLine
  end
  object Label8: TLabel [9]
    Left = 273
    Top = 237
    Width = 127
    Height = 13
    Caption = 'Cadastrado a partir de'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel2: TBevel [10]
    Left = 8
    Top = 317
    Width = 393
    Height = 14
    Shape = bsTopLine
  end
  object Label9: TLabel [11]
    Left = 8
    Top = 279
    Width = 72
    Height = 13
    Caption = 'Ordenar por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  inherited QuickRep1: TQuickRep
    Left = 445
    Top = 5
    BeforePrint = QuickRep1BeforePrint
    DataSet = Produtos
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      50.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    ExplicitLeft = 445
    ExplicitTop = 5
    inherited QRBand1: TQRBand
      Left = 19
      Width = 756
      Size.Values = (
        317.500000000000000000
        2000.250000000000000000)
      ExplicitLeft = 19
      ExplicitWidth = 756
      inherited QRSysData1: TQRSysData
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          256.645833333333300000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QR_Titulo: TQRLabel
        Width = 206
        Size.Values = (
          63.500000000000000000
          547.687500000000000000
          193.145833333333300000
          545.041666666666700000)
        Caption = 'Produtos por Categoria'
        FontSize = 12
        ExplicitWidth = 206
      end
      inherited QR_Periodo: TQRLabel
        Enabled = False
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          256.645833333333300000
          624.416666666666800000)
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
          60.854166666666680000
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
      Left = 19
      Top = 297
      Width = 756
      Height = 33
      BeforePrint = QRBand2BeforePrint
      Size.Values = (
        87.312500000000000000
        2000.250000000000000000)
      ExplicitLeft = 19
      ExplicitTop = 297
      ExplicitWidth = 756
      ExplicitHeight = 33
      inherited QRLabel2: TQRLabel
        Top = 17
        Size.Values = (
          39.687500000000000000
          1418.166666666667000000
          44.979166666666670000
          473.604166666666700000)
        FontSize = 8
        ExplicitTop = 17
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
      object LbLucroNegativoSummary: TQRLabel
        Left = 0
        Top = 0
        Width = 460
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          0.000000000000000000
          1217.083333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          '* Itens com valor de lucro negativo indicam que o valor de venda' +
          ' est'#225' abaixo do valor de custo.'
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
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 158
      Width = 756
      Height = 35
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand3BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        92.604166666666670000
        2000.250000000000000000)
      PreCaluculateBandHeight = True
      KeepOnOnePage = False
      BandType = rbDetail
      object QRLabel9: TQRLabel
        Left = 457
        Top = 19
        Width = 22
        Height = 15
        Size.Values = (
          39.687500000000000000
          1209.145833333333000000
          50.270833333333330000
          58.208333333333320000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ref.'
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
      object QRLabel4: TQRLabel
        Left = 56
        Top = 19
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          148.166666666666700000
          50.270833333333330000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descric'#227'o'
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
      object QRLabel11: TQRLabel
        Left = 3
        Top = 19
        Width = 40
        Height = 15
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          50.270833333333330000
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
      object QRDBText6: TQRDBText
        Left = 84
        Top = 1
        Width = 52
        Height = 17
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          2.645833333333333000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Grupo_Produto
        DataField = 'CODIGO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 3
        Top = 1
        Width = 75
        Height = 17
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          2.645833333333333000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Categoria : '
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
      object QRDBText9: TQRDBText
        Left = 144
        Top = 1
        Width = 77
        Height = 17
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          2.645833333333333000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Grupo_Produto
        DataField = 'DESCRICAO'
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 488
        Top = 19
        Width = 104
        Height = 15
        Size.Values = (
          39.687500000000000000
          1291.166666666667000000
          50.270833333333330000
          275.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Estoque -  Min/Max'
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
        Left = 668
        Top = 19
        Width = 37
        Height = 15
        Size.Values = (
          39.687500000000000000
          1767.416666666667000000
          50.270833333333330000
          97.895833333333320000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Varejo'
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
      object QRLbCustoVenda: TQRLabel
        Left = 372
        Top = 20
        Width = 72
        Height = 15
        Size.Values = (
          39.687500000000000000
          984.250000000000000000
          52.916666666666670000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Custo Venda'
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
      object QRLabel12: TQRLabel
        Left = 721
        Top = 19
        Width = 33
        Height = 15
        Enabled = False
        Size.Values = (
          39.687500000000000000
          1907.645833333333000000
          50.270833333333330000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Lucro'
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
      object QRLabel15: TQRLabel
        Left = 597
        Top = 20
        Width = 59
        Height = 15
        Size.Values = (
          39.687500000000000000
          1579.562500000000000000
          52.916666666666670000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'V. Compra'
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
      Left = 19
      Top = 193
      Width = 756
      Height = 10
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        26.458333333333330000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = Produtos
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText1: TQRDBText
        Left = 0
        Top = -2
        Width = 56
        Height = 13
        Size.Values = (
          34.395833333333330000
          0.000000000000000000
          -5.291666666666667000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 56
        Top = -2
        Width = 241
        Height = 13
        Size.Values = (
          34.395833333333330000
          148.166666666666700000
          -5.291666666666667000
          637.645833333333200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakAnywhere
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 483
        Top = -1
        Width = 45
        Height = 13
        Size.Values = (
          34.395833333333330000
          1277.937500000000000000
          -2.645833333333333000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'ESTOQUE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRTextCustoVenda: TQRDBText
        Left = 379
        Top = -1
        Width = 55
        Height = 13
        Size.Values = (
          34.395833333333330000
          1002.770833333333000000
          -2.645833333333333000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'CUSTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 673
        Top = -1
        Width = 32
        Height = 13
        Size.Values = (
          34.395833333333330000
          1780.645833333333000000
          -2.645833333333333000
          84.666666666666680000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 432
        Top = -1
        Width = 47
        Height = 13
        Size.Values = (
          34.395833333333330000
          1143.000000000000000000
          -2.645833333333333000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'Referencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText11: TQRDBText
        Left = 699
        Top = -1
        Width = 44
        Height = 13
        Enabled = False
        Size.Values = (
          34.395833333333330000
          1849.437500000000000000
          -2.645833333333333000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'CALC_VLUCRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText16: TQRDBText
        Left = 602
        Top = -1
        Width = 45
        Height = 13
        Size.Values = (
          34.395833333333330000
          1592.791666666667000000
          -2.645833333333333000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'VALOR_COMPRA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText17: TQRDBText
        Left = 529
        Top = -1
        Width = 61
        Height = 13
        Size.Values = (
          34.395833333333330000
          1399.645833333333000000
          -2.645833333333333000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'MinMax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object LbAsterisco: TQRLabel
        Left = 749
        Top = 0
        Width = 5
        Height = 15
        Size.Values = (
          39.687500000000000000
          1981.729166666667000000
          0.000000000000000000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '*'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRBand4: TQRBand
      Left = 19
      Top = 203
      Width = 756
      Height = 94
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        248.708333333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel13: TQRLabel
        Left = 595
        Top = 34
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          1574.270833333333000000
          89.958333333333320000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Custo:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 369
        Top = 35
        Width = 91
        Height = 17
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          92.604166666666680000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Estoque:'
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
        Left = 590
        Top = 50
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          132.291666666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Varejo:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 594
        Top = 65
        Width = 69
        Height = 17
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          171.979166666666700000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Lucro:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 31
        Top = 35
        Width = 78
        Height = 13
        Enabled = False
        Size.Values = (
          34.395833333333330000
          82.020833333333320000
          92.604166666666680000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Soma
        DataField = 'TOTAL_ESTOQUE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText13: TQRDBText
        Left = 248
        Top = 34
        Width = 66
        Height = 13
        Enabled = False
        Size.Values = (
          34.395833333333330000
          656.166666666666800000
          89.958333333333320000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Soma
        DataField = 'TOTAL_CUSTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText14: TQRDBText
        Left = 249
        Top = 50
        Width = 65
        Height = 13
        Enabled = False
        Size.Values = (
          34.395833333333330000
          658.812500000000000000
          132.291666666666700000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Soma
        DataField = 'TOTAL_VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object QRDBText15: TQRDBText
        Left = 247
        Top = 65
        Width = 67
        Height = 13
        Enabled = False
        Size.Values = (
          34.395833333333330000
          653.520833333333200000
          171.979166666666700000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Soma
        DataField = 'TOTAL_LUCRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 7
      end
      object LbTotalEstoque: TQRLabel
        Left = 461
        Top = 35
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          1219.729166666667000000
          92.604166666666680000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LbTotalEstoque'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object LbTotalValor: TQRLabel
        Left = 673
        Top = 50
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          1780.645833333333000000
          132.291666666666700000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LbTotalValor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object LbTotalLucro: TQRLabel
        Left = 673
        Top = 65
        Width = 74
        Height = 17
        Size.Values = (
          44.979166666666670000
          1780.645833333333000000
          171.979166666666700000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LbTotalLucro'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object LbTotalCusto: TQRLabel
        Left = 673
        Top = 34
        Width = 75
        Height = 17
        Size.Values = (
          44.979166666666670000
          1780.645833333333000000
          89.958333333333320000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'LbTotalCusto'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
  end
  object BitBtn1: TBitBtn [13]
    Left = 57
    Top = 321
    Width = 142
    Height = 28
    Caption = 'Confirmar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F0000000CA0E0000C30E00001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00778888888888
      88887777000077888888888888887777000074444444444444887777000074BF
      BFBFBFBFB4887777000074FBFBF44BFBF4887777000074BFBF4224BFB4887777
      000074FBF422224B74887777000074BF42222224B4887777000074F4222A2222
      44887777000074B222AFA22224887777000074FA2AFBFA2222487777000074BF
      AFBFBFA222488777000074FBFBFBFBFA22248877000074BFBFBFBF44A2224887
      000074FBFBFBFB4BFA222488000074BFBFBFBF4F47A22248000074FBFBFBFB44
      777A224800007444444444477777A227000077777777777777777A7700007777
      77777777777777770000}
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn [14]
    Left = 205
    Top = 321
    Width = 148
    Height = 28
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00824B4B004E1E1F00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00824B4B00824B4B00A64B4B00A94D4D004E1E1F00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00824B4B00824B4B00B64F5000C24F5000C54D4E00B24D4E004E1E1F00824B
      4B00824B4B00824B4B00824B4B00824B4B00824B4B00FF00FF00FF00FF00FF00
      FF00824B4B00D4585900CB555600C9545500C9525300B74F52004E1E1F00FE8B
      8C00FB9A9C00F8AAAB00F7B5B600F7B5B600824B4B00FF00FF00FF00FF00FF00
      FF00824B4B00D75C5D00D05A5B00CF595A00CF575800BD5356004E1E1F0023B5
      4A0013C1480016BD48000CBC4100F7B5B600824B4B00FF00FF00FF00FF00FF00
      FF00824B4B00DD636400D75F6000D55E5F00D55C5D00C2575A004E1E1F002AB4
      4D001CBF4C001EBC4C0013BC4500F7B5B600824B4B00FF00FF00FF00FF00FF00
      FF00824B4B00E3686900DD656600DA636400DE666700C6595B004E1E1F0026B1
      490016BC48001BBB490010BB4300F7B5B600824B4B00FF00FF00FF00FF00FF00
      FF00824B4B00EB6D6E00E2676800E67E7F00FAD3D400CC6E70004E1E1F00A5D8
      970050D16F0042C966002DC75800F7B5B600824B4B00FF00FF00FF00FF00FF00
      FF00824B4B00F2737400E96C6D00EB818200FCD1D300CF6E70004E1E1F00FFF2
      CC00FFFFD700FFFFD400E6FCC700F7B5B600824B4B00FF00FF00FF00FF00FF00
      FF00824B4B00F8787900F0757600EE727300F0737400D16566004E1E1F00FCEF
      C700FFFFD500FFFFD300FFFFD700F7B5B600824B4B00FF00FF00FF00FF00FF00
      FF00824B4B00FE7F8000F77A7B00F6797A00F7777900D76B6B004E1E1F00FCEF
      C700FFFFD500FFFFD300FFFFD500F7B5B600824B4B00FF00FF00FF00FF00FF00
      FF00824B4B00FF838400FC7F8000FB7E7F00FE7F8000DA6E6F004E1E1F00FCEF
      C700FFFFD500FFFFD300FFFFD500F7B5B600824B4B00FF00FF00FF00FF00FF00
      FF00824B4B00FF888900FF828300FF818200FF828300E07374004E1E1F00FCEF
      C700FFFFD500FFFFD300FFFFD500F7B5B600824B4B00FF00FF00FF00FF00FF00
      FF00824B4B00824B4B00E2757600FE818200FF868700E57677004E1E1F00FAEB
      C500FCFBD100FCFBCF00FCFBD100F7B5B600824B4B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00824B4B009C565700CB6C6D00CF6E6E004E1E1F00824B
      4B00824B4B00824B4B00824B4B00824B4B00824B4B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00824B4B00824B4B004E1E1F00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object EdtFornecedorÎPessoas: TcxButtonEdit [15]
    Left = 8
    Top = 59
    AutoSize = False
    ParentFont = False
    Properties.Buttons = <
      item
        Enabled = False
        Kind = bkText
      end
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    TabOrder = 3
    Height = 21
    Width = 97
  end
  object EdtGrupoÎProduto_Grupo: TcxButtonEdit [16]
    Left = 8
    Top = 97
    AutoSize = False
    ParentFont = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    TabOrder = 4
    Height = 21
    Width = 97
  end
  object RgCustos: TRadioGroup [17]
    Left = 8
    Top = 151
    Width = 95
    Height = 81
    Caption = 'Custos'
    Color = clBtnFace
    Ctl3D = True
    ItemIndex = 0
    Items.Strings = (
      'Refer'#234'ncia'
      'Custo'
      'Custo Venda'
      'Em Branco')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 12
  end
  object EditDescProduto: TEdit [18]
    Left = 7
    Top = 130
    Width = 393
    Height = 21
    TabOrder = 15
  end
  object RgEstoque: TRadioGroup [19]
    Left = 105
    Top = 151
    Width = 143
    Height = 81
    Caption = 'Estoque'
    Color = clBtnFace
    Ctl3D = True
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Abaixo do Estoque Min'
      'Acima do Estoque Max')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 18
  end
  object DtCadastro: TcxDateEdit [20]
    Left = 276
    Top = 251
    Properties.ShowTime = False
    TabOrder = 19
    Width = 126
  end
  object cbOrdernarPor: TComboBox [21]
    Left = 8
    Top = 292
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 1
    TabOrder = 20
    Text = 'DESCRI'#199#195'O'
    Items.Strings = (
      'CODIGO'
      'DESCRI'#199#195'O')
  end
  object CbProdutoTipo: TcxLookupComboBox [22]
    Left = 8
    Top = 251
    Properties.ListColumns = <>
    TabOrder = 13
    Width = 145
  end
  object CbLocalEstoque: TcxLookupComboBox [23]
    Left = 159
    Top = 251
    Properties.ListColumns = <>
    TabOrder = 17
    Width = 111
  end
  object CheckBox1: TcxCheckBox [24]
    Left = 330
    Top = 194
    Caption = 'Valor'
    ParentColor = False
    State = cbsChecked
    TabOrder = 5
    Transparent = True
  end
  object CheckBox2: TcxCheckBox [25]
    Left = 258
    Top = 194
    Caption = 'Atacado'
    ParentColor = False
    State = cbsChecked
    TabOrder = 6
    Transparent = True
  end
  object CkPrazo: TcxCheckBox [26]
    Left = 330
    Top = 209
    Caption = 'Prazo'
    ParentColor = False
    State = cbsChecked
    TabOrder = 7
    Transparent = True
  end
  object CheckBox4: TcxCheckBox [27]
    Left = 258
    Top = 209
    Caption = 'Estoque'
    ParentColor = False
    State = cbsChecked
    TabOrder = 8
    Transparent = True
  end
  object CkCustoVenda: TcxCheckBox [28]
    Left = 258
    Top = 164
    Hint = 'Custo de Venda'
    Caption = 'C. Venda'
    ParentColor = False
    State = cbsChecked
    TabOrder = 9
    Transparent = True
  end
  object CheckBox7: TcxCheckBox [29]
    Left = 330
    Top = 179
    Caption = 'Totais'
    ParentColor = False
    State = cbsChecked
    TabOrder = 10
    Transparent = True
  end
  object CkLucro: TcxCheckBox [30]
    Left = 258
    Top = 179
    Caption = 'Lucro'
    ParentColor = False
    State = cbsChecked
    TabOrder = 11
    Transparent = True
  end
  object CheckBox9: TcxCheckBox [31]
    Left = 330
    Top = 164
    Caption = 'Custo'
    ParentColor = False
    State = cbsChecked
    TabOrder = 16
    Transparent = True
  end
  object CkGrupoProduto: TcxCheckBox [32]
    Left = 8
    Top = 80
    Caption = 'C'#243'digo do Grupo de Produtos(Use ".%",para grupos e SubGurpos)'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 14
    Transparent = True
  end
  object Grupo_Produto: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from  PRODUTO_GRUPO'
      ''
      'ORDER BY DESCRICAO')
    Left = 288
    Top = 48
  end
  object Produtos: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = ProdutosBeforeOpen
    OnCalcFields = ProdutosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select P.CODIGO, P.CODFABRICA, P.DESCRICAO, P.VALOR, P.VALOR_COM' +
        'PRA, P.CUSTO, P.ESTOQUE_MIN, P.ESTOQUE_MAX,'
      '       EP.ESTOQUE, P.CALC_VLUCRO,'
      '       (P.CUSTO * EP.ESTOQUE) as CUSTOEST'
      'from PRODUTO P'
      
        'left join PRODUTO_ESTOQUE EP on (EP.CODPRODUTO = P.CODIGO) and (' +
        'EP.CODEMPRESA = :Emp)'
      'where (P.ATIVO = '#39'S'#39')')
    Left = 288
    Top = 76
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Emp'
        ParamType = ptInputOutput
      end>
    object ProdutosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PRODUTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ProdutosCODFABRICA: TIBStringField
      FieldName = 'CODFABRICA'
      Origin = '"PRODUTO"."CODFABRICA"'
      Size = 15
    end
    object ProdutosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTO"."DESCRICAO"'
      Size = 150
    end
    object ProdutosESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = '"ESTOQUE_PRODUTO"."ESTOQUE"'
    end
    object ProdutosVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"PRODUTO"."VALOR"'
      DisplayFormat = '##,###,##0.00'
    end
    object ProdutosReferencia: TStringField
      FieldKind = fkCalculated
      FieldName = 'Referencia'
      Calculated = True
    end
    object ProdutosCUSTOEST: TFloatField
      FieldName = 'CUSTOEST'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
    end
    object ProdutosMinMax: TStringField
      FieldKind = fkCalculated
      FieldName = 'MinMax'
      Size = 50
      Calculated = True
    end
    object ProdutosCUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = '"PRODUTO"."CUSTO"'
    end
    object ProdutosESTOQUE_MIN: TFloatField
      FieldName = 'ESTOQUE_MIN'
      Origin = '"PRODUTO"."ESTOQUE_MIN"'
    end
    object ProdutosESTOQUE_MAX: TFloatField
      FieldName = 'ESTOQUE_MAX'
      Origin = '"PRODUTO"."ESTOQUE_MAX"'
    end
    object ProdutosVALOR_COMPRA: TFloatField
      FieldName = 'VALOR_COMPRA'
      Origin = 'PRODUTO.VALOR_COMPRA'
    end
    object ProdutosCALC_VLUCRO: TFloatField
      FieldName = 'CALC_VLUCRO'
      Origin = 'PRODUTO.CALC_VLUCRO'
    end
  end
  object DS: TDataSource
    DataSet = Grupo_Produto
    Left = 316
    Top = 48
  end
  object Soma: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = SomaBeforeOpen
    OnCalcFields = SomaCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select sum(EP.ESTOQUE * P.CUSTO) as TOTAL_CUSTO, sum(EP.ESTOQUE)' +
        ' as TOTAL_ESTOQUE, sum(EP.ESTOQUE * P.VALOR) as TOTAL_VALOR, sum' +
        '(EP.ESTOQUE * P.CALC_VLUCRO) as TOTAL_LUCRO'
      'from PRODUTO P'
      
        'left join PRODUTO_ESTOQUE EP on (EP.CODPRODUTO = P.CODIGO) and (' +
        'EP.CODEMPRESA = :EMP)'
      'left join PRODUTO_TIPO PT on (P.CODPRODUTO_TIPO = PT.CODIGO)'
      'where (P.ATIVO = '#39'S'#39')')
    Left = 316
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Emp'
        ParamType = ptUnknown
      end>
    object SomaTOTAL_CUSTO: TFloatField
      FieldName = 'TOTAL_CUSTO'
      ProviderFlags = []
      DisplayFormat = '#,###,##0.00'
    end
    object SomaTOTAL_ESTOQUE: TFloatField
      FieldName = 'TOTAL_ESTOQUE'
      ProviderFlags = []
      DisplayFormat = '#,###,##0.####'
    end
    object SomaTOTAL_VALOR: TFloatField
      FieldName = 'TOTAL_VALOR'
      ProviderFlags = []
      DisplayFormat = '#,###,##0.00'
    end
    object SomaTOTAL_LUCRO: TFloatField
      FieldName = 'TOTAL_LUCRO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object UCHistWRGeral1: TUCHistWRGeral
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    Left = 260
    Top = 48
  end
  object frxGrupo_Produto_Gerencial: TfrxDBDataset
    UserName = 'Grupo_Produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'CODNF_CST=CODNF_CST'
      'CODNF_CFOP=CODNF_CFOP'
      'CODNF_CFOP_FORA=CODNF_CFOP_FORA'
      'PICMS=PICMS'
      'PICMSST=PICMSST'
      'PMVAST=PMVAST'
      'PREDBC=PREDBC'
      'PREDBCST=PREDBCST'
      'PIS_ST=PIS_ST'
      'COFINS_ST=COFINS_ST'
      'CODNF_CFOP_ENTRADA=CODNF_CFOP_ENTRADA'
      'CODNF_CFOP_ENTRADA_FORA=CODNF_CFOP_ENTRADA_FORA'
      'ICMS_PAF=ICMS_PAF'
      'IPI_ST=IPI_ST'
      'IPI_VBC=IPI_VBC'
      'IPI_QUNID=IPI_QUNID'
      'IPI_VUNID=IPI_VUNID'
      'IPI_PIPI=IPI_PIPI'
      'IPI_VIPI=IPI_VIPI'
      'II_VBC=II_VBC'
      'II_VDESPADU=II_VDESPADU'
      'II_PII=II_PII'
      'II_PIOF=II_PIOF'
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
      'ISSQN_PVALIQ=ISSQN_PVALIQ'
      'ISSQN_VISSQN=ISSQN_VISSQN'
      'ISSQN_CMUNFG=ISSQN_CMUNFG'
      'ISSQN_LISTSERV=ISSQN_LISTSERV'
      'II_VII=II_VII'
      'II_VIOF=II_VIOF'
      'ISSQN_VALIQ=ISSQN_VALIQ'
      'MANTEM_ONLINE=MANTEM_ONLINE'
      'ICMS_MODBC=ICMS_MODBC'
      'ICMS_MODBCST=ICMS_MODBCST'
      'PIS_COFINS_POR_QUANT=PIS_COFINS_POR_QUANT'
      'IPI_POR_QUANT=IPI_POR_QUANT'
      'CALCULA_PIS=CALCULA_PIS'
      'CALCULA_IPI=CALCULA_IPI'
      'CALCULA_COFINS=CALCULA_COFINS'
      'CALCULA_ICMS_ST=CALCULA_ICMS_ST'
      'DT_ALTERACAO=DT_ALTERACAO'
      'CALCULA_ICMS=CALCULA_ICMS'
      'ISSQN_TIPOTRIBUTACAO=ISSQN_TIPOTRIBUTACAO'
      'PCREDSN=PCREDSN'
      'SERVICO_NATUREZA_OPERACAO=SERVICO_NATUREZA_OPERACAO'
      'SERVICO_REGIME_ESPECIAL_TRIBUT=SERVICO_REGIME_ESPECIAL_TRIBUT'
      'SERVICO_INCENTIVADOR_CULTURAL=SERVICO_INCENTIVADOR_CULTURAL'
      'SERVICO_ISS_RETIDO=SERVICO_ISS_RETIDO'
      'SERVICO_ALIQUOTA=SERVICO_ALIQUOTA'
      'CALCULA_II=CALCULA_II'
      'REFERENCIA=REFERENCIA'
      'CODVENDA_TIPO=CODVENDA_TIPO'
      'IPI_CENQ=IPI_CENQ'
      'CODNF_CEST=CODNF_CEST'
      'ISSQN_RETIDO=ISSQN_RETIDO'
      'ISSQN_INCENTIVADOR_CULTURAL=ISSQN_INCENTIVADOR_CULTURAL'
      'ENTRADA_SAIDA=ENTRADA_SAIDA')
    DataSet = Grupo_Produto
    BCDToCurrency = False
    Left = 239
    Top = 119
  end
  object frxProdutos_Gerencial: TfrxDBDataset
    UserName = 'Produtos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODFABRICA=CODFABRICA'
      'DESCRICAO=DESCRICAO'
      'ESTOQUE=ESTOQUE'
      'VALOR=VALOR'
      'Referencia=Referencia'
      'CUSTO_LOJA=CUSTO_LOJA'
      'VALOR_PRAZO=VALOR_PRAZO'
      'VALORATACADO=VALORATACADO'
      'Lucro=Lucro'
      'CUSTOEST=CUSTOEST'
      'MINMAX=MINMAX'
      'CUSTO_FABR=CUSTO_FABR')
    DataSet = Produtos
    BCDToCurrency = False
    Left = 269
    Top = 119
  end
  object frxSoma_Gerencial: TfrxDBDataset
    UserName = 'Soma'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TOTAL_CUSTO=TOTAL_CUSTO'
      'TOTAL_ESTOQUE=TOTAL_ESTOQUE'
      'Total_Lucro=Total_Lucro'
      'TOTAL_VALOR=TOTAL_VALOR')
    DataSet = Soma
    BCDToCurrency = False
    Left = 300
    Top = 119
  end
  object WREventosCadastro1: TWREventosCadastro
    OnPreencheVariaveisImpressaoPersonalizada = WREventosCadastro1PreencheVariaveisImpressaoPersonalizada
    Versao_Configuracao = 0
    Empresa = 0
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    Left = 336
    Top = 120
  end
end
