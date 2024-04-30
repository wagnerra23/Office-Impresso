inherited ConsuNF_Regime_Especial_Tributacao: TConsuNF_Regime_Especial_Tributacao
  Caption = 'Regime Especial de Tributa'#231#227'o'
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
          Width = 471
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Visible = False
          Width = 31
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 185
        end
      end
    end
    inherited BtnPesquisar: TcxButton
      TabOrder = 20
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
      TabOrder = 21
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 22
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Regime Especial de Tributa'#231#227'o'
      ExplicitWidth = 332
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 332
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 43355.743727858800000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT * FROM NF_regime_especial_tributacao')
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
    object ConsultaATIVO: TStringField [2]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [3]
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
    FormClassCadastro = 'TFrmNF_Regime_Especial_Tributacao'
    FormClassConsulta = 'TConsuNF_Regime_Especial_Tributacao'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'NF_REGIME_ESPECIAL_TRIBUTACAO'
    Modulo = 'NOTA_FISCAL'
  end
end
