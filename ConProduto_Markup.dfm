inherited ConsuProduto_Markup: TConsuProduto_Markup
  Caption = 'Markup'
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
          Width = 290
        end
        object GridConsultaDBTableView1PERC_CUSTO_FIXO: TcxGridDBColumn
          Caption = '% Fixo'
          DataBinding.FieldName = 'PERC_CUSTO_FIXO'
          Width = 57
        end
        object GridConsultaDBTableView1PERC_CUSTO_FINANCEIRO: TcxGridDBColumn
          Caption = '% Financeiro'
          DataBinding.FieldName = 'PERC_CUSTO_FINANCEIRO'
          Width = 71
        end
        object GridConsultaDBTableView1PERC_LUCRO_DESEJADO: TcxGridDBColumn
          Caption = '% Lucro Desejado'
          DataBinding.FieldName = 'PERC_LUCRO_DESEJADO'
          Width = 97
        end
        object GridConsultaDBTableView1PERC_CUSTO_VARIAVEL: TcxGridDBColumn
          Caption = '% Vari'#225'vel'
          DataBinding.FieldName = 'PERC_CUSTO_VARIAVEL'
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 34
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 155
        end
      end
    end
    inherited BtnPesquisar: TcxButton
      TabOrder = 24
    end
    inherited BtnPaginaAnterior: TcxButton
      TabOrder = 21
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
      TabOrder = 26
    end
    inherited cxButton2: TcxButton
      TabOrder = 27
    end
    inherited BtnGoogleMais: TcxButton
      TabOrder = 19
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 20
    end
    inherited btnKanbam: TcxButton
      TabOrder = 25
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Markup'
      ExplicitWidth = 89
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 89
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 43182.374225717590000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select * from PRODUTO_MARKUP')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object ConsultaPERC_CUSTO_FIXO: TFloatField [2]
      FieldName = 'PERC_CUSTO_FIXO'
      Origin = 'PERC_CUSTO_FIXO'
    end
    object ConsultaPERC_CUSTO_FINANCEIRO: TFloatField [3]
      FieldName = 'PERC_CUSTO_FINANCEIRO'
      Origin = 'PERC_CUSTO_FINANCEIRO'
    end
    object ConsultaPERC_LUCRO_DESEJADO: TFloatField [4]
      FieldName = 'PERC_LUCRO_DESEJADO'
      Origin = 'PERC_LUCRO_DESEJADO'
    end
    object ConsultaPERC_CUSTO_VARIAVEL: TFloatField [5]
      FieldName = 'PERC_CUSTO_VARIAVEL'
      Origin = 'PERC_CUSTO_VARIAVEL'
    end
    object ConsultaATIVO: TStringField [6]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [7]
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
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
    FormClassCadastro = 'TFrmProduto_Markup'
    FormClassConsulta = 'TConsuProduto_Markup'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUTO_MARKUP'
    Modulo = 'PRODUTO'
  end
end
