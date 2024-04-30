inherited ConsuConfiguracao_Acoes: TConsuConfiguracao_Acoes
  Caption = 'A'#231#245'es quando Mover o campo '
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = DS
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descric'#227'o'
          DataBinding.FieldName = 'DESCRICAO'
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
      end
    end
    inherited BtnPaginaAnterior: TcxButton
      TabOrder = 25
    end
    inherited LbFiltosAtivos: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa1: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa2: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa3: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa4: TcxLabel
      AnchorY = 53
    end
    inherited BtnProximaPagina: TcxButton
      TabOrder = 21
    end
    inherited cxButton2: TcxButton
      TabOrder = 29
    end
    inherited LbTitulo: TcxLabel
      Caption = 'A'#231#245'es quando Mover o campo '
      ExplicitWidth = 343
    end
    inherited edtRapidoAgrupar: TcxComboBox
      Properties.Items.Strings = (
        '-Agrupar Por-'
        'A'#231#245'es'
        'Telas')
    end
    object WRButtonFlat1: TWRButtonFlat [28]
      Left = 10000
      Top = 10000
      Width = 117
      Height = 25
      Action = ActFiltroForm
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 20
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object WRButtonFlat2: TWRButtonFlat [29]
      Left = 10000
      Top = 10000
      Width = 112
      Height = 25
      Action = ActFiltroAcao
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 27
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    inherited GrupoFiltrosAcoes: TdxLayoutGroup
      Visible = True
      ItemIndex = 2
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 343
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44070.469255104170000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select *'
      'from CONFIGURACAO_ACOES CA'
      '')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [2]
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaATIVO: TStringField [3]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
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
  inherited ActListConsulta: TActionList
    object ActFiltroForm: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'TELA DO SISTEMA'
      GroupIndex = 33
      OnExecute = ActFiltroFormExecute
    end
    object ActFiltroAcao: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'A'#199#213'ES'
      GroupIndex = 33
      OnExecute = ActFiltroFormExecute
    end
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmConfiguracao_Acoes'
    FormClassConsulta = 'TConsuConfiguracao_Acoes'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'CONFIGURACAO_ACOES'
    Modulo = 'CONFIGURACAO'
  end
end
