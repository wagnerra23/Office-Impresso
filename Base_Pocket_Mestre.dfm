inherited FrmBase_Pocket: TFrmBase_Pocket
  BorderStyle = bsNone
  Caption = 'Financeiro'
  ClientHeight = 1039
  ClientWidth = 601
  Color = clDefault
  FormStyle = fsNormal
  PopupMode = pmExplicit
  Position = poOwnerFormCenter
  Visible = False
  ExplicitWidth = 617
  ExplicitHeight = 1078
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Left = 46
    Width = 555
    Height = 1039
    Align = alRight
    OptionsDetailAnimate.AnimationMode = damScroll
    OptionsView.GroupLayout = glVertical
    OptionsView.GroupMaxRowCount = 2
    ExplicitLeft = 46
    ExplicitWidth = 555
    ExplicitHeight = 1039
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 30
    end
    object tcBaseItem1: TdxTileControlItem
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
      Text1.Value = 'Hist'#243'rico'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tcBaseItem1ActivateDetail
    end
    object tiFechar: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 2
      Size = tcisSmall
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = []
      Text1.Value = 'Fechar'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiFecharActivateDetail
    end
  end
end
