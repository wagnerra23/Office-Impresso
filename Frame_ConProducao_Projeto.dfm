inherited Frame_ConsuPrucducao_Projeto: TFrame_ConsuPrucducao_Projeto
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      TabOrder = 14
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        object GridConsultaDBTableView1DT_EMISSAO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_EMISSAO'
        end
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO'
        end
        object GridConsultaDBTableView1DT_INICIO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_INICIO'
        end
        object GridConsultaDBTableView1DT_FIM: TcxGridDBColumn
          DataBinding.FieldName = 'DT_FIM'
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          DataBinding.FieldName = 'OBSERVACAO'
        end
        object GridConsultaDBTableView1CODVENDA: TcxGridDBColumn
          DataBinding.FieldName = 'CODVENDA'
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
        end
        object GridConsultaDBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
          Visible = False
        end
        object GridConsultaDBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_TIPO'
          Visible = False
        end
        object GridConsultaDBTableView1TOKEN_PROJETO_MARCADOR: TcxGridDBColumn
          DataBinding.FieldName = 'TOKEN_PROJETO_MARCADOR'
          Visible = False
        end
        object GridConsultaDBTableView1SITUACAO: TcxGridDBColumn
          DataBinding.FieldName = 'SITUACAO'
          Visible = False
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
        object GridConsultaDBTableView1VALOR: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR'
          Visible = False
        end
        object GridConsultaDBTableView1PCONCLUSAO: TcxGridDBColumn
          DataBinding.FieldName = 'PCONCLUSAO'
          Visible = False
        end
        object GridConsultaDBTableView1STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'STATUS'
          Visible = False
        end
        object GridConsultaDBTableView1LABEL: TcxGridDBColumn
          DataBinding.FieldName = 'LABEL'
          Visible = False
        end
        object GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Visible = False
        end
      end
    end
    inherited GridSubGrid: TcxGrid
      TabOrder = 13
    end
    inherited pnlFlipRotate: TPanel
      TabOrder = 16
    end
    inherited tcAcoes: TdxTileControl
      Width = 327
      ExplicitWidth = 327
    end
    inherited cbxQuantidadeItens: TcxComboBox
      TabOrder = 10
    end
    inherited btnDataFiltro: TcxButton
      TabOrder = 6
    end
    inherited btnMenuOpcoes: TcxButton
      TabOrder = 12
    end
    inherited btnAgruparFiltro: TcxButton
      TabOrder = 7
    end
    inherited btnFiltro_Filtro: TcxButton
      TabOrder = 8
    end
    inherited btnImprimir_Filtro: TcxButton
      TabOrder = 5
    end
    inherited btnAtualizar: TcxButton
      Left = 328
      ExplicitLeft = 328
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [15]
      Left = 401
      Top = 3
      AutoSize = False
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 2
      Height = 33
      Width = 145
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [16]
      Left = 601
      Top = 3
      AutoSize = False
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 3
      Height = 33
      Width = 145
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [17]
      Left = 766
      Top = 3
      AutoSize = False
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 4
      Height = 33
      Width = 145
    end
    inherited GrpoMostrarRegistros: TdxLayoutGroup
      Index = 9
    end
    inherited libtnDataFiltro: TdxLayoutItem
      Index = 6
    end
    inherited libtnMenuOpcoes: TdxLayoutItem
      Index = 10
    end
    inherited libtnAgruparFiltro: TdxLayoutItem
      Index = 7
    end
    inherited libtnFiltro_Filtro: TdxLayoutItem
      Index = 8
    end
    inherited libtnImprimir_Filtro: TdxLayoutItem
      Index = 5
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoTT
      AlignVert = avClient
      CaptionOptions.Text = 'Status'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoTT
      AlignVert = avClient
      CaptionOptions.Text = 'Data Limite'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoTT
      AlignVert = avClient
      CaptionOptions.Text = 'Tag'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited pnlFiltros: TPanel
    Top = 45
    ExplicitTop = 45
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 43468.488334305560000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxEditStyleController1: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmProjeto'
    FormClassConsulta = 'TConsuProjeto'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PROJETO'
    Modulo = 'PRODUCAO'
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select *'
      'from PROJETO')
    object ConsultaDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaDT_INICIO: TSQLTimeStampField
      FieldName = 'DT_INICIO'
      Origin = 'DT_INICIO'
    end
    object ConsultaDT_FIM: TSQLTimeStampField
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
    object ConsultaDT_EMISSAO: TSQLTimeStampField
      FieldName = 'DT_EMISSAO'
    end
    object ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object ConsultaPESSOA_RESPONSAVEL_CODIGO: TStringField
      FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
      Origin = 'PESSOA_RESPONSAVEL_CODIGO'
      Size = 10
    end
    object ConsultaPESSOA_RESPONSAVEL_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
      Origin = 'PESSOA_RESPONSAVEL_SEQUENCIA'
    end
    object ConsultaPESSOA_RESPONSAVEL_TIPO: TStringField
      FieldName = 'PESSOA_RESPONSAVEL_TIPO'
      Origin = 'PESSOA_RESPONSAVEL_TIPO'
      Size = 3
    end
    object ConsultaTOKEN_PROJETO_MARCADOR: TStringField
      FieldName = 'TOKEN_PROJETO_MARCADOR'
      Origin = 'TOKEN_PROJETO_MARCADOR'
      Size = 500
    end
    object ConsultaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 150
    end
    object ConsultaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 5000
    end
    object ConsultaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object ConsultaPCONCLUSAO: TIntegerField
      FieldName = 'PCONCLUSAO'
      Origin = 'PCONCLUSAO'
    end
    object ConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 50
    end
    object ConsultaLABEL: TStringField
      FieldName = 'LABEL'
      Origin = 'LABEL'
      Size = 1000
    end
    object ConsultaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 150
    end
    object ConsultaCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
      Size = 15
    end
  end
end
