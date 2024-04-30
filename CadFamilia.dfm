inherited FrmFamilia: TFrmFamilia
  Caption = 'Cadastro de Fam'#237'lia'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Fam'#237'lia'
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
    FormClassCadastro = 'TFrmFamilia'
    FormClassConsulta = 'TConsuFamilia'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * from FAMILIA'
      'where codigo = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 15
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'FAMILIA'
    Modulo = 'PRODUTO'
  end
end
