inherited ConsSped: TConsSped
  Caption = 'Consulta Sped'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    ExplicitTop = 0
    ExplicitHeight = 730
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = DS
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO'
          Width = 263
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
        object GridConsultaDBTableView1DT_SPED_GERADO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_SPED_GERADO'
        end
        object GridConsultaDBTableView1DT_INICO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_INICO'
        end
        object GridConsultaDBTableView1DT_FIM: TcxGridDBColumn
          DataBinding.FieldName = 'DT_FIM'
        end
        object GridConsultaDBTableView1PERFIL: TcxGridDBColumn
          DataBinding.FieldName = 'PERFIL'
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
      Caption = 'Consulta Sped'
      ExplicitWidth = 160
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 160
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44238.733959328700000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select * from sped')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
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
    object ConsultaDT_SPED_GERADO: TSQLTimeStampField [4]
      FieldName = 'DT_SPED_GERADO'
      Origin = 'DT_SPED_GERADO'
    end
    object ConsultaDT_INICO: TSQLTimeStampField [5]
      FieldName = 'DT_INICO'
      Origin = 'DT_INICO'
    end
    object ConsultaDT_FIM: TSQLTimeStampField [6]
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
    object ConsultaPERFIL: TStringField [7]
      FieldName = 'PERFIL'
      Origin = 'PERFIL'
      Size = 50
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
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
    FormClassCadastro = 'TFrmSped'
    FormClassConsulta = 'TConsSped'
  end
end
