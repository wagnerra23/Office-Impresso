object ImpriEntradas: TImpriEntradas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Entradas'
  ClientHeight = 379
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient3: TGradient
    Left = 0
    Top = 0
    Width = 357
    Height = 379
    Align = alClient
    ColorEnd = 16756834
    Style = gsRadialTR
    ExplicitTop = -52
    ExplicitWidth = 352
    ExplicitHeight = 593
  end
  object Label3: TLabel
    Left = 5
    Top = 119
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
  object Label4: TLabel
    Left = 115
    Top = 119
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
  object Label2: TLabel
    Left = 3
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
  object LblProdutoGrupoÎProduto_GrupoÎDESCRICAO: TLabel
    Left = 82
    Top = 235
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
  object Label8: TLabel
    Left = 7
    Top = 221
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
  object LblMarcaÎProduto_MarcaÎDESCRICAO: TLabel
    Left = 82
    Top = 274
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
  object Label12: TLabel
    Left = 7
    Top = 260
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
  object Label13: TLabel
    Left = 8
    Top = 299
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
  object LblFornecedorÎPessoasÎRAZAOSOCIAL: TLabel
    Left = 82
    Top = 313
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
  object LblProdutoÎProdutoÎDESCRICAO: TLabel
    Left = 82
    Top = 194
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
  object Label6: TLabel
    Left = 8
    Top = 158
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
  object Label17: TLabel
    Left = 261
    Top = 119
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
  object CheckDescItem: TCheckBox
    Left = 8
    Top = 177
    Width = 166
    Height = 17
    Caption = 'Descrimina'#231#227'o por item'
    Color = 16763541
    ParentColor = False
    TabOrder = 0
  end
  object RadioTipoSelecao: TRadioGroup
    Left = 2
    Top = 45
    Width = 170
    Height = 67
    Caption = 'Selecione'
    ItemIndex = 0
    Items.Strings = (
      'Faturados'
      'N'#227'o Faturados'
      'Todos')
    TabOrder = 1
  end
  object ComboEmpresa: TComboBox
    Left = 2
    Top = 21
    Width = 347
    Height = 21
    Style = csDropDownList
    Color = clWhite
    ItemIndex = 0
    TabOrder = 2
    Text = 'TODAS AS EMPRESAS'
    Items.Strings = (
      'TODAS AS EMPRESAS')
  end
  object DataInicial: TcxDateEdit
    Left = 2
    Top = 132
    AutoSize = False
    Properties.ShowTime = False
    TabOrder = 3
    Height = 21
    Width = 108
  end
  object DataFinal: TcxDateEdit
    Left = 112
    Top = 132
    AutoSize = False
    Properties.ShowTime = False
    TabOrder = 4
    Height = 21
    Width = 108
  end
  object EdtProdutoÎProduto: TcxButtonEdit
    Left = 5
    Top = 196
    AutoSize = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    TabOrder = 5
    Height = 21
    Width = 76
  end
  object EdtProdutoGrupoÎProduto_Grupo: TcxButtonEdit
    Left = 5
    Top = 235
    AutoSize = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    TabOrder = 6
    Height = 21
    Width = 76
  end
  object EdtMarcaÎProduto_Marca: TcxButtonEdit
    Left = 5
    Top = 274
    AutoSize = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    TabOrder = 7
    Height = 21
    Width = 76
  end
  object ComboTipoProduto: TComboBox
    Left = 105
    Top = 156
    Width = 244
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 8
    Text = 'TODOS'
    Items.Strings = (
      'TODOS')
  end
  object ComboOrderBy: TComboBox
    Left = 249
    Top = 133
    Width = 100
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 9
    Text = 'Produto'
    Items.Strings = (
      'Produto'
      'C'#243'digo'
      'Quantidade'
      'Valor Custo'
      'Valor Venda')
  end
  object CkQuant: TCheckBox
    Left = 178
    Top = 59
    Width = 97
    Height = 17
    Caption = 'Quant.'
    Checked = True
    State = cbChecked
    TabOrder = 10
  end
  object CkCusto: TCheckBox
    Left = 178
    Top = 75
    Width = 97
    Height = 17
    Caption = 'Custo Loja'
    Checked = True
    State = cbChecked
    TabOrder = 11
  end
  object CkValor: TCheckBox
    Left = 178
    Top = 91
    Width = 97
    Height = 17
    Caption = 'Valor'
    Checked = True
    State = cbChecked
    TabOrder = 12
  end
  object BtnVisualizar: TBitBtn
    Left = 5
    Top = 344
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
    TabOrder = 13
    OnClick = BtnVisualizarClick
  end
  object BtnFechar: TBitBtn
    Left = 180
    Top = 344
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
    ModalResult = 11
    TabOrder = 14
  end
  object EdtFornecedorÎPessoas: TcxButtonEdit
    Left = 5
    Top = 313
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
    TabOrder = 15
    Height = 21
    Width = 76
  end
  object cxDateProfileButton1: TcxDateProfileButton
    Left = 220
    Top = 132
    Width = 21
    Height = 21
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
    TabOrder = 16
    DateEditInicio = DataInicial
    DateEditFim = DataFinal
  end
  object Produtos_Agrupados: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select EP.CODPRODUTO, EP.DESCRICAO, P.UNIDADE, P.CODPRODUTO_GRUP' +
        'O, sum(EP.QUANT) as SOMA_QUANT,'
      
        '       sum(EP.QUANT * EP.CUSTO_LOJA) as SOMA_CUSTO_LOJA, sum(EP.' +
        'QUANT * EP.VALOR) as SOMA_VALOR, sum(EP.QUANT * EP.CUSTO_FABR) a' +
        's SOMA_CUSTO_FABR'
      ''
      'from NF_ENTRADA_PRODUTOS EP'
      'left join NF_ENTRADA E on (E.CODIGO = EP.CODNF_ENTRADA)'
      'left join PRODUTO P on (EP.CODPRODUTO = P.CODIGO)'
      ''
      
        'group by EP.CODPRODUTO, EP.DESCRICAO, P.UNIDADE, P.CODPRODUTO_GR' +
        'UPO'
      ''
      'order by EP.DESCRICAO  '
      ''
      ' '
      ' '
      ' ')
    Left = 103
    Top = 4
    object Produtos_AgrupadosCODPRODUTO: TIBStringField
      FieldName = 'CODPRODUTO'
      Origin = '"NF_ENTRADA_PRODUTOS"."CODPRODUTO"'
      Size = 15
    end
    object Produtos_AgrupadosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"NF_ENTRADA_PRODUTOS"."DESCRICAO"'
      Size = 300
    end
    object Produtos_AgrupadosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PRODUTO"."UNIDADE"'
      Size = 3
    end
    object Produtos_AgrupadosCODPRODUTO_GRUPO: TIBStringField
      FieldName = 'CODPRODUTO_GRUPO'
      Origin = '"PRODUTO"."CODPRODUTO_GRUPO"'
      Size = 15
    end
    object Produtos_AgrupadosSOMA_QUANT: TFloatField
      FieldName = 'SOMA_QUANT'
      ProviderFlags = []
    end
    object Produtos_AgrupadosSOMA_CUSTO_LOJA: TFloatField
      FieldName = 'SOMA_CUSTO_LOJA'
      ProviderFlags = []
    end
    object Produtos_AgrupadosSOMA_VALOR: TFloatField
      FieldName = 'SOMA_VALOR'
      ProviderFlags = []
    end
    object Produtos_AgrupadosSOMA_CUSTO_FABR: TFloatField
      FieldName = 'SOMA_CUSTO_FABR'
      ProviderFlags = []
    end
  end
  object frxEntradas: TfrxDBDataset
    UserName = 'Produtos_Agrupados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'DESCRICAO=DESCRICAO'
      'UNIDADE=UNIDADE'
      'CODPRODUTO_GRUPO=CODPRODUTO_GRUPO'
      'SOMA_QUANT=SOMA_QUANT'
      'SOMA_CUSTO_LOJA=SOMA_CUSTO_LOJA'
      'SOMA_VALOR=SOMA_VALOR'
      'SOMA_CUSTO_FABR=SOMA_CUSTO_FABR')
    DataSet = Produtos_Agrupados
    BCDToCurrency = False
    Left = 75
    Top = 4
  end
  object UCHistWRGeral1: TUCHistWRGeral
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    Left = 131
    Top = 4
  end
  object WREventosCadastro1: TWREventosCadastro
    OnPreencheVariaveisImpressaoPersonalizada = WREventosCadastro1PreencheVariaveisImpressaoPersonalizada
    Versao_Configuracao = 0
    Empresa = 0
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    Left = 159
    Top = 4
  end
end
