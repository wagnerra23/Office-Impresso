inherited Frame_ConsuVenda_NotaFiscal: TFrame_ConsuVenda_NotaFiscal
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
        Selection = 1
      end
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl
    inherited tcAcoes: TdxTileControl
      object btnNotaFiscal: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Text1.AssignedValues = []
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
    end
    inherited LblTotal: TcxLabel
      AnchorY = 672
    end
    inherited btnTodos: TcxButton
      TabOrder = 21
    end
    inherited TreeListUsuarios: TcxDBTreeList
      TabOrder = 22
    end
    inherited liTotalSelecionado: TcxLabel
      AnchorY = 672
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44869.342186851850000000
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
  inherited RepAgenda: TcxEditRepository
    PixelsPerInch = 96
  end
  inherited ImgListActions: TcxImageList
    FormatVersion = 1
  end
  inherited dxRibbonPopupAgrupar: TdxRibbonPopupMenu
    PixelsPerInch = 96
  end
  inherited cxImageListTreeList: TcxImageList
    FormatVersion = 1
  end
end
