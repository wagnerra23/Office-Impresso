inherited Frame_ConsuEstoque_Produto_Movimento: TFrame_ConsuEstoque_Produto_Movimento
  inherited pnlFiltros: TPanel [0]
  end
  inherited pnlImpressoes: TPanel [1]
  end
  inherited pnlFiltroData: TPanel [3]
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
        Selection = 1
      end
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [4]
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        inherited GridConsultaDBTableView1TIPO_MOVIMENTO: TcxGridDBColumn [10]
        end
        inherited GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn [11]
        end
        inherited GridConsultaDBTableView1CODVENDA: TcxGridDBColumn [12]
        end
        inherited GridConsultaDBTableView1CODNF_ENTRADA: TcxGridDBColumn [13]
        end
        inherited GridConsultaDBTableView1ATIVO: TcxGridDBColumn [14]
        end
        inherited GridConsultaDBTableView1ESTOQUE_LOCAL: TcxGridDBColumn [15]
        end
        inherited GridConsultaDBTableView1STATUS: TcxGridDBColumn [16]
        end
        inherited GridConsultaDBTableView1CODCOR: TcxGridDBColumn [17]
        end
        inherited GridConsultaDBTableView1VALOR: TcxGridDBColumn [18]
        end
        inherited GridConsultaDBTableView1CUSTO_FABR: TcxGridDBColumn [19]
        end
        inherited GridConsultaDBTableView1CUSTO_VENDA_TOTAL: TcxGridDBColumn [20]
        end
        inherited GridConsultaDBTableView1VALOR_CADASTRO: TcxGridDBColumn [21]
        end
        inherited GridConsultaDBTableView1VEICULO_PLACA: TcxGridDBColumn [22]
        end
        inherited GridConsultaDBTableView1VEICULO_CHASSI: TcxGridDBColumn [23]
        end
        inherited GridConsultaDBTableView1VEICULO_MOTOR: TcxGridDBColumn [24]
        end
        inherited GridConsultaDBTableView1VEICULO_RENAVAN: TcxGridDBColumn [25]
        end
        inherited GridConsultaDBTableView1VEICULO_ANO_MODELO: TcxGridDBColumn [26]
        end
        inherited GridConsultaDBTableView1VEICULO_CILINDRADA: TcxGridDBColumn [27]
        end
        inherited GridConsultaDBTableView1VEICULO_HP: TcxGridDBColumn [28]
        end
        inherited GridConsultaDBTableView1VEICULO_COMBUSTIVEL: TcxGridDBColumn [29]
        end
        inherited GridConsultaDBTableView1VEICULO_KM: TcxGridDBColumn [30]
        end
        inherited GridConsultaDBTableView1VEICULO_PASSAGEIROS: TcxGridDBColumn [31]
        end
        inherited GridConsultaDBTableView1ATUALIZADO: TcxGridDBColumn [32]
        end
        inherited GridConsultaDBTableView1FORM: TcxGridDBColumn [33]
        end
        inherited GridConsultaDBTableView1PESSOA_FORNECEDOR_CODIGO: TcxGridDBColumn [34]
        end
        inherited GridConsultaDBTableView1PESSOA_FORNECEDOR_TIPO: TcxGridDBColumn [35]
        end
        inherited GridConsultaDBTableView1PESSOA_FORNECEDOR_SEQUENCIA: TcxGridDBColumn [36]
        end
        inherited GridConsultaDBTableView1CODPRODUTO_LOTE: TcxGridDBColumn [37]
        end
        inherited GridConsultaDBTableView1COR: TcxGridDBColumn [38]
        end
        inherited GridConsultaDBTableView1AJUSTE_SALDO: TcxGridDBColumn [39]
        end
        inherited GridConsultaDBTableView1VALOR_PRAZO: TcxGridDBColumn [40]
        end
        inherited GridConsultaDBTableView1CUSTO_COMPOSICAO: TcxGridDBColumn [41]
        end
        inherited GridConsultaDBTableView1VALOR_COMPOSICAO: TcxGridDBColumn [42]
        end
        inherited GridConsultaDBTableView1CUSTO_CENTRO_TRABALHO: TcxGridDBColumn [43]
        end
        inherited GridConsultaDBTableView1TIPO_USO: TcxGridDBColumn [44]
        end
        inherited GridConsultaDBTableView1PRODUTO_CATEGORIA: TcxGridDBColumn [45]
        end
        inherited GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn [46]
        end
        inherited GridConsultaDBTableView1PRODUTO_GRUPO: TcxGridDBColumn [47]
        end
        inherited GridConsultaDBTableView1USUARIO: TcxGridDBColumn [48]
        end
      end
    end
  end
  inherited pnlIniciar: TPanel [5]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44832.424391018520000000
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
    SQL.Strings = (
      
        'select M.*, P.DESCRICAO,P.UNIDADE, C.DESCRICAO as COR , U.LOGIN ' +
        'as USUARIO, PC.DESCRICAO AS PRODUTO_CATEGORIA, PC.CODIGO as CODP' +
        'RODUTO_CATEGORIA, GP.DESCRICAO AS PRODUTO_GRUPO'
      'from PRODUTO_MOVIMENTO M'
      'left join PRODUTO P on (M.CODPRODUTO = P.CODIGO) '
      
        'left join PRODUTO_GRUPO GP on (P.CODPRODUTO_GRUPO = GP.CODIGO) a' +
        'nd (GP.CODNF_NATUREZA_OPERACAO = 0)'
      
        'left join PRODUTO_CATEGORIA PC on (P.CODPRODUTO_CATEGORIA = PC.C' +
        'ODIGO)'
      'left join USUARIO U on (M.CODUSUARIO = U.CODIGO) '
      'left join COR C on (M.CODCOR = C.CODIGO)')
    object ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object ConsultaCODEMPRESA: TStringField
      FieldName = 'CODEMPRESA'
      Origin = 'CODEMPRESA'
      Required = True
      Size = 10
    end
    object ConsultaDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object ConsultaCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
    end
    object ConsultaQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'QUANT'
    end
    object ConsultaCODCOR: TIntegerField
      FieldName = 'CODCOR'
      Origin = 'CODCOR'
    end
    object ConsultaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object ConsultaCUSTO_FABR: TFloatField
      FieldName = 'CUSTO_FABR'
      Origin = 'CUSTO_FABR'
    end
    object ConsultaCUSTO_VENDA_TOTAL: TFloatField
      FieldName = 'CUSTO_VENDA_TOTAL'
      Origin = 'CUSTO_VENDA_TOTAL'
    end
    object ConsultaVALOR_CADASTRO: TFloatField
      FieldName = 'VALOR_CADASTRO'
      Origin = 'VALOR_CADASTRO'
    end
    object ConsultaVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      Origin = 'VALOR_PRAZO'
    end
    object ConsultaVEICULO_PLACA: TStringField
      FieldName = 'VEICULO_PLACA'
      Origin = 'VEICULO_PLACA'
      Size = 7
    end
    object ConsultaVEICULO_CHASSI: TStringField
      FieldName = 'VEICULO_CHASSI'
      Origin = 'VEICULO_CHASSI'
    end
    object ConsultaVEICULO_MOTOR: TStringField
      FieldName = 'VEICULO_MOTOR'
      Origin = 'VEICULO_MOTOR'
    end
    object ConsultaVEICULO_RENAVAN: TStringField
      FieldName = 'VEICULO_RENAVAN'
      Origin = 'VEICULO_RENAVAN'
      Size = 15
    end
    object ConsultaVEICULO_ANO_MODELO: TStringField
      FieldName = 'VEICULO_ANO_MODELO'
      Origin = 'VEICULO_ANO_MODELO'
      Size = 15
    end
    object ConsultaVEICULO_CILINDRADA: TFloatField
      FieldName = 'VEICULO_CILINDRADA'
      Origin = 'VEICULO_CILINDRADA'
    end
    object ConsultaVEICULO_HP: TFloatField
      FieldName = 'VEICULO_HP'
      Origin = 'VEICULO_HP'
    end
    object ConsultaVEICULO_COMBUSTIVEL: TStringField
      FieldName = 'VEICULO_COMBUSTIVEL'
      Origin = 'VEICULO_COMBUSTIVEL'
      Size = 10
    end
    object ConsultaVEICULO_KM: TStringField
      FieldName = 'VEICULO_KM'
      Origin = 'VEICULO_KM'
      Size = 7
    end
    object ConsultaVEICULO_PASSAGEIROS: TFloatField
      FieldName = 'VEICULO_PASSAGEIROS'
      Origin = 'VEICULO_PASSAGEIROS'
    end
    object ConsultaTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Origin = 'TIPO_MOVIMENTO'
      FixedChar = True
      Size = 1
    end
    object ConsultaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 300
    end
    object ConsultaCODNF_ENTRADA: TStringField
      FieldName = 'CODNF_ENTRADA'
      Origin = 'CODNF_ENTRADA'
      Size = 10
    end
    object ConsultaCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
      Size = 15
    end
    object ConsultaATUALIZADO: TSQLTimeStampField
      FieldName = 'ATUALIZADO'
      Origin = 'ATUALIZADO'
    end
    object ConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'CODUSUARIO'
    end
    object ConsultaFORM: TStringField
      FieldName = 'FORM'
      Origin = 'FORM'
      Size = 50
    end
    object ConsultaPESSOA_FORNECEDOR_CODIGO: TStringField
      FieldName = 'PESSOA_FORNECEDOR_CODIGO'
      Origin = 'PESSOA_FORNECEDOR_CODIGO'
      Size = 10
    end
    object ConsultaPESSOA_FORNECEDOR_TIPO: TStringField
      FieldName = 'PESSOA_FORNECEDOR_TIPO'
      Origin = 'PESSOA_FORNECEDOR_TIPO'
      Size = 3
    end
    object ConsultaPESSOA_FORNECEDOR_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_FORNECEDOR_SEQUENCIA'
      Origin = 'PESSOA_FORNECEDOR_SEQUENCIA'
    end
    object ConsultaCODPRODUTO_LOTE: TIntegerField
      FieldName = 'CODPRODUTO_LOTE'
      Origin = 'CODPRODUTO_LOTE'
    end
    object ConsultaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaCUSTO_COMPOSICAO: TFloatField
      FieldName = 'CUSTO_COMPOSICAO'
      Origin = 'CUSTO_COMPOSICAO'
    end
    object ConsultaVALOR_COMPOSICAO: TFloatField
      FieldName = 'VALOR_COMPOSICAO'
      Origin = 'VALOR_COMPOSICAO'
    end
    object ConsultaCUSTO_CENTRO_TRABALHO: TFloatField
      FieldName = 'CUSTO_CENTRO_TRABALHO'
      Origin = 'CUSTO_CENTRO_TRABALHO'
    end
    object ConsultaAJUSTE_SALDO: TStringField
      FieldName = 'AJUSTE_SALDO'
      Origin = 'AJUSTE_SALDO'
      Size = 1
    end
    object ConsultaPRODUTO_ESTOQUE_LOCAL: TStringField
      FieldName = 'PRODUTO_ESTOQUE_LOCAL'
      Origin = 'PRODUTO_ESTOQUE_LOCAL'
      Size = 15
    end
    object ConsultaTIPO_USO: TStringField
      FieldName = 'TIPO_USO'
      Origin = 'TIPO_USO'
      Size = 50
    end
    object ConsultaQUANT_ANTIGA: TFloatField
      FieldName = 'QUANT_ANTIGA'
      Origin = 'QUANT_ANTIGA'
    end
    object ConsultaQUANT_ATUAL: TFloatField
      FieldName = 'QUANT_ATUAL'
      Origin = 'QUANT_ATUAL'
    end
    object ConsultaNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
      Size = 100
    end
    object ConsultaPESSOA_FUNCIONARIO_CODIGO: TStringField
      FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
      Origin = 'PESSOA_FUNCIONARIO_CODIGO'
      Size = 10
    end
    object ConsultaDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 300
    end
    object ConsultaUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      Size = 6
    end
    object ConsultaCOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COR'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'LOGIN'
      ProviderFlags = []
      Size = 30
    end
    object ConsultaPRODUTO_CATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_CATEGORIA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaPRODUTO_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_GRUPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 40
    end
  end
end
