inherited ConsuProducao_Estagio: TConsuProducao_Estagio
  Caption = 'Est'#225'gio de produ'#231#227'o'
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
          Caption = 'Descricao'
          DataBinding.FieldName = 'DESCRICAO'
        end
        object GridConsultaDBTableView1ICONE: TcxGridDBColumn
          Caption = 'Icone'
          DataBinding.FieldName = 'ICONE'
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Ult'#237'ma Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
      end
    end
    inherited BtnPesquisar: TcxButton
      TabOrder = 25
    end
    inherited BtnPaginaAnterior: TcxButton
      TabOrder = 24
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
      TabOrder = 19
    end
    inherited BtnGoogleMais: TcxButton
      TabOrder = 20
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 21
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Est'#225'gio de produ'#231#227'o'
      ExplicitWidth = 226
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 226
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44080.640347534730000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUCAO_ESTAGIO')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object ConsultaICONE: TIntegerField [2]
      FieldName = 'ICONE'
      Origin = 'ICONE'
    end
    object ConsultaATIVO: TStringField [3]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [4]
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
    FormClassCadastro = 'TFrmProducao_Estagio'
    FormClassConsulta = 'TConsuProducao_Estagio'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUCAO_ESTAGIO'
    Modulo = 'PRODUCAO'
  end
end
