inherited FrmProduto_Venda_Modal: TFrmProduto_Venda_Modal
  Caption = 'FrmProduto_Venda_Modal'
  FormStyle = fsNormal
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    inherited tiServico: TdxTileControlItem
      IndexInGroup = 5
    end
    inherited tiVariacao: TdxTileControlItem
      IndexInGroup = 6
    end
    inherited tiComposicao: TdxTileControlItem
      IndexInGroup = 7
    end
    inherited tiMateriaPrima: TdxTileControlItem
      IndexInGroup = 4
    end
    inherited tiPersonalizado: TdxTileControlItem
      IndexInGroup = 9
      RowCount = 2
      Size = tcisExtraLarge
    end
    inherited tiPatrimonio: TdxTileControlItem
      IndexInGroup = 3
    end
  end
end
