inherited FrmEmail_Massa: TFrmEmail_Massa
  Caption = 'Cadastro de Email em Massa'
  ClientHeight = 528
  ExplicitHeight = 567
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlHistorico_SLA: TPanel
    TabOrder = 4
  end
  object PnlAssunto: TPanel [2]
    Left = 90
    Top = 181
    Width = 450
    Height = 159
    TabOrder = 3
    Visible = False
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 448
      Height = 157
      Align = alClient
      TabOrder = 0
      object edtAssunto: TcxTextEdit
        Left = 10
        Top = 28
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Width = 428
      end
      object btnAplicarAssunto: TcxButton
        Left = 288
        Top = 122
        Width = 150
        Height = 25
        Caption = 'Aplicar a todos os emails'
        TabOrder = 3
        OnClick = btnAplicarAssuntoClick
      end
      object btnCancelarAssunto: TcxButton
        Left = 207
        Top = 122
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = btnCancelarAssuntoClick
      end
      object edtTags: TcxMemo
        Left = 10
        Top = 73
        Lines.Strings = (
          '{RazaoSocial} {Hoje} {Agora} {Mes} {Ano} {MesEAno}')
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clBtnFace
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        Height = 21
        Width = 428
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 2
        ShowBorder = False
        Index = -1
      end
      object liedtAssunto: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Novo Assunto'
        CaptionOptions.Layout = clTop
        Control = edtAssunto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object libtnAplicarAssunto: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnAplicarAssunto
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 150
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object libtnCancelarAssunto: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton3'
        CaptionOptions.Visible = False
        Control = btnCancelarAssunto
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avBottom
        LayoutDirection = ldHorizontal
        Index = 3
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutControl1Group_Root
        AlignVert = avBottom
        CaptionOptions.Text = 'Separator'
        Index = 2
      end
      object liedtTags: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Voc'#234' pode utilizar as seguintes tags:'
        CaptionOptions.Layout = clTop
        Control = edtTags
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  inherited MainLayout: TdxLayoutControl
    Height = 508
    ExplicitHeight = 508
    DesignSize = (
      1008
      508)
    inherited btnSair: TcxButton
      Top = 480
      ExplicitTop = 480
    end
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 19
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 515
      TabOrder = 22
      ExplicitLeft = 515
    end
    inherited edtDescricao: TcxDBTextEdit
      TabOrder = 20
      ExplicitWidth = 414
      Width = 414
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 36
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 35
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 37
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 852
      Height = 384
      TabOrder = 34
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 852
      ExplicitHeight = 384
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 471
      TabOrder = 21
      ExplicitLeft = 471
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Email em Massa'
    end
    object GridMensagens: TcxGrid [25]
      Left = 13
      Top = 153
      Width = 852
      Height = 202
      PopupMenu = MenuGridMensagens
      TabOrder = 29
      object GridMensagensView: TcxGridDBTableView
        PopupMenu = ConsuEmail_Modelo.MenuAcoes
        OnDblClick = GridMensagensViewDblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = GridMensagensViewCustomDrawCell
        OnFocusedRecordChanged = GridMensagensViewFocusedRecordChanged
        DataController.DataSource = DSEmail_Massa_Mensagem
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'Quantidade: 0'
            Kind = skCount
            FieldName = 'SITUACAO'
            Column = GridMensagensViewSITUACAO
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Quantidade de Emails: 0'
            Kind = skCount
            FieldName = 'DESTINATARIO'
            Column = GridMensagensViewDESTINATARIO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        object GridMensagensViewRAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Respons'#225'vel'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 256
        end
        object GridMensagensViewCODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridMensagensViewDESTINATARIO: TcxGridDBColumn
          Caption = 'Destinat'#225'rio'
          DataBinding.FieldName = 'DESTINATARIO'
          Width = 284
        end
        object GridMensagensViewASSUNTO: TcxGridDBColumn
          Caption = 'Assunto'
          DataBinding.FieldName = 'ASSUNTO'
          Width = 243
        end
        object GridMensagensViewSITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'SituacaoDesc'
          Width = 116
        end
        object GridMensagensViewSITUACAO_MOTIVO: TcxGridDBColumn
          Caption = 'Motivo'
          DataBinding.FieldName = 'SITUACAO_MOTIVO'
          Width = 218
        end
        object GridMensagensViewDT_ENVIADO: TcxGridDBColumn
          Caption = 'Dt. Enviado'
          DataBinding.FieldName = 'DT_ENVIADO'
        end
      end
      object GridMensagensLevel1: TcxGridLevel
        GridView = GridMensagensView
      end
    end
    object GridAnexos: TcxGrid [26]
      Left = 370
      Top = 416
      Width = 483
      Height = 67
      PopupMenu = MenuGridAnexos
      TabOrder = 33
      object GridAnexosView: TcxGridDBTableView
        OnDblClick = GridAnexosViewDblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = GridAnexosViewCustomDrawCell
        DataController.DataSource = DSEmail_Massa_Mensagem_Anexo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object GridAnexosViewCAMINHO: TcxGridDBColumn
          Caption = 'Anexo'
          DataBinding.FieldName = 'CAMINHO'
          OnGetCellHint = GridAnexosViewCAMINHOGetCellHint
          Width = 448
        end
        object GridAnexosViewArquivoExiste: TcxGridDBColumn
          DataBinding.FieldName = 'ArquivoExiste'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object GridAnexosLevel1: TcxGridLevel
        GridView = GridAnexosView
      end
    end
    object btnEnviarEmails: TcxButton [27]
      Left = 889
      Top = 376
      Width = 116
      Height = 40
      Caption = 'Enviar Emails'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000EC300000EC301C76FA864000006C0494441545847ED5669
        6C545514465C40C115F72D26FED1B8FC30D1A8A844498C8A4B4C14D004AD102D
        820AB454846043C51A1010CAB009AD80D46A81B29442C196428BB4B49D76A6D3
        BD53987666DA99693B4BA79D4E573ECF775FA70E22480C26FCE026DFDCFBDEBB
        E73BDFB973CE796FD8E571A98D2BFE070C0F43F8FD334668E39582AB0671F5BF
        E09AF360C479405BFA3943C4F0871F7B72FC8AB5DB8B338ED481D8973388C3B5
        434827B26B14F60AF66411D50ABB7FD7B0EB1051A590461CAC54D8994954207E
        658AFEA1479E78597C324825823F57ADD99CE574B676A07F6040E1F4E9D3B858
        6340B8FAFAFAD1D3DB8FC6661F16AFDCE3129F3C0D9EBA1270CDFC6519E8950D
        7DFD0308F6F422D8DD2B067D4ACC7F1D03624B0EF2750BC81DE8EA41CC77E910
        9FD78504F067C4D2C43F90995D818A5AA7DAD8DDD387808820BA4262E4FEF94E
        86CFB887813000DAD1BE5B6CFBFA06505A6147726A01E2D66453C02801734109
        18B979FD3E38D3D37128AF06C9BB4AE0F307D5B105BA7BD029AA03410D5D4310
        512292A0B3A05CF37E689F82D832186F7B003F26FF81DD992698572560ED8A1D
        14303A5CC0B547A3E7C2BE7183FC475E149BAC58BE2107052516F48A0846D221
        2242A0A0D0CC23E51C7E8F739708A36DDE897A2C5A9181BC42B3E2AE8E9A83CC
        4F3FA380EBC3055C9733270ABE062B6C4E1F1A9B3CA83EE9C4EAA423D009DC9E
        4E45D611E8863F0CA16B6D0E6A6B71CEBDADEE0E2CD1ED47FCEA03D09B1A15A7
        5DB85BCAAB90F1C90C0AB841C04A502A46AD5F990647AB5F367A053E34D83CA8
        B5B460DBCE42C42C4E43D6B16A95C58CB0BD23A8A1B35B6642BBE633E6CA81C3
        267CBEE017ACDE9C035375132C760FAC92FD56E13537B661797C3205DC142E60
        F4C2842C1C3A61519B090AB058DB60B6B42233A71CF3E3772276793A5C229242
        E8DC274E992B5CF39EC3E543F4A25FF1E537A9D89A9A8FAA3AA770B8352E9BCC
        C2BB614709A2BFDB779680EB272FD88303C74FA1BEB115274565BDB555D632CB
        759D9C44467615A2E2D210F14512F61E32AA2A09FDF75CA7651463D2C73A44C7
        ED44E2AFE2DCEC120ECD9E3CE43C29D7EB52F5787BCE6F14704BB8801B26CE4B
        53475F27112B34FC35EBCBE518258A26A717FBB38C885BBA0351B1BFA988ED0E
        0F22A393B0303E05E9074B6128B7C2DCE05636431C02F3E0BAB2BE056F7E9142
        0163046CCB4AC58D7397EC87ABCA8C9A7AD719D097D95054665789159052F378
        03C82BA845627236A6CEDA88C91FAF42D2B66CFC9E5B81B22ABB2424F3A05F1C
        897093ED2C3E9BBE1C33627751C0ADE1026E5A1AF733CCDF7C8BCA3A87C0A950
        2C04470AA41407938F08744949CA7F6EACB4212BD784ECDC721CD7D74B742DE8
        14E714E0EFD4441419EC2A80CA5A720A642E9B3E13B1311B29E0B6700137A7BE
        1781BAD84592B5CD30D53449D4561CCCAD534424F48B5392D349A788A0182655
        996439675E6BCEB5CA6072062537720B2D28325A8593BCCD3046CEC4E6B72651
        C0ED02BE3995805B52264E81DD580D83B4CBE2B2466CCF3029676E397292F959
        6E421E12C27A0FCD7ECE83CF588E5ED9EF69EF429B27A038F64902171B1B61A8
        B4C372C288A409EF50C01D21013C86318BE66D520972C2D8809474832AB12667
        3BEC52BFCDAE76B8DA3AE0F67509799756FB830E35B00F744BCB0DAA3D2E7727
        9A5BFCCA8EA0A8B403E5283434C8FBA0095FCD5A470177860BB83572C176FCB4
        DB88AD697A7884845D8BDDCB26EDD3EEF0A189642DEDAA5939450C9DB44A8404
        D704EFF395DEECF26BE21DEDCA9ED75E3991E43D062C91975E44F42F147057B8
        80DBC67F9488155B0BE010E5368717A7A47158ECEE41112C371121A42463748E
        960E38E870D029ED083ED39CFB9473DAB3113120A788FF6A55369E7F5F9DC0DD
        027E1368025EFC70936A9336313437B4A8E641114C30B667258210A266278F37
        1CDA51D371C8B95539F72AFB53D20DEBA50FD8A56F54989D183B794D48C05F49
        181195D8567EA40825D33E41C9D448D4E4EA512825B47C4B3E966D29805E92F3
        6481349A6991281530990C550E7CFF53BEE0384A2B9B71AAC0A09E1B84A33EBF
        1445263BE2371D43FCC63CE49736A2EA68110A3F9886C933D6BBC527AB409521
        DF86A39E7AF0F1F9BA71AFF5AE7BE90DCC9BB516536352D4513DFFDE3A44CC4D
        41CCE73AE8C6BD0EDD0B1330F7331D22A2923176D21A3C2BF850D651335623E1
        B9579130F615447D9A800F666FC3D3EFEAF0F43B3A4C99FD33664F5F851F9E79
        19CB9E7AA9F789071EFD5A7CF26DA85EC7EA9B50C00F04762726078FE79EBFE1
        DE73E0BE7FC0FDE7009F31FBE99CD10F7D19734135BCC9FF25FC33FA4231F202
        C07DE4A72FFA1C1270A12364743170795C0A63D8B03F01E3AFFBFC842F572A00
        00000049454E44AE426082}
      TabOrder = 17
      OnClick = btnEnviarEmailsClick
    end
    object btnMenu: TcxButton [28]
      Left = 889
      Top = 350
      Width = 116
      Height = 25
      Caption = 'Menu'
      TabOrder = 16
    end
    object edtDadosEmail: TdxRichEditControl [29]
      Left = 25
      Top = 376
      Width = 342
      Height = 107
      ActiveViewType = Simple
      BorderStyle = cxcbsNone
      Color = 16505534
      Options.Export.Html.CssPropertiesExportType = Inline
      Options.Export.Html.EmbedImages = True
      Options.Fields.UseCurrentCultureDateTimeFormat = True
      Options.HorizontalRuler.Visibility = Hidden
      Options.MailMerge.ViewMergedData = True
      Options.VerticalRuler.Visibility = Hidden
      TabOrder = 30
    end
    object edtCodEmail_ContaÎEMAIL_CONTA: TcxDBButtonEdit [30]
      Left = 3
      Top = 97
      DataBinding.DataField = 'CODEMAIL_CONTA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 24
      Width = 52
    end
    object lblCodEmail_ContaÎEMAIL_CONTAÎDESCRICAO: TcxLabel [31]
      Left = 56
      Top = 97
      Hint = 'EdtCodEmail_Conta'#206'EMAIL_CONTA'
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 209
    end
    object edtCodModeloÎEmail_Modelo: TcxDBButtonEdit [32]
      Left = 546
      Top = 97
      DataBinding.DataField = 'CODEMAIL_MODELO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 27
      Width = 88
    end
    object lblCodModeloÎEmail_ModeloÎDESCRICAO: TcxLabel [33]
      Left = 635
      Top = 97
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 240
    end
    object BtnAdicionarAnexo: TcxButton [34]
      Left = 370
      Top = 376
      Width = 25
      Height = 25
      Action = ActInserirAnexo
      PaintStyle = bpsGlyph
      TabOrder = 31
    end
    object btnRemoverAnexo: TcxButton [35]
      Left = 396
      Top = 376
      Width = 25
      Height = 25
      Action = ActExcluirAnexo
      PaintStyle = bpsGlyph
      TabOrder = 32
    end
    object lblSituacaoDesc: TcxDBTextEdit [36]
      Left = 634
      Top = 61
      AutoSize = False
      DataBinding.DataField = 'SituacaoDesc'
      DataBinding.DataSource = DS
      ParentColor = True
      ParentFont = False
      Properties.OnChange = LbSituacaoPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 23
      Height = 21
      Width = 241
    end
    object lblCodEmail_ContaÎEMAIL_CONTAÎEmail: TcxLabel [37]
      Left = 266
      Top = 97
      AutoSize = False
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
      Width = 279
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 11
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignHorz = ahClient
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      ControlOptions.OriginalHeight = 65
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = dxLayoutGroup4
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = TabEmails
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = GridMensagens
      ControlOptions.OriginalHeight = 262
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = TabEmails
      AlignVert = avClient
      CaptionOptions.Text = 'Dados do Email'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Anexos'
      CaptionOptions.Layout = clTop
      Control = GridAnexos
      ControlOptions.OriginalHeight = 108
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object libtnEnviarEmails: TdxLayoutItem
      Parent = GrupoMenuInterno
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnEnviarEmails
      ControlOptions.OriginalHeight = 40
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object libtnMenu: TdxLayoutItem
      Parent = GrupoMenuInterno
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnMenu
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutSplitterItem2: TdxLayoutSplitterItem
      Parent = TabEmails
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutSplitterItem3: TdxLayoutSplitterItem
      Parent = dxLayoutGroup2
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object liedtDadosEmail: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = edtDadosEmail
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 121
      ControlOptions.OriginalWidth = 177
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtCodEmail_ContaÎEMAIL_CONTA: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Conta'
      CaptionOptions.Layout = clTop
      Control = edtCodEmail_ContaÎEMAIL_CONTA
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblCodEmail_ContaÎEMAIL_CONTAÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblCodEmail_ContaÎEMAIL_CONTAÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 209
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object TabEmails: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Lote de Emails'
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object liedtCodModeloÎEmail_Modelo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Modelo de Emails'
      CaptionOptions.Layout = clTop
      Control = edtCodModeloÎEmail_Modelo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lilblCodModeloÎEmail_ModeloÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = lblCodModeloÎEmail_ModeloÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liBtnAdicionarAnexo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = BtnAdicionarAnexo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      Index = 2
    end
    object libtnRemoverAnexo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = btnRemoverAnexo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup3
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lilblSituacaoDesc: TdxLayoutItem
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'Situa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = lblSituacaoDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 241
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lilblCodEmail_ContaÎEMAIL_CONTAÎEmail: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = lblCodEmail_ContaÎEMAIL_CONTAÎEmail
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 279
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 1
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 508
    ExplicitTop = 508
  end
  inherited MenuConfig: TPopupMenu
    Left = 368
    Top = 128
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited MenuImprimir: TPopupMenu
    Left = 396
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmEmail_Massa'
    FormClassConsulta = 'TConsuEmail_Massa'
    Left = 480
  end
  inherited Cadastro: TFDQuery
    AfterClose = CadastroAfterClose
    BeforeDelete = CadastroBeforeDelete
    OnCalcFields = CadastroCalcFields
    SQL.Strings = (
      'select *'
      'from EMAIL_MASSA'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object CadastroSituacaoDesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'SituacaoDesc'
      Size = 150
      Calculated = True
    end
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'EMAIL_MASSA'
    Modulo = 'CRM'
  end
  inherited Fr3Cadastro: TfrxDBDataset
    Left = 396
    Top = 128
  end
  object MenuGridMensagens: TPopupMenu
    Left = 424
    Top = 128
    object NovoEmail1: TMenuItem
      Action = ActNovoEmail
    end
    object AlterarAssunto1: TMenuItem
      Action = ActAlterarAssunto
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ExcluirMensagem1: TMenuItem
      Action = ActExcluirMensagem
    end
    object ExcluirMensagensNoEnviadas1: TMenuItem
      Action = ActExcluirMensagensNaoEnviadas
    end
    object N4: TMenuItem
      Caption = '-'
    end
  end
  object DSEmail_Massa_Mensagem: TDataSource
    DataSet = Email_Massa_Mensagem
    Left = 340
    Top = 100
  end
  object DSEmail_Massa_Mensagem_Anexo: TDataSource
    DataSet = Email_Massa_Mensagem_Anexo
    Left = 340
    Top = 156
  end
  object ActionList1: TActionList
    Images = ImgLstAcoes
    Left = 480
    Top = 128
    object ActExcluirMensagem: TAction
      Caption = 'Excluir Mensagem'
      Hint = 'Excluir Mensagem'
      OnExecute = ActExcluirMensagemExecute
    end
    object ActExcluirAnexo: TAction
      Caption = 'Excluir Anexo'
      Hint = 'Excluir Anexo'
      ImageIndex = 1
      OnExecute = ActExcluirAnexoExecute
    end
    object ActInserirAnexo: TAction
      Caption = 'Inserir Anexo'
      Hint = 'Inserir Anexo'
      ImageIndex = 0
      OnExecute = ActInserirAnexoExecute
    end
    object ActExcluirMensagensNaoEnviadas: TAction
      Caption = 'Excluir Mensagens N'#227'o Enviadas'
      Hint = 'Excluir mensagens n'#227'o enviadas'
      OnExecute = ActExcluirMensagensNaoEnviadasExecute
    end
    object ActAlterarAssunto: TAction
      Caption = 'Alterar Assunto'
      Hint = 'Alterar assuntos de todos os emails n'#227'o enviados'
      OnExecute = ActAlterarAssuntoExecute
    end
    object ActAbrirAnexo: TAction
      Caption = 'Abrir'
      Hint = 'Abrir anexo'
      OnExecute = ActAbrirAnexoExecute
    end
    object ActNovoEmail: TAction
      Caption = 'Novo Email'
      Hint = 'Criar novo email neste lote de Email em Massa'
      OnExecute = ActNovoEmailExecute
    end
  end
  object MenuGridAnexos: TPopupMenu
    Left = 452
    Top = 128
    object Abrir1: TMenuItem
      Action = ActAbrirAnexo
      Default = True
    end
    object EcluirAnexo1: TMenuItem
      Action = ActExcluirAnexo
    end
    object EcluirAnexo2: TMenuItem
      Action = ActInserirAnexo
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 288
    Top = 256
  end
  object ImgLstAcoes: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 4719016
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object Email_Massa_Mensagem: TFDQuery
    AfterOpen = Email_Massa_MensagemAfterOpen
    BeforeClose = Email_Massa_MensagemBeforeClose
    AfterInsert = Email_Massa_MensagemAfterInsert
    BeforeDelete = Email_Massa_MensagemBeforeDelete
    OnCalcFields = Email_Massa_MensagemCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODEMAIL_MASSA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select E.CODIGO, E.CODEMAIL_MASSA, E.DESTINATARIO, E.ASSUNTO, E.' +
        'SITUACAO,'
      
        '       E.SITUACAO_MOTIVO, E.DT_ENVIADO, E.CONTEUDO, E.CODPESSOA,' +
        ' E.CONTEUDO_HTML'
      '       ,P.RAZAOSOCIAL'
      'from EMAIL_MASSA_MENSAGEM E'
      'left join PESSOAS P on (E.CODPESSOA = P.CODIGO)'
      'where (E.CODEMAIL_MASSA = :CODIGO)')
    Left = 312
    Top = 100
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Email_Massa_MensagemSituacaoDesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'SituacaoDesc'
      Size = 150
      Calculated = True
    end
  end
  object Email_Massa_Mensagem_Anexo: TFDQuery
    AfterClose = CadastroAfterClose
    AfterInsert = Email_Massa_Mensagem_AnexoAfterInsert
    OnCalcFields = Email_Massa_Mensagem_AnexoCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSEmail_Massa_Mensagem
    MasterFields = 'CODIGO'
    DetailFields = 'CODEMAIL_MASSA_MENSAGEM'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select CODIGO, CODEMAIL_MASSA_MENSAGEM, CAMINHO'
      'from EMAIL_MASSA_MENSAGEM_ANEXO'
      'where (CODEMAIL_MASSA_MENSAGEM = :CODIGO)')
    Left = 312
    Top = 156
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Email_Massa_Mensagem_AnexoArquivoExiste: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ArquivoExiste'
      Calculated = True
    end
  end
end
