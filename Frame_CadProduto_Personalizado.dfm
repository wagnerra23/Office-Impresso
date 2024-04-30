inherited FrmProduto_Personalizado_Frame: TFrmProduto_Personalizado_Frame
  ParentBiDiMode = False
  inherited DBGrid1: TDBGrid
    TabOrder = 5
  end
  inherited PnlAlterarCodProduto: TPanel
    TabOrder = 7
  end
  inherited PnlCodigoBarras: TPanel
    TabOrder = 9
  end
  inherited PnlAplicarAjusteValorNaFamilia: TPanel
    TabOrder = 3
    inherited dxLayoutControl19: TdxLayoutControl
      inherited ChkAjusteFamiliaCustoLoja: TcxCheckBox
        ExplicitWidth = 17
      end
      inherited ChkAjusteFamiliaVarejo: TcxCheckBox
        ExplicitWidth = 17
      end
    end
  end
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 461
      ExplicitLeft = 461
    end
    inherited edtDescricao: TcxDBTextEdit
      ExplicitWidth = 313
      Width = 313
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 411
      ExplicitLeft = 411
    end
    inherited cbxCodProduto_Tipo: TcxDBLookupComboBox
      TabOrder = 19
    end
    inherited edtCodFabrica: TcxDBTextEdit
      Left = 10000
      Top = 10000
      TabOrder = 22
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited edtEstoque: TcxDBCurrencyEdit
      TabOrder = 15
    end
    inherited btnAdicionarEstoque: TcxButton
      TabOrder = 16
    end
    inherited edtDT_Cadastro: TcxDBTextEdit
      TabOrder = 18
    end
    inherited imgProduto: TcxImage
      TabOrder = 20
    end
    inherited btnGerarCodigoBarras: TcxButton
      Left = 135
      TabOrder = 9
      ExplicitLeft = 135
    end
    inherited edtCategoriaÎProduto_Categoria: TcxDBButtonEdit
      Left = 166
      TabOrder = 10
      ExplicitLeft = 166
    end
    inherited lblCategoriaÎProduto_CategoriaÎDESCRICAO: TcxLabel
      Left = 246
      ExplicitLeft = 246
      ExplicitWidth = 86
      Width = 86
    end
    inherited PnlTabTabelaPrecos: TPanel
      TabOrder = 30
      inherited dxLayoutControl8: TdxLayoutControl
        inherited lblUnidade: TcxDBLabel
          AnchorY = 85
        end
      end
    end
    inherited cbxUnidade: TcxDBComboBox
      TabOrder = 4
    end
    inherited edtCodigoEan: TcxDBTextEdit
      Left = 18
      TabOrder = 8
      ExplicitLeft = 18
    end
    inherited PnlCentroTrabalho: TPanel
      TabOrder = 29
    end
    inherited edtValor: TcxDBCurrencyEdit
      TabOrder = 7
    end
    inherited edtMargem: TcxDBCurrencyEdit
      TabOrder = 6
    end
    inherited PnlFrameCustos: TPanel
      TabOrder = 31
    end
    inherited edtCusto: TcxDBCurrencyEdit
      TabOrder = 5
    end
    inherited edtValor_Compra: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      TabOrder = 23
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited btnVisualizaEstoque: TcxButton
      TabOrder = 17
    end
    inherited btnPrecoEspecial: TWRButtonFlat
      TabOrder = 34
    end
    inherited btnCustos: TWRButtonFlat
      TabOrder = 32
    end
    inherited ReportDesigner: TdxSpreadSheetReportDesigner
      Data = {
        8C02000044585353763242461000000042465320000000000000000001000101
        010100000000000001004246532000000000424653200100000001000000200B
        00000007000000430061006C0069006200720069000000000000002000000020
        0000000020000000000020000000000020000000000020000007000000470045
        004E004500520041004C00000000000002000000000000000001424653200100
        0000424653201D00000054006400780053007000720065006100640053006800
        6500650074005200650070006F00720074005400610062006C00650056006900
        650077000600000053006800650065007400310001FFFFFFFFFFFFFFFF640000
        0002000000020000000200000055000000140000000200000002000000000200
        0000020000000000000100000000000101000042465320550000000000000042
        4653200000000042465320140000000000000042465320000000000000000000
        0000000100000000000000000000000000000000000000424653200000000002
        0200000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000064000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000200020200020000000000000000000000
        0000000000000200000000000000000000000000000000000000000000000000
        0000000000000000000002020000000000000000424653200000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000}
    end
    inherited PnlTabelaPreco: TPanel
      TabOrder = 33
    end
    inherited pnlCentroCusto: TPanel
      TabOrder = 35
    end
    inherited chkPode_Alterar_Estoque: TcxDBCheckBox
      TabOrder = 12
    end
    inherited tcTabs: TdxTileControl
      TabOrder = 21
      object tcTabsGroup3: TdxTileControlGroup [0]
        Caption.Text = 'Montagem do produto'
        Index = 0
      end
      inherited tcTabsGroup1: TdxTileControlGroup
        Index = 1
      end
      inherited dxTileControl2Group2: TdxTileControlGroup
        Index = 2
      end
      inherited tcTabsGroup2: TdxTileControlGroup
        Index = 3
      end
      inherited tiEstoque: TdxTileControlItem
        GroupIndex = 1
      end
      inherited tiProducao: TdxTileControlItem
        GroupIndex = 3
      end
      inherited tiTributos: TdxTileControlItem
        GroupIndex = 2
      end
      inherited tiCustos: TdxTileControlItem
        GroupIndex = 2
      end
      inherited tiFormacaoPreco: TdxTileControlItem
        GroupIndex = 2
      end
      inherited tiDadosAdicionais: TdxTileControlItem
        GroupIndex = 3
      end
      inherited tiAnexos: TdxTileControlItem
        GroupIndex = 3
      end
      inherited tiAtividade: TdxTileControlItem
        GroupIndex = 3
      end
      inherited tiSubUnidade: TdxTileControlItem
        GroupIndex = 1
      end
      object tiPersonalizados: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        RowCount = 2
        Size = tcisExtraLarge
        Text1.AssignedValues = []
        Text1.Value = 'Personalizado'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnActivateDetail = TileActivateDetail
      end
    end
    inherited edtCentroCustoÎCentro_Custo: TcxDBButtonEdit
      TabOrder = 13
    end
    inherited liedtCodFabrica: TdxLayoutItem
      Parent = nil
      Index = -1
    end
    inherited libtnGerarCodigoBarras: TdxLayoutItem
      Index = 1
    end
    inherited licbxUnidade: TdxLayoutItem
      Index = 4
    end
    inherited liedtCodigoEan: TdxLayoutItem
      Index = 0
    end
    inherited liedtCategoriaÎProduto_Categoria: TdxLayoutItem
      Index = 2
    end
    inherited lilblCategoriaÎProduto_CategoriaÎDESCRICAO: TdxLayoutItem
      Index = 3
    end
    inherited dxLayoutGroup17: TdxLayoutGroup
      Parent = nil
      Index = -1
    end
    inherited liedtValor: TdxLayoutItem
      Index = 7
    end
    inherited liedtMargem: TdxLayoutItem
      Index = 6
    end
    inherited liedtCusto: TdxLayoutItem
      Index = 5
    end
    inherited liedtValor_Compra: TdxLayoutItem
      Parent = nil
      Index = -1
    end
    inherited lIchkPode_Alterar_Estoque: TdxLayoutItem
      Index = 4
    end
  end
  inherited PnlTabImagens: TPanel
    TabOrder = 8
  end
  inherited PnlLocalEstoque: TPanel
    TabOrder = 6
    inherited dxLayoutControl13: TdxLayoutControl
      inherited cxLabel1: TcxLabel
        AnchorY = 30
      end
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
  inherited cxEditRepositoryVinculoMedidas: TcxEditRepository
    PixelsPerInch = 96
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
