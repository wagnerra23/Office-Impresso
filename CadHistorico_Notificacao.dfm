inherited FrmHistorico_Notificacao: TFrmHistorico_Notificacao
  Caption = 'Cadastro de Notifica'#231#245'es'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM HISTORICO_NOTIFICACAO'
      'WHERE (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
end
