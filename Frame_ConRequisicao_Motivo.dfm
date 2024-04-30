inherited ConsuRequisicao_Motivo: TConsuRequisicao_Motivo
  inherited pnlFiltros: TPanel [0]
    inherited tcFiltrosPanel: TdxTileControl
      object tcFiltrosPanelItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Text1.AssignedValues = []
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
  end
  inherited pnlIniciar: TPanel [1]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [2]
    ExplicitHeight = 618
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Width = 39
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Motivo'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 661
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1COR: TcxGridDBColumn
          DataBinding.FieldName = 'COR'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1TEM_OBSERVACAO: TcxGridDBColumn
          DataBinding.FieldName = 'TEM_OBSERVACAO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1ESTILO: TcxGridDBColumn
          DataBinding.FieldName = 'ESTILO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1FILA: TcxGridDBColumn
          DataBinding.FieldName = 'FILA'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1ICO: TcxGridDBColumn
          DataBinding.FieldName = 'ICO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1TIPO_MOVIMENTACAO: TcxGridDBColumn
          Caption = 'Tipo Movimenta'#231#227'o'
          DataBinding.FieldName = 'TIPO_MOVIMENTACAO'
        end
      end
    end
  end
  inherited pnlFiltroData: TPanel [3]
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited pnlAgrupador: TPanel [4]
  end
  inherited pnlImpressoes: TPanel [5]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44914.397482245370000000
      PixelsPerInch = 96
      BuiltInReportLink = True
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
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select * from PRODUTO_REQUISICAO_MOTIVO')
    object ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object ConsultaTEM_OBSERVACAO: TStringField
      FieldName = 'TEM_OBSERVACAO'
      Origin = 'TEM_OBSERVACAO'
      Size = 1
    end
    object ConsultaESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Size = 50
    end
    object ConsultaFILA: TIntegerField
      FieldName = 'FILA'
      Origin = 'FILA'
    end
    object ConsultaICO: TIntegerField
      FieldName = 'ICO'
      Origin = 'ICO'
    end
    object ConsultaTIPO_MOVIMENTACAO: TStringField
      FieldName = 'TIPO_MOVIMENTACAO'
      Origin = 'TIPO_MOVIMENTACAO'
      Size = 1
    end
    object ConsultaFORM: TStringField
      FieldName = 'FORM'
      Origin = 'FORM'
      Size = 100
    end
  end
end
