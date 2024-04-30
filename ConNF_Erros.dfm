inherited ConsuNF_Erros: TConsuNF_Erros
  Caption = 'Tratamento de erros da Nota Fiscal'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 342
        end
        object GridConsultaDBTableView1ERRO: TcxGridDBColumn
          Caption = 'Erro'
          DataBinding.FieldName = 'ERRO'
        end
        object GridConsultaDBTableView1TIPO_DOCUMENTO: TcxGridDBColumn
          Caption = 'Tipo de Documento'
          DataBinding.FieldName = 'TIPO_DOCUMENTO'
          Width = 200
        end
        object GridConsultaDBTableView1TELA: TcxGridDBColumn
          Caption = 'Tela'
          DataBinding.FieldName = 'TELA'
          Width = 200
        end
        object GridConsultaDBTableView1COMPONENTE: TcxGridDBColumn
          Caption = 'Componente'
          DataBinding.FieldName = 'COMPONENTE'
          Width = 200
        end
        object GridConsultaDBTableView1LINK: TcxGridDBColumn
          DataBinding.FieldName = 'LINK'
          Width = 500
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 200
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 35
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 186
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
      Caption = 'Tratamento de erros da Nota Fiscal'
      ExplicitWidth = 386
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 386
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44293.346123738430000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM NF_ERROS'
      ' ')
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
    FormClassCadastro = 'TFrmNF_Erros'
    FormClassConsulta = 'TConsuNF_Erros'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'NF_ERROS'
    Modulo = 'NOTA_FISCAL'
  end
end
