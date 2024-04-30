inherited FrmProduto_Lote: TFrmProduto_Lote
  Caption = 'Cadastro de Lote de Produto'
  ClientWidth = 938
  ExplicitWidth = 954
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    Width = 938
    ExplicitWidth = 938
    inherited btnNovo: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited btnConfirmar: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited btnAlterar: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited btnCancelar: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited btnExcluir: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited btnConsultar: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited btnSair: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited edtCodigo: TcxDBTextEdit
      Properties.ReadOnly = False
      ExplicitWidth = 98
      Width = 98
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 687
      TabOrder = 22
      ExplicitLeft = 687
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 514
      AutoSize = False
      DataBinding.DataField = 'REFERENCIA'
      TabOrder = 20
      ExplicitLeft = 514
      ExplicitWidth = 128
      Width = 128
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 878
      ExplicitLeft = 878
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 828
      TabOrder = 32
      ExplicitLeft = 828
    end
    inherited BtnSeguidores: TcxButton
      Left = 890
      ExplicitLeft = 890
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 911
      ExplicitLeft = 911
    end
    inherited btnMenuConfig: TcxButton
      Left = 819
      TabOrder = 31
      ExplicitLeft = 819
    end
    inherited PnlFrameHistorico: TPanel
      Width = 778
      TabOrder = 30
      ExplicitWidth = 778
    end
    inherited BtnImprimir: TcxButton
      Left = 910
      ExplicitLeft = 910
    end
    inherited BtnDesativar: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited BtnAtivar: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited BtnAjuda: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 643
      TabOrder = 21
      ExplicitLeft = 643
    end
    inherited BtnImprimirPadrao: TcxButton
      Left = 819
      ExplicitLeft = 819
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Lote de Produto'
      ExplicitWidth = 802
    end
    object edtDataMelhor: TcxDBDateEdit [24]
      Left = 127
      Top = 137
      Style.HotTrack = False
      TabOrder = 26
      Width = 121
    end
    object edtDataFimVida: TcxDBDateEdit [25]
      Left = 365
      Top = 137
      Style.HotTrack = False
      TabOrder = 27
      Width = 121
    end
    object edtDataRemocao: TcxDBDateEdit [26]
      Left = 127
      Top = 159
      Style.HotTrack = False
      TabOrder = 28
      Width = 121
    end
    object edtDataAlerta: TcxDBDateEdit [27]
      Left = 365
      Top = 159
      Style.HotTrack = False
      TabOrder = 29
      Width = 121
    end
    object lblResponsavelÎPessoasÎRAZAOSOCIAL: TcxLabel [28]
      Left = 102
      Top = 97
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 584
    end
    object edtResponsavelÎPessoas: TcxDBButtonEdit [29]
      Left = 3
      Top = 97
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'PESSOA_CLIENTE_SEQUENCIA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.Buttons = <
        item
          Enabled = False
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 98
    end
    object edtProdutoÎProduto: TcxDBButtonEdit [30]
      Left = 102
      Top = 61
      DataBinding.DataField = 'CODPRODUTO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 18
      OnExit = edtProdutoÎProdutoExit
      Width = 98
    end
    object edtProdutoÎProdutoÎDESCRICAO: TcxLabel [31]
      Left = 201
      Top = 61
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 312
    end
    object edtQuantidade: TcxDBCurrencyEdit [32]
      Left = 687
      Top = 97
      Hint = 
        'Para Adicionar Estoque, Utilize a Tela de Movimenta'#231#227'o ou Entrad' +
        'a de Mercadoria'
      AutoSize = False
      DataBinding.DataField = 'QUANTIDADE'
      DataBinding.DataSource = DS
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 25
      OnClick = edtQuantidadeClick
      Height = 21
      Width = 118
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 5
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited LiedtCodigo: TdxLayoutItem
      ControlOptions.OriginalWidth = 98
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      AlignHorz = ahRight
      Index = 5
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Lote/N'#250'mero Serial'
      ControlOptions.OriginalWidth = 128
      Index = 3
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Index = 5
    end
    inherited LicbxAtivo: TdxLayoutItem
      AlignHorz = ahRight
      Index = 4
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'DATAS'
      Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 4
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object liedtDataMelhor: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Data "Melhor antes de"'
      Control = edtDataMelhor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtDataFimVida: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Data de Fim de Vida'
      Offsets.Left = 20
      Control = edtDataFimVida
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtDataRemocao: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Data de Remo'#231#227'o'
      Control = edtDataRemocao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtDataAlerta: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Data de Alerta'
      Offsets.Left = 20
      Control = edtDataAlerta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object lilblResponsavelÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = lblResponsavelÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 472
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtResponsavelÎPessoas: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = edtResponsavelÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtProdutoÎProduto: TdxLayoutItem
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = edtProdutoÎProduto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtProdutoÎProdutoÎDESCRICAO: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtProdutoÎProdutoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 407
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtQuantidade: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Quantidade'
      CaptionOptions.Layout = clTop
      Control = edtQuantidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Width = 938
    ExplicitWidth = 938
  end
  inherited DS: TDataSource
    Left = 284
    Top = 320
  end
  inherited TimerStatusBar: TTimer
    Left = 312
    Top = 320
  end
  inherited ImgListBotoes24: TImageList
    Left = 368
    Top = 348
  end
  inherited ImgListBotoes16: TImageList
    Left = 340
    Top = 348
  end
  inherited MenuConfig: TPopupMenu
    Left = 284
    Top = 348
  end
  inherited ImgListMenuConfig: TImageList
    Left = 312
    Top = 348
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 396
    Top = 320
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    Left = 396
    Top = 348
  end
  inherited MenuImprimir: TPopupMenu
    Left = 256
    Top = 348
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmProduto_Lote'
    FormClassConsulta = 'TConsuProduto_Lote'
    Top = 320
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from PRODUTO_LOTE'
      'where CODIGO = :Codigo')
    Left = 256
    Top = 320
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object CadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadastroCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Required = True
      Size = 15
    end
    object CadastroREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object CadastroPESSOA_CLIENTE_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_CLIENTE_SEQUENCIA'
      Origin = 'PESSOA_CLIENTE_SEQUENCIA'
    end
    object CadastroPESSOA_CLIENTE_TIPO: TStringField
      FieldName = 'PESSOA_CLIENTE_TIPO'
      Origin = 'PESSOA_CLIENTE_TIPO'
      Size = 3
    end
    object CadastroPESSOA_CLIENTE_CODIGO: TStringField
      FieldName = 'PESSOA_CLIENTE_CODIGO'
      Origin = 'PESSOA_CLIENTE_CODIGO'
      Size = 10
    end
    object CadastroQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object CadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object CadastroDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object CadastroATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  inherited TransaFD: TFDTransaction
    Left = 368
    Top = 320
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUTO_LOTE'
    Modulo = 'PRODUTO'
    Left = 340
    Top = 320
  end
end
