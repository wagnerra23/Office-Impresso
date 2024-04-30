inherited FrmConfiguracao_Acoes: TFrmConfiguracao_Acoes
  Caption = 'Cadastro de A'#231#245'es quando Mover o campo '
  ExplicitTop = -51
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 34
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 30
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 32
    end
    inherited PnlFrameHistorico: TPanel
      Left = 10000
      Top = 10000
      Width = 852
      Height = 507
      TabOrder = 29
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 852
      ExplicitHeight = 507
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de A'#231#245'es quando Mover o campo '
    end
    object cxGrid1: TcxGrid [25]
      Left = 13
      Top = 153
      Width = 852
      Height = 543
      TabOrder = 28
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSRegra_Guia_Campo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        object cxGrid1DBTableView1CAMPO: TcxGridDBColumn
          Caption = 'Campo'
          DataBinding.FieldName = 'CAMPO'
          Width = 215
        end
        object cxGrid1DBTableView1COMPONENTE: TcxGridDBColumn
          Caption = 'Componente'
          DataBinding.FieldName = 'COMPONENTE'
          Width = 154
        end
        object cxGrid1DBTableView1FORM: TcxGridDBColumn
          DataBinding.FieldName = 'FORM'
          Visible = False
          Width = 37
        end
        object cxGrid1DBTableView1TABELA: TcxGridDBColumn
          DataBinding.FieldName = 'TABELA'
          Visible = False
          Width = 118
        end
        object cxGrid1DBTableView1CAPTION: TcxGridDBColumn
          Caption = 'Informa'#231#227'o'
          DataBinding.FieldName = 'INFORMACAO'
          Width = 263
        end
        object cxGrid1DBTableView1VALOR_INICIAL: TcxGridDBColumn
          Caption = 'Valor Inicial'
          DataBinding.FieldName = 'VALOR_INICIAL'
          Visible = False
          Width = 97
        end
        object cxGrid1DBTableView1OBRIGATORIO_CONDICAO: TcxGridDBColumn
          Caption = 'Express'#227'o da Obrigat'#243'riedade'
          DataBinding.FieldName = 'CONDICAO'
          Width = 161
        end
        object cxGrid1DBTableView1OBRIGATORIO: TcxGridDBColumn
          Caption = 'Padr'#227'o'
          DataBinding.FieldName = 'TEM_PADRAO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          SortIndex = 0
          SortOrder = soAscending
          Width = 44
        end
        object cxGrid1DBTableView1ENABLE: TcxGridDBColumn
          Caption = 'Enable'
          DataBinding.FieldName = 'ENABLE'
          Visible = False
          Width = 43
        end
        object cxGrid1DBTableView1VISIBLE: TcxGridDBColumn
          Caption = 'Visible'
          DataBinding.FieldName = 'VISIBLE'
          Visible = False
          Width = 39
        end
        object cxGrid1DBTableView1EXPRESSAO: TcxGridDBColumn
          Caption = 'Express'#227'o'
          DataBinding.FieldName = 'EXPRESSAO'
          Visible = False
          Options.Editing = False
          Width = 182
        end
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGrid1DBTableView1CODCONFIGURACAO_ACAO: TcxGridDBColumn
          DataBinding.FieldName = 'CODCONFIGURACAO_ACAO'
          Visible = False
        end
        object cxGrid1DBTableView1CODCONFIGURACAO_REGRA: TcxGridDBColumn
          DataBinding.FieldName = 'CODCONFIGURACAO_REGRA'
          Visible = False
        end
        object cxGrid1DBTableView1ENABLE_CONDICAO: TcxGridDBColumn
          DataBinding.FieldName = 'ENABLE_CONDICAO'
          Visible = False
          Width = 100
        end
        object cxGrid1DBTableView1VISIBLE_CONDICAO: TcxGridDBColumn
          DataBinding.FieldName = 'VISIBLE_CONDICAO'
          Visible = False
        end
        object cxGrid1DBTableView1VALOR_INICIAL_CONDICAO: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_INICIAL_CONDICAO'
          Visible = False
          Width = 100
        end
        object cxGrid1DBTableView1CODCONFIGURACAO_COMPONENTE: TcxGridDBColumn
          DataBinding.FieldName = 'CODCONFIGURACAO_COMPONENTE'
          Visible = False
        end
        object cxGrid1DBTableView1CODIGO_1: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_1'
          Visible = False
        end
        object cxGrid1DBTableView1FORMATACAO: TcxGridDBColumn
          DataBinding.FieldName = 'FORMATACAO'
          Visible = False
          Width = 100
        end
        object cxGrid1DBTableView1HINT: TcxGridDBColumn
          DataBinding.FieldName = 'HINT'
          Visible = False
        end
        object cxGrid1DBTableView1PADRAO: TcxGridDBColumn
          DataBinding.FieldName = 'PADRAO'
          Visible = False
        end
        object cxGrid1DBTableView1ATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
        object cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
        end
        object cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn
          DataBinding.FieldName = 'OBSERVACAO'
          Visible = False
        end
        object cxGrid1DBTableView1TAB: TcxGridDBColumn
          DataBinding.FieldName = 'TAB'
          Visible = False
        end
        object cxGrid1DBTableView1CODIGO_2: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_2'
          Visible = False
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO'
          Visible = False
        end
        object cxGrid1DBTableView1REGRA: TcxGridDBColumn
          DataBinding.FieldName = 'REGRA'
          Visible = False
        end
        object cxGrid1DBTableView1ESTILO: TcxGridDBColumn
          DataBinding.FieldName = 'ESTILO'
          Visible = False
        end
        object cxGrid1DBTableView1DT_ALTERACAO_1: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO_1'
          Visible = False
        end
        object cxGrid1DBTableView1ATIVO_1: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO_1'
          Visible = False
        end
        object cxGrid1DBTableView1FORM_1: TcxGridDBColumn
          DataBinding.FieldName = 'FORM_1'
          Visible = False
        end
        object cxGrid1DBTableView1GRID: TcxGridDBColumn
          DataBinding.FieldName = 'GRID'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object EdtRegraÎConfiguracao_Regra: TcxButtonEdit [26]
      Left = 385
      Top = 97
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 22
      Width = 70
    end
    object LblRegraÎConfiguracao_RegraÎDESCRICAO: TcxLabel [27]
      Left = 455
      Top = 98
      AutoSize = False
      Style.HotTrack = False
      Height = 20
      Width = 175
    end
    object cxButton1: TcxButton [28]
      Left = 805
      Top = 83
      Width = 35
      Height = 35
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 25
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton [29]
      Left = 840
      Top = 83
      Width = 35
      Height = 35
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 26
      OnClick = cxButton2Click
    end
    object cxGrid2: TcxGrid [30]
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 31
      Visible = False
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSMemComponentes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid2DBTableView1COMPONENTE: TcxGridDBColumn
          DataBinding.FieldName = 'COMPONENTE'
          Width = 100
        end
        object cxGrid2DBTableView1CAPTION: TcxGridDBColumn
          DataBinding.FieldName = 'CAPTION'
          Width = 100
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object cxButton3: TcxButton [31]
      Left = 10000
      Top = 10000
      Width = 169
      Height = 25
      Caption = 'Adicionar Componente'
      TabOrder = 33
      Visible = False
      OnClick = cxButton3Click
    end
    object LblRegraÎConfiguracao_RegraÎREGRA: TcxLabel [32]
      Left = 630
      Top = 98
      AutoSize = False
      Style.HotTrack = False
      Height = 20
      Width = 175
    end
    object EdtComponenteÎConfiguracao_Componente: TcxButtonEdit [33]
      Left = 3
      Top = 97
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 70
    end
    object EdtComponenteÎConfiguracao_ComponenteÎCOMPONENTE: TcxLabel [34]
      Left = 74
      Top = 98
      AutoSize = False
      Style.HotTrack = False
      Height = 20
      Width = 310
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Index = 1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoLogAlteracoes
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'A'#231#245'es'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      Visible = False
      CaptionOptions.Text = 'Regra'
      CaptionOptions.Layout = clTop
      Control = EdtRegraÎConfiguracao_Regra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = LblRegraÎConfiguracao_RegraÎDESCRICAO
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid2
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      AlignHorz = ahClient
      Index = -1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Regra'
      CaptionOptions.Layout = clTop
      Control = LblRegraÎConfiguracao_RegraÎREGRA
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 1
    end
    object liEdtComponenteÎConfiguracao_Componente: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Componente'
      CaptionOptions.Layout = clTop
      Control = EdtComponenteÎConfiguracao_Componente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Descri'#231#227'o do Componente'
      CaptionOptions.Layout = clTop
      Control = EdtComponenteÎConfiguracao_ComponenteÎCOMPONENTE
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited MenuConfig: TPopupMenu
    Left = 396
    Top = 128
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited MenuImprimir: TPopupMenu
    Left = 368
    Top = 128
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 3
    FormClassCadastro = 'TFrmConfiguracao_Acoes'
    FormClassConsulta = 'TConsuConfiguracao_Acoes'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from CONFIGURACAO_ACOES'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'CONFIGURACAO_ACOES'
    Modulo = 'CONFIGURACAO'
  end
  object Configuracao_Acao_Componente: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODCONFIGURACAO_ACAO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT CAR.*, CC.COMPONENTE, CC.CAMPO, CR.DESCRICAO AS Regra'
      'FROM CONFIGURACAO_ACOES_REGRA CAR'
      
        'LEFT JOIN configuracao_componente CC ON CC.codigo = CAR.codconfi' +
        'guracao_componente'
      
        'left join CONFIGURACAO_REGRA CR on (CR.CODIGO = CAR.CODCONFIGURA' +
        'CAO_REGRA)'
      'where (CAR.codconfiguracao_acoES = :CODIGO)')
    Left = 312
    Top = 100
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSRegra_Guia_Campo: TDataSource
    DataSet = Configuracao_Acao_Componente
    Left = 340
    Top = 100
  end
  object MemComponentes: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 312
    Top = 128
    object MemComponentesCOMPONENTE: TStringField
      FieldName = 'COMPONENTE'
      Size = 255
    end
    object MemComponentesCAPTION: TStringField
      FieldName = 'CAPTION'
      Size = 200
    end
  end
  object DSMemComponentes: TDataSource
    DataSet = MemComponentes
    Left = 340
    Top = 128
  end
end
