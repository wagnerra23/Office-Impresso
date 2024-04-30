inherited FrmNF_Provedor: TFrmNF_Provedor
  Caption = 'Cadastro de Provedor de NFSe'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 20
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      TabOrder = 23
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
      Properties.OnChange = edtDescricaoPropertiesChange
      TabOrder = 21
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 60
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 58
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 59
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 852
      Height = 621
      TabOrder = 57
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 852
      ExplicitHeight = 621
    end
    inherited cbxAtivo: TcxDBComboBox
      TabOrder = 22
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Provedor de NFSe'
    end
    object edtMemo: TcxDBRichEdit [25]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'INI'
      DataBinding.DataSource = DS
      Properties.PlainText = True
      Properties.ScrollBars = ssBoth
      Style.HotTrack = False
      TabOrder = 56
      Visible = False
      Height = 623
      Width = 852
    end
    object btnAtualizar: TcxButton [26]
      Left = 889
      Top = 370
      Width = 116
      Height = 35
      Caption = 'Atualizar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000011744558745469746C6500446F776E3B4172726F773BBD
        FC82580000021E49444154785E6591316814411885BF99DDBD530435510B0BC3
        555E95144A8C46F48AEBA2A43016F65A182CB4104CAF9D8D6550B4B2B4508895
        0A625288A26050E4AC0425C110C9C588DEEDEECCEFF90FC31679ECEE3FF398FF
        EDFBE799B987CB2F8DB52D2F20FA0A4E40BCE009A4F75AF08272225016F9E2FD
        2B13EDF47F73FBD821D0C328C4104E0736D05E79A50B272C2C7E3D0524A90079
        E1F8F0FD37C1016050886EA23691A4797057DC9B543C7CFAB2C6FAAF1C412058
        0551ABCA89AE4DA840BFBB151549F76EAC327BAEC5DFBE0BA43188F794AED406
        630C6992626CB405F52CE1F6FCB3E0C0791F6C63102318449BEF2C7488B83AD5
        24AB6720AA1FEEC27B6DB2DEABADF0B79884F3ACAC6C70E6EC513A9D55BC4477
        5552DE4910709A110A2F425114F4F2FEA03ADEAD09CE09BD5E9FBC9F23311901
        ED03AC739A2C106C3D78FA911BF7DE52964ED3C952CBF5F937DC7DB23CE04A84
        00EF258EE0ABAC314C4F8ED0FDB1CEE1F649F24268B627D95AFFC9F956036B6D
        8CB7BA03E784A860AC65FFF01E2E4D8FF2FAF10B7AA51FD4E7CCCE8C313CB41B
        6393102FA61A411D082132046B138E1F69307AC0F079E93DE32375C6C71A2469
        169A0540AA1182928041950D50ABD5B97CE10443DD6F5C9C99A056DF01860815
        F11204527141354BACE61B3E967D83516E5D9B22491275054284203111493737
        375FCDDD7C745A88EA02FA5491C5855021EFFF59020A03EC0432C0B21DC1F876
        085000BD7F8CA0608FE53C7C9B0000000049454E44AE426082}
      TabOrder = 16
      OnClick = btnAtualizarClick
    end
    object btnLerProvedor: TcxButton [27]
      Left = 889
      Top = 406
      Width = 116
      Height = 35
      Caption = 'Ler Cidades.Ini'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000011744558745469746C6500446F776E3B4172726F773BBD
        FC82580000021E49444154785E6591316814411885BF99DDBD530435510B0BC3
        555E95144A8C46F48AEBA2A43016F65A182CB4104CAF9D8D6550B4B2B4508895
        0A625288A26050E4AC0425C110C9C588DEEDEECCEFF90FC31679ECEE3FF398FF
        EDFBE799B987CB2F8DB52D2F20FA0A4E40BCE009A4F75AF08272225016F9E2FD
        2B13EDF47F73FBD821D0C328C4104E0736D05E79A50B272C2C7E3D0524A90079
        E1F8F0FD37C1016050886EA23691A4797057DC9B543C7CFAB2C6FAAF1C412058
        0551ABCA89AE4DA840BFBB151549F76EAC327BAEC5DFBE0BA43188F794AED406
        630C6992626CB405F52CE1F6FCB3E0C0791F6C63102318449BEF2C7488B83AD5
        24AB6720AA1FEEC27B6DB2DEABADF0B79884F3ACAC6C70E6EC513A9D55BC4477
        5552DE4910709A110A2F425114F4F2FEA03ADEAD09CE09BD5E9FBC9F23311901
        ED03AC739A2C106C3D78FA911BF7DE52964ED3C952CBF5F937DC7DB23CE04A84
        00EF258EE0ABAC314C4F8ED0FDB1CEE1F649F24268B627D95AFFC9F956036B6D
        8CB7BA03E784A860AC65FFF01E2E4D8FF2FAF10B7AA51FD4E7CCCE8C313CB41B
        6393102FA61A411D082132046B138E1F69307AC0F079E93DE32375C6C71A2469
        169A0540AA1182928041950D50ABD5B97CE10443DD6F5C9C99A056DF01860815
        F11204527141354BACE61B3E967D83516E5D9B22491275054284203111493737
        375FCDDD7C745A88EA02FA5491C5855021EFFF59020A03EC0432C0B21DC1F876
        085000BD7F8CA0608FE53C7C9B0000000049454E44AE426082}
      TabOrder = 17
      OnClick = btnLerProvedorClick
    end
    object edtTipoRPS: TcxDBComboBox [28]
      Left = 708
      Top = 153
      AutoSize = False
      DataBinding.DataField = 'TIPO_RPS'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'Nenhum'
        'RPS'
        'Conjugada'
        'Cupom')
      Style.HotTrack = False
      TabOrder = 45
      Height = 21
      Width = 130
    end
    object edtLC116_Servico: TcxDBComboBox [29]
      Left = 451
      Top = 373
      AutoSize = False
      DataBinding.DataField = 'LC116_SERVICO'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'Sim'
        'N'#227'o'
        'Sim, S'#243' Numeros')
      Style.HotTrack = False
      TabOrder = 53
      Height = 21
      Width = 387
    end
    object edtCNAE_Obrigatorio: TcxDBComboBox [30]
      Left = 451
      Top = 167
      AutoSize = False
      DataBinding.DataField = 'CNAE_OBRIGATORIO'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'Sim'
        'N'#227'o'
        'N'#227'o, Caso colocado ser'#225' exigido com 7 digitos.')
      Style.HotTrack = False
      TabOrder = 40
      Height = 21
      Width = 169
    end
    object edtLC116_Codigo_Tributavel_Municipio: TcxDBComboBox [31]
      Left = 451
      Top = 409
      AutoSize = False
      DataBinding.DataField = 'LC116_CODIGOTRIBUTAVELMUNICIPIO'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'Sim'
        'N'#227'o'
        'N'#227'o, C'#243'digo Pr'#243'prio, Prefeitura decide se segue LC 116.'
        'N'#227'o, Caso coloque verifique com a Prefeitura.')
      Style.HotTrack = False
      TabOrder = 54
      Height = 21
      Width = 387
    end
    object cxButton1: TcxButton [32]
      Left = 889
      Top = 442
      Width = 116
      Height = 35
      Caption = 'Ler Todos *.Ini'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000011744558745469746C6500446F776E3B4172726F773BBD
        FC82580000021E49444154785E6591316814411885BF99DDBD530435510B0BC3
        555E95144A8C46F48AEBA2A43016F65A182CB4104CAF9D8D6550B4B2B4508895
        0A625288A26050E4AC0425C110C9C588DEEDEECCEFF90FC31679ECEE3FF398FF
        EDFBE799B987CB2F8DB52D2F20FA0A4E40BCE009A4F75AF08272225016F9E2FD
        2B13EDF47F73FBD821D0C328C4104E0736D05E79A50B272C2C7E3D0524A90079
        E1F8F0FD37C1016050886EA23691A4797057DC9B543C7CFAB2C6FAAF1C412058
        0551ABCA89AE4DA840BFBB151549F76EAC327BAEC5DFBE0BA43188F794AED406
        630C6992626CB405F52CE1F6FCB3E0C0791F6C63102318449BEF2C7488B83AD5
        24AB6720AA1FEEC27B6DB2DEABADF0B79884F3ACAC6C70E6EC513A9D55BC4477
        5552DE4910709A110A2F425114F4F2FEA03ADEAD09CE09BD5E9FBC9F23311901
        ED03AC739A2C106C3D78FA911BF7DE52964ED3C952CBF5F937DC7DB23CE04A84
        00EF258EE0ABAC314C4F8ED0FDB1CEE1F649F24268B627D95AFFC9F956036B6D
        8CB7BA03E784A860AC65FFF01E2E4D8FF2FAF10B7AA51FD4E7CCCE8C313CB41B
        6393102FA61A411D082132046B138E1F69307AC0F079E93DE32375C6C71A2469
        169A0540AA1182928041950D50ABD5B97CE10443DD6F5C9C99A056DF01860815
        F11204527141354BACE61B3E967D83516E5D9B22491275054284203111493737
        375FCDDD7C745A88EA02FA5491C5855021EFFF59020A03EC0432C0B21DC1F876
        085000BD7F8CA0608FE53C7C9B0000000049454E44AE426082}
      TabOrder = 18
      OnClick = cxButton1Click
    end
    object edtLink: TcxDBHyperLinkEdit [33]
      Left = 13
      Top = 469
      DataBinding.DataField = 'LINK'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 55
      OnClick = edtLinkClick
      Width = 852
    end
    object chkUsaCertificadoPeloExplorer: TcxDBCheckBox [34]
      Left = 37
      Top = 299
      Caption = 'Consulta Situa'#231#227'o de Lote'
      DataBinding.DataField = 'TEM_CONSSIT'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 30
      Transparent = True
    end
    object cxDBCheckBox1: TcxDBCheckBox [35]
      Left = 37
      Top = 277
      Caption = 'Consulta Lote'
      DataBinding.DataField = 'TEM_CONSLOTE'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 29
      Transparent = True
    end
    object cxDBCheckBox2: TcxDBCheckBox [36]
      Left = 37
      Top = 321
      Caption = 'NFSe por RPS'
      DataBinding.DataField = 'TEM_CONSNFSERPS'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 31
      Transparent = True
    end
    object cxDBCheckBox3: TcxDBCheckBox [37]
      Left = 37
      Top = 343
      Caption = 'Consulta de NFSe'
      DataBinding.DataField = 'TEM_CONSNFSE'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 32
      Transparent = True
    end
    object cxDBCheckBox4: TcxDBCheckBox [38]
      Left = 37
      Top = 255
      Caption = 'Cancelamnto de NFSe'
      DataBinding.DataField = 'TEM_CANCELAR'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 28
      Transparent = True
    end
    object cxDBCheckBox5: TcxDBCheckBox [39]
      Left = 451
      Top = 189
      Caption = 'CNPJ Obrigat'#243'rio'
      DataBinding.DataField = 'TEM_OBRIGATORIO_CNPJ'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 41
      Transparent = True
    end
    object cxDBCheckBox6: TcxDBCheckBox [40]
      Left = 451
      Top = 211
      Caption = 'Inscri'#231#227'o Municipal Obrigatoria'
      DataBinding.DataField = 'TEM_OBRIGATORIO_IM'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 42
      Transparent = True
    end
    object cxDBCheckBox7: TcxDBCheckBox [41]
      Left = 451
      Top = 233
      Caption = 'Solicita Login'
      DataBinding.DataField = 'TEM_OBRIGATORIO_LOGIN'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 43
      Transparent = True
    end
    object cxDBCheckBox8: TcxDBCheckBox [42]
      Left = 451
      Top = 255
      Caption = 'Solicita Senha'
      DataBinding.DataField = 'TEM_OBRIGATORIO_SENHA'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 44
      Transparent = True
    end
    object cxDBCheckBox9: TcxDBCheckBox [43]
      Left = 37
      Top = 365
      Caption = 'Subistituir'
      DataBinding.DataField = 'TEM_SUBSTITUIR'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 33
      Transparent = True
    end
    object cxDBCheckBox10: TcxDBCheckBox [44]
      Left = 37
      Top = 189
      Caption = 'Rec Sincronismo (Sincrono)'
      DataBinding.DataField = 'TEM_RECSINCRONO'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 25
      Transparent = True
    end
    object cxDBCheckBox11: TcxDBCheckBox [45]
      Left = 37
      Top = 211
      Caption = 'Recepicionar (Assincrono)'
      DataBinding.DataField = 'TEM_RECEPCIONAR'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 26
      Transparent = True
    end
    object cxDBCheckBox12: TcxDBCheckBox [46]
      Left = 37
      Top = 233
      Caption = 'Gerar (Gerar)'
      DataBinding.DataField = 'TEM_GERAR'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 27
      Transparent = True
    end
    object cxDBCheckBox13: TcxDBCheckBox [47]
      Left = 219
      Top = 189
      Caption = 'Solicita Certificado digital'
      DataBinding.DataField = 'TEM_CERTIFICADO_DIGITAL'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 35
      Transparent = True
    end
    object cxDBCheckBox14: TcxDBCheckBox [48]
      Left = 219
      Top = 343
      Caption = 'Tem Quebra de Linha no Retorno'
      DataBinding.DataField = 'TEM_QUEBRADELINHARETORNO'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 36
      Transparent = True
    end
    object edtMetodo_Envio: TcxDBComboBox [49]
      Left = 37
      Top = 167
      AutoSize = False
      DataBinding.DataField = 'METODO_ENVIO'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'Assincrono'
        'Sincrono'
        'Gerar')
      Properties.OnValidate = cxDBComboBox1PropertiesValidate
      Style.HotTrack = False
      TabOrder = 24
      Height = 21
      Width = 157
    end
    object cxDBCheckBox15: TcxDBCheckBox [50]
      Left = 219
      Top = 365
      Caption = 'Tabula'#231#227'o'
      DataBinding.DataField = 'TEM_TABULACAO'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 37
      Transparent = True
    end
    object edtQuebraDeLinha: TcxDBTextEdit [51]
      Left = 219
      Top = 167
      DataBinding.DataField = 'QUEBRADELINHA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 34
      Width = 183
    end
    object cxDBCheckBox16: TcxDBCheckBox [52]
      Left = 219
      Top = 387
      Caption = 'E Comercial &&'
      DataBinding.DataField = 'TEM_ECOMERCIAL'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 38
      Transparent = True
    end
    object cxDBCheckBox17: TcxDBCheckBox [53]
      Left = 219
      Top = 409
      Caption = 'Tem Quebra de Linha '#218'NICA'
      DataBinding.DataField = 'TEM_TAGQUEBRADELINHAUNICA'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 39
      Transparent = True
    end
    object chkTem_Impressao_Betha: TcxDBCheckBox [54]
      Left = 645
      Top = 241
      Caption = 'Impress'#227'o Betha Fly Nota'
      DataBinding.DataField = 'TEM_IMPRESSAOBETAFLYNOTA'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = cxDBCheckBox18PropertiesChange
      Style.HotTrack = False
      TabOrder = 49
      Transparent = True
    end
    object chkTem_Multiplos_Servico: TcxDBCheckBox [55]
      Left = 645
      Top = 197
      Caption = 'Tem M'#250'ltiplos Servi'#231'os.'
      DataBinding.DataField = 'TEM_MULTIPLOS_SERVICOS'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 47
      Transparent = True
    end
    object cxDBCheckBox20: TcxDBCheckBox [56]
      Left = 645
      Top = 219
      Caption = 'Impress'#227'o XML WR'
      DataBinding.DataField = 'TEM_IMPRESSAO_XML_WR'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 48
      Transparent = True
    end
    object edtCompetencia: TcxDBComboBox [57]
      Left = 708
      Top = 175
      Hint = 
        'proGoiania = '#39#39#13#10'proISSDigital, proSisPMJP, proFriburgo, pro4R, ' +
        'proPronimv2, proISSe = '#39'YYYY-MM-DD'#39#13#10'Todo o resto = '#39'yyyymm'#39#13#10
      AutoSize = False
      DataBinding.DataField = 'COMPETENCIA'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        ''
        'YYYY-MM-DD'
        'yyyymm')
      Style.HotTrack = False
      TabOrder = 46
      Height = 21
      Width = 130
    end
    object cxDBCheckBox21: TcxDBCheckBox [58]
      Left = 645
      Top = 263
      Caption = 'Tem Cod Pais (Ex.: Friburgo, 4R)'
      DataBinding.DataField = 'TEM_CODPAIS'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 50
      Transparent = True
    end
    object cxDBCheckBox18: TcxDBCheckBox [59]
      Left = 645
      Top = 285
      Caption = 'Pode Preencher IE no Mesmo Mun.'
      DataBinding.DataField = 'PODE_PREECHER_IE_Mesmo_Mun'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 51
      Transparent = True
    end
    object chkTem_Consulta_Apos_Envio: TcxDBCheckBox [60]
      Left = 645
      Top = 307
      Caption = 'Consulta Ap'#243's Envio'
      DataBinding.DataField = 'TEM_CONSULTA_APOS_ENVIO'
      DataBinding.DataSource = DS
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 52
      Transparent = True
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 13
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = dxLayoutGroup1
      Index = 2
    end
    object LiedtMemo: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Arquivo INI'
      CaptionOptions.Visible = False
      Control = edtMemo
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      UseIndent = False
      Index = 3
    end
    object LibtnAtualizar: TdxLayoutItem
      Parent = GrupoMenuInterno
      Offsets.Top = 20
      CaptionOptions.Visible = False
      Control = btnAtualizar
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoMenuInterno
      CaptionOptions.Visible = False
      Control = btnLerProvedor
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Configura'#231#227'o'
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Tipo de RPS'
      Control = edtTipoRPS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Configura'#231#227'o Lidas pelo arquivo INI '
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Text = 'Configura'#231#245'es manuais equipe WR2 Sistemas'
      Index = 1
    end
    object LiedtLC116_Servico: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      CaptionOptions.Text = '"Servi'#231'o" - C'#243'digo do servi'#231'o segue o que est'#225' descrito na Lei '
      CaptionOptions.Layout = clTop
      Control = edtLC116_Servico
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 146
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtCNAE_Obrigatorio: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'CNAE Obrigat'#243'rio do Prestador'
      CaptionOptions.Layout = clTop
      Control = edtCNAE_Obrigatorio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 146
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtLC116_Codigo_Tributavel_Municipio: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      CaptionOptions.Text = '"Codigo Tributa'#231#227'o Municipal" - Comportamento'
      CaptionOptions.Layout = clTop
      Control = edtLC116_Codigo_Tributavel_Municipio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 262
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = GrupoMenuInterno
      Visible = False
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'M'#233'todos Dispon'#237'veis [SoapAction]'
      ItemIndex = 1
      Index = 0
    end
    object LiedtLink: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 
        'Para mais informa'#231#245'es sobre como configurar este provedor, acess' +
        'e nossa p'#225'gina de suporte pelo link abaixo'
      CaptionOptions.Layout = clTop
      Control = edtLink
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkUsaCertificadoPeloExplorer
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 149
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 149
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 153
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'Dados Prestador'
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 131
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 131
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Geral'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 149
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Remover'
      ItemIndex = 3
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 141
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 141
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'M'#233'todo de Envio (Padr'#227'o)'
      CaptionOptions.Layout = clTop
      Control = edtMetodo_Envio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox15
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtQuebraDeLinha: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Quebra de Linha'
      CaptionOptions.Layout = clTop
      Control = edtQuebraDeLinha
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox16
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'Configura'#231#227'o'
      ItemIndex = 7
      Index = 1
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = chkTem_Impressao_Betha
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Lei Complementar LC 116 / 2003'
      ItemIndex = 1
      Index = 1
    end
    object LichkTem_Multiplos_Servico: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Visible = False
      Control = chkTem_Multiplos_Servico
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Visible = False
      Control = cxDBCheckBox20
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Competencia'
      Control = edtCompetencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Visible = False
      Control = cxDBCheckBox21
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Visible = False
      Control = cxDBCheckBox18
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 178
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LichkTem_Consulta_Apos_Envio: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Visible = False
      Control = chkTem_Consulta_Apos_Envio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 193
      ControlOptions.ShowBorder = False
      Index = 7
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmNF_Provedor'
    FormClassConsulta = 'TConsuNF_Provedor'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM NF_PROVEDOR'
      'WHERE CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'NF_PROVEDOR'
    Modulo = 'NOTA_FISCAL'
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 589
    Top = 253
  end
end
