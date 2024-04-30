inherited FrmNF_Erros: TFrmNF_Erros
  Caption = 'Cadastro de Tratamento de erros da Nota Fiscal'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 18
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 659
      TabOrder = 23
      ExplicitLeft = 659
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
      TabOrder = 19
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 31
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 30
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 852
      TabOrder = 28
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 852
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 615
      TabOrder = 22
      ExplicitLeft = 615
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Tratamento de erros da Nota Fiscal'
    end
    object btnAtualizar: TcxButton [24]
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
    object edtLink: TcxDBTextEdit [25]
      Left = 3
      Top = 685
      DataBinding.DataField = 'LINK'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 29
      Width = 872
    end
    object edtTela: TcxDBTextEdit [26]
      Left = 3
      Top = 99
      DataBinding.DataField = 'TELA'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 24
      Width = 255
    end
    object EdtComponente: TcxDBTextEdit [27]
      Left = 515
      Top = 99
      DataBinding.DataField = 'COMPONENTE'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 26
      Width = 255
    end
    object edtObservacao: TcxDBRichEdit [28]
      Left = 13
      Top = 155
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Properties.PlainText = True
      Style.HotTrack = False
      TabOrder = 27
      Height = 505
      Width = 852
    end
    object edtTipo_Documento: TcxDBComboBox [29]
      Left = 514
      Top = 61
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TIPO_DOCUMENTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      Properties.OnChange = CbxAtivoPropertiesChange
      Properties.OnEditValueChanged = CbxAtivoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 100
    end
    object edtErro: TcxDBTextEdit [30]
      Left = 463
      Top = 61
      DataBinding.DataField = 'ERRO'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 20
      Width = 50
    end
    object edtCampo: TcxDBTextEdit [31]
      Left = 259
      Top = 99
      DataBinding.DataField = 'CAMPO'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 25
      Width = 255
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 5
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 11
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Index = 1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 5
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 4
    end
    object LibtnAtualizar: TdxLayoutItem
      Parent = GrupoMenuInterno
      CaptionOptions.Visible = False
      Offsets.Top = 20
      Control = btnAtualizar
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object LiedtLink: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Link'
      CaptionOptions.Layout = clTop
      Control = edtLink
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 406
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LiedtTela: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Tela'
      CaptionOptions.Layout = clTop
      Control = edtTela
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 255
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiEdtComponente: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Componente'
      CaptionOptions.Layout = clTop
      Control = EdtComponente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 255
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object LiedtObservacao: TdxLayoutItem
      Parent = GrupoLogAlteracoes
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Visible = False
      Control = edtObservacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtTipo_Documento: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Tipo Documento'
      CaptionOptions.Layout = clTop
      Control = edtTipo_Documento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LiedtErro: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Erro'
      CaptionOptions.Layout = clTop
      Control = edtErro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtCampo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Campo'
      CaptionOptions.Layout = clTop
      Control = edtCampo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 255
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
    FormClassCadastro = 'TFrmNF_Erros'
    FormClassConsulta = 'TConsuNF_Erros'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM NF_ERROS'
      'WHERE CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'NF_ERROS'
    Modulo = 'NOTA_FISCAL'
  end
end
