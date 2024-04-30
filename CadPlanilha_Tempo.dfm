inherited FrmPlanilha_Tempo: TFrmPlanilha_Tempo
  Caption = 'Cadastro da Planilha de Tempo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'Select * From Planilha_Tempo'
      'where (Codigo = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
end
