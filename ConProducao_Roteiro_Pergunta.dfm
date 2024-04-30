inherited ConsuProducao_Roteiro_Pergunta: TConsuProducao_Roteiro_Pergunta
  Caption = 'Perguntas do Roteiro'
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
          Width = 244
        end
        object GridConsultaDBTableView1TIPO_PERGUNTA: TcxGridDBColumn
          Caption = 'Tipo de Pergunta'
          DataBinding.FieldName = 'TIPO_PERGUNTA'
          Width = 180
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 250
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 43
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 134
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
      TabOrder = 25
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 22
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Perguntas do Roteiro'
      ExplicitWidth = 234
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 234
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44092.302369375000000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    Transaction = Transa
    SQL.Strings = (
      'select * from Producao_Roteiro_Pergunta')
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
    FormClassCadastro = 'TFrmProducao_RTConsuProducao_Roteiro_Perguntaoteiro_Pergunta'
    FormClassConsulta = 'TConsuProducao_Roteiro_Pergunta'
  end
end
