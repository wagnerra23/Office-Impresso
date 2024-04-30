inherited Frame_ConsuVenda_Pedido: TFrame_ConsuVenda_Pedido
  inherited pnlFiltros: TPanel
    inherited tcFiltrosPanel: TdxTileControl
      object tiFiltroOrcamentos: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = []
        Text1.Value = 'Or'#231'amentos'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiFiltros_ArquivadosClick
      end
    end
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl
    inherited LblTotal: TcxLabel
      AnchorY = 672
    end
    inherited btnTodos: TcxButton
      TabOrder = 21
    end
    inherited TreeListUsuarios: TcxDBTreeList
      TabOrder = 22
    end
    inherited liTotalSelecionado: TcxLabel
      AnchorY = 672
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44869.331998240740000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Transa: TFDTransaction
    Left = 306
    Top = 224
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
  inherited QuerSum: TFDQuery
    Left = 547
    Top = 363
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
  inherited Consulta: TFDQuery
    Left = 222
  end
  inherited Venda_ProdutoT: TFDQuery
    SQL.Strings = (
      
        'select VP.DESCRICAO, VP.CODPRODUTO, VP.QUANT, VP.VALOR, VP.COMP,' +
        ' VP.LARG, VP.ESPESSURA, VP.CODVENDA, VP.PODE_FATURAR, VP.TOTAL,V' +
        'P.MEDIDAS,'
      
        '       VP.UNIDADE, VP.QTDADEPECA, VP.CODIGO, VP.OBS_FATURAMENTO,' +
        ' VP.NF_OBS_NOTAFISCAL, VP.CODVENDA_ORIGINAL, VP.CODVENDA_FATURAD' +
        'O,'
      
        '       VP.CODPRODUCAO, VP.PRODUTO_TIPO, VP.PROTOCOLO, VP.TEM_PRO' +
        'DUCAO_ENVIADO, PR.SITUACAO, VP.QUANTFATURADA, '
      ' iif('
      
        '       (select count(PR1.SITUACAO) From PRODUCAO PR1 where (VP.C' +
        'ODIGO = PR1.CODVENDA_PRODUTO and VP.CODVENDA = PR1.CODVENDA)and(' +
        'PR1.SITUACAO <> '#39'Cancelado'#39')and not(PR1.SITUACAO is null)) > 0'
      '       , '#39'S'#39', '#39'N'#39') as EM_PRODUCAO,'
      '       vp1.total as Total_original, vp1.quant as Quant_original'
      'from VENDA_PRODUTO VP'
      
        'left join VENDA_PRODUTO VP1 on (vp1.codigo = vp.codvenda_produto' +
        '_original)and(vp1.codvenda = vp.codvenda_original)'
      'left join PRODUTO P on (VP.CODPRODUTO = P.CODIGO)'
      'left join PRODUCAO PR on (VP.CODPRODUCAO = PR.CODIGO)'
      'where (VP.CODVENDA = :CODIGO)'
      'and ((VP.PARENT = 0) or (VP.PARENT is null))')
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
