object FormMarkup: TFormMarkup
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Extras (Impostos/Descontos/Acr'#233'scimos)'
  ClientHeight = 611
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 298
    Top = 95
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Label'
    Color = 16505534
    ParentColor = False
    Transparent = False
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 334
    Height = 611
    Align = alClient
    TabOrder = 0
    object edtNf_vICMSST: TcxDBCurrencyEdit
      Left = 152
      Top = 124
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'CALC_PVENDA_IMPOSTOS'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 95
    end
    object edtCalc_VCompra_Extra: TcxDBCurrencyEdit
      Left = 132
      Top = 463
      AutoSize = False
      DataBinding.DataField = 'CALC_PMARKUP'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 33
      Height = 21
      Width = 127
    end
    object cxButton1: TcxButton
      Left = 0
      Top = 581
      Width = 334
      Height = 25
      Caption = 'Fechar'
      TabOrder = 40
      OnClick = cxButton1Click
    end
    object cxLabel1: TcxLabel
      Left = 0
      Top = 5
      Caption = 'Markup'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3815994
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 167
    end
    object edtNF_IPI_VIPI: TcxDBCurrencyEdit
      Left = 152
      Top = 102
      DataBinding.DataField = 'CALC_PVENDA_IMPOSTO_IPI'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.HotTrack = False
      TabOrder = 5
      Width = 81
    end
    object edtNF_VFrete: TcxDBCurrencyEdit
      Left = 152
      Top = 322
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_FRETE'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 24
      Width = 96
    end
    object edtVOutro: TcxDBCurrencyEdit
      Left = 152
      Top = 212
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_OUTRO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 14
      Width = 96
    end
    object edtVDesc: TcxDBCurrencyEdit
      Left = 132
      Top = 511
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_DESCONTO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 36
      Width = 127
    end
    object edtLucro: TcxDBCurrencyEdit
      Left = 132
      Top = 419
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_LUCRO_DESEJADO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 11333821
      Style.HotTrack = False
      TabOrder = 31
      Width = 127
    end
    object edtNF_Calc_VCompra_Extra: TcxDBCurrencyEdit
      Left = 152
      Top = 146
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      DataBinding.DataField = 'CALC_PVENDA_CUSTO_FIXO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 8
      Width = 96
    end
    object edtCusto_Variavel: TcxDBCurrencyEdit
      Left = 152
      Top = 168
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_CUSTO_VARIAVEL'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 10
      Width = 96
    end
    object edtCusto_Financeiro: TcxDBCurrencyEdit
      Left = 152
      Top = 190
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_CUSTO_FINANCEIRO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 12
      Width = 96
    end
    object edtCusto_Representante: TcxDBCurrencyEdit
      Left = 152
      Top = 234
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_COMISSAO_REP'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 16
      Width = 96
    end
    object edtComissaoFuncionario: TcxDBCurrencyEdit
      Left = 152
      Top = 256
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_COMISSAO_FUN'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 18
      Width = 96
    end
    object edtComissao_Agencia: TcxDBCurrencyEdit
      Left = 152
      Top = 278
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_COMISSAO_AGENCIA'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 20
      Width = 96
    end
    object edtComissaoProducao: TcxDBCurrencyEdit
      Left = 152
      Top = 300
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_COMISSAO_PRODUCAO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 22
      Width = 96
    end
    object lblPVendaTotal: TcxCurrencyEdit
      Left = 132
      Top = 441
      AutoSize = False
      EditValue = 0.000000000000000000
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 32
      Height = 21
      Width = 127
    end
    object cxDBCurrencyEdit9: TcxDBCurrencyEdit
      Left = 132
      Top = 485
      Margins.Top = 0
      DataBinding.DataField = 'CALC_VENDA_MINIMO_VALOR'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.ReadOnly = True
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 13303807
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 34
      Width = 126
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 132
      Top = 533
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PMARGEM_CONTRIBUICAO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnChange = cxDBCurrencyEdit1PropertiesChange
      Properties.OnValidate = cxDBCurrencyEdit1PropertiesValidate
      Style.Color = 10542997
      Style.HotTrack = False
      TabOrder = 37
      Width = 127
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 132
      Top = 555
      Margins.Top = 0
      DataBinding.DataField = 'CALC_VVENDA_SUGERIDO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.ReadOnly = True
      Properties.OnChange = cxDBCurrencyEdit2PropertiesChange
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 13303807
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 38
      Width = 126
    end
    object cxButton2: TcxButton
      Left = 259
      Top = 555
      Width = 75
      Height = 25
      Caption = 'Aplicar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
        72733B526962626F6E3B6463C8680000037D49444154785E4D8E7F4C94051CC6
        3FEF7B77E02073EA92742577579B684891E62AB6C4526B6013696BC9DC5A0B33
        D0322DA716D3CA94A21A8E96E976AEB654688E409B46B859CC249500E3F81588
        234EE0F875DC1DF7A3BB7BDFF7DBC16AEBD9F3D9BEFF3CCFF7C13555CB58A801
        40014CC5E5696BF638D24FBEF7EDF2D683550F7B0E5666B4969C5A5EBBEBCB65
        2F0209803A116E6438F82377A66A60385007A0E4EFB2A5BC51B1B4AEF4EC5AB9
        D476583A87AA642C7055BA47CE4A43F72752713157F67D93DE54B0DFBE04308D
        867E9E290050725F4BBDB7F8E8B29EAA86B7C4E5BF203DDEE3D23E71585AC6F6
        48E7E4C7D2E777C870A05E7E68DE277B4F668C6EDE6BCF00D4017F350A607EF5
        48DAB99CECBC9CF4343BC3E1264CAA60C282AAA8288A028A30313E852DE509EE
        0C4D72EEF26967CD17FD4F0EDE0A064DF9BBEDEB6CD6C51F3C9DF5382EFF1540
        104014216E500C2ED6DDA4F67C3BEDB79BC9C95EC3E8F8784AD28288BBADC1D3
        6C4E98652A7C2C7D2543816674430304C4885B0755E1CC99EBCC51D750F14E35
        DBCB32E91DF98DCCA5ABE8FCB36733E0500D3132EF9EAB108C7AE9ED1BA6B4AC
        969F2E39896A11CE5F68212529975D5B4A395A59C40B79CF6049D0489AAD81AA
        3C0A9854436741140FE148809AEA16CA8AAEA34C65F1E9E7F524EBEBD99A7F80
        53751FB2707118EB836642311F31C63174497C286BEE6C55D3F48971DF2088C1
        A60D6BF9BAB6849D0547D8FD520D2F3F5F822FD8C7AFCEEF58B16A11FEC82831
        3DC6A87F8868C488745C9D0C9AF5A8D2E51EF15BE72FD248B127E2F5FE8DE3FB
        FDEC28280755E1FDCFB691BF310B6FC48566C4C030F08D458984B40E4057837E
        ADAAA7CB87A0E2090EB2E491594C1A4DD45C2EC779AB0E53B287C4399384A353
        718288A8F4767B09F8F4F380069094BBDD7AB3E474869CB8B1428E5DCB90AAB6
        0DB2E59055B2B621C72EAF93134D99723C8EE3F79572A83A5336EEB439EF9A67
        990FA82A1071F7855EF9E35AC0D3EB0C010A9EF000799B56F1EEDBAFC7BF87D0
        0D411185BEEE30AD8DFE88AB2B501CF0C4FC5706DE34CC0D7F15E9AB53BF6A17
        784ED78C4AB72BF6803DDD82B6B013D5A420064CB875FABB628CB8A21DEEDBA1
        A2D6FAB11B8066480C7EE92F045000737CD6BCA736DFB77F7D616A63EE769BCC
        B0C326CF6E4D6D5B5D70FF47C9732CF700164099CE4D3373FCA76CAB43052CFF
        62065440001D884E130F19FC4FFF00FE20CB5D5DF1FFF30000000049454E44AE
        426082}
      TabOrder = 39
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 259
      Top = 485
      Width = 75
      Height = 25
      Caption = 'Aplicar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
        72733B526962626F6E3B6463C8680000037D49444154785E4D8E7F4C94051CC6
        3FEF7B77E02073EA92742577579B684891E62AB6C4526B6013696BC9DC5A0B33
        D0322DA716D3CA94A21A8E96E976AEB654688E409B46B859CC249500E3F81588
        234EE0F875DC1DF7A3BB7BDFF7DBC16AEBD9F3D9BEFF3CCFF7C13555CB58A801
        40014CC5E5696BF638D24FBEF7EDF2D683550F7B0E5666B4969C5A5EBBEBCB65
        2F0209803A116E6438F82377A66A60385007A0E4EFB2A5BC51B1B4AEF4EC5AB9
        D476583A87AA642C7055BA47CE4A43F72752713157F67D93DE54B0DFBE04308D
        867E9E290050725F4BBDB7F8E8B29EAA86B7C4E5BF203DDEE3D23E71585AC6F6
        48E7E4C7D2E777C870A05E7E68DE277B4F668C6EDE6BCF00D4017F350A607EF5
        48DAB99CECBC9CF4343BC3E1264CAA60C282AAA8288A028A30313E852DE509EE
        0C4D72EEF26967CD17FD4F0EDE0A064DF9BBEDEB6CD6C51F3C9DF5382EFF1540
        104014216E500C2ED6DDA4F67C3BEDB79BC9C95EC3E8F8784AD28288BBADC1D3
        6C4E98652A7C2C7D2543816674430304C4885B0755E1CC99EBCC51D750F14E35
        DBCB32E91DF98DCCA5ABE8FCB36733E0500D3132EF9EAB108C7AE9ED1BA6B4AC
        969F2E39896A11CE5F68212529975D5B4A395A59C40B79CF6049D0489AAD81AA
        3C0A9854436741140FE148809AEA16CA8AAEA34C65F1E9E7F524EBEBD99A7F80
        53751FB2707118EB836642311F31C63174497C286BEE6C55D3F48971DF2088C1
        A60D6BF9BAB6849D0547D8FD520D2F3F5F822FD8C7AFCEEF58B16A11FEC82831
        3DC6A87F8868C488745C9D0C9AF5A8D2E51EF15BE72FD248B127E2F5FE8DE3FB
        FDEC28280755E1FDCFB691BF310B6FC48566C4C030F08D458984B40E4057837E
        ADAAA7CB87A0E2090EB2E491594C1A4DD45C2EC779AB0E53B287C4399384A353
        718288A8F4767B09F8F4F380069094BBDD7AB3E474869CB8B1428E5DCB90AAB6
        0DB2E59055B2B621C72EAF93134D99723C8EE3F79572A83A5336EEB439EF9A67
        990FA82A1071F7855EF9E35AC0D3EB0C010A9EF000799B56F1EEDBAFC7BF87D0
        0D411185BEEE30AD8DFE88AB2B501CF0C4FC5706DE34CC0D7F15E9AB53BF6A17
        784ED78C4AB72BF6803DDD82B6B013D5A420064CB875FABB628CB8A21DEEDBA1
        A2D6FAB11B8066480C7EE92F045000737CD6BCA736DFB77F7D616A63EE769BCC
        B0C326CF6E4D6D5B5D70FF47C9732CF700164099CE4D3373FCA76CAB43052CFF
        62065440001D884E130F19FC4FFF00FE20CB5D5DF1FFF30000000049454E44AE
        426082}
      TabOrder = 35
      OnClick = cxButton3Click
    end
    object lblVImpostos: TcxLabel
      Left = 248
      Top = 124
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 76
      AnchorX = 324
      AnchorY = 135
    end
    object lblVCustosVariaveis: TcxLabel
      Left = 249
      Top = 168
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 75
      AnchorX = 324
      AnchorY = 179
    end
    object lblVCustosFixos: TcxLabel
      Left = 249
      Top = 146
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 75
      AnchorX = 324
      AnchorY = 157
    end
    object lblVCustosFinanceiros: TcxLabel
      Left = 249
      Top = 190
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 75
      AnchorX = 324
      AnchorY = 201
    end
    object lblVOutrosCustos: TcxLabel
      Left = 249
      Top = 212
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 75
      AnchorX = 324
      AnchorY = 223
    end
    object lblVComissaoRep: TcxLabel
      Left = 249
      Top = 234
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 75
      AnchorX = 324
      AnchorY = 245
    end
    object lblVComissaoFun: TcxLabel
      Left = 249
      Top = 256
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 75
      AnchorX = 324
      AnchorY = 267
    end
    object lblVComissaoAg: TcxLabel
      Left = 249
      Top = 278
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 75
      AnchorX = 324
      AnchorY = 289
    end
    object lblVComissaoProd: TcxLabel
      Left = 249
      Top = 300
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 75
      AnchorX = 324
      AnchorY = 311
    end
    object lblVFrete: TcxLabel
      Left = 249
      Top = 322
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 75
      AnchorX = 324
      AnchorY = 333
    end
    object lblVValorSugerido: TcxLabel
      Left = 132
      Top = 31
      Caption = '0,00'
      ParentColor = False
      ParentFont = False
      Style.Color = clSilver
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 324
      AnchorY = 42
    end
    object lblVSaldoSemMateriais: TcxLabel
      Left = 132
      Top = 78
      Caption = '0,00'
      ParentColor = False
      ParentFont = False
      Style.Color = clSilver
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 324
      AnchorY = 88
    end
    object lblPCustoMateriais: TcxLabel
      Left = 152
      Top = 57
      Caption = '0,00'
      ParentColor = False
      ParentFont = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 178
      AnchorY = 66
    end
    object lblVCustoMateriais: TcxLabel
      Left = 179
      Top = 57
      Caption = '0,00'
      ParentColor = False
      ParentFont = False
      Style.Color = 16505534
      Properties.Alignment.Horz = taRightJustify
      Transparent = True
      AnchorX = 324
    end
    object lblPLucroEfetivo: TcxLabel
      Left = 132
      Top = 369
      Caption = '0,00'
      ParentColor = False
      ParentFont = False
      Style.Color = clSilver
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 164
      AnchorY = 378
    end
    object cxLabel3: TcxLabel
      Left = 0
      Top = 396
      Caption = 'Lucro e Margem de Contribui'#231#227'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3815994
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 167
    end
    object lblVLucroEfetivo: TcxLabel
      Left = 170
      Top = 366
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      ParentFont = False
      Style.Color = clSilver
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 154
      AnchorX = 324
      AnchorY = 378
    end
    object edtPPerdasProducao: TcxDBCurrencyEdit
      Left = 152
      Top = 344
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CALC_PVENDA_PERDA_PRODUCAO'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 26
      Height = 21
      Width = 96
    end
    object lblVPerdasProducao: TcxLabel
      Left = 249
      Top = 344
      AutoSize = False
      Caption = '0,00'
      ParentColor = False
      Style.Color = 16505534
      Style.HotTrack = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 75
      AnchorX = 324
      AnchorY = 355
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Hidden = True
      ItemIndex = 20
      ShowBorder = False
      Index = -1
    end
    object LiedtNf_vICMSST: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Impostos'
      Control = edtNf_vICMSST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtCalc_VCompra_Extra: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Markup'
      Control = edtCalc_VCompra_Extra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 20
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 25
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 2
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtNF_IPI_VIPI: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      Visible = False
      Padding.Left = 30
      Padding.Right = 76
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'IPI'
      Control = edtNF_IPI_VIPI
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LiedtNF_VFrete: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup11
      AlignHorz = ahLeft
      AlignVert = avTop
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Frete'
      Control = edtNF_VFrete
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtVOutro: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahLeft
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Outros Custos'
      Control = edtVOutro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtVDesc: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Desconto Permitido %'
      Control = edtVDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 22
    end
    object LiLucro: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight, lpavTop]
      CaptionOptions.Text = 'Lucro Previsto'
      Control = edtLucro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 18
    end
    object LiedtNF_Calc_VCompra_Extra: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Custos Fixos'
      Control = edtNF_Calc_VCompra_Extra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtNF_Calc_VCusto_Variavel: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Custos Vari'#225'veis'
      Control = edtCusto_Variavel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtCALC_PVENDA_CUSTO_FINANCEIRO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Custos Financeiros'
      Control = edtCusto_Financeiro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtCALC_PVENDA_COMISSAO_REP: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahLeft
      AlignVert = avTop
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Comiss'#227'o Rep.'
      Control = edtCusto_Representante
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtCALC_PVENDA_COMISSAO_FUN: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahLeft
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Comiss'#227'o Funcion'#225'rio'
      Control = edtComissaoFuncionario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtCALC_PVENDA_COMISSAO_AGENCIA: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahLeft
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Comiss'#227'o Ag'#234'ncia'
      Control = edtComissao_Agencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtLiedtCALC_PVENDA_COMISSAO_PRODUCAO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup10
      AlignHorz = ahLeft
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Comiss'#227'o Produ'#231#227'o'
      Control = edtComissaoProducao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Total % Sobre a Venda'
      Control = lblPVendaTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 19
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Pre'#231'o M'#237'nimo Venda'
      Control = cxDBCurrencyEdit9
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtCALC_PMARGEM_CONTRIBUICAO: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Margem Contribui'#231#227'o%'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 23
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Valor Sugerido de Venda'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LibtnAplicaValorSugerido: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 24
    end
    object LibtnAplicaPrecoMinimo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 21
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Label1'
      CaptionOptions.Visible = False
      Control = lblVImpostos
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVCustosVariaveis
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVCustosFixos
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVCustosFinanceiros
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVOutrosCustos
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVComissaoRep
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVComissaoFun
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 7
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 8
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 9
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 10
    end
    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 11
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVComissaoAg
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVComissaoProd
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVFrete
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 12
    end
    object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 13
    end
    object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 14
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup3
      Padding.Bottom = 3
      Padding.Left = 10
      Padding.Right = 10
      Padding.Top = 3
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      CaptionOptions.Text = 'Valor Sugerido de Venda'
      Control = lblVValorSugerido
      ControlOptions.AlignVert = avCenter
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup2
      Padding.Bottom = 3
      Padding.Left = 10
      Padding.Right = 10
      Padding.Top = 3
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      CaptionOptions.Text = 'Saldo sem materiais'
      Control = lblVSaldoSemMateriais
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignHorz = ahLeft
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft]
      CaptionOptions.Text = 'Custo Materiais'
      Control = lblPCustoMateriais
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignHorz = ahClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVCustoMateriais
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      Padding.Bottom = 3
      Padding.Left = 10
      Padding.Top = 3
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      CaptionOptions.Text = 'Lucro Efetivo'
      Control = lblPLucroEfetivo
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 32
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 16
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Padding.Bottom = 2
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavTop]
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 17
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVLucroEfetivo
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtPPerdasProducao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup13
      AlignHorz = ahLeft
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft]
      CaptionOptions.Text = 'Perdas de Produ'#231#227'o'
      Control = edtPPerdasProducao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup13
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Visible = False
      Control = lblVPerdasProducao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 15
    end
  end
  object DS: TDataSource
    OnStateChange = DSStateChange
    Left = 121
    Top = 64
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 149
    Top = 64
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = False
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = 7237230
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.Padding.AssignedValues = [lpavTop]
      ItemOptions.Padding.Top = 2
      ItemOptions.ControlBorderStyle = lbsFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.ScrollbarMode = sbmDefault
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = 7237230
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderStyle = lbsFlat
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = True
      LookAndFeel.ScrollbarMode = sbmDefault
      PixelsPerInch = 96
    end
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      GroupOptions.Color = clSilver
      PixelsPerInch = 96
    end
  end
  object WRCalc: TWRCalculaConfiguracoes
    DSVendaOuCompra = DS
    TipoCalculo = tcCompra
    SPrTipoCalc = tssCalcCompra
    Left = 77
    Top = 62
  end
end
