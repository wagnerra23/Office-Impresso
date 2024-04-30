inherited ConsuProduto_ProdutoSimples: TConsuProduto_ProdutoSimples
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1PODE_SER_VENDIDO: TcxGridDBColumn
          Caption = 'Pode ser Vendido?'
          DataBinding.FieldName = 'PODE_SER_VENDIDO'
        end
      end
    end
    inherited btnEstoque: TWRButtonFlat
      TabOrder = 20
    end
    inherited WRButtonFlat6: TWRButtonFlat
      TabOrder = 19
    end
    inherited SplitSubGrid: TdxLayoutSplitterItem
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
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
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44804.787283854160000000
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
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    ResourceOptions.AssignedValues = []
    SQL.Strings = (
      'select iif(P.CODPRODUTO_TIPO <> 2, E.ESTOQUE, 0) as ESTOQUE_P,'
      
        '       P.CODIGO, P.CODFABRICA, P.ATIVO, P.ESTRELA, P.TEM_GRADE,P' +
        '.TEM_TABELA_PRECO, P.TEM_COMPOSICAO,P.TEM_FLUXO,P.TEM_WIZARD,'
      
        '       P.CODPRODUTO_TIPO, P.CODPRODUTO_CATEGORIA, P.CODPRODUTO_G' +
        'RUPO, P.CODPRODUTO_MARCA,'
      
        '       P.DESCRICAO, P.UNIDADE, P.LOCAL, P.ESTOQUE_MIN, P.ESTOQUE' +
        '_MAX, PC.DESCRICAO AS PRODUTO_CATEGORIA,'
      
        '       P.CUSTO, P.VALOR_COMPRA, P.VALOR, P.CODFAMILIA, P.PESSOA_' +
        'RESPONSAVEL_CODIGO,'
      
        '       E.CODEMPRESA, E.CODPRODUTO, GP.DESCRICAO as PRODUTO_GRUPO' +
        ', P.CALC_PACRESC_PRAZO, P.CALC_PDESC_ATACADO, P.CALC_VPRAZO, P.C' +
        'ALC_VATACADO,'
      
        '       F.RAZAOSOCIAL as FORNECEDOR, PT.DESCRICAO as PRODUTO_TIPO' +
        ', P.LARG, M.DESCRICAO AS PRODUTO_MARCA, P.PRIORIDADE_PRODUCAO,'
      
        '       P.COMP, P.ESPESSURA, C.DESCRICAO as COR, P.CALC_QPESO_BRU' +
        'TO,  P.DT_ALTERACAO, P.MARGEM, P.CODCENTRO_TRABALHO, CT.DESCRICA' +
        'O as CENTRO_TRABALHO, '
      '       P.CODCENTRO_CUSTO, CC.DESCRICAO AS CENTRO_CUSTO,'
      
        '       P.CODNF_NCM, L.DESCRICAO as LOCAL_APLICACAO, PFOR.DT_ULTI' +
        'MA_COMPRA, PT.CLASSIFICACAO, P.CODIGOEAN, P.OBSERVACAO,P.TEM_MAR' +
        'GEM_FIXA_CONTIBUICAO, P.PODE_SER_VENDIDO,'
      
        '      iif(P.ESTOQUE_MIN > E.ESTOQUE, E.ESTOQUE - P.ESTOQUE_MIN, ' +
        '0) as Estoque_Minimo,iif(P.ESTOQUE_MAX < E.ESTOQUE , E.ESTOQUE -' +
        ' P.ESTOQUE_MAX, 0) as Estoque_Maximo'
      'from PRODUTO P'
      
        'left join PRODUTO_ESTOQUE E on (P.CODIGO = E.CODPRODUTO) and (E.' +
        'CODEMPRESA = :CodEmpresa)'
      'left join PESSOAS F on (P.PESSOA_RESPONSAVEL_CODIGO = F.CODIGO)'
      
        'left join PRODUTO_GRUPO GP on (P.CODPRODUTO_GRUPO = GP.CODIGO) a' +
        'nd (GP.CODNF_NATUREZA_OPERACAO = 0)'
      
        'left join PRODUTO_CATEGORIA PC on (P.CODPRODUTO_CATEGORIA = PC.C' +
        'ODIGO)'
      'left join PRODUTO_TIPO PT on (PT.CODIGO=P.CODPRODUTO_TIPO)'
      'left join PRODUTO_MARCA M on (P.CODPRODUTO_MARCA = M.CODIGO)'
      'left join COR C on (P.CODCOR = C.CODIGO)'
      'left join LOCAL L on (P.CODLOCAL = L.CODIGO)'
      
        'left join CENTRO_TRABALHO CT on (CT.CODIGO = P.CODCENTRO_TRABALH' +
        'O)'
      'left join CENTRO_CUSTO CC on (CC.CODIGO = P.CODCENTRO_CUSTO)'
      
        'left join(select PF.CODPRODUTO, max(PF.DT_ULTIMA_COMPRA) as DT_U' +
        'LTIMA_COMPRA '
      '          from PRODUTO_FORNECEDOR PF'
      
        '          group by PF.CODPRODUTO) PFOR on (PFOR.CODPRODUTO = P.C' +
        'ODIGO) '
      '')
    object ConsultaPODE_SER_VENDIDO: TStringField
      FieldName = 'PODE_SER_VENDIDO'
      Origin = 'PODE_SER_VENDIDO'
      Size = 1
    end
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ImgProduto: TcxImageList
    FormatVersion = 1
  end
  inherited ImgProduto_Tipo16x16: TcxImageList
    FormatVersion = 1
  end
end
