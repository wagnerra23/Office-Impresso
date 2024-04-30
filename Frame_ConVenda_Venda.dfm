inherited Frame_ConsuVenda_Venda: TFrame_ConsuVenda_Venda
  inherited pnlImpressoes: TPanel [1]
  end
  inherited pnlAgrupador: TPanel [2]
    inherited tcAgrupador: TdxTileControl
      inherited tcAgrupadorItem1: TdxTileControlItem
        IndexInGroup = 3
      end
      inherited tcAgrupadorItem3: TdxTileControlItem
        IndexInGroup = 4
      end
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [3]
    inherited tcAcoes: TdxTileControl
      inherited tiFaturamentoParcial: TdxTileControlItem
        IndexInGroup = 5
      end
      object btnDesagrupar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Desagrupar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = btnDesagruparClick
      end
      object btnFaturar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 6
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Faturar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = btnFaturarClick
      end
      object btnCancelarFaturamento: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 7
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Cancelar Fatura'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = btnCancelarFaturamentoClick
      end
      object btnFaturarProducao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 8
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Fatura Produ'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = btnFaturarProducaoClick
      end
      object btnNotaFiscal: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 9
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Nota Fiscal'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = btnNotaFiscalClick
      end
    end
    inherited LblTotal: TcxLabel
      Left = 1025
      ExplicitLeft = 1025
      AnchorY = 672
    end
    inherited EdtTotalSelecionado: TcxCurrencyEdit
      Left = 845
      ExplicitLeft = 845
    end
    inherited btnTodos: TcxButton
      Left = 9838
      TabOrder = 21
      ExplicitLeft = 9838
    end
    inherited AtvCarregandoTotal: TdxActivityIndicator
      Left = 1151
      ExplicitLeft = 1151
    end
    inherited EdtTotal: TcxCurrencyEdit
      Left = 1089
      ExplicitLeft = 1089
    end
    inherited TreeListUsuarios: TcxDBTreeList
      Left = -656
      TabOrder = 22
      ExplicitLeft = -656
    end
    inherited liTotalSelecionado: TcxLabel
      Left = 680
      ExplicitLeft = 680
      AnchorY = 672
    end
    inherited cxButton3: TcxButton
      Left = 9917
      ExplicitLeft = 9917
    end
    inherited GrupoNavegador: TdxLayoutGroup
      AlignHorz = ahClient
    end
  end
  inherited pnlFiltros: TPanel [4]
    Height = 526
    ExplicitHeight = 526
    inherited tcFiltrosPanel: TdxTileControl
      Height = 507
      ExplicitHeight = 507
      object tiFiltroPedidosSemFat: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.Alignment = taCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = []
        Text1.Value = 'A Faturar'
        Text1.WordWrap = True
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiFiltros_ArquivadosClick
      end
      object tiFiltrosPedidosAFaturar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = []
        Text1.Value = 'Pedidos A Faturar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiFiltros_ArquivadosClick
      end
    end
    inherited tcSalvarFiltro: TdxTileControl
      Top = 508
      ExplicitTop = 508
    end
  end
  inherited PnlMigraVendaTipo: TPanel [5]
  end
  inherited pnlFiltroData: TPanel [6]
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited pnlIniciar: TPanel [7]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44868.650956226850000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxEditStyleController1: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosConsulta: TWREventosConsulta
    Left = 420
  end
  inherited WREventosCadastro: TWREventosCadastro
    OnLayoutChange = WREventosCadastroLayoutChange
  end
  inherited DS: TDataSource
    Top = 225
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited RepAgenda: TcxEditRepository
    PixelsPerInch = 96
  end
  inherited ImgListActions: TcxImageList
    FormatVersion = 1
  end
  inherited dxRibbonPopupAgrupar: TdxRibbonPopupMenu
    PixelsPerInch = 96
  end
  inherited cxImageListTreeList: TcxImageList
    FormatVersion = 1
  end
end
