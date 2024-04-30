inherited FrmVenda_Base: TFrmVenda_Base
  Caption = 'Vendas'
  ClientHeight = 535
  OnCreate = FormCreate
  ExplicitHeight = 574
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Height = 535
    ExplicitLeft = 0
    ExplicitHeight = 535
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 40
      IndexInGroup = 2
      Text1.Value = 'Venda'
    end
    object tiOrcamento: TdxTileControlItem
      Tag = 41
      GroupIndex = 0
      IndexInGroup = 0
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Or'#231'amento'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiPedido: TdxTileControlItem
      Tag = 42
      GroupIndex = 0
      IndexInGroup = 1
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Pedido'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiPDV: TdxTileControlItem
      Tag = 43
      GroupIndex = 0
      IndexInGroup = 3
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'PDV'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiNotaFiscal: TdxTileControlItem
      Tag = 44
      GroupIndex = 0
      IndexInGroup = 4
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Notas Fiscais'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiOImpresso: TdxTileControlItem
      Tag = 45
      GroupIndex = 0
      IndexInGroup = 5
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'OImpresso.com'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActiveFrameChanged = tiBasePadraoActivateDetail
    end
  end
end
