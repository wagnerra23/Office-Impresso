inherited FrmCentro_Custo: TFrmCentro_Custo
  Caption = 'Cadastro de Classifica'#231#227'o de Centro de Custo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Classifica'#231#227'o de Centro de Custo'
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 3
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'Select * From Centro_Custo'
      'where Codigo = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'CENTRO_CUSTO'
  end
end
