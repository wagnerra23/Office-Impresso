inherited Frame_ConsuComissao_Selecao_Financeiro_Representante: TFrame_ConsuComissao_Selecao_Financeiro_Representante
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        DataController.Filter.Active = True
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'TOTAL'
            Column = GridConsultaDBTableView1VENCTO
          end
          item
            Kind = skSum
            FieldName = 'Credito'
            Column = GridConsultaDBTableView1Credito
          end
          item
            Kind = skSum
            FieldName = 'Debito'
            Column = GridConsultaDBTableView1Debito
          end>
        object GridConsultaDBTableView1REPRESENTANTE: TcxGridDBColumn [56]
          Caption = 'Representante Comiss'#227'o'
          DataBinding.FieldName = 'REPRESENTANTE_COMISSAO'
        end
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
      ReportDocument.CreationDate = 44900.343185428240000000
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
  inherited QueryDragAndDrop: TFDQuery
    SQL.Strings = (
      'SELECT V.CODIGO, V.PESSOA_REPRESENTANTE_CODIGO FROM VENDA V'
      'WHERE V.CODIGO = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK3 = ''
    Tabela = 'VENDA'
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
      
        '       C.DESCRICAO as CONTA, U.USUARIO, UC.USUARIO as USUARIO_CO' +
        'NTA, '
      
        '       p.razaosocial as REPRESENTANTE_COMISSAO, p.CODIGO as CODR' +
        'EPRESENTANTE_COMISSAO,'
      '       (select COUNT(1) from COMISSAO_FINANCEIRO CF '
      '       LEFT JOIN COMISSAO CO ON CO.CODIGO = CF.CODCOMISSAO'
      
        '       WHERE CF.codfinanceiro = F.codigo and CF.codfinanceiro > ' +
        '1 and CO.DT_FINANCEIRO IS NOT NULL and CF.IS_PAGAR = '#39'S'#39') as QTD' +
        '_COMISSAO_PAGA'
      'from FINANCEIRO F'
      'left join VENDA V on (V.codigo = F.CODPEDIDO)'
      
        'left join PESSOAS P on (P.codigo = V.pessoa_representante_codigo' +
        ')'
      'left join PLANOCONTAS PC on (F.CODPLANOCONTAS = PC.CODIGO)'
      'left join CONTAS C on (F.CODCONTA = C.CODIGO)'
      'left join USUARIO U on (F.CODUSUARIO = U.CODIGO)'
      'left join USUARIO UC on (F.CODUSUARIO_CONTA = UC.CODIGO)'
      ''
      ''
      '')
    Left = 267
    Top = 305
  end
end
