inherited Frame_Financeiro_Centro_Custo_Produto_Categoria: TFrame_Financeiro_Centro_Custo_Produto_Categoria
  inherited MainLayout: TdxLayoutControl
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 15
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 16
    end
    inherited cxGrid2: TcxGrid
      Top = 309
      TabOrder = 14
      ExplicitTop = 309
      inherited cxGrid2DBTableView1: TcxGridDBTableView
        object cxGrid2DBTableView1CODIGO: TcxGridDBColumn [0]
          Caption = 'Requisi'#231#227'o N'#186
          DataBinding.FieldName = 'CODIGO'
          Width = 75
        end
        inherited cxGrid2DBTableView1PRODUTO: TcxGridDBColumn
          Width = 293
        end
        inherited cxGrid2DBTableView1QUANT: TcxGridDBColumn
          Width = 100
        end
        inherited cxGrid2DBTableView1VALOR: TcxGridDBColumn
          Visible = True
        end
        inherited cxGrid2DBTableView1CUSTO: TcxGridDBColumn
          Visible = False
          Width = 99
        end
      end
    end
    inherited cxGrid3: TcxGrid
      Top = 101
      Height = 172
      ExplicitTop = 101
      ExplicitHeight = 172
      inherited cxGridDBTableView1: TcxGridDBTableView
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        inherited cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'CODCENTRO_CUSTO'
        end
      end
    end
    inherited edtCentro_CustoÎCentro_Custo: TcxButtonEdit
      ExplicitWidth = 100
      Width = 100
    end
    inherited lblCentro_CustoÎCentro_CustoÎDESCRICAO: TcxLabel
      Left = 103
      Properties.Alignment.Vert = taVCenter
      ExplicitLeft = 103
      AnchorY = 76
    end
    inherited edtPercentual: TcxCurrencyEdit
      Left = 443
      ExplicitLeft = 443
    end
    inherited btnAdicionarCentroCusto: TcxButton
      Left = 493
      ExplicitLeft = 493
    end
    inherited btnRemoverCentroCusto: TcxButton
      Left = 527
      ExplicitLeft = 527
    end
    object cxButtonEdit1: TcxButtonEdit [13]
      Left = 3
      Top = 294
      AutoSize = False
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 113
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Height = 21
      Width = 107
    end
    object cxLabel1: TcxLabel [14]
      Left = 110
      Top = 292
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      Properties.Alignment.Vert = taVCenter
      Height = 23
      Width = 394
      AnchorY = 304
    end
    object cxButton1: TcxButton [15]
      Left = 504
      Top = 276
      Width = 34
      Height = 39
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 10
      OnClick = btnAdicionarCentroCustoClick
    end
    object cxButton2: TcxButton [16]
      Left = 538
      Top = 276
      Width = 34
      Height = 39
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 11
      TabStop = False
      OnClick = btnRemoverCentroCustoClick
    end
    inherited liOrigem: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avCenter
      Visible = True
      CaptionOptions.Text = 'Detalhe anal'#237'tico do custo na requisi'#231#227'o'
      Index = 1
    end
    inherited dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      Index = 1
    end
    inherited dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
    end
    inherited dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = nil
      Index = -1
      Special = True
    end
    inherited dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
    end
    inherited dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
    end
    inherited dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Requisi'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 340
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 39
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 39
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = GrupoMain
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 4
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      UseIndent = False
      Index = 5
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      UseIndent = False
      Index = 3
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited CentroCusto: TFDQuery
    MasterFields = 'CODIGO;CODEMPRESA;CODPEDIDO'
    SQL.Strings = (
      'select FC.*, CC.DESCRICAO'
      'from FINANCEIRO_CENTRO_CUSTO FC'
      'left join CENTRO_CUSTO CC on CC.CODIGO = FC.CODCENTRO_CUSTO'
      
        'where (FC.CODFINANCEIRO = :CODIGO) and(FC.CODEMPRESA = :CODEMPRE' +
        'SA)AND(FC.CODPEDIDO = :CODPEDIDO)')
    Left = 313
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end
      item
        Name = 'CODPEDIDO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_DataSet1: TUCHist_DataSet
    Left = 368
    Top = 148
  end
end
