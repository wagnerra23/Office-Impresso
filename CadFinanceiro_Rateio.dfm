inherited FrmFinanceiro_Rateio: TFrmFinanceiro_Rateio
  Caption = 'FrmFinanceiro_Rateio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 24
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 23
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 22
    end
    object cxGrid1: TcxGrid [24]
      Left = 3
      Top = 83
      Width = 872
      Height = 296
      TabOrder = 21
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 6
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 4
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Index = 5
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoMain
      Control = cxGrid1
      ControlOptions.OriginalHeight = 296
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
  end
end
