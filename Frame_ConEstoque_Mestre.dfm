inherited Frame_ConsuEstoque_Mestre: TFrame_ConsuEstoque_Mestre
  inherited pnlFiltroData: TPanel [0]
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
        Selection = 1
      end
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        DataController.KeyFieldNames = 'CODIGO;CODEMPRESA'
        DataController.Summary.DefaultGroupSummaryItems.OnSummary = GridConsultaDBTableView1DataControllerSummaryDefaultGroupSummaryItemsSummary
        ConditionalFormatting = {
          010000000A000000310000005400640078005300700072006500610064005300
          680065006500740043006F006E0064006900740069006F006E0061006C004600
          6F0072006D0061007400740069006E006700520075006C006500450078007000
          720065007300730069006F006E00AB000000070000000000000007000000FFFF
          FF7F0101FF0000000B00000007000000430061006C0069006200720069000001
          0000000020000000200000000020000000002000000000200000000020000700
          0000470045004E004500520041004C000000000000020000000000000000011B
          0000003D005B00430061007400650067006F0072006900610020006400650020
          00700072006F006400750074006F005D003D0022005300220000000000}
        object GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn
          Caption = 'Cod. Empresa'
          DataBinding.FieldName = 'CODEMPRESA'
          Visible = False
          Width = 73
        end
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1DATA: TcxGridDBColumn
          Caption = 'Data do movimento'
          DataBinding.FieldName = 'DATA'
          SortIndex = 0
          SortOrder = soDescending
          Width = 163
        end
        object GridConsultaDBTableView1CODPRODUTO: TcxGridDBColumn
          Caption = 'Cod. Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          FooterAlignmentHorz = taCenter
        end
        object GridConsultaDBTableView1PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 342
        end
        object GridConsultaDBTableView1QUANT_ANTIGA: TcxGridDBColumn
          Caption = 'Saldo anterior'
          DataBinding.FieldName = 'QUANT_ANTIGA'
          Width = 90
        end
        object GridConsultaDBTableView1QuantCalculada: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'QuantCalculada'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.#####;-,0.#####'
        end
        object GridConsultaDBTableView1QUANT: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'QUANT'
          Visible = False
        end
        object GridConsultaDBTableView1UNIDADE: TcxGridDBColumn
          Caption = 'Unid.'
          DataBinding.FieldName = 'UNIDADE'
        end
        object GridConsultaDBTableView1QUANT_ATUAL: TcxGridDBColumn
          Caption = 'Saldo acumulado'
          DataBinding.FieldName = 'QUANT_ATUAL'
          FooterAlignmentHorz = taCenter
        end
        object GridConsultaDBTableView1TIPO_USO: TcxGridDBColumn
          Caption = 'Natureza'
          DataBinding.FieldName = 'TIPO_USO'
        end
        object GridConsultaDBTableView1TIPO_MOVIMENTO: TcxGridDBColumn
          Caption = 'E/S'
          DataBinding.FieldName = 'TIPO_MOVIMENTO'
          FooterAlignmentHorz = taCenter
          Width = 45
        end
        object GridConsultaDBTableView1PRODUTO_CATEGORIA: TcxGridDBColumn
          Caption = 'Categoria de produto'
          DataBinding.FieldName = 'PRODUTO_CATEGORIA'
        end
        object GridConsultaDBTableView1PRODUTO_GRUPO: TcxGridDBColumn
          Caption = 'Grupo de produto'
          DataBinding.FieldName = 'PRODUTO_GRUPO'
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 304
        end
        object GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn
          Caption = 'Cod. Usu'#225'rio'
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
        end
        object GridConsultaDBTableView1USUARIO: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USUARIO'
          Width = 153
        end
        object GridConsultaDBTableView1CODVENDA: TcxGridDBColumn
          Caption = 'Cod Venda'
          DataBinding.FieldName = 'CODVENDA'
          Visible = False
        end
        object GridConsultaDBTableView1CODNF_ENTRADA: TcxGridDBColumn
          Caption = 'Cod Nota Entrada'
          DataBinding.FieldName = 'CODNF_ENTRADA'
          Visible = False
          Width = 87
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
        object GridConsultaDBTableView1ESTOQUE_LOCAL: TcxGridDBColumn
          Caption = 'Local de Estoque'
          DataBinding.FieldName = 'PRODUTO_ESTOQUE_LOCAL'
          Visible = False
        end
        object GridConsultaDBTableView1STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
          Visible = False
        end
        object GridConsultaDBTableView1CODCOR: TcxGridDBColumn
          Caption = 'Cod. Cor'
          DataBinding.FieldName = 'CODCOR'
          Visible = False
        end
        object GridConsultaDBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          Visible = False
        end
        object GridConsultaDBTableView1CUSTO_FABR: TcxGridDBColumn
          Caption = 'Custo Compra'
          DataBinding.FieldName = 'CUSTO_FABR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object GridConsultaDBTableView1CUSTO_VENDA_TOTAL: TcxGridDBColumn
          Caption = 'Custo Total'
          DataBinding.FieldName = 'CUSTO_VENDA_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object GridConsultaDBTableView1VALOR_CADASTRO: TcxGridDBColumn
          Caption = 'Valor do Cadastro na Data'
          DataBinding.FieldName = 'VALOR_CADASTRO'
          Visible = False
        end
        object GridConsultaDBTableView1VEICULO_PLACA: TcxGridDBColumn
          Caption = 'Placa'
          DataBinding.FieldName = 'VEICULO_PLACA'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VEICULO_CHASSI: TcxGridDBColumn
          Caption = 'Chassi'
          DataBinding.FieldName = 'VEICULO_CHASSI'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VEICULO_MOTOR: TcxGridDBColumn
          Caption = 'Motor'
          DataBinding.FieldName = 'VEICULO_MOTOR'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VEICULO_RENAVAN: TcxGridDBColumn
          Caption = 'Renavan'
          DataBinding.FieldName = 'VEICULO_RENAVAN'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VEICULO_ANO_MODELO: TcxGridDBColumn
          Caption = 'Ano'
          DataBinding.FieldName = 'VEICULO_ANO_MODELO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VEICULO_CILINDRADA: TcxGridDBColumn
          Caption = 'Cilindrada'
          DataBinding.FieldName = 'VEICULO_CILINDRADA'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VEICULO_HP: TcxGridDBColumn
          Caption = 'HP'
          DataBinding.FieldName = 'VEICULO_HP'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VEICULO_COMBUSTIVEL: TcxGridDBColumn
          Caption = 'Combustivel'
          DataBinding.FieldName = 'VEICULO_COMBUSTIVEL'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VEICULO_KM: TcxGridDBColumn
          Caption = 'KM'
          DataBinding.FieldName = 'VEICULO_KM'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VEICULO_PASSAGEIROS: TcxGridDBColumn
          Caption = 'Passageiros'
          DataBinding.FieldName = 'VEICULO_PASSAGEIROS'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1ATUALIZADO: TcxGridDBColumn
          Caption = 'Atualizado'
          DataBinding.FieldName = 'ATUALIZADO'
          Visible = False
        end
        object GridConsultaDBTableView1FORM: TcxGridDBColumn
          Caption = 'Tela de Origem'
          DataBinding.FieldName = 'FORM'
          Visible = False
        end
        object GridConsultaDBTableView1PESSOA_FORNECEDOR_CODIGO: TcxGridDBColumn
          Caption = 'Cod Responss'#225'vel'
          DataBinding.FieldName = 'PESSOA_FORNECEDOR_CODIGO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1PESSOA_FORNECEDOR_TIPO: TcxGridDBColumn
          Caption = 'Tipo de Responssavel'
          DataBinding.FieldName = 'PESSOA_FORNECEDOR_TIPO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1PESSOA_FORNECEDOR_SEQUENCIA: TcxGridDBColumn
          Caption = 'Sequencia Responss'#225'vel'
          DataBinding.FieldName = 'PESSOA_FORNECEDOR_SEQUENCIA'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1CODPRODUTO_LOTE: TcxGridDBColumn
          Caption = 'Cod. Lote'
          DataBinding.FieldName = 'CODPRODUTO_LOTE'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1COR: TcxGridDBColumn
          DataBinding.FieldName = 'COR'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1AJUSTE_SALDO: TcxGridDBColumn
          Caption = 'Ajuste de Saldo'
          DataBinding.FieldName = 'AJUSTE_SALDO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VALOR_PRAZO: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_PRAZO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1CUSTO_COMPOSICAO: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO_COMPOSICAO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1VALOR_COMPOSICAO: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_COMPOSICAO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1CUSTO_CENTRO_TRABALHO: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO_CENTRO_TRABALHO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1MODULO: TcxGridDBColumn
          Caption = 'M'#243'dulo'
          DataBinding.FieldName = 'Modulo'
        end
        object GridConsultaDBTableView1IS_PENDENTE: TcxGridDBColumn
          DataBinding.FieldName = 'IS_PENDENTE'
        end
      end
    end
  end
  inherited pnlAgrupador: TPanel
    Height = 477
    ExplicitHeight = 477
    inherited tcAgrupador: TdxTileControl
      Height = 475
      OptionsView.GroupMaxRowCount = 400
      ExplicitHeight = 475
      object tcAgrupadorProduto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Produto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
      object tcAgrupadorFornecedor: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Fornecedor'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
      object tcAgrupadorGrupoDeProduto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Grupo de Produto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
      object tcAgrupadorCategoria: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Categoria de Produto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
      object tcAgrupadorTipoDeProduto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 5
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Tipo de produto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
      object tcAgrupadorEntradaSaida: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 6
        Size = tcisLarge
        Text1.AssignedValues = []
        Text1.Value = 'Entrada e Sa'#237'da'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tiAgrupar_DesagruparClick
      end
    end
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlImpressoes: TPanel [5]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44832.420890682870000000
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
    OnCalcFields = ConsultaCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    SQL.Strings = (
      
        'select M.*, P.DESCRICAO,P.UNIDADE, C.DESCRICAO as COR , U.LOGIN ' +
        'as USUARIO, PC.DESCRICAO AS PRODUTO_CATEGORIA, GP.DESCRICAO AS P' +
        'RODUTO_GRUPO'
      'from PRODUTO_MOVIMENTO M'
      'left join PRODUTO P on (M.CODPRODUTO = P.CODIGO) '
      
        'left join PRODUTO_GRUPO GP on (P.CODPRODUTO_GRUPO = GP.CODIGO) a' +
        'nd (GP.CODNF_NATUREZA_OPERACAO = 0)'
      
        'left join PRODUTO_CATEGORIA PC on (P.CODPRODUTO_CATEGORIA = PC.C' +
        'ODIGO)'
      'left join USUARIO U on (M.CODUSUARIO = U.CODIGO) '
      'left join COR C on (M.CODCOR = C.CODIGO)')
    object ConsultaQuantCalculada: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QuantCalculada'
      Calculated = True
    end
    object ConsultaModulo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Modulo'
      Calculated = True
    end
  end
end
