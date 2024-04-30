object FrmNFSe: TFrmNFSe
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Configura'#231#227'o de NFSe'
  ClientHeight = 579
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LctProvedor: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 649
    Height = 291
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object chkVisualizar: TcxCheckBox
      Left = 351
      Top = 0
      Hint = 
        'Visualizar mensagens e alertas que podem aparecer durante a emis' +
        's'#227'o da nota.'
      AutoSize = False
      Caption = 'Ativar Modo DEBUG'
      Style.HotTrack = False
      TabOrder = 14
      Transparent = True
      Height = 25
      Width = 118
    end
    object seTimeOut: TcxSpinEdit
      Left = 514
      Top = 80
      Hint = 
        'Tempo limite que o sistema ficar'#225' aguardando o WebService respon' +
        'der por uma solicita'#231#227'o de consulta ou envio.'
      AutoSize = False
      Style.HotTrack = False
      TabOrder = 18
      Value = 5000
      Height = 21
      Width = 120
    end
    object cbxAjustarAut: TcxCheckBox
      Left = 358
      Top = 44
      Caption = 'Modo Autom'#225'tico (Recomendado)'
      Style.HotTrack = False
      TabOrder = 16
      Transparent = True
    end
    object edtIntervalo: TcxCurrencyEdit
      Left = 480
      Top = 116
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '#'
      Style.HotTrack = False
      TabOrder = 20
      Width = 154
    end
    object edtTentativas: TcxCurrencyEdit
      Left = 358
      Top = 116
      Hint = 'N'#250'mero de tentativas de consulta'
      AutoSize = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '#'
      Style.HotTrack = False
      TabOrder = 19
      Height = 21
      Width = 121
    end
    object edtAguardar: TcxCurrencyEdit
      Left = 358
      Top = 80
      Hint = 
        'Tempo que o sistema deve aguardar antes de consultar a nota ap'#243's' +
        ' o envio'
      AutoSize = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '#'
      Style.HotTrack = False
      TabOrder = 17
      Height = 21
      Width = 155
    end
    object edtProxyHost: TcxTextEdit
      Left = 358
      Top = 182
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object edtProxyPorta: TcxTextEdit
      Left = 480
      Top = 182
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object edtProxyUser: TcxTextEdit
      Left = 358
      Top = 218
      AutoSize = False
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 121
    end
    object edtProxySenha: TcxTextEdit
      Left = 480
      Top = 218
      Style.HotTrack = False
      TabOrder = 24
      Width = 121
    end
    object lblProvedor: TcxLabel
      Left = 5
      Top = 83
      AutoSize = False
      Caption = '<provedor>'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 4539717
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 25
      Width = 239
      AnchorY = 96
    end
    object rgTipoAmb: TcxRadioGroup
      Left = 0
      Top = 177
      Caption = 'Ambiente de Emiss'#227'o'
      ParentBackground = False
      ParentColor = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Produ'#231#227'o'
          Value = 0
        end
        item
          Caption = 'Homologa'#231#227'o'
          Value = 1
        end>
      Properties.OnChange = rgTipoAmbPropertiesChange
      ItemIndex = 0
      Style.Color = 16505534
      TabOrder = 11
      Transparent = True
      Height = 49
      Width = 345
    end
    object cbSSLType: TcxComboBox
      Left = 245
      Top = 155
      Hint = 'Depende de configura'#231#227'o de  SSL.HttpLib'
      AutoSize = False
      Properties.DropDownListStyle = lsEditFixedList
      Style.HotTrack = False
      TabOrder = 10
      Height = 21
      Width = 100
    end
    object cxLabel27: TcxLabel
      Left = 5
      Top = 0
      Caption = 
        'As configura'#231#245'es nesta p'#225'gina s'#227'o de acordo com o seu Provedor e' +
        ' Munic'#237'pio.'
      ParentFont = False
      Style.HotTrack = False
      Properties.WordWrap = True
      Transparent = True
      Width = 340
    end
    object chxPossuiHomologacao: TcxCheckBox
      Left = 5
      Top = 155
      Hint = 
        'Indica se este provedor possui suporte a emiss'#227'o de NFSe em ambi' +
        'ente de Homologa'#231#227'o'
      AutoSize = False
      Caption = 'Possui ambiente de Homologa'#231#227'o'
      Properties.OnChange = chxPossuiHomologacaoPropertiesChange
      Style.HotTrack = False
      TabOrder = 9
      Transparent = True
      Height = 21
      Width = 183
    end
    object btnConfirmar: TcxButton
      Left = 170
      Top = 227
      Width = 175
      Height = 25
      Caption = 'Confirmar'
      ModalResult = 1
      OptionsImage.ImageIndex = 1
      TabOrder = 13
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TcxButton
      Left = 0
      Top = 227
      Width = 169
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      OptionsImage.ImageIndex = 3
      TabOrder = 12
    end
    object btnProvedor: TcxButton
      Left = 245
      Top = 83
      Width = 100
      Height = 25
      Caption = 'Abrir Provedor'
      OptionsImage.ImageIndex = 1
      TabOrder = 5
      OnClick = btnProvedorClick
    end
    object btnCidade: TcxButton
      Left = 245
      Top = 57
      Width = 100
      Height = 25
      Caption = 'Abrir Cidade'
      OptionsImage.ImageIndex = 1
      TabOrder = 4
      OnClick = btnCidadeClick
    end
    object btnEmpresa: TcxButton
      Left = 245
      Top = 31
      Width = 100
      Height = 25
      Caption = 'Abrir Empresa'
      OptionsImage.ImageIndex = 1
      TabOrder = 1
      OnClick = btnEmpresaClick
    end
    object btnAvancado: TcxButton
      Left = 549
      Top = 0
      Width = 100
      Height = 25
      Caption = 'Avan'#231'ado'
      OptionsImage.ImageIndex = 1
      TabOrder = 15
      OnClick = btnAvancadoClick
    end
    object liCidade: TcxLabel
      Left = 5
      Top = 57
      AutoSize = False
      Caption = '<Cidade>'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 4539717
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 25
      Width = 239
      AnchorY = 70
    end
    object liEmpresa: TcxLabel
      Left = 5
      Top = 31
      AutoSize = False
      Caption = '<Empresa>'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 4539717
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 25
      Width = 239
      AnchorY = 44
    end
    object btnProximoNumero: TcxButton
      Left = 228
      Top = 109
      Width = 117
      Height = 24
      Caption = 'Pr'#243'ximo N'#250'mero'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 18
      OptionsImage.Glyph.SourceWidth = 18
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
        31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
        4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
        3732373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C
        3A233131373744373B7D262331333B262331303B2623393B2E57686974657B66
        696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
        6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
        2E7374337B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C672F
        3E0D0A3C672069643D224175746F6D6174696355706461746573223E0D0A0909
        3C7061746820636C6173733D22477265656E2220643D224D31352E362C32352E
        314C31342E362C3235632D312D302E322D312E362D312D312E362D32762D312E
        31632D302E332C302D302E372C302E312D312C302E31632D342E342C302D382D
        332E362D382D3863302D342E342C332E362D382C382D3820202623393B262339
        3B63322E322C302C342E322C302E392C352E362C322E344C31342C313268352E
        3748323268312E3848323456326C2D332E352C332E354331382E332C332E332C
        31352E332C322C31322C3243352E342C322C302C372E342C302C313463302C36
        2E362C352E342C31322C31322C313220202623393B2623393B63312E312C302C
        322E322D302E322C332E332D302E354C31352E362C32352E317A222F3E0D0A09
        093C7061746820636C6173733D22426C75652220643D224D33312C3233762D32
        6C2D322E322D302E34632D302E322D302E362D302E342D312E332D302E382D31
        2E386C312E332D312E386C2D312E342D312E346C2D312E382C312E33632D302E
        352D302E332D312E322D302E362D312E382D302E374C32342C3134682D322020
        2623393B2623393B6C2D302E342C322E32632D302E362C302E322D312E332C30
        2E342D312E382C302E374C31382C31352E364C31362E362C31376C312E332C31
        2E38632D302E332C302E352D302E362C312E322D302E382C312E384C31352C32
        3176326C322E322C302E3463302E322C302E362C302E342C312E332C302E382C
        312E3820202623393B2623393B4C31362E372C32376C312E342C312E346C312E
        382D312E3363302E352C302E332C312E322C302E362C312E382C302E374C3232
        2C333068326C302E342D322E3263302E362D302E322C312E332D302E342C312E
        382D302E376C312E382C312E336C312E342D312E346C2D312E332D312E382020
        2623393B2623393B63302E332D302E352C302E362D312E322C302E382D312E38
        4C33312C32337A204D32332C3234632D312E312C302D322D302E392D322D3273
        302E392D322C322D3273322C302E392C322C325332342E312C32342C32332C32
        347A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      TabOrder = 8
      WordWrap = True
      OnClick = btnProximoNumeroClick
    end
    object lblProximoNumero: TcxLabel
      Left = 0
      Top = 109
      AutoSize = False
      Caption = '<proximo n'#250'mero>'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = 4539717
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 25
      Width = 227
      AnchorY = 122
    end
    object LctProvedorGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup25: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object GrupoBasico: TdxLayoutGroup
      Parent = LctProvedorGroup_Root
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup46: TdxLayoutGroup
      Parent = GrupoBasico
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'WebService'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem144: TdxLayoutItem
      Parent = dxLayoutGroup46
      CaptionOptions.Text = 'cxRadioGroup2'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = rgTipoAmb
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 49
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem166: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'SSL Type'
      CaptionOptions.Layout = clTop
      Control = cbSSLType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem201: TdxLayoutItem
      Parent = dxLayoutGroup6
      Offsets.Left = 5
      CaptionOptions.Visible = False
      Control = cxLabel27
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem203: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxLabel3'
      CaptionOptions.Visible = False
      Control = lblProvedor
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem141: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      Offsets.Left = 5
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chxPossuiHomologacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoAvancado: TdxLayoutGroup
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Avan'#231'ado'
      Visible = False
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem143: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = chkVisualizar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup34: TdxLayoutGroup
      Parent = GrupoAvancado
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Tempo de Espera'
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutItem146: TdxLayoutItem
      Parent = dxLayoutGroup34
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = cbxAjustarAut
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 186
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup33: TdxLayoutGroup
      Parent = dxLayoutGroup34
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem150: TdxLayoutItem
      Parent = dxLayoutGroup33
      CaptionOptions.Text = 'Aguardar antes de consultar'
      CaptionOptions.Layout = clTop
      Control = edtAguardar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem145: TdxLayoutItem
      Parent = dxLayoutGroup33
      CaptionOptions.Text = 'Tempo limite de espera'
      CaptionOptions.Layout = clTop
      Control = seTimeOut
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup27: TdxLayoutGroup
      Parent = dxLayoutGroup34
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem149: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignVert = avClient
      CaptionOptions.Text = 'Tentativas'
      CaptionOptions.Layout = clTop
      Control = edtTentativas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem148: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Intervalo entre as tentativas'
      CaptionOptions.Layout = clTop
      Control = edtIntervalo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup23: TdxLayoutGroup
      Parent = GrupoAvancado
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Proxy'
      Index = 1
    end
    object dxLayoutGroup24: TdxLayoutGroup
      Parent = dxLayoutGroup23
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem151: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Host'
      CaptionOptions.Layout = clTop
      Control = edtProxyHost
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem152: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Porta'
      CaptionOptions.Layout = clTop
      Control = edtProxyPorta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup26: TdxLayoutGroup
      Parent = dxLayoutGroup23
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem153: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Usu'#225'rio'
      CaptionOptions.Layout = clTop
      Control = edtProxyUser
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem154: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Senha'
      CaptionOptions.Layout = clTop
      Control = edtProxySenha
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = btnConfirmar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnCancelar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LibtnProvedor: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnProvedor
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LibtnCidade: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnCidade
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LibtnEmpresa: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnEmpresa
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LibtnAvancado: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnAvancado
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = liCidade
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoBasico
      AlignHorz = ahCenter
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Group'
      Offsets.Left = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Offsets.Left = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Offsets.Left = 5
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'New Group'
      Offsets.Left = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = liEmpresa
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup46
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object LibtnProximoNumero: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnProximoNumero
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = lblProximoNumero
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = GrupoBasico
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = GrupoBasico
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = LctProvedorGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
  end
  object pnlChecaResposta: TPanel
    Left = 0
    Top = 258
    Width = 647
    Height = 321
    Caption = 'Status da NFSe...'
    Color = 16505534
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object pgRespostas: TPageControl
      Left = 1
      Top = 1
      Width = 645
      Height = 319
      ActivePage = TabSheet8
      Align = alClient
      TabOrder = 0
      object TabSheet8: TTabSheet
        Caption = 'Log'
        ImageIndex = 2
        object memoLog: TMemo
          Left = 0
          Top = 0
          Width = 637
          Height = 291
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Lucida Console'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'XML de Envio'
        ImageIndex = 3
        object WBXmlEnvio: TWebBrowser
          Left = 0
          Top = 0
          Width = 637
          Height = 291
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 559
          ExplicitHeight = 446
          ControlData = {
            4C000000D6410000131E00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126200000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'XML de Retorno'
        ImageIndex = 1
        object WBXmlRetorno: TWebBrowser
          Left = 0
          Top = 0
          Width = 637
          Height = 291
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 559
          ExplicitHeight = 446
          ControlData = {
            4C000000D6410000131E00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126200000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'XML das Notas'
        object WBXmlNotas: TWebBrowser
          Left = 0
          Top = 0
          Width = 637
          Height = 291
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 559
          ExplicitHeight = 446
          ControlData = {
            4C000000D6410000131E00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126200000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 300
    Top = 216
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = False
      PixelsPerInch = 96
    end
  end
  object NF_Erros: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = TransaErros
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'Select * From NF_Erros'
      'Where (Erro = :InternalErro)')
    Left = 367
    Top = 214
    ParamData = <
      item
        Name = 'INTERNALERRO'
        ParamType = ptInput
      end>
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'CustoStr'
      Calculated = True
    end
    object StringField2: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object FloatField1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_P'
      Origin = 'ESTOQUE'
      ProviderFlags = []
    end
    object StringField4: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object FloatField2: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object StringField5: TStringField
      FieldName = 'LOCAL'
      Origin = 'LOCAL'
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'CODFABRICA'
      Origin = 'CODFABRICA'
      Size = 60
    end
    object FloatField3: TFloatField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
    end
    object FloatField4: TFloatField
      FieldName = 'CALC_PDESC_ATACADO'
      Origin = 'CALC_PDESC_ATACADO'
    end
    object FloatField5: TFloatField
      FieldName = 'CALC_PACRESC_PRAZO'
      Origin = 'CALC_PACRESC_PRAZO'
    end
    object FloatField6: TFloatField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object FloatField7: TFloatField
      FieldName = 'CALC_VPRAZO'
      Origin = 'CALC_VPRAZO'
    end
    object FloatField8: TFloatField
      FieldName = 'CALC_VATACADO'
      Origin = 'CALC_VATACADO'
    end
  end
  object TransaErros: TFDTransaction
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 395
    Top = 214
  end
  object ACBrNFSeX1: TACBrNFSeX
    OnTransmitError = ACBrNFSeX1TransmitError
    OnStatusChange = ACBrNFSe1StatusChange
    OnGerarLog = ACBrNFSeX1GerarLog
    OnAntesDeAssinar = ACBrNFSeX1AntesDeAssinar
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.Provedor = proNenhum
    Configuracoes.Geral.Versao = ve203
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.TabServicosExt = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFSE = ACBrNFSeXDANFSeRL1
    Left = 224
    Top = 176
  end
  object ACBrNFSeXDANFSeRL1: TACBrNFSeXDANFSeRL
    Sistema = 'Office Impresso'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFSe = ACBrNFSeX1
    Cancelada = False
    Provedor = proNenhum
    TamanhoFonte = 6
    FormatarNumeroDocumentoNFSe = True
    Producao = snSim
    Left = 264
    Top = 177
  end
  object ACBrNFSeXDANFSeFR1: TACBrNFSeXDANFSeFR
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    Cancelada = False
    Provedor = proNenhum
    TamanhoFonte = 6
    FormatarNumeroDocumentoNFSe = True
    Producao = snSim
    EspessuraBorda = 1
    IncorporarFontesPdf = False
    IncorporarBackgroundPdf = False
    Left = 296
    Top = 177
  end
end
