inherited ConsuProduto_Lote: TConsuProduto_Lote
  Caption = 'Lote de Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          SortIndex = 0
          SortOrder = soAscending
        end
        object GridConsultaDBTableView1CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'd. Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          Width = 83
        end
        object GridConsultaDBTableView1REFERENCIA: TcxGridDBColumn
          Caption = 'Lote / Serial'
          DataBinding.FieldName = 'REFERENCIA'
          Width = 87
        end
        object GridConsultaDBTableView1PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTO'
          Width = 140
        end
        object GridConsultaDBTableView1QUANTIDADE: TcxGridDBColumn
          Caption = 'Quant.'
          DataBinding.FieldName = 'QUANTIDADE'
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 33
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Atera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 137
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 236
        end
        object GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social/ Cliente'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 249
        end
        object GridConsultaDBTableView1FANTASIA: TcxGridDBColumn
          Caption = 'Fantasia/ Cliente'
          DataBinding.FieldName = 'FANTASIA'
          Width = 156
        end
      end
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
      TabOrder = 25
    end
    inherited BtnGoogleMais: TcxButton
      TabOrder = 20
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 21
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Lote de Produto'
      ExplicitWidth = 181
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 181
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 42968.441137395840000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select PL.CODIGO, PL.CODPRODUTO, PL.REFERENCIA, PL.QUANTIDADE, P' +
        'L.DESCRICAO, PL.PESSOA_CLIENTE_CODIGO,'
      
        '       PL.DT_ALTERACAO, P.DESCRICAO as PRODUTO, PS.RAZAOSOCIAL, ' +
        'PS.FANTASIA, PS.ATIVO'
      'from PRODUTO_LOTE PL'
      'left join PRODUTO P on (P.CODIGO = PL.CODPRODUTO)'
      'left join PESSOAS PS on (PS.CODIGO = PL.PESSOA_CLIENTE_CODIGO)')
    object ConsultaCODPRODUTO: TStringField [0]
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ConsultaREFERENCIA: TStringField [1]
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object ConsultaQUANTIDADE: TFloatField [2]
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object ConsultaDESCRICAO: TStringField [3]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object ConsultaPRODUTO: TStringField [4]
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object ConsultaRAZAOSOCIAL: TStringField [5]
      AutoGenerateValue = arDefault
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object ConsultaFANTASIA: TStringField [6]
      AutoGenerateValue = arDefault
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object ConsultaCODIGO: TIntegerField [7]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [8]
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaPESSOA_CLIENTE_CODIGO: TStringField [9]
      FieldName = 'PESSOA_CLIENTE_CODIGO'
      Origin = 'PESSOA_CLIENTE_CODIGO'
      Size = 10
    end
    object ConsultaATIVO: TStringField [10]
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      ProviderFlags = []
      ReadOnly = True
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
    object Action1: TAction
      Caption = 'Action1'
    end
    object ActFiltroCliente: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'Filtrar apenas para o cliente atual'
      Checked = True
    end
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmProduto_Lote'
    FormClassConsulta = 'TConsuProduto_Lote'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUTO_LOTE'
    Modulo = 'PRODUTO'
  end
end
