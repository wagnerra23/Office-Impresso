inherited ConsuConfiguracao_Componente: TConsuConfiguracao_Componente
  Caption = 'Componentes da Tela do Sistema'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1PADRAO: TcxGridDBColumn
          Caption = 'Padr'#227'o'
          DataBinding.FieldName = 'PADRAO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          VisibleForEditForm = bTrue
          Width = 40
        end
        object GridConsultaDBTableView1COMPONENTE: TcxGridDBColumn
          Caption = 'Componente'
          DataBinding.FieldName = 'COMPONENTE'
          Width = 250
        end
        object GridConsultaDBTableView1FORM: TcxGridDBColumn
          Caption = 'Tela do Sistema (Form)'
          DataBinding.FieldName = 'FORM'
          VisibleForEditForm = bTrue
          Width = 250
        end
        object GridConsultaDBTableView1TABELA: TcxGridDBColumn
          Caption = 'Tabela'
          DataBinding.FieldName = 'TABELA'
          Width = 186
        end
        object GridConsultaDBTableView1CAPTION: TcxGridDBColumn
          Caption = 'T'#237'tulo (Caption)'
          DataBinding.FieldName = 'CAPTION'
          Width = 200
        end
        object GridConsultaDBTableView1CAMPO: TcxGridDBColumn
          Caption = 'Campo refer'#234'nciado'
          DataBinding.FieldName = 'CAMPO'
          Width = 167
        end
        object GridConsultaDBTableView1HINT: TcxGridDBColumn
          Caption = 'Hint (Aviso quando passa o mouse)'
          DataBinding.FieldName = 'HINT'
          Width = 198
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 32
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 177
        end
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1FORMATACAO: TcxGridDBColumn
          Caption = 'Formata'#231#227'o'
          DataBinding.FieldName = 'FORMATACAO'
          Visible = False
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
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
      TabOrder = 23
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 29
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Componentes da Tela do Sistema'
      ExplicitWidth = 366
    end
    object WRButtonFlat1: TWRButtonFlat [28]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = ActFiltroTabela
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
      Width = 113
      Height = 25
      Action = ActFiltroForm
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
      ControlOptions.OriginalWidth = 366
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44068.328974432870000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    Transaction = Transa
    SQL.Strings = (
      'select * '
      'from CONFIGURACAO_COMPONENTE')
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
    object ActFiltroTabela: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'TABELA'
      GroupIndex = 33
      OnExecute = ActFiltroFormExecute
    end
    object ActFiltroForm: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'TELA DO SISTEMA'
      GroupIndex = 33
      OnExecute = ActFiltroFormExecute
    end
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmConfiguracao_Componente'
    FormClassConsulta = 'TConsuConfiguracao_Componente'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = 'CONFIGURACAO'
    Tabela = 'CONFIGURACAO_COMPONENTE'
    Modulo = 'CONFIGURACAO'
  end
end
