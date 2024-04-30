inherited FrmCidades: TFrmCidades
  Caption = 'Cadastro de Cidades'
  ClientHeight = 741
  ClientWidth = 1024
  ExplicitWidth = 1040
  ExplicitHeight = 780
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    Width = 1024
    Height = 721
    ExplicitWidth = 1024
    ExplicitHeight = 721
    DesignSize = (
      1024
      721)
    inherited btnNovo: TcxButton
      Left = 888
      Top = 29
      Width = 117
      ExplicitLeft = 888
      ExplicitTop = 29
      ExplicitWidth = 117
    end
    inherited btnConfirmar: TcxButton
      Left = 888
      Top = 54
      Width = 117
      ExplicitLeft = 888
      ExplicitTop = 54
      ExplicitWidth = 117
    end
    inherited btnAlterar: TcxButton
      Left = 888
      Top = 79
      Width = 117
      ExplicitLeft = 888
      ExplicitTop = 79
      ExplicitWidth = 117
    end
    inherited btnCancelar: TcxButton
      Left = 888
      Top = 104
      Width = 117
      ExplicitLeft = 888
      ExplicitTop = 104
      ExplicitWidth = 117
    end
    inherited btnExcluir: TcxButton
      Left = 888
      Top = 129
      Width = 117
      ExplicitLeft = 888
      ExplicitTop = 129
      ExplicitWidth = 117
    end
    inherited btnConsultar: TcxButton
      Left = 888
      Top = 274
      Width = 117
      ExplicitLeft = 888
      ExplicitTop = 274
      ExplicitWidth = 117
    end
    inherited btnSair: TcxButton
      Left = 888
      Top = 788
      Width = 117
      ExplicitLeft = 888
      ExplicitTop = 788
      ExplicitWidth = 117
    end
    inherited edtCodigo: TcxDBTextEdit
      Top = 59
      Properties.MaxLength = 7
      Properties.ReadOnly = False
      Style.Color = clWhite
      TabOrder = 20
      ExplicitTop = 59
      ExplicitWidth = 110
      Width = 110
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 758
      Top = 59
      TabStop = False
      TabOrder = 27
      ExplicitLeft = 758
      ExplicitTop = 59
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 113
      Top = 59
      Properties.CharCase = ecNormal
      Properties.LookupItems.Strings = (
        #193'FRICA DO SUL'
        'ALB'#194'NIA'
        'ALEMANHA'
        'ANDORRA'
        'ANGOLA'
        'ANT'#205'GUA E BARBUDA'
        'AR'#193'BIA SAUDITA'
        'ARG'#201'LIA'
        'ARGENTINA'
        'ARM'#201'NIA'
        'AUSTR'#193'LIA'
        #193'USTRIA'
        'AZERBAIJ'#195'O'
        'BAHAMAS'
        'BAHRAIN'
        'BANGLADESH'
        'BARBADOS'
        'B'#201'LGICA'
        'BELIZE'
        'BENIM'
        'BERMUDAS'
        'BIELORR'#218'SSIA'
        'BOL'#205'VIA'
        'B'#211'SNIA E HERZEGOVINA'
        'BOTSWANA'
        'BRASIL'
        'BRUNEI'
        'BULG'#193'RIA'
        'BURKINA FASO'
        'BURUNDI'
        'BUT'#195'O'
        'CABO VERDE'
        'CAMAR'#213'ES'
        'CAMBOJA'
        'CANAD'#193
        'CATAR'
        'CAZAQUIST'#195'O'
        'CHADE'
        'CHILE'
        'CHINA'
        'CHIPRE'
        'CISJORD'#194'NIA E FAIXA DE GAZA'
        'COL'#212'MBIA'
        'COMORES'
        'CONGO'
        'COREIA DO NORTE'
        'COREIA DO SUL'
        'COSTA DO MARFIM'
        'COSTA RICA'
        'CRO'#193'CIA'
        'CUBA'
        'DINAMARCA'
        'DJIBOUTI'
        'DOMINICA'
        'EGIPTO'
        'EL SALVADOR'
        'EMIRADOS '#193'RABES UNIDOS'
        'EQUADOR'
        'ERITREIA'
        'ESLOV'#193'QUIA'
        'ESLOV'#201'NIA'
        'ESPANHA'
        'ESTADOS FEDERADOS DA MICRON'#201'SIA'
        'ESTADOS UNIDOS'
        'EST'#211'NIA'
        'ETI'#211'PIA'
        'FAIXA DE GAZA E CISJORD'#194'NIA'
        'FIJI'
        'FILIPINAS'
        'FINL'#194'NDIA'
        'FRAN'#199'A'
        'GAB'#195'O'
        'G'#194'MBIA'
        'GANA'
        'GE'#211'RGIA'
        'GRANADA'
        'GR'#201'CIA'
        'GUATEMALA'
        'GUIANA'
        'GUIN'#201
        'GUIN'#201'-BISSAU'
        'GUIN'#201' EQUATORIAL'
        'HAITI'
        'HONDURAS'
        'HUNGRIA'
        'I'#201'MEN'
        'ILHAS MARSHALL'
        'ILHAS SALOM'#195'O'
        #205'NDIA'
        'INDON'#201'SIA'
        'IR'#195'O'
        'IRAQUE'
        'IRLANDA'
        'ISL'#194'NDIA'
        'ISRAEL'
        'IT'#193'LIA'
        'JAMAICA'
        'JAP'#195'O'
        'JORD'#194'NIA'
        'KIRIBATI'
        'KUWAIT'
        'LAOS'
        'LESOTO'
        'LET'#211'NIA'
        'L'#205'BANO'
        'LIB'#201'RIA'
        'L'#205'BIA'
        'LIECHTENSTEIN'
        'LITU'#194'NIA'
        'LUXEMBURGO'
        'MACED'#211'NIA'
        'MADAG'#193'SCAR'
        'MALAWI'
        'MAL'#193'SIA'
        'MALDIVAS'
        'MALI'
        'MALTA'
        'MARROCOS'
        'MAURIT'#194'NIA'
        'MAUR'#205'CIA'
        'M'#201'XICO'
        'MO'#199'AMBIQUE'
        'MOLD'#193'VIA'
        'MONG'#211'LIA'
        'MYANMAR'
        'NAM'#205'BIA'
        'NAURU'
        'NEPAL'
        'NICAR'#193'GUA'
        'N'#205'GER'
        'NIG'#201'RIA'
        'NIUE'
        'NORUEGA'
        'NOVA ZEL'#194'NDIA'
        'OM'#195
        'PA'#205'SES BAIXOS'
        'PALAU'
        'PANAM'#193
        'PAPUA-NOVA GUIN'#201
        'PAQUIST'#195'O'
        'PARAGUAI'
        'PERU'
        'POL'#211'NIA'
        'PORTUGAL'
        'QU'#201'NIA'
        'QUIRGUIST'#195'O'
        'REINO UNIDO'
        'REP'#218'BLICA CENTRO-AFRICANA'
        'REP'#218'BLICA CHECA'
        'REP'#218'BLICA DEMOCR'#193'TICA DO CONGO'
        'REP'#218'BLICA DOMINI')
      TabOrder = 21
      ExplicitLeft = 113
      ExplicitTop = 59
      ExplicitWidth = 229
      Width = 229
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 888
      Top = 219
      Width = 59
      ExplicitLeft = 888
      ExplicitTop = 219
      ExplicitWidth = 59
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 947
      Top = 219
      Width = 58
      ExplicitLeft = 947
      ExplicitTop = 219
      ExplicitWidth = 58
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 44
    end
    inherited BtnSeguidores: TcxButton
      Left = 977
      TabOrder = 42
      ExplicitLeft = 977
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 966
      Width = 39
      ExplicitLeft = 966
      ExplicitWidth = 39
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 43
    end
    inherited PnlFrameHistorico: TPanel
      Top = 548
      Width = 849
      TabOrder = 41
      ExplicitTop = 548
      ExplicitWidth = 849
    end
    inherited BtnImprimir: TcxButton
      Top = 314
      ExplicitTop = 314
    end
    inherited BtnDesativar: TcxButton
      Left = 888
      Top = 179
      Width = 117
      ExplicitLeft = 888
      ExplicitTop = 179
      ExplicitWidth = 117
    end
    inherited BtnAtivar: TcxButton
      Left = 888
      Top = 154
      Width = 117
      ExplicitLeft = 888
      ExplicitTop = 154
      ExplicitWidth = 117
    end
    inherited BtnAjuda: TcxButton
      Left = 888
      Width = 39
      ExplicitLeft = 888
      ExplicitWidth = 39
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 715
      Top = 59
      TabOrder = 26
      ExplicitLeft = 715
      ExplicitTop = 59
    end
    inherited BtnImprimirPadrao: TcxButton
      Left = 888
      Top = 314
      Width = 92
      ExplicitLeft = 888
      ExplicitTop = 314
      ExplicitWidth = 92
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Cidades'
      ExplicitWidth = 873
    end
    inherited btnSeguidoresNovo: TcxButton
      Left = 927
      Width = 39
      ExplicitLeft = 927
      ExplicitWidth = 39
    end
    object edtUF: TcxDBTextEdit [25]
      Left = 689
      Top = 59
      DataBinding.DataField = 'UF'
      DataBinding.DataSource = DS
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 25
      Width = 26
    end
    object edtCodPais: TcxDBTextEdit [26]
      Left = 124
      Top = 94
      DataBinding.DataField = 'CODPAIS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 29
      Width = 121
    end
    object edtPais: TcxDBLookupComboBox [27]
      Left = 3
      Top = 94
      AutoSize = False
      DataBinding.DataField = 'PAIS'
      DataBinding.DataSource = DS
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownRows = 20
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'DESCRICAO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DSPais
      Properties.OnEditValueChanged = edtCodPaisPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 28
      Height = 21
      Width = 121
    end
    object edtNFSeProprio: TcxDBTextEdit [28]
      Left = 15
      Top = 427
      DataBinding.DataField = 'COD_CIDADE_PROPRIO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 38
      Width = 318
    end
    object edtEstado: TcxDBComboBox [29]
      Left = 342
      Top = 59
      DataBinding.DataField = 'ESTADO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 22
      Width = 157
    end
    object edtLC116: TcxDBComboBox [30]
      Left = 15
      Top = 497
      AutoSize = False
      DataBinding.DataField = 'TEM_LC116'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 40
      Height = 21
      Width = 318
    end
    object edtHomologado: TcxDBComboBox [31]
      Left = 15
      Top = 392
      AutoSize = False
      DataBinding.DataField = 'NFSE_HOMOLOGADO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 37
      Height = 21
      Width = 318
    end
    object edtTem_Homologacao: TcxDBComboBox [32]
      Left = 15
      Top = 462
      AutoSize = False
      DataBinding.DataField = 'TEM_HOMOLOGACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 39
      Height = 21
      Width = 318
    end
    object btnAtualizar: TcxButton [33]
      Left = 888
      Top = 359
      Width = 117
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
    object cxButton1: TcxButton [34]
      Left = 888
      Top = 394
      Width = 117
      Height = 35
      Caption = 'Ler XLS'
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
      OnClick = cxButton1Click
    end
    object edtNFSE_LinkURL_P: TcxDBTextEdit [35]
      Left = 15
      Top = 217
      DataBinding.DataField = 'NFSE_LINKURL_H'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 32
      Width = 318
    end
    object edtNFSE_LinkURL_H: TcxDBTextEdit [36]
      Left = 15
      Top = 252
      DataBinding.DataField = 'NFSE_LINKURL_H'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 33
      Width = 318
    end
    object edtNFSe_Banco_P: TcxDBTextEdit [37]
      Left = 15
      Top = 287
      DataBinding.DataField = 'NFSE_BANCO_P'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 34
      Width = 318
    end
    object edtNFSe_RPS_Serie_P: TcxDBTextEdit [38]
      Left = 15
      Top = 322
      DataBinding.DataField = 'NFSE_RPS_SERIE_P'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 35
      Width = 318
    end
    object edtNFSe_RPS_Serie_H: TcxDBTextEdit [39]
      Left = 15
      Top = 357
      DataBinding.DataField = 'NFSE_RPS_SERIE_P'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 36
      Width = 318
    end
    object cxButton2: TcxButton [40]
      Left = 888
      Top = 429
      Width = 117
      Height = 35
      Caption = 'Ler Cidades.INI'
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
      OnClick = cxButton2Click
    end
    object edtNFSE_NomeURL_P: TcxDBTextEdit [41]
      Left = 15
      Top = 147
      DataBinding.DataField = 'NFSE_NOMEURL_P'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 30
      Width = 318
    end
    object edtNFSE_NomeURL_H: TcxDBTextEdit [42]
      Left = 15
      Top = 182
      DataBinding.DataField = 'NFSE_NOMEURL_H'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 31
      Width = 318
    end
    object cxbProvedorNFSe: TcxDBLookupComboBox [43]
      Left = 499
      Top = 59
      AutoSize = False
      DataBinding.DataField = 'NFSE_PROVEDOR'
      DataBinding.DataSource = DS
      Properties.ListColumns = <>
      Properties.OnChange = cxbProvedorNFSePropertiesChange
      Properties.OnEditValueChanged = cxbProvedorNFSePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 145
    end
    object cxDBTextEdit1: TcxDBTextEdit [44]
      Left = 644
      Top = 61
      DataBinding.DataField = 'CODPAIS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 24
      Width = 45
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      AllowRemove = False
      ItemIndex = 4
    end
    inherited GrupoMenu: TdxLayoutGroup
      AlignVert = avClient
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited LiedtCodigo: TdxLayoutItem
      ControlOptions.OriginalWidth = 110
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 7
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 10
    end
    inherited LiedtDescricao: TdxLayoutItem
      ControlOptions.OriginalWidth = 229
    end
    inherited LiBtnSeguidores: TdxLayoutItem
      AlignVert = avClient
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      AlignHorz = ahClient
      AlignVert = avTop
      Index = -1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Index = 5
    end
    inherited LicbxAtivo: TdxLayoutItem
      AlignVert = avBottom
      Index = 6
    end
    inherited GrupoCadImpressao: TdxLayoutGroup
      ItemIndex = 1
    end
    object liedtUF: TdxLayoutItem
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'UF'
      CaptionOptions.Layout = clTop
      Control = edtUF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtCodPais: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo do Pa'#237's (NFe)'
      CaptionOptions.Layout = clTop
      Control = edtCodPais
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtPais: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Pa'#237's'
      CaptionOptions.Layout = clTop
      Control = edtPais
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtNFSeProprio: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      Visible = False
      CaptionOptions.Text = 'Cod NFSe Pr'#243'prio Provedor Goiania'
      CaptionOptions.Layout = clTop
      Control = edtNFSeProprio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object liedtEstado: TdxLayoutItem
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'Estado'
      CaptionOptions.Layout = clTop
      Control = edtEstado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtLC116: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      Visible = False
      CaptionOptions.Hint = 'Lista de Servi'#231'os Nacional'
      CaptionOptions.Text = 'Lei 116/2003'
      CaptionOptions.Layout = clTop
      Control = edtLC116
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LiedtHomologado: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      Visible = False
      CaptionOptions.Text = 'Homologado'
      CaptionOptions.Layout = clTop
      Control = edtHomologado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoNFSe_Configuracao
      CaptionOptions.Text = 'Provedor da NFSe'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object GrupoNFSe_Configuracao: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Configura'#231#227'o do Provedor da NFSe'
      Index = 4
    end
    object LiedtTem_Homologacao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      Visible = False
      CaptionOptions.Text = 'Tem Homologa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtTem_Homologacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LibtnAtualizar: TdxLayoutItem
      Parent = GrupoMenuInterno
      Offsets.Top = 20
      CaptionOptions.Visible = False
      Control = btnAtualizar
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 144
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoMenuInterno
      Visible = False
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object LiedtNFSE_LinkURL_P: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      Visible = False
      CaptionOptions.Text = 'Link URL Produ'#231#227'o Provedor Fiorilli'
      CaptionOptions.Layout = clTop
      Control = edtNFSE_LinkURL_P
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtNFSE_LinkURL_H: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      Visible = False
      CaptionOptions.Text = 'Link URL Homologa'#231#227'o Provedor Fiorilli'
      CaptionOptions.Layout = clTop
      Control = edtNFSE_LinkURL_H
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 184
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      Index = 0
    end
    object LiedtNFSe_Banco_P: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      Visible = False
      CaptionOptions.Text = 'Banco P - Provedor DataSmart'
      CaptionOptions.Layout = clTop
      Control = edtNFSe_Banco_P
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 318
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtNFSe_RPS_Serie_P: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      Visible = False
      CaptionOptions.Text = 'RPS S'#233'rie UNICA Produ'#231#227'o - Provedor Agili - Cidade: Juina/MT'
      CaptionOptions.Layout = clTop
      Control = edtNFSe_RPS_Serie_P
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 184
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avTop
      Index = 4
    end
    object LiedtNFSe_RPS_Serie_H: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahRight
      Visible = False
      CaptionOptions.Text = 'RPS S'#233'rie UNICA Homologa'#231#227'o - Provedor Agili - Cidade: Juina/MT'
      CaptionOptions.Layout = clTop
      Control = edtNFSe_RPS_Serie_H
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 318
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoMenuInterno
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object LiedtNFSE_NomeURL_P: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      Visible = False
      CaptionOptions.Text = 'Nome da URL WebService do provedor - Produ'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtNFSE_NomeURL_P
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 318
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtNFSE_NomeURL_H: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      Visible = False
      CaptionOptions.Text = 'Nome da URL WebService do provedor - Homologa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtNFSE_NomeURL_H
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 318
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object licxbProvedorNFSe: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Provedor NFSe'
      CaptionOptions.Layout = clTop
      Control = cxbProvedorNFSe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Vers'#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 721
    Width = 1024
    Visible = False
    ExplicitTop = 721
    ExplicitWidth = 1024
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      GroupOptions.CaptionOptions.HotTrackStyles = []
      GroupOptions.Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Offsets.ItemOffset = 0
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 2
    FormClassCadastro = 'TFrmCidades'
    FormClassConsulta = 'TConsuCidades'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from CIDADES'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'CIDADES'
    Modulo = 'CONTATO'
  end
  object DSPais: TDataSource
    DataSet = Pais
    Left = 340
    Top = 156
  end
  object Pais: TFDQuery
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select CODIGO, DESCRICAO'
      'from PAIS')
    Left = 312
    Top = 156
  end
end
