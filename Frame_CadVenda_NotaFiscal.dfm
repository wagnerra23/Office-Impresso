inherited Frame_Venda_NotaFiscal: TFrame_Venda_NotaFiscal
  inherited PnlParcela: TPanel
    TabOrder = 4
  end
  inherited pnlSprMemoria: TPanel
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
  inherited cxGrid3: TcxGrid
    TabOrder = 5
  end
  inherited PnlCentroTrabalhoProduto: TPanel
    TabOrder = 12
  end
  inherited pnlPessoaContato: TPanel
    TabOrder = 13
  end
  inherited pnlEnderecoEntrega: TPanel
    TabOrder = 8
  end
  inherited pnlDadosVeiculo: TPanel
    TabOrder = 7
  end
  inherited PnlObservacaoVenda: TPanel
    TabOrder = 6
  end
  inherited cxGrid5: TcxGrid
    TabOrder = 3
  end
  inherited PnlFrenteVerso: TPanel
    TabOrder = 10
  end
  inherited PnlCheque: TPanel
    TabOrder = 9
  end
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 142
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      TabOrder = 148
    end
    inherited edtDescricao: TcxDBTextEdit
      TabOrder = 144
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 150
    end
    inherited PnlFrameHistorico: TPanel
      Width = 1229
      TabOrder = 121
      ExplicitWidth = 1229
    end
    inherited cbxAtivo: TcxDBComboBox
      TabOrder = 147
    end
    inherited edtSolicitacao_Servico: TcxDBMemo
      ExplicitHeight = 151
      Height = 151
    end
    inherited edtObservacao_Servico: TcxDBMemo
      ExplicitHeight = 151
      Height = 151
    end
    inherited BtnImprimirDireto: TcxButton
      TabOrder = 127
    end
    inherited LbImpressao2: TcxLabel
      AnchorX = -12203
      AnchorY = 10009
    end
    inherited BtnMenu: TcxButton
      TabOrder = 126
    end
    inherited btnConsultaTECVenda: TcxButton
      TabOrder = 149
    end
    inherited Label10: TcxLabel
      AnchorX = 1748
      AnchorY = 501
    end
    inherited LbTotal: TcxLabel
      AnchorX = 1748
      AnchorY = 536
    end
    inherited edtPedidoCliente: TcxDBTextEdit
      TabOrder = 129
    end
    inherited edtPedidoRepresentante: TcxDBTextEdit
      TabOrder = 130
    end
    inherited PnlFrameAgrupamento: TPanel
      Width = 1229
      TabOrder = 117
      ExplicitWidth = 1229
    end
    inherited EdtTipodoEvento: TcxDBTextEdit
      TabOrder = 131
    end
    inherited EdtCerimonial: TcxDBTextEdit
      TabOrder = 132
    end
    inherited EdtDatadoEvento: TcxDBDateEdit
      TabOrder = 133
    end
    inherited PnlFrameAnexos: TPanel
      Width = 1229
      TabOrder = 118
      ExplicitWidth = 1229
    end
    inherited EdtEquipamento: TcxDBButtonEdit
      TabOrder = 134
    end
    inherited EdtEquipamentoÎEquipamentoÎDESCRICAO: TcxDBTextEdit
      TabOrder = 136
    end
    inherited edtGradeQuantTotal: TcxCurrencyEdit
      TabOrder = 137
    end
    inherited DBEdit10: TcxDBTextEdit
      TabOrder = 138
    end
    inherited DBEdit80: TcxDBTextEdit
      TabOrder = 139
    end
    inherited cxDBDateEdit1: TcxDBDateEdit
      TabOrder = 140
    end
    inherited DBEdit81: TcxDBTextEdit
      TabOrder = 141
    end
    inherited EdtTituloServico: TcxDBTextEdit
      TabOrder = 143
    end
    inherited EdtProjetoÎProjeto: TcxDBButtonEdit
      TabOrder = 145
    end
    inherited edtPath: TcxDBButtonEdit
      TabOrder = 146
    end
    inherited GridProdutoTree: TcxDBTreeList
      inherited GridProdutoTreeTOTAL: TcxDBTreeListColumn
        Summary.FooterSummaryItems = <
          item
            AlignHorz = taRightJustify
            CalculatedColumn = GridProdutoTreeTOTAL
            Kind = skSum
            AlignHorzAssigned = True
          end>
      end
    end
    inherited chkVenda_Tipo_Pode_Ser_Produzido: TcxDBCheckBox
      TabOrder = 128
    end
    inherited sprMotorCalculo: TdxSpreadSheet
      Width = 1229
      Height = 332
      ExplicitWidth = 1229
      ExplicitHeight = 332
      Data = {
        8002000044585353763242461000000042465320000000000000000001000101
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
    inherited dxSpreadSheetFormulaBar1: TdxSpreadSheetFormulaBar
      Width = 1229
      TabOrder = 119
      ExplicitWidth = 1229
    end
    inherited lblComissaoÎPessoasÎRAZAOSOCIAL: TcxLabel
      AnchorY = 141
    end
    object PnlNotaFiscal: TPanel [148]
      Left = 10000
      Top = 10000
      Width = 1229
      Height = 353
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 116
      Visible = False
    end
    object pnlNFSe: TPanel [149]
      Left = 10000
      Top = 10000
      Width = 1229
      Height = 353
      BevelOuter = bvNone
      Caption = 'Carregando...'
      Color = 16505534
      ParentBackground = False
      TabOrder = 115
      Visible = False
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 10
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Index = 9
    end
    inherited GrupoAgrupamentoVendas: TdxLayoutGroup
      Index = 6
    end
    inherited GrupoAnexo: TdxLayoutItem
      Index = 7
    end
    inherited TabMotorCalculo: TdxLayoutGroup
      Index = 8
    end
    inherited MainLayoutGroup71: TdxLayoutGroup
      ItemIndex = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoNotaFiscal
      AlignVert = avClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = PnlNotaFiscal
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 352
      ControlOptions.OriginalWidth = 1229
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoNotaFiscal: TdxLayoutGroup
      Parent = GrupoTabsPrincipal
      CaptionOptions.Text = 'Nota Fiscal'
      Index = 5
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = TabNFSe
      AlignVert = avClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = pnlNFSe
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 352
      ControlOptions.OriginalWidth = 1229
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object TabNFSe: TdxLayoutGroup
      Parent = GrupoTabsPrincipal
      CaptionOptions.Text = 'NFSe'
      Index = 4
    end
  end
  inherited PnlConfigCamposProduto: TPanel
    TabOrder = 11
  end
  inherited pnlMenuCadastro: TPanel
    inherited tcCadastroAcoes: TdxTileControl
      inherited btnConfirmar: TdxTileControlItem
        OnClick = btnConfirmarClick
      end
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelCredito: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited ImgListBotoesDescAcresc: TcxImageList
    FormatVersion = 1
  end
  inherited ProtEstiloAvisoValidacao: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited ProtEstiloFalhaValidacao: TcxEditStyleController
    PixelsPerInch = 96
  end
end
