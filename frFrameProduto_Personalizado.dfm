inherited FrmFrameProduto_Personalizado: TFrmFrameProduto_Personalizado
  Width = 728
  ExplicitWidth = 728
  inherited dxLayoutControl1: TdxLayoutControl
    Top = 38
    Width = 728
    Height = 348
    ExplicitTop = 38
    ExplicitWidth = 728
    ExplicitHeight = 348
    inherited btnMenuConfig: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 1
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    object cxGrid1: TcxGrid [1]
      Left = 0
      Top = 0
      Width = 728
      Height = 348
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 1
        OptionsView.GridLines = glNone
        OptionsView.RowSeparatorColor = clMoneyGreen
        OptionsView.RowSeparatorWidth = 1
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Parent = nil
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object tcMenu: TdxTileControl [1]
    Left = 0
    Top = 0
    Width = 728
    Height = 38
    Align = alTop
    OptionsBehavior.ItemMoving = False
    OptionsView.CenterContentVert = True
    OptionsView.GroupBlockMaxColumnCount = 1
    OptionsView.GroupIndent = 0
    OptionsView.IndentHorz = 4
    OptionsView.IndentVert = 0
    OptionsView.ItemHeight = 35
    TabOrder = 1
    object dxTileControlGroup1: TdxTileControlGroup
      Index = 0
    end
    object tciAdcionar: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 0
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = ANSI_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Adicionar'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
    end
    object tcExcluir: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 2
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = []
      Text1.Value = 'Excluir'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
    end
    object tiAlterar: TdxTileControlItem
      GroupIndex = 0
      IndexInGroup = 1
      Style.BorderColor = 9192083
      Style.GradientBeginColor = 8075648
      Style.GradientEndColor = 8075648
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -16
      Text1.Font.Name = 'Segoe UI Semibold'
      Text1.Font.Style = []
      Text1.Value = 'Alterar'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
