inherited Frame_Subunidade: TFrame_Subunidade
  inherited MainLayout: TdxLayoutControl
    inherited edtDescricao: TcxDBTextEdit
      DataBinding.DataField = 'UN_SUBUNIDADE_DESCRICAO'
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 15
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 16
    end
    object edtSubUNIDADE: TcxComboBox [6]
      Left = 177
      Top = 68
      AutoSize = False
      Properties.OnChange = edtSubUNIDADEPropertiesChange
      Style.HotTrack = False
      TabOrder = 5
      Text = 'UN'
      Height = 21
      Width = 311
    end
    object lblUnidade: TcxDBLabel [7]
      Left = 177
      Top = 48
      DataBinding.DataField = 'UNIDADE'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clSilver
      Style.IsFontAssigned = True
      Transparent = True
      Height = 19
      Width = 311
      AnchorX = 333
      AnchorY = 58
    end
    object ckTem_Divisao_Material: TcxCheckBox [8]
      Left = 18
      Top = 90
      Caption = 'Reduzir Quantidade'
      ParentFont = False
      Properties.OnEditValueChanged = ckTem_Divisao_MaterialPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clGrayText
      Style.IsFontAssigned = True
      TabOrder = 6
      Transparent = True
    end
    object cxButton1: TcxButton [9]
      Left = 138
      Top = 90
      Width = 24
      Height = 25
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000A3769434350735247422049454336313936362D322E310000789C9D96
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
        8F70662A000000097048597300002E2300002E230178A53F760000018B494441
        54789CA5533D4BC35014BD2F7989A416122B2E52DA6E75507070101C8ADDACFF
        405C6D3BDA4DDC05371D846AFD1F75AB080E1D540467A1A238286802698BFD8A
        F7BE24A55FA4A0071EBC8F7BCECBBB39873B8E038388DC7DAE82A4E470BA8923
        EE6DBFE0B8865EFBE26B6DE171B09EFB13A9FAA6E94AF89449CA1E2E190C2329
        060ACFDD9B9756DBDEEFAD479B7D01221BEAEC154E533E63675E85B37808CA56
        07769F6D7F9B310659AC4D22678B448480A1864F06C9045D763F22A64A300E96
        F23879EEBD393B5A52FCF8815BBB034F8DEE0401812C72CFB9471E7A736C4682
        6D5D81E51007ABEBC0E16B639200232E3D213D7A62751CC8182A6C8465D18300
        A44920312680B796CD160A68416442824FAB980612A881FB9FFF821A0954FE21
        50E168CF1276330FE3EE9B0687B89CBC1D79304BB891F34F5642321C45DD0666
        740E078B1A1CBF3747054AC4154D345B7601EDB9440EA335990745832EBF315B
        F5027AD8CD02799ABC2DC2C4605298FA4C0C2F86A93E1C265F849E81F62C06C5
        F95BC4D9E82BFE02F9758702EDA1DA860000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 7
    end
    object edtQtdaDePeca: TcxCurrencyEdit [10]
      Left = 178
      Top = 116
      AutoSize = False
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.########'
      ShowHint = True
      Style.Color = clWindow
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Height = 21
      Width = 311
    end
    object lblSubUnidade: TcxLabel [11]
      Left = 490
      Top = 116
      Caption = 'UN'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clGrayText
      Style.IsFontAssigned = True
      Transparent = True
    end
    object edtComp: TcxCurrencyEdit [12]
      Left = 177
      Top = 140
      AutoSize = False
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.########'
      Properties.OnChange = edtCompPropertiesChange
      ShowHint = True
      Style.Color = clWindow
      Style.HotTrack = False
      StyleDisabled.BorderColor = 15197669
      StyleFocused.BorderColor = 15197669
      TabOrder = 10
      Height = 21
      Width = 311
    end
    object edtLarg: TcxCurrencyEdit [13]
      Left = 177
      Top = 162
      AutoSize = False
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.########'
      Properties.OnChange = edtCompPropertiesChange
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 11
      Height = 21
      Width = 311
    end
    object edtEspessura: TcxCurrencyEdit [14]
      Left = 177
      Top = 184
      AutoSize = False
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.########'
      Properties.OnChange = edtCompPropertiesChange
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 12
      Height = 21
      Width = 311
    end
    object edtDescricaoPersonalizada: TcxTextEdit [15]
      Left = 18
      Top = 206
      ParentShowHint = False
      ShowHint = False
      Style.HotTrack = False
      TabOrder = 13
      TextHint = 'Ex.: Chapa PVC 2mm, Barra Ferro 20x20...'
      Width = 311
    end
    object edtRendimento: TcxCurrencyEdit [16]
      Left = 18
      Top = 228
      AutoSize = False
      ParentShowHint = False
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.########'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = 46848
      Style.HotTrack = False
      TabOrder = 14
      Height = 28
      Width = 68
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 6
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoMain
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Converter para'
      Control = edtSubUNIDADE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 311
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoMain
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Unidade Base'
      Control = lblUnidade
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 311
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoReduzirMaterial
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = ckTem_Divisao_Material
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoReduzirMaterial
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 24
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtQtdaDePeca_Rendimento: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      Padding.Left = 1
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '1CX = '
      Control = edtQtdaDePeca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 311
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = lblSubUnidade
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtComp: TdxLayoutItem
      Parent = GrupoMain
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Qual o Comprimento do Produto?'
      Control = edtComp
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 311
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtLarg: TdxLayoutItem
      Parent = GrupoMain
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Qual a Largura do Produto?'
      Control = edtLarg
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 311
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtEspessura: TdxLayoutItem
      Parent = GrupoMain
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Qual a espessura do Produto?'
      Control = edtEspessura
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 311
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = GrupoMain
      AlignHorz = ahLeft
      Visible = False
      Control = edtDescricaoPersonalizada
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 311
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = GrupoMain
      AlignHorz = ahLeft
      Visible = False
      Control = edtRendimento
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object GrupoReduzirMaterial: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 6
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmProdutoSubUnidade'
    FormClassConsulta = 'TConsuProdutoSubUnidade_Frame'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * from PRODUTO_SUBUNIDADE'
      'where Codigo = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Unidade: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODUNIDADE'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize, evCache]
    FetchOptions.RowsetSize = 10000
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from UNIDADE U'
      'where (U.CODIGO = :CODIGO)')
    Left = 311
    Top = 132
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object UnidadeCodTabela: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodTabela'
      Calculated = True
    end
    object UnidadeSituacaoProducao: TStringField
      FieldKind = fkCalculated
      FieldName = 'SituacaoProducao'
      Size = 30
      Calculated = True
    end
    object UnidadeCustoPorPeca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CustoPorPeca'
      Calculated = True
    end
  end
end
