inherited FrmRecurso: TFrmRecurso
  Caption = 'Cadastro de Recurso'
  ExplicitTop = -94
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 757
      TabOrder = 24
      ExplicitLeft = 757
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CODIGO'
      TabOrder = 26
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 105
      Width = 105
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 27
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 28
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 25
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 713
      TabOrder = 23
      ExplicitLeft = 713
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Recurso'
    end
    object cbxTipo: TcxDBLookupComboBox [24]
      Left = 56
      Top = 61
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = DS
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.OnChange = CbRecursoTipoPropertiesChange
      Style.HotTrack = False
      TabOrder = 18
      Width = 106
    end
    object edtPessoaÎPessoas: TcxDBButtonEdit [25]
      Left = 163
      Top = 61
      DataBinding.DataField = 'PESSOA_RESPONSAVEL_SEQUENCIA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 19
      Width = 69
    end
    object edtProdutoÎProduto: TcxDBButtonEdit [26]
      Left = 438
      Top = 61
      DataBinding.DataField = 'CODPRODUTO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 21
      Width = 69
    end
    object lblProdutoÎProdutoÎDESCRICAO: TcxLabel [27]
      Left = 508
      Top = 61
      AutoSize = False
      Style.HotTrack = False
      Height = 21
      Width = 204
    end
    object lblPessoaÎPessoasÎRAZAOSOCIAL: TcxLabel [28]
      Left = 233
      Top = 61
      AutoSize = False
      Style.HotTrack = False
      Height = 21
      Width = 204
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited LiedtDescricao: TdxLayoutItem
      Parent = nil
      ControlOptions.OriginalWidth = 105
      Index = -1
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 4
    end
    object licbxTipo: TdxLayoutItem
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'Tipo do Recurso'
      CaptionOptions.Layout = clTop
      Control = cbxTipo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtPessoaÎPessoas: TdxLayoutItem
      Parent = GrupoPessoa
      CaptionOptions.Text = 'Pessoa'
      CaptionOptions.Layout = clTop
      Control = edtPessoaÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtProdutoÎProduto: TdxLayoutItem
      Parent = GrupoProduto
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = edtProdutoÎProduto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblProdutoÎProdutoÎDESCRICAO: TdxLayoutItem
      Parent = GrupoProduto
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblProdutoÎProdutoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lilblPessoaÎPessoasÎRAZAOSOCIAL: TdxLayoutItem
      Parent = GrupoPessoa
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblPessoaÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoPessoa: TdxLayoutGroup
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object GrupoProduto: TdxLayoutGroup
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Visible = False
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited MenuImprimir: TPopupMenu
    Left = 368
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmRecurso'
    FormClassConsulta = 'TConsuRecurso'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from RECURSO'
      'where (CODIGO = :Codigo)')
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
    object CadastroTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object CadastroCODPESSOA: TStringField
      FieldName = 'CODPESSOA'
      Origin = 'CODPESSOA'
      Size = 10
    end
    object CadastroCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
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
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'RECURSO'
    Modulo = 'PRODUCAO'
  end
end
