inherited FrmBase_BI_Geral: TFrmBase_BI_Geral
  Caption = 'FrmBase_BI_Geral'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 70
      Text1.Value = 'BI'
    end
    object tcBaseItem1: TdxTileControlItem
      Tag = 230
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
      Text1.Value = 'BI Ger'#234'ncia'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
  end
end