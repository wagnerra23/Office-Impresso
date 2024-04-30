inherited FrameAnexosVenda_Produto: TFrameAnexosVenda_Produto
  inherited dxLayoutControl1: TdxLayoutControl
    inherited tcMenuAnexo: TdxTileControl
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 400
      OptionsView.IndentVert = 0
      OptionsView.ItemIndent = 0
      object tcMenuAnexoGroup1: TdxTileControlGroup
        Index = 0
      end
      object tiAnexo: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Style.BorderColor = 551663654
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.GradientBeginColor = 551332608
        Style.GradientEndColor = 551796480
        Text1.AssignedValues = []
        Text1.Value = 'Anexos'
        Text2.AssignedValues = []
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -9
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.Value = 'Compartilhado com a Produ'#231#227'o'
        Text3.WordWrap = True
        Text4.AssignedValues = []
        OnClick = tiAnexoClick
      end
      object tiVenda: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Style.BorderColor = 539409370
        Style.GradientBeginColor = 56038
        Style.GradientEndColor = 538626272
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Venda'
        Text2.AssignedValues = []
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -9
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.IndentVert = 18
        Text3.Value = 'Todos Arquivos da Venda'
        Text4.AssignedValues = []
        OnClick = tiVendaClick
      end
      object tiProduto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Style.BorderColor = 541559278
        Style.GradientBeginColor = 538992358
        Style.GradientEndColor = 541559278
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Produto'
        Text2.AssignedValues = []
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -9
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.IndentVert = 18
        Text3.Value = 'Cadastro do Produto'
        Text3.WordWrap = True
        Text4.AssignedValues = []
        OnClick = tiProdutoClick
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
