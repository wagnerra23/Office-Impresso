inherited ConsuNF_Natureza_Operacao: TConsuNF_Natureza_Operacao
  Caption = 'Natureza da Opera'#231#227'o'
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
          Width = 554
        end
        object GridConsultaDBTableView1TIPO_NF: TcxGridDBColumn
          Caption = 'Tipo de NF'
          DataBinding.FieldName = 'TIPO_NF'
          Width = 85
        end
        object GridConsultaDBTableView1NFSE_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo NFSe'
          DataBinding.FieldName = 'NFSE_CODIGO'
          Visible = False
          Width = 83
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Visible = False
          Width = 47
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 185
        end
      end
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
      TabOrder = 20
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 22
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Natureza da Opera'#231#227'o'
      ExplicitWidth = 250
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 250
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 43355.682507465280000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT * FROM NF_NATUREZA_OPERACAO')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object ConsultaNFSE_CODIGO: TIntegerField [2]
      FieldName = 'NFSE_CODIGO'
      Origin = 'NFSE_CODIGO'
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
    object ConsultaTIPO_NF: TStringField [5]
      FieldName = 'TIPO_NF'
      Origin = 'TIPO_NF'
      Size = 10
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
    FormClassCadastro = 'TFrmNF_Natureza_Operacao'
    FormClassConsulta = 'TConsuNF_Natureza_Operacao'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'NF_NATUREZA_OPERACAO'
    Modulo = 'NOTA_FISCAL'
  end
end
