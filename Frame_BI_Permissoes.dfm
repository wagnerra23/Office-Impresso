inherited FrmFrame_BI_Permissoes: TFrmFrame_BI_Permissoes
  Width = 600
  Height = 350
  Enabled = False
  OnExit = FrameExit
  ExplicitWidth = 600
  ExplicitHeight = 350
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 600
    Height = 350
    Align = alClient
    TabOrder = 0
    object GridUsuario: TcxGrid
      Left = 10
      Top = 46
      Width = 324
      Height = 294
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.NativeStyle = False
      object GridUsuarios_Permitidos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataModeController.GridModeBufferCount = 50
        DataController.DataSource = DSUsuario_Permitidos
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Click aqui para definir um filtro'
        NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
        OptionsBehavior.IncSearch = True
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 1
        OptionsView.GridLines = glNone
        OptionsView.RowSeparatorColor = clMoneyGreen
        OptionsView.RowSeparatorWidth = 1
        object GridUsuarios_PermitidosSELECAO: TcxGridDBColumn
          Caption = 'Permiss'#227'o'
          DataBinding.FieldName = 'SELECAO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Properties.OnChange = GridUsuarios_PermitidosSELECAOPropertiesChange
          Width = 39
        end
        object GridUsuarios_PermitidosMODULO: TcxGridDBColumn
          Caption = 'Sigla'
          DataBinding.FieldName = 'MODULO'
          Visible = False
          Width = 72
        end
        object GridUsuarios_PermitidosDESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 225
        end
        object GridUsuarios_PermitidosLOGIN: TcxGridDBColumn
          Caption = 'Login'
          DataBinding.FieldName = 'LOGIN'
          Visible = False
        end
        object GridUsuarios_PermitidosCODUSUARIO: TcxGridDBColumn
          Caption = 'Cod. Usu'#225'rio'
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
        end
        object GridUsuarios_PermitidosCOMPONENTE: TcxGridDBColumn
          Caption = 'Tela - Cadastro / Consulta '
          DataBinding.FieldName = 'COMPONENTE'
          Visible = False
          Width = 154
        end
      end
      object GridUsuarioDBLayoutView1: TcxGridDBLayoutView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ItemHotTrack = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.ScrollBars = ssNone
        OptionsView.MinValueWidth = 8
        OptionsView.RecordBorderWidth = 2
        OptionsView.RecordCaption.Visible = False
        OptionsView.RecordIndent = 0
        OptionsView.SeparatorColor = clBtnShadow
        OptionsView.SeparatorWidth = 0
        OptionsView.ViewMode = lvvmMultiColumn
        object GridUsuarioDBLayoutView1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Hidden = True
          ShowBorder = False
          Index = -1
        end
      end
      object GridUsuarioLevel1: TcxGridLevel
        Caption = 'Relat'#243'rio'
        GridView = GridUsuarios_Permitidos
      end
    end
    object LbTitulo: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Permiss'#245'es'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 6052956
      Style.Font.Height = -21
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btnFechar: TcxButton
      Left = 560
      Top = 10
      Width = 30
      Height = 30
      ModalResult = 1
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 20
      OptionsImage.Glyph.SourceWidth = 20
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000A3769434350735247422049454336313936362D322E310000789C9D96
        775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
        90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
        70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
        05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
        F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
        0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
        569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
        91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
        53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
        24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
        E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
        965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
        FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
        2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
        C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
        B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
        407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
        B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
        13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
        9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
        9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
        940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
        6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
        B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
        917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
        940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
        A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
        318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
        C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
        E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
        2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
        8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
        46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
        5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
        A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
        28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
        6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
        3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
        7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
        3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
        AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
        31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
        FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
        1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
        6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
        4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
        9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
        CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
        D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
        A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
        5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
        67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
        85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
        0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
        96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
        44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
        C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
        F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
        EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
        C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
        FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
        CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
        7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
        BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
        8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
        DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
        572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
        5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
        A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
        B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
        CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
        7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
        CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
        4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
        8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
        377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
        E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
        3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
        267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
        FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
        EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
        8F70662A000000097048597300002E2300002E230178A53F76000005F7494441
        54789CAD575B6C1455183E6776BAB065DB29457685B6E112A1DA4A85268D246D
        60775843F10183104D208518A254E0C142B1C60B178989E156484C48405F1A69
        00C1E81B609DAD8426BC08048CB1C84552B994845E16C1B6B073FCFED933DBD9
        DDE905F04F4E66CEF5FFE63FFFE51B5508C146237F5756FA727CBE6A85311D3B
        CA396353319C27A77BD1AEA25D308568EDEBEA3A113C7FFEC168CE55475A109B
        376F3AF77A37693EDF0A7473688C672ECB469B8456A570BE3E7BC28407F72391
        66619A3B720DE3CA5301B8525C3C265858B819CA37A23B266DFA265A3B5A97EC
        E7A315A315C8FE38B477B9A2AC0290C62ED3DC3AC530FA460DA037149A162C2A
        3A8ED739F618AEEA0F7CF9C138E7C7F35A5A6EB8EDEB8944A678185B82C5AB19
        E72F63C88BD690AF288B62BABED4CD1A19007AC2E1591E553DC9122625E964A6
        59DFD8DADABCC5344D37C5B648607B1545D98773DEE29CEF417F325A19AC71A6
        57D7AB35C3B8302400FAF214E542FCFCB0BF7F79F0CC99BB5B86D39C26C0499E
        7DE4FEDCB92DC2EF6F82E55E473F08602761894AA7259200AC3B2F2A3AE6507E
        B4E3EEDD9A924B97069E40778AE49C3D7BEF175D7F630EE7DFC01A2B31148025
        8EDFD0F5576D9F48022087C3A3DCFEF267556ECB7CC3780C10ABCB399F88EE22
        B432F8C4563C3F4A0220D32BAABA51EEE924B3FF1FCA9D20701D35CCEFBFC812
        3E51178B440EE6B6B45CB500281E4F3D1B0CB54D74E7CE03900BC6231C3F4724
        DC39158D7EB9CC34E36E8A7E9F35CB5B14087C2228413D7AB435F7F4E96E7B8E
        AE034AEBE10FCDE87AB910F4C16BD5DB1515D97E4DABA145D8D8DE681887321C
        CEEBA5EB598F7B640BC3E192638AB2321D04292F0C04BE43F82DB61255561665
        C28F9D6BF20CE33022E153BC96605D0D74D7ABD99A56CDEC0C27C401B750C381
        8371CFF97280604E10B672005CEC58773BFD1C8A0E24A6AFF14AE1E987EE852A
        727B38B94088EFDD4C8BD8DDD71B0ECFC4A1EF2741E8BA00885525A5A59E0CE5
        F8102D1AFDCA2D69988F1FFF007F23004C11224C3EF08A9CBB09457FB90120E4
        88E17500C19220185B014B705C9BDF4579ADCC05991FD3DA7A1D56B8C5C81939
        9FAD62C334BCD0DC65B70DC3828025520AD308CA1D729925A261BA8A4334B9B9
        7BD82D4E10BA8E9B636B522647AF9CD6DE931FAD8D588ED3E5B7D2D22C84E324
        CE338AB2FF28AE154FD7104D11CE932009408C5114709E3FD23E576F1F3C3423
        3A8691842E217A08C07596A8E3339E42F941AAD350FEDE13811062A675059C5F
        2300541EAB0804D573B75A3F94F23D8651BB0DC749C71C042143D40D84C51938
        2F4CE0101754E27044A368C02213A8E7E99B0A83C106E0CD504E498BB2261CB3
        168E49615F2BE72944CFB144C24911A9431A4244552290C4E198A45144265C3C
        5973982FC3DB6574AC05089604C179205DF9362CAA0B87D748078EDDEFEF3FA9
        127B4562F89625C2AAA427147A1BCFC3293B0706BE406E7F088D77F2A2D1FD6E
        A16683E8D1F58B38BE400C0CEC4E5FB321145A0E602FCA6E53615BDBBF561882
        BDEE0251788751955294DD289D3F51F5B237CAAAB6D952947E6A1A083CF6BBCD
        DD993F7FE2B8ACAC9DB2DB8FB516400B0051A4D882057B619A0FD19D4C348A98
        0CD5F161F48D5ACE555464CDD0B443787D5E0EEDB2D37E3211750BB1259F73AA
        8C65C4E1884611937956105279135E5FB3873A3B3AB6E7C84E12007134108637
        A1BC0DDD20713880782E56595993DBD6D6957EF068A4B3AA2A20BF3C22876EA3
        1A2E7BA1BDBDDF5E93928A8922117586339DB040109BF5F92E02D82610952323
        D1725BC8DB37E8FA8AECB16377B041B3DF8AC7E3D579A886CEB519B580783B14
        564239718332B402A25138F03344CB017CC18F5ADA21B658DCD2E35952A7EB94
        948A1D53BF22232D4504652439D762449620EA3C9EF36DB88A0F58E20FE725B4
        4690894600A15FB33F9113BA10566415EBD70C73D6AF99A34C91A9777674766E
        1F8AE40E590D256F6F80350E80AA6D200EC724756389DA51C0322BA22DBD00D7
        64C6E38D64AD92A1560D07C016B2061EEBF07B5E4FBFE70013825566636C1A1B
        CC903D68D784FC3DFFA7AFEF14259991CE26F90FFAD7A29DA35A164400000000
        49454E44AE426082}
      OptionsImage.ImageIndex = 0
      OptionsImage.Layout = blGlyphRight
      OptionsImage.Margin = 2
      OptionsImage.Spacing = 0
      TabOrder = 1
      OnClick = btnFecharClick
    end
    object cxGrid1: TcxGrid
      Left = 340
      Top = 46
      Width = 250
      Height = 294
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataModeController.GridModeBufferCount = 50
        DataController.DataSource = DSUsuario_Permitidos
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Click aqui para definir um filtro'
        NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
        OptionsBehavior.IncSearch = True
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 1
        OptionsView.GridLines = glNone
        OptionsView.RowSeparatorColor = clMoneyGreen
        OptionsView.RowSeparatorWidth = 1
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'Permiss'#227'o'
          DataBinding.FieldName = 'SELECAO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Properties.OnChange = GridUsuarios_PermitidosSELECAOPropertiesChange
          Width = 39
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Sigla'
          DataBinding.FieldName = 'MODULO'
          Visible = False
          Width = 72
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 225
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = 'Login'
          DataBinding.FieldName = 'LOGIN'
          Visible = False
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'Cod. Usu'#225'rio'
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
        end
        object cxGridDBColumn6: TcxGridDBColumn
          Caption = 'Tela - Cadastro / Consulta '
          DataBinding.FieldName = 'COMPONENTE'
          Visible = False
          Width = 154
        end
      end
      object cxGridDBLayoutView1: TcxGridDBLayoutView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ItemHotTrack = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.ScrollBars = ssNone
        OptionsView.MinValueWidth = 8
        OptionsView.RecordBorderWidth = 2
        OptionsView.RecordCaption.Visible = False
        OptionsView.RecordIndent = 0
        OptionsView.SeparatorColor = clBtnShadow
        OptionsView.SeparatorWidth = 0
        OptionsView.ViewMode = lvvmMultiColumn
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Hidden = True
          ShowBorder = False
          Index = -1
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Relat'#243'rio'
        GridView = cxGridDBTableView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridUsuario
      ControlOptions.OriginalHeight = 439
      ControlOptions.OriginalWidth = 545
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = LbTitulo
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnFechar
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      Control = cxGrid1
      ControlOptions.OriginalHeight = 294
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 1
    end
  end
  object Usuarios_Permitidos: TFDMemTable
    Filtered = True
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 488
    Top = 224
    object Usuarios_PermitidosMODULO: TStringField
      FieldName = 'MODULO'
      Size = 50
    end
    object Usuarios_PermitidosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Usuarios_PermitidosCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
    object Usuarios_PermitidosCOMPONENTE: TStringField
      FieldName = 'COMPONENTE'
      Size = 50
    end
    object Usuarios_PermitidosLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object Usuarios_PermitidosSELECAO: TStringField
      FieldName = 'SELECAO'
      Size = 1
    end
  end
  object Usuario_ExtraEX: TFDQuery
    BeforeOpen = Usuario_ExtraEXBeforeOpen
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select CodUsuario as IdUser, Componente as ObjName, FormName as ' +
        'FormName'
      ' from Usuario_ExtraEX TAB1 where (TAB1.Modulo = :CODIGO)')
    Left = 488
    Top = 196
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end>
    object Usuario_ExtraEXIDUSER: TIntegerField
      FieldName = 'IDUSER'
      Origin = 'CODUSUARIO'
    end
    object Usuario_ExtraEXOBJNAME: TStringField
      FieldName = 'OBJNAME'
      Origin = 'COMPONENTE'
      Size = 50
    end
    object Usuario_ExtraEXFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Origin = 'FORMNAME'
      Size = 50
    end
  end
  object DSUsuario_Permitidos: TDataSource
    DataSet = Usuarios_Permitidos
    Left = 516
    Top = 224
  end
  object TransaFD: TFDTransaction
    Options.Isolation = xiReadCommitted
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 516
    Top = 196
  end
  object RepositrorioComponentes: TcxEditRepository
    Left = 396
    Top = 208
    PixelsPerInch = 96
    object RepSelecionado: TcxEditRepositoryCheckBoxItem
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Tipo de Pessoa'
    UserControl = FrmPrincipal.UserControl
    Components = ''
    MostraMessagemErroValidacao = False
    Left = 548
    Top = 196
  end
end
