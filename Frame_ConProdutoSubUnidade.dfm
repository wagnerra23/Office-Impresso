inherited Frame_ConsuProdutoSubUnidade: TFrame_ConsuProdutoSubUnidade
  Tag = 24
  inherited dxLayoutControl1: TdxLayoutControl
    ExplicitHeight = 618
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1UN_SUBUNIDADE_DESCRICAO: TcxGridDBColumn
          Caption = 'SubUnidade'
          DataBinding.FieldName = 'UN_SUBUNIDADE_DESCRICAO'
        end
        object GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Fornecedor'
          DataBinding.FieldName = 'RAZAOSOCIAL'
        end
      end
    end
  end
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44845.462617314820000000
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
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmProdutoSubUnidade'
    FormClassConsulta = 'TConsuProdutoSubUnidade_Frame'
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select ps.CODIGO, ps.UN_SUBUNIDADE_DESCRICAO, P.RAZAOSOCIAL from' +
        ' PRODUTO_SUBUNIDADE ps'
      'left join pessoas p on p.codigo = ps.pessoa_fornecedor_codigo')
  end
  object wrFrameEventos: TwrFrameEventos
    Left = 518
    Top = 389
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 434
    Top = 359
  end
end
