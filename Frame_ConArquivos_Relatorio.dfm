inherited FrameConsuArquivos_Relatorio: TFrameConsuArquivos_Relatorio
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      Left = 237
      Width = 971
      ExplicitLeft = 237
      ExplicitWidth = 971
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnMouseMove = GridConsultaDBTableView1MouseMove
        OnCellClick = GridConsultaDBTableView1CellClick
        OptionsSelection.CellSelect = True
        OptionsSelection.MultiSelect = True
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          SortIndex = 0
          SortOrder = soAscending
          Width = 390
        end
        object GridConsultaDBTableView1FORM: TcxGridDBColumn
          Caption = 'Form Origem'
          DataBinding.FieldName = 'FORM'
          Visible = False
          GroupIndex = 0
          Width = 95
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 279
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data de Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          PropertiesClassName = 'TcxDateEditProperties'
          DateTimeGrouping = dtgByDate
          Width = 133
        end
        object GridConsultaDBTableView1ARQUIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ARQUIVO'
          Visible = False
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 38
        end
        object GridConsultaDBTableView1LINK: TcxGridDBColumn
          Caption = 'Link'
          DataBinding.FieldName = 'LINK'
          OnCustomDrawCell = GridConsultaDBTableView1LINKCustomDrawCell
          OnGetDisplayText = GridConsultaDBTableView1LINKGetDisplayText
          Width = 100
        end
        object GridConsultaDBTableView1ID_INTERNO: TcxGridDBColumn
          Caption = 'ID Interno'
          DataBinding.FieldName = 'ID_INTERNO'
        end
        object GridConsultaDBTableView1VERSAO: TcxGridDBColumn
          Caption = 'Vers'#227'o'
          DataBinding.FieldName = 'VERSAO'
          Width = 140
        end
        object GridConsultaDBTableView1NATIVO: TcxGridDBColumn
          Caption = 'Nativo'
          DataBinding.FieldName = 'NATIVO'
        end
      end
    end
    inherited LbTotalRegistros: TcxLabel
      Left = 237
      ExplicitLeft = 237
    end
    inherited GridSubGrid: TcxGrid
      Width = 236
      ExplicitWidth = 236
    end
    inherited tcAcoes: TdxTileControl
      OptionsView.ItemWidth = 160
      object tiImportar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Importar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiImportarClick
      end
      object tiExcluir: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Excluir'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiExcluirClick
      end
      object tiBaixarRelatorioEspecifico: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Baixar Relat'#243'rio Espec'#237'fico'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiBaixarRelatorioEspecificoClick
      end
      object tiBaixarRelatoriosAtualizados: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Baixar relat'#243'rios atualizados'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiBaixarRelatoriosAtualizadosClick
      end
      object tiAtivarRelatorio: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 5
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Ativar Relat'#243'rio'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiAtivarRelatorioClick
      end
      object tiDesativarRelatorio: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 6
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Desativar Relat'#243'rio'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiDesativarRelatorioClick
      end
    end
    inherited LiGridSubGrid: TdxLayoutItem
      ControlOptions.OriginalWidth = 236
    end
    object dxLayoutGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
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
      ReportDocument.CreationDate = 44278.616525138890000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited PopupMenu_Imprimir: TPopupMenu
    object Ativar1: TMenuItem
      Caption = 'Ativar'
    end
    object Desativar1: TMenuItem
      Caption = 'Desativar'
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
  inherited MenuAcoes: TPopupMenu
    object N1: TMenuItem [1]
      Caption = '-'
    end
    object ActAtivarRelatorio1: TMenuItem [2]
      Caption = 'Ativar'
    end
    object ActAtivarRelatorio2: TMenuItem [3]
      Caption = 'Desativar'
    end
  end
  inherited ActListConsulta: TActionList
    Left = 324
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmArquivos_Relatorio'
    FormClassConsulta = 'TConsuArquivos_Relatorio'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'ARQUIVOS_RELATORIO'
    Modulo = 'RELATORIO'
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    FormatOptions.AssignedValues = [fvSortOptions]
    SQL.Strings = (
      'select A.*'
      'from ARQUIVOS_RELATORIO A')
    object ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 255
    end
    object ConsultaFORM: TStringField
      FieldName = 'FORM'
      Origin = 'FORM'
      Size = 40
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 6000
    end
    object ConsultaATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaLINK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LINK'
      Origin = 'LINK'
      Size = 500
    end
    object ConsultaID_INTERNO: TStringField
      FieldName = 'ID_INTERNO'
      Origin = 'ID_INTERNO'
      Size = 15
    end
    object ConsultaVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      Size = 30
    end
    object ConsultaNATIVO: TStringField
      FieldName = 'NATIVO'
      Origin = 'NATIVO'
      Size = 1
    end
  end
end
