inherited FrmFrameCentroCustos: TFrmFrameCentroCustos
  Width = 1064
  Height = 411
  OnExit = FrameExit
  ExplicitWidth = 1064
  ExplicitHeight = 411
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1064
    Height = 411
    ExplicitWidth = 1064
    ExplicitHeight = 411
    inherited btnMenuConfig: TcxButton
      Left = 1046
      Top = 380
      TabOrder = 10
      ExplicitLeft = 1046
      ExplicitTop = 380
    end
    object edtCentroÎCentro_TrabalhoÎDESCRICAO: TcxLabel [1]
      Left = 122
      Top = 16
      AutoSize = False
      Style.HotTrack = False
      Height = 20
      Width = 391
    end
    object edtCentroÎCentro_Trabalho: TcxButtonEdit [2]
      Left = 0
      Top = 15
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edtPerc: TcxCurrencyEdit [3]
      Left = 514
      Top = 15
      AutoSize = False
      EditValue = 0c
      Properties.DisplayFormat = '##0.00'
      Properties.Nullstring = '0,00'
      Style.HotTrack = False
      TabOrder = 2
      Height = 21
      Width = 80
    end
    object btnAdicionarProduto: TcxButton [4]
      Left = 772
      Top = 0
      Width = 36
      Height = 36
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 5
      OnClick = btnAdicionarProdutoClick
    end
    object btnRemoverProduto: TcxButton [5]
      Left = 809
      Top = 0
      Width = 36
      Height = 36
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 6
      OnClick = btnRemoverProdutoClick
    end
    object GridProduto_Tabela_Preco: TcxGrid [6]
      Left = 0
      Top = 37
      Width = 959
      Height = 342
      TabOrder = 8
      object GridProduto_Tabela_PrecoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSCentro_Custo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.InfoText = 'Clique aqui para adicionar uma nova tabela'
        object GridProduto_Tabela_PrecoDBTableView1CODPRODUTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO'
          Width = 79
        end
        object GridProduto_Tabela_PrecoDBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn
          DataBinding.FieldName = 'CODCENTRO_TRABALHO'
          Width = 135
        end
        object GridProduto_Tabela_PrecoDBTableView1DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO'
          Width = 213
        end
        object GridProduto_Tabela_PrecoDBTableView1PERCENTUAL: TcxGridDBColumn
          DataBinding.FieldName = 'PERCENTUAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '% ,0.00;-% ,0.00'
          Properties.OnValidate = GridProduto_Tabela_PrecoDBTableView1PERCENTUALPropertiesValidate
        end
        object GridProduto_Tabela_PrecoDBTableView1VALOR: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR'
        end
        object GridProduto_Tabela_PrecoDBTableView1TEMPO: TcxGridDBColumn
          DataBinding.FieldName = 'TEMPO'
        end
      end
      object GridProduto_Tabela_PrecoLevel1: TcxGridLevel
        GridView = GridProduto_Tabela_PrecoDBTableView1
      end
    end
    object edtTempoEstimado: TcxTimeEdit [7]
      Left = 595
      Top = 15
      AutoSize = False
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 3
      Height = 21
      Width = 95
    end
    object edtValor: TcxCurrencyEdit [8]
      Left = 691
      Top = 15
      AutoSize = False
      EditValue = 0c
      Properties.DisplayFormat = '##0.00'
      Properties.Nullstring = '0,00'
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 80
    end
    object edtRestante: TcxCurrencyEdit [9]
      Left = 965
      Top = 380
      AutoSize = False
      EditValue = 0c
      Properties.DisplayFormat = '##0.00'
      Properties.Nullstring = '0,00'
      Style.HotTrack = False
      TabOrder = 9
      Height = 21
      Width = 80
    end
    object TempoTotal: TcxTimeEdit [10]
      Left = 846
      Top = 15
      AutoSize = False
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 95
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = edtCentroÎCentro_TrabalhoÎDESCRICAO
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 391
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      Control = edtCentroÎCentro_Trabalho
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Text = '%'
      CaptionOptions.Layout = clTop
      Control = edtPerc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAdicionarProduto
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 36
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnRemoverProduto
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 36
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      Control = GridProduto_Tabela_Preco
      ControlOptions.OriginalHeight = 342
      ControlOptions.OriginalWidth = 959
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      Control = edtTempoEstimado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      Control = edtValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Restante'
      Control = edtRestante
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      Control = TempoTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 7
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object DSCentro_Custo: TDataSource
    Left = 372
    Top = 100
  end
end
