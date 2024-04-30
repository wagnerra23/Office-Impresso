inherited FrmConciliacao_Bancaria: TFrmConciliacao_Bancaria
  Caption = 'Concilia'#231#227'o Banc'#225'ria'
  ClientHeight = 547
  ClientWidth = 817
  ExplicitWidth = 833
  ExplicitHeight = 586
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Width = 817
    Height = 547
    OptionsView.GroupLayout = glVertical
    OptionsView.GroupMaxRowCount = 1
    ExplicitWidth = 817
    ExplicitHeight = 547
    object tcBaseGroup1: TdxTileControlGroup [0]
      Index = 0
    end
    inherited dxTileControl1Group1: TdxTileControlGroup
      Index = 1
    end
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 31
      GroupIndex = 1
      Text1.Value = 'Concilia'#231#227'o banc'#225'ria'
    end
    object tcBaseItem1: TdxTileControlItem
      Tag = 32
      GroupIndex = 1
      IndexInGroup = 1
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Arquivos importados'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
  end
end
