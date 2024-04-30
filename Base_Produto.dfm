inherited FrmProduto: TFrmProduto
  Caption = 'Produtos'
  ClientHeight = 466
  ClientWidth = 1145
  OnCreate = FormCreate
  ExplicitWidth = 1161
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Width = 1145
    Height = 466
    OptionsView.GroupMaxRowCount = 2
    Title.Text = 'Carregando Produtos...'
    ExplicitWidth = 1145
    ExplicitHeight = 466
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 13
      IndexInGroup = 1
      Text1.Value = 'Todos'
    end
    object tiServico: TdxTileControlItem
      Tag = 1
      GroupIndex = 0
      IndexInGroup = 2
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.Alignment = taCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Servi'#231'os'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiVariacao: TdxTileControlItem
      Tag = 2
      GroupIndex = 0
      IndexInGroup = 3
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = ANSI_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Varia'#231#245'es'
      Text2.Align = oaBottomCenter
      Text2.Alignment = taCenter
      Text2.AssignedValues = []
      Text2.Value = 'Cores e tamanhos'#13#10'Pre'#231'o por quantidade '
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiComposicao: TdxTileControlItem
      Tag = 3
      GroupIndex = 0
      IndexInGroup = 5
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = ANSI_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Composi'#231#245'es'
      Text2.Align = oaBottomCenter
      Text2.AssignedValues = []
      Text2.Value = 'Monte seu produto com mat'#233'rias primas fixas'
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiMateriaPrima: TdxTileControlItem
      Tag = 4
      GroupIndex = 0
      IndexInGroup = 6
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Mat'#233'rias-primas'
      Text2.Align = oaBottomCenter
      Text2.AssignedValues = []
      Text2.Value = 'Produtos usados na composi'#231#227'o do produt'
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiPersonalizado: TdxTileControlItem
      Tag = 5
      GroupIndex = 0
      IndexInGroup = 4
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = ANSI_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Personalizados'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiPatrimonio: TdxTileControlItem
      Tag = 6
      GroupIndex = 0
      IndexInGroup = 7
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = ANSI_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Patrim'#244'nio'
      Text2.Align = oaBottomCenter
      Text2.AssignedValues = []
      Text2.Value = 'Equipamentos, Ferramentas, etc..'
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiUsoEConsumo: TdxTileControlItem
      Tag = 7
      GroupIndex = 0
      IndexInGroup = 8
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Uso e Consumo'
      Text2.Align = oaBottomCenter
      Text2.Alignment = taCenter
      Text2.AssignedValues = []
      Text2.Value = 
        'Prdutos de limpesa e materiais de escrit'#243'rio'#13#10'N'#227'o usados diretam' +
        'ente nos produtos na '#13#10'produ'#231#227'o'
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tcBaseItem1: TdxTileControlItem
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
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Venda'
      Text2.Align = oaBottomCenter
      Text2.AssignedValues = []
      Text2.Value = 'Produtos que podem ser vendidos'
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
  end
end
