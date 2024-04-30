object FormLucroPrevisto: TFormLucroPrevisto
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Extras (Impostos/Descontos/Acr'#233'scimos)'
  ClientHeight = 688
  ClientWidth = 362
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 362
    Height = 688
    Align = alClient
    TabOrder = 0
    object edtNf_vICMSST: TcxDBCurrencyEdit
      Left = 246
      Top = 443
      AutoSize = False
      DataBinding.DataField = 'NF_PICMSST'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 36
      Height = 21
      Width = 54
    end
    object edtCalc_PTotal_Impostos: TcxDBCurrencyEdit
      Left = 131
      Top = 587
      AutoSize = False
      DataBinding.DataField = 'TOTAL_IMPOSTOS'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 53
      Height = 21
      Width = 81
    end
    object cxButton1: TcxButton
      Left = 0
      Top = 634
      Width = 378
      Height = 25
      Caption = 'Fechar'
      TabOrder = 56
      OnClick = cxButton1Click
    end
    object cxLabel1: TcxLabel
      Left = 0
      Top = 0
      Caption = 'Lucro Previsto'
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
      AnchorX = 189
    end
    object edtNF_IPI_VIPI: TcxDBCurrencyEdit
      Left = 246
      Top = 553
      DataBinding.DataField = 'NF_IPI_PIPI'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 51
      Width = 54
    end
    object edtNF_VFrete: TcxDBCurrencyEdit
      Left = 131
      Top = 158
      Margins.Top = 0
      DataBinding.DataField = 'NF_VFRETE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 172
    end
    object edtPOutro: TcxDBCurrencyEdit
      Left = 131
      Top = 65
      Margins.Top = 0
      DataBinding.DataField = 'CALC_POUTRO_MANUAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 88
    end
    object edtPDesc: TcxDBCurrencyEdit
      Left = 131
      Top = 43
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PDESC_MANUAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 88
    end
    object edtLucroPrevisto: TcxDBCurrencyEdit
      Left = 131
      Top = 609
      Margins.Top = 0
      DataBinding.DataField = 'CALC_VLUCRO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnChange = edtLucroPropertiesChange
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 11333821
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 55
      Width = 172
    end
    object edtNF_Calc_VCompra_Extra: TcxDBCurrencyEdit
      Left = 131
      Top = 202
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_CUSTO_FIXO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 15132415
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 72
    end
    object edtCusto_Variavel: TcxDBCurrencyEdit
      Left = 131
      Top = 224
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_CUSTO_VARIAVEL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 15132415
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 17
      Width = 72
    end
    object edtCusto_Financeiro: TcxDBCurrencyEdit
      Left = 131
      Top = 246
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_CUSTO_FINANCEIRO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 15132415
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 19
      Width = 72
    end
    object edtCusto_Representante: TcxDBCurrencyEdit
      Left = 131
      Top = 312
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_COMISSAO_REP'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 24
      Width = 81
    end
    object edtComissaoFuncionario: TcxDBCurrencyEdit
      Left = 131
      Top = 334
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_COMISSAO_FUN'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 26
      Width = 81
    end
    object edtComissao_Agencia: TcxDBCurrencyEdit
      Left = 131
      Top = 356
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_COMISSAO_AGENCIA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 28
      Width = 88
    end
    object edtComissaoProducao: TcxDBCurrencyEdit
      Left = 131
      Top = 290
      Margins.Top = 0
      DataBinding.DataField = 'CALC_PVENDA_COMISSAO_PRODUCAO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 22
      Width = 81
    end
    object cxVBaseCalculo: TcxCurrencyEdit
      Left = 131
      Top = 180
      AutoSize = False
      ParentShowHint = False
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00;-,0.00'
      ShowHint = True
      Style.Color = clMoneyGreen
      Style.HotTrack = False
      TabOrder = 14
      Height = 21
      Width = 172
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 131
      Top = 87
      Margins.Top = 0
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 10542997
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 172
    end
    object cxDBPDesc: TcxDBCurrencyEdit
      Left = 131
      Top = 112
      Margins.Top = 0
      DataBinding.DataField = 'PDESC'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
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
      TabOrder = 8
      Width = 36
    end
    object cxButton2: TcxButton
      Left = 303
      Top = 356
      Width = 75
      Height = 22
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
      TabOrder = 30
      OnClick = cxButton2Click
    end
    object edtValor_Original: TcxDBCurrencyEdit
      Left = 131
      Top = 21
      AutoSize = False
      DataBinding.DataField = 'CALC_VALOR_ORIGINAL'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 1
      Height = 21
      Width = 172
    end
    object cbxTipo_Desconto: TcxDBComboBox
      Left = 303
      Top = 43
      AutoSize = False
      DataBinding.DataField = 'CALC_TIPO_DESCONTO'
      DataBinding.DataSource = DS
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 75
    end
    object cxDBPOutro: TcxDBCurrencyEdit
      Left = 131
      Top = 135
      Margins.Top = 0
      DataBinding.DataField = 'POUTRO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.ReadOnly = True
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 13303807
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 81
    end
    object edtVDesc: TcxDBCurrencyEdit
      Left = 220
      Top = 43
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CALC_VDESC_MANUAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 21
      Width = 82
    end
    object edtVOutro: TcxDBCurrencyEdit
      Left = 220
      Top = 65
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CALC_VOUTRO_MANUAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 21
      Width = 82
    end
    object cxDBVDesc: TcxDBCurrencyEdit
      Left = 168
      Top = 112
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'VDESC'
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
      TabOrder = 9
      Height = 22
      Width = 54
    end
    object cxDBVOutro: TcxDBCurrencyEdit
      Left = 213
      Top = 135
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'VOUTRO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.ReadOnly = True
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 13303807
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Height = 22
      Width = 90
    end
    object cxDBCurrencyEdit11: TcxDBCurrencyEdit
      Left = 301
      Top = 553
      AutoSize = False
      DataBinding.DataField = 'NF_IPI_VIPI'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00;-,0.00'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 52
      Height = 21
      Width = 65
    end
    object cxDBCurrencyEdit12: TcxDBCurrencyEdit
      Left = 301
      Top = 443
      AutoSize = False
      DataBinding.DataField = 'NF_VICMSST'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00;-,0.00'
      Properties.OnValidate = edtVDescPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 37
      Height = 21
      Width = 65
    end
    object cxVComissaoRepresentante: TcxCurrencyEdit
      Left = 213
      Top = 312
      Margins.Top = 0
      AutoSize = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 25
      Height = 21
      Width = 90
    end
    object cxVComissaoFuncionario: TcxCurrencyEdit
      Left = 213
      Top = 334
      Margins.Top = 0
      AutoSize = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 27
      Height = 21
      Width = 90
    end
    object cxVComissaoAgencia: TcxCurrencyEdit
      Left = 220
      Top = 356
      Margins.Top = 0
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 29
      Width = 82
    end
    object cxVComissaoProducao: TcxCurrencyEdit
      Left = 213
      Top = 290
      Margins.Top = 0
      AutoSize = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 23
      Height = 21
      Width = 90
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 53
      Top = 443
      AutoSize = False
      DataBinding.DataField = 'NF_VBCST'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 35
      Height = 21
      Width = 192
    end
    object cxVTotalComissoes: TcxCurrencyEdit
      Left = 131
      Top = 379
      AutoSize = False
      EditValue = 0.000000000000000000
      ParentShowHint = False
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00;-,0.00'
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 31
      Height = 21
      Width = 172
    end
    object cxVTotalCustos: TcxCurrencyEdit
      Left = 131
      Top = 268
      AutoSize = False
      EditValue = 0.000000000000000000
      ParentShowHint = False
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00;-,0.00'
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 172
    end
    object cxDBCurrencyEdit9: TcxDBCurrencyEdit
      Left = 246
      Top = 421
      AutoSize = False
      DataBinding.DataField = 'NF_PICMS'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 33
      Height = 21
      Width = 55
    end
    object cxDBCurrencyEdit20: TcxDBCurrencyEdit
      Left = 301
      Top = 421
      AutoSize = False
      DataBinding.DataField = 'NF_VICMS'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00;-,0.00'
      Properties.OnValidate = edtVDescPropertiesValidate
      ShowHint = True
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 34
      Height = 21
      Width = 65
    end
    object cxDBButtonEdit3: TcxDBButtonEdit
      Left = 53
      Top = 421
      AutoSize = False
      DataBinding.DataField = 'NF_VBC'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 32
      Height = 21
      Width = 193
    end
    object cxDBCurrencyEdit21: TcxDBCurrencyEdit
      Left = 246
      Top = 531
      DataBinding.DataField = 'NF_PIS_PPIS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 48
      Width = 54
    end
    object cxDBCurrencyEdit22: TcxDBCurrencyEdit
      Left = 301
      Top = 531
      AutoSize = False
      DataBinding.DataField = 'NF_PIS_VPIS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00;-,0.00'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 49
      Height = 21
      Width = 65
    end
    object cxDBButtonEdit2: TcxDBButtonEdit
      Left = 53
      Top = 553
      AutoSize = False
      DataBinding.DataField = 'NF_IPI_VBC'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 50
      Height = 21
      Width = 192
    end
    object cxDBButtonEdit4: TcxDBButtonEdit
      Left = 53
      Top = 531
      AutoSize = False
      DataBinding.DataField = 'NF_PIS_VBC'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 47
      Height = 21
      Width = 192
    end
    object cxDBCurrencyEdit23: TcxDBCurrencyEdit
      Left = 246
      Top = 465
      DataBinding.DataField = 'NF_II_PII'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 39
      Width = 54
    end
    object cxDBCurrencyEdit24: TcxDBCurrencyEdit
      Left = 246
      Top = 487
      DataBinding.DataField = 'NF_ISSQN_PISSQN'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 42
      Width = 54
    end
    object cxDBCurrencyEdit25: TcxDBCurrencyEdit
      Left = 246
      Top = 509
      DataBinding.DataField = 'NF_COFINS_PCOFINS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####%;-,0.00####%'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 45
      Width = 54
    end
    object cxDBCurrencyEdit26: TcxDBCurrencyEdit
      Left = 301
      Top = 509
      AutoSize = False
      DataBinding.DataField = 'NF_COFINS_VCOFINS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00;-,0.00'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 46
      Height = 21
      Width = 65
    end
    object cxDBCurrencyEdit27: TcxDBCurrencyEdit
      Left = 301
      Top = 487
      AutoSize = False
      DataBinding.DataField = 'NF_ISSQN_VISSQN'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00;-,0.00'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 43
      Height = 21
      Width = 65
    end
    object cxDBCurrencyEdit28: TcxDBCurrencyEdit
      Left = 301
      Top = 465
      AutoSize = False
      DataBinding.DataField = 'NF_II_VII'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00;-,0.00'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 40
      Height = 21
      Width = 65
    end
    object cxDBButtonEdit5: TcxDBButtonEdit
      Left = 53
      Top = 509
      AutoSize = False
      DataBinding.DataField = 'NF_COFINS_VBC'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 44
      Height = 21
      Width = 192
    end
    object cxDBButtonEdit6: TcxDBButtonEdit
      Left = 53
      Top = 487
      AutoSize = False
      DataBinding.DataField = 'NF_ISSQN_VBC'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 41
      Height = 21
      Width = 192
    end
    object cxDBButtonEdit7: TcxDBButtonEdit
      Left = 53
      Top = 465
      AutoSize = False
      DataBinding.DataField = 'NF_II_VBC'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 38
      Height = 21
      Width = 192
    end
    object cxVCustosFinanceiros: TcxCurrencyEdit
      Left = 204
      Top = 246
      Margins.Top = 0
      AutoSize = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 15132415
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 20
      Height = 21
      Width = 98
    end
    object cxVCustosVariaveis: TcxCurrencyEdit
      Left = 204
      Top = 224
      Margins.Top = 0
      AutoSize = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 15132415
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 18
      Height = 21
      Width = 98
    end
    object cxVCustosFixos: TcxCurrencyEdit
      Left = 204
      Top = 202
      Margins.Top = 0
      AutoSize = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00####;-,0.00####'
      Properties.OnValidate = edtVDescPropertiesValidate
      Style.Color = 15132415
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8421631
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Height = 21
      Width = 98
    end
    object cxVDescProduto: TcxCurrencyEdit
      Left = 298
      Top = 112
      Margins.Top = 0
      AutoSize = False
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
      TabOrder = 10
      Height = 22
      Width = 80
    end
    object cxVTotalImpostos: TcxCurrencyEdit
      Left = 213
      Top = 587
      AutoSize = False
      ParentShowHint = False
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 54
      Height = 21
      Width = 90
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 17
      ShowBorder = False
      Index = -1
    end
    object LiedtNf_vICMSST: TdxLayoutItem
      Parent = dxLayoutGroup5
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtNf_vICMSST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtCalc_VCompra_Extra: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Total impostos'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtCalc_PTotal_Impostos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
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
      Index = 19
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtNF_IPI_VIPI: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avBottom
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtNF_IPI_VIPI
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtNF_VFrete: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Frete'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtNF_VFrete
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 172
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LiedtVOutro: TdxLayoutItem
      Parent = dxAcrescimosInternos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Outros Internos'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtPOutro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtVDesc: TdxLayoutItem
      Parent = dxDescontosInternos
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Descontos Internos'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtPDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtLucroPrevisto: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Lucro'
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtLucroPrevisto
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 18
    end
    object LiedtNF_Calc_VCompra_Extra: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Custos Fixos'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtNF_Calc_VCompra_Extra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'Custos Vari'#225'veis'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtCusto_Variavel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Custos Financeiros'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtCusto_Financeiro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxComissaoRepresentante
      AlignHorz = ahClient
      CaptionOptions.Text = 'Comiss'#227'o Representante'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtCusto_Representante
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxComissaoFuncionario
      AlignHorz = ahClient
      CaptionOptions.Text = 'Comiss'#227'o Funcion'#225'rio'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtComissaoFuncionario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxComissaoAgencia
      AlignHorz = ahClient
      CaptionOptions.Text = 'Comiss'#227'o Ag'#234'ncia'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtComissao_Agencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxComissaoProducao
      AlignHorz = ahClient
      CaptionOptions.Text = 'Comiss'#227'o Produ'#231#227'o'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtComissaoProducao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Valor Base de C'#225'lculo'
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = cxVBaseCalculo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxVendaValores
      AlignHorz = ahClient
      CaptionOptions.Text = 'R$ Valor'
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 202
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Desc. Rateado Venda'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = cxDBPDesc
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxComissaoAgencia
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lIedtValor_Original: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'Valor Base'
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = edtValor_Original
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      Control = cbxTipo_Desconto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      CaptionOptions.Text = 'Acr'#233'sc. Rateado Venda'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = cxDBPOutro
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxDescontosInternos
      AlignVert = avClient
      Control = edtVDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxAcrescimosInternos
      AlignVert = avClient
      Padding.Right = 75
      Padding.AssignedValues = [lpavRight]
      Control = edtVOutro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 75
      Padding.AssignedValues = [lpavRight]
      Control = cxDBVDesc
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 75
      Padding.AssignedValues = [lpavRight]
      Control = cxDBVOutro
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      Padding.Right = 75
      Padding.AssignedValues = [lpavRight]
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 75
      Padding.AssignedValues = [lpavRight]
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 75
      Padding.AssignedValues = [lpavRight]
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avBottom
      Padding.AssignedValues = [lpavRight]
      Control = cxDBCurrencyEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup5
      Padding.AssignedValues = [lpavRight]
      Control = cxDBCurrencyEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxComissaoRepresentante
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 75
      Padding.AssignedValues = [lpavRight]
      Control = cxVComissaoRepresentante
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxComissaoFuncionario
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 75
      Padding.AssignedValues = [lpavRight]
      Control = cxVComissaoFuncionario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxComissaoAgencia
      Control = cxVComissaoAgencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxComissaoProducao
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 75
      Padding.AssignedValues = [lpavRight]
      Control = cxVComissaoProducao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'ICMS ST'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Total Comiss'#245'es'
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = cxVTotalComissoes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Total Custos'
      Padding.Left = 10
      Padding.Right = 75
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Control = cxVTotalCustos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup1
      Padding.AssignedValues = [lpavLeft]
      Control = cxDBCurrencyEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup1
      Padding.AssignedValues = [lpavRight]
      Control = cxDBCurrencyEdit20
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'ICMS'
      Padding.AssignedValues = [lpavRight]
      Control = cxDBButtonEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avTop
      Padding.AssignedValues = [lpavLeft]
      Control = cxDBCurrencyEdit21
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = cxDBCurrencyEdit22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'IPI'
      Control = cxDBButtonEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'PIS'
      Control = cxDBButtonEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem39: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      Padding.AssignedValues = [lpavLeft]
      Control = cxDBCurrencyEdit23
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem40: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      Padding.AssignedValues = [lpavLeft]
      Control = cxDBCurrencyEdit24
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem41: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      Padding.AssignedValues = [lpavLeft]
      Control = cxDBCurrencyEdit25
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem42: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = cxDBCurrencyEdit26
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem43: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = cxDBCurrencyEdit27
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem44: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = cxDBCurrencyEdit28
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem45: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'COFINS'
      Control = cxDBButtonEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem46: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'ISSQN'
      Control = cxDBButtonEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem47: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'II'
      Control = cxDBButtonEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxComissaoAgencia: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 14
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 8
    end
    object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 9
    end
    object dxComissaoRepresentante: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 12
    end
    object dxComissaoFuncionario: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 13
    end
    object dxComissaoProducao: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 11
    end
    object LIImpostos: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Impostos'
      Visible = False
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 6
      Index = 16
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = LIImpostos
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = LIImpostos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = LIImpostos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = LIImpostos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = LIImpostos
      AlignHorz = ahClient
      CaptionOptions.Text = 'ICMS ST'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = LIImpostos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = LIImpostos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxDescontosInternos: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxAcrescimosInternos: TdxLayoutGroup
      Parent = dxVendaValores
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxVendaValores: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxVendaValores
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 7
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxVCustosFinanceiros
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem48: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxVCustosVariaveis
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem49: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxVCustosFixos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem50: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxVDescProduto
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem51: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Right = 75
      Padding.AssignedValues = [lpavRight]
      Control = cxVTotalImpostos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 17
    end
  end
  object DS: TDataSource
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
  end
  object WRCalc: TWRCalculaConfiguracoes
    DSVendaOuCompra = DS
    TipoCalculo = tcCompra
    SPrTipoCalc = tssCalcCompra
    Left = 77
    Top = 62
  end
  object DSVenda: TDataSource
    Left = 121
    Top = 92
  end
end
