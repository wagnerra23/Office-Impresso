inherited FrmAPI_OImpresso: TFrmAPI_OImpresso
  Caption = 'Intregracoes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Title.Text = 'API - OImpresso.com'
    inherited dxTileControl1Group1: TdxTileControlGroup
      Caption.Text = 'OImpresso OnLine'
    end
    object tcBaseGroup1: TdxTileControlGroup [1]
      Index = 1
    end
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 20
      Text1.Value = 'Office impresso'
    end
    object tiOImpresso_ConfiguracaoAPI: TdxTileControlItem
      Tag = 19
      GroupIndex = 1
      IndexInGroup = 0
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = []
      Text1.Value = 'Configura'#231#227'o API'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiOImpresso_ConfiguracaoAPIActivateDetail
    end
  end
end
