inherited FrmBalanco: TFrmBalanco
  Caption = 'Cadastro de Balan'#231'o Patrimonial'
  ClientHeight = 498
  ClientWidth = 802
  FormStyle = fsMDIChild
  Visible = True
  OnShow = FormShow
  ExplicitWidth = 818
  ExplicitHeight = 537
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel [0]
    Width = 695
    Height = 498
    ExplicitWidth = 695
    ExplicitHeight = 498
    inherited Gradient1: TGradient
      Width = 691
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 651
    end
    inherited Gradient3: TGradient
      Width = 691
      Height = 40
      Align = alTop
      ExplicitLeft = 54
      ExplicitTop = 23
      ExplicitWidth = 689
      ExplicitHeight = 40
    end
    inherited Label4: TLabel
      Left = 50
      Width = 175
      Caption = 'Prateleira ou Local do estoque'
      ExplicitLeft = 50
      ExplicitWidth = 175
    end
    object Label1: TLabel [4]
      Left = 542
      Top = 29
      Width = 129
      Height = 13
      Caption = 'C'#243'digo Balan'#231'o do dia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel [5]
      Left = 415
      Top = 29
      Width = 99
      Height = 13
      Caption = 'Local do estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object PnlGeraBalancoAntigo: TPanel [6]
      Left = 126
      Top = 275
      Width = 267
      Height = 126
      TabOrder = 13
      object cxDateEdit2: TcxDateEdit
        Left = 14
        Top = 63
        Properties.Kind = ckDateTime
        TabOrder = 0
        Width = 121
      end
      object cxDateEdit3: TcxDateEdit
        Left = 141
        Top = 63
        Properties.Kind = ckDateTime
        TabOrder = 1
        Width = 121
      end
      object btnGearBalancoFaltante: TcxButton
        Left = 102
        Top = 90
        Width = 75
        Height = 25
        Caption = 'Gerar'
        TabOrder = 2
        OnClick = btnGearBalancoFaltanteClick
      end
    end
    object Panel4: TPanel [7]
      Left = 153
      Top = 64
      Width = 344
      Height = 337
      Caption = 'Panel4'
      TabOrder = 6
      Visible = False
      OnExit = Panel4Exit
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 342
        Height = 335
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          OnDblClick = cxGridDBTableView2DblClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Hint = 'Primeiro'
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Hint = 'P'#225'gina anterior'
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Hint = 'Anterior'
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Hint = 'Pr'#243'ximo'
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Hint = 'Pr'#243'xima Pagina'
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Hint = 'Ultimo'
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Hint = 'Inserir'
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Hint = 'Adicionar'
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Hint = 'Deletar'
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Hint = 'Editar'
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Hint = 'Confirmar'
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Hint = 'Cancelar'
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Hint = 'Atualizar'
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Hint = 'Marcar'
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Hint = 'Ir para'
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Hint = 'Filtar'
          Navigator.Buttons.Filter.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = DSBalanco_Titulo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '##,###0.##'
              Kind = skSum
              FieldName = 'ESTOQUE'
              DisplayText = 'Estoque'
            end
            item
              Format = '##,###0.##'
              Kind = skSum
              FieldName = 'Saldo'
              DisplayText = 'Saldo'
            end
            item
              Format = '##,###0.##'
              Kind = skSum
              FieldName = 'QUANT'
              DisplayText = 'Quant'
            end
            item
              Format = '##,###0.##'
              Kind = skSum
              FieldName = 'Estoque_Valor'
              DisplayText = 'Estoque_Valor'
            end
            item
              Format = '##,###0.##'
              Kind = skSum
              FieldName = 'Total'
              DisplayText = 'Total'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
          object cxGridDBTableView2CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO'
            Width = 65
          end
          object cxGridDBTableView2DATA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA'
            SortIndex = 0
            SortOrder = soDescending
            Width = 202
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object cxGrid1: TcxGrid [8]
      Left = 2
      Top = 104
      Width = 691
      Height = 352
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu_CadastroProduto
      TabOrder = 8
      object cxGridBalanco: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Hint = 'Primeiro'
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Hint = 'P'#225'gina anterior'
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Hint = 'Anterior'
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Hint = 'Pr'#243'ximo'
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Hint = 'Pr'#243'xima Pagina'
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Hint = 'Ultimo'
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Hint = 'Inserir'
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Hint = 'Adicionar'
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Hint = 'Deletar'
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Hint = 'Editar'
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Hint = 'Confirmar'
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Hint = 'Cancelar'
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Hint = 'Atualizar'
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Hint = 'Marcar'
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Hint = 'Ir para'
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Hint = 'Filtar'
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGridBalancoCustomDrawCell
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DS_Balanco_Produto
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##,###0.##'
            Kind = skSum
            FieldName = 'ESTOQUE'
            Column = cxGridBalancoESTOQUE
            DisplayText = 'Estoque'
          end
          item
            Format = '##,###0.##'
            Kind = skSum
            FieldName = 'Saldo'
            Column = cxGridBalancoSaldo
            DisplayText = 'Saldo'
          end
          item
            Format = '##,###0.##'
            Kind = skSum
            FieldName = 'QUANT'
            Column = cxGridBalancoQUANT
            DisplayText = 'Quant'
          end
          item
            Format = '##,###0.##'
            Kind = skSum
            FieldName = 'Estoque_Valor'
            Column = cxGridBalancoEstoque_Valor
            DisplayText = 'Estoque_Valor'
          end
          item
            Format = '##,###0.##'
            Kind = skSum
            FieldName = 'Total'
            Column = cxGridBalancoTotal
            DisplayText = 'Total'
          end
          item
            Kind = skSum
            Column = cxGridBalancoEstoque_Valor
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
        object cxGridBalancoCODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'd. Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          Options.Editing = False
        end
        object cxGridBalancoDESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Options.Editing = False
          Width = 343
        end
        object cxGridBalancoQUANT: TcxGridDBColumn
          Caption = 'Quant.'
          DataBinding.FieldName = 'QUANT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 55
        end
        object cxGridBalancoESTOQUE: TcxGridDBColumn
          Caption = 'Estoque'
          DataBinding.FieldName = 'ESTOQUE'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
        end
        object cxGridBalancoSaldo: TcxGridDBColumn
          Caption = 'Diverg'#234'ncia'
          DataBinding.FieldName = 'Saldo'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Width = 70
        end
        object cxGridBalancoTotal: TcxGridDBColumn
          Caption = 'R$ Total'
          DataBinding.FieldName = 'Total'
          Options.Editing = False
          Width = 73
        end
        object cxGridBalancoCUSTO: TcxGridDBColumn
          Caption = 'R$ Custo'
          DataBinding.FieldName = 'CUSTO'
        end
        object cxGridBalancoVALOR: TcxGridDBColumn
          Caption = 'R$ Venda'
          DataBinding.FieldName = 'VALOR'
          Options.Editing = False
          Width = 80
        end
        object cxGridBalancoEstoque_Valor: TcxGridDBColumn
          Caption = 'R$ Valor custo total do Estoque'
          DataBinding.FieldName = 'Estoque_Valor'
          Options.Editing = False
          Width = 124
        end
        object cxGridBalancoATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 37
        end
        object cxGridBalancoCODFABRICA: TcxGridDBColumn
          Caption = 'Cod. F'#225'brica'
          DataBinding.FieldName = 'CODFABRICA'
          Width = 110
        end
        object cxGridBalancoUNIDADE: TcxGridDBColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'UNIDADE'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridBalanco
      end
    end
    inherited DBEdit2: TDBEdit
      Left = 52
      Width = 363
      Color = clWhite
      ExplicitLeft = 52
      ExplicitWidth = 363
    end
    inherited DBEdit1: TDBEdit
      Left = 12
      Width = 39
      ExplicitLeft = 12
      ExplicitWidth = 39
    end
    inherited NetGradient2: TcxLabel
      Caption = 'BALAN'#199'O PATRIMONIAL'
      ExplicitWidth = 218
    end
    inherited StatusBar: TStatusBar
      Top = 477
      Width = 691
      Visible = False
      ExplicitTop = 477
      ExplicitWidth = 691
    end
    object RichEdit1: TRichEdit
      Left = -31495
      Top = 190
      Width = 1000
      Height = 89
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'RichEdit1')
      ParentFont = False
      TabOrder = 10
      Zoom = 100
    end
    object DBEdit4: TDBEdit
      Left = 541
      Top = 42
      Width = 42
      Height = 21
      TabStop = False
      Color = clSilver
      Ctl3D = True
      DataField = 'CODIGO'
      DataSource = DSBalanco_Titulo
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 583
      Top = 42
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      Ctl3D = True
      DataField = 'DATA'
      DataSource = DSBalanco_Titulo
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object Panel5: TPanel
      Left = 2
      Top = 456
      Width = 691
      Height = 21
      Align = alBottom
      BevelOuter = bvNone
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 11
      object Label7: TLabel
        Left = 78
        Top = 0
        Width = 146
        Height = 21
        AutoSize = False
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object Label8: TLabel
        Left = 3
        Top = 2
        Width = 42
        Height = 14
        Caption = 'Usu'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit5: TDBEdit
        Left = 48
        Top = 0
        Width = 28
        Height = 16
        TabStop = False
        Color = clMoneyGreen
        Ctl3D = False
        DataField = 'CODUSUARIO'
        DataSource = DS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 226
        Top = 0
        Width = 146
        Height = 21
        CharCase = ecUpperCase
        Color = clSilver
        Ctl3D = True
        DataField = 'DT_ATUALIZACAO'
        DataSource = DS
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 372
        Top = 0
        Width = 146
        Height = 21
        CharCase = ecUpperCase
        Color = clSilver
        Ctl3D = True
        DataField = 'DT_GUARDAR_VALORES'
        DataSource = DS
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 518
        Top = -1
        Width = 146
        Height = 21
        CharCase = ecUpperCase
        Color = clSilver
        Ctl3D = True
        DataField = 'DATA'
        DataSource = DS
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object ComboLocal: TcxComboBox
      Left = 416
      Top = 42
      Properties.DropDownListStyle = lsFixedList
      TabOrder = 3
      Width = 125
    end
    object Panel3: TPanel
      Left = 2
      Top = 65
      Width = 691
      Height = 39
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 7
      object Gradient6: TGradient
        Left = 0
        Top = 0
        Width = 691
        Height = 39
        Align = alClient
        ColorEnd = 16756834
        Style = gsRadialTR
        ExplicitTop = -1
        ExplicitWidth = 651
        ExplicitHeight = 40
      end
      object LblCodProdutoÎProdutoÎDESCRICAO: TLabel
        Left = 135
        Top = 17
        Width = 416
        Height = 22
        AutoSize = False
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object Label5: TLabel
        Left = 6
        Top = 4
        Width = 106
        Height = 13
        Alignment = taCenter
        Caption = 'C'#243'digo do Produto'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object Label6: TLabel
        Left = 134
        Top = 4
        Width = 123
        Height = 13
        Caption = 'Descri'#231#227'o do produto'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object EdtCodProdutoÎProduto: TcxButtonEdit
        Left = 6
        Top = 16
        AutoSize = False
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        Properties.ClickKey = 113
        Properties.OnChange = ComboEdit1PropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnKeyDown = EdtCodProdutoÎProdutoKeyDown
        Height = 24
        Width = 125
      end
      object CEdit1: TcxCurrencyEdit
        Left = 555
        Top = 17
        Margins.Top = 0
        AutoSize = False
        EditValue = 0.000000000000000000
        Properties.DisplayFormat = '0.###;-0.###'
        TabOrder = 1
        OnKeyDown = CEdit1KeyDown
        Height = 24
        Width = 68
      end
      object CheckBox1: TCheckBox
        Left = 545
        Top = 1
        Width = 76
        Height = 16
        Caption = 'Quantidade'
        TabOrder = 3
        OnClick = CheckBox1Click
      end
      object BitBtn14: TBitBtn
        Left = 655
        Top = 3
        Width = 33
        Height = 37
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF351500351500381600431A00431A
          00381600361600351500FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF331400361600491C00702C00
          873500903800903800893500772E004F1F00381600351500FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4B1D00471C007B
          3000A54100B14500AF4400AC4300AC4300AF4400B14500A74100843400532000
          381600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5722
          005D2400A74100B14500AC4300A74100A74100A74100A74100A74100A74100AA
          4200B14500AC43006C2A003A1700FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF5F25006C2A00BD4A00B64700AA4200A74100A74100A03F00A03F00A741
          00A74100A74100A74100A74100AC4300B14500732D003A1700FF00FFFF00FFFF
          00FFFF00FFFF00FF4119006C2A00CC5000C04B00B64700B14500AA4200A34000
          B2530DF3E3D4FFFEFEE6C6A7A94301A74100A74100A74100AA4200B14500702C
          00381600FF00FFFF00FFFF00FFFF00FF491C00CA4F00D45300C24C00C04B00B6
          4700A34000AA4200B65E19FCFAF6FFFFFFF3E3D4AB4703A74100A74100A74100
          A74100AA4200AF44004D1E00FF00FFFF00FFFF00FF552100903800E95B00D152
          00CA4F00BD4A00AC4300AF4400AA4200B65D18FCFAF6FFFFFFF3E2D3AB4703A7
          4100A74100A74100A74100A74100B14500843400381600FF00FFFF00FF572200
          D75400E65A00D95500CA4F00B14500AC4300AC4300AA4200B65D18FCFAF6FFFF
          FFF3E2D3AB4703A74100A74100A74100A74100A74100AA4200AA4200491C00FF
          00FF5B2300792F00F66000E35900DE5700C74E00B64700AA4200AA4200AA4200
          B85E18FCFAF6FFFFFFF3E2D3AB4703A74100A74100A74100A74100A74100A741
          00B145006427003C17005B23009E3E00FF6400EE5D00DE5700EE5D00CC5000AF
          4400BD4A00C24C00C26318FCFAF6FFFFFFF3E2D3AB4703A74100A74100A74100
          A74100A74100A74100B145007B30003C1700662800BB4900FF6C06F66000FF64
          00F86200FCA95EEFA96AED6405F35F00EF7518FFFAF6FFFFFFF4E3D3AB4703A7
          4100C17433DEB28ABC6A27A74100A74100B145008735003A1700702C00D75400
          FF7F1CFF6601FB6300FB6300FFF6EBFFFFFFFEC48FFB6300FA7816FFFAF6FFFF
          FFF6E3D3A74200BA6623FAF2EBFFFFFFF4E6D9A74100AA4200AF44008935004B
          1D00792F00D75400FF9239FF7611FB6300FB6300FFF4EBFFFFFFFFFFFFFEB779
          FC7A18FFF8F3FFFFFFF6E0CAC06218F3E0CCFFFFFFFFFFFFE9CAACB44600AC43
          00B145008735003C1700803200CC5000FF9E4CFF9035F86200FB6300FEC693FF
          FFFFFFFFFFFFFEFEFECEA1FEF6EEFFFFFFFAEADCF4D7BAFFFFFFFFFFFFF7E3D0
          D06716CA4F00B44600B14500772E003C1700FF00FFAC4300FF9D4AFFAF69FF79
          15E15800FB6803FEC997FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFAEADCD86E1CCA4F00C04B00AF4400B145005D2400FF00FFFF00FFB64700
          FF801EFFC591FFA354FF6903E15800F86703FEC590FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFBEFE3D87423C74E00C24C00B84800B64700AC4300431A00FF
          00FFFF00FFFF00FFD95500FFBC81FFCC9DFF9035FF6400DE5700F66402FEC189
          FFFFFFFFFFFFFFFFFFFFFFFFFCF4EDE17D2CCF5100CC5000C74E00BD4A00C74E
          00823300FF00FFFF00FFFF00FFFF00FFF05E00FF801EFFCFA1FFCC9DFF8E32FF
          6903E15800F66301FEBB80FFFFFFFFFFFFFFF8F3E58435D95500D75400D15200
          CC5000CC5000C04B004B1D00FF00FFFF00FFFF00FFFF00FFFF00FFCA4F00FF9A
          46FFD9B5FFD4ABFFA050FF7915F66000EE5E00FFB777FFF6EEF29241EE5D00E9
          5B00E65A00DE5700D95500D453006E2B00FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFC54D00FF9D4AFFD9B5FFE1C4FFC18AFF9E4CFF8728FF7611FF6F
          09FF720CFF750FFF750FFF6D07FB6300E35900792F00FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFD95500FF8424FFBC81FFD4ABFFD9B5
          FFCC9DFFBC81FFB16DFFAA60FFA050FF8E32FF7915F05E007B3000FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD95500D9
          5500FF8728FFAA60FFB87AFFB87AFFB16DFFA456FF9035FF720CC24C006C2A00
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFD95500D75400F66000F66000F86200E95B00BD4A0082
          3300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        TabOrder = 4
        TabStop = False
        OnClick = BitBtn14Click
      end
      object BitBtn8: TBitBtn
        Left = 622
        Top = 3
        Width = 33
        Height = 37
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF351500351500381600431A00431A
          00381600361600351500FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF331400361600491C00702C00
          873500903800903800893500772E004F1F00381600351500FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4B1D00471C007B
          3000A54100B14500AF4400AC4300AC4300AF4400B14500A74100843400532000
          381600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5722
          005D2400A74100B14500AC4300A74100A74100A74100A74100A74100A74100AA
          4200B14500AC43006C2A003A1700FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF5F25006C2A00BD4A00B64700AA4200A74100A74100A03F00FF9F4EFFF3
          E7FF7E1BA74100A74100A74100AC4300B14500732D003A1700FF00FFFF00FFFF
          00FFFF00FFFF00FF4119006C2A00CC5000C04B00B64700B14500AA4200AA4200
          FFAB63FFFFFFFFFFFFFFF7EFFF750FA74100A74100A74100AA4200B14500702C
          00381600FF00FFFF00FFFF00FFFF00FF491C00CA4F00D45300C24C00C04B00B6
          4700AC4300FFB16DFFFFFFFFFFFFFFFFFFFFFFFFFFF3E7FF6E08A74100A74100
          A74100AA4200AF44004D1E00FF00FFFF00FFFF00FF552100903800E95B00D152
          00CA4F00BD4A00BB4900FFB676FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EEDDFF6701A74100A74100A74100B14500843400381600FF00FFFF00FF572200
          D75400E65A00D95500CA4F00C04B00FFBB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE9D3F35F00A74100A74100AA4200AA4200491C00FF
          00FF5B2300792F00F66000E35900DE5700C74E00FFBA7DFFFFFFFFFFFFFFFEFC
          FFC18AFFF4EAFFFFFFFFE9D3FFD3A9FFFFFFFFFFFFFFE1C4E95B00A74100A741
          00B145006427003C17005B23009E3E00FF6400EE5D00DE5700EE5D00FFF3E7FF
          FFFFFFFFFFFFAB63FB6300FFF7EFFFFFFFFFDDBCEE5D00FFDEBFFFFFFFFFFFFF
          FFC996A74100A74100B145007B30003C1700662800BB4900FF6C06F66000FF64
          00F86200FFF4EAFFFFFFFFC088F35F00FF740EFFFAF4FFFFFFFFE3C9AA4200FF
          6601FFF2E5FFFFFFFFE6CEA74100A74100B145008735003A1700702C00D75400
          FF7F1CFF6601FB6300FB6300FFAB63FFAF69FF6903FB6300FF7A16FFFAF4FFFF
          FFFFE3C9B84800A74100FF730DFFB16DFF6A04A74100AA4200AF44008935004B
          1D00792F00D75400FF9239FF7611FB6300FB6300FB6300FB6300FB6300FB6300
          FF7A16FFFAF4FFFFFFFFE5CBC24C00B44600B44600AC4300AC4300B44600AC43
          00B145008735003C1700803200CC5000FF9E4CFF9035F86200FB6300FB6300FB
          6300FB6300FB6300FF7A16FFFAF4FFFFFFFFE5CBDE5700CC5000CC5000C74E00
          C74E00CA4F00B44600B14500772E003C1700FF00FFAC4300FF9D4AFFAF69FF79
          15E15800FB6300FB6300FB6300FB6300FF7A16FFFAF4FFFFFFFFE6CEDE5700CF
          5100CF5100CF5100CA4F00C04B00AF4400B145005D2400FF00FFFF00FFB64700
          FF801EFFC591FFA354FF6903E15800F86200FB6300FB6300FF7A16FFFAF4FFFF
          FFFFE7D0E15800CF5100CC5000C74E00C24C00B84800B64700AC4300431A00FF
          00FFFF00FFFF00FFD95500FFBC81FFCC9DFF9035FF6400DE5700F66000FB6300
          FF7A16FFFAF4FFFFFFFFE9D3E95B00D75400CF5100CC5000C74E00BD4A00C74E
          00823300FF00FFFF00FFFF00FFFF00FFF05E00FF801EFFCFA1FFCC9DFF8E32FF
          6903E15800F66000FF700AFFE9D3FFFEFCFFD1A6DE5700D95500D75400D15200
          CC5000CC5000C04B004B1D00FF00FFFF00FFFF00FFFF00FFFF00FFCA4F00FF9A
          46FFD9B5FFD4ABFFA050FF7915F66000EE5D00FF6903FB6300EB5C00EE5D00E9
          5B00E65A00DE5700D95500D453006E2B00FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFC54D00FF9D4AFFD9B5FFE1C4FFC18AFF9E4CFF8728FF7611FF6F
          09FF720CFF750FFF750FFF6D07FB6300E35900792F00FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFD95500FF8424FFBC81FFD4ABFFD9B5
          FFCC9DFFBC81FFB16DFFAA60FFA050FF8E32FF7915F05E007B3000FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD95500D9
          5500FF8728FFAA60FFB87AFFB87AFFB16DFFA456FF9035FF720CC24C006C2A00
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFD95500D75400F66000F66000F86200E95B00BD4A0082
          3300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        TabOrder = 2
        OnClick = BitBtn8Click
      end
    end
    object DBGrid2: TDBGrid
      Left = 34
      Top = 137
      Width = 646
      Height = 157
      Hint = 
        'Selecione o item desejado e precione Esc, Enter ou dois Clicks c' +
        'om o mouse.'
      Ctl3D = False
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Visible = False
      OnDblClick = DBGrid2DblClick
      OnKeyDown = DBGrid2KeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Color = clMoneyGreen
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O'
          Title.Color = clMoneyGreen
          Width = 219
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_P'
          Title.Alignment = taCenter
          Title.Color = clMoneyGreen
          Width = 54
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UNIDADE'
          Title.Caption = 'UNID'
          Title.Color = clMoneyGreen
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTO'
          Title.Alignment = taCenter
          Title.Caption = 'REFER.'
          Title.Color = clMoneyGreen
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'R$ VENDA'
          Title.Color = clMoneyGreen
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADEATACADO'
          Title.Caption = 'UNID'
          Title.Color = clMoneyGreen
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORATACADO'
          Title.Caption = 'R$ ATACADO'
          Title.Color = clMoneyGreen
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCAL'
          Title.Color = clMoneyGreen
          Visible = True
        end>
    end
  end
  inherited Panel2: TPanel [1]
    Left = 695
    Height = 498
    ExplicitLeft = 695
    ExplicitHeight = 498
    inherited Gradient2: TGradient
      Height = 459
      ExplicitHeight = 459
    end
    inherited Ali: TPanel
      Top = 461
      TabOrder = 9
      ExplicitTop = 461
    end
    inherited BitBtn6: TBitBtn
      OnClick = BitBtn6Click
    end
    inherited DBNav: TcxDBNavigator
      Width = 86
      TabOrder = 10
      ExplicitWidth = 86
    end
    object BitBtn9: TBitBtn
      Left = 6
      Top = 275
      Width = 95
      Height = 25
      Hint = 'Consultar Cadastro'
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF1C99CE2BA5D51C9DD10A8AC6FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFBFA5A34D5A72FF00FFFF00FF249CCFA6EEF7
        6CEBF85DD9F04AC7E739B8E020A0D40F91CA0F91C9FF00FFFF00FFBFA5A35766
        831276E23C91DCFF00FF0C8CC799DDEF8BFFFF80FCFF82FBFF7FFAFF79F3FF65
        E1F74ECEED3CBAE07591A05B66811170D833A1FF2A9AFEFF00FF1296CC59BADE
        9FFEFF75F7FF78F6FF77F2FC89D9E087D7DE7BE2EA91BCC05168891370D531A0
        FF319EFBFF00FFFF00FF26A5D448C1E69FEFF879F6FB87D8DCBACABCDABCA5D0
        B59EAF9A8C817A734179AF32A3FF3DACFE1B9CD4FF00FFFF00FF27AFDE8B97A1
        88CFE28BD1D3CBB4ADF7F0DDFFFFD8FFFFD9FAF8C5CFB08CC4A9A34DC1FC55D0
        FB41C1E3FF00FFFF00FF25AFE1AD706B5DBCDDB5A69EF7F4EEFFFFFFFFFFE3FF
        FFD4FFF7C1FFE6A5D8A0826FD4EB59D7FB68E2F80E90C9FF00FF26AFE1B5776D
        A4CFD9CEB69EFFFFEAFFFFF3FFFFEAFFFFD7F7DCA9F6C986E1B89191C0C753D3
        FB7EF3FF28AAD8FF00FF28B0E0BC7F6EFFF4EBD5BCA1FFFFDDFFFFDDFFFFE0FF
        FACAEFBD81F4BD77E7C49A93C0C44FD3FB7DF4FF56D5EFFF00FF28AFE1C58870
        FFFCF8CAAA99FEFFCEFFFFC9F8E1ADF0C78CF3CA96FFEBB5D5AF959AC9D37AE0
        FE9DFBFF96F8FF23A1D328B0E1CE9173FFFAF7D8C4BDDCC59EFCE5A7FAC782FB
        D08BFFF7E0E7DCCE8CA5AA6BC9E65FBCE060BBDE6CC4E329A1D12DB2E2D59975
        FFF8F3FCFBFAE5D1C9E9CAA6E7C599E1C298CCB59FB18B8875E7F86DEDFE179D
        D1FF00FFFF00FFFF00FF1FA1D9DDA077FFFBF6FFFFFFFFFFFFFFFFFEFBF4EBB4
        8379BF7849B16F5350C0E550C4E71C9DD0FF00FFFF00FFFF00FFFF00FFE2A678
        FFFFFFFFFFFFFFFFFFFFFFFFF8FAFCB6877AE29955FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1926DB4
        7E6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = BitBtn9Click
    end
    object BitBtn13: TBitBtn
      Left = 6
      Top = 242
      Width = 95
      Height = 34
      Hint = 'Atualizar estoque'
      Caption = 'Menu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF1C99CE2BA5D51C9DD10A8AC6FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFBFA5A34D5A72FF00FFFF00FF249CCFA6EEF7
        6CEBF85DD9F04AC7E739B8E020A0D40F91CA0F91C9FF00FFFF00FFBFA5A35766
        831276E23C91DCFF00FF0C8CC799DDEF8BFFFF80FCFF82FBFF7FFAFF79F3FF65
        E1F74ECEED3CBAE07591A05B66811170D833A1FF2A9AFEFF00FF1296CC59BADE
        9FFEFF75F7FF78F6FF77F2FC89D9E087D7DE7BE2EA91BCC05168891370D531A0
        FF319EFBFF00FFFF00FF26A5D448C1E69FEFF879F6FB87D8DCBACABCDABCA5D0
        B59EAF9A8C817A734179AF32A3FF3DACFE1B9CD4FF00FFFF00FF27AFDE8B97A1
        88CFE28BD1D3CBB4ADF7F0DDFFFFD8FFFFD9FAF8C5CFB08CC4A9A34DC1FC55D0
        FB41C1E3FF00FFFF00FF25AFE1AD706B5DBCDDB5A69EF7F4EEFFFFFFFFFFE3FF
        FFD4FFF7C1FFE6A5D8A0826FD4EB59D7FB68E2F80E90C9FF00FF26AFE1B5776D
        A4CFD9CEB69EFFFFEAFFFFF3FFFFEAFFFFD7F7DCA9F6C986E1B89191C0C753D3
        FB7EF3FF28AAD8FF00FF28B0E0BC7F6EFFF4EBD5BCA1FFFFDDFFFFDDFFFFE0FF
        FACAEFBD81F4BD77E7C49A93C0C44FD3FB7DF4FF56D5EFFF00FF28AFE1C58870
        FFFCF8CAAA99FEFFCEFFFFC9F8E1ADF0C78CF3CA96FFEBB5D5AF959AC9D37AE0
        FE9DFBFF96F8FF23A1D328B0E1CE9173FFFAF7D8C4BDDCC59EFCE5A7FAC782FB
        D08BFFF7E0E7DCCE8CA5AA6BC9E65FBCE060BBDE6CC4E329A1D12DB2E2D59975
        FFF8F3FCFBFAE5D1C9E9CAA6E7C599E1C298CCB59FB18B8875E7F86DEDFE179D
        D1FF00FFFF00FFFF00FF1FA1D9DDA077FFFBF6FFFFFFFFFFFFFFFFFEFBF4EBB4
        8379BF7849B16F5350C0E550C4E71C9DD0FF00FFFF00FFFF00FFFF00FFE2A678
        FFFFFFFFFFFFFFFFFFFFFFFFF8FAFCB6877AE29955FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1926DB4
        7E6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 7
      OnClick = BitBtn13Click
    end
    object BitBtn10: TBitBtn
      Left = 6
      Top = 215
      Width = 95
      Height = 28
      Hint = 'Atualizar estoque'
      Caption = 'Novo Balan'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 6
      OnClick = BitBtn10Click
    end
    object btnAtualizaEstoque: TBitBtn
      Left = 6
      Top = 306
      Width = 95
      Height = 34
      Hint = 'Atualizar estoque'
      Caption = 'Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btnAtualizaEstoqueClick
    end
    object edtDT_Atualizado: TcxDBTextEdit
      Left = 6
      Top = 346
      TabStop = False
      DataBinding.DataField = 'DT_ATUALIZACAO'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.ReadOnly = True
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 12
      Width = 94
    end
    object chkConfirmar: TCheckBox
      Left = 6
      Top = 373
      Width = 97
      Height = 17
      Caption = 'Confirmar Sempre'
      TabOrder = 13
    end
  end
  object Panel7: TPanel [2]
    Left = 54
    Top = 187
    Width = 386
    Height = 80
    Caption = '-'
    TabOrder = 3
    Visible = False
    object Gradient7: TGradient
      Left = 1
      Top = 1
      Width = 384
      Height = 78
      Align = alClient
      ColorEnd = 16756834
      Style = gsRadialTR
      ExplicitLeft = 0
      ExplicitWidth = 437
      ExplicitHeight = 60
    end
    object Label13: TLabel
      Left = 14
      Top = 10
      Width = 212
      Height = 26
      Caption = 
        'Selecione qual estoque ser'#225' alterado'#13#10'para a corre'#231#227'o das diverg' +
        #234'ncias:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 233
      Top = 4
      Width = 114
      Height = 13
      Caption = 'R$ Valor custo total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnGerarEstoqueSintegra: TBitBtn
      Left = 272
      Top = 49
      Width = 95
      Height = 24
      Hint = 'Gerar estoque sintegra'
      Caption = 'Gerar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
      OnClick = btnGerarEstoqueSintegraClick
    end
    object BitBtn16: TBitBtn
      Left = 174
      Top = 49
      Width = 95
      Height = 24
      Hint = 'Atualizar estoque'
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn16Click
    end
    object edtCustoTotalSINTEGRA: TcxCurrencyEdit
      Left = 231
      Top = 16
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '#,###,##0.00;-0.00'
      TabOrder = 2
      Width = 136
    end
  end
  object PanelLocalEstoque: TPanel [3]
    Left = 102
    Top = 115
    Width = 439
    Height = 62
    Caption = '-'
    TabOrder = 2
    Visible = False
    object Gradient5: TGradient
      Left = 1
      Top = 1
      Width = 437
      Height = 60
      Align = alClient
      ColorEnd = 16756834
      Style = gsRadialTR
      ExplicitLeft = 0
    end
    object Label12: TLabel
      Left = 14
      Top = 10
      Width = 212
      Height = 26
      Caption = 
        'Selecione qual estoque ser'#225' alterado'#13#10'para a corre'#231#227'o das diverg' +
        #234'ncias:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ComboLocal2: TcxComboBox
      Left = 237
      Top = 8
      Properties.DropDownListStyle = lsFixedList
      TabOrder = 0
      Width = 191
    end
    object BitBtn11: TBitBtn
      Left = 338
      Top = 34
      Width = 95
      Height = 24
      Hint = 'Atualizar estoque'
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 1
      OnClick = AtualizarEstoqueClick
    end
    object BitBtn12: TBitBtn
      Left = 236
      Top = 33
      Width = 95
      Height = 24
      Hint = 'Atualizar estoque'
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn12Click
    end
  end
  inherited DS: TDataSource
    DataSet = Balanco
    OnDataChange = DSDataChange
    Left = 596
    Top = 212
  end
  inherited Timer1: TTimer
    Left = 624
    Top = 184
  end
  inherited Transa: TIBTransaction
    Left = 652
    Top = 184
  end
  inherited SPA: TIBStoredProc
    Transaction = Transa_Titulo
    StoredProcName = 'GENBALANCO_TITULO1'
    Left = 624
    Top = 212
  end
  object Balanco: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    AfterOpen = BalancoAfterOpen
    BeforeClose = BalancoBeforeClose
    BeforeDelete = BalancoBeforeDelete
    BeforePost = BalancoBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BALANCO'
      'where'
      '  CODBALANCO_TITULO = :OLD_CODBALANCO_TITULO and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into BALANCO'
      
        '  (CODBALANCO_TITULO, CODIGO, CODUSUARIO, DATA, DESCRICAO, DT_AT' +
        'UALIZACAO, '
      '   DT_GUARDAR_VALORES, ESTOQUE_LOCAL)'
      'values'
      
        '  (:CODBALANCO_TITULO, :CODIGO, :CODUSUARIO, :DATA, :DESCRICAO, ' +
        ':DT_ATUALIZACAO, '
      '   :DT_GUARDAR_VALORES, :ESTOQUE_LOCAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CODBALANCO_TITULO,'
      '  DESCRICAO,'
      '  DT_ATUALIZACAO,'
      '  DT_GUARDAR_VALORES,'
      '  CODUSUARIO,'
      '  DATA,'
      '  ESTOQUE_LOCAL'
      'from BALANCO '
      'where'
      '  CODBALANCO_TITULO = :CODBALANCO_TITULO and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select *  from BALANCO'
      'where (CODBALANCO_TITULO = :Codigo)'
      'ORDER BY CODIGO')
    ModifySQL.Strings = (
      'update BALANCO'
      'set'
      '  CODBALANCO_TITULO = :CODBALANCO_TITULO,'
      '  CODIGO = :CODIGO,'
      '  CODUSUARIO = :CODUSUARIO,'
      '  DATA = :DATA,'
      '  DESCRICAO = :DESCRICAO,'
      '  DT_ATUALIZACAO = :DT_ATUALIZACAO,'
      '  DT_GUARDAR_VALORES = :DT_GUARDAR_VALORES,'
      '  ESTOQUE_LOCAL = :ESTOQUE_LOCAL'
      'where'
      '  CODBALANCO_TITULO = :OLD_CODBALANCO_TITULO and'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    DataSource = DSBalanco_Titulo
    Left = 568
    Top = 212
    object BalancoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"BALANCO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BalancoCODBALANCO_TITULO: TIBStringField
      FieldName = 'CODBALANCO_TITULO'
      Origin = '"BALANCO"."CODBALANCO_TITULO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object BalancoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"BALANCO"."DESCRICAO"'
      Size = 150
    end
    object BalancoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"BALANCO"."DATA"'
    end
    object BalancoDT_ATUALIZACAO: TDateTimeField
      FieldName = 'DT_ATUALIZACAO'
      Origin = '"BALANCO"."DT_ATUALIZACAO"'
    end
    object BalancoDT_GUARDAR_VALORES: TDateTimeField
      FieldName = 'DT_GUARDAR_VALORES'
      Origin = '"BALANCO"."DT_GUARDAR_VALORES"'
    end
    object BalancoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = '"BALANCO"."CODUSUARIO"'
    end
    object BalancoESTOQUE_LOCAL: TIBStringField
      FieldName = 'ESTOQUE_LOCAL'
      Origin = '"BALANCO"."ESTOQUE_LOCAL"'
      Size = 15
    end
  end
  object Balanco_Produtos: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    AfterEdit = Balanco_ProdutosAfterEdit
    BeforeOpen = Balanco_ProdutosBeforeOpen
    OnCalcFields = Balanco_ProdutosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BALANCO_PRODUTOS'
      'where'
      '  CODBALANCO_TITULO = :OLD_CODBALANCO_TITULO and'
      '  CODBALANCO = :OLD_CODBALANCO and'
      '  CODPRODUTO = :OLD_CODPRODUTO')
    InsertSQL.Strings = (
      'insert into BALANCO_PRODUTOS'
      '  (CODBALANCO_TITULO, CODBALANCO, CODPRODUTO, QUANT)'
      'values'
      '  (:CODBALANCO_TITULO, :CODBALANCO, :CODPRODUTO, :QUANT)')
    RefreshSQL.Strings = (
      'Select '
      '  CODBALANCO_TITULO,'
      '  CODBALANCO,'
      '  CODPRODUTO,'
      '  QUANT'
      'from BALANCO_PRODUTOS '
      'where'
      '  CODBALANCO_TITULO = :CODBALANCO_TITULO and'
      '  CODBALANCO = :CODBALANCO and'
      '  CODPRODUTO = :CODPRODUTO')
    SelectSQL.Strings = (
      
        'select BP.*, P.DESCRICAO, P.UNIDADE,  P.CUSTO, P.VALOR, P.CODFAB' +
        'RICA, P.ATIVO'
      ''
      'from BALANCO_PRODUTOS BP'
      'left join PRODUTO P on (BP.CODPRODUTO = P.CODIGO)'
      
        'left join PRODUTO_ESTOQUE E on (BP.CODPRODUTO = E.CODPRODUTO) an' +
        'd (E.CODEMPRESA = :EMP or (E.CODEMPRESA is null))'
      'where (BP.CODBALANCO = :CODIGO) and'
      '      (BP.CODBALANCO_TITULO = :CODBALANCO_TITULO) '
      'order by P.DESCRICAO  ')
    ModifySQL.Strings = (
      'update BALANCO_PRODUTOS'
      'set'
      '  CODBALANCO_TITULO = :CODBALANCO_TITULO,'
      '  CODBALANCO = :CODBALANCO,'
      '  CODPRODUTO = :CODPRODUTO,'
      '  QUANT = :QUANT'
      'where'
      '  CODBALANCO_TITULO = :OLD_CODBALANCO_TITULO and'
      '  CODBALANCO = :OLD_CODBALANCO and'
      '  CODPRODUTO = :OLD_CODPRODUTO')
    ParamCheck = True
    UniDirectional = False
    DataSource = DS
    Left = 567
    Top = 241
    object Balanco_ProdutosCODBALANCO_TITULO: TIBStringField
      FieldName = 'CODBALANCO_TITULO'
      Origin = '"BALANCO_PRODUTO"."CODBALANCO_TITULO"'
      Required = True
      Size = 15
    end
    object Balanco_ProdutosCODBALANCO: TIntegerField
      FieldName = 'CODBALANCO'
      Origin = '"BALANCO_PRODUTO"."CODBALANCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Balanco_ProdutosCODPRODUTO: TIBStringField
      FieldName = 'CODPRODUTO'
      Origin = '"BALANCO_PRODUTO"."CODPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object Balanco_ProdutosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTO"."DESCRICAO"'
      Size = 300
    end
    object Balanco_ProdutosQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = '"BALANCO_PRODUTO"."QUANT"'
    end
    object Balanco_ProdutosSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      Calculated = True
    end
    object Balanco_ProdutosTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '##,###,##0.00'
      Calculated = True
    end
    object Balanco_ProdutosEstoque_Valor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Estoque_Valor'
      DisplayFormat = '#,###,##0.00'
      Calculated = True
    end
    object Balanco_ProdutosESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = '"PRODUTO_ESTOQUE"."ESTOQUE"'
      DisplayFormat = '#,###,##0.####'
    end
    object Balanco_ProdutosVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"PRODUTO"."VALOR"'
    end
    object Balanco_ProdutosCODFABRICA: TIBStringField
      FieldName = 'CODFABRICA'
      Origin = '"PRODUTO"."CODFABRICA"'
      Size = 60
    end
    object Balanco_ProdutosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"PRODUTO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object Balanco_ProdutosCUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = '"PRODUTO"."CUSTO"'
    end
    object Balanco_ProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'PRODUTO.UNIDADE'
      Size = 6
    end
  end
  object DS_Balanco_Produto: TDataSource
    DataSet = Balanco_Produtos
    Left = 596
    Top = 240
  end
  object Consulta_Produto: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT P.*, E.CODEMPRESA, E.ESTOQUE AS ESTOQUE_P, E.CODPRODUTO F' +
        'ROM PRODUTO P'
      
        'LEFT JOIN PRODUTO_ESTOQUE  E ON (P.CODIGO=E.CODPRODUTO)AND (E.CO' +
        'DEMPRESA= :Emp)'
      ' '
      'ORDER BY P.DESCRICAO')
    Left = 568
    Top = 268
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Emp'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = Consulta_Produto
    Left = 596
    Top = 268
  end
  object Soma_Balanco: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = Soma_BalancoBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS
    ParamCheck = True
    SQL.Strings = (
      'SELECT B.CODPRODUTO,SUM(B.QUANT)AS Quant'
      'FROM BALANCO_PRODUTOS B'
      
        'LEFT JOIN PRODUTO_ESTOQUE P ON (P.CODPRODUTO = B.CODPRODUTO)AND(' +
        'P.CODEMPRESA= :Emp)'
      'WHERE (B.CODBALANCO_TITULO LIKE :CODBALANCO_TITULO)'
      'GROUP BY B.CODPRODUTO'
      ' ')
    Left = 624
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftWideString
        Name = 'CODBALANCO_TITULO'
        ParamType = ptUnknown
        Size = 32
      end>
  end
  object Estoque_Produto: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BeforeOpen = Estoque_ProdutoBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRODUTO_ESTOQUE'
      'where'
      '  CODEMPRESA = :OLD_CODEMPRESA and'
      '  CODPRODUTO = :OLD_CODPRODUTO')
    InsertSQL.Strings = (
      'insert into PRODUTO_ESTOQUE'
      '  (CODEMPRESA, CODPRODUTO, ESTOQUE)'
      'values'
      '  (:CODEMPRESA, :CODPRODUTO, :ESTOQUE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODPRODUTO,'
      '  CODEMPRESA,'
      '  ESTOQUE'
      'from PRODUTO_ESTOQUE '
      'where'
      '  CODEMPRESA = :CODEMPRESA and'
      '  CODPRODUTO = :CODPRODUTO')
    SelectSQL.Strings = (
      'select * from PRODUTO_ESTOQUE'
      'WHERE (CODPRODUTO= :CodProduto) and (CODEMPRESA= :Emp)'
      ''
      ''
      ''
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update PRODUTO_ESTOQUE'
      'set'
      '  CODEMPRESA = :CODEMPRESA,'
      '  CODPRODUTO = :CODPRODUTO,'
      '  ESTOQUE = :ESTOQUE'
      'where'
      '  CODEMPRESA = :OLD_CODEMPRESA and'
      '  CODPRODUTO = :OLD_CODPRODUTO')
    ParamCheck = True
    UniDirectional = False
    DataSource = DS_Balanco_Produto
    Left = 568
    Top = 296
    object Estoque_ProdutoCODPRODUTO: TIBStringField
      FieldName = 'CODPRODUTO'
      Origin = '"ESTOQUE_PRODUTO"."CODPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object Estoque_ProdutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = '"ESTOQUE_PRODUTO"."ESTOQUE"'
    end
    object Estoque_ProdutoCODEMPRESA: TIBStringField
      FieldName = 'CODEMPRESA'
      Origin = '"ESTOQUE_PRODUTO"."CODEMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object DSEstoque_Produto: TDataSource
    DataSet = Estoque_Produto
    Left = 596
    Top = 296
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Title = 'Selecione o Texto'
    Left = 624
    Top = 268
  end
  object Balanco_Titulo: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa_Titulo
    AfterOpen = Balanco_TituloAfterOpen
    BeforeClose = Balanco_TituloBeforeClose
    BeforeOpen = Balanco_TituloBeforeOpen
    OnCalcFields = Balanco_ProdutosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BALANCO_TITULO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into BALANCO_TITULO'
      '  (CODIGO, DATA)'
      'values'
      '  (:CODIGO, :DATA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DATA'
      'from BALANCO_TITULO '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select  * from BALANCO_TITULO B')
    ModifySQL.Strings = (
      'update BALANCO_TITULO'
      'set'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 568
    Top = 184
    object Balanco_TituloCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"BALANCO_TITULO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object Balanco_TituloDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"BALANCO_TITULO"."DATA"'
    end
  end
  object DSBalanco_Titulo: TDataSource
    DataSet = Balanco_Titulo
    OnStateChange = DSBalanco_TituloStateChange
    Left = 596
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 624
    Top = 296
    object AgruparAgrupatodasoslocais1: TMenuItem
      Caption = 'Agrupar Todos (Locais/Prateleiras)'
      OnClick = Agrupar1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ColetordeDados1: TMenuItem
      Caption = 'Coletor de Dados'
      OnClick = ColetordeDados1Click
    end
    object Produtoscomestoquenegativos1: TMenuItem
      Caption = 'Produtos com estoque negativos'
      OnClick = Produtoscomestoquenegativos1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ConsultarBalanosAntigos1: TMenuItem
      Caption = 'Consultar Balan'#231'os Antigos '
      OnClick = ConsultarBalanosAntigos1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AtualizarEstoqueCorreaodasdivergencias1: TMenuItem
      Caption = 'Atualizar Estoque (Corre'#231#227'o das diverg'#234'ncias)'
      OnClick = AtualizarEstoqueCorreaodasdivergencias1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object EnviarparaCodigodeBarras1: TMenuItem
      Caption = 'Enviar para C'#243'digo de Barras'
      OnClick = EnviarparaCodigodeBarras1Click
    end
    object DefinirValoresparaBalano1: TMenuItem
      Caption = 'Gerar balan'#231'o para SINTEGRA'
      OnClick = DefinirValoresparaBalano1Click
    end
  end
  object Transa_Titulo: TIBTransaction
    DefaultDatabase = FrmPrincipal.CONECTAR
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 652
    Top = 212
  end
  object Produtos_Nao_Contados: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT P.CODIGO FROM PRODUTO P'
      
        'LEFT JOIN BALANCO_PRODUTOS  E ON (P.CODIGO=E.CODPRODUTO)AND (E.C' +
        'ODEMPRESA= :Emp)'
      ''
      ' '
      'ORDER BY P.DESCRICAO')
    Left = 652
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Emp'
        ParamType = ptUnknown
      end>
    object IBStringField1: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PRODUTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object IBStringField3: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"PRODUTO"."LOCAL"'
      Size = 30
    end
    object IBStringField4: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PRODUTO"."UNIDADE"'
      Size = 3
    end
    object IBStringField5: TIBStringField
      FieldName = 'CODPRODUTO_GRUPO'
      Origin = '"PRODUTO"."CODPRODUTO_GRUPO"'
      Size = 15
    end
    object IBStringField6: TIBStringField
      FieldName = 'CODFABRICA'
      Origin = '"PRODUTO"."CODFABRICA"'
      Size = 15
    end
    object IBStringField7: TIBStringField
      FieldName = 'CODFORNECEDOR'
      Origin = '"PRODUTO"."CODFORNECEDOR"'
      Size = 10
    end
    object FloatField1: TFloatField
      FieldName = 'FRETE'
      Origin = '"PRODUTO"."FRETE"'
    end
    object FloatField2: TFloatField
      FieldName = 'ESTOQUE'
      Origin = '"PRODUTO"."ESTOQUE"'
    end
    object FloatField3: TFloatField
      FieldName = 'ESTOQUE_MIN'
      Origin = '"PRODUTO"."ESTOQUE_MIN"'
    end
    object FloatField4: TFloatField
      FieldName = 'ESTOQUE_MAX'
      Origin = '"PRODUTO"."ESTOQUE_MAX"'
    end
    object FloatField5: TFloatField
      FieldName = 'CUSTO_FABR'
      Origin = '"PRODUTO"."CUSTO_FABR"'
    end
    object FloatField6: TFloatField
      FieldName = 'CUSTO_LOJA'
      Origin = '"PRODUTO"."CUSTO_LOJA"'
    end
    object FloatField7: TFloatField
      FieldName = 'CUSTO_MEDIO'
      Origin = '"PRODUTO"."CUSTO_MEDIO"'
    end
    object FloatField8: TFloatField
      FieldName = 'MARGEM'
      Origin = '"PRODUTO"."MARGEM"'
    end
    object FloatField9: TFloatField
      FieldName = 'VALOR'
      Origin = '"PRODUTO"."VALOR"'
    end
    object IBStringField8: TIBStringField
      FieldName = 'APLICACAO'
      Origin = '"PRODUTO"."APLICACAO"'
      Size = 100
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"PRODUTO"."DT_CADASTRO"'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DT_ATUALIZACAO'
      Origin = '"PRODUTO"."DT_ATUALIZACAO"'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'DT_REAJUSTE'
      Origin = '"PRODUTO"."DT_REAJUSTE"'
    end
    object IBStringField9: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PRODUTO"."TIPO"'
      Size = 15
    end
    object IBStringField10: TIBStringField
      FieldName = 'INDEXADOR'
      Origin = '"PRODUTO"."INDEXADOR"'
      Size = 1
    end
    object IBStringField11: TIBStringField
      FieldName = 'UNIDADEATACADO'
      Origin = '"PRODUTO"."UNIDADEATACADO"'
      Size = 3
    end
    object FloatField10: TFloatField
      FieldName = 'VALORATACADO'
      Origin = '"PRODUTO"."VALORATACADO"'
    end
    object IBStringField12: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"PRODUTO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object FloatField11: TFloatField
      FieldName = 'MARGEM_ATACADO'
      Origin = '"PRODUTO"."MARGEM_ATACADO"'
    end
    object IBStringField13: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"PRODUTO"."OBSERVACAO"'
      Size = 400
    end
    object IBStringField14: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"PRODUTO"."HISTORICO"'
      Size = 600
    end
    object FloatField12: TFloatField
      FieldName = 'VALOR_PRAZO'
      Origin = '"PRODUTO"."VALOR_PRAZO"'
    end
    object FloatField13: TFloatField
      FieldName = 'MARGEM_PRAZO'
      Origin = '"PRODUTO"."MARGEM_PRAZO"'
    end
    object IBStringField15: TIBStringField
      FieldName = 'IAT'
      Origin = '"PRODUTO"."IAT"'
      Size = 1
    end
    object IBStringField16: TIBStringField
      FieldName = 'IPPT'
      Origin = '"PRODUTO"."IPPT"'
      Size = 1
    end
    object IBStringField17: TIBStringField
      FieldName = 'CODNF_NCM'
      Origin = '"PRODUTO"."CODNF_NCM"'
      FixedChar = True
      Size = 9
    end
    object IBStringField18: TIBStringField
      FieldName = 'EX_IPI'
      Origin = '"PRODUTO"."EX_IPI"'
      FixedChar = True
      Size = 2
    end
    object FloatField14: TFloatField
      FieldName = 'QUANT_MINIMO_ATACADO'
      Origin = '"PRODUTO"."QUANT_MINIMO_ATACADO"'
    end
    object IBStringField19: TIBStringField
      FieldName = 'CODEMPRESA'
      Origin = '"PRODUTO_ESTOQUE"."CODEMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object FloatField15: TFloatField
      FieldName = 'ESTOQUE_P'
      Origin = '"PRODUTO_ESTOQUE"."ESTOQUE"'
    end
    object IBStringField20: TIBStringField
      FieldName = 'CODPRODUTO'
      Origin = '"PRODUTO_ESTOQUE"."CODPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 15
    end
  end
  object PopupMenu_CadastroProduto: TPopupMenu
    Left = 652
    Top = 296
    object CadastrodeProduto1: TMenuItem
      Caption = 'Cadastro de Produto'
      OnClick = CadastrodeProduto1Click
    end
    object LocalizarasPreteleirasdoproduto1: TMenuItem
      Caption = 'Localizar as Prateleiras do produto'
    end
  end
  object Balanco_Produtos_Divegencias: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BALANCO_PRODUTOS'
      'where'
      '  CODBALANCO = :OLD_CODBALANCO and'
      '  CODBALANCO_TITULO = :OLD_CODBALANCO_TITULO and'
      '  CODPRODUTO = :OLD_CODPRODUTO')
    InsertSQL.Strings = (
      'insert into BALANCO_PRODUTOS'
      '  (CODBALANCO, CODBALANCO_TITULO, CODPRODUTO, QUANT)'
      'values'
      '  (:CODBALANCO, :CODBALANCO_TITULO, :CODPRODUTO, :QUANT)')
    RefreshSQL.Strings = (
      'Select '
      '  CODBALANCO_TITULO,'
      '  CODBALANCO,'
      '  CODPRODUTO,'
      '  QUANT'
      'from BALANCO_PRODUTOS '
      'where'
      '  CODBALANCO = :CODBALANCO and'
      '  CODBALANCO_TITULO = :CODBALANCO_TITULO and'
      '  CODPRODUTO = :CODPRODUTO')
    SelectSQL.Strings = (
      
        'select BP.*, P.DESCRICAO,  P.CUSTO, P.VALOR, P.CODFABRICA, P.ATI' +
        'VO'
      ''
      'from BALANCO_PRODUTOS BP'
      'left join PRODUTO P on (BP.CODPRODUTO = P.CODIGO)'
      
        'left join PRODUTO_ESTOQUE E on (BP.CODPRODUTO = E.CODPRODUTO) an' +
        'd (E.CODEMPRESA = :EMP or (E.CODEMPRESA is null))'
      'where (BP.CODBALANCO= -1) and'
      '      (BP.CODBALANCO_TITULO = :CODBALANCO_TITULO)'
      'order by P.DESCRICAO  ')
    ModifySQL.Strings = (
      'update BALANCO_PRODUTOS'
      'set'
      '  CODBALANCO = :CODBALANCO,'
      '  CODBALANCO_TITULO = :CODBALANCO_TITULO,'
      '  CODPRODUTO = :CODPRODUTO,'
      '  QUANT = :QUANT'
      'where'
      '  CODBALANCO = :OLD_CODBALANCO and'
      '  CODBALANCO_TITULO = :OLD_CODBALANCO_TITULO and'
      '  CODPRODUTO = :OLD_CODPRODUTO')
    ParamCheck = True
    UniDirectional = False
    Left = 652
    Top = 268
  end
  object UCHistWRGeral1: TUCHistWRGeral
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    Left = 568
    Top = 324
  end
  object frxBalanco_Produtos: TfrxDBDataset
    UserName = 'Balanco_Produtos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODBALANCO_TITULO=CODBALANCO_TITULO'
      'CODBALANCO=CODBALANCO'
      'CODPRODUTO=CODPRODUTO'
      'DESCRICAO=DESCRICAO'
      'QUANT=QUANT'
      'Saldo=Saldo'
      'Total=Total'
      'Estoque_Valor=Estoque_Valor'
      'ESTOQUE=ESTOQUE'
      'CUSTO_FABR=CUSTO_FABR'
      'CUSTO_LOJA=CUSTO_LOJA'
      'VALOR=VALOR'
      'VALOR_PRAZO=VALOR_PRAZO'
      'CODFABRICA=CODFABRICA')
    DataSet = Balanco_Produtos
    BCDToCurrency = False
    Left = 521
    Top = 319
  end
  object frxBalanco: TfrxDBDataset
    UserName = 'Balanco'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODBALANCO_TITULO=CODBALANCO_TITULO'
      'DESCRICAO=DESCRICAO'
      'DATA=DATA'
      'DT_ATUALIZACAO=DT_ATUALIZACAO'
      'DT_GUARDAR_VALORES=DT_GUARDAR_VALORES'
      'CODUSUARIO=CODUSUARIO'
      'ESTOQUE_LOCAL=ESTOQUE_LOCAL')
    DataSet = Balanco
    BCDToCurrency = False
    Left = 493
    Top = 292
  end
  object frxBalanco_Titulo: TfrxDBDataset
    UserName = 'Balanco_Titulo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA')
    DataSet = Balanco_Titulo
    BCDToCurrency = False
    Left = 493
    Top = 263
  end
  object frxEstoque_Produto: TfrxDBDataset
    UserName = 'Estoque_Produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'ESTOQUE=ESTOQUE'
      'CODEMPRESA=CODEMPRESA')
    DataSet = Estoque_Produto
    BCDToCurrency = False
    Left = 520
    Top = 265
  end
  object frxSoma_Balanco: TfrxDBDataset
    UserName = 'Soma_Balanco'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'QUANT=QUANT')
    DataSet = Soma_Balanco
    BCDToCurrency = False
    Left = 521
    Top = 290
  end
  object frxBalanco_Produtos_Divegencias: TfrxDBDataset
    UserName = 'Balanco_Produtos_Divegencias'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODBALANCO_TITULO=CODBALANCO_TITULO'
      'CODBALANCO=CODBALANCO'
      'CODPRODUTO=CODPRODUTO'
      'QUANT=QUANT'
      'DESCRICAO=DESCRICAO'
      'CUSTO=CUSTO'
      'VALOR=VALOR'
      'CODFABRICA=CODFABRICA'
      'ATIVO=ATIVO')
    DataSet = Balanco_Produtos_Divegencias
    BCDToCurrency = False
    Left = 493
    Top = 319
  end
  object WREventosCadastro1: TWREventosCadastro
    Versao_Configuracao = 2
    Empresa = 0
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    Left = 392
    Top = 264
  end
end
