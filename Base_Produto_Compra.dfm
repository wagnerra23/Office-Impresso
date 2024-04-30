inherited FrmProduto_Compra: TFrmProduto_Compra
  Caption = 'FrmProduto_Compra'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    inherited tiServico: TdxTileControlItem
      IndexInGroup = 3
    end
    inherited tiVariacao: TdxTileControlItem
      IndexInGroup = 4
      Visible = False
    end
    inherited tiComposicao: TdxTileControlItem
      IndexInGroup = 6
      Visible = False
    end
    inherited tiMateriaPrima: TdxTileControlItem
      IndexInGroup = 7
    end
    inherited tiPersonalizado: TdxTileControlItem
      IndexInGroup = 5
      Visible = False
    end
    inherited tiPatrimonio: TdxTileControlItem
      IndexInGroup = 8
    end
    inherited tiUsoEConsumo: TdxTileControlItem
      IndexInGroup = 9
    end
    object tcBaseItem4: TdxTileControlItem
      Tag = 8
      GroupIndex = 0
      IndexInGroup = 2
      RowCount = 2
      Size = tcisExtraLarge
      Text1.AssignedValues = []
      Text1.Value = 'Produtos que podem ser comprados'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tcBaseItem4ActivateDetail
    end
  end
end
