inherited FrmComissao_Selecao: TFrmComissao_Selecao
  Caption = 'Sele'#231#227'o para Comiss'#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 65
      Text1.Value = 'Representante'
    end
    object tiAgencia: TdxTileControlItem
      Tag = 66
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
      Text1.Value = 'Ag'#234'ncia'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiFuncionario: TdxTileControlItem
      Tag = 67
      GroupIndex = 0
      IndexInGroup = 2
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = []
      Text1.Value = 'Funcion'#225'rio'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
  end
end
