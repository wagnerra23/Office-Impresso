inherited Frame_Consuproducao_Planejamento: TFrame_Consuproducao_Planejamento
  Height = 695
  ExplicitHeight = 695
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 695
    ExplicitHeight = 693
    inherited GridConsulta: TcxGrid
      Top = 557
      Width = 977
      Height = 120
      TabOrder = 14
      ExplicitTop = 557
      ExplicitWidth = 977
      ExplicitHeight = 120
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        inherited GridConsultaDBTableView1ORDEM: TcxGridDBColumn
          IsCaptionAssigned = True
        end
      end
    end
    inherited LbTotalRegistros: TcxLabel
      Top = 678
      ExplicitTop = 678
    end
    inherited GridSubGrid: TcxGrid
      Top = 221
      Height = 474
      TabOrder = 12
      ExplicitTop = 221
      ExplicitHeight = 474
    end
    inherited pnlFlipRotate: TPanel
      Top = 221
      Height = 335
      TabOrder = 13
      ExplicitTop = 221
      ExplicitHeight = 335
    end
    inherited tcAcoes: TdxTileControl
      Width = 741
      ExplicitWidth = 741
    end
    inherited cbxQuantidadeItens: TcxComboBox
      TabOrder = 8
    end
    inherited btnDataFiltro: TcxButton
      TabOrder = 4
    end
    inherited btnMenuOpcoes: TcxButton
      TabOrder = 10
    end
    inherited btnAgruparFiltro: TcxButton
      TabOrder = 5
    end
    inherited btnFiltro_Filtro: TcxButton
      TabOrder = 6
    end
    inherited btnImprimir_Filtro: TcxButton
      TabOrder = 3
    end
    inherited btnAtualizar: TcxButton
      TabOrder = 2
    end
    inherited edtDataLimite: TcxComboBox
      TabOrder = 17
    end
    inherited btnCancelaProducao: TcxButton
      TabOrder = 18
    end
    inherited TreeListUsuarios: TcxDBTreeList
      Top = 219
      Height = 476
      TabOrder = 16
      ExplicitTop = 219
      ExplicitHeight = 476
    end
    object dxGanttControl1: TdxGanttControl [18]
      Left = 0
      Top = 36
      Width = 1248
      Height = 183
      TabOrder = 11
      ViewChart.Active = True
      ViewChart.OptionsSheet.Columns.Items = <
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnIndicator'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskMode'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskName'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskDuration'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskStart'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskFinish'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnPredecessors'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnResourceName'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnPercentComplete'
          UID = 1
        end>
      ViewChart.OptionsSheet.Width = 492
      ViewResourceSheet.OptionsSheet.Columns.Items = <
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnName'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnType'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnGroup'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnBaseCalendar'
          UID = 1
        end>
      OnKeyDown = dxGanttControl1KeyDown
    end
    object btnMostrarGrig: TcxButton [19]
      Left = 742
      Top = 3
      Width = 128
      Height = 33
      Hint = 'Imprimir'
      Caption = 'Mostrar grid'
      Colors.DefaultText = clWindowFrame
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      LookAndFeel.NativeStyle = True
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = imgBaseCinza
      OptionsImage.Spacing = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMostrarGrigClick
    end
    inherited LiGridConsulta: TdxLayoutItem
      Parent = GrupoGrid
    end
    inherited LipnlFlipRotate: TdxLayoutItem
      Index = 1
    end
    inherited splFlipRotate: TdxLayoutSplitterItem
      Index = 0
    end
    inherited GrupoPesquizarEGrid: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoDados: TdxLayoutGroup
      Visible = False
      Index = 3
    end
    inherited GrupoFooter: TdxLayoutGroup
      Parent = GrupoGrid
    end
    inherited GrpoMostrarRegistros: TdxLayoutGroup
      Index = 7
    end
    inherited libtnDataFiltro: TdxLayoutItem
      Index = 4
    end
    inherited libtnMenuOpcoes: TdxLayoutItem
      Index = 8
    end
    inherited libtnAgruparFiltro: TdxLayoutItem
      Index = 5
    end
    inherited libtnFiltro_Filtro: TdxLayoutItem
      Index = 6
    end
    inherited libtnImprimir_Filtro: TdxLayoutItem
      Index = 3
    end
    inherited libtnAtualizar: TdxLayoutItem
      Index = 2
    end
    object liGantt: TdxLayoutItem
      Parent = GrupoPesquizarEGrid
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxGanttControl1'
      CaptionOptions.Visible = False
      Control = dxGanttControl1
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoTT
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnMostrarGrig
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 128
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoGrid: TdxLayoutGroup
      Parent = GrupoMeio
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object liSplitGantt: TdxLayoutSplitterItem
      Parent = GrupoPesquizarEGrid
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 2
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
      ReportDocument.CreationDate = 45010.322237418980000000
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
end
