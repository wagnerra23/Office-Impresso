inherited ConsuNF_CNAE: TConsuNF_CNAE
  Caption = 'CNAE-Classifica'#231#227'o Nacional de Atividades Econ'#244'micas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Width = 97
        end
        object GridConsultaDBTableView1SECAO: TcxGridDBColumn
          Caption = 'Se'#231#227'o'
          DataBinding.FieldName = 'SECAO'
          Width = 38
        end
        object GridConsultaDBTableView1DIVISAO: TcxGridDBColumn
          Caption = 'Divis'#227'o'
          DataBinding.FieldName = 'DIVISAO'
          Width = 39
        end
        object GridConsultaDBTableView1GRUPO: TcxGridDBColumn
          Caption = 'Grupo'
          DataBinding.FieldName = 'GRUPO'
          Width = 45
        end
        object GridConsultaDBTableView1CLASSE: TcxGridDBColumn
          Caption = 'Classe'
          DataBinding.FieldName = 'CLASSE'
          Width = 75
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 547
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 32
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
      end
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
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 25
    end
    inherited LbTitulo: TcxLabel
      Caption = 'CNAE-Classifica'#231#227'o Nacional de Atividades Econ'#244'micas'
      ExplicitWidth = 600
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 600
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44351.431222662040000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT * FROM NF_CNAE'
      '')
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
    FormClassCadastro = 'TFrmNF_CNAE'
    FormClassConsulta = 'TConsuNF_CNAE'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    Tabela = 'NF_CNAE'
    Modulo = 'NOTA_FISCAL'
  end
end
