inherited FrmFinanceiro_Base: TFrmFinanceiro_Base
  Caption = 'Financeiro'
  ClientWidth = 1139
  OnCreate = FormCreate
  ExplicitWidth = 1155
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Width = 1139
    ExplicitWidth = 1139
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 30
      Text1.Value = 'Financeiro'
    end
    object tiBoleto: TdxTileControlItem
      Tag = 21
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
      Text1.Value = 'Boleto'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiCreditoDeCliente: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 2
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Cr'#233'dito de cliente'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
    end
    object tiCheque: TdxTileControlItem
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
      Text1.Value = 'Cheque'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
    end
    object tiCartao_Credito: TdxTileControlItem
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
      Text1.Value = 'Cart'#227'o de Cr'#233'dito / D'#233'bito'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
    end
    object tiComissoes: TdxTileControlItem
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
      Text1.Value = 'Comiss'#245'es'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
    end
    object tiContrato: TdxTileControlItem
      Tag = 113
      GroupIndex = 0
      IndexInGroup = 6
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Contrato'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiConciliacaoBancaria: TdxTileControlItem
      Tag = 31
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
      Text1.Value = 'Concilia'#231#227'o banc'#225'ria'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiCentro_Custo: TdxTileControlItem
      Tag = 110
      GroupIndex = 0
      IndexInGroup = 8
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Centro de custo'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
  end
end
