inherited FrmNF_CNAE: TFrmNF_CNAE
  Caption = 'Cadastro de CNAE-Classifica'#231#227'o Nacional de Atividades Econ'#244'micas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      Properties.ReadOnly = False
      Style.Color = clSkyBlue
      TabOrder = 18
      ExplicitWidth = 118
      Width = 118
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 573
      TabOrder = 21
      ExplicitLeft = 573
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 122
      Properties.CharCase = ecNormal
      TabOrder = 19
      ExplicitLeft = 122
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 28
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 27
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 26
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 529
      TabOrder = 20
      ExplicitLeft = 529
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de CNAE-Classifica'#231#227'o Nacional de Atividades Econ'#244'micas'
    end
    object cxDBComboBox1: TcxDBComboBox [24]
      Left = 3
      Top = 97
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'SECAO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H'
        'I'
        'J'
        'K'
        'L'
        'M'
        'N'
        'O'
        'P'
        'Q'
        'R'
        'S'
        'T'
        'U'
        ' ')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 22
      Height = 21
      Width = 52
    end
    object cxDBTextEdit1: TcxDBTextEdit [25]
      Left = 56
      Top = 97
      DataBinding.DataField = 'DIVISAO'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 23
      Width = 65
    end
    object cxDBTextEdit2: TcxDBTextEdit [26]
      Left = 122
      Top = 97
      DataBinding.DataField = 'GRUPO'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 24
      Width = 65
    end
    object cxDBTextEdit3: TcxDBTextEdit [27]
      Left = 188
      Top = 97
      DataBinding.DataField = 'CLASSE'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 25
      Width = 93
    end
    object btnAtualizar: TcxButton [28]
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
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited LiedtCodigo: TdxLayoutItem
      ControlOptions.OriginalWidth = 118
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 11
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      AlignVert = avBottom
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Se'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Divis'#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Grupo'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Classe'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = GrupoMenuInterno
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Padding.Top = 20
      Padding.AssignedValues = [lpavTop]
      Control = btnAtualizar
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 11
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
    FormClassCadastro = 'TFrmNF_CNAE'
    FormClassConsulta = 'TConsuNF_CNAE'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM NF_CNAE'
      'where Codigo = :Codigo ')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 9
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    Tabela = 'NF_CNAE'
    Modulo = 'NOTA_FISCAL'
  end
end
