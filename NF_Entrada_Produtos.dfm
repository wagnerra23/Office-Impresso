inherited FrmNF_Entrada_Produtos: TFrmNF_Entrada_Produtos
  Caption = 'Detalhes do Produto'
  ClientHeight = 650
  ClientWidth = 1076
  Position = poScreenCenter
  ShowHint = True
  WindowState = wsNormal
  ExplicitWidth = 1092
  ExplicitHeight = 689
  PixelsPerInch = 96
  TextHeight = 13
  object LbUCAprovarConversao: TLabel [0]
    Left = 32
    Top = 40
    Width = 115
    Height = 13
    Caption = 'LbUCAprovarConversao'
    Visible = False
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 630
    Width = 1076
    ExplicitTop = 630
    ExplicitWidth = 1076
  end
  inherited MainLayout: TdxLayoutControl
    Width = 1076
    Height = 630
    ExplicitWidth = 1076
    ExplicitHeight = 630
    DesignSize = (
      1076
      630)
    inherited btnNovo: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 54
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited btnConfirmar: TcxButton
      Left = 957
      Top = 30
      TabOrder = 46
      ExplicitLeft = 957
      ExplicitTop = 30
    end
    inherited btnAlterar: TcxButton
      Left = 957
      Top = 56
      TabOrder = 47
      ExplicitLeft = 957
      ExplicitTop = 56
    end
    inherited btnCancelar: TcxButton
      Left = 957
      Top = 82
      TabOrder = 48
      ExplicitLeft = 957
      ExplicitTop = 82
    end
    inherited btnExcluir: TcxButton
      Left = 957
      Top = 108
      TabOrder = 49
      ExplicitLeft = 957
      ExplicitTop = 108
    end
    inherited DBNav: TcxDBNavigator
      Left = 10000
      Top = 10000
      Width = 102
      TabOrder = 55
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 102
    end
    inherited btnConsultar: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 56
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited btnSair: TcxButton
      Left = 957
      Top = 602
      TabOrder = 50
      ExplicitLeft = 957
      ExplicitTop = 602
    end
    inherited dbtxtCodigo: TcxDBTextEdit
      Top = 48
      TabOrder = 1
      ExplicitTop = 48
    end
    inherited dbtxtDT_Alteracao: TcxDBTextEdit
      Left = 370
      Top = 334
      AutoSize = False
      TabOrder = 38
      ExplicitLeft = 370
      ExplicitTop = 334
    end
    inherited dbtxtDescricao: TcxDBTextEdit
      Left = 142
      Top = 48
      TabOrder = 3
      ExplicitLeft = 142
      ExplicitTop = 48
      ExplicitWidth = 389
      Width = 389
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 957
      Top = 195
      TabOrder = 52
      ExplicitLeft = 957
      ExplicitTop = 195
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 1016
      Top = 195
      TabOrder = 53
      ExplicitLeft = 1016
      ExplicitTop = 195
    end
    inherited CadGridCadastros: TcxGrid
      TabOrder = 58
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 1022
      TabOrder = 43
      ExplicitLeft = 1022
    end
    inherited BtnSeguidores: TcxButton
      Left = 961
      TabOrder = 57
      ExplicitLeft = 961
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 1049
      TabOrder = 44
      ExplicitLeft = 1049
    end
    inherited btnMenuConfig: TcxButton
      Left = 957
      TabOrder = 45
      ExplicitLeft = 957
    end
    inherited PnlFrameRegistro_Atividade: TPanel
      Left = 10000
      Top = 10000
      Width = 920
      Height = 445
      TabOrder = 18
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 920
      ExplicitHeight = 445
    end
    inherited BtnImprimir: TcxButton
      Left = 957
      Top = 154
      TabOrder = 51
      ExplicitLeft = 957
      ExplicitTop = 154
    end
    object EdtQuantCompra: TcxDBCurrencyEdit [20]
      Left = 734
      Top = 40
      DataBinding.DataField = 'QUANT_COMPRA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.OnValidate = EdtQuantCompraPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 35345
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 85
    end
    object EdtCustoTotal: TcxDBCurrencyEdit [21]
      Left = 820
      Top = 40
      DataBinding.DataField = 'TOTAL_COMPRA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.OnValidate = EdtCustoTotalPropertiesValidate
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 35345
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 123
    end
    object EdtCodProduto: TcxDBButtonEdit [22]
      Left = 56
      Top = 48
      DataBinding.DataField = 'CODPRODUTO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.Color = clLime
      Style.HotTrack = False
      TabOrder = 2
      Width = 85
    end
    object EdtCorÎCor: TcxDBButtonEdit [23]
      Tag = 68
      Left = 642
      Top = 268
      AutoSize = False
      DataBinding.DataField = 'CODCOR'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 32
      Height = 21
      Width = 55
    end
    object EdtCorÎCorÎDescricao: TcxLabel [24]
      Left = 698
      Top = 268
      AutoSize = False
      Style.HotTrack = False
      Height = 21
      Width = 223
    end
    object EdtGrupoÎProduto_Grupo: TcxDBButtonEdit [25]
      Left = 344
      Top = 102
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO_GRUPO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 16
      Height = 21
      Width = 116
    end
    object LblGrupoÎProduto_GrupoÎDESCRICAO: TcxLabel [26]
      Left = 461
      Top = 102
      AutoSize = False
      Style.HotTrack = False
      Height = 21
      Width = 232
    end
    object cxDBTextEdit2: TcxDBTextEdit [27]
      Left = 851
      Top = 102
      AutoSize = False
      DataBinding.DataField = 'CODFABRICA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 15
      Height = 21
      Width = 80
    end
    object cxDBTextEdit3: TcxDBTextEdit [28]
      Left = 25
      Top = 268
      DataBinding.DataField = 'APLICACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 30
      Width = 294
    end
    object cxDBTextEdit4: TcxDBTextEdit [29]
      Left = 189
      Top = 334
      AutoSize = False
      DataBinding.DataField = 'VOLUME'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 36
      Height = 21
      Width = 51
    end
    object cxDBTextEdit5: TcxDBTextEdit [30]
      Left = 779
      Top = 202
      DataBinding.DataField = 'CODNF_CST'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 27
      Width = 45
    end
    object cxDBTextEdit6: TcxDBTextEdit [31]
      Left = 869
      Top = 202
      DataBinding.DataField = 'CODNF_CFOP'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 29
      Width = 52
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit [32]
      Left = 696
      Top = 202
      DataBinding.DataField = 'NF_VICMS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 26
      Width = 82
    end
    object cxDBTextEdit7: TcxDBTextEdit [33]
      Left = 694
      Top = 102
      AutoSize = False
      DataBinding.DataField = 'CODNF_NCM'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 13
      Height = 21
      Width = 68
    end
    object cxDBTextEdit8: TcxDBTextEdit [34]
      Left = 825
      Top = 202
      DataBinding.DataField = 'NF_EXTIPI'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 28
      Width = 43
    end
    object cxDBTextEdit14: TcxDBTextEdit [35]
      Left = 320
      Top = 268
      DataBinding.DataField = 'NF_INFADPROD'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 31
      Width = 321
    end
    object EdtProdutoTipoÎProduto_Tipo: TcxDBButtonEdit [36]
      Left = 318
      Top = 202
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO_TIPO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 58
    end
    object LblProdutoTipoÎProduto_TipoÎDESCRICAO: TcxLabel [37]
      Left = 377
      Top = 202
      AutoSize = False
      Style.HotTrack = False
      Height = 21
      Width = 265
    end
    object cxDBCurrencyEdit14: TcxDBCurrencyEdit [38]
      Left = 265
      Top = 334
      DataBinding.DataField = 'QUANT_DEVOLVIDO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 37
      Width = 104
    end
    object EdtICMSST: TcxDBCurrencyEdit [39]
      Left = 15
      Top = 102
      DataBinding.DataField = 'NF_VICMSST'
      DataBinding.DataSource = DS
      Properties.OnValidate = EdtICMSSTPropertiesValidate
      Style.Color = clCream
      Style.HotTrack = False
      TabOrder = 8
      Width = 60
    end
    object EdtDesconto: TcxDBCurrencyEdit [40]
      Left = 198
      Top = 102
      AutoSize = False
      DataBinding.DataField = 'VDESC'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnValidate = EdtDescontoPropertiesValidate
      Style.Color = clCream
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Height = 21
      Width = 60
    end
    object cxDBCurrencyEdit24: TcxDBCurrencyEdit [41]
      Left = 643
      Top = 202
      DataBinding.DataField = 'MVA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 25
      Width = 52
    end
    object cxDBButtonEdit5: TcxDBButtonEdit [42]
      Left = 225
      Top = 202
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO_LOTE'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 22
      Height = 21
      Width = 68
    end
    object cxDBTextEdit16: TcxDBTextEdit [43]
      Left = 763
      Top = 102
      DataBinding.DataField = 'CODIGOEAN'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 14
      Width = 87
    end
    object cxDBCurrencyEdit26: TcxDBCurrencyEdit [44]
      Left = 25
      Top = 334
      AutoSize = False
      DataBinding.DataField = 'PESO_LIQUIDO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 34
      Height = 21
      Width = 85
    end
    object cxDBCurrencyEdit27: TcxDBCurrencyEdit [45]
      Left = 111
      Top = 334
      DataBinding.DataField = 'PESO_BRUTO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 35
      Width = 77
    end
    object cxDBCheckBox2: TcxDBCheckBox [46]
      Left = 202
      Top = 202
      DataBinding.DataField = 'LOTE'
      DataBinding.DataSource = DS
      Properties.Alignment = taLeftJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 21
    end
    object PnlFrameCustosAdicionais: TPanel [47]
      Left = 10000
      Top = 10000
      Width = 920
      Height = 445
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 19
      Visible = False
    end
    object LbTitulo: TcxLabel [48]
      Left = 3
      Top = 3
      AutoSize = False
      Caption = 'Produto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8553090
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 10073889
      Style.IsFontAssigned = True
      Transparent = True
      Height = 22
      Width = 940
    end
    object EdtIPI: TcxDBCurrencyEdit [49]
      Left = 76
      Top = 102
      DataBinding.DataField = 'NF_IPI_VIPI'
      DataBinding.DataSource = DS
      Properties.OnValidate = EdtIPIPropertiesValidate
      Style.Color = clCream
      Style.HotTrack = False
      TabOrder = 9
      Width = 60
    end
    object EdtFrete: TcxDBCurrencyEdit [50]
      Left = 137
      Top = 102
      DataBinding.DataField = 'NF_VFRETE'
      DataBinding.DataSource = DS
      Properties.OnValidate = EdtFretePropertiesValidate
      Style.Color = clCream
      Style.HotTrack = False
      TabOrder = 10
      Width = 60
    end
    object EdtOutrasDespAcessorias: TcxDBCurrencyEdit [51]
      Left = 259
      Top = 102
      DataBinding.DataField = 'VOUTRO'
      DataBinding.DataSource = DS
      Properties.OnValidate = EdtOutrasDespAcessoriasPropertiesValidate
      Style.Color = clCream
      Style.HotTrack = False
      TabOrder = 12
      Width = 60
    end
    object CbUnidadeCompra: TcxDBComboBox [52]
      Left = 532
      Top = 48
      DataBinding.DataField = 'NF_UNIDADE'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 20
      Style.HotTrack = False
      TabOrder = 4
      Width = 58
    end
    object EdtValor: TcxDBCurrencyEdit [53]
      Left = 591
      Top = 40
      DataBinding.DataField = 'VALOR_COMPRA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.OnValidate = EdtValorPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 12615680
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 142
    end
    object cxDBTreeList1: TcxDBTreeList [54]
      Left = 10000
      Top = 10000
      Width = 920
      Height = 419
      Bands = <
        item
        end>
      DataController.DataSource = DSNF_Entrada_Produtos_Afetados
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'CODIGO'
      Navigator.Buttons.CustomButtons = <>
      OptionsData.CancelOnExit = False
      OptionsData.Editing = False
      OptionsData.Deleting = False
      RootValue = -1
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 41
      Visible = False
      object cxDBTreeList1CODIGO: TcxDBTreeListColumn
        Caption.Text = 'C'#243'digo'
        DataBinding.FieldName = 'CODPRODUTO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1PARENT: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'PARENT'
        Width = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1DESCRICAO: TcxDBTreeListColumn
        Caption.Text = 'Produto'
        DataBinding.FieldName = 'DESCRICAO'
        Options.Editing = False
        Width = 252
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1CUSTO_ANTERIOR: TcxDBTreeListColumn
        Caption.Text = 'Custo Anterior'
        DataBinding.FieldName = 'CUSTO_ANTERIOR'
        Width = 100
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1VALOR_ANTERIOR: TcxDBTreeListColumn
        Caption.Text = 'Valor Anterior'
        DataBinding.FieldName = 'VALOR_ANTERIOR'
        Width = 100
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1CUSTO: TcxDBTreeListColumn
        Styles.Content = EstiloCustoTotal
        Caption.Text = 'R$ Custo Atual'
        DataBinding.FieldName = 'CUSTO'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1VALOR: TcxDBTreeListColumn
        Styles.Content = EstiloValorTotal
        Caption.Text = 'R$ Valor Atual'
        DataBinding.FieldName = 'VALOR'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1ATUALIZAR_VALOR: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Caption.Text = 'Atualizar Valor'
        DataBinding.FieldName = 'ATUALIZAR_VALOR'
        Width = 100
        Position.ColIndex = 7
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object cxLabel1: TcxLabel [55]
      Left = 10000
      Top = 10000
      Caption = 
        'Os seguintes produtos ser'#227'o diretamente afetados com a altera'#231#227'o' +
        ' de pre'#231'o deste produto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object BtnAtualizarProdutosAfetados: TcxButton [56]
      Left = 10000
      Top = 10000
      Width = 205
      Height = 25
      Hint = 'Atualizar'
      Caption = 'Veficar lista dos produto afetados'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000027744558745469746C6500526566726573683B52657065
        61743B426172733B526962626F6E3B52656C6F6164CD4DF6E9000000B1494441
        54785EC593B10D02310C454162001688D8E0FA1BC2A2A3A14F895241CF128C40
        7B5DE86E1F96301FE947F249761A4EA2784DBEF3EC28C946557F623D81DC5F8D
        040AA8E04D2AD7126B42C1165C80064C608C047B2094DC40060792C16C24C913
        9C5920A683CD0723290B0137A941107A92CCBCB66CB1399230F3E8875FC1F5F9
        D8F59AD8F12A83EC8C1F1ED30A0A83190C8EC04AC4BB8504A62671AEF16424E1
        431A9B24E048C97A4FF9FFBFF103FFEC875AFFDCA9F30000000049454E44AE42
        6082}
      TabOrder = 40
      Visible = False
      OnClick = BtnAtualizarProdutosAfetadosClick
    end
    object EdtComposicaoLocalEstoque: TcxDBLookupComboBox [57]
      Left = 25
      Top = 202
      DataBinding.DataField = 'PRODUTO_ESTOQUE_LOCAL'
      DataBinding.DataSource = DS
      Properties.KeyFieldNames = 'DESCRICAO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DSProduto_Estoque_Local
      Style.HotTrack = False
      TabOrder = 20
      Width = 176
    end
    object pnlTabelaPreco: TPanel [58]
      Left = 10000
      Top = 10000
      Width = 920
      Height = 445
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 42
      Visible = False
    end
    inherited GrupoMenu: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited MainLayoutItem7: TdxLayoutItem
      Parent = nil
      AlignVert = avClient
      Visible = False
      Index = -1
    end
    inherited MainLayoutItem8: TdxLayoutItem
      Index = 1
    end
    inherited MainLayoutItem9: TdxLayoutItem
      Index = 2
    end
    inherited MainLayoutItem10: TdxLayoutItem
      Visible = False
      Index = 3
    end
    inherited MainLayoutItem11: TdxLayoutItem
      Visible = False
      Index = 4
    end
    inherited MainLayoutItem12: TdxLayoutItem
      Parent = nil
      AlignVert = avClient
      ControlOptions.OriginalWidth = 106
      Index = -1
    end
    inherited MainLayoutItem13: TdxLayoutItem
      Parent = nil
      AlignVert = avClient
      Index = -1
    end
    inherited MainLayoutItem14: TdxLayoutItem
      Index = 5
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited MainLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Item'
    end
    inherited MainLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      Index = 1
    end
    inherited MainLayoutGroup2: TdxLayoutGroup
      ItemIndex = 7
    end
    inherited MainLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      ControlOptions.OriginalWidth = 104
      Index = 2
    end
    inherited GrupoNavegacao: TdxLayoutGroup
      Visible = True
      Index = 7
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Index = 2
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Parent = GrupoGuias
      Visible = True
      CaptionOptions.Text = 'Atividade'
      ControlOptions.OriginalHeight = 33
      Index = 0
    end
    inherited liBtnImprimir: TdxLayoutItem
      Index = 6
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object GrupoGuias: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = GrupoGuiasTabChanged
      Index = 2
    end
    object GrupoVeiculo: TdxLayoutGroup
      Parent = GrupoGuias
      CaptionOptions.Text = 'Ve'#237'culo'
      Visible = False
      Index = 3
    end
    object GrupoDadosFiscais: TdxLayoutGroup
      Parent = GrupoGuias
      CaptionOptions.Text = 'Geral'
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LiEdtQuantCompra: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Quantidade'
      CaptionOptions.Layout = clTop
      Control = EdtQuantCompra
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LiEdtCusto: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Total'
      CaptionOptions.Layout = clTop
      Control = EdtCustoTotal
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'd. Produto'
      CaptionOptions.Layout = clTop
      Control = EdtCodProduto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoDetalhes: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Dados do Produto'
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'Cor'
      CaptionOptions.Layout = clTop
      Control = EdtCorÎCor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = EdtCorÎCorÎDescricao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 223
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = GrupoDetalhes
      AlignVert = avClient
      CaptionOptions.Text = 'Grupo de Impostos'
      CaptionOptions.Layout = clTop
      Control = EdtGrupoÎProduto_Grupo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = GrupoDetalhes
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = LblGrupoÎProduto_GrupoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = GrupoDetalhes
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'C'#243'd. F'#225'brica'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Aplica'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 192
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avClient
      CaptionOptions.Text = 'Volume'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = LiImpostos
      AlignVert = avBottom
      CaptionOptions.Text = 'CST'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = LiImpostos
      AlignVert = avBottom
      CaptionOptions.Text = 'CFOP'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = LiImpostos
      AlignVert = avBottom
      CaptionOptions.Text = 'ICMS'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = GrupoDetalhes
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'NCM'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = LiImpostos
      AlignVert = avBottom
      CaptionOptions.Text = 'EX TIPI'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avBottom
      CaptionOptions.Text = 'Informa'#231#245'es Adicionais'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 321
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = LiImpostos
      AlignVert = avBottom
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = EdtProdutoTipoÎProduto_Tipo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = LiImpostos
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = LblProdutoTipoÎProduto_TipoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 208
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Quant. Devolvido'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem44: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avBottom
      CaptionOptions.Text = 'ICMS ST'
      CaptionOptions.Layout = clTop
      Control = EdtICMSST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem47: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avClient
      CaptionOptions.Text = 'Desconto'
      CaptionOptions.Layout = clTop
      Control = EdtDesconto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem48: TdxLayoutItem
      Parent = LiImpostos
      AlignVert = avBottom
      CaptionOptions.Text = 'MVA'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit24
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem50: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'C'#243'd. Lote'
      CaptionOptions.Layout = clTop
      Control = cxDBButtonEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem52: TdxLayoutItem
      Parent = GrupoDetalhes
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'digo EAN'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit16
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem53: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avClient
      CaptionOptions.Text = 'Peso L'#237'quido'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit26
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem54: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avBottom
      CaptionOptions.Text = 'Peso Bruto'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit27
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem55: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Lote'
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object fdq: TdxLayoutGroup
      Parent = GrupoGuias
      CaptionOptions.Text = 'Valor de Venda'
      Index = 1
    end
    object dxLayoutItem58: TdxLayoutItem
      Parent = fdq
      AlignVert = avClient
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = PnlFrameCustosAdicionais
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 248
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = LbTitulo
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiImpostos: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Tipo e Impostos'
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Estoque'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = GrupoDadosFiscais
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Informa'#231#245'es'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Peso e Volume'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avBottom
      CaptionOptions.Text = 'IPI'
      CaptionOptions.Layout = clTop
      Control = EdtIPI
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avBottom
      CaptionOptions.Text = 'Frete'
      CaptionOptions.Layout = clTop
      Control = EdtFrete
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avBottom
      CaptionOptions.Text = 'Acr'#233'scimo'
      CaptionOptions.Layout = clTop
      Control = EdtOutrasDespAcessorias
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Custos Extras e Desconto'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = GrupoDadosFiscais
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'Itens devolvidos'
      Index = 1
    end
    object LiCbUnidadeCompra: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Unidade'
      CaptionOptions.Layout = clTop
      Control = CbUnidadeCompra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Valor de Compra Unit'#225'rio'
      CaptionOptions.Layout = clTop
      Control = EdtValor
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 142
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object GrupoProdutosAfetados: TdxLayoutGroup
      Parent = GrupoGuias
      CaptionOptions.Text = 'Produtos dependentes'
      Index = 4
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = GrupoProdutosAfetados
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxDBTreeList1
      ControlOptions.OriginalHeight = 150
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = BtnAtualizarProdutosAfetados
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 205
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = GrupoProdutosAfetados
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Estoque'
      CaptionOptions.Layout = clTop
      Control = EdtComposicaoLocalEstoque
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 176
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = GrupoDadosFiscais
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup9
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object GrupoTabelaPreco: TdxLayoutItem
      Parent = GrupoGuias
      AlignVert = avClient
      CaptionOptions.Text = 'Tabela Pre'#231'o'
      CaptionOptions.Visible = False
      Control = pnlTabelaPreco
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 428
      ControlOptions.OriginalWidth = 910
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited DS: TDataSource
    OnDataChange = nil
  end
  inherited MenuConfig: TPopupMenu
    Left = 548
    Top = 136
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    GroupName = 'Entrada de Notas Fiscais'
  end
  inherited MenuImprimir: TPopupMenu
    Left = 424
  end
  inherited WREventosCadastro: TWREventosCadastro
    OnLayoutChange = WREventosCadastroLayoutChange
    Versao_Configuracao = 1
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Enabled = False
    CampoPK2 = 'CODNF_ENTRADA'
    Tabela = 'NF_ENTRADA'
    Modulo = 'COMPRAS'
    Left = 508
  end
  object Produto_Estoque_Local: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transa
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select CODIGO, DESCRICAO'
      'from PRODUTO_ESTOQUE_LOCAL')
    Left = 424
    Top = 156
    object Produto_Estoque_LocalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PRODUTO_ESTOQUE_LOCAL"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Produto_Estoque_LocalDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTO_ESTOQUE_LOCAL"."DESCRICAO"'
      Size = 15
    end
  end
  object DSProduto_Estoque_Local: TDataSource
    DataSet = Produto_Estoque_Local
    Left = 452
    Top = 156
  end
  object dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList
    Left = 480
    Top = 72
    object dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel
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
  object DSNF_Entrada_Produtos_Afetados: TDataSource
    Left = 396
    Top = 156
  end
  object MenuComposicao: TPopupMenu
    Left = 368
    Top = 128
    object Ratearovalordoproduto1: TMenuItem
      Action = ActRatearComposicao
    end
    object Ratearovalornosmateriaispendentes1: TMenuItem
      Action = ActRatearComposicaoFaltantes
    end
  end
  object ActionList1: TActionList
    Images = ImgListActions
    Left = 340
    Top = 128
    object ActRatearComposicao: TAction
      Category = 'Rateio'
      Caption = 'Ratear o valor do produto'
      ImageIndex = 0
    end
    object ActRatearComposicaoFaltantes: TAction
      Category = 'Rateio'
      Caption = 'Ratear apenas nos itens pendentes'
      ImageIndex = 0
    end
  end
  object ImgListActions: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 10223956
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00030000000C0000001300000014000000140000001500000015000000150000
          001600000016000000150000000E000000030000000000000000000000000000
          000B19437DC32058ABFF1F56ABFF1F56ABFF1E55AAFF1C54ABFF1D54A9FF1C52
          A9FF1B52A8FF1B51A8FF133A78C60000000D0000000000000000000000000000
          000F2763B2FF74CAF6FF60C0F4FF74CAF6FF7CCCF6FF77CAF6FF72C7F5FF6FC5
          F4FF69C3F4FF65C0F3FF1D53A9FF000000120000000000000000000000000000
          000E2A69B3FB7FCBF2FF52A3DBFF306CB2FF2F6BB1FF2E6AB1FF2D69B1FF2D68
          B0FF2C67B0FF2A65B0FF1F4A82C90000000C0000000000000000000000000000
          00081738629A67A6D9FF89D6F9FF4C94CFFF0B2459BA0002052A000000140000
          001100000011000000110000000B000000030000000000000000000000000000
          00010000000B1A3C689F6CACDCFF8DD8F9FF58A8E0FF102E68C5010205180000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000020000000D1B3F68A167ABDCFF78D1F8FF59A9DFFF0D2556A80000
          0007000000000000000000000000000000000000000000000000000000000000
          0000000000010000000B091B4B9F4D8DC5FF7BD4F9FF6EB4E1FF1E4673AA0000
          0007000000000000000000000000000000000000000000000000000000000000
          0001000000090A1F4D9B5694CAFF84DBFAFF7ABEE6FF2B5A8CC2020407160000
          0002000000000000000000000000000000000000000000000000000000000000
          00050C224D94649BCBFF8FE2FCFF81C3E8FF27547FB30204071E0000000D0000
          000B0000000C0000000B00000007000000020000000000000000000000000000
          00074186C5FBA1E3F9FF67B9E4FF3777BCFF3372B7FF316EB5FF2E6AB2FF2C67
          B0FF2A63ADFF2961ACFF1B4278BF000000070000000000000000000000000000
          0007458FCBFFC7F4FEFFC4F2FEFFC3F2FEFFBFF0FEFFBCF0FEFFB9EEFDFFB5ED
          FDFFB2ECFCFFAEEBFCFF3677BBFF000000090000000000000000000000000000
          000431729AC14299D0FF4298D0FF4398CFFF4397CFFF4396CFFF4395CEFF4294
          CEFF4292CDFF4190CCFF2C6090C3000000060000000000000000000000000000
          0001000000030000000600000006000000060000000600000007000000070000
          0007000000080000000700000005000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 480
    Top = 100
    PixelsPerInch = 96
    object EstiloColunaRateioValor: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object EstiloValor: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object EstiloValorTotal: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object EstiloQuant: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object EstiloCusto: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
    object EstiloCustoTotal: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object EstiloValorPorPeca: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object MenuRateio: TPopupMenu
    Left = 480
    Top = 128
    object Ratearovalordoproduto2: TMenuItem
      Action = ActRatearComposicao
    end
    object Ratearovalornosmateriaispendentes2: TMenuItem
      Action = ActRatearComposicaoFaltantes
    end
  end
  object WRCalc: TWRCalculaConfiguracoes
    DSVendaOuCompra = DS
    DSProduto = DS
    TipoCalculo = tcCompra
    SPrTipoCalc = tssCalcCompra
    Left = 508
    Top = 100
  end
  object PmPrincipal: TwrProdutoMemoria
    SQLProduto.Strings = (
      
        'select P.CODIGO as CODPRODUTO, P.QUANT, P.VALOR, P.VEICULO_CHASS' +
        'I, P.VEICULO_MOTOR,'
      
        '       P.VEICULO_RENAVAN, P.VEICULO_ANO_MODELO, P.VEICULO_CILIND' +
        'RADA, P.VEICULO_HP,'
      
        '       P.CODCOR, P.VEICULO_COMBUSTIVEL, P.VEICULO_KM, P.VEICULO_' +
        'PASSAGEIROS, P.CUSTO_FABR,'
      
        '       P.MARGEM, P.VEICULO_PLACA, P.DESCRICAO, P.LOCAL, P.UNIDAD' +
        'E, P.PODE_SER_COMPRADO,'
      
        '       P.CODPRODUTO_GRUPO, P.CODPRODUTO_MARCA, P.APLICACAO, P.CO' +
        'DNF_NCM, P.COMPOSICAO,'
      
        '       P.CODPRODUTO_TIPO, P.COMP, P.LARG, P.ESPESSURA, P.QTDADEP' +
        'ECA, P.CODIGOEAN,'
      
        '       P.COMPRA_COMP, P.COMPRA_LARG, P.COMPRA_ESPESSURA, P.COMPR' +
        'A_QTDADEPECA, P.COMPRA_QUANT,'
      
        '       P.PESO as PESO_LIQUIDO, P.PESO as PESO_BRUTO, P.PERC_LUCR' +
        'O_DESEJADO, P.MARKUP,'
      
        '       P.CUSTO, P.CUSTO_EXTRA, P.CUSTO_VENDA, P.CUSTO_VENDA_EXTR' +
        'A, P.CUSTO_VENDA_TOTAL,'
      
        '       P.PERC_MARGEM_CONTRIBUICAO, P.PESO, P.VALOR_LUCRO, '#39#39' AS ' +
        'Devolucao, 1 as QUANT_DEVOLVIDO, 0 as Total_venda,'
      
        '       P.TOTAL, P.ACRESCIMO, P.VDESC_MANUAL, P.PERC_DESC_ATACADO' +
        ', P.PERC_ACRESC_PRAZO,'
      '       P.PESO_CALCULADO_COMPOSICAO, 0 as MVA,'
      
        '       P.CUSTO_PERC, P.CUSTO_VENDA_PERC, P.VALOR_POR_PECA, P.CUS' +
        'TO_VENDA_MINIMO,'
      
        '       P.CUSTO as CUSTO_ANTERIOR, P.VALOR_COMPRA, (select sum(pc' +
        'a.valor) from produto_custo_adicional pca'
      
        '                                                    where (pca.d' +
        'escricao = :IMPOSTO_ST) and (pca.codproduto = p.codigo)) as PICM' +
        'SST, '
      
        '                                                   (select sum(p' +
        'ca.valor) from produto_custo_adicional pca'
      
        '                                                    where (pca.d' +
        'escricao = :IPI) and (pca.codproduto = p.codigo)) as IPI_PIPI,'
      
        '                                                   (select sum(p' +
        'ca.valor) from produto_custo_adicional pca'
      
        '                                                    where (pca.d' +
        'escricao = :FRETE) and (pca.codproduto = p.codigo)) as FRETE_PER' +
        'C,'
      
        '                                                   (select sum(p' +
        'ca.valor) from produto_custo_adicional pca'
      
        '                                                    where (pca.d' +
        'escricao = :ACRESCIMO) and (pca.codproduto = p.codigo)) as POUTR' +
        'O,'
      
        '                                                   (select sum(p' +
        'ca.valor) from produto_custo_adicional pca'
      
        '                                                    where (pca.d' +
        'escricao = :DESCONTO) and (pca.codproduto = p.codigo)) as PDESC,'
      '                                       '
      ''
      
        '       --Usa a Unidade do produto como Unidade de Compra apenas ' +
        'para trazer na tela, o usu'#225'rio pode mudar para'
      
        '       --a unidade de compra desejada antes de adicionar na comp' +
        'ra'
      '       P.UNIDADE_COMPRA,'
      ''
      '       coalesce(PF.CODFABRICA, P.CODFABRICA) as CODFABRICA,'
      ''
      '       --Outros campos'
      
        '       NP.FRETE, NP.VOLUME, NP.QUANT_COMPRA, NP.TOTAL_COMPRA, NP' +
        '.CUSTO_FABR_TOTAL, '
      
        '       NP.PRODUTO_ESTOQUE_LOCAL, NP.ACRESCIMO_DESCONTO, NP.ACRES' +
        'CIMO_PRODUTO, PE.ESTOQUE as ESTOQUE_ANTERIOR,'
      
        '       NP.VICMSST, NP.IPI_VIPI, NP.VOUTRO, NP.VDESC, NP.PIS_VBC,' +
        ' NP.PIS_PPIS, NP.PIS_VPIS, NP.PISST_VBC,'
      
        '       NP.PISST_PPIS, PISST_VPIS, NP.COFINS_VBC, NP.COFINS_PCOFI' +
        'NS, NP.COFINS_VCOFINS, NP.COFINSST_VBC, NP.COFINSST_PCOFINS,'
      '       NP.COFINSST_VCOFINS, NP.APROVAR_CONVERSAO    '
      ''
      'from PRODUTO P'
      
        'left join NF_ENTRADA_PRODUTOS NP on (NP.CODIGO is null) and (NP.' +
        'CODNF_ENTRADA is null)'
      
        'left join PRODUTO_ESTOQUE PE on (P.CODIGO = PE.CODPRODUTO) and (' +
        'PE.CODEMPRESA = :CODEMPRESA)'
      
        'left join PRODUTO_FORNECEDOR PF on (P.CODIGO = PF.CODPRODUTO) an' +
        'd (PF.PESSOA_FORNECEDOR_CODIGO = :CodCliente)'
      'where (P.CODIGO = :CODPRODUTO)   ')
    SQLComposicao.Strings = (
      
        'select PC.CODIGO, PC.DESCRICAO, PC.CODPRODUTO, PC.QUANT, PC.COMP' +
        ', PC.LARG, PC.QTDADEPECA,'
      
        '       PC.VALOR, PC.DT_ALTERACAO, PC.ESPESSURA, P.CODPRODUTO_GRU' +
        'PO, PC.PARENT,'
      
        '       P.UNIDADE, PC.CUSTO_VENDA_TOTAL, P.LOCAL, PC.PESO, PC.CUS' +
        'TO_FABR, PC.VALOR_COMPRA,'
      '       PC.MARGEM, PC.CUSTO_EXTRA,'
      '       PC.CODFORMULA_PERFIL, PC.CUSTO_VENDA,'
      '       PC.COMP_FORMULA, PC.LARG_FORMULA, PC.ESPESSURA_FORMULA,'
      
        '       PC.QTDADEPECA_FORMULA, PC.COMP_COMPOSICAO, PC.LARG_COMPOS' +
        'ICAO,'
      
        '       PC.ESPESSURA_COMPOSICAO, PC.QTDADEPECA_COMPOSICAO, PC.QUA' +
        'NT_COMPOSICAO, PC.CUSTO,'
      
        '       PC.TOTAL_COMPOSICAO, PC.CUSTO_PERC, PC.CUSTO_VENDA_PERC, ' +
        'PC.CUSTO_VENDA_EXTRA,'
      
        '       PC.PERC_LUCRO_DESEJADO, PC.VALOR_POR_PECA, PC.CUSTO_VENDA' +
        '_MINIMO, PC.VALOR_LUCRO,'
      '       PC.PERC_MARGEM_CONTRIBUICAO, PC.MARKUP, PC.TOTAL'
      'from PRODUTO_COMPOSICAO PC'
      'left join PRODUTO P on (PC.CODPRODUTO = P.CODIGO)'
      'where (PC.CODPRODUTO_COMPOSICAO = :CODPRODUTO)')
    Connection = DMBanco.Banco
    DataSource = DSPmPrincipal
    PermitirProdutoNaoCadastrado = True
    Left = 480
    Top = 156
  end
  object DSPmPrincipal: TDataSource
    Left = 508
    Top = 156
  end
end
