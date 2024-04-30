inherited FrmFrameDespesaFinanceira: TFrmFrameDespesaFinanceira
  Width = 663
  Height = 454
  ExplicitWidth = 663
  ExplicitHeight = 454
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 663
    Height = 454
    ExplicitWidth = 663
    ExplicitHeight = 454
    inherited btnMenuConfig: TcxButton
      Left = 645
      Top = 24
      TabOrder = 1
      ExplicitLeft = 645
      ExplicitTop = 24
    end
    object cxGrid1: TcxGrid [1]
      Left = 0
      Top = 110
      Width = 663
      Height = 344
      TabOrder = 4
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = DS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1CODNF_ENTRADA: TcxGridDBColumn
          DataBinding.FieldName = 'CODNF_ENTRADA'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1CODFINANCEIRO: TcxGridDBColumn
          DataBinding.FieldName = 'CODFINANCEIRO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 255
        end
        object cxGrid1DBTableView1TOTAL_FINANCEIRO: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL_FINANCEIRO'
          Visible = False
          VisibleForCustomization = False
          Width = 123
        end
        object cxGrid1DBTableView1TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO'
          Width = 127
        end
        object cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 141
        end
        object cxGrid1DBTableViewTOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object cxGrid1DBTableViewDT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxLabel1: TcxLabel [2]
      Left = 0
      Top = 0
      Caption = 'Alocar Despesas'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = 7697781
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 11711154
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btnAdicionarProduto: TcxButton [3]
      Left = 12
      Top = 61
      Width = 45
      Height = 36
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 2
      OnClick = btnAdicionarProdutoClick
    end
    object btnRemoverProduto: TcxButton [4]
      Left = 58
      Top = 61
      Width = 45
      Height = 36
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 3
      OnClick = btnRemoverProdutoClick
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      Control = cxGrid1
      ControlOptions.OriginalHeight = 265
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnAdicionarProduto
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Control = btnRemoverProduto
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object DSNF_Entrada: TDataSource
    Left = 372
    Top = 100
  end
end
