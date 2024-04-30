inherited FrmFinanceiro_Cartao: TFrmFinanceiro_Cartao
  Caption = 'Cadastro de transa'#231#245'es com Cart'#245'es'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de transa'#231#245'es com Cart'#245'es'
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmFinanceiro_Cartao'
    FormClassConsulta = 'ConsuFinanceiro_Cartao'
  end
end
