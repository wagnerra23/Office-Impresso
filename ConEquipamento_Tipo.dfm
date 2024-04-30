inherited ConsuEquipamento_Tipo: TConsuEquipamento_Tipo
  Caption = 'ConsuEquipamento_Tipo'
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
          Width = 410
        end
        object GridConsultaDBTableView1RATEIO: TcxGridDBColumn
          Caption = 'Participa Rateio'
          DataBinding.FieldName = 'RATEIO'
          Width = 108
        end
        object GridConsultaDBTableView1MENSSALIDADE: TcxGridDBColumn
          Caption = 'R$ Mensalidade'
          DataBinding.FieldName = 'MENSSALIDADE'
          Width = 125
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
    inherited BtnGoogleMais: TcxButton
      TabOrder = 23
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 22
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Tipo de Equipamento'
      ExplicitWidth = 236
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 236
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 43287.421231932870000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select * from equipamento_tipo')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object ConsultaRATEIO: TStringField [2]
      FieldName = 'RATEIO'
      Origin = 'RATEIO'
      Size = 1
    end
    object ConsultaMENSSALIDADE: TFloatField [3]
      FieldName = 'MENSSALIDADE'
      Origin = 'MENSSALIDADE'
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
    FormClassCadastro = 'TFrmEquipamento_Tipo'
    FormClassConsulta = 'TConsuEquipamento_Tipo'
  end
end
