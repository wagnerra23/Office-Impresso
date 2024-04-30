inherited Frame_Financeiro_Centro_Custo_Mestre: TFrame_Financeiro_Centro_Custo_Mestre
  inherited PnlHistorico_Seguidor: TPanel
    TabOrder = 2
  end
  inherited MainLayout: TdxLayoutControl
    inherited edtDescricao: TcxDBTextEdit
      DataBinding.DataField = 'RAZAOSOCIAL'
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 11
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 12
    end
    object cxGrid2: TcxGrid [6]
      Left = 3
      Top = 323
      Width = 569
      Height = 200
      TabOrder = 10
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSCustoProdutivo
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1MODULO: TcxGridDBColumn
          Caption = 'M'#243'dulo'
          DataBinding.FieldName = 'MODULO'
          Visible = False
          Width = 65
        end
        object cxGrid2DBTableView1PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 263
        end
        object cxGrid2DBTableView1QUANT: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'QUANT'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 80
        end
        object cxGrid2DBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          Width = 79
        end
        object cxGrid2DBTableView1CUSTO: TcxGridDBColumn
          Caption = 'Custo'
          DataBinding.FieldName = 'CUSTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 80
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object cxGrid3: TcxGrid [7]
      Left = 3
      Top = 102
      Width = 569
      Height = 201
      TabOrder = 9
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSCentroCusto
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGridDBColumn4
          end
          item
            Kind = skSum
            Column = cxGridDBColumn3
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'C'#243'd. Financeiro'
          DataBinding.FieldName = 'CODFINANCEIRO'
          Width = 62
        end
        object cxGrid1DBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn
          Caption = 'C'#243'd Centro de Custo'
          DataBinding.FieldName = 'CODCENTRO_CUSTO'
          Visible = False
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Centro de Custo'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 265
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'Percentual'
          DataBinding.FieldName = 'PERCENTUAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '%0.00;-%0.00'
          Width = 125
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 115
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object edtCentro_CustoÎCentro_Custo: TcxButtonEdit [8]
      Left = 3
      Top = 66
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
      TabOrder = 4
      Height = 21
      Width = 107
    end
    object lblCentro_CustoÎCentro_CustoÎDESCRICAO: TcxLabel [9]
      Left = 111
      Top = 64
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      Height = 23
      Width = 340
    end
    object edtPercentual: TcxCurrencyEdit [10]
      Left = 452
      Top = 66
      AutoSize = False
      Properties.DisplayFormat = '0;-0'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Height = 21
      Width = 50
    end
    object btnAdicionarCentroCusto: TcxButton [11]
      Left = 503
      Top = 48
      Width = 34
      Height = 39
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 7
      OnClick = btnAdicionarCentroCustoClick
    end
    object btnRemoverCentroCusto: TcxButton [12]
      Left = 538
      Top = 48
      Width = 34
      Height = 39
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes32
      TabOrder = 8
      TabStop = False
      OnClick = btnRemoverCentroCustoClick
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 3
    end
    object liOrigem: TdxLayoutItem
      Parent = GrupoMain
      Offsets.Top = 5
      Visible = False
      CaptionOptions.Text = 'Custos Produtivos'
      CaptionOptions.Layout = clTop
      Control = cxGrid2
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoMain
      AlignVert = avClient
      CaptionOptions.Text = 'Rateio Centro de Custo'
      CaptionOptions.Layout = clTop
      Control = cxGrid3
      ControlOptions.OriginalHeight = 147
      ControlOptions.OriginalWidth = 806
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Centro Custo'
      CaptionOptions.Layout = clTop
      Control = edtCentro_CustoÎCentro_Custo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = lblCentro_CustoÎCentro_CustoÎDESCRICAO
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 340
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Perc %'
      CaptionOptions.Layout = clTop
      Control = edtPercentual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnAdicionarCentroCusto
      ControlOptions.OriginalHeight = 39
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnRemoverCentroCusto
      ControlOptions.OriginalHeight = 39
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 4
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
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select F.* from FINANCEIRO F'
      'where F.CODIGO = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'FINANCEIRO'
  end
  object CustosProdutivos: TFDQuery
    BeforeEdit = CustosProdutivosBeforeEdit
    MasterSource = DSCentroCusto
    MasterFields = 'CODPEDIDO;CODCENTRO_CUSTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select pr.* from produto_requisicao pr'
      'where pr.codvenda = :CODPEDIDO and'
      'pr.codcentro_custo =  :CODCENTRO_CUSTO')
    Left = 312
    Top = 175
    ParamData = <
      item
        Name = 'CODPEDIDO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end
      item
        Name = 'CODCENTRO_CUSTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object CentroCusto: TFDQuery
    BeforeEdit = CentroCustoBeforeEdit
    BeforePost = CentroCustoBeforePost
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select FC.*, CC.DESCRICAO, F.CODPEDIDO from FINANCEIRO_CENTRO_CU' +
        'STO FC'
      'left join CENTRO_CUSTO CC on CC.CODIGO = FC.CODCENTRO_CUSTO'
      'left join FINANCEIRO F ON F.CODIGO = FC.CODFINANCEIRO'
      'where FC.CODFINANCEIRO = :CODIGO')
    Left = 312
    Top = 148
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object DSCustoProdutivo: TDataSource
    DataSet = CustosProdutivos
    OnStateChange = DSStateChange
    Left = 340
    Top = 175
  end
  object DSCentroCusto: TDataSource
    DataSet = CentroCusto
    OnStateChange = DSStateChange
    Left = 340
    Top = 148
  end
  object UCHist_DataSet1: TUCHist_DataSet
    OnAddHistorico = UCHist_SeguidorAddHistorico
    DataSet = Historico_Seguidor
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODFINANCEIRO'
    CampoPK2 = 'CODCENTRO_CUSTO'
    DS = DSCentroCusto
    Tabela = 'FINANCEIRO_CENTRO_CUSTO'
    Left = 372
    Top = 144
  end
end
