inherited FrmNF_Entrada: TFrmNF_Entrada
  Tag = 44
  Left = 98
  Top = 55
  Hint = 'Cadastro de Notas de Entrada e Sa'#237'da de Mercadorias'
  Caption = 'Cadastro de Compra'
  ClientHeight = 654
  ClientWidth = 1172
  Color = 16505824
  Position = poDesigned
  ExplicitWidth = 1188
  ExplicitHeight = 693
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel [0]
    Left = 55
    Top = 74
    Width = 386
    Height = 16
    AutoSize = False
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label30: TLabel [1]
    Left = 294
    Top = 3
    Width = 29
    Height = 11
    Caption = 'Moeda'
    Color = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label98: TLabel [2]
    Left = 13
    Top = 18
    Width = 62
    Height = 10
    Caption = 'Unidade na Nota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited PnlHistorico_SLA: TPanel
    TabOrder = 4
  end
  object PnlTabelaPreco: TPanel [4]
    Left = 214
    Top = 222
    Width = 848
    Height = 303
    Caption = 'Pre'#231'o Especial'
    TabOrder = 6
  end
  object PnlPreencheCodFabrica: TPanel [5]
    Left = 215
    Top = 65
    Width = 407
    Height = 94
    Caption = 'Auto-Preenchimento de C'#243'digo'
    Color = 16505534
    ParentBackground = False
    TabOrder = 5
    Visible = False
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 405
      Height = 92
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object cxLabel1: TcxLabel
        Left = 80
        Top = 15
        Caption = 'Qual Campo voc'#234' deseja que o sistema preencha?'
        Style.HotTrack = False
        Transparent = True
      end
      object cxButton1: TcxButton
        Left = 52
        Top = 60
        Width = 150
        Height = 25
        Caption = 'C'#243'digo de F'#225'brica'
        ModalResult = 6
        TabOrder = 1
      end
      object cxButton2: TcxButton
        Left = 203
        Top = 60
        Width = 150
        Height = 25
        Caption = 'C'#243'digo EAN'
        ModalResult = 7
        TabOrder = 2
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem37: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahCenter
        Offsets.Top = 15
        CaptionOptions.Visible = False
        Control = cxLabel1
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 245
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem51: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxButton1
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 150
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem56: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = cxButton2
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 150
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahCenter
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        Offsets.Top = 5
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
        Parent = dxLayoutControl1Group_Root
        Offsets.Top = 15
        CaptionOptions.Text = 'Separator'
        Index = 1
      end
    end
  end
  object GridConsulta_Produto: TDBGrid [6]
    Left = 4
    Top = 300
    Width = 679
    Height = 157
    Hint = 
      'Selecione o item desejado e precione Esc, Enter ou dois Clicks c' +
      'om o mouse.'
    Ctl3D = False
    DataSource = DSConsulta_Produto
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
    TabOrder = 7
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnDblClick = GridConsulta_ProdutoDblClick
    OnKeyDown = GridConsulta_ProdutoKeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.'
        Title.Color = clMoneyGreen
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Color = clMoneyGreen
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_P'
        Title.Alignment = taCenter
        Title.Caption = 'Estoque'
        Title.Color = clMoneyGreen
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Caption = 'Unid.'
        Title.Color = clMoneyGreen
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Refer.'
        Title.Color = clMoneyGreen
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Caption = 'R$ Venda'
        Title.Color = clMoneyGreen
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADEATACADO'
        Title.Caption = 'Unid. Atacado'
        Title.Color = clMoneyGreen
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORATACADO'
        Title.Caption = 'R$ Atacado'
        Title.Color = clMoneyGreen
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCAL'
        Title.Caption = 'Local'
        Title.Color = clMoneyGreen
        Visible = True
      end>
  end
  object PnlAguarde: TPanel [7]
    Left = 218
    Top = 176
    Width = 298
    Height = 60
    Caption = 'Aguarde enquanto os produtos s'#227'o adicionados...'
    ParentBackground = False
    TabOrder = 0
    Visible = False
  end
  inherited MainLayout: TdxLayoutControl
    Width = 1172
    Height = 634
    TabOrder = 3
    ExplicitWidth = 1172
    ExplicitHeight = 634
    DesignSize = (
      1172
      634)
    inherited btnNovo: TcxButton
      Left = 1213
      ExplicitLeft = 1213
    end
    inherited btnConfirmar: TcxButton
      Left = 1213
      ExplicitLeft = 1213
    end
    inherited btnAlterar: TcxButton
      Left = 1213
      ExplicitLeft = 1213
    end
    inherited btnCancelar: TcxButton
      Left = 1213
      ExplicitLeft = 1213
    end
    inherited btnExcluir: TcxButton
      Left = 1213
      ExplicitLeft = 1213
    end
    inherited btnConsultar: TcxButton
      Left = 1213
      ExplicitLeft = 1213
    end
    inherited btnSair: TcxButton
      Left = 1213
      Top = 589
      ExplicitLeft = 1213
      ExplicitTop = 589
    end
    inherited edtCodigo: TcxDBTextEdit
      Properties.OnChange = dbtxtCodigoPropertiesChange
      TabOrder = 23
      ExplicitWidth = 64
      Width = 64
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 1081
      AutoSize = False
      TabOrder = 30
      ExplicitLeft = 1081
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 314
      AutoSize = False
      DataBinding.DataField = 'NUN_NF'
      TabOrder = 26
      ExplicitLeft = 314
      ExplicitWidth = 61
      Width = 61
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 1213
      ExplicitLeft = 1213
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 1272
      ExplicitLeft = 1272
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 8240
      TabOrder = 108
      ExplicitLeft = 8240
    end
    inherited BtnSeguidores: TcxButton
      Left = -1436
      TabOrder = 103
      ExplicitLeft = -1436
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 1291
      ExplicitLeft = 1291
    end
    inherited btnMenuConfig: TcxButton
      Left = 8240
      TabOrder = 104
      ExplicitLeft = 8240
    end
    inherited PnlFrameHistorico: TPanel
      Left = 7280
      Top = 10000
      Width = 1016
      Height = 250
      TabOrder = 54
      Visible = False
      ExplicitLeft = 7280
      ExplicitTop = 10000
      ExplicitWidth = 1016
      ExplicitHeight = 250
    end
    inherited BtnImprimir: TcxButton
      Left = 1304
      ExplicitLeft = 1304
    end
    inherited BtnDesativar: TcxButton
      Left = 1213
      ExplicitLeft = 1213
    end
    inherited BtnAtivar: TcxButton
      Left = 1213
      ExplicitLeft = 1213
    end
    inherited BtnAjuda: TcxButton
      Left = 1213
      ExplicitLeft = 1213
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 1037
      TabOrder = 29
      ExplicitLeft = 1037
    end
    inherited BtnImprimirPadrao: TcxButton
      Left = 1213
      DropDownMenu = PopupImpressao
      Kind = cxbkDropDown
      ExplicitLeft = 1213
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Compra'
      ExplicitWidth = 1196
    end
    inherited btnSeguidoresNovo: TcxButton
      Left = 1252
      ExplicitLeft = 1252
    end
    object btnMenu: TcxButton [25]
      Left = 1213
      Top = 360
      Width = 116
      Height = 25
      Hint = 'Consultar Cadastro'
      Caption = 'Menu'
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDown
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000D744558745469746C6500466F6C6465723B035AD15300
        00033949444154785E4D8F4F681C6518879F6CC624A6D29A3524DB481A2A49AD
        6952252D9456A828F4A0424FA21E2CCDC18378110441C84DD08B9756941E455A
        04F5905623429A2AD294368626B14D36BBC936A49B6C369BCD6667777677E69B
        EFCF380322BEF0F07B2FCFEFFD3EEBD6E7AF4310604C84412983D63A4AA40C33
        C48F7661F0A54269DED43AC87EFCE3C24300AB925DE3FFD3DC71B05997F35107
        81094005C8E6FD8352990BDA30DAFBC29144E6EFD4952FCEF57D2814CD16405B
        674F8B36E67CD83CAA9439275BE35F86C2D7E1FE963466F4A9CEC489FE91118E
        9C38C6E2F41D56EECD1F5786DB46D36FB5C4BB2F98804B5D47CFC47B475EA37B
        6098E4D40F634B7F4C8C1D1E1AA1FFE429DADB9B494FDFE4B7AF2E512A383C3F
        DCF77267BC8DF1F1F95B9652FA93573FBA12DF9F7816BC758CF32783C7255DDD
        6FB0B592E7EED5CBD8458743C78678E995B3C43B9E409472DCB9394BC5D3494B
        494D1028CCEE2FE41EFE452EF988ADD4066DCF1CA26B608893E7DF23DE7500DF
        DEA0BEB140359DC12DE5C9E7147BAE9A8B5E80120D76363364EE17387CFA1D5E
        7C7B9896D618AAB28A2826719253B8BBEB08A786AC7B48D767A71233E952E39E
        653428E1905F4A93183C45EFD000AA781BB79C42D54A78D56A283A28D7437902
        E5FBD88EC176839DE552A36869030DBBC8567A8DD3673F40575790F622C6AD23
        5D379422044A44A8080A2583239A16011116189CED0DBCAACB81440F627D8A40
        FAA88848727DB42790224C21515251B49B70A59E05A4650C94B22BECEBEE03DD
        C0D4B6D17E2479A810ED4797235951A9695637623CDE8D794557DC202A501A9C
        C2265DCF1DC534721825D12292BC307D84EB935917ACAE1BD60AB1BD625DDEC8
        561BDFCCE49D07170713C6D226C02DEFD1D1D387AE6F627C117D8142CE6179A9
        4CFA9150B93D319D75C4F7936BE509A00A7893179FD4D766C0D23AC073EB3CDD
        7390DAF63CC9992CA907BB3CCED733D98ABC3EBBE95C4D97DC2CD000E4EFEFEF
        0BB432441E806574A04CAC89B99F7F22757FA1BA658B89E5A2FBDDAFA9F21C50
        07C4FC674346546D3CC7414B496080E0DF82561AEFEED9FEE5B9C9BB13D7E677
        C76D5755010FD09F9EE90DA40AF8F67A19A903B46E479A300DFFCD3F27844635
        CFC73DF50000000049454E44AE426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnImportarNFe: TcxButton [26]
      Left = 1213
      Top = 386
      Width = 116
      Height = 27
      Caption = 'Importar NFe'
      DropDownMenu = PopupImportaNFe
      Kind = cxbkDropDown
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000473424954080808087C086488000000097048597300000F3900000F
        39013A80FAAF0000001C74455874536F6674776172650041646F626520466972
        65776F726B7320435336E8BCB28C0000032F49444154388D7D924D4CDB7518C7
        3FFFF6FFEF7B61422DECDFAE74A3C0D699697D05756E077770EA32F4B0B84463
        87319E341AE3C97899070EC684C4641A5DBC188D892F075F0648CC3808199B21
        22152438D60E28A5B4B4D057FE2F3F2F7621D3F84DBEC993EFF37C9E3C874712
        42A0697A5451841B146379A3A4077D9E01601CF8867FF4F695F1482E3D147AF3
        60B5D679F0D2442397841001D33487A76766559BC329B2456DA7BD59F1AD66B2
        B57C5DFDC0B98FBD89EB83CD5265F14149747B5CAEBC714FAB7DC24AFC5C5FDF
        F1AC2484786D7EFE8FF784D521FFBE90241C0EB3532A707D0D747F95746E1A67
        A54CC4EBA3F7F029C69647F11B537894FB3EEAED7DFE158B308D3389D9396B38
        142097DFC226198C5D5DA7DA92E1E6EA04AAA39F9EC36F2142E7480A1F151D32
        452B0ED9DE02607DA2FF6C6243529F5A2EBB3C75E1A02EB7813749A6B040C417
        470DF9A96902BB2251D20C666F8C61B79FA5AE44B67FFBAB3229AF5BC3479A55
        BBDF2A41B0B38B9ABEC6CAF20CC7C30344F65AD0EB2B54F734319F75A3318B5E
        55087675B3B451EE95EB95EF2CAD7AF9ABDCFAD6B5E54C9995B572792EF535B1
        B6533493E5FD8BDFF2E34C9176AF4476618AC5F4653A5A8F52D1748AC5EA66AB
        577ED5F270AC25FF906FFB31A9629CAC8A0B83C5B51A7D3DFB41321878EE244F
        3ED2856458B9991BA1BAA510683F42325D32821E5E38F3E81D3FC800DD8702F5
        EE435C1A1AAE7E782CB084DD9263E49739DA82754C23894E819233CFBDFE9730
        6409B74D4CC64FF8BE07901B0F71FEA777FBF75B2BA126971F975DE5FE581467
        F02E9C0A0C4F0FD2413FAA1A205BAA631A66A2C1591A85CD509EF53B6AC8B61E
        4C4CA20782349597B89A38CFCCCF293AD407D0249342A18647363F6970B72EB0
        A144F7B86D28162F2E974CBA6870F1CA105EE96E9E39FD3A9BBA85D462E186D7
        667E1A3F71E7B57F2D28EB9B29DD762026B4512EFFA93099F88288A38B8E9E38
        7553A3BABAF9F21B4FFB3FE636494208003E9BB810DDAED4A6849977EF14256D
        9F239672864F770A45229BDDCABD78B4C9773B0C8010E2967792424DCDE58F89
        75D126846064DE78E7CBA952E1F3F1ECE3BBE776FB3FC3DD1EFD7563E0FFFA7F
        036450AC18E64EFD900000000049454E44AE426082}
      OptionsImage.Spacing = 2
      TabOrder = 17
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object cbxTipo: TcxDBComboBox [27]
      Left = 179
      Top = 61
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 20
      Properties.Items.Strings = (
        'NOTA SIMPLES'
        'NOTA FISCAL'
        'SOLICITA'#199#195'O DE COMPRA'
        'SA'#205'DA DE MERCADORIA'
        'ENTRADA DE MERCADORIA'
        'TRANSFER'#202'NCIA'
        'CONHECIMENTO DE TRANSPORTE'
        'NOTA DE SERVI'#199'O DE TRANSPORTE'
        'COTA'#199#195'O DE COMPRA'
        'REMESSA DE CONSERTO'
        'RETORNO DE CONSERTO'
        'DEVOLU'#199#195'O')
      Properties.OnChange = cbxTipoPropertiesChange
      Properties.OnValidate = cbxTipoPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 25
      Width = 134
    end
    object edtDT_Nota: TcxDBDateEdit [28]
      Left = 376
      Top = 61
      Margins.Left = 0
      Margins.Top = 0
      DataBinding.DataField = 'DT_NOTA'
      DataBinding.DataSource = DS
      Style.Color = clInfoBk
      Style.HotTrack = False
      TabOrder = 27
      Width = 110
    end
    object edtFornecedorÎPessoas: TcxDBButtonEdit [29]
      Tag = 36
      Left = 487
      Top = 61
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'PESSOA_RESPONSAVEL_SEQUENCIA'
      DataBinding.DataSource = DS
      ParentShowHint = False
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
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 28
      Height = 21
      Width = 94
    end
    object lblFornecedorÎPessoasÎRAZAOSOCIAL: TLabel [30]
      Left = 582
      Top = 61
      Width = 454
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Color = 16505534
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object edtData: TcxDBDateEdit [31]
      Left = 68
      Top = 61
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'DATA'
      DataBinding.DataSource = DS
      Properties.InputKind = ikRegExpr
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 24
      Height = 21
      Width = 110
    end
    object rdgTransferenciaTipo: TcxDBRadioGroup [32]
      Left = 3
      Top = 83
      Caption = 'Tipo da Transfer'#234'ncia'
      DataBinding.DataField = 'TRANSFERENCIA_TIPO'
      DataBinding.DataSource = DS
      ParentBackground = False
      ParentColor = False
      Properties.Items = <
        item
          Caption = 'Entre Estoques'
          Value = 0
        end
        item
          Caption = 'Entre Empresas'
          Value = 1
        end>
      Properties.OnChange = RgTipoTransferenciaPropertiesChange
      Style.Color = 16505534
      TabOrder = 31
      Transparent = True
      Height = 65
      Width = 162
    end
    object edtEmpresaOrigemÎEmpresa: TcxDBButtonEdit [33]
      Left = 178
      Top = 115
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CODEMPRESA_ORIGEM'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      ShowHint = True
      TabOrder = 32
      Height = 21
      Width = 57
    end
    object lblEmpresaOrigemÎEmpresaÎRAZAOSOCIAL: TLabel [34]
      Left = 236
      Top = 115
      Width = 126
      Height = 19
      AutoSize = False
      Color = 16505534
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object edtEmpresaDestinoÎEmpresa: TcxDBButtonEdit [35]
      Left = 363
      Top = 115
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CODEMPRESA_DESTINO'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      ShowHint = True
      TabOrder = 33
      Height = 21
      Width = 57
    end
    object lblEmpresaDestinoÎEmpresaÎRAZAOSOCIAL: TLabel [36]
      Left = 421
      Top = 115
      Width = 126
      Height = 19
      AutoSize = False
      Color = 16505534
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object PnlCabecalhoProduto: TPanel [37]
      Left = 13
      Top = 183
      Width = 1176
      Height = 191
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 36
      object LiGrupoProduto: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1176
        Height = 191
        Align = alClient
        TabOrder = 0
        AutoSize = True
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        object edtGrupoÎProduto_Grupo: TcxDBButtonEdit
          Left = 122
          Top = 50
          AutoSize = False
          DataBinding.DataField = 'CODPRODUTO_GRUPO'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 113
          Style.HotTrack = False
          TabOrder = 14
          Height = 21
          Width = 81
        end
        object lblGrupoÎProduto_GrupoÎDESCRICAO: TcxDBLabel
          Left = 204
          Top = 50
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 390
        end
        object edtEstoque_Anterior: TcxDBCurrencyEdit
          Left = 951
          Top = 50
          Margins.Top = 0
          TabStop = False
          AutoSize = False
          DataBinding.DataField = 'ESTOQUE_ANTERIOR'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '0.##;-0.##'
          Style.Color = clSilver
          Style.HotTrack = False
          TabOrder = 20
          Height = 21
          Width = 59
        end
        object edtProduto_Estoque_Local: TcxDBLookupComboBox
          Left = 1011
          Top = 50
          DataBinding.DataField = 'PRODUTO_ESTOQUE_LOCAL'
          DataBinding.DataSource = DSPmPrincipal
          Properties.ListColumns = <>
          Style.HotTrack = False
          TabOrder = 21
          Width = 97
        end
        object edtCodNF_NCM: TcxDBTextEdit
          Left = 595
          Top = 50
          DataBinding.DataField = 'CODNF_NCM'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 16
          Width = 103
        end
        object edtAplicacao: TcxDBTextEdit
          Left = 216
          Top = 86
          AutoSize = False
          DataBinding.DataField = 'APLICACAO'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 24
          Height = 21
          Width = 892
        end
        object edtMarcaÎProduto_Marca: TcxDBButtonEdit
          Left = 0
          Top = 86
          DataBinding.DataField = 'CODPRODUTO_MARCA'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 113
          Style.HotTrack = False
          TabOrder = 22
          Width = 57
        end
        object lblMarcaÎProduto_MarcaÎDESCRICAO: TcxDBLabel
          Left = 58
          Top = 90
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 157
        end
        object btnAdicionarProduto: TcxButton
          Left = 1109
          Top = 0
          Width = 33
          Height = 33
          OptionsImage.ImageIndex = 2
          OptionsImage.Images = FrmPrincipal.ImgListBotoes32
          TabOrder = 37
          OnClick = btnAdicionarProdutoClick
        end
        object btnRemoverProduto: TcxButton
          Left = 1143
          Top = 0
          Width = 33
          Height = 33
          OptionsImage.ImageIndex = 3
          OptionsImage.Images = FrmPrincipal.ImgListBotoes32
          TabOrder = 38
          TabStop = False
          OnClick = btnRemoverProdutoClick
        end
        object btnDetalhes: TcxButton
          Left = 1046
          Top = 0
          Width = 62
          Height = 33
          Caption = 'Detalhes'
          SpeedButtonOptions.Transparent = True
          TabOrder = 12
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnDetalhesClick
        end
        object edtCodFabrica: TcxDBTextEdit
          Left = 0
          Top = 14
          DataBinding.DataField = 'CODFABRICA'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 0
          OnExit = edtCodFabricaExit
          OnKeyDown = edtCodFabricaKeyDown
          Width = 100
        end
        object edtDescricaoProduto: TcxDBTextEdit
          Left = 202
          Top = 14
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 2
          Width = 331
        end
        object edtNF_Volume: TcxDBTextEdit
          Left = 560
          Top = 14
          DataBinding.DataField = 'NF_VOLUME'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 4
          Width = 30
        end
        object edtQuant_Compra: TcxDBCurrencyEdit
          Left = 713
          Top = 14
          Margins.Top = 0
          DataBinding.DataField = 'QTDADEPECA_SUBUNIDADE'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 8
          Properties.DisplayFormat = ',0.00###;-,0.00###'
          Properties.OnValidate = edtQuant_CompraPropertiesValidate
          Style.Color = 10930928
          Style.HotTrack = False
          TabOrder = 6
          OnKeyDown = edtQuant_CompraKeyDown
          Width = 37
        end
        object edtValor_Compra: TcxDBCurrencyEdit
          Left = 751
          Top = 14
          Margins.Top = 0
          DataBinding.DataField = 'VALOR_COMPRA'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 8
          Properties.DisplayFormat = '0.00####;-,0.00####'
          Properties.OnValidate = edtValor_CompraPropertiesValidate
          Style.HotTrack = False
          StyleHot.Color = clWindow
          TabOrder = 7
          Width = 65
        end
        object edtTotal_Compra: TcxDBCurrencyEdit
          Left = 817
          Top = 14
          Margins.Top = 0
          TabStop = False
          DataBinding.DataField = 'TOTAL_COMPRA'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 8
          Properties.DisplayFormat = '0.00####;-,0.00####'
          Properties.OnValidate = edtTotalPropertiesValidate
          Style.Color = clWhite
          Style.HotTrack = False
          TabOrder = 8
          Width = 65
        end
        object edtMargem: TcxDBCurrencyEdit
          Left = 883
          Top = 14
          Margins.Top = 0
          AutoSize = False
          DataBinding.DataField = 'MARGEM'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 8
          Properties.DisplayFormat = '0.##;-,0.##'
          Properties.OnValidate = edtMargemPropertiesValidate
          Style.HotTrack = False
          TabOrder = 9
          Height = 21
          Width = 56
        end
        object edtValor: TcxDBCurrencyEdit
          Left = 940
          Top = 14
          Margins.Top = 0
          AutoSize = False
          DataBinding.DataField = 'VALOR'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 8
          Properties.DisplayFormat = '0.00####;-,0.00####'
          Properties.OnValidate = edtValorPropertiesValidate
          Style.Color = clMoneyGreen
          Style.HotTrack = False
          TabOrder = 10
          Height = 21
          Width = 74
        end
        object edtCodProduto: TcxButtonEdit
          Left = 101
          Top = 14
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.CharCase = ecUpperCase
          Properties.ClickKey = 113
          Properties.OnButtonClick = edtCodProdutoPropertiesButtonClick
          Properties.OnEditValueChanged = EdtCodProdutoÎProdutoPropertiesEditValueChanged
          Style.HotTrack = False
          TabOrder = 1
          OnKeyDown = edtCodProdutoKeyDown
          Width = 100
        end
        object edtVeiculo_Chassi: TcxDBTextEdit
          Left = 0
          Top = 122
          AutoSize = False
          DataBinding.DataField = 'VEICULO_CHASSI'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 25
          Height = 21
          Width = 39
        end
        object edtVeiculo_Motor: TcxDBTextEdit
          Left = 40
          Top = 122
          AutoSize = False
          DataBinding.DataField = 'VEICULO_MOTOR'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 26
          Height = 21
          Width = 64
        end
        object edtVeiculo_Renavam: TcxDBTextEdit
          Left = 105
          Top = 122
          AutoSize = False
          DataBinding.DataField = 'VEICULO_RENAVAN'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 27
          Height = 21
          Width = 84
        end
        object edtVeiculo_Ano_Modelo: TcxDBMaskEdit
          Left = 190
          Top = 122
          AutoSize = False
          DataBinding.DataField = 'VEICULO_ANO_MODELO'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 28
          Height = 21
          Width = 67
        end
        object edtVeiculo_Cilindrada: TcxDBCurrencyEdit
          Left = 258
          Top = 122
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          DataBinding.DataField = 'VEICULO_CILINDRADA'
          DataBinding.DataSource = DSPmPrincipal
          Properties.DisplayFormat = '0.##;-0.##'
          Style.HotTrack = False
          TabOrder = 29
          Height = 21
          Width = 66
        end
        object edtVeiculo_HP: TcxDBCurrencyEdit
          Left = 325
          Top = 122
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          DataBinding.DataField = 'VEICULO_HP'
          DataBinding.DataSource = DSPmPrincipal
          Properties.DisplayFormat = '0.##;-0.##'
          Style.HotTrack = False
          TabOrder = 30
          Height = 21
          Width = 43
        end
        object edtVeiculo_Passageiros: TcxDBCurrencyEdit
          Left = 369
          Top = 122
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          DataBinding.DataField = 'VEICULO_PASSAGEIROS'
          DataBinding.DataSource = DSPmPrincipal
          Properties.DisplayFormat = '0.##;-0.##'
          Style.HotTrack = False
          TabOrder = 31
          Height = 21
          Width = 72
        end
        object edtCodProduto_Tipo: TcxDBLookupComboBox
          Left = 0
          Top = 50
          AutoSize = False
          DataBinding.DataField = 'CODPRODUTO_TIPO'
          DataBinding.DataSource = DSPmPrincipal
          ParentFont = False
          Properties.ListColumns = <>
          TabOrder = 13
          Height = 21
          Width = 121
        end
        object edtVeiculo_Combustivel: TcxDBComboBox
          Left = 0
          Top = 158
          DataBinding.DataField = 'VEICULO_COMBUSTIVEL'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 32
          Width = 116
        end
        object edtVeiculo_KM: TcxDBComboBox
          Left = 117
          Top = 158
          DataBinding.DataField = 'VEICULO_KM'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 33
          Width = 92
        end
        object edtVeiculo_Placa: TcxDBTextEdit
          Left = 210
          Top = 158
          AutoSize = False
          DataBinding.DataField = 'VEICULO_PLACA'
          DataBinding.DataSource = DSPmPrincipal
          Style.HotTrack = False
          TabOrder = 34
          Height = 21
          Width = 78
        end
        object edtCorÎCor: TcxDBButtonEdit
          Left = 289
          Top = 158
          AutoSize = False
          DataBinding.DataSource = DSPmPrincipal
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 113
          Style.HotTrack = False
          TabOrder = 35
          Height = 21
          Width = 58
        end
        object lblCorÎCorÎDESCRICAO: TcxDBLabel
          Left = 348
          Top = 158
          ParentColor = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 760
        end
        object btnTabela_Preco: TcxButton
          Left = 1015
          Top = 0
          Width = 30
          Height = 33
          Enabled = False
          OptionsImage.ImageIndex = 3
          OptionsImage.Images = FrmPrincipal.ImgProduto
          SpeedButtonOptions.Transparent = True
          TabOrder = 11
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnTabela_PrecoClick
        end
        object btnMostrarSpr: TcxButton
          Left = 534
          Top = 10
          Width = 25
          Height = 25
          Hint = 'Mostrar Planilha de C'#225'lculos'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            6100000012744558745469746C6500496E736572745461626C653B2E867FB800
            0001C149444154785EA553316B145110FEDEEE4B8282A062215A080A2268B4D2
            DAABCF4A62A560E92F506CADB4132B2B3BB148E02AB1118E748A360997D80BA7
            494462938B72D999716676F67155401C989DFDBEFD66DECC3C368908FEC752F1
            43EC90EF92EEBFF83464A0C7AC4818CCA2513C9246319E190AC11AC5A2F3A291
            57B3E2DEBD5B9700520270C1C7D116AE5F39DD26A34DF8B0F61D3716CF808C11
            71FED5F2FACDCC8659F065FB3794F602E31F131CDBDA07BBB6E3F6707C67520E
            397FEA88BD215B753221FCE1C6E1C19A45EB21E9C650CFF6E5F3681BE39F1388
            CFDD666F6E7C2BBBB068361A8D4DEE78E7E4518FF9623DC5C3FE054CA704A4E4
            D557DE6D62A9BF0844A2F12B6F3770A77FD9A1B1737585672F775135149B2F6D
            0AC8B0B9B71C1C491903C113112A6A2844EA91C10D6B885BE1989968B6A05F2D
            A92E3D7AFA5ECE9D3D0176659A595CF21903141E41D9B45FC7BF901B12DCBD7D
            15D303F67CCB793358772ED6EFEAD78335E5AE95437255E1C9F321AAB63571E7
            AE5DE1168BC1143B302ECDEEC6B94C41CCE5AAB468A25A710A61D75A5DC53B10
            0732D283C783619DE77B0289843276C1C5C45545D11CFC5935B4A09E4DFFAF7F
            A2D5F80B78A36F0152EFC4E70000000049454E44AE426082}
          TabOrder = 3
          TabStop = False
          OnClick = btnMostrarSprClick
        end
        object edtQuant_Rendimento: TcxDBButtonEdit
          Left = 873
          Top = 50
          AutoSize = False
          DataBinding.DataField = 'QUANT_RENDIMENTO'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 113
          Properties.ReadOnly = True
          Style.HotTrack = False
          TabOrder = 19
          Height = 21
          Width = 77
        end
        object edtMarkup: TcxDBButtonEdit
          Left = 793
          Top = 50
          AutoSize = False
          DataBinding.DataField = 'CODPRODUTO_GRUPO'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Buttons = <
            item
              Default = True
              Glyph.SourceDPI = 96
              Glyph.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                610000001B744558745469746C65004164643B506C75733B426172733B526962
                626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
                63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
                E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
                CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
                A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
                C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
                3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
                B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
                E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
                AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
                D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
                B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
                44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
                5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
                F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
                81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
                EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
                8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
                5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
                17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
                CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
                56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
                16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
                1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
                EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
                DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
                D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
                EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
                426082}
              Kind = bkGlyph
            end>
          Properties.ClickKey = 113
          Properties.OnButtonClick = edtMarkupPropertiesButtonClick
          Style.HotTrack = False
          TabOrder = 18
          Height = 21
          Width = 79
        end
        object edtExtras: TcxDBButtonEdit
          Left = 699
          Top = 50
          AutoSize = False
          DataBinding.DataField = 'CALC_VCOMPRA_EXTRA'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Buttons = <
            item
              Default = True
              Glyph.SourceDPI = 96
              Glyph.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                610000001B744558745469746C65004164643B506C75733B426172733B526962
                626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
                63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
                E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
                CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
                A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
                C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
                3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
                B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
                E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
                AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
                D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
                B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
                44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
                5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
                F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
                81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
                EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
                8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
                5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
                17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
                CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
                56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
                16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
                1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
                EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
                DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
                D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
                EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
                426082}
              Kind = bkGlyph
            end>
          Properties.ClickKey = 113
          Properties.OnButtonClick = edtExtrasPropertiesButtonClick
          Style.HotTrack = False
          TabOrder = 17
          Height = 21
          Width = 93
        end
        object edtUN_PADRAO_COMPRA: TcxDBButtonEdit
          Left = 591
          Top = 14
          DataBinding.DataField = 'UN_PADRAO_COMPRA'
          DataBinding.DataSource = DSPmPrincipal
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnEditValueChanged = edtUN_PADRAO_COMPRAPropertiesEditValueChanged
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object LiGrupoProdutoGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object LiGrupoProdutoTOP: TdxLayoutGroup
          Parent = GrupoProdutoEntrada
          CaptionOptions.Text = 'New Group'
          ItemIndex = 9
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Parent = GrupoDetalhes
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object liedtGrupoÎProduto_Grupo: TdxLayoutItem
          Parent = dxLayoutGroup2
          CaptionOptions.Text = 'C'#243'digo do Grupo'
          CaptionOptions.Layout = clTop
          Control = edtGrupoÎProduto_Grupo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 81
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lilblGrupoÎProduto_GrupoÎDESCRICAO: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'do Produto'
          CaptionOptions.Layout = clTop
          Control = lblGrupoÎProduto_GrupoÎDESCRICAO
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 160
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object LiEdtEstoque: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'Estoque'
          CaptionOptions.Layout = clTop
          Control = edtEstoque_Anterior
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 59
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutGroup3: TdxLayoutGroup
          Parent = GrupoDetalhes
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object liedtProduto_Estoque_Local: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignHorz = ahRight
          AlignVert = avBottom
          CaptionOptions.Text = 'Local de Estoque'
          CaptionOptions.Layout = clTop
          Control = edtProduto_Estoque_Local
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 97
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object liedtCodNF_NCM: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignHorz = ahRight
          AlignVert = avBottom
          CaptionOptions.Text = 'NCM'
          CaptionOptions.Layout = clTop
          Control = edtCodNF_NCM
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 103
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object liedtAplicacao: TdxLayoutItem
          Parent = dxLayoutGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Aplica'#231#227'o'
          CaptionOptions.Layout = clTop
          Control = edtAplicacao
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 215
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object liedtMarcaÎProduto_Marca: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignVert = avBottom
          CaptionOptions.Text = 'Marca'
          CaptionOptions.Layout = clTop
          Control = edtMarcaÎProduto_Marca
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 57
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lilblMarcaÎProduto_MarcaÎDESCRICAO: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignVert = avBottom
          Control = lblMarcaÎProduto_MarcaÎDESCRICAO
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 157
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object GrupoProdutoEntrada: TdxLayoutGroup
          Parent = LiGrupoProdutoGroup_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          ShowBorder = False
          Index = 0
        end
        object libtnAdicionarProduto: TdxLayoutItem
          Parent = LIGrupoBotoesTOP
          CaptionOptions.Visible = False
          Control = btnAdicionarProduto
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 33
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object libtnRemoverProduto: TdxLayoutItem
          Parent = LIGrupoBotoesTOP
          CaptionOptions.Visible = False
          Control = btnRemoverProduto
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 33
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object libtnDetalhes: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = btnDetalhes
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 62
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object LIGrupoBotoesTOP: TdxLayoutGroup
          Parent = LiGrupoBotoes
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object LiGrupoBotoes: TdxLayoutGroup
          Parent = LiGrupoProdutoGroup_Root
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 1
        end
        object liedtCodFabrica: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          CaptionOptions.Text = 'C'#243'd F'#225'brica'
          CaptionOptions.Layout = clTop
          Control = edtCodFabrica
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liedtDescricaoProduto: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          AlignHorz = ahClient
          CaptionOptions.Text = 'Descri'#231#227'o do Produto/Servi'#231'o'
          CaptionOptions.Layout = clTop
          Control = edtDescricaoProduto
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 186
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object liedtNF_Volume: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          Visible = False
          CaptionOptions.Text = 'Vol.'
          CaptionOptions.Layout = clTop
          Control = edtNF_Volume
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 30
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object liedtQuant_Compra: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          CaptionOptions.Text = 'Quant'
          CaptionOptions.Layout = clTop
          Control = edtQuant_Compra
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 37
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object liedtValor_Compra: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          CaptionOptions.Text = 'Valor Compra'
          CaptionOptions.Layout = clTop
          Control = edtValor_Compra
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 65
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object LiedtTotal_Compra: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          CaptionOptions.Text = 'Total Compra'
          CaptionOptions.Layout = clTop
          Control = edtTotal_Compra
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 65
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object liedtMargem: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          AlignVert = avClient
          CaptionOptions.Text = 'Margem %'
          CaptionOptions.Layout = clTop
          Control = edtMargem
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 56
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object liedtValor: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          AlignVert = avClient
          CaptionOptions.Text = 'R$ Valor Venda'
          CaptionOptions.Layout = clTop
          Control = edtValor
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object liedtCodProdutoÎProduto: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          CaptionOptions.Text = 'C'#243'd. Prduto'
          CaptionOptions.Layout = clTop
          Control = edtCodProduto
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object GrupoDetalhes: TdxLayoutGroup
          Parent = GrupoProdutoEntrada
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup5: TdxLayoutGroup
          Parent = GrupoDetalhes
          CaptionOptions.Text = 'New Group'
          Visible = False
          ItemIndex = 6
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object liedtVeiculo_Chassi: TdxLayoutItem
          Parent = dxLayoutGroup5
          CaptionOptions.Text = 'Chassi'
          CaptionOptions.Layout = clTop
          Control = edtVeiculo_Chassi
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 39
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liedtVeiculo_Motor: TdxLayoutItem
          Parent = dxLayoutGroup5
          CaptionOptions.Text = 'N'#186' do Motor'
          CaptionOptions.Layout = clTop
          Control = edtVeiculo_Motor
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 64
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object liedtVeiculo_Renavam: TdxLayoutItem
          Parent = dxLayoutGroup5
          CaptionOptions.Text = 'Renavam'
          CaptionOptions.Layout = clTop
          Control = edtVeiculo_Renavam
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 84
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object liedtVeiculo_Ano_Modelo: TdxLayoutItem
          Parent = dxLayoutGroup5
          CaptionOptions.Text = 'Ano/Modelo'
          CaptionOptions.Layout = clTop
          Control = edtVeiculo_Ano_Modelo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 67
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object liedtVeiculo_Cilindrada: TdxLayoutItem
          Parent = dxLayoutGroup5
          CaptionOptions.Text = 'Cilindrada'
          CaptionOptions.Layout = clTop
          Control = edtVeiculo_Cilindrada
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 66
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object liedtVeiculo_HP: TdxLayoutItem
          Parent = dxLayoutGroup5
          CaptionOptions.Text = 'HP'
          CaptionOptions.Layout = clTop
          Control = edtVeiculo_HP
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 43
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object liedtVeiculo_Passageiros: TdxLayoutItem
          Parent = dxLayoutGroup5
          CaptionOptions.Text = 'Passageiros'
          CaptionOptions.Layout = clTop
          Control = edtVeiculo_Passageiros
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 72
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object liedtCodProduto_Tipo: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignVert = avClient
          CaptionOptions.Text = 'Tipo de Produto'
          CaptionOptions.Layout = clTop
          Control = edtCodProduto_Tipo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup8: TdxLayoutGroup
          Parent = GrupoDetalhes
          CaptionOptions.Text = 'New Group'
          Visible = False
          ItemIndex = 2
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object liedtVeiculo_Combustivel: TdxLayoutItem
          Parent = dxLayoutGroup8
          CaptionOptions.Text = 'Combust'#237'vel'
          CaptionOptions.Layout = clTop
          Control = edtVeiculo_Combustivel
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 116
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liedtVeiculo_KM: TdxLayoutItem
          Parent = dxLayoutGroup8
          CaptionOptions.Text = 'Zero / Usado'
          CaptionOptions.Layout = clTop
          Control = edtVeiculo_KM
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 92
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object liedtVeiculo_Placa: TdxLayoutItem
          Parent = dxLayoutGroup8
          CaptionOptions.Text = 'Placa'
          CaptionOptions.Layout = clTop
          Control = edtVeiculo_Placa
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 78
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object liedtCorÎCor: TdxLayoutItem
          Parent = dxLayoutGroup8
          CaptionOptions.Text = 'C'#243'digo da'
          CaptionOptions.Layout = clTop
          Control = edtCorÎCor
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 58
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object lilblCorÎCorÎDESCRICAO: TdxLayoutItem
          Parent = dxLayoutGroup8
          AlignHorz = ahClient
          CaptionOptions.Text = 'Cor'
          CaptionOptions.Layout = clTop
          Control = lblCorÎCorÎDESCRICAO
          ControlOptions.OriginalHeight = 19
          ControlOptions.OriginalWidth = 246
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutGroup3
          AlignHorz = ahLeft
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object LibtnTabela_Preco: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = btnTabela_Preco
          ControlOptions.OriginalHeight = 33
          ControlOptions.OriginalWidth = 30
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 11
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          AlignVert = avBottom
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = btnMostrarSpr
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 25
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object LiedtQuant_Rendimento: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'Rendimento'
          CaptionOptions.Layout = clTop
          Control = edtQuant_Rendimento
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 77
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object LiedtMarkup: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignHorz = ahRight
          AlignVert = avBottom
          CaptionOptions.Text = 'Markup'
          CaptionOptions.Layout = clTop
          Control = edtMarkup
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 79
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object LiedtExtras: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Hint = 'Impostos Descontos Acr'#233'scimos'
          CaptionOptions.Text = 'Impostos/Desc...'
          CaptionOptions.Layout = clTop
          Control = edtExtras
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 93
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = LiGrupoProdutoTOP
          CaptionOptions.Text = 'Unidade Comp.'
          CaptionOptions.Layout = clTop
          Control = edtUN_PADRAO_COMPRA
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 5
        end
      end
    end
    object GridFinanceiro: TDBGrid [38]
      Left = 9680
      Top = 10000
      Width = 1174
      Height = 207
      TabStop = False
      BorderStyle = bsNone
      Ctl3D = False
      DataSource = DSNF_Entrada_Parcelas
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = MenuPlanodeContas
      TabOrder = 46
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Visible = False
      OnDblClick = GridFinanceiroDblClick
      OnKeyDown = GridFinanceiroKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VENCTO'
          Title.Alignment = taCenter
          Title.Caption = 'VENCIMENTO'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'R$ VALOR'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOPAGTO'
          Title.Caption = 'TIPO DE PAGAMENTO'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 242
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'LAN'#199'AMENTO'
          Title.Color = clMoneyGreen
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHEQUE_NUMERO'
          Title.Caption = 'CHEQUE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPLANOCONTAS'
          Title.Caption = 'COD. PLANO de CONTAS'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLANOCONTAS'
          Title.Caption = 'PLANO DE CONTAS'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCONTA'
          Width = 82
          Visible = True
        end>
    end
    object edtCondicaoPagtoÎCondicaoPagto: TcxDBButtonEdit [39]
      Left = 9680
      Top = 10000
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CODCONDICAOPAGTO'
      DataBinding.DataSource = DS
      Enabled = False
      ParentFont = False
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 38
      Visible = False
      Height = 21
      Width = 61
    end
    object edtCondicaoPagtoÎCondicaoPagtoÎPARCELAS: TcxDBCurrencyEdit [40]
      Left = 9680
      Top = 10000
      Hint = 'Quantidade de parcelas'
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'QTDPARCELAS'
      DataBinding.DataSource = DS
      Enabled = False
      ParentShowHint = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 40
      Visible = False
      Height = 21
      Width = 58
    end
    object edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TcxDBTextEdit [41]
      Left = 9680
      Top = 10000
      Hint = 'F2 - Consulta'
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'CONDICAOPAGTO'
      DataBinding.DataSource = DS
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 39
      Visible = False
      Height = 21
      Width = 348
    end
    object edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TcxDBCurrencyEdit [42]
      Left = 9680
      Top = 10000
      Hint = 'O Intervalo deve ser informado  em Dias'
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DIA_INTERVALO'
      DataBinding.DataSource = DS
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 41
      Visible = False
      Height = 21
      Width = 56
    end
    object edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO_MENSAL: TcxDBCheckBox [43]
      Left = 9680
      Top = 10000
      AutoSize = False
      Caption = 'M'#234's'
      DataBinding.DataField = 'INTERVALO_MENSAL'
      DataBinding.DataSource = DS
      Enabled = False
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 42
      Transparent = True
      Visible = False
      Height = 21
      Width = 43
    end
    object btnGerarParcelas: TcxButton [44]
      Left = 9680
      Top = 10000
      Width = 104
      Height = 35
      Caption = 'Gerar Parcelas'
      Enabled = False
      OptionsImage.Spacing = 2
      TabOrder = 44
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = btnGerarParcelasClick
    end
    object cbxModelo_Docto_Fiscal: TcxDBLookupComboBox [45]
      Left = 7280
      Top = 10000
      DataBinding.DataField = 'MODELO_DOCTO_FISCAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownRows = 20
      Properties.ListColumns = <>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 47
      Visible = False
      Width = 310
    end
    object edtSerie: TcxDBTextEdit [46]
      Left = 7280
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'SERIE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 48
      Visible = False
      Height = 21
      Width = 55
    end
    object edtSubserie: TcxDBTextEdit [47]
      Left = 7280
      Top = 10000
      DataBinding.DataField = 'SUBSERIE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 49
      Visible = False
      Width = 55
    end
    object edtTransportadora: TcxDBTextEdit [48]
      Left = 7280
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'TRANSPORTADORA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 52
      Visible = False
      Height = 19
      Width = 1176
    end
    object cbxNF_FretePorConta: TcxDBLookupComboBox [49]
      Left = 7280
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'NF_FRETEPORCONTA'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 50
      Visible = False
      Height = 21
      Width = 249
    end
    object edtObservacao: TcxDBMemo [50]
      Left = 7280
      Top = 10000
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 53
      Visible = False
      Height = 165
      Width = 1176
    end
    object edtNF_VFrete2: TcxDBCurrencyEdit [51]
      Left = 993
      Top = 515
      AutoSize = False
      DataBinding.DataField = 'NF_VFRETE'
      DataBinding.DataSource = DS
      Enabled = False
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.MinValue = 0.008999999999999999
      Properties.OnValidate = WRCalcValidateVENDA
      Style.Color = clMoneyGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 88
      Height = 21
      Width = 65
    end
    object edtNF_VBC: TcxDBCurrencyEdit [52]
      Left = 15
      Top = 581
      AutoSize = False
      DataBinding.DataField = 'NF_VBC'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 94
      Height = 21
      Width = 52
    end
    object edtNF_VICMS: TcxDBCurrencyEdit [53]
      Left = 68
      Top = 581
      AutoSize = False
      DataBinding.DataField = 'NF_VICMS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 95
      Height = 21
      Width = 53
    end
    object edtNF_VSEG: TcxDBCurrencyEdit [54]
      Left = 122
      Top = 581
      AutoSize = False
      DataBinding.DataField = 'NF_VSEG'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 96
      Height = 21
      Width = 53
    end
    object edtNF_VBCST: TcxDBCurrencyEdit [55]
      Left = 176
      Top = 581
      AutoSize = False
      DataBinding.DataField = 'NF_VBCST'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 97
      Height = 21
      Width = 62
    end
    object edtNF_VICMSST2: TcxDBCurrencyEdit [56]
      Left = 239
      Top = 581
      AutoSize = False
      DataBinding.DataField = 'NF_VICMSST'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = True
      Properties.OnValidate = WRCalcValidateVENDA
      Style.Color = clMoneyGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 98
      Height = 21
      Width = 65
    end
    object edtNF_IPI_VIPI2: TcxDBCurrencyEdit [57]
      Left = 305
      Top = 581
      AutoSize = False
      DataBinding.DataField = 'NF_IPI_VIPI'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = True
      Properties.OnValidate = WRCalcValidateVENDA
      Style.Color = clMoneyGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 99
      Height = 21
      Width = 60
    end
    object edtNF_PIS_VPIS: TcxDBCurrencyEdit [58]
      Left = 366
      Top = 581
      AutoSize = False
      DataBinding.DataField = 'NF_PIS_VPIS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 100
      Height = 21
      Width = 70
    end
    object edtNF_COFINS_VCOFINS: TcxDBCurrencyEdit [59]
      Left = 437
      Top = 581
      AutoSize = False
      DataBinding.DataField = 'NF_COFINS_VCOFINS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 101
      Height = 21
      Width = 71
    end
    object edtVDesc2: TcxDBCurrencyEdit [60]
      Left = 1059
      Top = 515
      AutoSize = False
      DataBinding.DataField = 'VDESC'
      DataBinding.DataSource = DS
      Enabled = False
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.MinValue = 0.008999999999999999
      Properties.OnValidate = WRCalcValidateVENDA
      Style.Color = clMoneyGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 89
      Height = 21
      Width = 62
    end
    object edtVOutro2: TcxDBCurrencyEdit [61]
      Left = 1122
      Top = 515
      AutoSize = False
      DataBinding.DataField = 'VOUTRO'
      DataBinding.DataSource = DS
      Enabled = False
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.MinValue = 0.008999999999999999
      Properties.OnValidate = WRCalcValidateVENDA
      Style.Color = clMoneyGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 90
      Height = 21
      Width = 65
    end
    object edtValor_Produtos: TcxDBCurrencyEdit [62]
      Left = 878
      Top = 581
      Hint = 'Soma do Campo TOTAL dos itens.'
      AutoSize = False
      DataBinding.DataField = 'TOTAL_PRODUTOS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = True
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 92
      Height = 21
      Width = 102
    end
    object edtTotal2: TcxDBCurrencyEdit [63]
      Left = 1084
      Top = 581
      Hint = 
        '(R$ Produtos + R$ IPI + R$ ICMS ST + R$ Frete + Outros + Acresc.' +
        ' - Desconto)'
      AutoSize = False
      DataBinding.DataField = 'TOTAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 102
      Height = 21
      Width = 103
    end
    object edtPeso_Bruto: TcxDBCurrencyEdit [64]
      Left = 15
      Top = 515
      AutoSize = False
      DataBinding.DataField = 'PESO_BRUTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 80
      Height = 21
      Width = 53
    end
    object edtPeso_Liquido: TcxDBCurrencyEdit [65]
      Left = 69
      Top = 515
      AutoSize = False
      DataBinding.DataField = 'PESO_LIQUIDO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 81
      Height = 21
      Width = 60
    end
    object edtCodUsuario: TcxDBTextEdit [66]
      Left = 532
      Top = 461
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'CODUSUARIO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnChange = edtCodUsuarioÎUsuarioPropertiesChange
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 79
      Height = 21
      Width = 37
    end
    object lblCodUsuario: TLabel [67]
      Left = 570
      Top = 461
      Width = 300
      Height = 21
      AutoSize = False
      Caption = '                            '
      Color = 16505534
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object edtQuanidade: TcxDBCurrencyEdit [68]
      Left = 130
      Top = 515
      AutoSize = False
      DataBinding.DataField = 'QUANTIDADE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = True
      Style.Color = clCream
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 82
      Height = 21
      Width = 57
    end
    object edtVolume: TcxDBTextEdit [69]
      Left = 188
      Top = 515
      AutoSize = False
      DataBinding.DataField = 'VOLUME'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ReadOnly = False
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 83
      Height = 21
      Width = 82
    end
    object edtValor_NF_Varejo: TcxDBCurrencyEdit [70]
      Left = 663
      Top = 515
      Hint = 
        'Soma do Campo VALOR VAREJO dos itens + R$ Frete + Outros + Acres' +
        'c. - Desconto)'
      AutoSize = False
      DataBinding.DataField = 'VALOR_NF_VAREJO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = True
      Properties.OnEditValueChanged = edtValor_NF_VarejoPropertiesEditValueChanged
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 85
      Height = 21
      Width = 103
    end
    object cbxEstoque_Local_Origem: TcxDBLookupComboBox [71]
      Left = 572
      Top = 115
      DataBinding.DataField = 'ESTOQUE_LOCAL_ORIGEM'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ListColumns = <>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 34
      Width = 200
    end
    object cbxEstoque_Local_Destino: TcxDBLookupComboBox [72]
      Left = 773
      Top = 115
      DataBinding.DataField = 'ESTOQUE_LOCAL_DESTINO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ListColumns = <>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 35
      Width = 200
    end
    object btnFinalizarCompra: TcxButton [73]
      Left = 1213
      Top = 460
      Width = 116
      Height = 35
      Caption = 'Finalizar Compra'
      OptionsImage.Spacing = 2
      TabOrder = 19
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = btnFinalizarCompraClick
    end
    object edtDtFaturamento: TcxDBTextEdit [74]
      Left = 1213
      Top = 438
      AutoSize = False
      DataBinding.DataField = 'DT_FATURAMENTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnChange = EdtDtFaturamentoPropertiesChange
      Style.Color = clSilver
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 18
      Height = 21
      Width = 116
    end
    object btnCancelarFinalizacao: TcxButton [75]
      Left = 1213
      Top = 496
      Width = 116
      Height = 35
      Caption = 'Cancelar Finaliza'#231#227'o'
      OptionsImage.Layout = blGlyphBottom
      OptionsImage.Spacing = 2
      TabOrder = 20
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = btnCancelarFinalizacaoClick
    end
    object btnCancelarConferencia: TcxButton [76]
      Left = 3
      Top = 455
      Width = 140
      Height = 27
      Caption = 'Cancelar Confer'#234'ncia'
      OptionsImage.Layout = blGlyphBottom
      OptionsImage.Spacing = 2
      TabOrder = 74
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = btnCancelarConferenciaClick
    end
    object chkEnviaFinanceiro: TcxDBCheckBox [77]
      Left = 9680
      Top = 10000
      AutoSize = False
      Caption = 'Enviar as parcelas desta nota para o Financeiro ao Finalizar'
      DataBinding.DataField = 'ENVIA_FINANCEIRO'
      DataBinding.DataSource = DS
      Enabled = False
      Properties.MultiLine = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 45
      Transparent = True
      Visible = False
      Height = 34
      Width = 362
    end
    object chkAtualiza_Estoque: TcxDBCheckBox [78]
      Left = 968
      Top = 461
      AutoSize = False
      Caption = 'Materiais conferido'
      DataBinding.DataField = 'ATUALIZA_ESTOQUE'
      DataBinding.DataSource = DS
      ParentBackground = False
      ParentColor = False
      Properties.Alignment = taLeftJustify
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = CkAtualizarEstoquePropertiesChange
      Style.Color = clWhite
      Style.HotTrack = False
      TabOrder = 73
      Transparent = True
      Height = 21
      Width = 119
    end
    object chkGera_Financeiro: TcxDBCheckBox [79]
      Left = 1088
      Top = 461
      Caption = 'Financeiro Gerado'
      DataBinding.DataField = 'GERA_FINANCEIRO'
      DataBinding.DataSource = DS
      ParentBackground = False
      ParentColor = False
      Properties.Alignment = taLeftJustify
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Color = clWhite
      Style.HotTrack = False
      TabOrder = 77
      Transparent = True
    end
    object btnMateriaisConferidos: TcxButton [80]
      Left = 144
      Top = 455
      Width = 140
      Height = 27
      Caption = 'Materiais Conferidos'
      OptionsImage.Layout = blGlyphBottom
      OptionsImage.Spacing = 2
      TabOrder = 75
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = btnMateriaisConferidosClick
    end
    object edtUsuarioEstoqueÎUsuario: TcxDBButtonEdit [81]
      Left = 290
      Top = 461
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CODUSUARIO_ESTOQUE'
      DataBinding.DataSource = DS
      ParentFont = False
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 78
      OnKeyDown = edtUsuarioEstoqueÎUsuarioKeyDown
      Height = 21
      Width = 57
    end
    object lblUsuarioEstoqueÎUsuarioÎLOGIN: TLabel [82]
      Left = 348
      Top = 461
      Width = 183
      Height = 21
      AutoSize = False
      Caption = '                            '
      Color = 16505534
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object GridTree: TcxDBTreeList [83]
      Left = 13
      Top = 375
      Width = 1176
      Height = 53
      Bands = <
        item
        end>
      DataController.DataSource = DSProdutos
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'CODIGO'
      DragMode = dmAutomatic
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.AutoDragCopy = True
      OptionsBehavior.DragDropText = True
      OptionsCustomizing.BandsQuickCustomization = True
      OptionsCustomizing.BandsQuickCustomizationSorted = True
      OptionsCustomizing.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsView.ShowEditButtons = ecsbAlways
      OptionsView.DropNodeIndicator = True
      OptionsView.TreeLineStyle = tllsSolid
      PopupMenu = PopGridPratico
      RootValue = -1
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 37
      OnCustomDrawDataCell = GridTreeCustomDrawDataCell
      OnCustomDrawIndentCell = GridTreeCustomDrawIndentCell
      OnDblClick = GridTreeDblClick
      ConditionalFormatting = {
        010000000A000000310000005400640078005300700072006500610064005300
        680065006500740043006F006E0064006900740069006F006E0061006C004600
        6F0072006D0061007400740069006E006700520075006C006500450078007000
        720065007300730069006F006E0089000000020000000000000002000000FFFF
        FF7F0001000000200B00000007000000430061006C0069006200720069000000
        00FFC00000000000200000000020000000002000000000200000000020000700
        0000470045004E004500520041004C000000000000020000000000000000010A
        0000003D005400520049004D002800220020002200290000000000}
      object GridTreeCODFABRICA: TcxDBTreeListColumn
        Caption.Text = 'C'#243'digo F'#225'brica'
        DataBinding.FieldName = 'CODFABRICA'
        Width = 79
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCODIGO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        Caption.Text = 'C'#243'digo'
        DataBinding.FieldName = 'CODIGO'
        Options.Editing = False
        Width = 64
        Position.ColIndex = 33
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCODPRODUTOÎProduto: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.UseNullString = True
        Properties.OnButtonClick = GridTreeCODPRODUTOÎProdutoPropertiesButtonClick
        Caption.Text = 'C'#243'd. Produto'
        DataBinding.FieldName = 'CODPRODUTO'
        Options.ShowEditButtons = eisbAlways
        Width = 83
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeDESCRICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Caption.Text = 'Descri'#231#227'o do Produto/Servi'#231'o'
        DataBinding.FieldName = 'DESCRICAO'
        Width = 226
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeNF_DESCRICAO: TcxDBTreeListColumn
        Caption.Text = 'Descri'#231#227'o na Nota Fiscal'
        DataBinding.FieldName = 'NF_DESCRICAO'
        Width = 107
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeNF_UNIDADE: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Un. Comp.'
        DataBinding.FieldName = 'NF_UNIDADE'
        Width = 49
        Position.ColIndex = 7
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeUN_SUBUNIDADE_DESCRICAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001B744558745469746C65004164643B506C75733B426172733B526962
              626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
              63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
              E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
              CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
              A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
              C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
              3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
              B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
              E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
              AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
              D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
              B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
              44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
              5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
              F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
              81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
              EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
              8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
              5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
              17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
              CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
              56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
              16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
              1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
              EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
              DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
              D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
              EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
              426082}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = GridTreeUN_SUBUNIDADE_DESCRICAOPropertiesButtonClick
        Caption.Text = 'Unidade'
        DataBinding.FieldName = 'UN_SUBUNIDADE_DESCRICAO'
        Width = 100
        Position.ColIndex = 8
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeQTDADEPECA_SUBUNIDADE: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00;-0.00'
        Properties.OnValidate = GridTreeQTDADEPECA_SUBUNIDADEPropertiesValidate
        Caption.Text = 'Quant Compra'
        DataBinding.FieldName = 'QTDADEPECA_SUBUNIDADE'
        Width = 80
        Position.ColIndex = 9
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeVALOR_COMPRA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.OnValidate = GridTreeVALOR_COMPRAPropertiesValidate
        Caption.Text = 'R$ Valor Compra'
        DataBinding.FieldName = 'VALOR_COMPRA'
        Width = 90
        Position.ColIndex = 10
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeTOTAL_COMPRA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.OnValidate = GridTreeTOTAL_COMPRAPropertiesValidate
        Caption.Text = 'R$ Total Compra'
        DataBinding.FieldName = 'TOTAL_COMPRA'
        Width = 91
        Position.ColIndex = 11
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCALC_PMARKUP: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001B744558745469746C65004164643B506C75733B426172733B526962
              626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
              63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
              E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
              CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
              A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
              C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
              3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
              B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
              E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
              AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
              D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
              B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
              44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
              5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
              F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
              81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
              EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
              8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
              5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
              17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
              CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
              56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
              16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
              1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
              EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
              DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
              D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
              EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
              426082}
            Kind = bkGlyph
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = GridTreeCALC_PMARKUPPropertiesButtonClick
        Caption.Text = 'Markup'
        DataBinding.FieldName = 'CALC_PMARKUP'
        Width = 81
        Position.ColIndex = 15
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeMARGEM: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.OnValidate = GridTreeCALC_PMARGEM_CONTRIBUICAOPropertiesValidate
        Caption.Text = 'Margem %'
        DataBinding.FieldName = 'MARGEM'
        Width = 68
        Position.ColIndex = 16
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeQUANT: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        Caption.Text = 'Quant Estoque'
        DataBinding.FieldName = 'QUANT'
        Options.Editing = False
        Width = 82
        Position.ColIndex = 14
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeVALOR: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Caption.Text = 'R$ Valor Venda'
        DataBinding.FieldName = 'VALOR'
        Width = 99
        Position.ColIndex = 17
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeRENDIMENTO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Caption.Text = 'Rendimento'
        DataBinding.FieldName = 'RENDIMENTO'
        Width = 69
        Position.ColIndex = 13
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeESTOQUE_LOCAL_MOVIMENTO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        Caption.Text = 'Local do Estoque'
        DataBinding.FieldName = 'PRODUTO_ESTOQUE_LOCAL'
        Width = 100
        Position.ColIndex = 28
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeORDEM: TcxDBTreeListColumn
        Caption.Text = 'Ordem'
        DataBinding.FieldName = 'ORDEM'
        Width = 54
        Position.ColIndex = 31
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCODPRODUTO_GRUPO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = GridTreeCODPRODUTO_GRUPOPropertiesButtonClick
        Caption.Text = 'C'#243'd. Produto Grupo'
        DataBinding.FieldName = 'CODPRODUTO_GRUPO'
        Width = 100
        Position.ColIndex = 20
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeDT_ALTERACAO_CADASTRO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.OnValidate = GridTreeDT_ALTERACAO_CADASTROPropertiesValidate
        Caption.Text = 'Dt. Altera'#231#227'o Cadastro'
        DataBinding.FieldName = 'DT_ALTERACAO_CADASTRO'
        Options.Editing = False
        Width = 123
        Position.ColIndex = 30
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeDT_ALTERACAO: TcxDBTreeListColumn
        Caption.Text = 'Dt. Altera'#231#227'o'
        DataBinding.FieldName = 'DT_ALTERACAO'
        Options.Editing = False
        Width = 112
        Position.ColIndex = 29
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeTotalPeso: TcxDBTreeListColumn
        Caption.Text = 'Peso Unit'#225'rio'
        DataBinding.FieldName = 'TotalPeso'
        Width = 100
        Position.ColIndex = 21
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreePESO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Peso'
        DataBinding.FieldName = 'PESO'
        Width = 100
        Position.ColIndex = 22
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeESTOQUE: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Estoque'
        DataBinding.FieldName = 'ESTOQUE'
        Options.Editing = False
        Width = 100
        Position.ColIndex = 23
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCODPRODUTO_TIPO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownRows = 15
        Properties.ListColumns = <>
        Caption.Text = 'C'#243'd. Produto Tipo'
        DataBinding.FieldName = 'CODPRODUTO_TIPO'
        Width = 100
        Position.ColIndex = 19
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCUSTO_ATUAL: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'R$ Custo Atual'
        DataBinding.FieldName = 'CUSTO_ATUAL'
        Options.Hidden = True
        Options.Editing = False
        Width = 100
        Position.ColIndex = 24
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeVALOR_ATUAL: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'R$ Valor Atual'
        DataBinding.FieldName = 'VALOR_ATUAL'
        Options.Hidden = True
        Options.Editing = False
        Width = 100
        Position.ColIndex = 25
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreePRODUTO_TIPO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        Visible = False
        Caption.Text = 'Tipo'
        DataBinding.FieldName = 'PRODUTO_TIPO'
        Width = 100
        Position.ColIndex = 18
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCODNF_NCM: TcxDBTreeListColumn
        Caption.Text = 'NCM'
        DataBinding.FieldName = 'CODNF_NCM'
        Width = 80
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCODNF_CST: TcxDBTreeListColumn
        Caption.Text = 'CST'
        DataBinding.FieldName = 'CODNF_CST'
        Width = 39
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCFOP_VENDA: TcxDBTreeListColumn
        Caption.Text = 'CFOP'
        DataBinding.FieldName = 'CODNF_CFOP'
        Width = 40
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCFOP_COMPRA: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'CFOP Compra'
        DataBinding.FieldName = 'CFOP_COMPRA'
        Width = 86
        Position.ColIndex = 27
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreePARENT: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'PARENT'
        Options.Customizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 26
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeTotal_Venda: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'R$ Total Venda'
        DataBinding.FieldName = 'Total_Venda'
        Width = 100
        Position.ColIndex = 32
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCALC_VCOMPRA_EXTRA: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001B744558745469746C65004164643B506C75733B426172733B526962
              626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
              63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
              E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
              CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
              A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
              C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
              3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
              B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
              E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
              AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
              D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
              B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
              44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
              5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
              F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
              81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
              EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
              8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
              5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
              17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
              CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
              56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
              16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
              1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
              EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
              DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
              D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
              EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
              426082}
            Kind = bkGlyph
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = GridTreeCALC_VCOMPRA_EXTRAPropertiesButtonClick
        Caption.Text = 'Impostos/Desc...'
        DataBinding.FieldName = 'CALC_VCOMPRA_EXTRA'
        Width = 91
        Position.ColIndex = 12
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeNF_VBC: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'BC ICMS'
        DataBinding.FieldName = 'NF_VBC'
        Width = 74
        Position.ColIndex = 34
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeNF_VICMS: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'ICMS'
        DataBinding.FieldName = 'NF_VICMS'
        Width = 63
        Position.ColIndex = 35
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeNF_VSEG: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'R$ Seguro'
        DataBinding.FieldName = 'NF_VSEG'
        Width = 64
        Position.ColIndex = 36
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeNF_VBCST: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'BC ICMS ST'
        DataBinding.FieldName = 'NF_VBCST'
        Width = 70
        Position.ColIndex = 37
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeNF_VICMSST: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001B744558745469746C65004164643B506C75733B426172733B526962
              626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
              63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
              E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
              CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
              A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
              C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
              3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
              B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
              E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
              AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
              D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
              B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
              44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
              5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
              F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
              81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
              EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
              8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
              5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
              17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
              CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
              56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
              16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
              1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
              EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
              DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
              D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
              EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
              426082}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = GridTreeCALC_VCOMPRA_EXTRAPropertiesButtonClick
        Visible = False
        Caption.Text = 'ICMS ST'
        DataBinding.FieldName = 'NF_VICMSST'
        Width = 64
        Position.ColIndex = 38
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeNF_IPI_VIPI: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001B744558745469746C65004164643B506C75733B426172733B526962
              626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
              63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
              E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
              CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
              A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
              C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
              3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
              B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
              E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
              AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
              D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
              B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
              44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
              5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
              F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
              81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
              EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
              8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
              5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
              17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
              CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
              56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
              16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
              1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
              EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
              DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
              D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
              EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
              426082}
            Kind = bkGlyph
          end>
        Properties.OnButtonClick = GridTreeCALC_VCOMPRA_EXTRAPropertiesButtonClick
        Visible = False
        Caption.Text = 'IPI'
        DataBinding.FieldName = 'NF_IPI_VIPI'
        Width = 57
        Position.ColIndex = 39
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeNF_PIS_VPIS: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'PIS'
        DataBinding.FieldName = 'NF_PIS_VPIS'
        Width = 67
        Position.ColIndex = 40
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeNF_COFINS_VCOFINS: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'COFINS'
        DataBinding.FieldName = 'NF_COFINS_VCOFINS'
        Width = 67
        Position.ColIndex = 41
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeNF_VFRETE: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Frete'
        DataBinding.FieldName = 'NF_VFRETE'
        Width = 100
        Position.ColIndex = 42
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeVDESC: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Desconto'
        DataBinding.FieldName = 'VDESC'
        Width = 100
        Position.ColIndex = 43
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeVOUTRO: TcxDBTreeListColumn
        Visible = False
        Caption.Text = 'Acr'#233'scimo'
        DataBinding.FieldName = 'VOUTRO'
        Width = 100
        Position.ColIndex = 44
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeCALC_VCOMPRA_CUSTOS_VINCULADOS: TcxDBTreeListColumn
        Caption.Text = 'Custos Vinculados'
        DataBinding.FieldName = 'CALC_VCOMPRA_CUSTOS_VINCULADOS'
        Width = 100
        Position.ColIndex = 45
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeORIGEM_MERCADORIA: TcxDBTreeListColumn
        Caption.Text = 'Origem Mercadoria'
        DataBinding.FieldName = 'ORIGEM_MERCADORIA'
        Width = 100
        Position.ColIndex = 46
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeUN_SUBUNIDADE: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'UN_SUBUNIDADE'
        Width = 100
        Position.ColIndex = 48
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreeUNIDADE: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'UNIDADE'
        Width = 100
        Position.ColIndex = 47
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object GridTreePODE_SER_VENDIDO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = 'S'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Caption.Text = 'Pode Vender?'
        DataBinding.ValueType = 'String'
        DataBinding.FieldName = 'PODE_SER_VENDIDO'
        Position.ColIndex = 49
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object edtCodContaÎContasÎDescricao: TLabel [84]
      Left = 10000
      Top = 10000
      Width = 84
      Height = 19
      AutoSize = False
      Color = 16505534
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object edtCodContaÎContas: TcxButtonEdit [85]
      Left = 9680
      Top = 10000
      Enabled = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 43
      Visible = False
      Width = 52
    end
    object chkPode_Ratear_Frete_Desc_Outro: TcxDBCheckBox [86]
      Left = 919
      Top = 515
      AutoSize = False
      Caption = 'Ratear'
      DataBinding.DataField = 'PODE_RATEAR_FRETE_DESC_OUTRO'
      DataBinding.DataSource = DS
      ParentBackground = False
      ParentColor = False
      Properties.Alignment = taLeftJustify
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = False
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = chkPode_Ratear_Frete_Desc_OutroPropertiesChange
      Style.Color = clWhite
      Style.HotTrack = False
      TabOrder = 87
      Transparent = True
      Height = 21
      Width = 73
    end
    object edtUsuarioAlterado: TcxDBTextEdit [87]
      Left = 295
      Top = 515
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'CODUSUARIO_MODIFICOU'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnChange = edtUsuarioAlteradoPropertiesChange
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 84
      Height = 21
      Width = 48
    end
    object lblUsuarioAlterado: TLabel [88]
      Left = 344
      Top = 515
      Width = 294
      Height = 21
      AutoSize = False
      Color = 16505534
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object dxSpreadSheetFormulaBar1: TdxSpreadSheetFormulaBar [89]
      Left = 7280
      Top = 10000
      Width = 1176
      Height = 20
      SpreadSheet = sprMotorCalculo
      TabOrder = 56
      Visible = False
    end
    object sprMotorCalculo: TdxSpreadSheet [90]
      Left = 7280
      Top = 10000
      Width = 1176
      Height = 172
      Visible = False
      OnEditValueChanged = sprMotorCalculoEditValueChanged
      Data = {
        8002000044585353763242461000000042465320000000000000000001000101
        010100000000000001004246532000000000424653200100000001000000200B
        00000007000000430061006C0069006200720069000000000000002000000020
        0000000020000000000020000000000020000000000020000007000000470045
        004E004500520041004C00000000000002000000000000000001424653200100
        0000424653201700000054006400780053007000720065006100640053006800
        6500650074005400610062006C00650056006900650077000600000053006800
        650065007400310001FFFFFFFFFFFFFFFF640000000200000002000000020000
        0055000000140000000200000002000000000200000002000000000000010000
        0000000101000042465320550000000000000042465320000000004246532014
        0000000000000042465320000000000000000000000000010000000000000000
        0000000000000000000000424653200000000002020000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000064000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000200020200020000000000000000000000000000000000020000000000
        0000000000000000000000000000000000000000000000000000000000000202
        0000000000000000424653200000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000}
    end
    object chkEnvia_Estoque: TcxDBCheckBox [91]
      Left = 871
      Top = 461
      AutoSize = False
      Caption = 'Enviar Estoque'
      DataBinding.DataField = 'ENVIA_ESTOQUE'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnValidate = chkEnvia_EstoquePropertiesValidate
      Style.HotTrack = False
      TabOrder = 71
      Transparent = True
      Height = 21
      Width = 96
    end
    object btnMarkup: TcxButton [92]
      Left = 7280
      Top = 10000
      Width = 266
      Height = 25
      Caption = 'Markup'
      TabOrder = 60
      Visible = False
      OnClick = btnMarkupClick
    end
    object btnCustoMedio: TcxButton [93]
      Left = 7280
      Top = 10000
      Width = 236
      Height = 25
      Caption = 'Custo M'#233'dio'
      TabOrder = 58
      Visible = False
      OnClick = btnCustoMedioClick
    end
    object btnRendimento: TcxButton [94]
      Left = 7280
      Top = 10000
      Width = 405
      Height = 25
      Caption = 'Rendimento da convers'#227'o de unidade'
      TabOrder = 59
      Visible = False
      OnClick = btnRendimentoClick
    end
    object btnPeso: TcxButton [95]
      Left = 7280
      Top = 10000
      Width = 266
      Height = 25
      Caption = 'Peso'
      TabOrder = 61
      Visible = False
      OnClick = btnPesoClick
    end
    object PnlDespesaFinanceira: TPanel [96]
      Left = 7280
      Top = 10000
      Width = 1016
      Height = 250
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 55
      Visible = False
    end
    object edtTotal_Despesas_Financeira: TcxDBCurrencyEdit [97]
      Left = 791
      Top = 515
      Hint = 
        'Soma do Campo VALOR VAREJO dos itens + R$ Frete + Outros + Acres' +
        'c. - Desconto)'
      AutoSize = False
      DataBinding.DataField = 'TOTAL_DESPESAS_FINANCEIRA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = True
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 86
      Height = 21
      Width = 103
    end
    object chkGera_Estoque: TcxDBCheckBox [98]
      Left = 1088
      Top = 439
      Caption = 'Estoque Gerado'
      DataBinding.DataField = 'ATUALIZA_ESTOQUE'
      DataBinding.DataSource = DS
      ParentBackground = False
      ParentColor = False
      Properties.Alignment = taLeftJustify
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Color = clWhite
      Style.HotTrack = False
      TabOrder = 76
      Transparent = True
    end
    object edtSubTotal: TcxDBCurrencyEdit [99]
      Left = 981
      Top = 581
      AutoSize = False
      DataBinding.DataField = 'SUB_TOTAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.ReadOnly = True
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 93
      Height = 21
      Width = 102
    end
    object edtCodigoÎNF_Entrada: TcxButtonEdit [100]
      Left = 7280
      Top = 10000
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnEditValueChanged = edtCodigoÎNF_EntradaPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 62
      Visible = False
      Width = 121
    end
    object btnAdicionarVinculo: TcxButton [101]
      Left = 7280
      Top = 10000
      Width = 50
      Height = 35
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 68
      Visible = False
      OnClick = btnAdicionarVinculoClick
    end
    object btnRemoverVinculo: TcxButton [102]
      Left = 7280
      Top = 10000
      Width = 50
      Height = 35
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 69
      Visible = False
      OnClick = btnRemoverVinculoClick
    end
    object GridVinculos: TcxGrid [103]
      Left = 7280
      Top = 10000
      Width = 1176
      Height = 199
      TabOrder = 70
      Visible = False
      object GridVinculosView: TcxGridDBTableView
        OnDblClick = GridVinculosViewDblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSNF_Entrada_Vinculos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.GroupByBox = False
        object GridVinculosViewChaveNF: TcxGridDBColumn
          Caption = 'Chave de Acesso'
          DataBinding.FieldName = 'NF_CHAVE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          Width = 500
        end
        object GridVinculosViewCodigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 106
        end
        object GridVinculosViewTipo: TcxGridDBColumn
          Caption = 'Tipo Nota'
          DataBinding.FieldName = 'TIPO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 151
        end
        object GridVinculosViewTipo_Vinculo: TcxGridDBColumn
          Caption = 'Tipo de V'#237'nculo'
          DataBinding.FieldName = 'TIPO_VINCULO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 160
        end
        object GridVinculosViewNun_NF: TcxGridDBColumn
          Caption = 'N'#250'mero Docto'
          DataBinding.FieldName = 'NUN_NF'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 111
        end
        object GridVinculosViewRazaoSocial: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 317
        end
        object GridVinculosViewTotal: TcxGridDBColumn
          Caption = 'Valor Base'
          DataBinding.FieldName = 'TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Width = 105
        end
        object GridVinculosViewData: TcxGridDBColumn
          Caption = 'Data Nota'
          DataBinding.FieldName = 'DT_NOTA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Width = 131
        end
        object GridVinculosViewPORCENTAGEM_RATEIO: TcxGridDBColumn
          Caption = '% Rateio'
          DataBinding.FieldName = 'PORCENTAGEM_RATEIO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = GridVinculosViewPORCENTAGEM_RATEIOPropertiesValidate
        end
      end
      object GridVinculosLevel1: TcxGridLevel
        GridView = GridVinculosView
      end
    end
    object edtCodigoÎNF_EntradaÎNUN_NF: TcxTextEdit [104]
      Left = 7280
      Top = 10000
      AutoSize = False
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 64
      Visible = False
      Height = 21
      Width = 121
    end
    object edtCodigoÎNF_EntradaÎTOTAL: TcxCurrencyEdit [105]
      Left = 7280
      Top = 10000
      AutoSize = False
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 66
      Visible = False
      Height = 21
      Width = 121
    end
    object cbTipoVinculo: TcxComboBox [106]
      Left = 7280
      Top = 10000
      AutoSize = False
      Properties.Items.Strings = (
        'TRANSPORTE'
        'SUBSTITUI'#199#195'O TRIBUT'#193'RIA'
        'DIFAL')
      Style.HotTrack = False
      TabOrder = 67
      Visible = False
      Height = 21
      Width = 194
    end
    object edtRazaoSocial: TcxTextEdit [107]
      Left = 7280
      Top = 10000
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 65
      Visible = False
      Width = 324
    end
    object edtCodigoÎNF_EntradaÎTIPO: TcxTextEdit [108]
      Left = 7280
      Top = 10000
      AutoSize = False
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 63
      Visible = False
      Height = 21
      Width = 188
    end
    object edtCustos_Vinculados: TcxDBCurrencyEdit [109]
      Left = 756
      Top = 581
      DataBinding.DataField = 'CALC_VCOMPRA_CUSTOS_VINCULADOS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 91
      Width = 121
    end
    object edtChave: TcxDBTextEdit [110]
      Left = 7280
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'NF_CHAVE'
      DataBinding.DataSource = DS
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.HotTrack = False
      TabOrder = 51
      Visible = False
      Height = 21
      Width = 425
    end
    object btnRequisicao: TcxButton [111]
      Left = 1213
      Top = 532
      Width = 116
      Height = 35
      Caption = 'Requisi'#231#227'o'
      OptionsImage.Spacing = 2
      TabOrder = 21
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = btnRequisicaoClick
    end
    object chkEnvia_Preco: TcxDBCheckBox [112]
      Left = 968
      Top = 439
      AutoSize = False
      Caption = 'Atualizar Pre'#231'o'
      DataBinding.DataField = 'ENVIA_PRECO'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 72
      Transparent = True
      Height = 21
      Width = 119
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited LiedtCodigo: TdxLayoutItem
      ControlOptions.OriginalWidth = 64
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      AlignVert = avClient
      Index = 8
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 15
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'N'#186' da Nota'
      ControlOptions.OriginalWidth = 61
      Index = 3
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      AlignVert = avBottom
      Index = -1
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      ControlOptions.OriginalHeight = 35
    end
    inherited LiBtnAjuda: TdxLayoutItem
      CaptionOptions.Text = 'Ajuda'
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = GrupoCentralTabs
      Index = 3
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 7
    end
    inherited LiBtnImprimirPadrao: TdxLayoutItem
      CaptionOptions.Visible = True
    end
    object libtnMenu: TdxLayoutItem
      Parent = GrupoMenuInterno
      Offsets.Top = 10
      CaptionOptions.Visible = False
      Control = btnMenu
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object libtnImportarNFe: TdxLayoutItem
      Parent = GrupoMenuInterno
      CaptionOptions.Visible = False
      Control = btnImportarNFe
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object licbxTipo: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = cbxTipo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtDT_Nota: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Data da Nota'
      CaptionOptions.Layout = clTop
      Control = edtDT_Nota
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtFornecedorÎPessoas: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Fornecedor'
      CaptionOptions.Layout = clTop
      Control = edtFornecedorÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lilblFornecedorÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblFornecedorÎPessoasÎRAZAOSOCIAL
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtData: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Data Cadastro'
      CaptionOptions.Layout = clTop
      Control = edtData
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lirdgTransferenciaTipo: TdxLayoutItem
      Parent = GrupoTransferencia
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Control = rdgTransferenciaTipo
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 162
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoCentral: TdxLayoutGroup
      Parent = GrupoMain
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 3
    end
    object GrupoTransferencia: TdxLayoutGroup
      Parent = GrupoCentral
      Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoTransferenciaEntreEmpresas: TdxLayoutGroup
      Parent = GrupoTransferencia
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Trnafer'#234'ncias entre empresas'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object GrupoTransferenciaEntreEstoques: TdxLayoutGroup
      Parent = GrupoTransferencia
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Transfer'#234'ncia entre estoques'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object liedtEmpresaOrigemÎEmpresa: TdxLayoutItem
      Parent = GrupoTransferenciaEntreEmpresas
      CaptionOptions.Text = 'Empresa de'
      CaptionOptions.Layout = clTop
      Control = edtEmpresaOrigemÎEmpresa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblEmpresaOrigemÎEmpresaÎRAZAOSOCIAL: TdxLayoutItem
      Parent = GrupoTransferenciaEntreEmpresas
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Origem'
      CaptionOptions.Layout = clTop
      Control = lblEmpresaOrigemÎEmpresaÎRAZAOSOCIAL
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtEmpresaDestinoÎEmpresa: TdxLayoutItem
      Parent = GrupoTransferenciaEntreEmpresas
      AlignVert = avTop
      CaptionOptions.Text = 'Empresa de'
      CaptionOptions.Layout = clTop
      Control = edtEmpresaDestinoÎEmpresa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lilblEmpresaDestinoÎEmpresaÎRAZAOSOCIAL: TdxLayoutItem
      Parent = GrupoTransferenciaEntreEmpresas
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Destino'
      CaptionOptions.Layout = clTop
      Control = lblEmpresaDestinoÎEmpresaÎRAZAOSOCIAL
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object GrupoCentralTabs: TdxLayoutGroup
      Parent = GrupoCentral
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tab Principal'
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = GrupoCentralTabsTabChanged
      Index = 1
    end
    object TabProdutos: TdxLayoutGroup
      Parent = GrupoCentralTabs
      CaptionOptions.Text = 'Produtos'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = TabProdutos
      CaptionOptions.Visible = False
      Control = PnlCabecalhoProduto
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 191
      ControlOptions.OriginalWidth = 806
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoFinanceiro: TdxLayoutGroup
      Parent = TabFormaPagamento
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Forma de Pagamento'
      Enabled = False
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = GrupoFinanceiro
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridFinanceiro
      ControlOptions.OriginalHeight = 261
      ControlOptions.OriginalWidth = 806
      Index = 1
    end
    object GrupoAdicionaParcela: TdxLayoutGroup
      Parent = GrupoFinanceiro
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liedtCondicaoPagtoÎCondicaoPagto: TdxLayoutItem
      Parent = GrupoAdicionaParcela
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Condi'#231#227'o de'
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtCondicaoPagtoÎCondicaoPagtoÎPARCELAS: TdxLayoutItem
      Parent = GrupoAdicionaParcela
      AlignVert = avClient
      CaptionOptions.Text = 'Parcelas'
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagtoÎPARCELAS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TdxLayoutItem
      Parent = GrupoAdicionaParcela
      CaptionOptions.Text = 'Pagamento'
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 348
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TdxLayoutItem
      Parent = GrupoAdicionaParcela
      AlignVert = avBottom
      CaptionOptions.Text = 'Intervalo'
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtCondicaoPagtoÎCondicaoPagtoÎINTERVALO_MENSAL: TdxLayoutItem
      Parent = GrupoAdicionaParcela
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO_MENSAL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object libtnGerarParcelas: TdxLayoutItem
      Parent = GrupoAdicionaParcela
      AlignVert = avClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnGerarParcelas
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object GrupoDadosAdicionais: TdxLayoutGroup
      Parent = GrupoCentralTabs
      CaptionOptions.Text = 'Dados Adicionais'
      Index = 2
    end
    object licbxModelo_Docto_Fiscal: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Modelo do Documento Fiscal'
      CaptionOptions.Layout = clTop
      Control = cbxModelo_Docto_Fiscal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 310
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtSerie: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'S'#233'rie'
      CaptionOptions.Layout = clTop
      Control = edtSerie
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtSubserie: TdxLayoutItem
      Parent = dxLayoutGroup10
      CaptionOptions.Text = 'Sub-S'#233'rie'
      CaptionOptions.Layout = clTop
      Control = edtSubserie
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem48: TdxLayoutItem
      Parent = LiGrupoDadosAdicionais
      CaptionOptions.Text = 'Transportadora'
      CaptionOptions.Layout = clTop
      Control = edtTransportadora
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 421
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = LiGrupoDadosAdicionais
      CaptionOptions.Text = 'New Group'
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object licbxNF_FretePorConta: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignVert = avClient
      CaptionOptions.Text = 'Frete por Conta'
      CaptionOptions.Layout = clTop
      Control = cbxNF_FretePorConta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 249
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem50: TdxLayoutItem
      Parent = LiGrupoDadosAdicionais
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = edtObservacao
      ControlOptions.OriginalHeight = 81
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoTotaisNota: TdxLayoutGroup
      Parent = GrupoCentral
      CaptionOptions.Text = 'Totais da Nota'
      Index = 4
    end
    object liedtNF_VFrete2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'R$ Frete'
      CaptionOptions.Layout = clTop
      Control = edtNF_VFrete2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object GrupoImpostos: TdxLayoutGroup
      Parent = GrupoTotaisNota
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ItemIndex = 11
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liedtNF_VBC: TdxLayoutItem
      Parent = GrupoImpostos
      CaptionOptions.Text = 'BC ICMS'
      CaptionOptions.Layout = clTop
      Control = edtNF_VBC
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtNF_VICMS: TdxLayoutItem
      Parent = GrupoImpostos
      AlignVert = avBottom
      CaptionOptions.Text = 'R$ ICMS'
      CaptionOptions.Layout = clTop
      Control = edtNF_VICMS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtNF_VSEG: TdxLayoutItem
      Parent = GrupoImpostos
      AlignVert = avClient
      CaptionOptions.Text = 'Seguro'
      CaptionOptions.Layout = clTop
      Control = edtNF_VSEG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtNF_VBCST: TdxLayoutItem
      Parent = GrupoImpostos
      AlignVert = avBottom
      CaptionOptions.Text = 'BC ICMS ST'
      CaptionOptions.Layout = clTop
      Control = edtNF_VBCST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtNF_VICMSST2: TdxLayoutItem
      Parent = GrupoImpostos
      AlignVert = avClient
      CaptionOptions.Text = 'R$ ICMS ST'
      CaptionOptions.Layout = clTop
      Control = edtNF_VICMSST2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtNF_IPI_VIPI2: TdxLayoutItem
      Parent = GrupoImpostos
      AlignVert = avClient
      CaptionOptions.Text = 'R$ IPI'
      CaptionOptions.Layout = clTop
      Control = edtNF_IPI_VIPI2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtNF_PIS_VPIS: TdxLayoutItem
      Parent = GrupoImpostos
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'R$ PIS'
      CaptionOptions.Layout = clTop
      Control = edtNF_PIS_VPIS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object liedtNF_COFINS_VCOFINS: TdxLayoutItem
      Parent = GrupoImpostos
      AlignVert = avClient
      CaptionOptions.Text = 'R$ COFINS'
      CaptionOptions.Layout = clTop
      Control = edtNF_COFINS_VCOFINS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object liedtVDesc2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'R$ Desconto'
      CaptionOptions.Layout = clTop
      Control = edtVDesc2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object liedtVOutro2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'R$ Acr'#233'scimo'
      CaptionOptions.Layout = clTop
      Control = edtVOutro2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object liedtValor_Produtos: TdxLayoutItem
      Parent = GrupoImpostos
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'R$ Produtos'
      CaptionOptions.Layout = clTop
      Control = edtValor_Produtos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtTotal2: TdxLayoutItem
      Parent = GrupoImpostos
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'R$ Total'
      CaptionOptions.Layout = clTop
      Control = edtTotal2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object GrupoVolume: TdxLayoutGroup
      Parent = GrupoCentral
      CaptionOptions.Text = 'New Group'
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object liedtPeso_Bruto: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Peso Bruto'
      CaptionOptions.Layout = clTop
      Control = edtPeso_Bruto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtPeso_Liquido: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Peso L'#237'quido'
      CaptionOptions.Layout = clTop
      Control = edtPeso_Liquido
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtCodUsuarioÎUsuario: TdxLayoutItem
      Parent = GrupoResponsaveis
      AlignVert = avBottom
      CaptionOptions.Text = 'Usu'#225'rio'
      CaptionOptions.Layout = clTop
      Control = edtCodUsuario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 37
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object lilblCodUsuarioÎUsuarioÎLOGIN: TdxLayoutItem
      Parent = GrupoResponsaveis
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Respons'#225'vel por finalizar'
      CaptionOptions.Layout = clTop
      Control = lblCodUsuario
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 152
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtQuanidade: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Quantidade'
      CaptionOptions.Layout = clTop
      Control = edtQuanidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtVolume: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Volume'
      CaptionOptions.Layout = clTop
      Control = edtVolume
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtValor_NF_Varejo: TdxLayoutItem
      Parent = GrupoTotalVenda
      AlignVert = avClient
      CaptionOptions.Text = 'R$ Total Venda'
      CaptionOptions.Layout = clTop
      Control = edtValor_NF_Varejo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object licbxEstoque_Local_Origem: TdxLayoutItem
      Parent = GrupoTransferenciaEntreEstoques
      CaptionOptions.Text = 'Local de Origem'
      CaptionOptions.Layout = clTop
      Control = cbxEstoque_Local_Origem
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object licbxEstoque_Local_Destino: TdxLayoutItem
      Parent = GrupoTransferenciaEntreEstoques
      CaptionOptions.Text = 'Local de Destino'
      CaptionOptions.Layout = clTop
      Control = cbxEstoque_Local_Destino
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object libtnFinalizarCompra: TdxLayoutItem
      Parent = LiFaturamento
      CaptionOptions.Visible = False
      Control = btnFinalizarCompra
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtDtFaturamento: TdxLayoutItem
      Parent = GrupoMenuInterno
      Offsets.Top = 10
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Dt. Finaliza'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDtFaturamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object libtnCancelarFinalizacao: TdxLayoutItem
      Parent = LiFaturamento
      Visible = False
      CaptionOptions.Visible = False
      Control = btnCancelarFinalizacao
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object libtnCancelarConferencia: TdxLayoutItem
      Parent = GrupoResponsaveis
      AlignHorz = ahLeft
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnCancelarConferencia
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lichkEnviaFinanceiro: TdxLayoutItem
      Parent = GrupoAdicionaParcela
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkEnviaFinanceiro
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 317
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object TabFormaPagamento: TdxLayoutGroup
      Parent = GrupoCentralTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Forma de Pagamento'
      UseIndent = False
      Index = 1
    end
    object LiFaturamento: TdxLayoutGroup
      Parent = GrupoMenuInterno
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 14
    end
    object LiGrupoDadosAdicionais: TdxLayoutGroup
      Parent = GrupoDadosAdicionais
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object GrupoResponsaveis: TdxLayoutGroup
      Parent = GrupoCentral
      CaptionOptions.Text = 'Respons'#225'vel pelas confer'#234'ncias'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lichkAtualiza_Estoque: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkAtualiza_Estoque
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lichkGera_Financeiro: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkGera_Financeiro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object libtnMateriaisConferidos: TdxLayoutItem
      Parent = GrupoResponsaveis
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnMateriaisConferidos
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtUsuarioEstoqueÎUsuario: TdxLayoutItem
      Parent = GrupoResponsaveis
      AlignVert = avBottom
      Offsets.Left = 5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Usu'#225'rio'
      CaptionOptions.Layout = clTop
      Control = edtUsuarioEstoqueÎUsuario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lilblUsuarioEstoqueÎUsuarioÎLOGIN: TdxLayoutItem
      Parent = GrupoResponsaveis
      AlignVert = avBottom
      CaptionOptions.Text = 'da Confer'#234'ncia dos Materiais'
      CaptionOptions.Layout = clTop
      Control = lblUsuarioEstoqueÎUsuarioÎLOGIN
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LiGridTree: TdxLayoutItem
      Parent = TabProdutos
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridTree
      ControlOptions.OriginalHeight = 55
      ControlOptions.OriginalWidth = 802
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtCodContaÎContasÎDescricao: TdxLayoutItem
      Parent = GrupoAdicionaParcela
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtCodContaÎContasÎDescricao
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtCodContaÎContas: TdxLayoutItem
      Parent = GrupoAdicionaParcela
      AlignVert = avBottom
      CaptionOptions.Text = 'Conta'
      CaptionOptions.Layout = clTop
      Control = edtCodContaÎContas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lichkPode_Ratear_Frete_Desc_Outro: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkPode_Ratear_Frete_Desc_Outro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoRetearValores: TdxLayoutGroup
      Parent = GrupoVolume
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Ratear os valores nos itens acima'
      Index = 4
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoRetearValores
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object GrupoTotalVenda: TdxLayoutGroup
      Parent = GrupoVolume
      AlignHorz = ahRight
      CaptionOptions.Text = 'Total de Venda'
      Index = 2
    end
    object GrupoPesoVolumes: TdxLayoutGroup
      Parent = GrupoVolume
      CaptionOptions.Text = 'Peso e Volumes'
      Index = 0
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = GrupoPesoVolumes
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object liedtUsuarioAlteradoÎUsuario: TdxLayoutItem
      Parent = GrupoUltimoUsuario
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Usu'#225'rio'
      CaptionOptions.Layout = clTop
      Control = edtUsuarioAlterado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 48
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblUsuarioAlteradoÎUsuarioÎLOGIN: TdxLayoutItem
      Parent = GrupoUltimoUsuario
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Layout = clTop
      Control = lblUsuarioAlterado
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = TabMotorCalculo
      CaptionOptions.Text = 'Motor de Calculo'
      CaptionOptions.Layout = clTop
      Control = dxSpreadSheetFormulaBar1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 1303
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = TabMotorCalculo
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = sprMotorCalculo
      ControlOptions.OriginalHeight = 657
      ControlOptions.OriginalWidth = 1303
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object TabMotorCalculo: TdxLayoutGroup
      Parent = GrupoCentralTabs
      CaptionOptions.Text = 'Motor de C'#225'lculo'
      ItemIndex = 2
      Index = 5
    end
    object LichkEnvia_Estoque: TdxLayoutItem
      Parent = GrupoResponsaveis
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Hint = 
        'Desmarcar essa op'#231#227'o impede que os produtos sejam cadastrados e ' +
        'enviados ao estoque'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clBottom
      Control = chkEnvia_Estoque
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LibtnMarkup: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnMarkup
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 266
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LibtnCustoMedio: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnCustoMedio
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 236
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LibtnRendimento: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnRendimento
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 348
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = TabMotorCalculo
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object LibtnPeso: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnPeso
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 266
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object GrupoUltimoUsuario: TdxLayoutGroup
      Parent = GrupoVolume
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Usu'#225'rio que modificou por '#250'ltimo'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = TabDespesaAdicional
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = PnlDespesaFinanceira
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 261
      ControlOptions.OriginalWidth = 858
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object TabDespesaAdicional: TdxLayoutGroup
      Parent = GrupoCentralTabs
      CaptionOptions.Text = 'Despesas Adicionais'
      Visible = False
      Index = 4
    end
    object GrupoTotalDespesasFinanceira: TdxLayoutGroup
      Parent = GrupoVolume
      AlignHorz = ahRight
      CaptionOptions.Text = 'Total Despesas'
      Index = 3
    end
    object liedtTotal_Despesas_Financeira: TdxLayoutItem
      Parent = GrupoTotalDespesasFinanceira
      AlignVert = avBottom
      CaptionOptions.Text = 'R$ Total Despesas'
      CaptionOptions.Layout = clTop
      Control = edtTotal_Despesas_Financeira
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = chkGera_Estoque
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = GrupoResponsaveis
      AlignHorz = ahRight
      Index = 4
    end
    object LiedtSubTotal: TdxLayoutItem
      Parent = GrupoImpostos
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'Sub-Total'
      CaptionOptions.Layout = clTop
      Control = edtSubTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object TabVinculadas: TdxLayoutGroup
      Parent = GrupoCentralTabs
      CaptionOptions.Text = 'Vinculadas'
      Index = 6
    end
    object LiedtCodigoÎNF_Entrada: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'C'#243'digo da Compra'
      CaptionOptions.Layout = clTop
      Control = edtCodigoÎNF_Entrada
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LibtnAdicionarVinculo: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAdicionarVinculo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LibtnRemoverVinculo: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = btnRemoverVinculo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = TabVinculadas
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = TabVinculadas
      AlignVert = avClient
      Padding.Top = 10
      Padding.AssignedValues = [lpavTop]
      Control = GridVinculos
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtCodigoÎNF_EntradaÎNUN_NF: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'N'#250'mero Docto.'
      CaptionOptions.Layout = clTop
      Control = edtCodigoÎNF_EntradaÎNUN_NF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtCodigoÎNF_EntradaÎTOTAL: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Valor'
      CaptionOptions.Layout = clTop
      Control = edtCodigoÎNF_EntradaÎTOTAL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LicbTipoVinculo: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'Tipo de V'#237'nculo'
      CaptionOptions.Layout = clTop
      Control = cbTipoVinculo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 194
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LiedtRazaoSocial: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtRazaoSocial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 324
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LiedtCodigoÎNF_EntradaÎTIPO: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Tipo Docto.'
      CaptionOptions.Layout = clTop
      Control = edtCodigoÎNF_EntradaÎTIPO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 188
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtValor_Acrescimo_Vinculado: TdxLayoutItem
      Parent = GrupoImpostos
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'Custos Vinculados'
      CaptionOptions.Layout = clTop
      Control = edtCustos_Vinculados
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtChave: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignVert = avClient
      CaptionOptions.Text = 'Chave da nota Importada'
      CaptionOptions.Layout = clTop
      Control = edtChave
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 425
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object libtnRequisicao: TdxLayoutItem
      Parent = GrupoMenuInterno
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnRequisicao
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object lichkEnvia_Preco: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = chkEnvia_Preco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = GrupoResponsaveis
      AlignHorz = ahRight
      Index = 1
    end
  end
  object SprMemoria: TdxSpreadSheet [10]
    Left = 315
    Top = 242
    Width = 542
    Height = 120
    OptionsView.GridLines = False
    PageControl.Visible = False
    Visible = False
    Data = {
      8002000044585353763242461000000042465320000000000000000000000101
      010100000000000001004246532000000000424653200100000001000000200B
      00000007000000430061006C0069006200720069000000000000002000000020
      0000000020000000000020000000000020000000000020000007000000470045
      004E004500520041004C00000000000002000000000000000001424653200100
      0000424653201700000054006400780053007000720065006100640053006800
      6500650074005400610062006C00650056006900650077000600000053006800
      650065007400310001FFFFFFFFFFFFFFFF640000000200000002000000020000
      0055000000140000000200000002000000000200000002000000000000010000
      0000000101000042465320550000000000000042465320000000004246532014
      0000000000000042465320000000000000000000000000010000000000000000
      0000000000000000000000424653200000000002020000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000064000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000200020200020000000000000000000000000000000000020000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0000000000000000424653200000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000}
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 634
    Width = 1172
    ExplicitTop = 634
    ExplicitWidth = 1172
  end
  object pnl_Parcela: TPanel [12]
    Left = 100
    Top = 213
    Width = 551
    Height = 197
    BevelInner = bvLowered
    TabOrder = 8
    Visible = False
    object pnl_ParcelaSo: TPanel
      Left = 2
      Top = 2
      Width = 547
      Height = 155
      Align = alClient
      TabOrder = 0
      object Gradient10: TGradient
        Left = 1
        Top = 1
        Width = 545
        Height = 153
        Align = alClient
        ColorEnd = 9289869
        Style = gsArrowR
        ExplicitLeft = 5
        ExplicitTop = -14
      end
      object Label71: TLabel
        Left = 9
        Top = 42
        Width = 97
        Height = 13
        Caption = 'R$ Valor Parcela'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object Label72: TLabel
        Left = 276
        Top = 5
        Width = 59
        Height = 13
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label74: TLabel
        Left = 376
        Top = 4
        Width = 64
        Height = 13
        Caption = 'Lan'#231'amento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label75: TLabel
        Left = 496
        Top = 81
        Width = 40
        Height = 13
        Caption = 'STATUS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label76: TLabel
        Left = 310
        Top = 43
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label77: TLabel
        Left = 195
        Top = 43
        Width = 29
        Height = 13
        Caption = 'Juros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label78: TLabel
        Left = 113
        Top = 43
        Width = 47
        Height = 13
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label79: TLabel
        Left = 228
        Top = 80
        Width = 140
        Height = 13
        Caption = 'C'#243'digo do Plano de Contas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblParcelaÎPlanoContasÎDESCRICAO: TLabel
        Left = 299
        Top = 93
        Width = 147
        Height = 20
        AutoSize = False
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label82: TLabel
        Left = 9
        Top = 80
        Width = 87
        Height = 13
        Caption = 'C'#243'digo da Conta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblParcelaÎContasÎDESCRICAO: TLabel
        Left = 66
        Top = 92
        Width = 159
        Height = 20
        AutoSize = False
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label85: TLabel
        Left = 9
        Top = 2
        Width = 98
        Height = 13
        Caption = 'Tipo de Pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label86: TLabel
        Left = 456
        Top = 43
        Width = 73
        Height = 13
        Caption = 'Dt Pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label87: TLabel
        Left = 114
        Top = 116
        Width = 48
        Height = 13
        Caption = 'Hist'#243'rico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label88: TLabel
        Left = 363
        Top = 43
        Width = 77
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dt Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 9
        Top = 116
        Width = 69
        Height = 13
        Caption = 'Num Cheque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object btnTipoPagto: TcxButton
        Left = 238
        Top = 10
        Width = 32
        Height = 30
        Enabled = False
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360900000000000036000000280000001800000018000000010020000000
          000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004A1E1EFF4A1E1EFF4A1E
          1EFF4A1E1EFF4A1E1EFF4A1E1EFF4A1E1EFF4A1E1EFFFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF004A1E1EFF4A1E1EFF602716FF80340DFF953B
          07FF9D3E05FF9D3E05FF963D07FF82350CFF642815FF4B1E1EFF4A1E1EFFFF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00602716FF51211BFF6C2B12FFA34104FFC44E00FFC75000FFC64F
          00FFC44F00FFC44E00FFC64F00FFC75000FFC44E00FFA94404FF742D10FF4D1F
          1CFF4D1F1CFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00602716FF602716FF923C08FFC95100FFC64F00FFBC4B00FFBB4A00FFBA49
          00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFC44F00FFCC5100FF973D
          07FF51211BFF4D1F1CFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF006027
          16FF692A13FF993D06FFCA5100FFBF4D00FFBB4B00FFBC4B00FFBC4B00FFBC4B
          00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4C00FFCE52
          00FF993D06FF52211CFF4D1F1CFFFF00FF00FF00FF00FF00FF00FF00FF00702D
          11FF9A3F05FFC75000FFBD4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B
          00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBB4A
          00FFCE5100FF973D07FF4C1F1DFFFF00FF00FF00FF00FF00FF00602716FF8B37
          09FFC44E00FFBD4C00FFBC4B00FFBC4B00FFBC4C00FFBC4B00FFBC4B00FFBC4B
          00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B
          00FFBC4B00FFCA5000FF742D10FF4C1F1DFFFF00FF00FF00FF0081340CFFAC45
          03FFC54F00FFBF4F02FFC05003FFC05304FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC4B00FFBC4B
          00FFBB4B00FFC54E00FFA74303FF4C1F1DFFFF00FF009A3F05FF913A09FFC153
          03FFC55706FFC55B09FFC65C0CFFC75E0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC4B00FFBC4B
          00FFBC4B00FFBC4B00FFC64F00FF652815FF4A1E1EFF9A3F05FFA44408FFCC5F
          0AFFC96210FFCB6513FFCC6716FFCE6917FFCB6210FFCE6615FFCB6412FFCA5F
          0EFFC65B0AFFC15305FFBD4E01FFBC4B00FFBC4B00FFBC4B00FFBC4B00FFBC4B
          00FFBC4B00FFBC4B00FFC75000FF82350CFF4A1E1EFF9A3F05FFB1500BFFD46B
          16FFD16C1CFFD16D1DFFD37020FFD47323FFE19855FFE29A5CFFE09756FFDE95
          52FFDC904CFFD88B46FFD58640FFD18039FFD1803AFFD17F38FFBC4B00FFBC4B
          00FFBC4B00FFBC4B00FFC64F00FF953B07FF4A1E1EFF9A3F05FFBB5B12FFDA7E
          2DFFD88134FFD8782AFFD97A2CFFDA7D2EFFEFC299FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1A975FFBC4B00FFBC4B
          00FFBC4B00FFBB4A00FFC54E00FF9D3E05FF4A1E1EFF9F4004FFC1631BFFE293
          4BFFE39957FFE0883BFFE08739FFE2893CFFE28C40FFF4D4B5FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9BF96FFBF4F02FFBC4B00FFBC4B
          00FFBC4B00FFBB4A00FFC54E00FF9D3E05FF4A1E1EFF9A3F05FFC1641BFFE79F
          5EFFEBB27DFFE69952FFE69145FFE79549FFE79348FFE6974EFFF8E3CFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D7BCFFC75D0DFFBD4C01FFBC4B00FFBC4B
          00FFBC4B00FFBC4B00FFC64F00FF953B07FF4A1E1EFF9A3F05FFBC5B13FFEAA3
          63FFF2C69CFFEFB177FFED9D54FFED9E56FFEE9E56FFEB9851FFEBA05EFFFBF0
          E5FFFFFFFFFFFFFFFFFFFAEEE1FFD3782BFFC55908FFBD4E02FFBC4B00FFBC4B
          00FFBC4B00FFBC4B00FFC75000FF80340DFF4A1E1EFF9A3F05FFB44E09FFE699
          55FFF4CCA6FFF8D0A9FFF3B074FFF3AB67FFF4AA65FFF0A15CFFEA9850FFEDB2
          79FFFFFFFFFFFFFFFEFFE29C5DFFCE6615FFC75B0AFFC05003FFBC4C00FFBC4B
          00FFBC4B00FFBD4B00FFC44E00FF622816FF4A1E1EFFFF00FF00B14702FFD57D
          33FFF6C495FFFAE3CBFFF8D0A9FFFBBD80FFFAB26EFFF4AF6DFFEE9D55FFE793
          49FFF0C497FFEDBA8AFFD47322FFCE6817FFC75D0DFFC05203FFBC4C00FFBC4B
          00FFBB4B00FFC64F00FFA54203FF4A1E1EFFFF00FF00FF00FF00963D07FFBC59
          0FFFEFAF72FFFBDDBFFFFCEAD7FFFED5ACFFFBBB7AFFF4B06EFFEE9F57FFE793
          49FFE1893CFFD97D2DFFD47322FFCE6817FFC75D0DFFC05204FFBC4C00FFBC4B
          00FFBD4B00FFCA5000FF6D2C12FF4A1E1EFFFF00FF00FF00FF00FF00FF00B247
          01FFCF742AFFF8C592FFFCE7D3FFFEEEDEFFFAD3ACFFF6BB86FFEB9C53FFE691
          45FFE08739FFD97A2BFFD37020FFCC6716FFC65C0CFFC05103FFBC4B00FFBD4C
          00FFCC5100FF8E3809FF4C1F1DFFFF00FF00FF00FF00FF00FF00FF00FF00963D
          07FFB44903FFD37B33FFF7C697FFFBE5CEFFFEEEDEFFF8DDC1FFF3C79CFFEBA6
          69FFE18E42FFD98133FFD47627FFCF6F20FFCB6A1BFFC56213FFC45707FFCC51
          00FF903809FF4F1F1CFF6E2D13FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00963D07FFB24903FFCF762DFFF2B67EFFFAD5B1FFFAE5D0FFFAE5D0FFF6D9
          BDFFEEC7A1FFEAB888FFE5AB75FFE1A168FFDA904DFFD47627FFCA5B0AFF9139
          08FF542319FF6E2D13FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00963D07FFAF4602FFBA5913FFD78742FFEBAF75FFF2C495FFF4CC
          A6FFF3CCA7FFF0C59AFFEAB581FFE29D5CFFD17B31FFAF5313FF7F3510FF5C25
          16FF6E2D13FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00963D07FFA94404FFAD5211FFBA6624FFC576
          37FFC97D3EFFC47739FFBA682CFFA1511CFF843B14FF6E2D13FF6E2D13FFFF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00963D07FF963D07FF963D
          07FF913908FF88350AFF963D07FF963D07FF963D07FFFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OptionsImage.Layout = blGlyphRight
        OptionsImage.Spacing = 0
        TabOrder = 0
        TabStop = False
        WordWrap = True
      end
      object edtVencto: TcxDBDateEdit
        Left = 349
        Top = 55
        Margins.Left = 0
        Margins.Top = 0
        DataBinding.DataField = 'VENCTO'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        TabOrder = 8
        Width = 95
      end
      object edtDataPagto: TcxDBDateEdit
        Left = 446
        Top = 55
        Margins.Left = 0
        Margins.Top = 0
        DataBinding.DataField = 'DATAPAGTO'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        Properties.Kind = ckDateTime
        Style.Color = clSilver
        TabOrder = 9
        Width = 96
      end
      object edtParcelaÎContas: TcxDBButtonEdit
        Left = 9
        Top = 96
        Hint = 'F2 - Consulta / F3 - Cadastro'
        Margins.Left = 0
        Margins.Top = 0
        AutoSize = False
        DataBinding.DataField = 'CODCONTA'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 113
        ShowHint = True
        TabOrder = 10
        Height = 21
        Width = 57
      end
      object edtParcelaÎPlanoContas: TcxDBButtonEdit
        Left = 228
        Top = 93
        Hint = 'F2 - Consulta / F3 - Cadastro'
        Margins.Left = 0
        Margins.Top = 0
        AutoSize = False
        DataBinding.DataField = 'CODPLANOCONTAS'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 113
        ShowHint = True
        TabOrder = 11
        Height = 21
        Width = 68
      end
      object edtParcelaValor: TcxDBCurrencyEdit
        Left = 8
        Top = 54
        AutoSize = False
        DataBinding.DataField = 'VALOR'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        Properties.ReadOnly = False
        Style.Color = clWhite
        TabOrder = 4
        Height = 21
        Width = 99
      end
      object edtJuros: TcxDBCurrencyEdit
        Left = 175
        Top = 55
        AutoSize = False
        DataBinding.DataField = 'JUROS'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        Properties.ReadOnly = False
        Style.Color = clWhite
        TabOrder = 6
        Height = 21
        Width = 60
      end
      object edtDesconto: TcxDBCurrencyEdit
        Left = 113
        Top = 55
        AutoSize = False
        DataBinding.DataField = 'DESCONTO'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        Properties.ReadOnly = False
        Style.Color = clWindow
        TabOrder = 5
        Height = 21
        Width = 60
      end
      object edtParcelaTotal: TcxDBCurrencyEdit
        Left = 237
        Top = 55
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'Total'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        Properties.ReadOnly = True
        Style.Color = clSilver
        TabOrder = 7
        Height = 21
        Width = 109
      end
      object cbxParcelaTipo: TcxDBComboBox
        Left = 376
        Top = 17
        DataBinding.DataField = 'TIPO'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        ParentFont = False
        Properties.Items.Strings = (
          'A PAGAR'
          'PAGA')
        Properties.ReadOnly = False
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 165
      end
      object edtDocumento: TcxDBTextEdit
        Left = 276
        Top = 17
        DataBinding.DataField = 'DOCUMENTO'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        Properties.ReadOnly = False
        Style.Color = clWindow
        TabOrder = 1
        Width = 97
      end
      object cbxTipoPagto: TcxDBComboBox
        Left = 8
        Top = 19
        DataBinding.DataField = 'TIPOPAGTO'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        ParentFont = False
        Properties.ReadOnly = False
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 230
      end
      object edtHistorico: TcxDBTextEdit
        Left = 113
        Top = 129
        DataBinding.DataField = 'HISTORICO'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        Properties.ReadOnly = False
        Style.Color = clWindow
        TabOrder = 14
        Width = 429
      end
      object edtCheque_Numero: TcxDBTextEdit
        Left = 9
        Top = 129
        DataBinding.DataField = 'CHEQUE_NUMERO'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        Properties.ReadOnly = False
        Style.Color = clWindow
        TabOrder = 13
        Visible = False
        Width = 100
      end
      object edtStatus: TcxDBTextEdit
        Left = 452
        Top = 93
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'STATUS'
        DataBinding.DataSource = DSNF_Entrada_Parcelas
        Properties.ReadOnly = True
        Style.Color = clSilver
        TabOrder = 12
        Height = 21
        Width = 93
      end
    end
    object pnl_ConfirmaParcela: TPanel
      Left = 2
      Top = 157
      Width = 547
      Height = 38
      Align = alBottom
      TabOrder = 1
      object btnParcelaCancelar: TcxButton
        Left = 299
        Top = 5
        Width = 118
        Height = 28
        Caption = 'Cancelar'
        OptionsImage.Spacing = 3
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        OnClick = btnParcelaCancelarClick
      end
      object btn_wrFechar: TcxButton
        Left = 424
        Top = 5
        Width = 118
        Height = 28
        Caption = 'Fechar'
        OptionsImage.Spacing = 3
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object btnParcelaConfirmar: TcxButton
        Left = 424
        Top = 5
        Width = 118
        Height = 28
        Caption = 'Confirmar'
        OptionsImage.Spacing = 3
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        OnClick = btnParcelaConfirmarClick
      end
    end
  end
  inherited DS: TDataSource
    Left = 131
    Top = 328
  end
  inherited TimerStatusBar: TTimer
    Left = 327
    Top = 384
  end
  inherited MenuConfig: TPopupMenu
    Left = 355
    Top = 356
    object Acessoaconfiguraodecertificadodigital1: TMenuItem
      Caption = 'Configura'#231#227'o do certificado digital'
      OnClick = Acessoaconfiguraodecertificadodigital1Click
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 215
    Top = 328
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    object LookAndFeelValorDestacado: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clBlue
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsUnderline]
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    GroupName = 'Compra'
  end
  inherited MenuImprimir: TPopupMenu
    Left = 327
    Top = 356
  end
  inherited WREventosCadastro: TWREventosCadastro
    OnLayoutChange = WREventosCadastroLayoutChange
    Versao_Configuracao = 4
    FormClassCadastro = 'TFrmNF_Entrada'
    FormClassConsulta = 'TConsuNF_Entrada'
    Left = 187
    Top = 328
  end
  inherited Cadastro: TFDQuery
    AfterClose = CadastroAfterClose
    MasterFields = 'CODIGO'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * '
      'from NF_ENTRADA N'
      'where (CODIGO = :Codigo)')
    Left = 103
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  inherited TransaFD: TFDTransaction
    Options.DisconnectAction = xdCommit
    Left = 159
    Top = 328
  end
  object ImageList1: TImageList [25]
    Left = 215
    Top = 356
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C8C00737373005252
      5200ADA59C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A5252007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8C8400843910006B31
      10005A2910004A21100031313100ADA59C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      39007B7B7B00FFFFFF00EFEFEF008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C847B009C310000D69C
      6300EFA57300B5632900843910004A21100031313100ADA59C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063636300E7E7E7008C8C8C0000000000000000009C5A6B00A56B6B00A56B
      6B00A56B6B00A56B6B00A56B6B00A56B6B00A56B6B00A56B6B00A56B6B00A56B
      6B00A56B6B00A56B6B00A56B6B00A56B6B0000000000847B7300A5390000E7AD
      7B00FFEFCE00FFD6B500FFD6A500F7AD6B00B56B310084391000391810000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002929
      290063636300737373000000000000000000000000009C5A6B00FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700A56B6B00000000007B736300A5390000E7B5
      9C00FFE7CE00FFD6B500FFD6A500FFE7AD00FFCE6B00FF9C42005A2100007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E700CECECE0000000000000000000000000000000000293139006B6B
      6B0052525200000000000000000000000000000000009C5A6B00FFF7F700FFFF
      FF00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7
      CE00FFFFFF00FFFFFF00FFFFFF00A56B6B00000000007B736300AD4A0800E7C6
      A500FFEFCE00C6CEC6000084C600FFD6A500FFB54200F7A55A004A2110006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001821AD009CC6E700000000000000000000000000293139006B6B6B005252
      520000000000000000000000000000000000000000009C5A6B00FFF7F700FFFF
      FF00FFCE8C00FFCE8C00FFCE8C00FFCE8C00FFCE8C00FFCE8C00FFCE8C00FFCE
      8C00FFFFFF00FFFFFF00FFFFFF00A56B6B00000000007B736300AD4A0800FFD6
      B500D6E7D6000084C6000084C600ADAD8C007B7B5A00CE7B4A006B3108006B6B
      6B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001821AD00425AE7001000000000000000292929006B6B6B005A5A5A000000
      00000000000000000000000000000000000000000000AD6B7300FFF7F700FFFF
      FF00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7
      CE00FFFFFF00FFFFFF00FFFFFF00A56B6B0000000000846B5200B5521000FFE7
      CE00219CCE00ADCED6009CCECE000084C6008C846B00EFA57300FFC67B00B56B
      31007B4A2100525252007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E700637B
      B500088CFF000039AD0000008C001821AD00736B630052524A00000000000000
      00000000000000000000000000000000000000000000AD6B7300FFF7F700FFFF
      FF00FFCE8C00FFCE8C00FFCE8C00FFCE8C00FFCE8C00FFCE8C00FFCE8C00FFCE
      8C00FFFFFF00FFFFFF00FFFFFF00A56B6B0000000000846B5200B5521000F7EF
      E700F7F7EF00FFF7E700D6E7D600218CAD00FFE7B500E79C5A00B56B3100FFC6
      7B00FFC67B00AD7B520042426B00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000425AE7000084
      FF0029E7F70029E7F700105AF70021317B004A42310000000000000000000000
      00000000000000000000000000000000000000000000AD6B7300FFF7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFA54A00FFA54A00F7E7CE00A56B6B0000000000846B5200B5521000FFF7
      EF00FFF7F700FFF7E700FFF7E700319CC600F7EFD600E7AD7B004A2108007363
      4A00EFA573009C8484001842CE003139A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000298CD600105AF7000084FF0029E7
      F700C6F7FF0073F7FF0031ADFF00105AF700105AF7007B8CEF009CC6E7000000
      00000000000000000000000000000000000000000000CE847B00FFF7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFCE8C00FFA54A00F7E7CE00A56B6B0000000000846B5200C6632900FFF7
      F700FFFFFF00FFF7F700FFF7EF009CCECE00C6E7E700F7AD7B00391810006B6B
      6B0000000000ADA59C002952CE00293184000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CC6E700105AF7001084EF0029E7
      F700C6F7FF0073F7FF0031ADFF001084EF00105AF700637BB5009CA5C6000000
      00000000000000000000000000000000000000000000CE847B00FFF7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7E7CE00F7E7CE00F7E7CE00A56B6B00000000009C735200C6632900FFF7
      F700FFFFFF00FFFFFF00FFFFFF00CEEFEF00C6E7E700F7AD6B00391810006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000425AE700088C
      FF0029E7F70029E7F700007BF7007B8CEF000000000000000000000000000000
      00000000000000000000000000000000000000000000CE847B00EFCEAD00EFCE
      AD00EFCEAD00EFCEAD00EFCEAD00EFCEAD00EFCEAD00EFCEAD00EFCEAD00EFCE
      AD00D6B5AD00D6B5AD00C69C8C00C69C8C00000000009C8C8400C64A0000B55A
      2100CE7B4A00D6A58400EFC6B500F7EFE700FFFFFF00E7AD7B00422910006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000105AF7007B8C
      EF00189CFF00007BEF007B8CEF00298CD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADA59C00E7731000B542
      0000B5420000B5420000AD390000B5420000B5632900B55A2100423118007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000105AF700298CD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADA5
      9C009C8C8400847B7300C6732900CE6B1800CE5A0000CE5200007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CC6E700637BB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063737B00315A84000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000395A
      AD0039529C0039529C0039529C0039529C0039529C0039529C0039529C003952
      9C0039529C00395AAD000000000000000000000000000000000000000000107B
      AD0000639C00000000000000000000000000000000000000000000000000006B
      A500006BA50000000000000000000000000094635A009C6B63009C6B63009C6B
      63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B
      63009C6B63000000000000000000000000007B3110004A8CC6001084EF004A5A
      7B008C4221007B3110007B3110007B3110007B3110007B3110007B3110007B31
      10007B3110007B3110007B3110007B31100000000000000000004A6BBD00B58C
      8C008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A00395AAD00000000000000000000000000086B9C005ACE
      EF0031B5E70000639C00000000000000000000000000000000001084B50084E7
      F700088CC600086B9C0000000000000000009C6B5A00F7E7BD00F7DEBD00F7DE
      B500F7D6AD00F7D6A500F7D6A500F7D69C00EFCE9C00EFCE9400EFCE9400EFC6
      8C009C6B63000000000000000000000000006B291000B5DEF70042ADFF00187B
      E70063739400BD521000FFDEB500FFDEAD00FFD6A500FFD6A500FFCE9C00FFCE
      9400FFCE9400FFCE9400FFCE94007329100000000000000000004A6BBD00B58C
      8C00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE008C5A5A0039529C0000000000000000000000000000000000299C
      C60063F7FF0039B5E70000639C000000000000000000188CC600A5F7FF0042D6
      FF00299CC6000000000000000000000000009C6B6300F7E7C600F7E7C600F7DE
      BD00F7DEB500F7DEAD00F7D6AD00F7D6A500F7CE9C00EFCE9C00EFCE9400EFCE
      94009C6B63000000000000000000000000006B291000FFFFFF00B5D6F70042AD
      FF00187BE700736B6B00C6A58C00B5948400B5948400C6A58C00E7BD9400FFCE
      9C00FFCE9400FFCE9400FFCE94007329100000000000000000004A6BBD00B58C
      8C00F7EFDE008484840084848400848484008484840084848400848484008484
      8400F7EFDE008C5A5A0039529C0000000000000000000000000000000000086B
      9C004AD6F70052EFFF004ACEEF00006BA500219CC600B5F7FF0052EFFF004AD6
      F700005A8C00000000000000000000000000A56B6300F7E7CE00F7E7C600F7E7
      C600F7DEBD00F7DEB500F7DEB500F7D6AD00F7D6A500EFD69C00EFCE9C00EFCE
      94009C6B63000000000000000000000000006B291000FFFFFF00FFFFFF00ADD6
      F7006BADDE009C8C8400AD8C7B00D6A57300DEC6A500CEAD9400B58C7300DE84
      1800FF840000FF840000FFCE94007329100000000000000000004A6BBD00B58C
      8C00F7EFDE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7
      CE00F7EFDE008C5A5A0039529C00000000000000000000000000000000000000
      0000086B9C0039E7FF005AE7FF005AD6F700A5F7FF0084F7FF0042E7FF00086B
      9C0000000000000000000000000000000000A5736300FFEFD600D6842100D684
      2100D6842100D6842100D6842100D6842100D6842100D6842100D6842100EFCE
      9C009C6B63000000000000000000000000006B291000FFFFFF0031A5310031A5
      3100BDADAD00C6947300F7D6A500FFFFD600FFFFE700FFFFEF00DEC6BD00BD9C
      8C00FFCE9C00FFCE9C00FFCE94007329100000000000000000004A6BBD00B58C
      8C00F7EFDE008484840084848400848484008484840084848400848484008484
      8400F7EFDE008C5A5A0039529C00000000000000000000000000000000000000
      000000000000086B9C0031D6FF005AE7FF0073EFFF0084F7FF00086B9C000000
      000000000000000000000000000000000000AD736300FFEFDE00FFEFD600FFEF
      D6000084BD000084BD000084BD000084BD000084BD000084BD000084BD000084
      BD000084BD000084BD000084BD000084BD006B291000FFFFFF0031A5310031A5
      3100B59C8C00D69C6B00FFE79C00FFF7C600FFFFDE00FFFFF700F7F7EF00B594
      8400FF840000FF840000FFCE9C007329100000000000000000004A6BBD00B58C
      8C00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE009C6B6B0039529C00000000000000000000000000000000000063
      9C00086B9C0010CEFF0010CEFF0031D6FF005AE7FF007BF7FF0063D6EF00086B
      9C00086B9C00000000000000000000000000B57B6300FFF7E700D6842100D684
      21000084BD00B5FFFF009CFFFF008CFFFF0084FFFF0084FFFF0084FFFF0084F7
      FF0084EFFF0084EFFF0084EFFF000084BD006B291000FFFFFF00FFFFFF00FFFF
      FF00B5948C00DEB58C00FFC67B00F7DE9C00FFFFE700FFFFEF00F7F7D600B59C
      8C00FFD6AD00FFD6A500FFCE9C007329100000000000000000004A6BBD00B58C
      8C00FFF7E700FFF7E70000008400F7EFDE00C6C6C6000000840000008400C6C6
      C600FFF7E7009C6B6B0039529C000000000000000000005A8C00107BAD005ACE
      EF004AE7FF0018D6FF0008CEFF0018D6FF0042D6FF005AE7FF0084F7FF0073EF
      FF0029ADD60029ADD600005A8C0000000000B57B6300FFF7E700FFF7E700FFEF
      DE000084BD00C6FFFF00ADFFFF0094FFFF007BE7E70084FFFF0084FFFF0084F7
      FF0084F7FF0084EFFF0084EFFF000084BD006B291000FFFFFF00FFFFFF00FFFF
      FF00C6ADA500CEAD8C00FFDE9400F7C68400F7E7B500FFF7CE00DED6B500CEAD
      8C00FF840000FF840000FFD6A5007329100000000000000000005A73C600B58C
      8C00FFFFEF00FFFFEF0000008400FFFFEF0000008400FFFFEF00FFFFEF000000
      8400FFFFEF009C6B6B0039529C00000000001073A5006BC6D600D6FFFF00C6FF
      FF007BF7FF0052EFFF0018D6FF0008CEFF0018D6FF0042E7FF0063F7FF008CFF
      FF008CFFFF004AD6F7006BC6D600005A8C00BD846300FFF7EF00D6842100D684
      21000084BD00CEFFFF00B5FFF70084D6D6006BBDBD0084FFFF0084FFFF0084FF
      FF0084F7FF0084F7FF0084EFFF000084BD006B291000FFFFFF00527BFF00527B
      FF00E7D6CE00B58C7300DECEB500F7E7BD00EFBD8400DEBD9400C6A58C00CEB5
      9400FFDEB500FFDEB500FFD6AD007329100000000000000000005A73C600B58C
      8C00FFFFEF00FFFFEF0000008400FFFFEF00FFFFEF00FFFFEF00FFFFEF000000
      8400FFFFEF00A57B730039529C0000000000005A8C00005A8C00005A8C00005A
      8C00005A8C00005A8C005ACEEF0010CEFF0008CEFF0010ADE700005A8C00005A
      8C00005A8C00005A8C00005A8C00005A8C00C6846300FFFFF700FFF7EF00FFF7
      EF000084BD00DEFFFF008CB5B50084BDBD0094F7F7008CFFFF0084FFFF0084FF
      FF0084F7FF0084F7FF0084EFFF000084BD006B291000FFFFFF00527BFF00527B
      FF00FFFFFF00B55A2100B59C8C00B5948400B5948400C6A58C00CE9C6B00E77B
      1000FF840000FF840000FFDEAD007329100000000000000000005A73C600B58C
      8C00FFFFEF00FFFFEF0000008400FFFFEF00000084000000840000008400C6C6
      C600FFFFEF00A57B730039529C00000000000000000000000000000000000000
      00000000000000000000005A8C004AE7FF0010CEFF000073AD00000000000000
      000000000000000000000000000000000000C6846300FFFFFF00D6842100D684
      21000084BD00EFFFFF00424A4A0063848400A5FFFF0094FFFF0084FFFF0084FF
      FF0084FFFF0084F7FF0084F7FF000084BD009C522100C68C4200C68C4200C68C
      4200C68C4200C68C4200C68C4200C68C4200C68C4200C68C4200CE9C5200C68C
      4200CE9C5200C68C4200BD945A00A552210000000000000000006384CE00B58C
      8C00FFFFFF000000840000008400FFFFFF0000008400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B58C8C0039529C00000000000000000000000000000000000000
      00000000000000000000005A8C0073EFFF0031D6FF00006BA500000000000000
      000000000000000000000000000000000000CE8C6300FFFFFF00FFFFF700FFFF
      F7000084BD00F7FFFF00B5CECE0000007300000084009CFFFF008CFFFF0084FF
      FF0084FFFF0084FFFF0084F7FF000084BD009C421000D6631000D6631000D663
      1000D6631000D6631000D6631000D6631000D6631000D6631000F7AD6300D663
      1000F7AD63009C6339003152C600A542080000000000000000006384CE00B58C
      8C00FFFFFF00FFFFFF0000008400FFFFFF000000840000008400000084000000
      8400FFFFFF00B58C8C0039529C00000000000000000000000000000000000000
      00000000000000000000005A8C009CF7FF0042C6EF0000639C00000000000000
      000000000000000000000000000000000000CE8C6B00FFFFFF00FFFFFF00FFFF
      FF000084BD000084BD000084BD0000109C001839D600000000000084BD000084
      BD000084BD000084BD000084BD000084BD000000000094421800944218009442
      1800944218009442180094421800944218009442180094421800944218009442
      18009442180094421800944218000000000000000000000000006384CE00B58C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B58C8C0039529C00000000000000000000000000000000000000
      00000000000000000000005A8C00ADF7FF0042A5CE00005A8C00000000000000
      000000000000000000000000000000000000CE8C6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700FFF7EF004242A50021219C00FFEFDE00FFEF
      DE009C6B63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006384CE00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00395AAD00000000000000000000000000000000000000
      00000000000000000000005A8C00C6EFF7004AA5CE00005A8C00000000000000
      000000000000000000000000000000000000CE8C6B00CE8C6B00CE8C6B00CE8C
      6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C
      6B00CE8C6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006384
      CE005A73C6004A6BBD004A6BBD004A6BBD004A6BBD004A6BBD004A6BBD004A6B
      BD004A6BBD004A6BBD0000000000000000000000000000000000000000000000
      00000000000000000000000000001073AD00086B9C0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFBFFFF87FF0000FFF1FFFF80FF0000
      FFE0FFFF803F0000FFC18000801F0000FF838000800F0000F3078000800F0000
      F20F800080070000F01F800080010000C03F800080000000C07F800080000000
      001F800080080000001F8000800F0000C0FF8000800F0000C0FFFFFF800F0000
      F3FFFFFFE01F0000F3FFFFFFFFFF0000FFFF9FFFE003E7E700070000C001C3C3
      00070000C001E18700070000C001E00700070000C001F00F00070000C001F81F
      00000000C001E00700000000C001800100000000C001000000000000C0010000
      00000000C001FC3F00000000C001FC3F00000000C001FC3F00008001C001FC3F
      0007FFFFC001FC3F0007FFFFE003FE7F00000000000000000000000000000000
      000000000000}
  end
  object DSProdutos: TDataSource [26]
    DataSet = NF_Entrada_Produtos
    Left = 131
    Top = 356
  end
  object DSNF_Entrada_Parcelas: TDataSource [27]
    DataSet = NF_Entrada_Parcelas
    Left = 131
    Top = 384
  end
  object DSConsulta_Produto: TDataSource [28]
    DataSet = Consulta_Produto
    Left = 187
    Top = 384
  end
  object PopupMenu1: TPopupMenu [29]
    OnPopup = PopupMenu1Popup
    Left = 243
    Top = 328
    object EnviarparaCdigodeBarras1: TMenuItem
      Caption = 'Enviar para C'#243'digo de Barras'
      OnClick = EnviarparaCdigodeBarras1Click
    end
    object AutopreencherCddeBarras1: TMenuItem
      Caption = 'Auto-Preencher C'#243'd. de Barras'
      OnClick = AutopreencherCddeBarras1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Incluirprodutoscomestoqueabaixodomnimo1: TMenuItem
      Caption = 'Produtos com estoque baixo'
      OnClick = Incluirprodutoscomestoqueabaixodomnimo1Click
    end
  end
  object UCHistNF_Entrada_Parcelas: TUCHist_DataSet [30]
    DataSet = NF_Entrada_Parcelas
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    CampoPK2 = 'CODNF_ENTRADA'
    Tabela = 'NF_ENTRADA_PARCELAS'
    Modulo = 'COMPRA'
    Left = 271
    Top = 384
  end
  object UCHistNF_Entrada_Produtos: TUCHist_DataSet [31]
    DataSet = NF_Entrada_Produtos
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    CampoPK2 = 'CODNF_ENTRADA'
    Tabela = 'NF_ENTRADA_PRODUTOS'
    Modulo = 'COMPRA'
    Left = 271
    Top = 356
  end
  object UCHistWRGeral1: TUCHistWRGeral [32]
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    Left = 299
    Top = 384
  end
  object frxNF_Entrada: TfrxDBDataset [33]
    UserName = 'NF_Entrada'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATA=DATA'
      'NUN_NF=NUN_NF'
      'CFOP=CFOP'
      'DT_NOTA=DT_NOTA'
      'MODELO=MODELO'
      'SERIE=SERIE'
      'SUBSERIE=SUBSERIE'
      'VALOR_PRODUTOS=VALOR_PRODUTOS'
      'VALOR_NF=VALOR_NF'
      'ICMS_BASE=ICMS_BASE'
      'ICMS_VALOR=ICMS_VALOR'
      'ICMS_SUB_BASE=ICMS_SUB_BASE'
      'ICMS_SUB_VALOR=ICMS_SUB_VALOR'
      'FRETE=FRETE'
      'SEGURO=SEGURO'
      'IPI=IPI'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'ATUALIZA_ESTOQUE=ATUALIZA_ESTOQUE'
      'GERA_FINANCEIRO=GERA_FINANCEIRO'
      'PIS=PIS'
      'COFINS=COFINS'
      'CODUSUARIO=CODUSUARIO'
      'CODIGO=CODIGO'
      'CODCONDICAOPAGTO=CODCONDICAOPAGTO'
      'CONDICAOPAGTO=CONDICAOPAGTO'
      'QTDPARCELAS=QTDPARCELAS'
      'DIA_INTERVALO=DIA_INTERVALO'
      'INTERVALO_MENSAL=INTERVALO_MENSAL'
      'VALOR_PRODUTOSMASC=VALOR_PRODUTOSMASC'
      'VOLUME=VOLUME'
      'TRANSPORTADORA=TRANSPORTADORA'
      'OBSERVACAO=OBSERVACAO'
      'ALTERA_VALOR_PRODUTOS=ALTERA_VALOR_PRODUTOS'
      'QUANTIDADE=QUANTIDADE'
      'DT_ALTERACAO=DT_ALTERACAO'
      'ESTOQUE_LOCAL_ORIGEM=ESTOQUE_LOCAL_ORIGEM'
      'ESTOQUE_LOCAL_DESTINO=ESTOQUE_LOCAL_DESTINO'
      'CODEMPRESA_ORIGEM=CODEMPRESA_ORIGEM'
      'CODEMPRESA_DESTINO=CODEMPRESA_DESTINO'
      'TRANSFERENCIA_TIPO=TRANSFERENCIA_TIPO'
      'VALOR_NF_VAREJO=VALOR_NF_VAREJO'
      'PESSOA_FORNECEDOR_CODIGO=PESSOA_FORNECEDOR_CODIGO'
      'PESSOA_FORNECEDOR_TIPO=PESSOA_FORNECEDOR_TIPO'
      'PESSOA_FORNECEDOR_SEQUENCIA=PESSOA_FORNECEDOR_SEQUENCIA'
      'MODELO_DOCTO_FISCAL=MODELO_DOCTO_FISCAL'
      'TIPO=TIPO'
      'IMPORTACAO_XML=IMPORTACAO_XML'
      'PESO_BRUTO=PESO_BRUTO'
      'PESO_LIQUIDO=PESO_LIQUIDO')
    DataSet = Cadastro
    BCDToCurrency = False
    Left = 215
    Top = 412
  end
  object frxNF_Entrada_Produtos: TfrxDBDataset [34]
    UserName = 'NF_Entrada_Produtos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODPRODUTO=CODPRODUTO'
      'QUANT=QUANT'
      'CUSTO_FABR=CUSTO_FABR'
      'CUSTO_MEDIO=CUSTO_MEDIO'
      'MARGEM=MARGEM'
      'VALOR=VALOR'
      'LOCAL=LOCAL'
      'UNIDADE=UNIDADE'
      'APLICACAO=APLICACAO'
      'VOLUME=VOLUME'
      'CODPRODUTO_GRUPO=CODPRODUTO_GRUPO'
      'CODPRODUTO_MARCA=CODPRODUTO_MARCA'
      'CODCOR=CODCOR'
      'VEICULO_CHASSI=VEICULO_CHASSI'
      'VEICULO_MOTOR=VEICULO_MOTOR'
      'VEICULO_RENAVAN=VEICULO_RENAVAN'
      'VEICULO_ANO_MODELO=VEICULO_ANO_MODELO'
      'VEICULO_CILINDRADA=VEICULO_CILINDRADA'
      'VEICULO_HP=VEICULO_HP'
      'VEICULO_PLACA=VEICULO_PLACA'
      'VEICULO_COMBUSTIVEL=VEICULO_COMBUSTIVEL'
      'VEICULO_PASSAGEIROS=VEICULO_PASSAGEIROS'
      'VEICULO_KM=VEICULO_KM'
      'COR=COR'
      'EAN=EAN'
      'EXTIPI=EXTIPI'
      'CODNF_NCM=CODNF_NCM'
      'CODNF_CST=CODNF_CST'
      'VICMS=VICMS'
      'PICMS=PICMS'
      'CFOP=CFOP'
      'PRODUTO_TIPO=PRODUTO_TIPO'
      'CODPRODUTO_TIPO=CODPRODUTO_TIPO'
      'PRODUTO_ESTOQUE_LOCAL=PRODUTO_ESTOQUE_LOCAL'
      'QUANT_DEVOLVIDO=QUANT_DEVOLVIDO'
      'DT_ALTERACAO=DT_ALTERACAO'
      'COMP=COMP'
      'LARG=LARG'
      'UNIDADE_COMPRA=UNIDADE_COMPRA'
      'ESPESSURA=ESPESSURA'
      'DESCRICAO=DESCRICAO'
      'QTDADEPECA=QTDADEPECA'
      'CODFABRICA=CODFABRICA'
      'PRODUZIDO=PRODUZIDO'
      'VICMSST=VICMSST'
      'MARGEM_CUSTO=MARGEM_CUSTO'
      'VDESC=VDESC'
      'DESCRICAO_CADASTRO=DESCRICAO_CADASTRO'
      'MVA=MVA'
      'DESP_ACESS_ACRESCIMO=DESP_ACESS_ACRESCIMO'
      'CODPRODUTO_LOTE=CODPRODUTO_LOTE'
      'CODNF_ENTRADA=CODNF_ENTRADA'
      'LOTE=LOTE'
      'CODIGOEAN=CODIGOEAN'
      'PESO_LIQUIDO=PESO_LIQUIDO'
      'PESO_BRUTO=PESO_BRUTO'
      'PRODUTO_LOTE=PRODUTO_LOTE'
      'MARKUP=MARKUP'
      'MARKUP_APLICA_PRECO_FINAL=MARKUP_APLICA_PRECO_FINAL'
      'PERC_CUSTO_FIXO=PERC_CUSTO_FIXO'
      'PERC_CUSTO_VARIAVEL=PERC_CUSTO_VARIAVEL'
      'PERC_CUSTO_FINANCEIRO=PERC_CUSTO_FINANCEIRO'
      'PERC_LUCRO_DESEJADO=PERC_LUCRO_DESEJADO'
      'PESO_CALCULADO_COMPOSICAO=PESO_CALCULADO_COMPOSICAO'
      'PERC_CUSTO_COMISSAO=PERC_CUSTO_COMISSAO'
      'ATUALIZAR_CUSTO_FRETE=ATUALIZAR_CUSTO_FRETE'
      'ATUALIZAR_CUSTO_IPI=ATUALIZAR_CUSTO_IPI'
      'ATUALIZAR_CUSTO_ST=ATUALIZAR_CUSTO_ST'
      'ATUALIZAR_CUSTO_ODA=ATUALIZAR_CUSTO_ODA'
      'CUSTO_COMPOSICAO=CUSTO_COMPOSICAO'
      'CODIGOEAN_CADASTRO=CODIGOEAN_CADASTRO'
      'CUSTO_COMPOSICAO_EXTRA=CUSTO_COMPOSICAO_EXTRA'
      'CUSTO_COMPOSICAO_TOTAL=CUSTO_COMPOSICAO_TOTAL'
      'CUSTO_DIFERENCA_ENCONTRADA=CUSTO_DIFERENCA_ENCONTRADA'
      'CUSTO_EXTRA_COMPOSICAO_PERC=CUSTO_EXTRA_COMPOSICAO_PERC'
      'CUSTO_EXTRA_INICIAL_PERC=CUSTO_EXTRA_INICIAL_PERC'
      'CUSTO_EXTRA_TOTAL=CUSTO_EXTRA_TOTAL'
      'CUSTO_EXTRA_TRABALHO_PERC=CUSTO_EXTRA_TRABALHO_PERC'
      'CUSTO_EXTRA_VENDA_PERC=CUSTO_EXTRA_VENDA_PERC'
      'CUSTO_INICIAL=CUSTO_INICIAL'
      'CUSTO_INICIAL_EXTRA=CUSTO_INICIAL_EXTRA'
      'CUSTO_TRABALHO=CUSTO_TRABALHO'
      'CUSTO_TRABALHO_EXTRA=CUSTO_TRABALHO_EXTRA'
      'CUSTO_TRABALHO_TOTAL=CUSTO_TRABALHO_TOTAL'
      'CUSTO_VENDA=CUSTO_VENDA'
      'CUSTO_VENDA_EXTRA=CUSTO_VENDA_EXTRA'
      'CUSTO_VENDA_TOTAL=CUSTO_VENDA_TOTAL'
      'MARGEM_INTERNA=MARGEM_INTERNA'
      'PERC_COMPOSICAO=PERC_COMPOSICAO'
      'PERC_COMPOSICAO_INTERNA=PERC_COMPOSICAO_INTERNA'
      'PERC_INICIAL=PERC_INICIAL'
      'PERC_INICIAL_INTERNA=PERC_INICIAL_INTERNA'
      'PERC_MARGEM_CONTRIBUICAO=PERC_MARGEM_CONTRIBUICAO'
      'PERC_TRABALHO=PERC_TRABALHO'
      'PERC_TRABALHO_INTERNA=PERC_TRABALHO_INTERNA'
      'VALOR_INICIAL=VALOR_INICIAL'
      'VALOR_LUCRO=VALOR_LUCRO'
      'VALOR_TRABALHO=VALOR_TRABALHO'
      'CUSTO_BASE=CUSTO_BASE'
      'CUSTO_DIGITADO=CUSTO_DIGITADO'
      'VALOR_COMPOSICAO=VALOR_COMPOSICAO'
      'VALOR_COMPOSICAO_PECA=VALOR_COMPOSICAO_PECA'
      'VALOR_COMPOSICAO_UNIDADE_VENDA=VALOR_COMPOSICAO_UNIDADE_VENDA'
      'VALOR_TRABALHO_PECA=VALOR_TRABALHO_PECA'
      'VALOR_TRABALHO_UNIDADE_VENDA=VALOR_TRABALHO_UNIDADE_VENDA'
      'TOTAL=Total'
      'SUB_TOTAL=SUB_TOTAL'
      'DESCONTO_PRODUTO=DESCONTO_PRODUTO'
      'ACRESCIMO=ACRESCIMO'
      'IPI_VIPI=IPI_VIPI'
      'IPI_PIPI=IPI_PIPI'
      'FRETE=FRETE'
      'PERC_ACRESC_PRAZO=PERC_ACRESC_PRAZO'
      'PERC_DESC_ATACADO=PERC_DESC_ATACADO'
      'VALOR_PRAZO=VALOR_PRAZO'
      'VALOR_ATACADO=VALOR_ATACADO'
      'Perimetro=Perimetro'
      'AreaQuadrada=AreaQuadrada'
      'AreaCubica=AreaCubica'
      'QUANT_COMPRA=QUANT_COMPRA'
      'TOTAL_COMPRA=TOTAL_COMPRA'
      'PICMSST=PICMSST'
      'VSEG=VSEG'
      'PIS_VBC=PIS_VBC'
      'PIS_PPIS=PIS_PPIS'
      'PIS_VPIS=PIS_VPIS'
      'PIS_CST=PIS_CST'
      'PISST_VBC=PISST_VBC'
      'PISST_PPIS=PISST_PPIS'
      'PISST_VPIS=PISST_VPIS'
      'COFINS_VBC=COFINS_VBC'
      'COFINS_PCOFINS=COFINS_PCOFINS'
      'COFINS_VCOFINS=COFINS_VCOFINS'
      'COFINS_CST=COFINS_CST'
      'COFINSST_VBC=COFINSST_VBC'
      'COFINSST_PCOFINS=COFINSST_PCOFINS'
      'COFINSST_VCOFINS=COFINSST_VCOFINS'
      'USA_COMPRIMENTO=USA_COMPRIMENTO'
      'USA_LARGURA=USA_LARGURA'
      'USA_ESPESSURA=USA_ESPESSURA'
      'COMPRIMENTO_FIXO=COMPRIMENTO_FIXO'
      'LARGURA_FIXA=LARGURA_FIXA'
      'ESPESSURA_FIXA=ESPESSURA_FIXA'
      'ACRESCIMO_DESCONTO=ACRESCIMO_DESCONTO'
      'ESTOQUE=ESTOQUE'
      'ACRESCIMO_PRODUTO=ACRESCIMO_PRODUTO'
      'PRECO_ATUALIZADO=PRECO_ATUALIZADO'
      'IMPEDIR_ATUALIZACAO_PRECO=IMPEDIR_ATUALIZACAO_PRECO'
      'ESTOQUE_ATUALIZADO=ESTOQUE_ATUALIZADO'
      'IMPEDIR_ATUALIZACAO_ESTOQUE=IMPEDIR_ATUALIZACAO_ESTOQUE'
      'EstoqueIcone=EstoqueIcone'
      'ValorIcone=ValorIcone'
      'PESO=PESO'
      'ACRESCIMO_PRODUTO_PERC=ACRESCIMO_PRODUTO_PERC'
      'DESCONTO_PRODUTO_PERC=DESCONTO_PRODUTO_PERC'
      'CFOP_COMPRA=CFOP_COMPRA'
      'UCOM=UCOM'
      'QCOM=QCOM'
      'UTRIB=UTRIB'
      'QTRIB=QTRIB'
      'VUNTRIB=VUNTRIB'
      'VSEG_BAK=VSEG_BAK'
      'INFADPROD=INFADPROD'
      'VALOR_PRAZO=VALOR_PRAZO'
      'MARGEM_PRAZO=MARGEM_PRAZO'
      'MARGEM_ATACADO=MARGEM_ATACADO'
      'VALOR_ATACADO=VALOR_ATACADO'
      'VALOR_DOLAR=VALOR_DOLAR'
      'INDEXADOR=INDEXADOR'
      'TOTAL_DOLAR=TOTAL_DOLAR'
      'CUSTO_CENTRO_TRABALHO=CUSTO_CENTRO_TRABALHO'
      'PERC_VENDA=PERC_VENDA'
      'PERC_VENDA_INTERNA=PERC_VENDA_INTERNA'
      'VALOR_VENDA=VALOR_VENDA'
      'PESO_CALCULADO_COMPOSICAO1=PESO_CALCULADO_COMPOSICAO1')
    DataSet = NF_Entrada_Produtos
    BCDToCurrency = False
    Left = 243
    Top = 412
  end
  object frxNF_Entrada_Parcelas: TfrxDBDataset [35]
    UserName = 'NF_Entrada_Parcelas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PARCELA=PARCELA'
      'DATA=DATA'
      'VALOR=VALOR'
      'DOCUMENTO=DOCUMENTO'
      'CODNF_ENTRADA=CODNF_ENTRADA'
      'VENCTO=VENCTO'
      'CODTIPOPAGTO=CODTIPOPAGTO'
      'STATUS=STATUS'
      'TIPO=TIPO'
      'HISTORICO=HISTORICO'
      'EMISSAO=EMISSAO'
      'DATAPAGTO=DATAPAGTO'
      'JUROS=JUROS'
      'DESCONTO=DESCONTO'
      'CHEQUE_NUMERO=CHEQUE_NUMERO'
      'DT_ALTERACAO=DT_ALTERACAO'
      'CODCONTA=CODCONTA'
      'PESSOA_RESPONSAVEL_CODIGO=PESSOA_RESPONSAVEL_CODIGO'
      'PESSOA_RESPONSAVEL_TIPO=PESSOA_RESPONSAVEL_TIPO'
      'PESSOA_RESPONSAVEL_SEQUENCIA=PESSOA_RESPONSAVEL_SEQUENCIA'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'Rateio=Rateio'
      'Total=TOTAL'
      'TIPOPAGTO=TIPOPAGTO'
      'CODPLANOCONTAS=CODPLANOCONTAS')
    DataSet = NF_Entrada_Parcelas
    BCDToCurrency = False
    Left = 271
    Top = 412
  end
  object PopGridPratico: TPopupMenu [36]
    OnPopup = PopGridPraticoPopup
    Left = 271
    Top = 328
    object Abrircadastrodoproduto1: TMenuItem
      Caption = 'Abrir cadastro do produto'
      OnClick = Abrircadastrodoproduto1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object RecaregarProduto1: TMenuItem
      Caption = 'Buscar ou Recarregar Produto'
      OnClick = RecaregarProduto1Click
    end
    object CadastraLote1: TMenuItem
      Caption = 'Cadastra Lote'
      Visible = False
      OnClick = CadastraLote1Click
    end
    object CalcularImpostos1: TMenuItem
      Caption = 'Calcular Impostos'
      OnClick = CalcularImpostos1Click
    end
    object ValidarCadastro1: TMenuItem
      Caption = 'Cadastrar Regras'
      OnClick = ValidarCadastro1Click
    end
    object Motordeclculodoitem1: TMenuItem
      Caption = 'Motor de C'#225'lculo'
      OnClick = Motordeclculodoitem1Click
    end
    object VerificarprodutosAfetados1: TMenuItem
      Caption = 'Verificar produtos Afetados pelo novo pre'#231'o'
      OnClick = VerificarprodutosAfetados1Click
    end
    object EnviarparaRequisicao1: TMenuItem
      Caption = 'Enviar para Requisicao'
      OnClick = EnviarparaRequisicao1Click
    end
  end
  object MenuPlanodeContas: TPopupMenu [37]
    OnPopup = MenuPlanodeContasPopup
    Left = 299
    Top = 328
    object ReplicarPlanodeContas1: TMenuItem
      Caption = 'Replicar Dados da Parcela'
      OnClick = ReplicarPlanodeContas1Click
    end
    object Apagarparcelas1: TMenuItem
      Caption = 'Apagar parcela'
      OnClick = Apagarparcelas1Click
    end
  end
  object ActionList1: TActionList [38]
    Left = 299
    Top = 412
    object ActDesvincularProduto: TAction
      Category = 'Cadastro do Produto'
      Caption = 'Desvincular do cadastro atual'
    end
    object ActBuscarCadastroProduto: TAction
      Category = 'Cadastro do Produto'
      Caption = 'Buscar cadastro existente'
    end
  end
  object RepositorioEstilos: TcxStyleRepository [39]
    Left = 327
    Top = 412
    PixelsPerInch = 96
    object EstiloVerDetalhes: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      TextColor = clNavy
    end
    object EstiloEditDestacado: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
  object ImgListValor: TcxImageList [40]
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 24052154
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000043407BE135317CD000000090000
          0000000000000000000000000000000000000000000000000000000000000000
          00001220133149824CCC192F1A4B013004BB49C152F976EE81FF175519DC0000
          0008000000000000000000000000000000000000000000000000000000000203
          0205457548AF5FA564FD376A39FF35B93FFF5FFE6EFF68FF77FF57F064FF0D55
          10DD00000009000000000000000000000000000000000000000000000000111B
          12277BB97FFC648266FF26AD31FF4EE95DFF77EF84FF78F284FF57F566FF49E7
          55FF0A510BDD000000080000000000000000000000000000000000000000476F
          4A9B547956FF279E31FF52D75EFF88E491FF8EE596FF9FEAA5FF70E77BFF49E7
          58FF3ED64BFF0A4C0DE2000000090000000000000000000000000C130D194B7B
          4FFF5CB365FF6ED178FF9DDFA3FF98DF9FFF318336FF317935FF99E5A0FF68DB
          73FF38D848FF30C23CFF104F13F00A150B2A0000000000000000507753A07AB6
          7FFF4A8B4EFFB5DDBAFFA9DAAEFF358E3AFF8BC090FFA8DBAEFF377F3BFFA5E2
          AAFF5FD069FF27C936FF21B02EFF1E5620FF1F4121770D1C0D327BBB80FF8EC8
          93FFA9D7AEFF418D45FF419046FF84BD8AFF7EC083FF82C187FFA7D8ACFF377B
          3AFFB3E3B7FF54C45FFF14B724FF12A31FFF1C541EFF050C06194563487D7DBB
          82FF8FC894FFAAD8B0FF92C597FF7FC185FFA4D0A7FFDDEEDFFF80B883FFA8DA
          AEFF37773AFFB4DCB7FF50B259FF059E13FF0A9516FF0B3E0DDD00000000151D
          15257BB87FFA90C995FFB0E0B6FF85C28AFFF7FCF8FF95C297FFDDEEDFFF82C2
          87FFA8DAAEFF38783BFFB6D7B9FF519F59FF399940FF489350FF000000000000
          0000000000007AB67EF691CA96FFB1E0B6FFD9F3DDFFF7FCF8FFA4D0A7FF7EC0
          84FF9FD9A5FFA9DAAFFF38783CFFBAD7BDFF559E5CFF002600B4000000000000
          000000000000000000007AB780F592CB97FFB1E1B6FF85C38AFF80C185FF99D7
          A0FF98D79FFF9FD9A5FFA9DBAFFF3B783EFF2F6631FC00000000000000000000
          00000000000000000000000000007CB881F593CC98FFB1E1B7FFA3DBA9FF9BD8
          A2FF73B477FFAFDFB4FF87C38CFF64A968FF0509050E00000000000000000000
          0000000000000000000000000000000000007DB882F594CC99FFB2E2B7FFA3DC
          AAFFB0E0B6FF8CC692FF6EB173FF0609060E0000000000000000000000000000
          000000000000000000000000000000000000000000007EB983F594CD9AFFB3E2
          B7FF93CB98FF77B77CFF060A060E000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000007FBA85F596CD
          9BFF80BE85FF070A070E00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101070E0606486C0B0B96CE1313
          B5F01818BAEE17179AC50A0A415C010104050000000000000000000000000000
          00001220133149824CCC192F1A4B04041C2C070792CB0C0CCBFF1717D2FF2222
          C7E62828D3EA2F2FEDFF3131ECFF23239CB70303121E00000000000000000203
          0205457548AF5FA564FD6BAC72FF2240ADFE0505C2FF17209ACE12123A4E0A0A
          232E0A0A21291A1A5A773737EFFF3D3DFAFF222299B60101030500000000111B
          12277BB97FFCB7DEBBFF4D7D9AFF0505C6FF264DA7FF3A6E4CBF2649287A0000
          0000010106141C1CADCF2E2EEEFF3636ECFF3030E9FF0808365200000000476F
          4A9B9CCDA0FF73B475FF3C4ABAFF1D29BFFF63998AFF519B55FF77B77BFF4380
          54E01A29A1D32222E8FF1A1A9DC6191958732E2EECFF15158DBD0C130D197BBB
          80FF77B77CFF84B4A4FF4848C7FF455AC5FF9FCFAAFF77B77CFF5CA669FF6078
          BCFF1515D5FF2748A7EB29542B95121E314A2727D6EE1717B0E7507753A07FBD
          84FF97CE9CFF98C2B8FF4647C6FF4F63CBFF95CDA0FFA5D7ACFF3757ADFF0A0A
          CCFF7389C1FFACD3B3FF66B36BF8519177FF222BD1F41319AEED7BBB80FF8EC8
          93FFAFDFB5FF9ED6A7FF525CC6FF4A55D1FF699F8BFF4A64B8FF3030D8FF3F60
          AFFF60A968FFC4E7C8FFC1E4C4FF9EBEBEFF1919D2FF10168CC84563487D7DBB
          82FF8FC894FFB0E0B6FF7A9BBCFF4848D5FF3838C0FF3D3DD2FF4D66B6FFA8DA
          AEFF7AB97FFF569F5AFFBBDCC6FF465FBFFF3131D4FF0D0D405F00000000151D
          15257BB87FFA90C995FFABD9B7FF5865CBFF4747D3FF3A3CC4FFBDCBCCFF7BB8
          89FFA0D0AEFF6A9E93FF3C59B7FF3535D2FF222394C60101060B000000000000
          0000000000007AB67EF691CA96FFA3CDBBFF6B72D3FF4848D4FF4C54D2FF485C
          C7FF4F61CAFF4046D1FF3F3FD8FF4158BAFE07071B2800000000000000000000
          000000000000000000007AB780F592CB97FFABD8B7FF6D8FBAFF545DCAFF4949
          C8FF484AC8FF5663C9FF84A7C0FF7BB880FF559A59F600000000000000000000
          00000000000000000000000000007CB881F593CC98FFB1E1B7FFA0D5ACFF8BBB
          B2FF6DA098FFAFDEB2FF87C38CFF65AA69FF0509050E00000000000000000000
          0000000000000000000000000000000000007DB882F594CC99FFB2E2B7FFA3DC
          AAFFB0E0B6FF8CC692FF6EB173FF0609060E0000000000000000000000000000
          000000000000000000000000000000000000000000007EB983F594CD9AFFB3E2
          B7FF93CB98FF77B77CFF060A060E000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000007FBA85F596CD
          9BFF80BE85FF070A070E00000000000000000000000000000000}
      end>
  end
  object ImgListDetalhes: TcxImageList [41]
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 24052126
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000B000000120000000C00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000200000010071334970F276AFF0A193B970000000B000000000000
          00007B5043B8AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFBE91
          82FFC9ACA3FF5F617FFF417CB9FF70C7FFFF265198FF00000010000000000000
          0000AD735FFFFDFBF9FFFBF5F2FFF7F2EEFFF3EDE9FFEFE9E5FFECE5E1FFE6DE
          DAFF707E9FFF4C83BCFF83CFFFFF5694CEFF142B4D930000000A000000000000
          0000B07762FFFDFBFAFFF7F3F0FFE2D8D2FFA5816CFF8E5E42FF8C5D41FF7A5E
          54FF577EA6FF92D4FAFF619CD0FF727F9BFF0000000E00000002000000000000
          0000B07966FFFBF9F9FFE1D5CEFF936346FFC8A37FFFEFD7B2FFF0DAB8FFC7A6
          88FF895D43FF6891B2FF849DB9FFCCB0A7FF0000000200000000000000000000
          0000B37C69FFFAF8F7FFAD8975FFC7A07BFFF7D39CFFF5CD93FFF7D39BFFF9DD
          B2FFC7A688FF84695DFFE8E2DEFFC29888FF0000000000000000000000000000
          0000B67F6CFFF9F8F7FF98694CFFF1D4A7FFFAE5C0FFFBEACAFFF7D6A0FFF6D3
          9BFFF2DBBBFF8F5D42FFF0E9E7FFB27A66FF0000000000000000000000000000
          0000B98371FFFAF9F8FF9D6E51FFF2D4A5FFFDF6E2FFFDF3DCFFFBEACAFFF5CE
          92FFF1DAB5FF936245FFF2EDE9FFB47D6AFF0000000000000000000000000000
          0000BC8877FFFCFCFBFFB99783FFCDA77EFFF9E0B5FFFEF7E5FFFBE5C1FFF6D4
          9DFFCAA681FFAF8C77FFF5F1EEFFB6806DFF0000000000000000000000000000
          0000BF8C7AFFFDFDFCFFEDE4DFFFA87A5DFFCEA77FFFEFD2A3FFEFD2A5FFCCA7
          80FFA17356FFE4DAD4FFFAF6F3FFB98371FF0000000000000000000000000000
          0000C18F7FFFFEFEFEFFFDFCFBFFEDE4DFFFBE9C87FFAA7E62FFA97D60FFBB98
          82FFEADFD8FFFBF8F6FFFDF9F8FFBD8774FF0000000000000000000000000000
          0000C49382FFFFFEFEFFFEFEFDFFFBF6F4FFFAF5F3FFF9F3F0FFF9F3F0FFFAF2
          F0FFFAF4F0FFFDFBF9FFFDFBF9FFBF8C7BFF0000000000000000000000000000
          0000C79985FFFFFEFEFFFFFEFEFFFEFEFDFFFEFDFDFFFEFDFDFFFEFDFCFFFEFC
          FCFFFEFCFBFFFEFCFAFFFDFCFAFFC28F7FFF0000000000000000000000000000
          0000C99A89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFE
          FDFFFEFEFDFFFEFDFDFFFEFDFDFFC49382FF0000000000000000000000000000
          0000967467BDCA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A
          88FFC99987FFC79887FFC89886FF927163BD0000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001B744558745469746C65005761726E696E673B4E6F7469
          6669636174696F6E3BB6E779860000024149444154785EA58F5F48536118C64F
          C5A02E9288EE2BA8816585ABFC83DA28EBA6CB6A12CC300BA2024D27589A0CB4
          ADA4DC859995D36DD1A4CD5DA428E94636D7E98FD236D79A04DBB42E14664E73
          5B46E982A7F73BD448362FA40F7E9C87F77D7EE77C87F3EA8EFE179C475B9812
          3A6BDC0F8F9410729657ECB91F1C4E8209439A823CCA7162C9DE949F4D3975F7
          DD5D69129D57F76F1A69967E9E1E7D8C90CB00CA7E7D55665AAA2E37AC295806
          9DB5FCED7C63D0AAC6AF6F9F108F05101C5081663AB64BEABF6ECC4BC0AE6EAB
          CF29766AE588935C76A51AE5443CE287B3ED349E37E4C8586799E368C84DD0A5
          906C1FAACF9D0FB98C589A0F407EE682C062D883A9B76DA0DD9CA952B2F55F87
          1BACCB12A83CBE4D64AB3DC87B9F5409C28F49072A2B140C217F9FE886C7580E
          EA0C49D337AFFBEB71D6EA03C2D57B15923A5E23A32F8F233A66C042B01BFA96
          1B30102C477D3A7A491FF8A693A06E0D7304F759452667BEB8279B9E8B730107
          621F3B11713523EA6EC5F4700B43C8C2CCDB8E49BE15AC4B4E1673B93BA776A6
          F55CDE17F49A9588BE6F4778508159470D621F1E41A3563258A6592DC22FAAF0
          F58D1A23F74B418EBFF1C48E8D9CE57C86DE7E538688CF84195B19A6FB4A0562
          3E230E498F31584ECCBF0C5CC20C7F0BD6EB85E83A97D1C1594A768527FA5588
          B8B59877DE436CCC44FF6AC3CFD028A2213F22535E2C8CF70BBBB9572A84EDD7
          30FBB21EC15E2598CBE98AC43DE6E274A4C27276AFC04AFB8E22F1538ECE1642
          4CEC5E25E23F2E2722D6131B56097344BF0168ADF1039DB8E68C000000004945
          4E44AE426082}
      end>
  end
  object DSProdutos_MD: TDataSource [42]
    DataSet = NF_Entrada_Produtos
    Left = 159
    Top = 356
  end
  object WRCalc: TWRCalculaConfiguracoes [43]
    DSVendaOuCompra = DS
    DSProduto = DSProdutos
    DSProdutoPreco = DSNF_Entrada_Tabela_Preco
    TipoCalculo = tcCompra
    SPrTipoCalc = tssCalcCompra
    TreeList = GridTree
    SprFormula = sprMotorCalculo
    Left = 418
    Top = 259
  end
  object DSPmPrincipal: TDataSource [44]
    Left = 474
    Top = 287
  end
  object PmPrincipal: TwrProdutoMemoria [45]
    SQLProduto.Strings = (
      
        'select P.*, PT.DESCRICAO AS PRODUTO_TIPO, P.CODIGO AS CODPRODUTO' +
        ', PE.ESTOQUE as ESTOQUE_ANTERIOR, '
      '       0.0 AS QTDADEPECA,'
      '       0.0 AS QTDADEPECA_FORMULA,'
      '       0.0 AS COMP_FORMULA,'
      '       0.0 AS LARG_FORMULA,'
      '       0.0 AS ESPESSURA_FORMULA,'
      '       0.0 AS QUANT,'
      '       0.0 AS QUANT_COMPRA,'
      '       0.0 AS TOTAL,'
      '       0.0 AS CALC_QANTERIOR_ESTOQUE,'
      '       0.0 AS CALC_VANTERIOR_CUSTO,'
      '       1.0 as QUANT_DEVOLVIDO,'
      '       0.0 as Total_venda,'
      '       0.0 as MVA,'
      '       0.0 AS NF_pICMSST,'
      '       0.0 as NF_IPI_PIPI,'
      '       0.0 as NF_pFrete,'
      '       0.0 as pOUTRO,'
      '       0.0 as pDESC,'
      '       0.0 AS NF_VFRETE,'
      '       0.0 AS NF_VOLUME,'
      '       0.0 AS CALC_VCOMPRA_TOTAL,'
      '       0.0 AS TOTAL_COMPRA,'
      '       0.0 AS PRODUTO_ESTOQUE_LOCAL,'
      '       0.0 AS VDESC,'
      '       0.0 AS VOUTRO,'
      '       0.0 AS NF_VICMSST,'
      '       0.0 AS NF_IPI_VIPI,'
      '       0.0 AS CALC_VOUTRO_MANUAL,'
      '       0.0 AS CALC_VDESC_MANUAL,'
      '       0.0 AS CALC_PDESC_MANUAL,'
      '       0.0 AS CALC_VALOR_ORIGINAL,'
      '       0.0 AS NF_PIS_VBC,'
      '       0.0 AS NF_PIS_PPIS,'
      '       0.0 AS NF_PIS_VPIS,'
      '       0.0 AS NF_PISST_VBC,'
      '       0.0 AS NF_PISST_PPIS,'
      '       0.0 AS NF_PISST_VPIS,'
      '       0.0 AS NF_COFINS_VBC,'
      '       0.0 AS NF_COFINS_PCOFINS,'
      '       0.0 AS NF_COFINS_VCOFINS,'
      '       0.0 AS NF_COFINSST_VBC,'
      '       0.0 AS NF_COFINSST_PCOFINS,'
      '       0.0 AS COFINSST_VCOFINS,'
      '       0.0 AS NF_COFINSST_VCOFINS,'
      '       0.0 AS CALC_POUTRO_MANUAL,'
      '       --0.0 AS CALC_PMARGEM_CONTRIBUICAO,'
      '       0.0 AS CALC_VLUCRO,'
      '       0.0 AS CALC_PLUCRO_DESEJADO,'
      '       0.0 AS CALC_PMARKUP,'
      '       0.0 AS CALC_QPESO_BRUTO,'
      '       0.0 AS CALC_QPESO_LIQUIDO,'
      '       0.0 AS CALC_QPESO_BRUTO_RENDIMENTO,'
      '       0.0 AS CALC_QPESO_LIQUIDO_RENDIMENTO,'
      '       0.0 AS NF_PFRETE,'
      '       0.0 AS NF_PICMS,'
      '       0.0 AS NF_VICMS,'
      '       0.0 AS NF_PMVA,'
      '       0.0 AS NF_PSEG,'
      '       0.0 AS NF_VSEG,'
      '       0.0 AS VEICULO_CILINDRADA,'
      '       0.0 AS VEICULO_HP,'
      '       0.0 AS VEICULO_PASSAGEIROS,'
      '       null AS PARENT,'
      '       0.0 AS NF_II_VDESPADU,'
      '       0.0 as NF_II_VII,'
      '       '#39#39' AS NF_CODIGOEAN,'
      '       '#39#39' AS NF_DESCRICAO,'
      '       '#39#39' AS NF_CODNF_NCM,'
      '       '#39#39' AS NF_EXTIPI,'
      '       '#39#39' AS NF_CODFABRICA,'
      '       '#39#39' AS CFOP_COMPRA,'
      '       '#39#39' AS TEM_VALIDACAO,'
      '       '#39'N'#39' AS Devolucao,'
      '       0.0 AS VALIDACAO_RESTRITIVA,'
      '       0.0 AS VALIDACAO_INFORMATIVA,       '
      '       0.0 AS RENDIMENTO,'
      '       0.0 AS QTDADEPECA_SUBUNIDADE,'
      '       '#39#39' AS UN_SUBUNIDADE,'
      '       '#39#39' AS UN_SUBUNIDADE_DESCRICAO'
      ''
      'from PRODUTO P'
      
        'left join PRODUTO_ESTOQUE PE on (P.CODIGO = PE.CODPRODUTO) and (' +
        'PE.CODEMPRESA = :CODEMPRESA)'
      'left join PRODUTO_TIPO Pt on p.codproduto_tipo = PT.CODIGO'
      'where (P.CODIGO = :CODPRODUTO)   '
      'order by P.ORDEM desc')
    SQLComposicao.Strings = (
      'select P.*, PC.*'
      'from PRODUTO P'
      'left join PRODUTO_COMPOSICAO PC on (PC.CODPRODUTO = P.CODIGO)'
      'where (PC.CODPRODUTO_COMPOSICAO = :CODPRODUTO)'
      'order by PC.ORDEM')
    SQLTabelaPreco.Strings = (
      'select PT.DESCRICAO, PT.ATIVO, PTP.*'
      'from PRODUTO_TABELA_PRECO PTP'
      'left join PRODUTO_TABELA PT on PT.CODIGO = PTP.CODPRODUTO_TABELA'
      'where PTP.CODPRODUTO = :CODPRODUTO')
    SQLProdEtapas.Strings = (
      'select PE.*, CT.DESCRICAO as EQUIPE'
      'from PRODUTO_ETAPA PE'
      
        'left join CENTRO_TRABALHO CT on CT.CODIGO = PE.CODCENTRO_TRABALH' +
        'O'
      'where PE.CODPRODUTO = :CODPRODUTO'
      'order by PE.ORDEM asc')
    SQLProdPreRequisito.Strings = (
      
        'select PPR.*, CT1.DESCRICAO as ETAPA, CT2.DESCRICAO as PREREQUIS' +
        'ITO,'
      '                     PE1.ORDEM'
      '                    from PRODUTO_PREREQUISITO PPR'
      
        '                    left join PRODUTO_ETAPA PE1 on PE1.CODIGO = ' +
        'PPR.CODPRODUTO_ETAPA'
      
        '                    left join PRODUTO_ETAPA PE2 on PE2.CODIGO = ' +
        'PPR.CODPRODUTO_ETAPA_PREREQUISITO'
      
        '                    left join CENTRO_TRABALHO CT1 on CT1.CODIGO ' +
        '= PE1.CODCENTRO_TRABALHO'
      
        '                    left join CENTRO_TRABALHO CT2 on CT2.CODIGO ' +
        '= PE2.CODCENTRO_TRABALHO'
      '                    where PPR.CODPRODUTO = :CODPRODUTO'
      '                    order by PE1.ORDEM asc')
    SQLProdBaixaAutomatica.Strings = (
      'select PBA.*, PE.ORDEM, PC.DESCRICAO, CT.DESCRICAO as EQUIPE'
      'from PRODUTO_BAIXA_AUTOMATICA PBA'
      'left join PRODUTO_ETAPA PE on PE.CODIGO = PBA.CODPRODUTO_ETAPA'
      
        'left join CENTRO_TRABALHO CT on CT.CODIGO = PE.CODCENTRO_TRABALH' +
        'O'
      
        'left join PRODUTO_COMPOSICAO PC on PC.CODIGO = PBA.CODPRODUTO_CO' +
        'MPOSICAO'
      'where PBA.CODPRODUTO = :CODPRODUTO')
    Connection = DMBanco.Banco
    DataSource = DSPmPrincipal
    TransacaoFD = TransaFD
    PermitirProdutoNaoCadastrado = True
    Left = 446
    Top = 287
  end
  object WRCalcMemoria: TWRCalculaConfiguracoes [46]
    DSVendaOuCompra = DS
    TipoCalculo = tcCompra
    SPrTipoCalc = tssCalcCompra
    ProdutoMemoriaConfiguracao = PmPrincipal
    TreeListEmMemoria = True
    SprFormula = SprMemoria
    Left = 418
    Top = 287
  end
  object FcPrincipal: TWRFormataCamposDataSets [47]
    OnCarregaDataSets = FcPrincipalCarregaDataSets
    Left = 446
    Top = 259
  end
  object PopupImpressao: TPopupMenu [48]
    Left = 327
    Top = 328
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
    object ImprimircFornecedor1: TMenuItem
      Caption = 'Imprimir c/ Fornecedor'
      OnClick = ImprimircFornecedor1Click
    end
    object ImprimirsemValores1: TMenuItem
      Caption = 'Imprimir sem Valores'
      OnClick = ImprimirsemValores1Click
    end
    object ImprimirValorVarejo1: TMenuItem
      Caption = 'Imprimir Valor Varejo'
      OnClick = ImprimirValorVarejo1Click
    end
    object ImprimirComValordeVenda1: TMenuItem
      Caption = 'Imprimir Com Valor de Venda'
      OnClick = ImprimirComValordeVenda1Click
    end
  end
  object PopupImportaNFe: TPopupMenu [49]
    Left = 355
    Top = 328
    object ImportarXML1: TMenuItem
      Caption = 'Importar XML'
      OnClick = ImportarXML1Click
    end
    object ConsultaSEFAZ1: TMenuItem
      Caption = 'Consulta SEFAZ'
      OnClick = ConsultaSEFAZ1Click
    end
    object ConsultaXMLTerceiros1: TMenuItem
      Caption = 'Consulta XML Terceiros'
      OnClick = ConsultaXMLTerceiros1Click
    end
  end
  object NF_Entrada_Produtos: TFDQuery [50]
    AfterOpen = NF_Entrada_ProdutosAfterOpen
    BeforeClose = NF_Entrada_ProdutosBeforeClose
    AfterInsert = NF_Entrada_ProdutosAfterInsert
    BeforeEdit = NF_Entrada_ProdutosBeforeEdit
    BeforePost = NF_Entrada_ProdutosBeforePost
    BeforeDelete = NF_Entrada_ProdutosBeforeDelete
    OnCalcFields = NF_Entrada_ProdutosCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODNF_ENTRADA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select E.*'
      '       ,P.TEM_LOTE as PRODUTO_LOTE, C.DESCRICAO as COR,'
      
        '       P.DESCRICAO as DESCRICAO_CADASTRO, P.CODIGOEAN as CODIGOE' +
        'AN_CADASTRO,  '
      '       P.DT_ALTERACAO as DT_ALTERACAO_CADASTRO_ATUAL'
      'from NF_ENTRADA_PRODUTOS E'
      'left join COR C on (E.CODCOR = C.CODIGO)'
      'left join PRODUTO P on (P.CODIGO = E.CODPRODUTO)'
      'where (E.CODNF_ENTRADA = :CODIGO)   '
      'ORDER BY E.ORDEM desc')
    Left = 103
    Top = 356
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = '5-1'
      end>
    object NF_Entrada_ProdutosTotal_Venda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Venda'
      Calculated = True
    end
    object NF_Entrada_ProdutosQTDADEPECA_RENDIMENTO: TFloatField
      FieldName = 'QTDADEPECA_RENDIMENTO'
      Origin = 'QTDADEPECA_RENDIMENTO'
      OnChange = NF_Entrada_ProdutosQTDADEPECA_RENDIMENTOChange
    end
    object NF_Entrada_ProdutosNF_UNIDADE: TStringField
      FieldName = 'NF_UNIDADE'
    end
    object NF_Entrada_ProdutosQTDADEPECA_SUBUNIDADE: TFloatField
      FieldName = 'QTDADEPECA_SUBUNIDADE'
      OnChange = NF_Entrada_ProdutosQTDADEPECA_SUBUNIDADEChange
    end
  end
  object NF_Entrada_Parcelas: TFDQuery [51]
    BeforePost = NF_Entrada_ParcelasBeforePost
    BeforeDelete = NF_Entrada_ParcelasBeforeDelete
    OnCalcFields = NF_Entrada_ParcelasCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODNF_ENTRADA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT n.*, P.DESCRICAO AS PLANOCONTAS'
      'FROM NF_ENTRADA_PARCELAS N'
      'LEFT JOIN PLANOCONTAS P ON P.CODIGO = N.CODPLANOCONTAS'
      'WHERE N.CODNF_ENTRADA= :Codigo')
    Left = 103
    Top = 384
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = '5-1'
      end>
    object NF_Entrada_ParcelasRateio: TStringField
      FieldKind = fkCalculated
      FieldName = 'Rateio'
      Calculated = True
    end
    object NF_Entrada_ParcelasTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object NF_Entrada_Produtos_Afetados: TFDQuery [52]
    AfterInsert = NF_Entrada_Produtos_AfetadosAfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSProdutos_MD
    MasterFields = 'CODIGO;CODNF_ENTRADA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select NPA.*, P.DESCRICAO'
      'from NF_ENTRADA_PRODUTOS_AFETADOS NPA'
      'left join PRODUTO P on (P.CODIGO = NPA.CODPRODUTO)'
      'where (NPA.CODNF_ENTRADA_PRODUTOS = :CODIGO)'
      '          and (NPA.CODNF_ENTRADA = :CODNF_ENTRADA)')
    Left = 103
    Top = 440
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODNF_ENTRADA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object Consulta_Produto: TFDQuery [53]
    Connection = DMBanco.Banco
    Transaction = TransaFD
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'SELECT P.*, E.CODEMPRESA, E.ESTOQUE AS ESTOQUE_P, E.CODPRODUTO F' +
        'ROM PRODUTO P'
      
        'LEFT JOIN PRODUTO_ESTOQUE E ON (P.CODIGO=E.CODPRODUTO)AND (E.COD' +
        'EMPRESA= :Emp)'
      ' '
      'ORDER BY P.DESCRICAO')
    Left = 159
    Top = 384
    ParamData = <
      item
        Name = 'EMP'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object Produto_Markup: TFDQuery [54]
    Connection = DMBanco.Banco
    Transaction = TransaFD
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM Produto_Markup'
      'WHERE ATIVO = '#39'S'#39
      'ORDER BY CODIGO DESC')
    Left = 243
    Top = 356
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    Tabela = 'NF_ENTRADA'
    Modulo = 'COMPRA'
    Left = 299
    Top = 356
  end
  inherited Fr3Cadastro: TfrxDBDataset
    Left = 187
    Top = 356
  end
  inherited Historico_SLA: TFDQuery
    Left = 444
    Top = 228
  end
  object NF_Entrada_Tabela_Preco: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSProdutos
    MasterFields = 'CODNF_ENTRADA;CODIGO'
    DetailFields = 'CODNF_ENTRADA;CODNF_ENTRADA_PRODUTOS'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select T.*, P.DESCRICAO'
      'from NF_ENTRADA_TABELA_PRECO T'
      'left join PRODUTO_TABELA P on (P.CODIGO = T.CODPRODUTO_TABELA)'
      'where (T.CODNF_ENTRADA = :CODNF_ENTRADA)'
      '      and (T.CODNF_ENTRADA_PRODUTOS = :CODIGO)')
    Left = 103
    Top = 468
    ParamData = <
      item
        Name = 'CODNF_ENTRADA'
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object DSNF_Entrada_Tabela_Preco: TDataSource
    DataSet = NF_Entrada_Tabela_Preco
    Left = 131
    Top = 467
  end
  object Configuracao_Componente_Produto: TFDQuery
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    SQL.Strings = (
      'Select C.* From CONFIGURACAO_COMPONENTE C'
      
        'left join CONFIGURACAO_FORM CF ON CF.CODIGO = C.CODCONFIGURACAO_' +
        'FORM'
      'WHERE (CF.DESCRICAO = '#39'TFrmProduto'#39')AND(C.ATIVO = '#39'S'#39')')
    Left = 671
    Top = 328
  end
  object Despesa_Financeira: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODNF_ENTRADA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select NED.CODNF_ENTRADA, NED.CODFINANCEIRO, NED.CODUSUARIO, NED' +
        '.OBSERVACAO, NED.TOTAL,'
      
        '       NED.DT_ALTERACAO, F.RAZAOSOCIAL, F.TIPO, U.USUARIO, F.VAL' +
        'OR, F.DESCONTO, F.JUROS,'
      '       sum(F.VALOR - F.DESCONTO + F.JUROS) as TOTAL_FINANCEIRO'
      'from NF_ENTRADA_DESPESA NED'
      'left join FINANCEIRO F on F.CODIGO = NED.CODFINANCEIRO'
      'left join USUARIO U on U.CODIGO = NED.CODUSUARIO'
      'where NED.CODNF_ENTRADA = :CODIGO'
      'group by 1, 2, 3, 4, 5, 6, 7, 8, 9  ')
    Left = 103
    Top = 495
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object DSDespesa_Financeira: TDataSource
    DataSet = Despesa_Financeira
    Left = 131
    Top = 495
  end
  object NF_Entrada_Vinculos: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'codnf_entrada_vinculada;codnf_entrada_principal'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'SELECT distinct NFV.codigo as CodVinculo, NFE.codigo, NFV.tipo_v' +
        'inculo, NFE.tipo, NFE.nun_nf, NFE.dt_nota, P.razaosocial, NFE.nf' +
        '_chave, NFE.total, NFV.PORCENTAGEM_RATEIO, NFV.CODNF_ENTRADA_VIN' +
        'CULADA, NFV.CODNF_ENTRADA_PRINCIPAL FROM NF_ENTRADA_VINCULOS NFV'
      
        'LEFT JOIN NF_ENTRADA NFE ON NFE.codigo = NFV.codnf_entrada_princ' +
        'ipal'
      'LEFT JOIN PESSOAS P ON P.codigo = NFE.pessoa_responsavel_codigo'
      'WHERE NFV.codnf_entrada_vinculada = :Codigo'
      ''
      'union'
      ''
      
        'select distinct NFV.codigo as CodVinculo, NFE.codigo, NFV.tipo_v' +
        'inculo, NFE.tipo, NFE.nun_nf, NFE.data, P.razaosocial, NFE.nf_ch' +
        'ave, NFE.total, NFV.PORCENTAGEM_RATEIO, NFV.CODNF_ENTRADA_VINCUL' +
        'ADA, NFV.CODNF_ENTRADA_PRINCIPAL FROM NF_ENTRADA_VINCULOS NFV'
      
        'LEFT JOIN NF_ENTRADA NFE ON NFE.codigo = NFV.codnf_entrada_vincu' +
        'lada'
      'LEFT JOIN PESSOAS P ON P.codigo = NFE.pessoa_responsavel_codigo'
      'where NFV.codnf_entrada_principal = :Codigo')
    Left = 568
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
  end
  object DSNF_Entrada_Vinculos: TDataSource
    DataSet = NF_Entrada_Vinculos
    Left = 596
    Top = 328
  end
  object FDQuery1: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select CODIGO, FORMULA as DESCRICAO, SUBUNIDADE'
      '                           from UNIDADE_SUBUNIDADE')
    Left = 752
    Top = 328
  end
end
