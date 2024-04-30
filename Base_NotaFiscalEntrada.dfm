inherited FrmNotaFiscalEntrada: TFrmNotaFiscalEntrada
  Caption = 'Manifesta'#231#227'o do Destinat'#225'rio'
  ClientHeight = 556
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Height = 556
    ExplicitHeight = 556
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 33
      Text1.Alignment = taCenter
      Text1.Value = 'Manifesta'#231#227'o do Destinat'#225'rio'
      Text1.WordWrap = True
      Text2.WordWrap = True
    end
    object tiHistoricoRequisicoes: TdxTileControlItem
      Tag = 49
      GroupIndex = 0
      IndexInGroup = 1
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.Alignment = taCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = []
      Text1.Value = 'Hist'#243'rico de Requisi'#231#245'es'
      Text1.WordWrap = True
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiEventos: TdxTileControlItem
      Tag = 50
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
      Text1.Value = 'Eventos'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
  end
end
