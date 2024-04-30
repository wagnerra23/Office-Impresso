inherited FrmFinanceiro_Pocket: TFrmFinanceiro_Pocket
  ClientHeight = 961
  ClientWidth = 569
  ExplicitWidth = 569
  ExplicitHeight = 961
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Left = 14
    Height = 961
    ExplicitLeft = 14
    ExplicitHeight = 961
    inherited tiBasePadrao: TdxTileControlItem
      Text1.Value = 'Financeiro'
    end
    inherited tcBaseItem1: TdxTileControlItem
      IndexInGroup = 2
    end
    inherited tiFechar: TdxTileControlItem
      IndexInGroup = 3
    end
    object tcBaseItem2: TdxTileControlItem
      Tag = 21
      GroupIndex = 0
      IndexInGroup = 1
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = []
      Text1.Value = 'Boleto'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
  end
end
