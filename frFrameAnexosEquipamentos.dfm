inherited FrameAnexosEquipamentos: TFrameAnexosEquipamentos
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxShellListView: TcxShellListView
      ViewStyle = vsIcon
    end
    inherited tcMenuAnexo: TdxTileControl
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupIndent = 1
      OptionsView.IndentVert = 0
      object tcMenuAnexoGroup1: TdxTileControlGroup
        Index = 0
      end
      object tiFotos: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Style.BorderColor = 551663654
        Style.GradientBeginColor = 551332608
        Style.GradientEndColor = 551796480
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = []
        Text1.Value = 'Fotos'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.IndentVert = 18
        Text3.Value = 'Fotos da Vistoria'
        Text4.AssignedValues = []
        OnClick = tiFotosClick
      end
    end
    inherited lblMensagemCabecalho: TcxLabel
      AnchorY = 17
    end
    inherited lblSelecionado: TcxLabel
      AnchorY = 17
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxImageListTreeList: TcxImageList
    FormatVersion = 1
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
end
