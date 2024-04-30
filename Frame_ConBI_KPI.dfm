inherited ConsuBI_KPI: TConsuBI_KPI
  Hint = 'Atalhos r'#225'pidos'
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      Left = 202
      Top = 42
      Width = 1005
      Height = 553
      ExplicitLeft = 202
      ExplicitTop = 42
      ExplicitWidth = 1005
      ExplicitHeight = 553
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          SortIndex = 0
          SortOrder = soAscending
          Width = 52
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 281
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 180
        end
        object GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
        end
        object GridConsultaDBTableView1QUANT_REGISTROS: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT_REGISTROS'
          Visible = False
          Width = 88
        end
        object GridConsultaDBTableView1GRAFICO_PERIODO: TcxGridDBColumn
          DataBinding.FieldName = 'GRAFICO_PERIODO'
          Visible = False
        end
        object GridConsultaDBTableView1GRAFICO_TIPO: TcxGridDBColumn
          Caption = 'Gr'#225'fico'
          DataBinding.FieldName = 'GRAFICO_TIPO'
          Visible = False
          Width = 84
        end
        object GridConsultaDBTableView1Bloco: TcxGridDBColumn
          Caption = 'Bloco'
          DataBinding.FieldName = 'BLOCO'
          Width = 131
        end
        object GridConsultaDBTableView1FORM: TcxGridDBColumn
          Caption = 'Tela'
          DataBinding.FieldName = 'FORM'
          Width = 107
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 35
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 168
        end
      end
    end
    inherited GridSubGrid: TcxGrid
      Top = 42
      Width = 201
      Height = 578
      ExplicitTop = 42
      ExplicitWidth = 201
      ExplicitHeight = 578
    end
    inherited pnlFlipRotate: TPanel
      Left = 1210
      Top = 42
      Width = 38
      Height = 578
      ExplicitLeft = 1210
      ExplicitTop = 42
      ExplicitWidth = 38
      ExplicitHeight = 578
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited LiGridSubGrid: TdxLayoutItem
      ControlOptions.OriginalWidth = 201
    end
    inherited GrupoView: TdxLayoutGroup
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'EdtPesquisa'
      CaptionOptions.Visible = False
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 315
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      Index = -1
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
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44323.304106932870000000
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
    FormClassCadastro = 'TFrmAtalho_Rapido'
    FormClassConsulta = 'TConsuAtalho_Rapido'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'ATALHO_RAPIDO'
    Modulo = 'RELATORIO'
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'Select C.*, CF.DESCRICAO AS FORM From BI_KPI  C'
      
        'left join CONFIGURACAO_FORM CF ON CF.CODIGO = C.CODCONFIGURACAO_' +
        'FORM')
  end
  object PopupMenu1: TPopupMenu
    Left = 656
    Top = 292
    object ntnAgruparPorBLOCO1: TMenuItem
      Caption = 'Bloco'
    end
    object ntnAgruparFROM1: TMenuItem
      Caption = 'Tela'
    end
  end
end
