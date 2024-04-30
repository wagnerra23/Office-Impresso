inherited FrmOImpresso_Configuracao_Frame: TFrmOImpresso_Configuracao_Frame
  Width = 972
  Height = 627
  ExplicitWidth = 972
  ExplicitHeight = 627
  inherited PnlHistorico_SLA: TPanel
    TabOrder = 5
  end
  inherited MainLayout: TdxLayoutControl
    Left = 233
    Width = 739
    Height = 560
    ExplicitLeft = 233
    ExplicitWidth = 739
    ExplicitHeight = 560
    inherited edtCodigo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      TabOrder = 18
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 10000
      Top = 10000
      TabOrder = 23
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Properties.CharCase = ecNormal
      TabOrder = 6
      Visible = False
      OnExit = edtDescricaoExit
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 406
      Width = 406
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 24
    end
    inherited PnlFrameHistorico: TPanel
      Width = 713
      Height = 466
      TabOrder = 17
      ExplicitWidth = 713
      ExplicitHeight = 466
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 10000
      Top = 10000
      TabOrder = 22
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    object cxLabel9: TcxLabel [6]
      Left = 460
      Top = 7
      Caption = 'Credencial de Token v'#225'lida at'#233':'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clGrayText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 16
    end
    object lblDtExpiracaoToken: TcxDBLabel [7]
      Left = 616
      Top = 7
      AutoSize = True
      DataBinding.DataField = 'TOKEN_DT_EXPIRACAO'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = cl3DDkShadow
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxRichEdit1: TcxRichEdit [8]
      Left = 10000
      Top = 10000
      Properties.AutoURLDetect = True
      Properties.StreamModes = [resmPlainRtf]
      Lines.Strings = (
        'N'#227'o atualize ou saia da p'#225'gina durante a sincroniza'#231#227'o'
        
          'O fuso hor'#225'rio do PDV deve ser igual ao fuso hor'#225'rio do aplicati' +
          'vo Woocommerce'
        
          'Obtenha os detalhes da API WooCommerce em'#160'WooCommerce -> Configu' +
          'ra'#231#245'es -> Avan'#231'ado -> API REST'#160'. '
        
          'Insira a descri'#231#227'o, selecione Usu'#225'rio e forne'#231'a permiss'#227'o de'#160'Lei' +
          'tura/Grava'#231#227'o'#160'.'#160'HYPERLINK '
        
          '"https://docs.woocommerce.com/document/woocommerce-rest-api/#sec' +
          'tion-3"Clique aqui'#160'para mais '
        'informa'#231#245'es'
        
          'Altere a op'#231#227'o de permalinks para'#160'"Post Name"'#160'na op'#231#227'o de permal' +
          'ink do WordPress.'
        'If still doesn'#39't work try to reset the permalink'
        
          'To'#160'Auto Sync'#160'categories, products and orders you must setup a cr' +
          'on job with this command:'
        ''
        
          '* * * * * /opt/alt/php73/usr/bin/lsphp /home/u906587222/domains/' +
          'oimpresso.com/public_html/artisan schedule:run >> '
        '/dev/null 2>&1'
        
          'Set it in cron jobs tab in cpanel or directadmin or similar pane' +
          'l.'
        ''
        'Or edit crontab if using cloud/dedicated hosting.'
        ''
        'Or contact hosting for help with cron job settings.')
      Style.Edges = []
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Height = 405
      Width = 713
    end
    object LbTitulo: TcxLabel [9]
      Left = 0
      Top = 7
      Caption = 'Instru'#231#245'es'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 6316128
      Style.IsFontAssigned = True
      Transparent = True
    end
    object edtLogin: TcxDBTextEdit [10]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'LOGIN'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 190
    end
    object edtSenha: TcxDBTextEdit [11]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'SENHA'
      DataBinding.DataSource = DS
      Properties.EchoMode = eemPassword
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Height = 21
      Width = 215
    end
    object cxGrid1: TcxGrid [12]
      Left = 10000
      Top = 10000
      Width = 713
      Height = 297
      TabOrder = 10
      Visible = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DS_CONECTAR
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'id'
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'username'
          Width = 312
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btnWebService: TcxButton [13]
      Left = 10000
      Top = 10000
      Width = 164
      Height = 77
      Hint = 'Selecionar Certificado Digital'
      Caption = 'Conectar API'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F80000000467414D410000B18F0BFC61050000055D49444154484B8D566B6C14
        55149E52DAA2066AB73BAFB658A43C5BA444430256C0880F428322763174DBB9
        33DBA53C4AD1DDCE736766A7B5C4F80BE22F83A42AA9AF901090408C41E51128
        F3DA5D6A9A688C624C8C090946138226228CE7D66C59BB6D7593934EA777CF77
        CEF79DF3DD9610337CC62244F91FE5E1EAF28A60DEED3BA55577835955416950
        5A4694DCBC7D27B8511ACCBA393BB8FB4BF3FBD77F2F218860A65C457F73A3D5
        4BFD4E26E2F1D42EAF8B6DF77866B3DB493DED206AA317639FF504A6CD4554B7
        C7932887C8966311A2F47F019CDB40CCF679F239179192CFB3EB46B8BADA1F50
        FD1C280F8ABCF7F1BB89B2ACC0904E3BB90A40774301BB2EB631E48C20FE0E36
        EC21BA0B57A5AAD64245319AA70A59369A2CCB9A57980CBEF7A48F68F50A47AD
        9C122480169D4E6AA71BA39E1FEA6D2365C5389F3206AE99E903D74CEB5EA4E1
        593707B200CC899AD9924F86297210B9CAE768CD8E87EA8A4030C77E8C8D8E24
        EAEE932DAB0E006EA5F481EF757DF028243CA2EB10F82704BC3F28CAFA4EDD18
        B46539B5269F2C088812D06395CB53293B1ABAD7E1E50E7A852DD072FE6052D7
        E7CB8A7E13AA3C0C548480AE4592642CC6819F93492BDCD7A7AF37CCD702DD18
        F85A4E99AD91486442648F63DA9C28BD1DEB499C43C41C0755476D444D543201
        A09A6F03DFCB01EC8424E92725593F298AA913A262F000B20CBAF94637FA7F52
        D4F4790C9E2FD0E56BE6FB1CF54A26565D43402B758E40EE71F692CCE40E542D
        7D44D3345AD28CAD90F8251C00B84D96F5C715C55AA049E6465154D78A8AF9A2
        2469EB7A7BDFACC039C6ACC6721FB1511F85D6106EAC6A8523D0DBFDEEC7CA8A
        01FA8FE02982A4AE24A57CE8603C80FF8C28A5B2B29A3E8D8506C04F80AE514C
        5F3E8787D816109D2760919EB161710A55CF53041DBC0B5CD78390FB4451EB11
        45BD073F43ECC721A9E9CE64525D02F49D062D46455D6F9800E0C8068FA7F711
        78237D817D622A004D33DF511246B3A41AE7FA14E3735136BF90E4D40551D12F
        E250D5F43138D302FC9F9A0C70A58BA27D81EE21323CFDB25F2030062AE8E0A8
        954884725CA8362B84376405B2F96A07FD4061318AA2540240510778697318C0
        E3D917F0164ED581ACF50F7D145FBD642C461FF710F565065167F02261EBC89F
        9F0E60048A82E2F71136AA5D6323BAB5D06BF21DC85A7AE88250FF6A36C61ECF
        717493C385D77B88B1A1A847FF1380A71E7179662FE181181981160A370F0348
        B0682959FD6044A8FD18120E6073C367C0411D4F6077E0ADC5205375808B7579
        7A0B30D34A8C74D5853C8E8ABB02B570F2988A5AFF5B97E28BD765107D152642
        8138040B74E62B10307F5692A4B99345CEA1CA0781D2DD57BA98E5446011B31C
        C46CCAF0CCB622ABD0CC0F0745B1C18FD51C1E8B33B7B23C75FD6C57E326AD57
        23C142C238C66D04A62BA5F74F8CA9DD4136637AECE8A27FFCE833980CAF934A
        BAD19AA5F8F71E49AA5154E357D8833FFB64EBE74FE32B0FE6783AC8F2E1EF74
        A04DD1AC1B8A9286306FA8AAF19BA29A7FC19866C0181FC6340223860BFEF62F
        47F53BD987E0E2E8CB217A0154560E5B6A816B0E8B6AFFD0F9F8D2D74763F4ED
        2C4FFE38A824553D7D60D83407C703FC6818AA1F969474E2BD5DADB5F896CB00
        23989922CBCEF2CC6A404F5C6E67EABBBBADFB13092BA4286F54C2FBCDB9182D
        810603A7BA3784F1FBC9717CF75A6A5C4B8EE928B49D221030A965F866B23BE8
        A7C0C6A999EE5A3C2DE3930574E021C05A8E451ACB8B924E7E81D7DCE1D97687
        23F7C0966FB56183B1F5E2649762D5732FC25D0C7A2C76F0DDCDC188032DB938
        DD145856312DD3A17DDBBBA8E2728CA91F81FF24C0AFF660EAC075F7E3EDCC20
        B6D7051B80E72D7694693C1BA9AA9C2ECFDFD9B7CD1B010C744E000000004945
        4E44AE426082}
      TabOrder = 9
      Visible = False
      OnClick = btnWebServiceClick
    end
    object cbLookupClientes: TcxDBLookupComboBox [14]
      Left = 76
      Top = 140
      DataBinding.DataField = 'PESSOA_CLIENTE_TIPO'
      DataBinding.DataSource = DS
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 12
      Width = 145
    end
    object cbLookupFornecedor: TcxDBLookupComboBox [15]
      Left = 283
      Top = 140
      DataBinding.DataField = 'PESSOA_FORNECEDOR_TIPO'
      DataBinding.DataSource = DS
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 13
      Width = 145
    end
    object cbLookupTransportadora: TcxDBLookupComboBox [16]
      Left = 510
      Top = 140
      DataBinding.DataField = 'PESSOA_TRANSPORTADORA_TIPO'
      DataBinding.DataSource = DS
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 14
      Width = 145
    end
    object cxLabel7: TcxLabel [17]
      Left = 37
      Top = 117
      AutoSize = False
      Caption = 
        'Selecione os Tipos padr'#227'o para cada tipo de Contato que ser'#227'o im' +
        'portados na sincroniza'#231#227'o.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 17
      Width = 623
    end
    object cxPrioridadeSincronizacao: TcxDBComboBox [18]
      Left = 37
      Top = 232
      DataBinding.DataField = 'PRIORIDADE_SINCRONIZACAO'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'Sistema Local'
        'Sistema Online')
      Properties.OnEditValueChanged = cxPrioridadeSincronizacaoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 16
      Width = 623
    end
    object lbConectado: TcxLabel [19]
      Left = 460
      Top = 25
      Caption = 'Conec'#231#227'o com servidor:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clGrayText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 34
    end
    object imgConectda: TcxImage [20]
      Left = 580
      Top = 25
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
        0000001008060000001FF3FF6100000015744558745469746C6500436865636B
        3B4D61726B3B5469636B0B00C7240000026B49444154785E95924D48156B18C7
        7F338D7A94B436816090828B8B94919BBE886304C5599CEA9A14145177211246
        AB3641F6B16861044610B40823C842FB2410B4ACB06BDDD55510823072532267
        A19E93E76BE6FDCAF332391044F4303CFF7786797EFFE77978BD9B2FF6BE715D
        A7955F8589040CC63818345A99B13389D13D5EA9B87DDB05FE341EFC7B310EB8
        9E5286824A912ABC8FDCA2F4F3BB9575952D48A9019C6580466B89D63FAAED4F
        51B11558585CA27A75259EE7A2748092060B2891941168AD4213EB132930323A
        C1FF935FA85B5FC3F12371A4F6114202E009A12C512AB5E2684AC931F67C7F70
        8CB565BBB8717690AEAB5B4867965853E12382B003DF170855442AC9CC4C8AFE
        C7236C6DD9C4EE783323AF26A8ADDEC7A9F66EAEF49DA03D99205659812F0A14
        8A3E165022E5FD1CD97C9EFE872FE9E9FA8F47AF6ED1737D809D1B4FD2D17681
        7BC397A9AD536C68A822574C53EE6411225C621048842C10C880B644923BCFBA
        39DF7997C9E9C3FC55BF994CEE33E3538374FC93643E9BB2E355951510221C41
        488D6F013E750D352C6632DC7E728ED3477BC175B874AD93FD895616B2B380C6
        18F0450E1128003C19683B9354826F6A9EA6E675BC1B9FE2E9EB5E1AEB9B7063
        1962D5057C195877005FE6A37B2084A628F30825D00616E51CDB7734F27CA88F
        BEE14F1C3BF437393F83C158773025C368075228029127500227BC44F3B9AF1C
        4CB652597E80B9F4478A42027A05501405A20EA4B11DC4BC1AB02E1A6D0CE9FC
        1C0BB95930066F5585FD8E016DECCE501680F18A3931363CF4210E267C88344C
        B6D605B4E5E1601081790B486FA0673A017880CBEFC309D50002F0BF03C5148A
        5699E7E19C0000000049454E44AE426082}
      Style.HotTrack = False
      TabOrder = 4
      Height = 18
      Width = 42
    end
    object btnResetarPessoas: TcxButton [21]
      Left = 37
      Top = 192
      Width = 623
      Height = 25
      Caption = 'Resetar vinculoscom o OIMPRESSO'
      TabOrder = 15
      OnClick = btnResetarPessoasClick
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      ItemIndex = 1
      LayoutDirection = ldVertical
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      Parent = nil
      Index = -1
    end
    inherited GrupoMain: TdxLayoutGroup
      CaptionOptions.Text = 'Instru'#231#227'o'
      ItemIndex = 2
      LayoutDirection = ldTabbed
      Index = 2
    end
    inherited LiedtCodigo: TdxLayoutItem
      Parent = nil
      Index = -1
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 1
    end
    inherited LiedtDescricao: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'URL do aplicativo'
      Index = 0
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = GrupoMain
      Visible = True
      Index = 5
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 0
    end
    inherited liSeparadorFrameBase: TdxLayoutSeparatorItem
      Parent = MainLayoutGroup_Root
    end
    object GrupoConfiguracaoAPI: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'API'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoConfiguracaoAPI
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Configura'#231#245'es da API'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Login'
      CaptionOptions.Layout = clTop
      Control = edtLogin
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 190
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Senha'
      CaptionOptions.Layout = clTop
      Control = edtSenha
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 190
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      Offsets.Left = 10
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnWebService
      ControlOptions.OriginalHeight = 45
      ControlOptions.OriginalWidth = 164
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = GrupoConfiguracaoAPI
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = cxGrid1
      ControlOptions.OriginalHeight = 297
      ControlOptions.OriginalWidth = 945
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object TabConfigProdutos: TdxLayoutGroup
      Parent = GrupoProduto
      CaptionOptions.Text = 'Produtos'
      Index = 0
    end
    object TabConfigPessoas: TdxLayoutGroup
      Parent = GrupoContato
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Pessoas'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = TabConfigPessoas
      CaptionOptions.Text = 'Tipos de Contato'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup6
      Padding.Bottom = 5
      Padding.AssignedValues = [lpavBottom]
      CaptionOptions.Text = 'cxLabel7'
      CaptionOptions.Visible = False
      Control = cxLabel7
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Group'
      Offsets.Left = 5
      Offsets.Right = 5
      LayoutDirection = ldHorizontal
      Padding.AssignedValues = [lpavLeft, lpavRight]
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      Offsets.Right = 5
      CaptionOptions.Text = 'Cliente'
      Control = cbLookupClientes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      Offsets.Right = 5
      CaptionOptions.Text = 'Fornecedor'
      Control = cbLookupFornecedor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      CaptionOptions.Text = 'Transportadora'
      Control = cbLookupTransportadora
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = TabConfigPessoas
      CaptionOptions.Text = 'Configura'#231#227'o de Sincroniza'#231#227'o'
      Index = 1
    end
    object dxLayoutItem44: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Ao sincronizar, voc'#234' deseja manter qual?'
      CaptionOptions.Layout = clTop
      Control = cxPrioridadeSincronizacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = Grupo_Validade_Token
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = cxLabel9
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = Grupo_Validade_Token
      CaptionOptions.Visible = False
      Control = lblDtExpiracaoToken
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object Grupo_Validade_Token: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoInstrucoes: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Instru'#231#227'o'
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = GrupoInstrucoes
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxRichEdit1'
      CaptionOptions.Visible = False
      Control = cxRichEdit1
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liTitulo: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = LbTitulo
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object GrupoVenda: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Venda'
      Index = 4
    end
    object GrupoProduto: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Produto'
      Index = 3
    end
    object GrupoContato: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Contato'
      Index = 2
    end
    object GrupoProducao: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Produ'#231#227'o'
      Index = 6
    end
    object GrupoFinanceiro: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Financeiro'
      Index = 7
    end
    object GrupoEstoque: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Estoque'
      Index = 8
    end
    object GrupoCompra: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Compra'
      Index = 9
    end
    object GrupoRH: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'RH'
      Index = 10
    end
    object GrupoCRM: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'CRM'
      Index = 11
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = MainLayoutGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = lbConectado
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liimgConectda: TdxLayoutItem
      Parent = dxLayoutGroup10
      Visible = False
      CaptionOptions.Text = 'cxImage1'
      CaptionOptions.Visible = False
      Control = imgConectda
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 42
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnResetarPessoas
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 607
    Width = 972
    Visible = False
    ExplicitTop = 607
    ExplicitWidth = 972
  end
  object tcMenu: TdxTileControl [4]
    Left = 0
    Top = 47
    Width = 233
    Height = 560
    Align = alLeft
    OptionsBehavior.ItemMoving = False
    OptionsBehavior.ScrollMode = smScrollButtons
    OptionsView.GroupBlockMaxColumnCount = 1
    OptionsView.GroupLayout = glVertical
    OptionsView.GroupMaxRowCount = 1000
    OptionsView.IndentHorz = 0
    OptionsView.IndentVert = 0
    OptionsView.ItemHeight = 45
    OptionsView.ItemIndent = 0
    OptionsView.ItemWidth = 115
    Style.FocusedColor = 11141290
    TabOrder = 4
    Title.IndentHorz = 0
    Title.IndentVert = 0
    object dxTileControl1Group1: TdxTileControlGroup
      Index = 0
    end
    object tcmProduto: TdxTileControlItem
      Glyph.Align = oaMiddleLeft
      Glyph.ImageIndex = 17
      GroupIndex = 0
      IndexInGroup = 3
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = ANSI_CHARSET
      Text1.Font.Color = clWhite
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Produto'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmInstrucoesClick
    end
    object tcmContato: TdxTileControlItem
      Glyph.Align = oaMiddleLeft
      Glyph.ImageIndex = 15
      GroupIndex = 0
      IndexInGroup = 2
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Contato'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmInstrucoesClick
    end
    object tcmProducao: TdxTileControlItem
      Glyph.Align = oaMiddleLeft
      Glyph.ImageIndex = 16
      GroupIndex = 0
      IndexInGroup = 5
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Produ'#231#227'o'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmInstrucoesClick
    end
    object tcmVenda: TdxTileControlItem
      Glyph.Align = oaMiddleLeft
      Glyph.ImageIndex = 0
      GroupIndex = 0
      IndexInGroup = 4
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Venda'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmInstrucoesClick
    end
    object tcmCompra: TdxTileControlItem
      Glyph.Align = oaMiddleLeft
      Glyph.ImageIndex = 4
      GroupIndex = 0
      IndexInGroup = 10
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Compras'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmInstrucoesClick
    end
    object tcmFinanceiro: TdxTileControlItem
      Glyph.Align = oaMiddleLeft
      Glyph.ImageIndex = 11
      GroupIndex = 0
      IndexInGroup = 6
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Financeiro'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmInstrucoesClick
    end
    object tcmCRM: TdxTileControlItem
      Glyph.Align = oaMiddleLeft
      Glyph.ImageIndex = 7
      GroupIndex = 0
      IndexInGroup = 8
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'CRM'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmInstrucoesClick
    end
    object tcmEstoque: TdxTileControlItem
      Glyph.Align = oaMiddleLeft
      Glyph.ImageIndex = 10
      GroupIndex = 0
      IndexInGroup = 9
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16447995
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Estoque'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmInstrucoesClick
    end
    object tcmPrincipal: TdxTileControlItem
      Glyph.Align = oaMiddleLeft
      Glyph.ImageIndex = 22
      GroupIndex = 0
      IndexInGroup = 1
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Configura'#231#245'es da API'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmInstrucoesClick
    end
    object tcmRH: TdxTileControlItem
      Glyph.Align = oaMiddleLeft
      Glyph.ImageIndex = 19
      GroupIndex = 0
      IndexInGroup = 7
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -13
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'RH'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmInstrucoesClick
    end
    object t: TdxTileControlItem
      GroupIndex = -1
      IndexInGroup = -1
      Text1.AssignedValues = []
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
    end
    object tcmProdutoComposto: TdxTileControlItem
      Tag = 2
      GroupIndex = 0
      IndexInGroup = 11
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Produto Composto'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
    object tcmProdutoPresonalizados: TdxTileControlItem
      Tag = 3
      GroupIndex = 0
      IndexInGroup = 12
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Produto Personalizado'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
    object tcmProdutoPrecificacao: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 13
      Size = tcisLarge
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Produto Precifica'#231#227'o'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
    end
    object tcmInstrucoes: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 0
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = []
      Text1.Value = 'Instru'#231#245'es'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmInstrucoesClick
    end
    object tcmHistorico: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 14
      Size = tcisLarge
      Style.BorderColor = 551663654
      Style.GradientBeginColor = 551332608
      Style.GradientEndColor = 551796480
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -14
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Ver Hist'#243'rico de altera'#231#245'es'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnClick = tcmHistoricoClick
    end
  end
  inherited pnlMenuCadastro: TPanel
    Width = 972
    BevelEdges = [beBottom]
    ExplicitWidth = 972
    inherited tcCadastro: TdxTileControl
      Left = 298
      Width = 509
      Visible = False
      ExplicitLeft = 298
      ExplicitWidth = 509
    end
    inherited dxTileControl1: TdxTileControl
      Left = 807
      ExplicitLeft = 807
    end
    inherited tcCadastroMenu: TdxTileControl
      Width = 298
      Title.Font.Height = -30
      Title.IndentVert = 0
      Title.Text = 'Configura'#231#227'o da API'
      ExplicitWidth = 298
      inherited dxTileControlGroup5: TdxTileControlGroup
        Visible = False
      end
      inherited BtnConfiguracoes: TdxTileControlItem
        Visible = False
      end
    end
    inherited tcCadastroAcoes: TdxTileControl
      Left = 298
      Width = 509
      Align = alClient
      OptionsView.ItemWidth = 70
      ExplicitLeft = 298
      ExplicitWidth = 509
      inherited btnNovo: TdxTileControlItem
        Visible = False
      end
      inherited btnExcluir: TdxTileControlItem
        Visible = False
      end
    end
    inherited tcConfig: TdxTileControl
      Left = 807
      ExplicitLeft = 807
    end
    inherited dxTileControl2: TdxTileControl
      Left = 921
      Visible = False
      ExplicitLeft = 921
    end
  end
  inherited DS: TDataSource
    Left = 676
    Top = 288
  end
  inherited TimerStatusBar: TTimer
    Left = 704
    Top = 288
  end
  inherited ImgListBotoes24: TImageList
    Left = 760
    Top = 316
  end
  inherited ImgListBotoes16: TImageList
    Left = 732
    Top = 316
  end
  inherited MenuConfig: TPopupMenu
    Left = 676
    Top = 316
  end
  inherited ImgListMenuConfig: TImageList
    Left = 703
    Top = 316
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 788
    Top = 288
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    Left = 788
    Top = 316
  end
  inherited MenuImprimir: TPopupMenu
    Left = 648
    Top = 316
  end
  inherited WREventosCadastro: TWREventosCadastro
    Left = 760
    Top = 288
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM OIMPRESSO_CONFIGURACAO'
      'WHERE CODIGO = 1')
    Left = 648
    Top = 288
  end
  inherited TransaFD: TFDTransaction
    Left = 732
    Top = 288
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'OIMPRESSO_CONFIGURACAO'
    Modulo = 'OImpresso'
    Left = 816
    Top = 316
  end
  inherited Fr3Cadastro: TfrxDBDataset
    Left = 816
    Top = 288
  end
  inherited MenuRegra_Acoes: TPopupMenu
    Left = 760
    Top = 344
  end
  inherited TransaConfiguracao: TFDTransaction
    Left = 788
    Top = 344
  end
  inherited CreateDaTela: TWRFormataCamposDataSets
    Left = 848
    Top = 288
  end
  object DS_CONECTAR: TDataSource
    DataSet = FDTabela
    Left = 516
    Top = 335
  end
  object FDTabela: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'name'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime, fvFmtDisplayDate, fvFmtDisplayTime]
    FormatOptions.FmtDisplayDateTime = 'yyyy-mm-dd hh:nn:ss'
    FormatOptions.FmtDisplayDate = 'yyyy-mm-dd'
    FormatOptions.FmtDisplayTime = 'hh:nn:ss'
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvUpdateNonBaseFields]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 488
    Top = 335
  end
  object RESTResponseDataSetAdapter_CONECTAR: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDTabela
    FieldDefs = <>
    Response = RESTResponse_CONECTAR
    TypesMode = JSONOnly
    NestedElements = True
    StringFieldSize = 2000
    Left = 460
    Top = 335
  end
  object RESTClient_CONECTAR: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, iso-8859-1;q=0.5'
    BaseURL = 'http://localhost:8000'
    Params = <>
    ConnectTimeout = 300000
    ReadTimeout = 300000
    Left = 403
    Top = 335
  end
  object RESTRequest_CONECTAR: TRESTRequest
    AssignedValues = [rvAcceptCharset, rvAcceptEncoding, rvConnectTimeout, rvReadTimeout]
    AcceptCharset = 'utf-8, iso-8859-1;q=0.5'
    AcceptEncoding = ''
    Client = RESTClient_CONECTAR
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Options = [poDoNotEncode]
        Value = 
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU0MzhjNGVmY' +
          'jdhOThkNTVmNDNmZWEyY2E0Y2FmNzk1MDVlMDIxY2JlOGNjOGM5OGRhYmI5NzgwN' +
          '2I1MTJkZDY5YjU3MTk2NzU3ODgzMTI4In0.eyJhdWQiOiIzIiwianRpIjoiZTQzO' +
          'GM0ZWZiN2E5OGQ1NWY0M2ZlYTJjYTRjYWY3OTUwNWUwMjFjYmU4Y2M4Yzk4ZGFiY' +
          'jk3ODA3YjUxMmRkNjliNTcxOTY3NTc4ODMxMjgiLCJpYXQiOjE2Njk5OTM2MTIsI' +
          'm5iZiI6MTY2OTk5MzYxMiwiZXhwIjoxNzAxNTI5NjEyLCJzdWIiOiIxIiwic2Nvc' +
          'GVzIjpbXX0.pGJmLvG0eB5aSKhhIHorgr6i4NLpVZLHpSMclhFVjmZHw0-b1apte' +
          'M4yeE91aqtR4QVW3bVB2WcQEmY15_k2HwRvoNEghv3ssP3JdLFj8F_KrOf9CTeJa' +
          'rND9wqMk9VSW2wnTe-cNF8guFn57_QlGwaWhKF3ZEYDLrvsZ-Cn31K4dDbB6B2wx' +
          'qJP5F_sXEZ3PfzqEDxxDZK2QSdCbzCpw5uTsQtxFeKetLUFPKXH7kt88Ql78T6Od' +
          '96Coe2_YrMrM_E6L3ZSN20EFSpTzBE3d3_yOnoWRSdXS0Pmsjf1Rtg_ZUPnYriId' +
          'Hy-XJlIYCCGf83Ps4Mv5QTbx1tTQgwUefc03VdzHNJ2kNCso9a6koeLwoz-_pY6P' +
          'UwUivkkMwBO-aDELjUUlFfI61QaTRQrPBEcuXjvNpn49uGmdSDlRWTCtDZO25wYX' +
          'b5WiefUDgwOSCl2eUh9rSmQloo5ziNY6MAPlLAP4S_w6cEWzDxqXb0WAm31WgY-A' +
          '_mcBMbeKv4tM7AMWaEP7h1IeBW0sCHmcuJNGmk7dB9Xe_rNic0Da4GbNJBdZPEIU' +
          'EV7_P_5N3yzhGIjZvgKoYRUtcnhqxzHnUS-VyddMYjMM5eQ2a1p9fcim6mGchiwF' +
          '9Fjtra5jNXzwpatm1b1Uyt3j1WSU6XgiDcTfiBDatBFD8PbrI3ngxo'
      end
      item
        Kind = pkHTTPHEADER
        Name = 'Accept'
        Options = [poDoNotEncode]
        Value = 'application/json'
      end
      item
        Kind = pkHTTPHEADER
        Name = 'Content-Type'
        Options = [poDoNotEncode]
        Value = 'application/json'
      end>
    Resource = 'connector/api/contactapi'
    Response = RESTResponse_CONECTAR
    ConnectTimeout = 300000
    ReadTimeout = 300000
    Left = 432
    Top = 335
  end
  object RESTResponse_CONECTAR: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'data'
    Left = 373
    Top = 335
  end
  object RESTResponse_Token: TRESTResponse
    ContentType = 'application/json'
    Left = 374
    Top = 307
  end
  object RESTClient_Token: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost:8000'
    ContentType = 
      'multipart/form-data; boundary=-------Embt-Boundary--26C6BE087022' +
      '182A'
    Params = <>
    Left = 403
    Top = 307
  end
  object RESTRequest_Token: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient_Token
    Method = rmPOST
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'grant_type'
        Value = 'password'
      end
      item
        Kind = pkREQUESTBODY
        Name = 'client_id'
        Value = '3'
      end
      item
        Kind = pkREQUESTBODY
        Name = 'client_secret'
        Value = #9'R53gzQEASZW1kfBNQsGMqW6bB3WbMYK5vCaQxMVG'
      end
      item
        Kind = pkREQUESTBODY
        Name = 'username'
        Value = 'wr23'
      end
      item
        Kind = pkREQUESTBODY
        Name = 'password'
        Value = 'wscrct*2312'
      end>
    Resource = 'oauth/token'
    Response = RESTResponse_Token
    Left = 432
    Top = 307
  end
end
