inherited Frame_ConsuFinanceiro_Centro_Custo_Produto_Categoria: TFrame_ConsuFinanceiro_Centro_Custo_Produto_Categoria
  inherited pnlIniciar: TPanel
    inherited tcMenuAcoes: TdxTileControl
      inherited tiImprimir: TdxTileControlItem
        OnClick = tiImprimirClick
      end
    end
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'TOTAL'
            Column = GridConsultaDBTableView1RAZAOSOCIAL
          end
          item
            Kind = skSum
            FieldName = 'Credito'
            Column = GridConsultaDBTableView1CONCILIADO
          end
          item
            Kind = skSum
            FieldName = 'Debito'
            Column = GridConsultaDBTableView1DT_CONCILIADO
          end
          item
            Kind = skSum
            Column = GridConsultaDBTableView1Direto_Credito
          end
          item
            Kind = skSum
            Column = GridConsultaDBTableView1Direto_Debito
          end>
        inherited GridConsultaDBTableView1CENTRO_CUSTO: TcxGridDBColumn
          GroupIndex = -1
        end
      end
    end
    inherited tcAcoes: TdxTileControl
      inherited tiImportar: TdxTileControlItem
        Visible = False
      end
      inherited tiBaixaArquivoImportacao: TdxTileControlItem
        Visible = False
      end
      object AtualizaCentroCusto: TdxTileControlItem
        GroupIndex = -1
        IndexInGroup = -1
        Text1.AssignedValues = []
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object AnalisaCentrodeCusto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Analisar CC'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = AnalisaCentrodeCustoClick
      end
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
      ReportDocument.CreationDate = 44984.733875949070000000
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
  inherited Fr3Consulta: TfrxDBDataset
    DataSet = Consulta
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select F.CODIGO, F.CODPEDIDO, F.CODEMPRESA, F.RAZAOSOCIAL, F.DOC' +
        'UMENTO,'
      
        '       F.NOTAFISCAL, F.HISTORICO, F.EMISSAO, F.VENCTO, F.DATAPAG' +
        'TO, F.VALOR,'
      
        '       F.JUROS, F.DESCONTO, F.CODPLANOCONTAS, F.CODTIPOPAGTO, F.' +
        'TIPOPAGTO,'
      
        '       F.CODCONDICAOPAGTO, F.CONDICAOPAGTO, F.CONTATOS, F.PARCEL' +
        'A, F.CODUSUARIO,'
      
        '       F.TIPO, F.STATUS, F.CHEQUE_NUMERO, F.BOLETO_NOSSO_NR, F.C' +
        'ODNF_ENTRADA,'
      
        '       F.DT_NOTAFISCAL, F.CODFINANCEIRO_GRUPO, F.DT_EXCLUSAO, F.' +
        'MOTIVO_EXCLUSAO,'
      
        '       F.COR, F.COMISSAO_PAGA, F.DT_ALTERACAO, F.CODCONTA, F.AGR' +
        'UPADOR,'
      '       F.PESSOA_RESPONSAVEL_CODIGO, F.PESSOA_RESPONSAVEL_TIPO,'
      
        '       F.PESSOA_RESPONSAVEL_SEQUENCIA, F.CREDITO, F.DT_EMISSAO_V' +
        'ENDA,'
      
        '       F.PREVISAO, F.DT_PREVISAO, F.LANCAMENTO_FUTURO, F.CHEQUE_' +
        'COMPE,'
      
        '       F.DT_COMPETENCIA, F.EM_EXTRATO, F.CONCILIADO, F.DT_CONCIL' +
        'IADO,'
      '       F.CODUSUARIO_CONTA, PC.DESCRICAO as PLANOCONTAS,'
      '       FCC.codcentro_custo,'
      
        '       C.DESCRICAO as CONTA, U.USUARIO, UC.USUARIO as USUARIO_CO' +
        'NTA, FCC.PERCENTUAL,'
      
        '       CC1.DESCRICAO as CENTRO_CUSTO_NIVEL1, CC2.DESCRICAO as CE' +
        'NTRO_CUSTO_NIVEL2, CC3.DESCRICAO as CENTRO_CUSTO_NIVEL3, '
      
        '       CC4.DESCRICAO as CENTRO_CUSTO_NIVEL4, CC5.DESCRICAO as CE' +
        'NTRO_CUSTO_NIVEL5, CC6.DESCRICAO as CENTRO_CUSTO_NIVEL6'
      'from FINANCEIRO F'
      'left join PLANOCONTAS PC on (F.CODPLANOCONTAS = PC.CODIGO)'
      'left join CONTAS C on (F.CODCONTA = C.CODIGO)'
      'left join USUARIO U on (F.CODUSUARIO = U.CODIGO)'
      'left join USUARIO UC on (F.CODUSUARIO_CONTA = UC.CODIGO)'
      
        'left join FINANCEIRO_CENTRO_CUSTO FCC on (F.CODIGO = FCC.CODFINA' +
        'NCEIRO)'
      'left join CENTRO_CUSTO CC ON  (FCC.CODCENTRO_CUSTO = CC.CODIGO)'
      'left join CENTRO_CUSTO CC1 ON  (CC.NIVEL1 = CC1.CODIGO)'
      'left join CENTRO_CUSTO CC2 ON  (CC.NIVEL2 = CC2.CODIGO)'
      'left join CENTRO_CUSTO CC3 ON  (CC.NIVEL3 = CC3.CODIGO)'
      'left join CENTRO_CUSTO CC4 ON  (CC.NIVEL4 = CC4.CODIGO)'
      'left join CENTRO_CUSTO CC5 ON  (CC.NIVEL5 = CC5.CODIGO)'
      'left join CENTRO_CUSTO CC6 ON  (CC.NIVEL6 = CC6.CODIGO)'
      '')
    Left = 267
  end
  object Financeiro_Centro_Custo: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = TransaDragAndDrop
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select FC.*, CC.DESCRICAO from FINANCEIRO_CENTRO_CUSTO FC'
      'left join CENTRO_CUSTO CC on CC.CODIGO = FC.CODCENTRO_CUSTO'
      
        'where (FC.CODFINANCEIRO = :CODIGO)AND(FC.CODPEDIDO = :Codpedido)' +
        'and(FC.CODEMPRESA = :CodEmpresa)')
    Left = 463
    Top = 477
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODPEDIDO'
        ParamType = ptInput
      end
      item
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end>
  end
  object FinanceiroCentroCusto: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select FC.* from FINANCEIRO_CENTRO_CUSTO FC')
    Left = 267
    Top = 361
  end
end
