inherited Frame_WR_Controle: TFrame_WR_Controle
  Width = 687
  Height = 590
  ExplicitWidth = 687
  ExplicitHeight = 590
  inherited MainLayout: TdxLayoutControl
    Width = 687
    Height = 523
    ExplicitWidth = 687
    ExplicitHeight = 523
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 566
      ExplicitLeft = 566
    end
    inherited edtDescricao: TcxDBTextEdit
      ParentBiDiMode = False
      Properties.CharCase = ecNormal
      ExplicitWidth = 465
      Width = 465
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 8
    end
    inherited PnlFrameHistorico: TPanel
      Width = 666
      Height = 478
      TabOrder = 7
      ExplicitWidth = 666
      ExplicitHeight = 478
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 522
      ExplicitLeft = 522
    end
    object Observação: TcxDBLabel [6]
      Left = 13
      Top = 451
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      Style.TransparentBorder = False
      Height = 59
      Width = 661
    end
    object cxGrid1: TcxGrid [7]
      Left = 13
      Top = 82
      Width = 661
      Height = 354
      BorderStyle = cxcbsNone
      TabOrder = 4
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSConfiguracoes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 1
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.RowSeparatorColor = clMoneyGreen
        OptionsView.RowSeparatorWidth = 1
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Options.Editing = False
          Width = 419
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Configurar'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Caption = 'Configurar'
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ViewStyle = vsButtonsAutoWidth
          HeaderAlignmentHorz = taCenter
          Width = 157
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxGrid2: TcxGrid [8]
      Left = 10000
      Top = 10000
      Width = 666
      Height = 478
      BorderStyle = cxcbsNone
      TabOrder = 6
      Visible = False
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSKPI
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 1
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.RowSeparatorColor = clMoneyGreen
        OptionsView.RowSeparatorWidth = 1
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Options.Editing = False
          Width = 419
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Configurar'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Caption = 'Configurar'
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ViewStyle = vsButtonsAutoWidth
          HeaderAlignmentHorz = taCenter
          Width = 157
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Index = 6
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = GrupoMain
      AlignVert = avClient
      Visible = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 3
    end
    object LiPnlPermissoes: TdxLayoutGroup
      Parent = GrupoLogAlteracoes
      CaptionOptions.Text = 'Permiss'#245'es'
      Index = 3
    end
    object lipnlConfiguracoes: TdxLayoutGroup
      Parent = GrupoLogAlteracoes
      CaptionOptions.Text = 'Configura'#231#245'es'
      Index = 0
    end
    object LiPnlRelatorio: TdxLayoutGroup
      Parent = GrupoLogAlteracoes
      CaptionOptions.Text = 'Relat'#243'rios'
      Index = 4
    end
    object LiPnlValoresIniciais: TdxLayoutGroup
      Parent = GrupoLogAlteracoes
      CaptionOptions.Text = 'Valores Iniciais'
      Index = 1
    end
    object liPnlKPI: TdxLayoutGroup
      Parent = GrupoLogAlteracoes
      CaptionOptions.Text = 'KPI'
      Index = 5
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lipnlConfiguracoes
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = Observação
      ControlOptions.OriginalHeight = 59
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liPnlValidacoes: TdxLayoutGroup
      Parent = GrupoLogAlteracoes
      CaptionOptions.Text = 'Obrigat'#243'rio'
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lipnlConfiguracoes
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = liPnlKPI
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid2
      ControlOptions.OriginalHeight = 404
      ControlOptions.OriginalWidth = 666
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 570
    Width = 687
    ExplicitTop = 570
    ExplicitWidth = 687
  end
  inherited pnlMenuCadastro: TPanel
    Width = 687
    ExplicitWidth = 687
    inherited tcCadastro: TdxTileControl
      Width = 233
      ExplicitWidth = 233
    end
    inherited dxTileControl1: TdxTileControl
      Left = 522
      ExplicitLeft = 522
    end
    inherited tcConfig: TdxTileControl
      Left = 522
      ExplicitLeft = 522
    end
    inherited dxTileControl2: TdxTileControl
      Left = 636
      ExplicitLeft = 636
    end
  end
  inherited ImgListMenuConfig: TImageList
    Left = 368
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * from WR_CONTROLE'
      'where Codigo = :Codigo')
    Top = 72
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Configuracoes: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select WP.*, WC.CODIGO, WC.DESCRICAO, WC.OBSERVACAO, WC.CODWR_AP' +
        'P, WC.ATIVO, WC.CONFIGURACAO, WC.DT_ALTERACAO, WC.tags,'
      '       WA.DESCRICAO as APLICATIVO, WM.DESCRICAO as MODULO'
      'from WR_CONTROLE_PARENT WP'
      'left join WR_CONTROLE WC on WP.codorigem = WC.CODIGO'
      'left join WR_APP WA on WA.CODIGO = WC.CODWR_APP'
      'left join WR_MODULO WM on WM.CODIGO = WA.CODMODULO'
      
        'where (WP.TIPO = '#39'Configura'#231#245'es'#39')and(WP.CODWR_CONTROLE = :Codigo' +
        ')')
    Left = 311
    Top = 128
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object DSConfiguracoes: TDataSource
    DataSet = Configuracoes
    OnStateChange = DSStateChange
    Left = 339
    Top = 128
  end
  object KPI: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select WP.*, WC.CODIGO, WC.DESCRICAO, WC.OBSERVACAO, WC.CODWR_AP' +
        'P, WC.ATIVO, WC.CONFIGURACAO, WC.DT_ALTERACAO, WC.tags,'
      '       WA.DESCRICAO as APLICATIVO, WM.DESCRICAO as MODULO'
      'from WR_CONTROLE_PARENT WP'
      'left join WR_CONTROLE WC on WP.codorigem = WC.CODIGO'
      'left join WR_APP WA on WA.CODIGO = WC.CODWR_APP'
      'left join WR_MODULO WM on WM.CODIGO = WA.CODMODULO'
      'where (WP.TIPO = '#39'KPI'#39')and(WP.CODWR_CONTROLE = :Codigo)')
    Left = 311
    Top = 157
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object DSKPI: TDataSource
    DataSet = KPI
    OnStateChange = DSStateChange
    Left = 339
    Top = 157
  end
end
