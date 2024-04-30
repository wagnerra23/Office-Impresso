inherited FrmProducao_Motivo: TFrmProducao_Motivo
  Caption = 'Cadastro de Motivo de Produ'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Motivo de Produ'#231#227'o'
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
    FormClassCadastro = 'TFrmProducao_Motivo'
    FormClassConsulta = 'TConsuProducao_Motivo'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUCAO_STATUS'
      'where CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUCAO_MOTIVO'
    Modulo = 'PRODUCAO'
  end
end
