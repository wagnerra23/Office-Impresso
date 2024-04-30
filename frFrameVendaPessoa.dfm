inherited FrameVendaPessoa: TFrameVendaPessoa
  Width = 935
  ExplicitWidth = 935
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 935
    ExplicitWidth = 935
    inherited btnMenuConfig: TcxButton
      Left = 917
      Height = 25
      ExplicitLeft = 917
      ExplicitHeight = 25
    end
    object edtResponsavelPessoasENDERECO: TcxDBTextEdit [1]
      Left = 535
      Top = 58
      AutoSize = False
      DataBinding.DataField = 'RESPONSAVEL_ENDERECO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 9
      Height = 21
      Width = 299
    end
    object edtResponsavelPessoasBAIRRO: TcxDBTextEdit [2]
      Left = 350
      Top = 94
      AutoSize = False
      DataBinding.DataField = 'RESPONSAVEL_BAIRRO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 14
      Height = 21
      Width = 182
    end
    object edtResponsavelPessoasNUMERO: TcxDBTextEdit [3]
      Left = 835
      Top = 58
      AutoSize = False
      DataBinding.DataField = 'RESPONSAVEL_NUMERO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 10
      Height = 21
      Width = 88
    end
    object edtResponsavelPessoasCEP: TcxDBTextEdit [4]
      Left = 413
      Top = 58
      DataBinding.DataField = 'RESPONSAVEL_CEP'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object edtResponsavelPessoasCNPJCPF: TcxDBTextEdit [5]
      Left = 62
      Top = 58
      AutoSize = False
      DataBinding.DataField = 'RESPONSAVEL_CNPJCPF'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 5
      Height = 21
      Width = 121
    end
    object edtResponsavelPessoasINSCIDENT: TcxDBTextEdit [6]
      Left = 184
      Top = 58
      AutoSize = False
      DataBinding.DataField = 'RESPONSAVEL_INSCIDENT'
      DataBinding.DataSource = DS
      ParentColor = True
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 121
    end
    object edtResponsavelÎCidadesÎDESCRICAO: TcxDBTextEdit [7]
      Left = 87
      Top = 94
      AutoSize = False
      DataBinding.DataField = 'RESPONSAVEL_CIDADE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 12
      Height = 21
      Width = 229
    end
    object edtResponsavelÎCidades: TcxDBButtonEdit [8]
      Left = 12
      Top = 94
      AutoSize = False
      DataBinding.DataField = 'RESPONSAVEL_CODCIDADE'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 11
      Height = 21
      Width = 74
    end
    object edtResponsavelÎCidadesÎUF: TcxDBTextEdit [9]
      Left = 317
      Top = 94
      AutoSize = False
      DataBinding.DataField = 'RESPONSAVEL_UF'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 13
      Height = 21
      Width = 32
    end
    object edtResponsavelPessoasTIPO: TcxDBComboBox [10]
      Left = 12
      Top = 58
      DataBinding.DataField = 'RESPONSAVEL_TIPO'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'F'
        'J'
        'O')
      Style.HotTrack = False
      TabOrder = 4
      Width = 49
    end
    object edtResponsavelPessoasEMAIL: TcxDBTextEdit [11]
      Left = 533
      Top = 94
      AutoSize = False
      DataBinding.DataField = 'RESPONSAVEL_EMAIL'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 15
      Height = 21
      Width = 152
    end
    object edtPCredSN_Permite: TcxDBTextEdit [12]
      Left = 213
      Top = 166
      AutoSize = False
      DataBinding.DataField = 'PCREDSN_PERMITE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 22
      Height = 21
      Width = 67
    end
    object edtNF_CRT_DEST: TcxDBTextEdit [13]
      Left = 12
      Top = 166
      AutoSize = False
      DataBinding.DataField = 'NF_CRT_DEST'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 200
    end
    object cbxResponsavel_Tipo_Contribuinte: TcxDBLookupComboBox [14]
      Left = 306
      Top = 58
      AutoSize = False
      DataBinding.DataField = 'RESPONSAVEL_TIPO_CONTRIBUINTE'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'CODIGO'
        end
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.GridLines = glVertical
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 106
    end
    object edtTabelaÎProduto_Tabela: TcxDBButtonEdit [15]
      Left = 686
      Top = 94
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO_TABELA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 16
      Height = 21
      Width = 88
    end
    object lblTabelaÎProduto_TabelaÎDESCRICAO: TcxLabel [16]
      Left = 775
      Top = 96
      AutoSize = False
      Style.HotTrack = False
      Properties.ShowEndEllipsis = True
      Transparent = True
      Height = 19
      Width = 148
    end
    object edtResponsavelCodCidadeProprio: TcxDBTextEdit [17]
      Left = 12
      Top = 130
      DataBinding.DataField = 'RESPONSAVEL_COD_CIDADE_PROPRIO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 18
      Width = 139
    end
    object edtResponsavelCodPais: TcxDBTextEdit [18]
      Left = 152
      Top = 130
      AutoSize = False
      DataBinding.DataField = 'RESPONSAVEL_CODPAIS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 19
      Height = 21
      Width = 60
    end
    object edtResponsavelPessoasINSC_MUNICIPAL: TcxDBTextEdit [19]
      Left = 213
      Top = 130
      DataBinding.DataField = 'RESPONSAVEL_INSC_MUNICIPAL'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object edtResponsavelEmailNFe: TcxDBTextEdit [20]
      Left = 335
      Top = 130
      DataBinding.DataField = 'RESPONSAVEL_EMAIL_NFE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 23
      Width = 302
    end
    object btnAtualizaCadastro: TcxButton [21]
      Left = 279
      Top = 0
      Width = 144
      Height = 25
      Caption = 'Atualizar pelo Cadastro'
      TabOrder = 2
      OnClick = btnAtualizaCadastroClick
    end
    object chkPodeAtualizarCadastro: TcxDBCheckBox [22]
      Left = 0
      Top = 0
      AutoSize = False
      Caption = 'Atualiza Endere'#231'o autom'#225'tico pelo cadastro'
      DataBinding.DataField = 'PODE_ATUALIZAR_CADASTRO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 35345
      Style.IsFontAssigned = True
      TabOrder = 1
      Transparent = True
      Height = 22
      Width = 278
    end
    object cxLabel1: TcxLabel [23]
      Left = 0
      Top = 200
      Caption = 
        '* As informa'#231#245'es cadastradas aqui, N'#195'O ser'#227'o enviadas para o Cad' +
        'astro'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btnAbrirCadPessoas: TcxButton [24]
      Left = 424
      Top = 0
      Width = 184
      Height = 25
      Caption = 'Abrir cadastro do Respons'#225'vel'
      TabOrder = 3
      OnClick = btnAbrirCadPessoasClick
    end
    object chkVendaPrevisao: TcxDBCheckBox [25]
      Left = 335
      Top = 165
      Hint = 
        'Ao faturar esta venda, ser'#225' finalizada para ser agrupada com out' +
        'ras vendas posteriormente.'
      Caption = 'Fatura venda como Previs'#227'o'
      DataBinding.DataField = 'FATURA_PREVISAO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnEditValueChanged = chkVendaPrevisaoPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 25
      Transparent = True
      OnMouseUp = chkVendaPrevisaoMouseUp
    end
    object cxDBCheckBox1: TcxDBCheckBox [26]
      Left = 638
      Top = 129
      AutoSize = False
      Caption = 'Produtor Rural'
      DataBinding.DataField = 'TEM_PRODUTOR_RURAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clDefault
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 24
      Transparent = True
      Height = 22
      Width = 278
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup24
      AlignVert = avClient
    end
    object TabDadosDoResponsavel: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Destinat'#225'rio(Cliente)'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup24: TdxLayoutAutoCreatedGroup
      Parent = TabDadosDoResponsavel
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup24
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkPodeAtualizarCadastro
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 278
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup24
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnAtualizaCadastro
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 144
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LibtnAbrirCadPessoas: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup24
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnAbrirCadPessoas
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 184
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object GrupoDadosResponsavel: TdxLayoutGroup
      Parent = TabDadosDoResponsavel
      CaptionOptions.Text = 'Dados do Respons'#225'vel'
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = GrupoDadosResponsavel
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liedtResponsavelÎPessoasÎTIPO: TdxLayoutItem
      Parent = dxLayoutGroup10
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelPessoasTIPO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 49
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtResponsavelÎPessoasÎCNPJCPF: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignVert = avClient
      CaptionOptions.Text = 'CNPJ / CPF'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelPessoasCNPJCPF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtResponsavelÎPessoasÎINSCIDENT: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignVert = avClient
      CaptionOptions.Text = 'Insc. Ident.'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelPessoasINSCIDENT
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtResponsavelÎPessoasÎCEP: TdxLayoutItem
      Parent = dxLayoutGroup10
      CaptionOptions.Text = 'CEP'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelPessoasCEP
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtResponsavelÎPessoasÎENDERECO: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Endere'#231'o'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelPessoasENDERECO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object licbxResponsavel_Tipo_Contribuinte: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignVert = avBottom
      CaptionOptions.Text = 'Tipo Contribuinte'
      CaptionOptions.Layout = clTop
      Control = cbxResponsavel_Tipo_Contribuinte
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtResponsavelÎPessoasÎNUMERO: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignVert = avBottom
      CaptionOptions.Text = 'N'#250'mero'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelPessoasNUMERO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = GrupoDadosResponsavel
      CaptionOptions.Text = 'New Group'
      ItemIndex = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object liedtResponsavelÎCidades: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'C'#243'd. Cidade'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelÎCidades
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtResponsavelÎCidadesÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Cidade'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelÎCidadesÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 307
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtResponsavelÎCidadesÎUF: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'UF'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelÎCidadesÎUF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtResponsavelÎPessoasÎBAIRRO: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Bairro'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelPessoasBAIRRO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 245
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtResponsavelÎPessoasÎEMAIL: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Email'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelPessoasEMAIL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 204
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtTabelaÎProduto_Tabela: TdxLayoutItem
      Parent = GrupoTabelaPreco
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tabela de Pre'#231'o'
      CaptionOptions.Layout = clTop
      Control = edtTabelaÎProduto_Tabela
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem71: TdxLayoutItem
      Parent = GrupoTabelaPreco
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel3'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblTabelaÎProduto_TabelaÎDESCRICAO
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 148
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = GrupoDadosResponsavel
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup21: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutAutoCreatedGroup22: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup21
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object LiedtResponsavelCodCidadeProprio: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup22
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'd. Cidade Pr'#243'prio (NFSe)'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelCodCidadeProprio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 139
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtResponsavelCodPais: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup22
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'd. Pa'#237's'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelCodPais
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem67: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup21
      CaptionOptions.Text = 'Regime da Empresa'
      CaptionOptions.Layout = clTop
      Control = edtNF_CRT_DEST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup23: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      Index = 1
    end
    object LiedtResponsavelIncsMunicipal: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup23
      CaptionOptions.Text = 'Inscri'#231#227'o Municipal'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelPessoasINSC_MUNICIPAL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtPCredSN_Permite: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup23
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Perm. Cr'#233'dito'
      CaptionOptions.Layout = clTop
      Control = edtPCredSN_Permite
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtResponsavelEmailNFe: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Email para envio da Nota Fiscal'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelEmailNFe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 302
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = TabDadosDoResponsavel
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Previs'#227'o'
      CaptionOptions.Visible = False
      Control = chkVendaPrevisao
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      Index = 2
    end
    object GrupoTabelaPreco: TdxLayoutGroup
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 278
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited wrFrameEventos: TwrFrameEventos
    OnInicializar = wrFrameEventosInicializar
  end
  object FDQuery1: TFDQuery
    Left = 632
    Top = 224
  end
end
