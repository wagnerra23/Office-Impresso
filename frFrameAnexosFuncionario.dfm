inherited FrameAnexosFuncionario: TFrameAnexosFuncionario
  Width = 792
  Height = 385
  ExplicitWidth = 792
  ExplicitHeight = 385
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 792
    Height = 365
    ExplicitWidth = 792
    ExplicitHeight = 365
    inherited btnMenuConfig: TcxButton
      Left = 774
      ExplicitLeft = 774
    end
    inherited GridAnexos: TcxGrid
      Width = 385
      Height = 331
      ExplicitWidth = 385
      ExplicitHeight = 331
    end
    inherited cxShellListView: TcxShellListView
      Left = 507
      Width = 285
      Height = 331
      ExplicitLeft = 507
      ExplicitWidth = 285
      ExplicitHeight = 331
    end
    inherited tcMenuAnexo: TdxTileControl
      Height = 331
      OptionsView.GroupIndent = 4
      ExplicitHeight = 331
      inherited tiProducao: TdxTileControlItem
        IndexInGroup = 3
      end
      inherited tiPessoas: TdxTileControlItem
        IndexInGroup = 2
      end
      object tiFuncionario: TdxTileControlItem
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
        Text1.Value = 'Funcion'#225'rio'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.Value = 'Protegida'
        Text4.AssignedValues = []
        OnClick = tiFuncionarioClick
      end
    end
    inherited lblMensagemCabecalho: TcxLabel
      AnchorY = 17
    end
    inherited lblSelecionado: TcxLabel
      AnchorY = 17
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 365
    Width = 792
    ExplicitTop = 365
    ExplicitWidth = 792
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
