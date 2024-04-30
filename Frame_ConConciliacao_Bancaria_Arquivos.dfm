inherited Consu1Conciliacao_Bancaria_Arquivos: TConsu1Conciliacao_Bancaria_Arquivos
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1CODBANCO: TcxGridDBColumn
          Caption = 'Cod. Banco'
          DataBinding.FieldName = 'CODBANCO'
        end
        object GridConsultaDBTableView1CONTA: TcxGridDBColumn
          Caption = 'Conta'
          DataBinding.FieldName = 'CONTA'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 268
        end
        object GridConsultaDBTableView1DT_FINANCEIRO: TcxGridDBColumn
          Caption = 'Dt. Concilia'#231#227'o'
          DataBinding.FieldName = 'DT_FINANCEIRO'
          Width = 120
        end
        object GridConsultaDBTableView1DT_INICIO: TcxGridDBColumn
          Caption = 'Dt. Inicial'
          DataBinding.FieldName = 'DT_INICIO'
          Visible = False
        end
        object GridConsultaDBTableView1DT_FIM: TcxGridDBColumn
          Caption = 'Dt. Extrato'
          DataBinding.FieldName = 'DT_FIM'
          Visible = False
        end
        object GridConsultaDBTableView1DT_ARQUIVO: TcxGridDBColumn
          Caption = 'Dt. Arquivo'
          DataBinding.FieldName = 'DT_ARQUIVO'
        end
        object GridConsultaDBTableView1BALANCO_INICIAL: TcxGridDBColumn
          Caption = 'Saldo Anterior'
          DataBinding.FieldName = 'BALANCO_INICIAL'
        end
        object GridConsultaDBTableView1BALANCO_FINAL: TcxGridDBColumn
          Caption = 'Saldo'
          DataBinding.FieldName = 'BALANCO_FINAL'
          Width = 109
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
      ReportDocument.CreationDate = 44624.612293993060000000
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
    FormClassCadastro = 'TFrmConciliacao_Bancaria'
    FormClassConsulta = 'TConsuConciliacao_Bancaria'
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select *'
      'from CONCILIACAO_BANCARIA')
  end
end
