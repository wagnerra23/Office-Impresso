inherited ConsuSalario: TConsuSalario
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OptionsView.ColumnAutoWidth = True
        object GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Funcion'#225'rio'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 451
        end
        object GridConsultaDBTableView1CODFUNCIONARIO: TcxGridDBColumn
          Caption = 'C'#243'digo Func.'
          DataBinding.FieldName = 'CODFUNCIONARIO'
          Width = 105
        end
        object GridConsultaDBTableView1SALARIO: TcxGridDBColumn
          Caption = 'Sal'#225'rio'
          DataBinding.FieldName = 'SALARIO'
          Width = 110
        end
        object GridConsultaDBTableView1QTD_HORAS_TRABALHADAS_MENSAL: TcxGridDBColumn
          Caption = 'Horas Mensais'
          DataBinding.FieldName = 'QTD_HORAS_TRABALHADAS_MENSAL'
          Width = 110
        end
        object GridConsultaDBTableView1COMPETENCIA: TcxGridDBColumn
          Caption = 'Data Compet'#234'ncia'
          DataBinding.FieldName = 'COMPETENCIA'
          Width = 150
        end
        object GridConsultaDBTableView1VALOR_HORA: TcxGridDBColumn
          Caption = 'Valor/Hora'
          DataBinding.FieldName = 'VALOR_HORA'
          Width = 41
        end
        object GridConsultaDBTableView1CODSERVICO_VINCULADO: TcxGridDBColumn
          DataBinding.FieldName = 'CODSERVICO_VINCULADO'
          Visible = False
          Width = 130
        end
        object GridConsultaDBTableView1TOTAL_MENSAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL_MENSAL'
          Visible = False
          Width = 43
        end
      end
    end
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
      ReportDocument.CreationDate = 45071.447753275460000000
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
    FormClassCadastro = 'TFrmSalario'
    FormClassConsulta = 'TFrmSalario'
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT F.*, P.RAZAOSOCIAL FROM FUNCIONARIO_SALARIO F'
      'LEFT JOIN PESSOAS P ON P.CODIGO = F.CODFUNCIONARIO'
      '')
  end
end
