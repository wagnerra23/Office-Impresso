inherited FrmProduto_Venda: TFrmProduto_Venda
  Caption = 'FrmProduto_Venda'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    inherited tiBasePadrao: TdxTileControlItem
      IndexInGroup = 2
    end
    inherited tiServico: TdxTileControlItem
      IndexInGroup = 7
    end
    inherited tiVariacao: TdxTileControlItem
      IndexInGroup = 4
    end
    inherited tiComposicao: TdxTileControlItem
      IndexInGroup = 3
    end
    inherited tiMateriaPrima: TdxTileControlItem
      IndexInGroup = 9
      Visible = False
    end
    inherited tiPersonalizado: TdxTileControlItem
      IndexInGroup = 5
    end
    inherited tiPatrimonio: TdxTileControlItem
      IndexInGroup = 6
      Visible = False
    end
    inherited tcBaseItem1: TdxTileControlItem
      IndexInGroup = 1
      Visible = False
      OnActivateDetail = nil
    end
    object tiVenda: TdxTileControlItem
      Tag = 9
      GroupIndex = 0
      IndexInGroup = 0
      RowCount = 2
      Size = tcisExtraLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = []
      Text1.Value = 'Vendas'
      Text2.Align = oaBottomCenter
      Text2.AssignedValues = []
      Text2.Value = 'Produtos que podem ser vendidos'
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiVendaActivateDetail
    end
  end
end
