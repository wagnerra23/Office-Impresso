inherited FrameAnexosVenda: TFrameAnexosVenda
  OnEnter = FrameEnter
  inherited dxLayoutControl1: TdxLayoutControl
    inherited tcMenuAnexo: TdxTileControl
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 400
      OptionsView.IndentVert = 0
      OptionsView.ItemIndent = 0
      object tgVenda: TdxTileControlGroup
        Index = 0
      end
      object tgProdutos: TdxTileControlGroup
        Visible = False
        Index = 1
      end
      object tiAnexo: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Style.BorderColor = 551663654
        Style.GradientBeginColor = 551332608
        Style.GradientEndColor = 551796480
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Anexos'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.IndentVert = 18
        Text3.Value = 'Arquivos de Venda'
        Text4.AssignedValues = []
        OnClick = tiAnexoClick
      end
      object tiProducao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Style.BorderColor = 540330879
        Style.GradientBeginColor = 537833300
        Style.GradientEndColor = 537969256
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Produ'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.IndentVert = 18
        Text3.Value = 'Arquivos para produ'#231#227'o'
        Text4.AssignedValues = []
        OnClick = tiProducaoClick
      end
      object tiPorduto1: TdxTileControlItem
        GroupIndex = 1
        IndexInGroup = 0
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Produto 1'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.IndentVert = 18
        Text3.Value = 'Banner'
        Text4.AssignedValues = []
      end
    end
    inherited lblMensagemCabecalho: TcxLabel
      AnchorY = 17
    end
    inherited lblSelecionado: TcxLabel
      AnchorY = 17
    end
    inherited dxLayoutItem2: TdxLayoutItem
      ControlOptions.OriginalHeight = 23
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
