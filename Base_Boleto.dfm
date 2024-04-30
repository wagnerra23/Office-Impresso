inherited FrmBoleto: TFrmBoleto
  Align = alRight
  Caption = 'Emiss'#227'o de boletos'
  ClientHeight = 596
  ClientWidth = 1059
  FormStyle = fsNormal
  ExplicitWidth = 1075
  ExplicitHeight = 635
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Width = 1059
    Height = 596
    OptionsBehavior.ItemMoving = False
    OptionsView.GroupLayout = glVertical
    OptionsView.GroupMaxRowCount = 1
    Title.Text = 'Boletos'
    ExplicitWidth = 1059
    ExplicitHeight = 596
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 21
      Text1.Value = 'Boletos'
    end
    object tcBaseItem1: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 1
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = ANSI_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Hist'#243'rico de Log '
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tcBaseItem1ActivateDetail
    end
    object tcBaseItem2: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 2
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = ANSI_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Configura'#231#227'o'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tcBaseItem1ActivateDetail
    end
    object tcBaseItem3: TdxTileControlItem
      Tag = 30
      GroupIndex = 0
      IndexInGroup = 3
      Text1.AssignedValues = []
      Text1.Value = 'Financeiro'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
  end
end
