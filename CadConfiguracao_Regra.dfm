inherited FrmConfiguracao_Regra: TFrmConfiguracao_Regra
  Caption = 'Cadastro de Regras na Consulta'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 30
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 28
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 29
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 828
      TabOrder = 27
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 828
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Regras na Consulta'
    end
    object edtRegra: TcxDBTextEdit [25]
      Left = 3
      Top = 97
      DataBinding.DataField = 'REGRA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 21
      Width = 872
    end
    object cxComboBox1: TcxComboBox [26]
      Left = 13
      Top = 201
      AutoSize = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 23
      Text = 'Selecione o Tipo'
      Height = 26
      Width = 852
    end
    object cxComboBox2: TcxComboBox [27]
      Left = 3
      Top = 133
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      Text = 'Selecione a Tela'
      Width = 872
    end
    object cxGrid1: TcxGrid [28]
      Left = 13
      Top = 228
      Width = 852
      Height = 242
      TabOrder = 24
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxGrid2: TcxGrid [29]
      Left = 10000
      Top = 10000
      Width = 835
      Height = 234
      TabOrder = 25
      Visible = False
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object cxGrid3: TcxGrid [30]
      Left = 10000
      Top = 10000
      Width = 835
      Height = 200
      TabOrder = 26
      Visible = False
      object cxGrid3DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 6
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      AlignVert = avBottom
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = dxLayoutGroup5
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoMain
      Visible = False
      CaptionOptions.Text = 'Express'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtRegra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = cxComboBox1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Tela'
      CaptionOptions.Layout = clTop
      Control = cxComboBox2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Configura'#231#245'es da Tela'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid2'
      CaptionOptions.Visible = False
      Control = cxGrid2
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'A'#231#245'es e Valida'#231#245'es da Tela'
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxGrid3'
      CaptionOptions.Visible = False
      Control = cxGrid3
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Regras de Controle'
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hist'#243'rico'
      Index = 3
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 3
    FormClassCadastro = 'TFrmConfiguracao_Regra'
    FormClassConsulta = 'TConsuConfiguracao_Regra'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from WR_RULES'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'CONFIGURACAO_REGRA'
    Modulo = 'CONFIGURACAO'
  end
  object RulesCampo: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODVENDA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize, evCache]
    FetchOptions.RowsetSize = 10000
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from wr_campo wrc'
      'left join wr_rules_campo wrrc on wrrc.tag_campo = wrc.codigo'
      'where wrrc.tag_tipo =: TagTipo and wrrc.tag_rules =: TagRules')
    Left = 312
    Top = 128
  end
  object DataSource1: TDataSource
    Left = 344
    Top = 128
  end
end
