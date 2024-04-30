inherited ImpriVendas_Periodo: TImpriVendas_Periodo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Vendas'
  ClientHeight = 452
  ClientWidth = 716
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 722
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient3: TGradient [0]
    Left = 0
    Top = 0
    Width = 716
    Height = 452
    Align = alClient
    ColorEnd = 16756834
    Style = gsRadialTR
    ExplicitLeft = -104
    ExplicitTop = 4
    ExplicitWidth = 713
    ExplicitHeight = 447
  end
  object LbDtInicio: TLabel [1]
    Left = 34
    Top = 160
    Width = 66
    Height = 13
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LbDtFim: TLabel [2]
    Left = 149
    Top = 160
    Width = 59
    Height = 13
    Caption = 'Data Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel [3]
    Left = 149
    Top = 8
    Width = 120
    Height = 13
    Caption = 'Selecione a Empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LbCodFuncionario: TLabel [4]
    Left = 8
    Top = 297
    Width = 128
    Height = 13
    Caption = 'C'#243'digo do Funcion'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblFuncionarioÎPessoasÎRAZAOSOCIAL: TLabel [5]
    Left = 82
    Top = 311
    Width = 267
    Height = 21
    AutoSize = False
    Color = 15971488
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object LblMarcaÎProduto_MarcaÎDESCRICAO: TLabel [6]
    Left = 82
    Top = 388
    Width = 267
    Height = 21
    AutoSize = False
    Color = 15971488
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object LbCodMarca: TLabel [7]
    Left = 7
    Top = 374
    Width = 97
    Height = 13
    Caption = 'C'#243'digo da Marca'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LbCodFornecedor: TLabel [8]
    Left = 367
    Top = 219
    Width = 126
    Height = 13
    Caption = 'C'#243'digo do Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblFornecedorÎPessoasÎRAZAOSOCIAL: TLabel [9]
    Left = 441
    Top = 234
    Width = 267
    Height = 21
    AutoSize = False
    Color = 15971488
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label1: TLabel [10]
    Left = 64
    Top = 617
    Width = 1
    Height = 5
    Caption = #39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -4
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LbProdutoTipo: TLabel [11]
    Left = 8
    Top = 199
    Width = 92
    Height = 13
    Caption = 'Tipo de Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LbCodCliente: TLabel [12]
    Left = 367
    Top = 262
    Width = 101
    Height = 13
    Caption = 'C'#243'digo do Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblClienteÎPessoasÎRAZAOSOCIAL: TLabel [13]
    Left = 441
    Top = 276
    Width = 267
    Height = 21
    AutoSize = False
    Color = 15971488
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object LbOrderBy: TLabel [14]
    Left = 261
    Top = 160
    Width = 69
    Height = 13
    Caption = 'Ordenar Por'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LbCodRepresentante: TLabel [15]
    Left = 8
    Top = 335
    Width = 145
    Height = 13
    Caption = 'C'#243'digo do Representante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblRepresentanteÎPessoasÎRAZAOSOCIAL: TLabel [16]
    Left = 82
    Top = 349
    Width = 267
    Height = 21
    AutoSize = False
    Color = 15971488
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object LbVendaTipo: TLabel [17]
    Left = 149
    Top = 70
    Width = 84
    Height = 13
    Caption = 'Tipo de Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblCidadeÎCidadesÎDESCRICAO: TLabel [18]
    Left = 441
    Top = 389
    Width = 267
    Height = 21
    AutoSize = False
    Color = 15971488
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object LbCodCidade: TLabel [19]
    Left = 367
    Top = 374
    Width = 101
    Height = 13
    Caption = 'C'#243'digo da Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LbCodClienteGrupo: TLabel [20]
    Left = 367
    Top = 297
    Width = 163
    Height = 13
    Caption = 'C'#243'digo do Grupo de Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblGrupoClienteÎPessoas_GrupoÎDESCRICAO: TLabel [21]
    Left = 441
    Top = 311
    Width = 267
    Height = 21
    AutoSize = False
    Color = 15971488
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object LbCodUsuario: TLabel [22]
    Left = 367
    Top = 335
    Width = 105
    Height = 13
    Caption = 'C'#243'digo do Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblUsuario: TLabel [23]
    Left = 441
    Top = 349
    Width = 267
    Height = 21
    AutoSize = False
    Color = 15971488
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object LbGrupo: TLabel [24]
    Tag = 1
    Left = 8
    Top = 262
    Width = 107
    Height = 13
    Caption = 'Grupo de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblGrupoProdutoÎProduto_GrupoÎDESCRICAO: TLabel [25]
    Left = 82
    Top = 276
    Width = 267
    Height = 21
    AutoSize = False
    Color = 15971488
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object LbCodProduto: TLabel [26]
    Left = 7
    Top = 219
    Width = 106
    Height = 13
    Caption = 'C'#243'digo do Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblProdutoÎProdutoÎDESCRICAO: TLabel [27]
    Left = 81
    Top = 234
    Width = 267
    Height = 21
    AutoSize = False
    Color = 15971488
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label3: TLabel [28]
    Left = 366
    Top = 184
    Width = 147
    Height = 13
    Caption = 'Modelo do Tipo de Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object BtnVisualizar: TBitBtn [29]
    Left = 179
    Top = 416
    Width = 169
    Height = 28
    Caption = 'Visualizar'
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
    TabOrder = 27
    OnClick = BtnVisualizarClick
  end
  object BtnFechar: TBitBtn [30]
    Left = 364
    Top = 416
    Width = 169
    Height = 28
    Caption = 'Fechar'
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
    TabOrder = 30
    OnClick = BtnFecharClick
  end
  object RadioTipoSelecao: TRadioGroup [31]
    Left = 2
    Top = 4
    Width = 139
    Height = 100
    Caption = 'Selecione'
    ItemIndex = 0
    Items.Strings = (
      'Faturados'
      'N'#227'o Faturados'
      'Cancelado/Exclu'#237'do'
      'Todos')
    TabOrder = 0
  end
  object ComboEmpresa: TComboBox [32]
    Left = 148
    Top = 21
    Width = 201
    Height = 21
    Style = csDropDownList
    Color = clWhite
    ItemIndex = 0
    TabOrder = 1
    Text = 'TODAS AS EMPRESAS'
    Items.Strings = (
      'TODAS AS EMPRESAS')
  end
  object DataInicial: TcxDateEdit [33]
    Left = 2
    Top = 173
    AutoSize = False
    Properties.ShowTime = False
    TabOrder = 12
    Height = 21
    Width = 114
  end
  object DataFinal: TcxDateEdit [34]
    Left = 118
    Top = 173
    AutoSize = False
    Properties.ShowTime = False
    TabOrder = 13
    Height = 21
    Width = 114
  end
  object EdtGrupoProdutoÎProduto_Grupo: TcxButtonEdit [35]
    Left = 5
    Top = 276
    AutoSize = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    TabOrder = 19
    Height = 21
    Width = 76
  end
  inherited QuickRep1: TQuickRep
    Left = 806
    BeforePrint = QuickRep1BeforePrint
    DataSet = Produtos_Agrupados
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
    ExplicitLeft = 806
    inherited QRBand1: TQRBand
      Size.Values = (
        317.500000000000000000
        1899.708333333333000000)
      inherited QRSysData1: TQRSysData
        Top = 86
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          227.541666666666700000
          179.916666666666700000)
        FontSize = 10
        ExplicitTop = 86
      end
      inherited QR_Titulo: TQRLabel
        Top = 64
        Width = 396
        Size.Values = (
          63.500000000000000000
          547.687500000000000000
          169.333333333333300000
          1047.750000000000000000)
        Caption = 'Vendas no per'#237'odo - PRODUTOS AGRUPADOS'
        FontSize = 12
        ExplicitTop = 64
        ExplicitWidth = 396
      end
      inherited QR_Periodo: TQRLabel
        Top = 86
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          227.541666666666700000
          624.416666666666800000)
        FontSize = 10
        ExplicitTop = 86
      end
      inherited QRLabel1: TQRLabel
        Top = 86
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          227.541666666666700000
          161.395833333333300000)
        FontSize = 10
        ExplicitTop = 86
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
        Width = 390
        Size.Values = (
          39.687500000000000000
          547.687500000000000000
          60.854166666666680000
          1031.875000000000000000)
        Caption = 
          'Rua Pe. Dionisio da Cunha Laudt, 414 Bairro Dehon Tubar'#227'o/SC CEP' +
          ' 887040-040'
        Font.Height = -11
        FontSize = 8
        ExplicitWidth = 390
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
      object QRLabel13: TQRLabel
        Left = 207
        Top = 104
        Width = 92
        Height = 17
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          275.166666666666700000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Empresa Ativa'
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
      Top = 213
      Height = 36
      BeforePrint = QRBand2BeforePrint
      Size.Values = (
        95.250000000000000000
        1899.708333333333000000)
      ExplicitTop = 213
      ExplicitHeight = 36
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
        Top = 17
        Size.Values = (
          39.687500000000000000
          896.937500000000000000
          44.979166666666670000
          103.187500000000000000)
        FontSize = 8
        ExplicitTop = 17
      end
      object LbLucroNegativoSummary: TQRLabel
        Left = 0
        Top = 0
        Width = 596
        Height = 15
        Size.Values = (
          39.687500000000000000
          0.000000000000000000
          0.000000000000000000
          1576.916666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 
          '* Itens com valor de lucro negativo indicam que o valor de venda' +
          ' foi abaixo do valor de custo. Verifique os descontos.'
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
    object QRBand_Produto: TQRBand
      Left = 38
      Top = 177
      Width = 718
      Height = 17
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand_ProdutoBeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.979166666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = True
      KeepOnOnePage = True
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 1
        Top = 1
        Width = 72
        Height = 15
        Size.Values = (
          39.687500000000000000
          2.645833333333333000
          2.645833333333333000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos_Agrupados
        DataField = 'CODPRODUTO'
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
      object QRDBText2: TQRDBText
        Left = 76
        Top = 1
        Width = 277
        Height = 15
        Size.Values = (
          39.687500000000000000
          201.083333333333300000
          2.645833333333333000
          732.895833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos_Agrupados
        DataField = 'PRODUTO'
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
      object QRDBText3: TQRDBText
        Left = 355
        Top = 1
        Width = 39
        Height = 15
        Size.Values = (
          39.687500000000000000
          939.270833333333200000
          2.645833333333333000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos_Agrupados
        DataField = 'SOMA_QUANT'
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
      object QRDBText5: TQRDBText
        Left = 498
        Top = 1
        Width = 75
        Height = 15
        Size.Values = (
          39.687500000000000000
          1317.625000000000000000
          2.645833333333333000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos_Agrupados
        DataField = 'SOMA_VALOR'
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
      object DBCusto: TQRDBText
        Left = 385
        Top = 1
        Width = 106
        Height = 15
        Size.Values = (
          39.687500000000000000
          1018.645833333333000000
          2.645833333333333000
          280.458333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos_Agrupados
        DataField = 'SOMA_CUSTO_LOJA'
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
      object QRDBText4: TQRDBText
        Left = 652
        Top = 1
        Width = 58
        Height = 15
        Size.Values = (
          39.687500000000000000
          1725.083333333333000000
          2.645833333333333000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos_Agrupados
        DataField = 'Total_Lucro'
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
      object DBDesc: TQRDBText
        Left = 579
        Top = 2
        Width = 50
        Height = 15
        Size.Values = (
          39.687500000000000000
          1531.937500000000000000
          5.291666666666667000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos_Agrupados
        DataField = 'DESCONTO'
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
      object LbAsterisco: TQRLabel
        Left = 711
        Top = 1
        Width = 6
        Height = 17
        Size.Values = (
          44.979166666666670000
          1881.187500000000000000
          2.645833333333333000
          15.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '*'
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
      object DBUnid: TQRDBText
        Left = 446
        Top = 1
        Width = 45
        Height = 15
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          2.645833333333333000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos_Agrupados
        DataField = 'UNIDADE'
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
      object DBCubagem: TQRDBText
        Left = 601
        Top = 2
        Width = 77
        Height = 15
        Size.Values = (
          39.687500000000000000
          1590.145833333333000000
          5.291666666666667000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos_Agrupados
        DataField = 'Cubagem'
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
    end
    object QRBand_produto_Sumario: TQRBand
      Left = 38
      Top = 194
      Width = 718
      Height = 19
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel6: TQRLabel
        Left = 7
        Top = 2
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          5.291666666666667000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Totais:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel_TQuant: TQRLabel
        Left = 354
        Top = 1
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          936.625000000000000000
          2.645833333333333000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TQuant'
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
      object QRLabel_TCusto: TQRLabel
        Left = 450
        Top = 0
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1190.625000000000000000
          0.000000000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TCusto'
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
      object QRLabel_TLucro: TQRLabel
        Left = 675
        Top = 1
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1785.937500000000000000
          2.645833333333333000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TLucro'
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
      object QRLabel_TValor: TQRLabel
        Left = 536
        Top = 1
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          2.645833333333333000
          97.895833333333320000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TValor'
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
      object QRLabel_TDesc: TQRLabel
        Left = 594
        Top = 1
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          2.645833333333333000
          92.604166666666680000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TDesc'
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
      object QRLabel_TCub: TQRLabel
        Left = 648
        Top = 1
        Width = 30
        Height = 17
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TCub'
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
    object QRBand_Produto_Titulo: TQRBand
      Left = 38
      Top = 158
      Width = 718
      Height = 19
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel9: TQRLabel
        Left = 518
        Top = 1
        Width = 55
        Height = 17
        Size.Values = (
          44.979166666666670000
          1370.541666666667000000
          2.645833333333333000
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
        Left = 351
        Top = 1
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          928.687500000000000000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Quant.'
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
      object QRLabel3: TQRLabel
        Left = 642
        Top = 1
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1698.625000000000000000
          2.645833333333333000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Lucro Total'
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
        Left = 76
        Top = 1
        Width = 63
        Height = 17
        Size.Values = (
          44.979166666666670000
          201.083333333333300000
          2.645833333333333000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descric'#227'o'
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
        Left = 5
        Top = 1
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          2.645833333333333000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'd. Prod'
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
      object LbCusto: TQRLabel
        Left = 403
        Top = 1
        Width = 88
        Height = 17
        Size.Values = (
          44.979166666666670000
          1066.270833333333000000
          2.645833333333333000
          232.833333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
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
      object LbDesc: TQRLabel
        Left = 590
        Top = 1
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          2.645833333333333000
          92.604166666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Desc.'
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
      object LbUnidade: TQRLabel
        Left = 457
        Top = 1
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          1209.145833333333000000
          2.645833333333333000
          89.958333333333320000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Unid.'
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
      object LbCubagem: TQRLabel
        Left = 586
        Top = 1
        Width = 92
        Height = 17
        Size.Values = (
          44.979166666666670000
          1550.458333333333000000
          2.645833333333333000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cubagem (M3)'
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
  object QuickRep2: TQuickRep [37]
    Left = 772
    Top = 44
    Width = 794
    Height = 1123
    DataSet = Produtos
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
    Options = [FirstPageHeader]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
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
    ReportTitle = 'Relat'#243'rio de Mestre'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand6: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 120
      AlignToBottom = False
      BeforePrint = QRBand6BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        317.500000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRSysData5: TQRSysData
        Left = 590
        Top = 86
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          227.541666666666700000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 207
        Top = 60
        Width = 280
        Height = 24
        Size.Values = (
          63.500000000000000000
          547.687500000000000000
          158.750000000000000000
          740.833333333333200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vendas no per'#237'odo - PRODUTOS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel12: TQRLabel
        Left = 207
        Top = 86
        Width = 236
        Height = 17
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          227.541666666666700000
          624.416666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Per'#237'odo Data de In'#237'cio e Data do Fim'
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
        Left = 527
        Top = 86
        Width = 61
        Height = 17
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          227.541666666666700000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Emiss'#227'o: '
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
      object QRLabel23: TQRLabel
        Left = 207
        Top = 0
        Width = 430
        Height = 20
        Size.Values = (
          52.916666666666670000
          547.687500000000000000
          0.000000000000000000
          1137.708333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'WR CONSULTORIA DESENVOLVIMENTO DE SISTEMAS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Century Schoolbook'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel27: TQRLabel
        Left = 207
        Top = 23
        Width = 390
        Height = 15
        Size.Values = (
          39.687500000000000000
          547.687500000000000000
          60.854166666666680000
          1031.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'Rua Pe. Dionisio da Cunha Laudt, 414 Bairro Dehon Tubar'#227'o/SC CEP' +
          ' 887040-040'
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
      object QRLabel28: TQRLabel
        Left = 207
        Top = 39
        Width = 273
        Height = 15
        Size.Values = (
          39.687500000000000000
          547.687500000000000000
          103.187500000000000000
          722.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ: 08.061.860/0001-47 INSC: - Fone: (48) 3632-3784'
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
      object QRImage3: TQRImage
        Left = 1
        Top = 0
        Width = 200
        Height = 119
        Size.Values = (
          314.854166666666700000
          2.645833333333333000
          0.000000000000000000
          529.166666666666700000)
        XLColumn = 0
        Stretch = True
      end
      object QRLabel47: TQRLabel
        Left = 207
        Top = 104
        Width = 92
        Height = 17
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          275.166666666666700000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Empresa Ativa'
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
    object QRBand7: TQRBand
      Left = 38
      Top = 208
      Width = 718
      Height = 12
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = True
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel29: TQRLabel
        AlignWithMargins = True
        Left = 387
        Top = -2
        Width = 328
        Height = 15
        Size.Values = (
          39.687500000000000000
          1023.937500000000000000
          -5.291666666666667000
          867.833333333333200000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Sistema Office Associa'#231#227'o - WR2 Consultoria Fone: (48)8409-2822'
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
      object QRSysData6: TQRSysData
        Left = 339
        Top = -2
        Width = 39
        Height = 15
        Size.Values = (
          39.687500000000000000
          896.937500000000000000
          -5.291666666666667000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
    end
    object QRBand10: TQRBand
      Left = 38
      Top = 177
      Width = 718
      Height = 12
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = True
      KeepOnOnePage = True
      BandType = rbDetail
      object QRDBText6: TQRDBText
        Left = 67
        Top = 1
        Width = 59
        Height = 11
        Size.Values = (
          29.104166666666670000
          177.270833333333300000
          2.645833333333333000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'CODPRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText7: TQRDBText
        Left = 126
        Top = 1
        Width = 276
        Height = 11
        Size.Values = (
          29.104166666666670000
          333.375000000000000000
          2.645833333333333000
          730.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText9: TQRDBText
        Left = 408
        Top = 1
        Width = 39
        Height = 11
        Size.Values = (
          29.104166666666670000
          1079.500000000000000000
          2.645833333333333000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'QUANT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText10: TQRDBText
        Left = 509
        Top = 1
        Width = 40
        Height = 11
        Size.Values = (
          29.104166666666670000
          1346.729166666667000000
          2.645833333333333000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'Total_Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText11: TQRDBText
        Left = 674
        Top = 1
        Width = 41
        Height = 11
        Size.Values = (
          29.104166666666670000
          1783.291666666667000000
          2.645833333333333000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'Total_Lucro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText15: TQRDBText
        Left = 6
        Top = 1
        Width = 56
        Height = 11
        Size.Values = (
          29.104166666666670000
          15.875000000000000000
          2.645833333333333000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'DT_FATURAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText16: TQRDBText
        Left = 412
        Top = 1
        Width = 89
        Height = 11
        Size.Values = (
          29.104166666666670000
          1090.083333333333000000
          2.645833333333333000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'CUSTO_VENDA_TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText13: TQRDBText
        Left = 572
        Top = 1
        Width = 42
        Height = 11
        Size.Values = (
          29.104166666666670000
          1513.416666666667000000
          2.645833333333333000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'Total_Juros_Desc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText14: TQRDBText
        Left = 642
        Top = 1
        Width = 18
        Height = 11
        Size.Values = (
          29.104166666666670000
          1698.625000000000000000
          2.645833333333333000
          47.625000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = Produtos
        DataField = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
    end
    object QRBand11: TQRBand
      Left = 38
      Top = 189
      Width = 718
      Height = 19
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel30: TQRLabel
        Left = 7
        Top = 2
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          5.291666666666667000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Totais:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 404
        Top = 1
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1068.916666666667000000
          2.645833333333333000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TQuant'
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
      object QRLabel33: TQRLabel
        Left = 456
        Top = 0
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          0.000000000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TCusto'
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
      object QRLabel34: TQRLabel
        Left = 509
        Top = 0
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1346.729166666667000000
          0.000000000000000000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TLucro'
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
      object QRLabel36: TQRLabel
        Left = 675
        Top = 1
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1785.937500000000000000
          2.645833333333333000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TLucro'
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
      object QRLabel32: TQRLabel
        Left = 563
        Top = 1
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1489.604166666667000000
          2.645833333333333000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TAcres'
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
      object QRLabel46: TQRLabel
        Left = 627
        Top = 1
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          1658.937500000000000000
          2.645833333333333000
          74.083333333333320000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Total'
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
    object QRBand12: TQRBand
      Left = 38
      Top = 158
      Width = 718
      Height = 19
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel37: TQRLabel
        Left = 507
        Top = 2
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          1341.437500000000000000
          5.291666666666667000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Venda'
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
      object QRLabel38: TQRLabel
        Left = 404
        Top = 1
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          1068.916666666667000000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Quant.'
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
      object QRLabel39: TQRLabel
        Left = 678
        Top = 0
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          1793.875000000000000000
          0.000000000000000000
          97.895833333333320000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Lucro'
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
      object QRLabel40: TQRLabel
        Left = 126
        Top = 1
        Width = 63
        Height = 17
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          2.645833333333333000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descric'#227'o'
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
      object QRLabel41: TQRLabel
        Left = 65
        Top = 1
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          171.979166666666700000
          2.645833333333333000
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
      object QRLabel42: TQRLabel
        Left = 563
        Top = 1
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          1489.604166666667000000
          2.645833333333333000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ac/Desc'
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
      object QRLabel44: TQRLabel
        Left = 6
        Top = 1
        Width = 30
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          2.645833333333333000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data'
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
      object QRLabel45: TQRLabel
        Left = 462
        Top = 0
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          1222.375000000000000000
          0.000000000000000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Custo'
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
      object QRLabel43: TQRLabel
        Left = 627
        Top = 0
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          1658.937500000000000000
          0.000000000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Total'
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
  object EdtFuncionarioÎPessoas: TcxButtonEdit [38]
    Left = 5
    Top = 311
    AutoSize = False
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
    TabOrder = 21
    Height = 21
    Width = 76
  end
  object EdtMarcaÎProduto_Marca: TcxButtonEdit [39]
    Left = 5
    Top = 388
    AutoSize = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    TabOrder = 25
    Height = 21
    Width = 76
  end
  object EdtFornecedorÎPessoas: TcxButtonEdit [40]
    Left = 364
    Top = 234
    AutoSize = False
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
    TabOrder = 17
    Height = 21
    Width = 76
  end
  object RadioFiltroData: TRadioGroup [41]
    Left = 2
    Top = 104
    Width = 139
    Height = 54
    Caption = 'Filtrar pela data: '
    ItemIndex = 0
    Items.Strings = (
      'Emiss'#227'o'
      'Faturamento'
      'Compet'#234'ncia')
    TabOrder = 4
  end
  object ComboTipoProduto: TComboBox [42]
    Left = 105
    Top = 197
    Width = 244
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 15
    Text = 'TODOS'
    Items.Strings = (
      'TODOS')
  end
  object EdtClienteÎPessoas: TcxButtonEdit [43]
    Left = 364
    Top = 276
    AutoSize = False
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
    TabOrder = 20
    Height = 21
    Width = 76
  end
  object ComboOrderBy: TComboBox [44]
    Left = 257
    Top = 174
    Width = 92
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 14
    Text = 'Produto'
    Items.Strings = (
      'Produto'
      'C'#243'digo'
      'Qt. Vendida'
      'Valor Custo'
      'Valor Venda')
  end
  object EdtRepresentanteÎPessoas: TcxButtonEdit [45]
    Left = 5
    Top = 349
    AutoSize = False
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
    TabOrder = 23
    Height = 21
    Width = 76
  end
  object ReportProdutoPorVenda: TQuickRep [46]
    Left = 728
    Top = 90
    Width = 794
    Height = 1123
    DataSet = ProdutoPorVenda
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
    Options = [FirstPageHeader]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
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
    ReportTitle = 'Relat'#243'rio de Mestre'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand3: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 120
      AlignToBottom = False
      BeforePrint = QRBand6BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        317.500000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRSysData3: TQRSysData
        Left = 590
        Top = 86
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          227.541666666666700000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 207
        Top = 60
        Width = 388
        Height = 24
        Size.Values = (
          63.500000000000000000
          547.687500000000000000
          158.750000000000000000
          1026.583333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vendas no per'#237'odo - PRODUTOS POR VENDA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel15: TQRLabel
        Left = 207
        Top = 86
        Width = 236
        Height = 17
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          227.541666666666700000
          624.416666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Per'#237'odo Data de In'#237'cio e Data do Fim'
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
        Left = 527
        Top = 86
        Width = 61
        Height = 17
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          227.541666666666700000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Emiss'#227'o: '
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
        Left = 207
        Top = 0
        Width = 430
        Height = 20
        Size.Values = (
          52.916666666666670000
          547.687500000000000000
          0.000000000000000000
          1137.708333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'WR CONSULTORIA DESENVOLVIMENTO DE SISTEMAS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Century Schoolbook'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel18: TQRLabel
        Left = 207
        Top = 23
        Width = 402
        Height = 15
        Size.Values = (
          39.687500000000000000
          547.687500000000000000
          60.854166666666680000
          1063.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'Rua Pe. Dionisio da Cunha Laudt, 414 Bairro Dehon Tubabar'#227'o/SC C' +
          'EP 887040-040'
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
      object QRLabel19: TQRLabel
        Left = 207
        Top = 39
        Width = 273
        Height = 15
        Size.Values = (
          39.687500000000000000
          547.687500000000000000
          103.187500000000000000
          722.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ: 08.061.860/0001-47 INSC: - Fone: (48) 3632-3784'
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
      object QRImage2: TQRImage
        Left = 1
        Top = -1
        Width = 200
        Height = 119
        Size.Values = (
          314.854166666666700000
          2.645833333333333000
          -2.645833333333333000
          529.166666666666700000)
        XLColumn = 0
        Stretch = True
      end
      object QRLabel20: TQRLabel
        Left = 207
        Top = 104
        Width = 92
        Height = 17
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          275.166666666666700000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Empresa Ativa'
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
    object QRBand4: TQRBand
      Left = 38
      Top = 208
      Width = 718
      Height = 12
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = True
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel22: TQRLabel
        AlignWithMargins = True
        Left = 387
        Top = -2
        Width = 328
        Height = 15
        Size.Values = (
          39.687500000000000000
          1023.937500000000000000
          -5.291666666666667000
          867.833333333333200000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Sistema Office Associa'#231#227'o - WR2 Consultoria Fone: (48)8409-2822'
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
      object QRSysData4: TQRSysData
        Left = 339
        Top = -2
        Width = 39
        Height = 15
        Size.Values = (
          39.687500000000000000
          896.937500000000000000
          -5.291666666666667000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 177
      Width = 718
      Height = 12
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = True
      KeepOnOnePage = True
      BandType = rbDetail
      object QRDBText17: TQRDBText
        Left = 3
        Top = 1
        Width = 59
        Height = 11
        Size.Values = (
          29.104166666666670000
          7.937500000000000000
          2.645833333333333000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ProdutoPorVenda
        DataField = 'CODPRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText18: TQRDBText
        Left = 71
        Top = 1
        Width = 276
        Height = 11
        Size.Values = (
          29.104166666666670000
          187.854166666666700000
          2.645833333333333000
          730.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ProdutoPorVenda
        DataField = 'PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText19: TQRDBText
        Left = 373
        Top = 1
        Width = 39
        Height = 11
        Size.Values = (
          29.104166666666670000
          986.895833333333400000
          2.645833333333333000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = ProdutoPorVenda
        DataField = 'QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText20: TQRDBText
        Left = 452
        Top = 1
        Width = 27
        Height = 11
        Size.Values = (
          29.104166666666670000
          1195.916666666667000000
          2.645833333333333000
          71.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ProdutoPorVenda
        DataField = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText21: TQRDBText
        Left = 511
        Top = 1
        Width = 77
        Height = 11
        Size.Values = (
          29.104166666666670000
          1352.020833333333000000
          2.645833333333333000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ProdutoPorVenda
        DataField = 'DT_FATURAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
      object QRDBText23: TQRDBText
        Left = 625
        Top = 1
        Width = 46
        Height = 11
        Size.Values = (
          29.104166666666670000
          1653.645833333333000000
          2.645833333333333000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ProdutoPorVenda
        DataField = 'CODVENDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 6
      end
    end
    object QRBand8: TQRBand
      Left = 38
      Top = 189
      Width = 718
      Height = 19
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel24: TQRLabel
        Left = 7
        Top = 2
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          5.291666666666667000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Totais:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 372
        Top = 1
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          984.250000000000000000
          2.645833333333333000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'TQuant'
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
      object QRLabel48: TQRLabel
        Left = 450
        Top = 0
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          1190.625000000000000000
          0.000000000000000000
          97.895833333333320000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TValor'
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
    object QRBand9: TQRBand
      Left = 38
      Top = 158
      Width = 718
      Height = 19
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel51: TQRLabel
        Left = 450
        Top = 2
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          1190.625000000000000000
          5.291666666666667000
          92.604166666666680000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Valor'
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
      object QRLabel52: TQRLabel
        Left = 372
        Top = 1
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          984.250000000000000000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Quant.'
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
      object QRLabel54: TQRLabel
        Left = 70
        Top = 1
        Width = 63
        Height = 17
        Size.Values = (
          44.979166666666670000
          185.208333333333300000
          2.645833333333333000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descric'#227'o'
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
      object QRLabel55: TQRLabel
        Left = 1
        Top = 1
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          2.645833333333333000
          2.645833333333333000
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
      object QRLabel53: TQRLabel
        Left = 511
        Top = 2
        Width = 104
        Height = 17
        Size.Values = (
          44.979166666666670000
          1352.020833333333000000
          5.291666666666667000
          275.166666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Data da Compra'
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
      object QRLabel56: TQRLabel
        Left = 625
        Top = 2
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          1653.645833333333000000
          5.291666666666667000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Cod Venda'
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
  object CkQuant: TCheckBox [47]
    Left = 150
    Top = 110
    Width = 97
    Height = 17
    Caption = 'Quant.'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object CkCusto: TCheckBox [48]
    Left = 150
    Top = 126
    Width = 97
    Height = 17
    Caption = 'Custo Loja'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = CkDescontoClick
  end
  object CkValor: TCheckBox [49]
    Left = 150
    Top = 142
    Width = 97
    Height = 17
    Caption = 'Valor'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object CkDesconto: TCheckBox [50]
    Left = 240
    Top = 110
    Width = 97
    Height = 17
    Caption = 'Desconto'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = CkDescontoClick
  end
  object CkLucro: TCheckBox [51]
    Left = 240
    Top = 126
    Width = 97
    Height = 17
    Caption = 'Lucro Total'
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = CkDescontoClick
  end
  object CbTipoVenda: TComboBox [52]
    Left = 149
    Top = 83
    Width = 201
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 3
    Text = 'TODOS'
    Items.Strings = (
      'TODOS')
  end
  object CkCalcularCubagem: TCheckBox [53]
    Left = 240
    Top = 142
    Width = 104
    Height = 17
    Caption = 'Calcular Cubagem'
    TabOrder = 10
    OnClick = CkCalcularCubagemClick
  end
  object EdtCidadeÎCidades: TcxButtonEdit [54]
    Left = 364
    Top = 388
    AutoSize = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    TabOrder = 26
    Height = 21
    Width = 76
  end
  object EdtGrupoClienteÎPessoas_Grupo: TcxButtonEdit [55]
    Left = 364
    Top = 311
    AutoSize = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    TabOrder = 22
    Height = 21
    Width = 76
  end
  object EdtUsuario: TcxButtonEdit [56]
    Left = 364
    Top = 349
    AutoSize = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    TabOrder = 24
    Height = 21
    Width = 76
  end
  object cxDateProfileButton1: TcxDateProfileButton [57]
    Left = 232
    Top = 172
    Width = 22
    Height = 22
    Hint = 'Clique para selecionar um per'#237'odo'
    Caption = 'cxDateProfileButton1'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      424D360400000000000036000000280000001000000010000000010020000000
      000000000000C40E0000C40E0000000000000000000000000000030303280909
      0A890505058C09080A8B0C0C0D8B0F0F108B1111128B1110118B0D0D0D8B0D0D
      0D8A0F0E0F8A0808098A0808098E080808540000000000000000040404587C7A
      7BFF979698FF919092FF999799FF9C9A9BFF9A999AFFA5A3A5FFABAAACFFA2A1
      A3FFA09E9FFFB9B6B8FFC6C4C5FF3C3A3CAF000000000000000000000059A2A1
      A2FFE5E5E5FFDADAD9FFCFCFCFFFD0D0D0FFD5D5D4FFCDCDCDFFE0E0E0FFEFEF
      EFFFE1E1E1FFCFCDCEFFF3EFEFFF494749A70000000000000000000000599F9F
      9FFFE3E3E3FFE0E0E0FF6E6E6EFF767676FFE1E1E1FF505050FF292929FF5D5D
      5DFFB2B2B2FFE0E0E1FFC9C7C8FF454547A7000000000000000000000059A4A3
      A4FFEAEAEAFFE9E9E9FF5B5B5BFF636363FFF3F3F3FF949494FF0E0E0EFF8282
      82FFD0D0D0FFEAEAEAFFC3C2C3FF3A373AA8000000000000000000000059A8A7
      A8FFF2F2F2FFFAFAFAFF656565FF696969FFF0F0F0FFF4F4F4FF909090FF2B2B
      2BFFBDBDBDFFF4F4F4FFCFCFCFFF302F30AB000000000000000000000059B2B1
      B2FFE3E3E3FFA6A6A6FF5A5A5AFF6F6F6FFFF6F6F6FFE5E5E5FFFFFFFFFF8585
      85FF3C3C3CFFEFEFEFFFE1E0E1FF353435AE000000000000000000000059B7B7
      B7FFF1F1F1FF626262FF0A0A0AFF737373FFFFFFFFFF646464FF838383FF9B9B
      9BFF272727FFE7E7E7FFEDEDEDFF3D3D3DB0000000000000000000000059B9BB
      C0FFFFFFFFFFFFFFFFFF71747BFF8B8F97FFFFFFFFFFBCC0C8FF474B53FF4246
      4EFFA4A7AFFFFFFFFFFFF2F5FCFF404142B1000000000000000001030559B0A4
      8BFFF2E1B9FFF0DEB6FFEEDCB4FFE4D0A4FFEDDBB1FFF5E3BAFFEAD7ADFFE5D2
      A8FFF7E5BCFFF0DDB1FFE2D2ACFF413E3AB10000000000000000050810599770
      16FFDBA939FFD7AE57FFD3A33CFFD19F2BFFC18300FFCC971CFFD09D26FFC78B
      00FFCA9311FFD19D22FFC08B0EFF3E3728B10000000000000000050811599A76
      1FFFDFB043FFCFA852FFC89F44FFDAB45CFFC68C00FFCF9D26FFD4A639FFBA85
      02FFC49117FFD9AB3BFFC59420FF413929B10000000000000000080B145CA883
      28FFDF9C00FF9A7419FF9A7B34FFD59500FFD19500FFD69D15FFD49809FF896D
      2BFFB28D35FFDC9E0DFFD09916FF4B4336B900000000000000000506092C5345
      26B3654D16BE736649DF736B5EE4614B15BB624C18BD614A17BC654E1AC07B72
      60E86C5F46D7624915BB644F21C126241F6A0000000000000000000000000000
      000000000000636469895D5D6096000000000000000000000000000000008080
      83BA3B3C415F0000000000000000000000000000000000000000000000000000
      0000000000003E3E3F4E4747474E000000000000000000000000000000005858
      586C2C2B2B2D00000000000000000000000000000000}
    PaintStyle = bpsGlyph
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    DateEditInicio = DataInicial
    DateEditFim = DataFinal
  end
  object EdtProdutoÎProduto: TcxButtonEdit [58]
    Left = 4
    Top = 236
    AutoSize = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    TabOrder = 18
    OnExit = EdtProdutoÎProdutoExit
    Height = 21
    Width = 76
  end
  object CbModeloTipoVenda: TComboBox [59]
    Left = 365
    Top = 197
    Width = 201
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 16
    Text = 'TODOS'
    Items.Strings = (
      'TODOS')
  end
  object ComboTipoAgrupamento: TcxLookupComboBox [60]
    Left = 147
    Top = 43
    Properties.DropDownRows = 20
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    Properties.OnEditValueChanged = ComboTipoAgrupamentoPropertiesEditValueChanged
    TabOrder = 31
    Width = 201
  end
  inherited QRHTMLFilter1: TQRHTMLFilter
    Left = 920
    Top = 168
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 888
    Top = 168
  end
  inherited QRTextFilter1: TQRTextFilter
    Left = 824
    Top = 168
  end
  inherited QRExcelFilter1: TQRExcelFilter
    Left = 792
    Top = 168
  end
  inherited QRPDFFilter1: TQRPDFFilter
    Left = 856
    Top = 168
  end
  object Produtos_Agrupados: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = Produtos_AgrupadosBeforeOpen
    OnCalcFields = Produtos_AgrupadosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select VP.CODPRODUTO, VP.DESCRICAO, P.UNIDADE, P.CODPRODUTO_GRUP' +
        'O, P.COMP as PADRAO_COMP,P.LARG as PADRAO_LARG, P.ESPESSURA as P' +
        'ADRAO_ESPESSURA,'
      'sum(VP.QUANT) as SOMA_QUANT,'
      'sum(VP.QUANT * VP.CUSTO_VENDA_TOTAL) as SOMA_CUSTO_LOJA, '
      'sum(VP.QUANT * VP.VALOR) as SOMA_VALOR,'
      
        'sum(case when coalesce(VP.ACRESCIMO_DESCONTO, 0) > 0 then coales' +
        'ce(V.PERC_ACRESC, 0) / 100 * VP.QUANT * VP.VALOR + (VP.ACRESCIMO' +
        '_DESCONTO * 1) else coalesce(V.PERC_ACRESC, 0) / 100 * VP.QUANT ' +
        '* VP.VALOR end) as ACRESC,'
      'sum(VP.COMP) as COMP,'
      'sum(VP.LARG) as LARG, sum(VP.ESPESSURA) as ESPESSURA,'
      'sum(VP.QTDADEPECA) as QTDADEPECA,'
      
        'sum(coalesce(VP.VICMSST, 0)) + sum(coalesce(IPI_VIPI, 0)) as IMP' +
        'OSTOS,'
      'sum('
      '   case'
      
        '     when coalesce(VP.ACRESCIMO_DESCONTO, 0) < 0 then coalesce(V' +
        '.PERC_DESC, 0) / 100 * VP.QUANT * VP.VALOR + (VP.ACRESCIMO_DESCO' +
        'NTO * -1)'
      '       else coalesce(V.PERC_DESC, 0) / 100 * VP.QUANT * VP.VALOR'
      '     end) as DESCONTO'
      ''
      'from VENDA_PRODUTO VP'
      'left join PRODUTO P on (VP.CODPRODUTO = P.CODIGO)'
      'left join VENDA V on (V.CODIGO = VP.CODVENDA)'
      ''
      
        'group by VP.CODPRODUTO, VP.DESCRICAO, P.UNIDADE, P.CODPRODUTO_GR' +
        'UPO, P.COMP, P.LARG, P.ESPESSURA, VP.ACRESCIMO_DESCONTO'
      ''
      'order by VP.DESCRICAO')
    Left = 118
    Top = 4
    object Produtos_AgrupadosCODPRODUTO: TIBStringField
      FieldName = 'CODPRODUTO'
      ProviderFlags = []
      Size = 15
    end
    object Produtos_AgrupadosCODPRODUTO_GRUPO: TIBStringField
      FieldName = 'CODPRODUTO_GRUPO'
      Origin = '"PRODUTO"."CODPRODUTO_GRUPO"'
      Size = 15
    end
    object Produtos_AgrupadosPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VENDA_PRODUTO"."PRODUTO"'
      Size = 300
    end
    object Produtos_AgrupadosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      ProviderFlags = []
      Size = 3
    end
    object Produtos_AgrupadosSOMA_QUANT: TFloatField
      FieldName = 'SOMA_QUANT'
      ProviderFlags = []
      DisplayFormat = '##,##0.###'
    end
    object Produtos_AgrupadosSOMA_VALOR: TFloatField
      FieldName = 'SOMA_VALOR'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
    end
    object Produtos_AgrupadosTotal_Lucro: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total_Lucro'
      DisplayFormat = '##,###,##0.00'
      Calculated = True
    end
    object Produtos_AgrupadosACRESC: TFloatField
      FieldName = 'ACRESC'
      ProviderFlags = []
    end
    object Produtos_AgrupadosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
    end
    object Produtos_AgrupadosSOMA_CUSTO_LOJA: TFloatField
      FieldName = 'SOMA_CUSTO_LOJA'
      ProviderFlags = []
    end
    object Produtos_AgrupadosPADRAO_COMP: TFloatField
      FieldName = 'PADRAO_COMP'
      Origin = '"PRODUTO"."PADRAO_COMP"'
    end
    object Produtos_AgrupadosPADRAO_LARG: TFloatField
      FieldName = 'PADRAO_LARG'
      Origin = '"PRODUTO"."PADRAO_LARG"'
    end
    object Produtos_AgrupadosPADRAO_ESPESSURA: TFloatField
      FieldName = 'PADRAO_ESPESSURA'
      Origin = '"PRODUTO"."PADRAO_ESPESSURA"'
    end
    object Produtos_AgrupadosCubagem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Cubagem'
      Calculated = True
    end
    object Produtos_AgrupadosCOMP: TFloatField
      FieldName = 'COMP'
      Origin = '"VENDA_PRODUTO"."COMP"'
    end
    object Produtos_AgrupadosLARG: TFloatField
      FieldName = 'LARG'
      Origin = '"VENDA_PRODUTO"."LARG"'
    end
    object Produtos_AgrupadosESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
      Origin = '"VENDA_PRODUTO"."ESPESSURA"'
    end
    object Produtos_AgrupadosQTDADEPECA: TFloatField
      FieldName = 'QTDADEPECA'
      Origin = '"VENDA_PRODUTO"."QTDADEPECA"'
    end
    object Produtos_AgrupadosIMPOSTOS: TFloatField
      FieldName = 'IMPOSTOS'
      ProviderFlags = []
    end
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
      
        'select V.DT_FATURAMENTO,PP.CODPRODUTO, PP.PRODUTO, PP.QUANT, PP.' +
        'VALOR, PP.CUSTO_VENDA_TOTAL,'
      'V.PERC_ACRESC,V.PERC_DESC'
      'FROM  VENDA_PRODUTO PP'
      'LEFT JOIN PRODUTO P ON PP.CODPRODUTO=P.CODIGO'
      'LEFT JOIN VENDA V ON V.CODIGO=PP.CODVENDA'
      'WHERE (V.DT_FATURAMENTO BETWEEN :Inicio AND :Fim)'
      ''
      'ORDER BY V.DT_FATURAMENTO,PP.DESCRICAO'
      ''
      ''
      ' '
      ' '
      ' ')
    Left = 118
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fim'
        ParamType = ptUnknown
      end>
    object IBStringField1: TIBStringField
      FieldName = 'CODPRODUTO'
      ProviderFlags = []
      Size = 15
    end
    object ProdutosDT_FATURAMENTO: TDateTimeField
      FieldName = 'DT_FATURAMENTO'
      Origin = '"PEDIDOS"."DT_FATURAMENTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ProdutosPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VENDA_PRODUTO"."PRODUTO"'
      Size = 300
    end
    object ProdutosQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = '"PEDIDO_PRODUTO"."QUANT"'
    end
    object ProdutosVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"PEDIDO_PRODUTO"."VALOR"'
      DisplayFormat = '##,###,##0.00'
    end
    object ProdutosPERC_ACRESC: TFloatField
      FieldName = 'PERC_ACRESC'
      Origin = '"PEDIDOS"."PERC_ACRESC"'
      DisplayFormat = '##,###,##0.00'
    end
    object ProdutosPERC_DESC: TFloatField
      FieldName = 'PERC_DESC'
      Origin = '"PEDIDOS"."PERC_DESC"'
      DisplayFormat = '##,###,##0.00'
    end
    object ProdutosTotal_Valor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Valor'
      DisplayFormat = '##,###,##0.00'
      Calculated = True
    end
    object FloatField6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Lucro'
      DisplayFormat = '##,###,##0.00'
      Calculated = True
    end
    object ProdutosTotal_Custo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Custo'
      DisplayFormat = '##,###,##0.00'
      Calculated = True
    end
    object ProdutosTotal_Juros_Desc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Juros_Desc'
      DisplayFormat = '##,###,##0.00'
      Calculated = True
    end
    object ProdutosTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '##,###,##0.00'
      Calculated = True
    end
    object Produtoslucro_unit: TFloatField
      FieldKind = fkCalculated
      FieldName = 'lucro_unit'
      DisplayFormat = '##,###,##0.00'
      Calculated = True
    end
    object ProdutosCUSTO_VENDA_TOTAL: TFloatField
      FieldName = 'CUSTO_VENDA_TOTAL'
      Origin = '"VENDA_PRODUTO"."CUSTO_VENDA_TOTAL"'
    end
  end
  object cartao: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = cartaoBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(valor)as total_valor from venda_financeiro')
    Left = 651
    Top = 81
    object cartaoTOTAL_VALOR: TFloatField
      FieldName = 'TOTAL_VALOR'
      ProviderFlags = []
    end
  end
  object avista: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = avistaBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(valor)as total_valor from venda_financeiro')
    Left = 651
    Top = 109
    object avistaTOTAL_VALOR: TFloatField
      FieldName = 'TOTAL_VALOR'
      ProviderFlags = []
    end
  end
  object crediario: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = crediarioBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(valor)as total_valor from venda_financeiro')
    Left = 651
    Top = 137
    object crediarioTOTAL_VALOR: TFloatField
      FieldName = 'TOTAL_VALOR'
      ProviderFlags = []
    end
  end
  object cheque: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = chequeBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(valor)as total_valor from venda_financeiro')
    Left = 651
    Top = 165
    object chequeTOTAL_VALOR: TFloatField
      FieldName = 'TOTAL_VALOR'
      ProviderFlags = []
    end
  end
  object ProdutoPorVenda: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = ProdutoPorVendaBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT vp.codproduto, vp.descricao, sum(vp.quant) as quantidade,' +
        ' sum(vp.valor) * sum(vp.quant) as valor, v.dt_faturamento, vp.co' +
        'dvenda'
      'from venda_produto vp'
      'left join venda v on (v.codigo = vp.codvenda)'
      'left join produto p on (p.codigo = vp.codproduto)'
      'left join produto_tipo pt on (p.codproduto_tipo = pt.codigo)'
      ''
      ''
      
        'group by vp.codproduto, vp.descricao, v.dt_faturamento, vp.codve' +
        'nda'
      ''
      ''
      ''
      '')
    Left = 118
    Top = 60
    object ProdutoPorVendaCODPRODUTO: TIBStringField
      FieldName = 'CODPRODUTO'
      Origin = '"VENDA_PRODUTO"."CODPRODUTO"'
      Required = True
      Size = 15
    end
    object ProdutoPorVendaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VENDA_PRODUTO"."PRODUTO"'
      Size = 300
    end
    object ProdutoPorVendaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = []
    end
    object ProdutoPorVendaVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = []
      DisplayFormat = 'R$ ##,###,##0.00'
    end
    object ProdutoPorVendaDT_FATURAMENTO: TDateTimeField
      FieldName = 'DT_FATURAMENTO'
      Origin = '"VENDA"."DT_FATURAMENTO"'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object ProdutoPorVendaCODVENDA: TIBStringField
      FieldName = 'CODVENDA'
      Origin = '"VENDA_PRODUTO"."CODVENDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object frxDBDataset1: TfrxDBDataset
    Enabled = False
    UserName = 'VendasPorCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'PESSOA_RESPONSAVEL_TIPO=TIPO_RESPONSAVEL'
      'TOTAL_VENDA=TOTAL_VENDA'
      'VENDA_SUB_TOTAL=VENDA_SUB_TOTAL'
      'VENDA_DESC=VENDA_DESC')
    DataSet = VendasPorCliente
    BCDToCurrency = False
    Left = 553
    Top = 139
  end
  object VendasPorCliente: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = VendasPorClienteBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select P.CODIGO, P.RAZAOSOCIAL, V.PESSOA_RESPONSAVEL_TIPO,'
      '       sum(coalesce(V.TOTAL, 0)) as TOTAL_VENDA,'
      '       sum(coalesce(V.SUB_TOTAL, 0)) as VENDA_SUB_TOTAL,'
      '       sum(coalesce(V.VDESC, 0)) as VENDA_DESC'
      'from PESSOAS P'
      'left join VENDA V on (V.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO)'
      ''
      'group by P.CODIGO, P.RAZAOSOCIAL, V.PESSOA_RESPONSAVEL_TIPO'
      ''
      '')
    Left = 581
    Top = 139
  end
  object VendasPorCliente_Produtos: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = VendasPorCliente_ProdutosBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DSVendasPorCliente
    ParamCheck = True
    SQL.Strings = (
      
        'select VP.CODPRODUTO, VP.DESCRICAO, sum(VP.QUANT) as TOTAL_QUANT' +
        ','
      
        '       sum((VP.VALOR * VP.QUANT) + coalesce(VP.VDESC, 0)) as TOT' +
        'AL_VALOR'
      'from VENDA_PRODUTO VP'
      'left join VENDA V on (V.CODIGO = VP.CODVENDA)'
      'where (V.PESSOA_RESPONSAVEL_CODIGO = :CODIGO)'
      ''
      'group by VP.CODPRODUTO, VP.DESCRICAO'
      'order by VP.DESCRICAO')
    Left = 581
    Top = 167
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
  end
  object DSVendasPorCliente: TDataSource
    DataSet = VendasPorCliente
    Left = 609
    Top = 139
  end
  object frxDBDataset3: TfrxDBDataset
    Enabled = False
    UserName = 'VendasPorCliente_Produtos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'DESCRICAO=DESCRICAO'
      'TOTAL_QUANT=TOTAL_QUANT'
      'TOTAL_VALOR=TOTAL_VALOR')
    DataSet = VendasPorCliente_Produtos
    BCDToCurrency = False
    Left = 553
    Top = 167
  end
  object UCHistWRGeral1: TUCHistWRGeral
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    Left = 609
    Top = 167
  end
  object Vendas: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = VendasBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select V.*, F.RAZAOSOCIAL as FUNCIONARIO, R.RAZAOSOCIAL as REPRE' +
        'SENTANTE'
      'from VENDA V'
      'left join PESSOAS F on (V.PESSOA_FUNCIONARIO_CODIGO = F.CODIGO)'
      
        'left join PESSOAS R on (V.PESSOA_REPRESENTANTE_CODIGO = R.CODIGO' +
        ')'
      'where (1 = 1)'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 581
    Top = 214
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'Venda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DT_EMISSAO=DT_EMISSAO'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'TELEFONE=TELEFONE'
      'NOTAFISCAL=NOTAFISCAL'
      'CODUSUARIO=CODUSUARIO'
      'MOTORISTA=MOTORISTA'
      'MOTORISTA_DOCUMENTO=MOTORISTA_DOCUMENTO'
      'MOTORISTA_ENDERECO=MOTORISTA_ENDERECO'
      'SOLICITACAO_SERVICO=SOLICITACAO_SERVICO'
      'DT_FATURAMENTO=DT_FATURAMENTO'
      'DT_ENTRADA=DT_ENTRADA'
      'DT_PROMETIDO=DT_PROMETIDO'
      'KILOMETRAGEM=KILOMETRAGEM'
      'POUTRO=POUTRO'
      'VOUTRO=VOUTRO'
      'PDESC=PDESC'
      'VDESC=VDESC'
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
      'COMISSAO_REPRESENTANTE=COMISSAO_REPRESENTANTE'
      'STATUS=STATUS'
      'ATUALIZADO=ATUALIZADO'
      'NF_DT_EMISSAO=NF_DT_EMISSAO'
      'NF_DT_SAIDAENTRADA=NF_DT_SAIDAENTRADA'
      'NF_SAIDA_ENTRADA=NF_SAIDA_ENTRADA'
      'NF_TRANSPORTADORA=NF_TRANSPORTADORA'
      'NF_FRETEPORCONTA=NF_FRETEPORCONTA'
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
      'NF_VBC=NF_VBC'
      'NF_ISS_VBC=NF_ISS_VBC'
      'NF_VFRETE=NF_VFRETE'
      'NF_ISS_VISS=NF_ISS_VISS'
      'NF_VICMS=NF_VICMS'
      'NF_VSEG=NF_VSEG'
      'NF_VICMSST=NF_VICMSST'
      'NF_VALOR_OUTROS=NF_VALOR_OUTROS'
      'NF_IPI_VIPI=NF_IPI_VIPI'
      'NF_IE_SUBST=NF_IE_SUBST'
      'CODCARRO=CODCARRO'
      'ANO=ANO'
      'COR=COR'
      'VALOR=VALOR'
      'CODCARROINTEIRO=CODCARROINTEIRO'
      'NF_OBSERVACAO=NF_OBSERVACAO'
      'NF_PORCENTAGEM_DESCONTO=NF_PORCENTAGEM_DESCONTO'
      'NF_VBCST=NF_VBCST'
      'NF_VCREDSN=NF_VCREDSN'
      'NF_VALORADUANEIRA=NF_VALORADUANEIRA'
      'NF_PIS_VPIS=NF_PIS_VPIS'
      'NF_COFINSST_VCOFINS=NF_COFINSST_VCOFINS'
      'NF_II_VII=NF_II_VII'
      'NF_TOTAL_IMPOSTOS=NF_TOTAL_IMPOSTOS'
      'NF_NDI=NF_NDI'
      'NF_DDI=NF_DDI'
      'NF_XLOCDESEMB=NF_XLOCDESEMB'
      'NF_UFDESEMB=NF_UFDESEMB'
      'NF_DDESEMB=NF_DDESEMB'
      'NF_CEXPORTADOR=NF_CEXPORTADOR'
      'NF_TRANSPORTADORA_UF=NF_TRANSPORTADORA_UF'
      'EQUIPAMENTO_NUMERO_SERIE=EQUIPAMENTO_NUMERO_SERIE'
      'EQUIPAMENTO_NUMERO_NF=EQUIPAMENTO_NUMERO_NF'
      'EQUIPAMENTO_DT_COMPRA=EQUIPAMENTO_DT_COMPRA'
      'EQUIPAMENTO_DESCRICAO=EQUIPAMENTO_DESCRICAO'
      'CODCONTA=CODCONTA'
      'EQUIPAMENTO_DEFEITO=EQUIPAMENTO_DEFEITO'
      'DT_ALTERACAO=DT_ALTERACAO'
      'NFE_IMPRIMIR_QTDEPECA=NFE_IMPRIMIR_QTDEPECA'
      'BLOQUEIO=BLOQUEIO'
      'MOTORISTA_DOCUMENTO_NUMERO=MOTORISTA_DOCUMENTO_NUMERO'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'PESSOA_MOTORISTA_CODIGO=PESSOA_MOTORISTA_CODIGO'
      'PESSOA_MOTORISTA_TIPO=PESSOA_MOTORISTA_TIPO'
      'PESSOA_MOTORISTA_SEQUENCIA=PESSOA_MOTORISTA_SEQUENCIA'
      'PESSOA_REPRESENTANTE_CODIGO=PESSOA_REPRESENTANTE_CODIGO'
      'PESSOA_REPRESENTANTE_TIPO=PESSOA_REPRESENTANTE_TIPO'
      'PESSOA_REPRESENTANTE_SEQUENCIA=PESSOA_REPRESENTANTE_SEQUENCIA'
      'PESSOA_FUNCIONARIO_CODIGO=PESSOA_FUNCIONARIO_CODIGO'
      'PESSOA_FUNCIONARIO_TIPO=PESSOA_FUNCIONARIO_TIPO'
      'PESSOA_FUNCIONARIO_SEQUENCIA=PESSOA_FUNCIONARIO_SEQUENCIA'
      'PESSOA_TRANSPORTADORA_CODIGO=PESSOA_TRANSPORTADORA_CODIGO'
      'PESSOA_TRANSPORTADORA_TIPO=PESSOA_TRANSPORTADORA_TIPO'
      'PESSOA_TRANSPORTADORA_SEQUENCIA=PESSOA_TRANSPORTADORA_SEQUENCIA'
      'CODVENDA=CODVENDA'
      'CREDITO=CREDITO'
      'SEQUENCIA=SEQUENCIA'
      'NFSE_RPS=NFSE_RPS'
      'NFSE_PROTOCOLO=NFSE_PROTOCOLO'
      'NFSE_CODIGOVERIFICACAO=NFSE_CODIGOVERIFICACAO'
      'NF_RATEIO=NF_RATEIO'
      'TRANSFERENCIA_TIPO=TRANSFERENCIA_TIPO'
      'ESTOQUE_LOCAL_ORIGEM=ESTOQUE_LOCAL_ORIGEM'
      'ESTOQUE_LOCAL_DESTINO=ESTOQUE_LOCAL_DESTINO'
      'CODEMPRESA_DESTINO=CODEMPRESA_DESTINO'
      'CODEMPRESA_ORIGEM=CODEMPRESA_ORIGEM'
      'NF_II_DESPACE=NF_II_DESPACE'
      'CONTATO=CONTATO'
      'AUTENTICACAO=AUTENTICACAO'
      'CODUSUARIO_FATURAMENTO=CODUSUARIO_FATURAMENTO'
      'CODCLIENTE_SITE=CODCLIENTE_SITE'
      'PEDIDO_COMPRA=PEDIDO_COMPRA'
      'NF_FINALIDADE=NF_FINALIDADE'
      'NF_NREF=NF_NREF'
      'VALOR_ABATIMENTO=VALOR_ABATIMENTO'
      'PESSOA_AGENCIA_CODIGO=PESSOA_AGENCIA_CODIGO'
      'PESSOA_AGENCIA_SEQUENCIA=PESSOA_AGENCIA_SEQUENCIA'
      'PESSOA_AGENCIA_TIPO=PESSOA_AGENCIA_TIPO'
      'COMISSAO_AGENCIA=COMISSAO_AGENCIA'
      'COMISSAO_COMPARTILHADA=COMISSAO_COMPARTILHADA'
      'PERC_COMPARTILHADA=PERC_COMPARTILHADA'
      'PERC_COMP_FUNCIONARIO=PERC_COMP_FUNCIONARIO'
      'PERC_COMP_REPRESENTANTE=PERC_COMP_REPRESENTANTE'
      'SITUACAO=SITUACAO'
      'PEDIDO_REP=PEDIDO_REP'
      'DT_SITUACAO=DT_SITUACAO'
      'OBSERVACAO_SERVICO=OBSERVACAO_SERVICO'
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
      'FATURAMENTO=FATURAMENTO'
      'NF_VFCPUFDEST=NF_VFCPUFDEST'
      'NF_VICMSUFDEST=NF_VICMSUFDEST'
      'NF_VICMSUFREMET=NF_VICMSUFREMET'
      'CONSUMIDOR_FINAL=CONSUMIDOR_FINAL'
      'NFE_ICMS_SOB_FRETE=NFE_ICMS_SOB_FRETE'
      'DEDUZIR_ISS_RETIDO=DEDUZIR_ISS_RETIDO'
      'TIPO_EVENTO=TIPO_EVENTO'
      'CERIMONIAL=CERIMONIAL'
      'DATA_EVENTO=DATA_EVENTO'
      'NFE_ICMS_SOB_OUTROS=NFE_ICMS_SOB_OUTROS'
      'COMISSAO_AGENCIA_CALCULA=COMISSAO_AGENCIA_CALCULA'
      'DT_COMPETENCIA=DT_COMPETENCIA'
      'SITUACAOFINANCEIRA=SITUACAOFINANCEIRA'
      'IS_NOTAFISCAL=IS_NOTAFISCAL'
      'IS_FATURAMENTO=IS_FATURAMENTO'
      'IS_PEDIDO=IS_PEDIDO'
      'NFE_CALCULA_DIFAL=NFE_CALCULA_DIFAL'
      'NF_IE_EMIT=NF_IE_EMIT'
      'NF_CRT_EMIT=NF_CRT_EMIT'
      'NF_CRT_DEST=NF_CRT_DEST'
      'NF_NATOP=NF_NATOP'
      'NF_UTILIZAR_CODFABRICA_NA_IMPR=NF_UTILIZAR_CODFABRICA_NA_IMPR'
      'TOTALALIQ_NACIONAL=TOTALALIQ_NACIONAL'
      'TOTALALIQ_IMPORTACAO=TOTALALIQ_IMPORTACAO'
      'TOTALALIQ_ESTADUAL=TOTALALIQ_ESTADUAL'
      'TOTALALIQ_MUNICIPAL=TOTALALIQ_MUNICIPAL'
      'NF_OBSERVACAO_PADRAO=NF_OBSERVACAO_PADRAO'
      'VTOTTRIB=VTOTTRIB'
      'TITULO_VENDA=TITULO_VENDA'
      'VENDA_ATENTICADA=VENDA_ATENTICADA'
      'VENDA_ATENTICAR=VENDA_ATENTICAR'
      'NF_PCREDSN=NF_PCREDSN'
      'SERVICO_INCENTIVADOR_CULTURAL=SERVICO_INCENTIVADOR_CULTURAL'
      'SERVICO_ISS_RETIDO=SERVICO_ISS_RETIDO'
      'SERVICO_NATUREZA_OPERACAO=SERVICO_NATUREZA_OPERACAO'
      'SERVICO_REGIME_ESPECIAL_TRIBUT=SERVICO_REGIME_ESPECIAL_TRIBUT'
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
      'IS_ORCAMENTO=IS_ORCAMENTO'
      'IS_VENDA=IS_VENDA'
      'CODVENDA_PRE_VENDA=CODVENDA_PRE_VENDA'
      'PRE_VENDA=PRE_VENDA'
      'NF_TRIBUTACAO=NF_TRIBUTACAO'
      'NF_TRANSP_QVOL=NF_TRANSP_QVOL'
      'CODPROJETO=CODPROJETO'
      'ENTREGA_NOME=ENTREGA_NOME'
      'ENTREGA_CEP=ENTREGA_CEP'
      'ENTREGA_CODPAIS=ENTREGA_CODPAIS'
      'ENTREGA_FONE=ENTREGA_FONE'
      'ENTREGA_EMAIL=ENTREGA_EMAIL'
      'ENTREGA_IE=ENTREGA_IE'
      'NF_ISSQN_VISSQN=NF_ISSQN_VISSQN'
      'NF_ISSQN_VBC=NF_ISSQN_VBC'
      'NF_CODNATUREZA_OPERACAO=NF_CODNATUREZA_OPERACAO'
      'COMISSAO_FUNCIONARIO_COBRAR=COMISSAO_FUNCIONARIO_COBRAR'
      'COMISSAO_AGENCIA_COBRAR=COMISSAO_AGENCIA_COBRAR'
      'COMISSAO_REPRESENTANTE_COBRAR=COMISSAO_REPRESENTANTE_COBRAR'
      'NF_ISSQN_VISSRET=NF_ISSQN_VISSRET'
      'NAO_DEDUZ_ISS_RETIDO_TOTAL_NOTA=NAO_DEDUZ_ISS_RETIDO_TOTAL_NOTA'
      'CODUSUARIO_EXCLUSAO=CODUSUARIO_EXCLUSAO'
      'CODCIDADE=CODCIDADE'
      'RESPONSAVEL_UF=RESPONSAVEL_UF'
      'TIPO_CONTRIBUINTE=TIPO_CONTRIBUINTE'
      'PCREDSN_PERMITE=PCREDSN_PERMITE'
      'VENDA_TIPO_MODELO=VENDA_TIPO_MODELO'
      'VENDA_TIPO_TABELA=VENDA_TIPO_TABELA'
      'RESPONSAVEL_TABELA_PRECO=RESPONSAVEL_TABELA_PRECO'
      'PERMITEVENDERPELOCUSTO=PERMITEVENDERPELOCUSTO'
      'ATIVO=ATIVO'
      'CREDITO_DISPONIVEL=CREDITO_DISPONIVEL'
      'DT_CREDITO_DISPONIVEL=DT_CREDITO_DISPONIVEL'
      'VENDA_TIPO_PODE_SER_PRODUZIDO=VENDA_TIPO_PODE_SER_PRODUZIDO'
      'RESPONSAVEL_ENDERECO=RESPONSAVEL_ENDERECO'
      'RESPONSAVEL_BAIRRO=RESPONSAVEL_BAIRRO'
      'RESPONSAVEL_NUMERO=RESPONSAVEL_NUMERO'
      'RESPONSAVEL_CEP=RESPONSAVEL_CEP'
      'RESPONSAVEL_CNPJCPF=RESPONSAVEL_CNPJCPF'
      'RESPONSAVEL_INSCIDENT=RESPONSAVEL_INSCIDENT'
      'RESPONSAVEL_CODCIDADE=RESPONSAVEL_CODCIDADE'
      'RESPONSAVEL_CIDADE=RESPONSAVEL_CIDADE'
      'RESPONSAVEL_TIPO=RESPONSAVEL_TIPO'
      'RESPONSAVEL_EMAIL=RESPONSAVEL_EMAIL'
      'PODE_RATEAR_FRETE_DESC_OUTRO=PODE_RATEAR_FRETE_DESC_OUTRO'
      'RESPONSAVEL_TIPO_CONTRIBUINTE=RESPONSAVEL_TIPO_CONTRIBUINTE'
      'PODE_EMITIR_NOTAFISCAL=PODE_EMITIR_NOTAFISCAL'
      'TEM_BLOQUEIO_NF=TEM_BLOQUEIO_NF'
      'PODE_SER_FATURADO=PODE_SER_FATURADO'
      'RESPONSAVEL_PROXIMIDADE=RESPONSAVEL_PROXIMIDADE'
      'RESPONSAVEL_COMPLEMENTO=RESPONSAVEL_COMPLEMENTO'
      'CODPRODUTO_TABELA=CODPRODUTO_TABELA'
      'PRODUTO_ESTOQUE_LOCAL=PRODUTO_ESTOQUE_LOCAL'
      'ENTREGA_CIDADE=ENTREGA_CIDADE'
      'ENTREGA_CNPJCPF=ENTREGA_CNPJCPF'
      'ENTREGA_PAIS=ENTREGA_PAIS'
      'NF_NATUREZA_OPERACAO=NF_NATUREZA_OPERACAO'
      'SERVICO_NF_NCM=SERVICO_NF_NCM'
      'RESPONSAVEL_COD_CIDADE_PROPRIO=RESPONSAVEL_COD_CIDADE_PROPRIO'
      'RESPONSAVEL_CODPAIS=RESPONSAVEL_CODPAIS'
      'RESPONSAVEL_INSC_MUNICIPAL=RESPONSAVEL_INSC_MUNICIPAL'
      'RESPONSAVEL_EMAIL_NFE=RESPONSAVEL_EMAIL_NFE'
      'PODE_SOMAR_PESO_NOTAFISCAL=PODE_SOMAR_PESO_NOTAFISCAL'
      'NFSE_SITUACAO_TRIBUTACAO=NFSE_SITUACAO_TRIBUTACAO'
      'NF_PALIQ_SN=NF_PALIQ_SN'
      'FUNCIONARIO=FUNCIONARIO'
      'REPRESENTANTE=REPRESENTANTE')
    DataSet = Vendas
    BCDToCurrency = False
    Left = 553
    Top = 214
  end
  object frxDBDataset5: TfrxDBDataset
    Enabled = False
    UserName = 'Produtos_Agrupados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'CODPRODUTO_GRUPO=CODPRODUTO_GRUPO'
      'PRODUTO=PRODUTO'
      'UNIDADE=UNIDADE'
      'SOMA_QUANT=SOMA_QUANT'
      'SOMA_VALOR=SOMA_VALOR'
      'Total_Lucro=Total_Lucro'
      'ACRESC=ACRESC'
      'DESCONTO=DESCONTO'
      'SOMA_CUSTO_LOJA=SOMA_CUSTO_LOJA'
      'PADRAO_COMP=PADRAO_COMP'
      'PADRAO_LARG=PADRAO_LARG'
      'PADRAO_ESPESSURA=PADRAO_ESPESSURA'
      'Cubagem=Cubagem'
      'COMP=COMP'
      'LARG=LARG'
      'ESPESSURA=ESPESSURA'
      'QTDADEPECA=QTDADEPECA'
      'IMPOSTOS=IMPOSTOS')
    DataSet = Produtos_Agrupados
    BCDToCurrency = False
    Left = 90
    Top = 4
  end
  object VendasComParcelas_Parcelas: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = VendasComParcelas_ParcelasBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DSVendas
    ParamCheck = True
    SQL.Strings = (
      'select *'
      'from FINANCEIRO'
      'where (CODPEDIDO = :CODIGO)'
      '      and (STATUS like '#39'ATIVO%'#39')')
    Left = 581
    Top = 327
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
  end
  object DSVendasComParcelas_Parcelas: TDataSource
    DataSet = VendasComParcelas_Parcelas
    Left = 609
    Top = 327
  end
  object DSVendas: TDataSource
    DataSet = Vendas
    Left = 609
    Top = 213
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'VendasComParcelas_Parcelas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODPEDIDO=CODPEDIDO'
      'CODEMPRESA=CODEMPRESA'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'DOCUMENTO=DOCUMENTO'
      'NOTAFISCAL=NOTAFISCAL'
      'HISTORICO=HISTORICO'
      'EMISSAO=EMISSAO'
      'VENCTO=VENCTO'
      'DATAPAGTO=DATAPAGTO'
      'VALOR=VALOR'
      'JUROS=JUROS'
      'DESCONTO=DESCONTO'
      'CODPLANOCONTAS=CODPLANOCONTAS'
      'CODTIPOPAGTO=CODTIPOPAGTO'
      'TIPOPAGTO=TIPOPAGTO'
      'CODCONDICAOPAGTO=CODCONDICAOPAGTO'
      'CONDICAOPAGTO=CONDICAOPAGTO'
      'CONTATOS=CONTATOS'
      'PARCELA=PARCELA'
      'CODUSUARIO=CODUSUARIO'
      'TIPO=TIPO'
      'STATUS=STATUS'
      'CHEQUE_NUMERO=CHEQUE_NUMERO'
      'BOLETO_NOSSO_NR=BOLETO_NOSSO_NR'
      'CODNF_ENTRADA=CODNF_ENTRADA'
      'DT_NOTAFISCAL=DT_NOTAFISCAL'
      'CODFINANCEIRO_GRUPO=CODFINANCEIRO_GRUPO'
      'DT_EXCLUSAO=DT_EXCLUSAO'
      'MOTIVO_EXCLUSAO=MOTIVO_EXCLUSAO'
      'COR=COR'
      'IMPRESSO=IMPRESSO'
      'COMISSAO_PAGA=COMISSAO_PAGA'
      'RECIBO_IMPRESSO=RECIBO_IMPRESSO'
      'DT_ALTERACAO=DT_ALTERACAO'
      'CODCONTA=CODCONTA'
      'AGRUPADOR=AGRUPADOR'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA')
    DataSet = VendasComParcelas_Parcelas
    BCDToCurrency = False
    Left = 553
    Top = 327
  end
  object WREventosCadastro1: TWREventosCadastro
    OnPreencheVariaveisImpressaoPersonalizada = WREventosCadastro1PreencheVariaveisImpressaoPersonalizada
    OnImpressaoDefineEnableControles = WREventosCadastro1ImpressaoDefineEnableControles
    Versao_Configuracao = 0
    Empresa = 0
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    Left = 90
    Top = 32
  end
end
