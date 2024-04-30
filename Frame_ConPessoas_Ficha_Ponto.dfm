inherited Frame_ConsuPessoas_Funcionario_Ficha_Ponto: TFrame_ConsuPessoas_Funcionario_Ficha_Ponto
  inherited dxLayoutControl1: TdxLayoutControl
    inherited tcAcoes: TdxTileControl
      inherited dxTileControlItem1: TdxTileControlItem
        Visible = False
      end
      object tcAcoesItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Processar Arquivo'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcAcoesItem1Click
      end
      object tcAcoesItem2: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Gera Ponto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcAcoesItem2Click
      end
    end
    inherited EdtSequenciaPessoa: TcxTextEdit
      TabOrder = 14
    end
    inherited CbFiltrandoPor: TcxComboBox
      Style.BorderStyle = ebsNone
      Style.ButtonStyle = btsSimple
      TabOrder = 15
    end
    inherited liCbFiltrandoPor: TdxLayoutItem
      AlignHorz = ahRight
    end
  end
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
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44981.452518622680000000
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
