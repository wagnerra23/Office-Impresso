inherited FrameAnexosPessoas: TFrameAnexosPessoas
  inherited dxLayoutControl1: TdxLayoutControl
    inherited tcMenuAnexo: TdxTileControl
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 20
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 50
      OptionsView.ItemIndent = 0
      object tgExplorer: TdxTileControlGroup
        Index = 0
      end
      object tiPessoas: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Style.BorderColor = 541559278
        Style.GradientBeginColor = 538992358
        Style.GradientEndColor = 541559278
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Anexos'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.Value = 'Geral'
        Text4.AssignedValues = []
        OnClick = tiPessoasClick
      end
      object tiProducao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Style.BorderColor = 540330879
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
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
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -11
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.Value = 'Vis'#237'vel na produ'#231#227'o'#13#10
        Text4.AssignedValues = []
        OnClick = tiProducaoClick
      end
      object tcVenda: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Style.BorderColor = 539409370
        Style.GradientBeginColor = 56038
        Style.GradientEndColor = 538626272
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Venda'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.Value = 'Vis'#237'vel na venda'
        Text4.AssignedValues = []
        OnClick = tcVendaClick
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
