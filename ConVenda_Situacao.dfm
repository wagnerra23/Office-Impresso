inherited ConsuVenda_Situacao: TConsuVenda_Situacao
  Caption = 'Situa'#231#227'o de Venda'
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
          Width = 452
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 38
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 197
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
    inherited cxButton2: TcxButton
      TabOrder = 25
    end
    inherited BtnGoogleMais: TcxButton
      TabOrder = 19
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 20
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Situa'#231#227'o da Venda'
      ExplicitWidth = 205
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 205
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 42992.919263958330000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select *'
      'from VENDA_SITUACAO')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
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
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmVenda_Situacao'
    FormClassConsulta = 'TConsuVenda_Situacao'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'VENDA_SITUACAO'
    Modulo = 'VENDA'
  end
end