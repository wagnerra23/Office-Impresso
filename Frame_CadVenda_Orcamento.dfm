inherited Frame_Venda_Orcamento: TFrame_Venda_Orcamento
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
    inherited edtSolicitacao_Servico: TcxDBMemo
      Left = 13
      Top = 130
      ExplicitLeft = 13
      ExplicitTop = 130
    end
    inherited edtObservacao_Servico: TcxDBMemo
      Left = 940
      Top = 130
      ExplicitLeft = 940
      ExplicitTop = 130
    end
    inherited BtnImprimirDireto: TcxButton
      TabOrder = 128
    end
    inherited LbImpressao2: TcxLabel
      AnchorX = -5232
      AnchorY = 10009
    end
    inherited BtnMenu: TcxButton
      TabOrder = 126
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
      TabOrder = 132
    end
    inherited edtPedidoRepresentante: TcxDBTextEdit
      TabOrder = 134
    end
    inherited EdtTipodoEvento: TcxDBTextEdit
      TabOrder = 124
    end
    inherited EdtCerimonial: TcxDBTextEdit
      TabOrder = 125
    end
    inherited EdtDatadoEvento: TcxDBDateEdit
      TabOrder = 127
    end
    inherited EdtEquipamento: TcxDBButtonEdit
      TabOrder = 129
    end
    inherited EdtEquipamentoÎEquipamentoÎDESCRICAO: TcxDBTextEdit
      TabOrder = 131
    end
    inherited edtGradeQuantTotal: TcxCurrencyEdit
      TabOrder = 135
    end
    inherited DBEdit10: TcxDBTextEdit
      TabOrder = 136
    end
    inherited DBEdit80: TcxDBTextEdit
      TabOrder = 137
    end
    inherited cxDBDateEdit1: TcxDBDateEdit
      TabOrder = 138
    end
    inherited DBEdit81: TcxDBTextEdit
      TabOrder = 139
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
      TabOrder = 130
    end
    inherited sprMotorCalculo: TdxSpreadSheet
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
    inherited lblComissaoÎPessoasÎRAZAOSOCIAL: TcxLabel
      AnchorY = 141
    end
    inherited GrupoRecebimento: TdxLayoutGroup
      ItemIndex = 1
    end
  end
  inherited PnlConfigCamposProduto: TPanel
    TabOrder = 11
  end
  inherited pnlMenuCadastro: TPanel
    inherited tcCadastro: TdxTileControl
      Height = 205
      ExplicitHeight = 205
      object btnAprovarOrcamento: TdxTileControlItem
        Glyph.Align = oaBottomLeft
        Glyph.ImageIndex = 7
        GroupIndex = 1
        IndexInGroup = 1
        Size = tcisLarge
        Style.BorderColor = 540330879
        Style.GradientBeginColor = 537833300
        Style.GradientEndColor = 537969256
        Text1.Align = oaMiddleRight
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -12
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 13
        Text1.Value = 'Ganhou'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = btnAprovarOrcamentoClick
      end
      object BtnReprovarOrcamento: TdxTileControlItem
        Glyph.Align = oaBottomLeft
        Glyph.ImageIndex = 2
        GroupIndex = 1
        IndexInGroup = 2
        Size = tcisLarge
        Style.GradientBeginColor = clRed
        Style.GradientEndColor = 4737279
        Text1.Align = oaMiddleRight
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -12
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 17
        Text1.Value = 'Perdeu'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = BtnReprovarOrcamentoClick
      end
      object btnCancelarOrcamento: TdxTileControlItem
        Glyph.Align = oaBottomLeft
        Glyph.ImageIndex = 2
        GroupIndex = 1
        IndexInGroup = 3
        Size = tcisLarge
        Style.GradientBeginColor = clRed
        Style.GradientEndColor = 5460991
        Text1.Align = oaMiddleRight
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -12
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 8
        Text1.Value = 'Cancelar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = btnCancelarOrcamentoClick
      end
    end
    inherited dxTileControl1: TdxTileControl
      Height = 205
      ExplicitHeight = 205
    end
    inherited tcCadastroAcoes: TdxTileControl
      inherited btnConfirmar: TdxTileControlItem
        OnClick = btnConfirmarClick
      end
    end
    inherited tcConfig: TdxTileControl
      Top = 509
      TabOrder = 7
      ExplicitTop = 509
    end
    inherited tcCadastro_Consulta: TdxTileControl
      TabOrder = 8
    end
    object edtDT_Orcamento_Finalizado: TcxDBTextEdit
      Left = 0
      Top = 552
      Align = alBottom
      DataBinding.DataField = 'DT_ORCAMENTO_FINALIZADO'
      DataBinding.DataSource = DS
      Properties.OnChange = edtDT_Orcamento_FinalizadoPropertiesChange
      TabOrder = 4
      Width = 108
    end
    object edtSituacaoFinanceira: TcxDBTextEdit
      Left = 0
      Top = 488
      Align = alBottom
      DataBinding.DataField = 'SITUACAOFINANCEIRA'
      DataBinding.DataSource = DS
      Properties.OnChange = edtSituacaoFinanceiraPropertiesChange
      TabOrder = 5
      Width = 108
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
  inherited MenuDireita: TPopupMenu
    inherited PoupCopiarVendacomProdutos: TMenuItem
      Caption = 'Duplicar Or'#231'amento'
    end
    inherited PoupTransferirVendaparaEmpresa: TMenuItem
      Caption = 'Transferir Or'#231'amento para Empresa'
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
