inherited Frame_ConsuRelNF_Entrada_Produto: TFrame_ConsuRelNF_Entrada_Produto
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited pnlAgrupador: TPanel
    inherited tcAgrupador: TdxTileControl
      inherited tcAgrupadorProduto: TdxTileControlItem
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Height = -16
        Text1.Font.Style = [fsBold]
      end
      inherited tcAgrupadorFornecedor: TdxTileControlItem
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Height = -16
        Text1.Font.Style = [fsBold]
      end
      inherited tcAgrupadorGrupoDeProduto: TdxTileControlItem
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Height = -16
        Text1.Font.Style = [fsBold]
      end
      inherited tcAgrupadorCategoria: TdxTileControlItem
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Height = -16
        Text1.Font.Style = [fsBold]
      end
      inherited tcAgrupadorTipoDeProduto: TdxTileControlItem
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Height = -16
        Text1.Font.Style = [fsBold]
      end
      inherited tcAgrupadorEntradaSaida: TdxTileControlItem
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Height = -16
        Text1.Font.Style = [fsBold]
      end
    end
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44832.423544583330000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxEditStyleController1: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
end
