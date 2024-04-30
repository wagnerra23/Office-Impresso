inherited ConsuWR_Controle: TConsuWR_Controle
  inherited pnlFiltros: TPanel [0]
  end
  inherited pnlImpressoes: TPanel [1]
  end
  inherited dxLayoutControl1: TdxLayoutControl [2]
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Width = 28
        end
        object GridConsultaDBTableView1MODULO: TcxGridDBColumn
          Caption = 'M'#243'dulo'
          DataBinding.FieldName = 'MODULO'
          Visible = False
          GroupIndex = 1
          Width = 106
        end
        object GridConsultaDBTableView1APLICATIVO: TcxGridDBColumn
          Caption = 'Aplicativo'
          DataBinding.FieldName = 'APLICATIVO'
          Visible = False
          GroupIndex = 2
          Width = 117
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 282
        end
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Visible = False
          GroupIndex = 0
          Width = 203
        end
        object GridConsultaDBTableView1Tabela: TcxGridDBColumn
          Caption = 'Tabela'
          DataBinding.FieldName = 'TABELA'
          Visible = False
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
        end
        object GridConsultaDBTableView1TAGS: TcxGridDBColumn
          Caption = 'TAGs'
          DataBinding.FieldName = 'TAGS'
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 45
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
      end
    end
    inherited GrupoPesquizarEGrid: TdxLayoutGroup
      ItemIndex = 1
    end
  end
  inherited pnlAgrupador: TPanel [3]
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
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
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 45226.628923391200000000
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
    Transacao = TransaDragAndDrop
    UsaCadastroPocket = True
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    SQL.Strings = (
      'select WP.*,'
      
        '      WC.codigo, wc.descricao, wc.observacao, wc.codwr_app, WC.A' +
        'TIVO, wc.configuracao, wc.DT_ALTERACAO, WC.TAGS,'
      '      WA.DESCRICAO as APLICATIVO, WM.DESCRICAO as MODULO'
      '      from WR_CONTROLE_PARENT WP'
      '      left join WR_CONTROLE WC on WP.CODWR_CONTROLE = WC.CODIGO'
      '      left join WR_APP WA on WA.CODIGO = WC.CODWR_APP'
      '      left join WR_MODULO WM on WM.CODIGO = Wa.codmodulo')
    Left = 268
  end
end
