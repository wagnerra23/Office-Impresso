inherited FrmFrameComposicao_Variacao: TFrmFrameComposicao_Variacao
  OnEnter = FrameEnter
  OnExit = FrameExit
  object cxGrid1: TcxGrid [1]
    Left = 613
    Top = 114
    Width = 366
    Height = 200
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DSProdutoPreco
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1SKU: TcxGridDBColumn
        DataBinding.FieldName = 'SKU'
        Width = 104
      end
      object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'CODIGO'
      end
      object cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn
        DataBinding.FieldName = 'CODPRODUTO'
      end
      object cxGrid1DBTableView1TIPO: TcxGridDBColumn
        DataBinding.FieldName = 'TIPO'
      end
      object cxGrid1DBTableView1PORCENTAGEM: TcxGridDBColumn
        DataBinding.FieldName = 'PORCENTAGEM'
      end
      object cxGrid1DBTableView1QUANT: TcxGridDBColumn
        DataBinding.FieldName = 'QUANT'
      end
      object cxGrid1DBTableView1DE: TcxGridDBColumn
        DataBinding.FieldName = 'DE'
      end
      object cxGrid1DBTableView1CODPRODUTO_VINCULADO: TcxGridDBColumn
        DataBinding.FieldName = 'CODPRODUTO_VINCULADO'
      end
      object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRICAO'
      end
      object cxGrid1DBTableView1REFERENCIA: TcxGridDBColumn
        DataBinding.FieldName = 'REFERENCIA'
      end
      object cxGrid1DBTableView1PRODUTO: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUTO'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited DBGrid1: TDBGrid [2]
  end
  inherited DBGrid2: TDBGrid [3]
  end
  inherited pnlSprMemoria: TPanel [4]
    inherited SprMemoria: TdxSpreadSheet
      Data = {
        8002000044585353763242461000000042465320000000000000000000000101
        010100000000000001004246532000000000424653200100000001000000200B
        00000007000000430061006C0069006200720069000000000000002000000020
        0000000020000000000020000000000020000000000020000007000000470045
        004E004500520041004C00000000000002000000000000000001424653200100
        0000424653201700000054006400780053007000720065006100640053006800
        6500650074005400610062006C00650056006900650077000600000053006800
        650065007400310001FFFFFFFFFFFFFFFF640000000200000002000000020000
        0055000000140000000200000002000000000200000002000000000000010000
        0000000101000042465320550000000000000042465320000000004246532014
        0000000000000042465320000000000000000000000000010000000000000000
        0000000000000000000000424653200000000002020000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000064000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000200020200020000000000000000000000000000000000020000000000
        0000000000000000000000000000000000000000000000000000000000000202
        0000000000000000424653200000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000}
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [5]
    inherited GridComposicaoTree: TcxDBTreeList
      OnClick = GridComposicaoTreeClick
      inherited GridComposicaoTreeCODPRODUTO: TcxDBTreeListColumn
        Position.ColIndex = 3
      end
      inherited GridComposicaoTreeDESCRICAO: TcxDBTreeListColumn
        Position.ColIndex = 4
      end
      inherited GridComposicaoTreeUNIDADE: TcxDBTreeListColumn
        Position.ColIndex = 15
      end
      inherited GridComposicaoTreeTIPO: TcxDBTreeListColumn
        Position.ColIndex = 36
      end
      inherited GridComposicaoTreeQTDADEPECA: TcxDBTreeListColumn
        Position.ColIndex = 7
      end
      inherited GridComposicaoTreeCOMP: TcxDBTreeListColumn
        Position.ColIndex = 8
      end
      inherited GridComposicaoTreeLARG: TcxDBTreeListColumn
        Position.ColIndex = 9
      end
      inherited GridComposicaoTreeESPESSURA: TcxDBTreeListColumn
        Position.ColIndex = 10
      end
      inherited GridComposicaoTreeFORMULA: TcxDBTreeListColumn
        Position.ColIndex = 11
      end
      inherited GridComposicaoTreeQUANT: TcxDBTreeListColumn
        Position.ColIndex = 12
      end
      inherited GridComposicaoTreeCUSTO: TcxDBTreeListColumn
        Position.ColIndex = 5
      end
      inherited GridComposicaoTreeVALOR: TcxDBTreeListColumn
        Position.ColIndex = 16
      end
      inherited GridComposicaoTreeCUSTO_RENDIMENTO: TcxDBTreeListColumn
        Position.ColIndex = 14
      end
      inherited GridComposicaoTreeTOTAL: TcxDBTreeListColumn
        Position.ColIndex = 20
      end
      inherited GridComposicaoTreeMedidas: TcxDBTreeListColumn
        Position.ColIndex = 6
      end
      inherited GridComposicaoTreeVALOR_RENDIMENTO: TcxDBTreeListColumn
        Position.ColIndex = 17
      end
      inherited GridComposicaoTreeTOTAL_RENDIMENTO: TcxDBTreeListColumn
        Position.ColIndex = 21
      end
      inherited GridComposicaoTreeDT_ALTERACAO: TcxDBTreeListColumn
        Position.ColIndex = 22
      end
      inherited GridComposicaoTreeORDEM: TcxDBTreeListColumn
        Position.ColIndex = 2
      end
      inherited GridComposicaoTreeCODPRODUTO_COMPOSICAO: TcxDBTreeListColumn
        Position.ColIndex = 18
      end
      inherited GridComposicaoTreePRODUCAO: TcxDBTreeListColumn
        Position.ColIndex = 19
      end
      inherited GridComposicaoTreePESO: TcxDBTreeListColumn
        Position.ColIndex = 23
      end
      inherited GridComposicaoTreeESTOQUE: TcxDBTreeListColumn
        Position.ColIndex = 24
      end
      inherited GridComposicaoTreeCODPRODUTO_TIPO: TcxDBTreeListColumn
        Position.ColIndex = 25
      end
      inherited GridComposicaoTreeCUSTO_ATUAL: TcxDBTreeListColumn
        Position.ColIndex = 26
      end
      inherited GridComposicaoTreeVALOR_ATUAL: TcxDBTreeListColumn
        Position.ColIndex = 27
      end
      inherited GridComposicaoTreePARENT: TcxDBTreeListColumn
        Position.ColIndex = 28
      end
      inherited GridComposicaoTreeCOMP_FORMULA: TcxDBTreeListColumn
        Position.ColIndex = 29
      end
      inherited GridComposicaoTreeLARG_FORMULA: TcxDBTreeListColumn
        Position.ColIndex = 30
      end
      inherited GridComposicaoTreeESPESSURA_FORMULA: TcxDBTreeListColumn
        Position.ColIndex = 31
      end
      inherited GridComposicaoTreeQTDADEPECA_FORMULA: TcxDBTreeListColumn
        Position.ColIndex = 32
      end
      inherited GridComposicaoTreeCOMP_COMPOSICAO: TcxDBTreeListColumn
        Position.ColIndex = 34
      end
      inherited GridComposicaoTreeLARG_COMPOSICAO: TcxDBTreeListColumn
        Position.ColIndex = 38
      end
      inherited GridComposicaoTreeESPESSURA_COMPOSICAO: TcxDBTreeListColumn
        Position.ColIndex = 39
      end
      inherited GridComposicaoTreeQTDADEPECA_COMPOSICAO: TcxDBTreeListColumn
        Position.ColIndex = 33
      end
      inherited GridComposicaoTreeTEM_COMPOSICAO: TcxDBTreeListColumn
        Position.ColIndex = 35
      end
      inherited GridComposicaoTreeDESPERDICIO: TcxDBTreeListColumn
        Position.ColIndex = 13
      end
      inherited GridComposicaoTreecxDBTreeListPARENT: TcxDBTreeListColumn
        Position.ColIndex = 37
      end
      object GridComposicaoTreeVARIACAO: TcxDBTreeListColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Caption = 'Selecionar'
            Default = True
            Kind = bkText
          end>
        Properties.OnButtonClick = GridComposicaoTreeVARIACAOPropertiesButtonClick
        Caption.Text = 'Varia'#231#227'o'
        DataBinding.FieldName = 'TEM_VARIACAO'
        Options.ShowEditButtons = eisbAlways
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    inherited edtQtdaDePeca: TcxDBCurrencyEdit
      Left = 720
      ExplicitLeft = 720
    end
    inherited edtComp: TcxDBCurrencyEdit
      Left = 791
      ExplicitLeft = 791
    end
    inherited edtLarg: TcxDBCurrencyEdit
      Left = 863
      ExplicitLeft = 863
    end
    inherited edtEspessura: TcxDBCurrencyEdit
      Left = 929
      ExplicitLeft = 929
    end
    inherited cbxUnidade: TcxDBComboBox
      Left = 667
      ExplicitLeft = 667
    end
    inherited SprFormula: TdxSpreadSheet
      Data = {
        8002000044585353763242461000000042465320000000000000000000000101
        010100000000000001004246532000000000424653200100000001000000200B
        00000007000000430061006C0069006200720069000000000000002000000020
        0000000020000000000020000000000020000000000020000007000000470045
        004E004500520041004C00000000000002000000000000000001424653200100
        0000424653201700000054006400780053007000720065006100640053006800
        6500650074005400610062006C00650056006900650077000600000053006800
        650065007400310001FFFFFFFFFFFFFFFF640000000200000002000000020000
        0055000000140000000200000002000000000200000002000000000000010000
        0000000101000042465320550000000000000042465320000000004246532014
        0000000000000042465320000000000000000000000000010000000000000000
        0000000000000000000000424653200000000002020000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000064000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000200020200020000000000000000000000000000000000020000000000
        0000000000000000000000000000000000000000000000000000000000000202
        0000000000000000424653200000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000}
    end
    inherited cxLabel1: TcxLabel
      Left = 436
      ExplicitLeft = 436
    end
    inherited LiLbTituloFrameComposicao: TdxLayoutItem
      Parent = dxLayoutGroup1
    end
    inherited GrupoAdicionaComposicao: TdxLayoutGroup
      Visible = False
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = nil
      Index = -1
      Special = True
    end
    inherited GrupoTopFrame: TdxLayoutGroup
      Parent = dxLayoutGroup1
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup5
    end
    inherited LibtnTestarRoteiro: TdxLayoutItem
      Parent = dxLayoutGroup5
    end
    inherited dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
    end
    inherited dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup5
    end
    inherited dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = nil
      Index = -1
      Special = True
    end
    inherited lichkTem_Wizard: TdxLayoutItem
      Parent = dxLayoutGroup5
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited ImgListActionsFrameComposicao: TcxImageList
    FormatVersion = 1
  end
  inherited EditRepositorioFrameComposicao: TcxEditRepository
    PixelsPerInch = 96
  end
  inherited RepEstiloFrameComposicao: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  object DSProdutoPreco: TDataSource
    DataSet = Produto_Preco
    Left = 572
    Top = 208
  end
  object Produto_Preco: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSComposicao
    MasterFields = 'PRODUTO_PRINCIPAL'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select PP.CODIGO, PP.CODPRODUTO, PP.TIPO, PP.PORCENTAGEM, PP.QUA' +
        'NT,  '
      
        'PP.DE, PP.CODPRODUTO_VINCULADO, PP.DESCRICAO, PP.REFERENCIA, PP.' +
        'SKU, '
      'P.DESCRICAO AS PRODUTO, P.VALOR, P.CUSTO'
      'from PRODUTO_PRECO PP'
      'LEFT JOIN PRODUTO P ON PP.CODPRODUTO_VINCULADO = P.CODIGO'
      'where (CODPRODUTO = :PRODUTO_PRINCIPAL)')
    Left = 544
    Top = 208
    ParamData = <
      item
        Name = 'PRODUTO_PRINCIPAL'
        ParamType = ptInput
      end>
    object Produto_PrecoCODPRODUTO_PRINCIPAL: TStringField
      FieldKind = fkCalculated
      FieldName = 'CODPRODUTO_PRINCIPAL'
      Calculated = True
    end
  end
end
