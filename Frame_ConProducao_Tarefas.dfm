inherited Frame_ConsuProducao_Tarefas: TFrame_ConsuProducao_Tarefas
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        inherited GridConsultaDBTableView1ORDEM: TcxGridDBColumn
          IsCaptionAssigned = True
        end
      end
    end
    inherited tcAcoes: TdxTileControl
      inherited btnFlipCadastro: TdxTileControlItem
        Visible = False
      end
    end
    inherited btnCancelaProducao: TcxButton
      TabOrder = 14
    end
    inherited TreeListUsuarios: TcxDBTreeList
      TabOrder = 15
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
      ReportDocument.CreationDate = 45010.749320347220000000
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
    inherited lofCheck: TdxLayoutStandardLookAndFeel
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
  inherited cxStyleRepositoryGrid: TcxStyleRepository
    PixelsPerInch = 96
    inherited stCompleted: TcxStyle
      TextColor = clNavy
    end
  end
  inherited dxRibbonMenuPCP: TdxRibbonPopupMenu
    PixelsPerInch = 96
  end
  inherited cxEditRepositoryKanban: TcxEditRepository
    PixelsPerInch = 96
  end
  inherited cxImageListTreeList: TcxImageList
    FormatVersion = 1
  end
  object dxUIAdornerManager1: TdxUIAdornerManager
    Badges.Color = clRed
    Left = 1004
    Top = 201
    object badgeQuantSeguidores: TdxBadge
      Visible = False
      Alignment.Horz = taCenter
      Alignment.Vert = taVCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoBk
      Font.Height = -9
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Offset.X = 6
      Offset.Y = 5
      ParentFont = False
      Size.Height = 13
      Size.Width = 13
      Text = '2'
      TextMargins.All = 0
    end
    object badgeQuantSLA: TdxBadge
      Visible = False
      Alignment.Horz = taCenter
      Alignment.Vert = taVCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuBar
      Font.Height = -9
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      Offset.X = -26
      Offset.Y = 5
      ParentFont = False
      Size.Height = 13
      Size.Width = 13
      Text = '2'
      TextMargins.All = 0
    end
    object dxUIAdornerManager1Badge1: TdxBadge
      TargetElement.Control = GridConsulta
      Alignment.Horz = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Offset.X = 200
      Offset.Y = 30
      ParentFont = False
      Size.Width = 100
      Text = 'Urgente 2'
    end
  end
end
