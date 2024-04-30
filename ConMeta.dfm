inherited ConsuMeta: TConsuMeta
  Caption = 'ConsuMeta'
  ExplicitTop = -22
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = DS
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn
          DataBinding.FieldName = 'CODEMPRESA'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1EMPRESA: TcxGridDBColumn
          Caption = 'Empresa'
          DataBinding.FieldName = 'EMPRESA'
          Width = 192
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 276
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Visible = False
          Width = 33
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data Alera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
          Width = 105
        end
        object GridConsultaDBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 74
        end
        object GridConsultaDBTableView1DT_INICIO: TcxGridDBColumn
          Caption = 'Data In'#237'cio'
          DataBinding.FieldName = 'DT_INICIO'
          Width = 57
        end
        object GridConsultaDBTableView1DT_FIM: TcxGridDBColumn
          Caption = 'Data Fim'
          DataBinding.FieldName = 'DT_FIM'
          Width = 60
        end
        object GridConsultaDBTableView1DIAS: TcxGridDBColumn
          Caption = 'Dias'
          DataBinding.FieldName = 'DIAS'
          Visible = False
        end
        object GridConsultaDBTableView1SABADO_DOMINGO: TcxGridDBColumn
          Caption = 'Dias Sabado \ Domingo'
          DataBinding.FieldName = 'SABADO_DOMINGO'
          Visible = False
          Width = 115
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
      TabOrder = 24
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Consulta Meta'
      ExplicitWidth = 163
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 163
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44771.367712511570000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select M.*, E.FANTASIA as EMPRESA from META M'
      'left join EMPRESA E on E.CODIGO = M.CODEMPRESA')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object ConsultaCODEMPRESA: TIntegerField [1]
      FieldName = 'CODEMPRESA'
      Origin = 'CODEMPRESA'
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [2]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
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
    object ConsultaVALOR: TFloatField [5]
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object ConsultaDT_INICIO: TSQLTimeStampField [6]
      FieldName = 'DT_INICIO'
      Origin = 'DT_INICIO'
    end
    object ConsultaDT_FIM: TSQLTimeStampField [7]
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
    object ConsultaDIAS: TIntegerField [8]
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object ConsultaSABADO_DOMINGO: TIntegerField [9]
      FieldName = 'SABADO_DOMINGO'
      Origin = 'SABADO_DOMINGO'
    end
    object ConsultaEMPRESA: TStringField [10]
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA'
      Origin = 'FANTASIA'
      ProviderFlags = []
      Size = 150
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
    Configuracao_Componente = Configuracao_Componente
    Transacao = TransaDragAndDrop
    FormClassCadastro = 'TFrmMeta'
    FormClassConsulta = 'TConsuMeta'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
end
