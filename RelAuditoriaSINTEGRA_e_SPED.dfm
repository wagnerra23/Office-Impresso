object FrmAuditoriaSINTEGRA_e_SPED: TFrmAuditoriaSINTEGRA_e_SPED
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Auditoria'
  ClientHeight = 487
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 479
    Height = 487
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object BtnSINTEGRA: TcxButton
      Left = 17
      Top = 250
      Width = 418
      Height = 25
      Caption = 'SINTEGRA'
      TabOrder = 9
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnSINTEGRAClick
    end
    object BtnFechar: TcxButton
      Left = 355
      Top = 438
      Width = 99
      Height = 25
      Caption = 'Fechar'
      TabOrder = 18
      OnClick = BtnFecharClick
    end
    object cxButton1: TcxButton
      Left = 17
      Top = 400
      Width = 445
      Height = 25
      Caption = 'SPED'
      TabOrder = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    object cxDateProfileButton1: TcxDateProfileButton
      Left = 242
      Top = 82
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
      TabOrder = 3
    end
    object rgEscolha: TcxRadioGroup
      Left = 5
      Top = 5
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Sintegra'
          Value = 0
        end
        item
          Caption = 'Sped'
          Value = 1
        end>
      Properties.OnChange = rgEscolhaPropertiesChange
      ItemIndex = 0
      TabOrder = 0
      Height = 44
      Width = 469
    end
    object edBufLinhas: TcxTextEdit
      Left = 17
      Top = 320
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object edNotas: TcxTextEdit
      Left = 139
      Top = 320
      Style.HotTrack = False
      TabOrder = 12
      Width = 323
    end
    object edBufNotas: TcxTextEdit
      Left = 139
      Top = 356
      Style.HotTrack = False
      TabOrder = 16
      Width = 247
    end
    object cbConcomitante: TcxCheckBox
      Left = 17
      Top = 378
      Caption = 'Gerar Concomitante'
      Style.HotTrack = False
      TabOrder = 15
      Transparent = True
    end
    object cbGerarInventario: TcxCheckBox
      Left = 17
      Top = 170
      Caption = 'Gerar Invent'#225'rio'
      Properties.OnChange = cbGerarInventarioPropertiesChange
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
    end
    object EdtDataInventario: TcxDateEdit
      Left = 371
      Top = 170
      Style.HotTrack = False
      TabOrder = 6
      Width = 91
    end
    object cbEmpresa: TcxComboBox
      Left = 17
      Top = 148
      Properties.DropDownListStyle = lsFixedList
      Style.HotTrack = False
      TabOrder = 4
      Width = 445
    end
    object CbMes: TcxComboBox
      Left = 23
      Top = 82
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object CbAno: TcxComboBox
      Left = 145
      Top = 82
      Style.HotTrack = False
      TabOrder = 2
      Width = 96
    end
    object cxButton2: TcxButton
      Left = 436
      Top = 250
      Width = 26
      Height = 25
      Hint = 'Recriar arquivo j'#225' gerado'
      Caption = '...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = cxButton2Click
    end
    object CkGerarRegistros60: TcxCheckBox
      Left = 17
      Top = 192
      Caption = 'Gerar Registros 60M e 60A'
      Style.HotTrack = False
      TabOrder = 7
      Transparent = True
      OnClick = CkGerarRegistros60Click
    end
    object EdtCaminhoBancoPAF: TcxButtonEdit
      Left = 17
      Top = 228
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EdtCaminhoBancoPAFPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 8
      Width = 445
    end
    object cbxPerfilSped: TcxComboBox
      Left = 17
      Top = 356
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'A'
        'B'
        'C')
      Properties.OnEditValueChanged = cbxPerfilSpedPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 14
      Text = 'A'
      Width = 121
    end
    object cxButton3: TcxButton
      Left = 387
      Top = 374
      Width = 75
      Height = 25
      Caption = 'SPED'
      TabOrder = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton3Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      Offsets.Bottom = 5
      Offsets.Left = 5
      Offsets.Right = 5
      Offsets.Top = 5
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = BtnSINTEGRA
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GroupSintegra: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = ' Sintegra'
      CaptionOptions.Visible = False
      ItemIndex = 3
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avTop
      Padding.Right = 20
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = BtnFechar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Per'#237'odo'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object GroupSped: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'SPED Fiscal'
      ItemIndex = 1
      Index = 3
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = GroupSped
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GupoEscolha: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignVert = avBottom
      CaptionOptions.Text = 'cxDateProfileButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDateProfileButton1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lirgEscolha: TdxLayoutItem
      Parent = GupoEscolha
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = rgEscolha
      ControlOptions.OriginalHeight = 44
      ControlOptions.OriginalWidth = 275
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Buffer Linhas'
      CaptionOptions.Layout = clTop
      Control = edBufLinhas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Num. Notas (C)'
      CaptionOptions.Layout = clTop
      Control = edNotas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
      Parent = GroupSped
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Buffer Notas'
      CaptionOptions.Layout = clTop
      Control = edBufNotas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbConcomitante
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
      Parent = GroupSped
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbGerarInventario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutItemDataInventario: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Data:'
      Control = EdtDataInventario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup
      Parent = GroupSintegra
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = GroupSintegra
      CaptionOptions.Text = 'Empresa'
      CaptionOptions.Layout = clTop
      Control = cbEmpresa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'M'#234's de Refer'#234'ncia'
      CaptionOptions.Layout = clTop
      Control = CbMes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Ano'
      CaptionOptions.Layout = clTop
      Control = CbAno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GroupSintegra
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object LiCkGerarRegistros60: TdxLayoutItem
      Parent = GroupSintegra
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = CkGerarRegistros60
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiEdtCaminhoBancoPAF: TdxLayoutItem
      Parent = GroupSintegra
      CaptionOptions.Text = 'Caminho do Banco do Office PAF'
      CaptionOptions.Layout = clTop
      Control = EdtCaminhoBancoPAF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Perfil Sped'
      CaptionOptions.Layout = clTop
      Control = cbxPerfilSped
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group2
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = 'C:\Program Files (x86)\Embarcadero\RAD Studio\8.0\bin\'
    Delimitador = '|'
    ReplaceDelimitador = False
    TrimString = True
    CurMascara = '#0.00'
    Left = 16
    Top = 313
  end
  object ACBrSintegra1: TACBrSintegra
    VersaoValidador = vv524
    Informa88SME = False
    Informa88SMS = False
    Informa88EAN = False
    Informa88C = False
    InformaSapiMG = False
    Left = 45
    Top = 313
  end
  object Clientes: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select P.*, C.DESCRICAO as CIDADE, C.CODPAIS'
      'from PESSOAS P'
      'left join CIDADES C on (P.CODCIDADE = C.CODIGO)'
      'where (P.IS_CLI = '#39'S'#39')'
      '      and (P.TIPO in ('#39'F'#39', '#39'J'#39'))'
      'order by P.RAZAOSOCIAL')
    Left = 17
    Top = 285
  end
  object Clientes_Historico: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM CLIENTES_HISTORICO'
      'WHERE (CODCLIENTE LIKE :Cod )'
      'ORDER BY DATA')
    Left = 45
    Top = 285
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cod'
        ParamType = ptUnknown
      end>
  end
  object Produtos: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = ProdutosBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select P.*, PE.ESTOQUE as QUANT_ESTOQUE, PT.CLASSIFICACAO'
      'from PRODUTO P'
      
        'left join PRODUTO_ESTOQUE PE on (P.CODIGO = PE.CODPRODUTO) and (' +
        'PE.CODEMPRESA = :Emp)'
      'left join PRODUTO_TIPO PT on PT.CODIGO = P.CODPRODUTO_TIPO '
      'where p.ativo = '#39'S'#39' and not(p.descricao is null)'
      'order by DESCRICAO')
    Left = 73
    Top = 285
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Emp'
        ParamType = ptUnknown
      end>
  end
  object ACBrAAC1: TACBrAAC
    IdentPAF.Paf.TipoFuncionamento = tpfStandAlone
    IdentPAF.Paf.TipoDesenvolvimento = tpdComercializavel
    IdentPAF.Paf.IntegracaoPAFECF = tpiRetaguarda
    IdentPAF.Paf.RealizaPreVenda = False
    IdentPAF.Paf.RealizaDAVECF = False
    IdentPAF.Paf.RealizaDAVNaoFiscal = False
    IdentPAF.Paf.RealizaDAVOS = False
    IdentPAF.Paf.DAVConfAnexoII = False
    IdentPAF.Paf.RealizaLancamentoMesa = False
    IdentPAF.Paf.IndiceTecnicoProd = False
    IdentPAF.Paf.BarSimilarECFRestaurante = False
    IdentPAF.Paf.BarSimilarECFComum = False
    IdentPAF.Paf.BarSimilarBalanca = False
    IdentPAF.Paf.UsaImpressoraNaoFiscal = False
    IdentPAF.Paf.DAVDiscrFormula = False
    IdentPAF.Paf.ImpedeVendaVlrZero = False
    IdentPAF.Paf.AcumulaVolumeDiario = False
    IdentPAF.Paf.ArmazenaEncerranteIniFinal = False
    IdentPAF.Paf.EmiteContrEncerrAposREDZLEIX = False
    IdentPAF.Paf.IntegradoComBombas = False
    IdentPAF.Paf.CriaAbastDivergEncerrante = False
    IdentPAF.Paf.CadastroPlacaBomba = False
    IdentPAF.Paf.TransportePassageiro = False
    IdentPAF.Paf.TotalizaValoresLista = False
    IdentPAF.Paf.TransfPreVenda = False
    IdentPAF.Paf.TransfDAV = False
    IdentPAF.Paf.RecompoeGT = False
    IdentPAF.Paf.RecompoeNumSerie = False
    IdentPAF.Paf.EmitePED = False
    IdentPAF.Paf.CupomMania = False
    IdentPAF.Paf.MinasLegal = False
    IdentPAF.Paf.NotaLegalDF = False
    IdentPAF.Paf.ParaibaLegal = False
    IdentPAF.Paf.TrocoEmCartao = False
    Left = 73
    Top = 313
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 125
    Top = 314
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
  end
  object ACBrECF1: TACBrECF
    QuebraLinhaRodape = False
    Porta = 'COM1'
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    PaginaDeCodigo = 0
    MemoParams.Strings = (
      '[Cabecalho]'
      'LIN000=<center><b>Nome da Empresa</b></center>'
      'LIN001=<center>Nome da Rua , 1234  -  Bairro</center>'
      'LIN002=<center>Cidade  -  UF  -  99999-999</center>'
      
        'LIN003=<center>CNPJ: 01.234.567/0001-22    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      'LIN005=<hr>'
      ' '
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO      DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      'LIN002=<hr>'
      
        'MascaraItem=III CCCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ' '
      '[Rodape]'
      'LIN000=<hr>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Projeto ACBr: <b><code>ACBR<' +
        '/code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      'LIN003=<hr>'
      ' '
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=2'
      'HTML_Font=<font size="2" face="Lucida Console">')
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 96
    Top = 312
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 88
    Top = 224
  end
end
