inherited ConsuNotificacao_Disparada: TConsuNotificacao_Disparada
  inherited pnlIniciar: TPanel [0]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlFiltroData: TPanel [1]
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [2]
    inherited GridConsulta: TcxGrid
      Left = 309
      Width = 1244
      Height = 346
      TabOrder = 12
      ExplicitLeft = 309
      ExplicitWidth = 1244
      ExplicitHeight = 346
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn
          Caption = 'C'#243'd. Empresa'
          DataBinding.FieldName = 'CODEMPRESA'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1CODSLA: TcxGridDBColumn
          Caption = 'C'#243'd. SLA'
          DataBinding.FieldName = 'CODSLA'
          Visible = False
        end
        object GridConsultaDBTableView1MODULO: TcxGridDBColumn
          Caption = 'M'#243'dulo'
          DataBinding.FieldName = 'MODULO'
          Width = 100
        end
        object GridConsultaDBTableView1TABELA: TcxGridDBColumn
          Caption = 'Tabela'
          DataBinding.FieldName = 'TABELA'
          Width = 100
        end
        object GridConsultaDBTableView1QUANT_SEGUIDORES: TcxGridDBColumn
          Caption = 'Seguidores'
          DataBinding.FieldName = 'QUANT_SEGUIDORES'
          Width = 70
        end
        object GridConsultaDBTableView1CHAVE_PK1: TcxGridDBColumn
          Caption = 'Chave 1'
          DataBinding.FieldName = 'CHAVE_PK1'
          Width = 70
        end
        object GridConsultaDBTableView1CHAVE_PK2: TcxGridDBColumn
          Caption = 'Chave 2'
          DataBinding.FieldName = 'CHAVE_PK2'
          Width = 70
        end
        object GridConsultaDBTableView1CHAVE_PK3: TcxGridDBColumn
          Caption = 'Chave 3'
          DataBinding.FieldName = 'CHAVE_PK3'
          Width = 70
        end
        object GridConsultaDBTableView1CONDICAO: TcxGridDBColumn
          Caption = 'Condi'#231#227'o'
          DataBinding.FieldName = 'CONDICAO'
          Width = 62
        end
        object GridConsultaDBTableView1MENSAGEM: TcxGridDBColumn
          Caption = 'Mensagem'
          DataBinding.FieldName = 'MENSAGEM'
          Width = 200
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt.Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
        end
        object GridConsultaDBTableView1SLA: TcxGridDBColumn
          DataBinding.FieldName = 'SLA'
          Visible = False
        end
      end
    end
    inherited LbTotalRegistros: TcxLabel
      Top = 36
      ExplicitTop = 36
    end
    inherited GridSubGrid: TcxGrid
      Height = 567
      ExplicitHeight = 567
    end
    inherited pnlFlipRotate: TPanel
      Left = 1556
      Width = 20
      Height = 567
      TabOrder = 14
      ExplicitLeft = 1556
      ExplicitWidth = 20
      ExplicitHeight = 567
    end
    inherited tcAcoes: TdxTileControl
      Width = 1198
      ExplicitWidth = 1198
    end
    inherited cbxQuantidadeItens: TcxComboBox
      Left = 1440
      ExplicitLeft = 1440
    end
    inherited lblQuantidadeItens_Mostrar: TcxLabel
      Left = 1404
      ExplicitLeft = 1404
    end
    inherited lblQuantidadeItens_Registros: TcxLabel
      Left = 1500
      ExplicitLeft = 1500
    end
    inherited Bevel2: TBevel
      Width = 1576
      ExplicitWidth = 1576
    end
    inherited btnDataFiltro: TcxButton
      Left = 1281
      ExplicitLeft = 1281
    end
    inherited btnMenuOpcoes: TcxButton
      Left = 1549
      ExplicitLeft = 1549
    end
    inherited btnAgruparFiltro: TcxButton
      Left = 1322
      ExplicitLeft = 1322
    end
    inherited btnFiltro_Filtro: TcxButton
      Left = 1363
      ExplicitLeft = 1363
    end
    inherited btnImprimir_Filtro: TcxButton
      Left = 1240
      ExplicitLeft = 1240
    end
    object cxGrid1: TcxGrid [15]
      Left = 309
      Top = 405
      Width = 1244
      Height = 198
      TabOrder = 13
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSHistorico_Seguidor
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 400
        end
        object cxGrid1DBTableView1TABELA: TcxGridDBColumn
          Caption = 'Tabela'
          DataBinding.FieldName = 'TABELA'
          Visible = False
          Width = 100
        end
        object cxGrid1DBTableView1CODTABELA: TcxGridDBColumn
          Caption = 'C'#243'd. Tabela'
          DataBinding.FieldName = 'CODTABELA'
          Visible = False
          Width = 100
        end
        object cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn
          Caption = 'C'#243'd. Usuario'
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
          Width = 100
        end
        object cxGrid1DBTableView1TEM_NOVO: TcxGridDBColumn
          DataBinding.FieldName = 'TEM_NOVO'
          Visible = False
        end
        object cxGrid1DBTableView1TEM_EDITAR: TcxGridDBColumn
          DataBinding.FieldName = 'TEM_EDITAR'
          Visible = False
        end
        object cxGrid1DBTableView1TEM_EXCLUIR: TcxGridDBColumn
          DataBinding.FieldName = 'TEM_EXCLUIR'
          Visible = False
        end
        object cxGrid1DBTableView1TEM_NOTIFICACAO: TcxGridDBColumn
          Caption = 'Notifica'#231#227'o'
          DataBinding.FieldName = 'TEM_NOTIFICACAO'
          Width = 70
        end
        object cxGrid1DBTableView1TEM_EMAIL: TcxGridDBColumn
          Caption = 'E-mail'
          DataBinding.FieldName = 'TEM_EMAIL'
          Width = 50
        end
        object cxGrid1DBTableView1TEM_TODOS: TcxGridDBColumn
          DataBinding.FieldName = 'TEM_TODOS'
          Visible = False
        end
        object cxGrid1DBTableView1CODPESSOA: TcxGridDBColumn
          Caption = 'C'#243'd. Pessoa'
          DataBinding.FieldName = 'CODPESSOA'
          Visible = False
        end
        object cxGrid1DBTableView1CODHISTORICO_SLA: TcxGridDBColumn
          Caption = 'C'#243'd. Hist'#243'rico SLA'
          DataBinding.FieldName = 'CODHISTORICO_SLA'
          Visible = False
          Width = 100
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    inherited LiGridConsulta: TdxLayoutItem
      Parent = dxLayoutGroup1
    end
    inherited GrupoFooter: TdxLayoutGroup
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      Offsets.Top = 8
      CaptionOptions.Text = 'Seguidores Notificados'
      CaptionOptions.Layout = clTop
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoAlterarView
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 3
    end
  end
  inherited pnlImpressoes: TPanel [3]
  end
  inherited pnlAgrupador: TPanel [4]
    inherited tcAgrupador: TdxTileControl
      object tcAgrupadorItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'SLA'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
    end
  end
  inherited pnlFiltros: TPanel [5]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44925.577366944450000000
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
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT HS.*, SLA.DESCRICAO as SLA FROM HISTORICO_SLA HS'
      'LEFT JOIN SLA SLA ON SLA.CODIGO = HS.CODSLA')
  end
  object Historico_Seguidor: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    SQL.Strings = (
      'SELECT HS.*, P.RAZAOSOCIAL FROM HISTORICO_SEGUIDOR HS'
      'LEFT JOIN PESSOAS P ON P.CODIGO = HS.CODPESSOA'
      'WHERE HS.CODHISTORICO_SLA = :CODIGO')
    Left = 267
    Top = 361
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSHistorico_Seguidor: TDataSource
    DataSet = Historico_Seguidor
    Left = 295
    Top = 361
  end
end
