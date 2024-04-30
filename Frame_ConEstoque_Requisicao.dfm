inherited ConsuEstoque_Requisicao: TConsuEstoque_Requisicao
  Width = 1616
  ExplicitWidth = 1616
  inherited pnlFiltros: TPanel [0]
    inherited tcFiltrosPanel: TdxTileControl
      OptionsView.GroupMaxRowCount = 100
      object tcFiltrosPanelItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Pendentes'
        Text2.Align = oaBottomCenter
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcFiltrosPanelItem2: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Atendidas'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
  end
  inherited pnlAgrupador: TPanel [1]
    inherited tcAgrupador: TdxTileControl
      object tcAgrupadorItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Funcion'#225'rio'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcAgrupadorItem1Click
      end
      object tcAgrupadorItem2: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Equipe'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcAgrupadorItem2Click
      end
      object tcAgrupadorItem3: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Produto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcAgrupadorItem3Click
      end
      object tcAgrupadorItem4: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'O.S'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
  end
  inherited pnlIniciar: TPanel [2]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [3]
    Width = 1616
    ExplicitWidth = 1616
    inherited GridConsulta: TcxGrid
      Width = 1336
      TabOrder = 12
      ExplicitWidth = 1336
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnDblClick = GridConsultaDBTableView1DblPocketClick
        OnCellClick = GridConsultaDBTableView1CellClick
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        DataController.Summary.OnAfterSummary = GridConsultaDBTableView1DataControllerSummaryAfterSummary
        OptionsBehavior.ColumnMergedGrouping = True
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        object GridConsultaDBTableView1CODPRODUTO_MOVIMENTO: TcxGridDBColumn
          Caption = 'C'#243'd. da Movimenta'#231#227'o'
          DataBinding.FieldName = 'CODPRODUTO_MOVIMENTO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 105
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'M'#243'dulo'
          DataBinding.FieldName = 'MODULO'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 93
        end
        object GridConsultaDBTableView1MOTIVO: TcxGridDBColumn
          Caption = 'Motivo'
          DataBinding.FieldName = 'MOTIVO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 64
        end
        object GridConsultaDBTableView1DT_EMISSAO: TcxGridDBColumn
          Caption = 'Data Emiss'#227'o'
          DataBinding.FieldName = 'DT_EMISSAO'
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soDescending
          Width = 136
        end
        object GridConsultaDBTableView1USUARIO: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USUARIO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 141
        end
        object GridConsultaDBTableView1FUNCIONARIO: TcxGridDBColumn
          Caption = 'Funcionario'
          DataBinding.FieldName = 'FUNCIONARIO'
          Width = 145
        end
        object GridConsultaDBTableView1CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'digo do Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
          Width = 66
        end
        object GridConsultaDBTableView1PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTO'
          HeaderAlignmentHorz = taCenter
          Width = 239
        end
        object GridConsultaDBTableView1UNIDADE: TcxGridDBColumn
          Caption = 'UN'
          DataBinding.FieldName = 'UNIDADE'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object GridConsultaDBTableView1CENTRO_CUSTO: TcxGridDBColumn
          Caption = 'Centro de Custo'
          DataBinding.FieldName = 'CENTRO_CUSTO'
          Visible = False
          Width = 95
        end
        object GridConsultaDBTableView1QUANT: TcxGridDBColumn
          Caption = 'Quant'
          DataBinding.FieldName = 'QUANT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DisplayFormat = '0.00;-0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object GridConsultaDBTableView1QUANT_PREVISTA: TcxGridDBColumn
          Caption = 'Quant. Prevista'
          DataBinding.FieldName = 'QUANT_PREVISTA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DisplayFormat = ',0.00;-0.00'
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object GridConsultaDBTableView1CUSTO: TcxGridDBColumn
          Caption = 'Custo'
          DataBinding.FieldName = 'CUSTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object GridConsultaDBTableView1EMPRESA: TcxGridDBColumn
          Caption = 'Empresa'
          DataBinding.FieldName = 'EMPRESA'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 47
        end
        object GridConsultaDBTableView1PRODUTO_ESTOQUE_ORIGEM: TcxGridDBColumn
          Caption = 'Setor de estoque de sa'#237'da'
          DataBinding.FieldName = 'PRODUTO_ESTOQUE_ORIGEM'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object GridConsultaDBTableView1PRODUTO_ESTOQUE_LOCAL: TcxGridDBColumn
          Caption = 'Setor de estoque de entrada'
          DataBinding.FieldName = 'PRODUTO_ESTOQUE_LOCAL'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object GridConsultaDBTableView1CODPRODUCAO_OS: TcxGridDBColumn
          Caption = 'Cod. Produc'#227'o'
          DataBinding.FieldName = 'CODPRODUCAO_OS'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 51
        end
        object GridConsultaDBTableView1CODVENDA: TcxGridDBColumn
          Caption = 'C'#243'd. Venda'
          DataBinding.FieldName = 'CODVENDA'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object GridConsultaDBTableView1STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
          Visible = False
          Width = 119
        end
        object GridConsultaDBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn
          Caption = 'C'#243'd Equipe'
          DataBinding.FieldName = 'CODCENTRO_TRABALHO'
          Visible = False
        end
        object GridConsultaDBTableView1EQUIPE: TcxGridDBColumn
          Caption = 'Equipe Requisitante'
          DataBinding.FieldName = 'CENTRO_TRABALHO'
          Visible = False
          Width = 154
        end
        object GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn
          Caption = 'C'#243'd Usuario'
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1COMP: TcxGridDBColumn
          Caption = 'Comp'
          DataBinding.FieldName = 'COMP'
          Visible = False
        end
        object GridConsultaDBTableView1LARG: TcxGridDBColumn
          Caption = 'Larg'
          DataBinding.FieldName = 'LARG'
          Visible = False
        end
        object GridConsultaDBTableView1ESPESSURA: TcxGridDBColumn
          Caption = 'Espessura'
          DataBinding.FieldName = 'ESPESSURA'
          Visible = False
        end
        object GridConsultaDBTableView1QTDADEPECA: TcxGridDBColumn
          Caption = 'Qtd Pe'#231'a'
          DataBinding.FieldName = 'QTDADEPECA'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1MEDIDAS: TcxGridDBColumn
          DataBinding.FieldName = 'MEDIDAS'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
        end
        object GridConsultaDBTableView1TIPO_USO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO_USO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1DT_ESTOQUE_BAIXA: TcxGridDBColumn
          Caption = 'Data Movimento'
          DataBinding.FieldName = 'DT_ESTOQUE_BAIXA'
          Visible = False
        end
        object GridConsultaDBTableView1QUANT_FATURAR: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT_FATURAR'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1ENTRADA_SAIDA: TcxGridDBColumn
          Caption = 'Tipo Movimenta'#231#227'o'
          DataBinding.FieldName = 'TIPO_MOVIMENTACAO'
          Visible = False
        end
        object GridConsultaDBTableView1CORMOTIVO: TcxGridDBColumn
          DataBinding.FieldName = 'CORMOTIVO'
          Visible = False
        end
        object GridConsultaDBTableView1CUSTO_EXTRA: TcxGridDBColumn
          Caption = 'Rendimento'
          DataBinding.FieldName = 'CUSTO_EXTRA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '%,0.00;-%,0.00'
          Visible = False
        end
      end
    end
    inherited GridSubGrid: TcxGrid
      TabOrder = 11
    end
    inherited pnlFlipRotate: TPanel
      Left = 1568
      Width = 48
      TabOrder = 14
      ExplicitLeft = 1568
      ExplicitWidth = 48
    end
    inherited tcAcoes: TdxTileControl
      Width = 1052
      ExplicitWidth = 1052
      object tcEntregarRequisicao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Text1.AssignedValues = []
        Text1.Value = 'Concluir Requisi'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcEntregarRequisicaoClick
      end
      object tcRecusarRequisicao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Text1.AssignedValues = []
        Text1.Value = 'Recusar Requisi'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcRecusarRequisicaoClick
      end
    end
    inherited cbxQuantidadeItens: TcxComboBox
      Left = 1480
      TabOrder = 8
      ExplicitLeft = 1480
    end
    inherited lblQuantidadeItens_Mostrar: TcxLabel
      Left = 1444
      ExplicitLeft = 1444
    end
    inherited lblQuantidadeItens_Registros: TcxLabel
      Left = 1540
      ExplicitLeft = 1540
    end
    inherited Bevel2: TBevel
      Width = 1616
      ExplicitWidth = 1616
    end
    inherited btnDataFiltro: TcxButton
      Left = 1135
      TabOrder = 4
      ExplicitLeft = 1135
    end
    inherited btnMenuOpcoes: TcxButton
      Left = 1589
      TabOrder = 10
      ExplicitLeft = 1589
    end
    inherited btnAgruparFiltro: TcxButton
      Left = 1176
      TabOrder = 5
      ExplicitLeft = 1176
    end
    inherited btnFiltro_Filtro: TcxButton
      Left = 1217
      TabOrder = 6
      ExplicitLeft = 1217
    end
    inherited btnImprimir_Filtro: TcxButton
      Left = 1094
      TabOrder = 3
      ExplicitLeft = 1094
    end
    inherited btnAtualizar: TcxButton
      Left = 1053
      TabOrder = 2
      ExplicitLeft = 1053
    end
    object cxCheckGroup1: TcxCheckGroup [15]
      Left = 1258
      Top = 4
      Alignment = alLeftCenter
      ParentBackground = False
      ParentColor = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Normal'
        end
        item
          Caption = 'Anormal'
        end
        item
          Caption = 'Pendente'
        end>
      Properties.OnEditValueChanged = cxCheckGroup1PropertiesEditValueChanged
      Style.Color = 16505534
      Style.Edges = []
      Style.TextColor = clGray
      Style.TransparentBorder = False
      TabOrder = 1
      Transparent = True
      Height = 32
      Width = 185
    end
    inherited GrpoMostrarRegistros: TdxLayoutGroup
      Index = 7
    end
    inherited libtnDataFiltro: TdxLayoutItem
      Index = 4
    end
    inherited libtnMenuOpcoes: TdxLayoutItem
      Index = 8
    end
    inherited libtnAgruparFiltro: TdxLayoutItem
      Index = 5
    end
    inherited libtnFiltro_Filtro: TdxLayoutItem
      Index = 6
    end
    inherited libtnImprimir_Filtro: TdxLayoutItem
      Index = 3
    end
    inherited libtnAtualizar: TdxLayoutItem
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoTT
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxCheckGroup1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 32
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited pnlImpressoes: TPanel [4]
  end
  inherited pnlFiltroData: TPanel
    Left = 474
    ExplicitLeft = 474
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
      ReportDocument.CreationDate = 44896.665126967590000000
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
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrame_Requisicao_Pocket'
    FormClassConsulta = 'TConsuEstoque_Requisicao'
  end
  inherited QueryDragAndDrop: TFDQuery
    SQL.Strings = (
      'select PR.* from PRODUTO_REQUISICAO PR')
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUTO_REQUISICAO'
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select PR.*, CT.DESCRICAO as CENTRO_TRABALHO, U.USUARIO, E.RAZAO' +
        'SOCIAL as EMPRESA, PRM.COR as CORMOTIVO, PRM.DESCRICAO as MOTIVO' +
        ','
      'P.RAZAOSOCIAL as FUNCIONARIO, CC.DESCRICAO AS CENTRO_CUSTO'
      'from PRODUTO_REQUISICAO PR'
      
        'left join CENTRO_TRABALHO CT on CT.CODIGO = PR.CODCENTRO_TRABALH' +
        'O'
      'left join USUARIO U on U.CODIGO = PR.CODUSUARIO '
      'left join EMPRESA E on E.CODIGO = PR.CODEMPRESA '
      
        'left join PRODUTO_REQUISICAO_MOTIVO PRM on PRM.CODIGO = PR.CODPR' +
        'ODUTO_REQUISICAO_MOTIVO'
      'left join PESSOAS P on P.CODIGO = PR.PESSOA_FUNCIONARIO_CODIGO'
      'left join CENTRO_CUSTO CC on CC.CODIGO = PR.CODCENTRO_CUSTO')
    object ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaCODEMPRESA: TStringField
      FieldName = 'CODEMPRESA'
      Origin = 'CODEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object ConsultaCODPRODUTO_REQUISICAO: TIntegerField
      FieldName = 'CODPRODUTO_REQUISICAO'
      Origin = 'CODPRODUTO_REQUISICAO'
    end
    object ConsultaCODPRODUCAO_OS: TIntegerField
      FieldName = 'CODPRODUCAO_OS'
      Origin = 'CODPRODUCAO_OS'
    end
    object ConsultaCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
      Size = 10
    end
    object ConsultaCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
    end
    object ConsultaMODULO: TStringField
      FieldName = 'MODULO'
      Origin = 'MODULO'
      Size = 300
    end
    object ConsultaQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'QUANT'
    end
    object ConsultaCOMP: TFloatField
      FieldName = 'COMP'
      Origin = 'COMP'
    end
    object ConsultaLARG: TFloatField
      FieldName = 'LARG'
      Origin = 'LARG'
    end
    object ConsultaESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
      Origin = 'ESPESSURA'
    end
    object ConsultaQTDADEPECA: TFloatField
      FieldName = 'QTDADEPECA'
      Origin = 'QTDADEPECA'
    end
    object ConsultaMEDIDAS: TStringField
      FieldName = 'MEDIDAS'
      Origin = 'MEDIDAS'
      Size = 100
    end
    object ConsultaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object ConsultaQUANT_PREVISTA: TFloatField
      FieldName = 'QUANT_PREVISTA'
      Origin = 'QUANT_PREVISTA'
    end
    object ConsultaTIPO_USO: TStringField
      FieldName = 'TIPO_USO'
      Origin = 'TIPO_USO'
    end
    object ConsultaCUSTO_VENDA: TFloatField
      FieldName = 'CUSTO_VENDA'
      Origin = 'CUSTO_VENDA'
    end
    object ConsultaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object ConsultaPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'PESO'
    end
    object ConsultaCUSTO_VENDA_UNITARIO: TFloatField
      FieldName = 'CUSTO_VENDA_UNITARIO'
      Origin = 'CUSTO_VENDA_UNITARIO'
    end
    object ConsultaPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = 'PARENT'
    end
    object ConsultaACABAMENTO: TStringField
      FieldName = 'ACABAMENTO'
      Origin = 'ACABAMENTO'
      Size = 150
    end
    object ConsultaAPROVEITAMENTO: TStringField
      FieldName = 'APROVEITAMENTO'
      Origin = 'APROVEITAMENTO'
    end
    object ConsultaCALC_PACRESC_PRAZO: TFloatField
      FieldName = 'CALC_PACRESC_PRAZO'
      Origin = 'CALC_PACRESC_PRAZO'
    end
    object ConsultaCALC_PCOMPRA_EXTRA: TFloatField
      FieldName = 'CALC_PCOMPRA_EXTRA'
      Origin = 'CALC_PCOMPRA_EXTRA'
    end
    object ConsultaCALC_PDESC_ATACADO: TFloatField
      FieldName = 'CALC_PDESC_ATACADO'
      Origin = 'CALC_PDESC_ATACADO'
    end
    object ConsultaCALC_PDESC_MANUAL: TFloatField
      FieldName = 'CALC_PDESC_MANUAL'
      Origin = 'CALC_PDESC_MANUAL'
    end
    object ConsultaCALC_PLUCRO_DESEJADO: TFloatField
      FieldName = 'CALC_PLUCRO_DESEJADO'
      Origin = 'CALC_PLUCRO_DESEJADO'
    end
    object ConsultaCALC_PMARGEM_CONTRIBUICAO: TFloatField
      FieldName = 'CALC_PMARGEM_CONTRIBUICAO'
      Origin = 'CALC_PMARGEM_CONTRIBUICAO'
    end
    object ConsultaCALC_PMARKUP: TFloatField
      FieldName = 'CALC_PMARKUP'
      Origin = 'CALC_PMARKUP'
    end
    object ConsultaCALC_POUTRO_MANUAL: TFloatField
      FieldName = 'CALC_POUTRO_MANUAL'
      Origin = 'CALC_POUTRO_MANUAL'
    end
    object ConsultaCALC_PVENDA_EXTRA: TFloatField
      FieldName = 'CALC_PVENDA_EXTRA'
      Origin = 'CALC_PVENDA_EXTRA'
    end
    object ConsultaCALC_QANTERIOR_ESTOQUE: TFloatField
      FieldName = 'CALC_QANTERIOR_ESTOQUE'
      Origin = 'CALC_QANTERIOR_ESTOQUE'
    end
    object ConsultaCALC_QPESO_BRUTO: TFloatField
      FieldName = 'CALC_QPESO_BRUTO'
      Origin = 'CALC_QPESO_BRUTO'
    end
    object ConsultaCALC_QPESO_LIQUIDO: TFloatField
      FieldName = 'CALC_QPESO_LIQUIDO'
      Origin = 'CALC_QPESO_LIQUIDO'
    end
    object ConsultaCALC_TIPO_DESCONTO: TStringField
      FieldName = 'CALC_TIPO_DESCONTO'
      Origin = 'CALC_TIPO_DESCONTO'
      Size = 50
    end
    object ConsultaCALC_VALOR_ORIGINAL: TFloatField
      FieldName = 'CALC_VALOR_ORIGINAL'
      Origin = 'CALC_VALOR_ORIGINAL'
    end
    object ConsultaCALC_VANTERIOR_CUSTO: TFloatField
      FieldName = 'CALC_VANTERIOR_CUSTO'
      Origin = 'CALC_VANTERIOR_CUSTO'
    end
    object ConsultaCALC_VATACADO: TFloatField
      FieldName = 'CALC_VATACADO'
      Origin = 'CALC_VATACADO'
    end
    object ConsultaCALC_VCOMPRA_EXTRA: TFloatField
      FieldName = 'CALC_VCOMPRA_EXTRA'
      Origin = 'CALC_VCOMPRA_EXTRA'
    end
    object ConsultaCALC_VCOMPRA_TOTAL: TFloatField
      FieldName = 'CALC_VCOMPRA_TOTAL'
      Origin = 'CALC_VCOMPRA_TOTAL'
    end
    object ConsultaCALC_VDESC_MANUAL: TFloatField
      FieldName = 'CALC_VDESC_MANUAL'
      Origin = 'CALC_VDESC_MANUAL'
    end
    object ConsultaCALC_VENDA_MINIMO_QUANT: TIntegerField
      FieldName = 'CALC_VENDA_MINIMO_QUANT'
      Origin = 'CALC_VENDA_MINIMO_QUANT'
    end
    object ConsultaCALC_VENDA_MINIMO_VALOR: TFloatField
      FieldName = 'CALC_VENDA_MINIMO_VALOR'
      Origin = 'CALC_VENDA_MINIMO_VALOR'
    end
    object ConsultaCALC_VLUCRO: TFloatField
      FieldName = 'CALC_VLUCRO'
      Origin = 'CALC_VLUCRO'
    end
    object ConsultaCALC_VMINIMO_VENDA: TFloatField
      FieldName = 'CALC_VMINIMO_VENDA'
      Origin = 'CALC_VMINIMO_VENDA'
    end
    object ConsultaCALC_VOUTRO_MANUAL: TFloatField
      FieldName = 'CALC_VOUTRO_MANUAL'
      Origin = 'CALC_VOUTRO_MANUAL'
    end
    object ConsultaCALC_VPOR_PECA: TFloatField
      FieldName = 'CALC_VPOR_PECA'
      Origin = 'CALC_VPOR_PECA'
    end
    object ConsultaCALC_VPRAZO: TFloatField
      FieldName = 'CALC_VPRAZO'
      Origin = 'CALC_VPRAZO'
    end
    object ConsultaCALC_VVENDA_CUSTO: TFloatField
      FieldName = 'CALC_VVENDA_CUSTO'
      Origin = 'CALC_VVENDA_CUSTO'
    end
    object ConsultaCALC_VVENDA_CUSTO_MINIMO: TFloatField
      FieldName = 'CALC_VVENDA_CUSTO_MINIMO'
      Origin = 'CALC_VVENDA_CUSTO_MINIMO'
    end
    object ConsultaCALC_VVENDA_CUSTO_TOTAL: TFloatField
      FieldName = 'CALC_VVENDA_CUSTO_TOTAL'
      Origin = 'CALC_VVENDA_CUSTO_TOTAL'
    end
    object ConsultaCALC_VVENDA_EXTRA: TFloatField
      FieldName = 'CALC_VVENDA_EXTRA'
      Origin = 'CALC_VVENDA_EXTRA'
    end
    object ConsultaCALC_VVENDA_TOTAL: TFloatField
      FieldName = 'CALC_VVENDA_TOTAL'
      Origin = 'CALC_VVENDA_TOTAL'
    end
    object ConsultaCODACABAMENTO: TIntegerField
      FieldName = 'CODACABAMENTO'
      Origin = 'CODACABAMENTO'
    end
    object ConsultaCODCOR: TIntegerField
      FieldName = 'CODCOR'
      Origin = 'CODCOR'
    end
    object ConsultaCODFABRICA: TStringField
      FieldName = 'CODFABRICA'
      Origin = 'CODFABRICA'
      Size = 60
    end
    object ConsultaCODIGOEAN: TStringField
      FieldName = 'CODIGOEAN'
      Origin = 'CODIGOEAN'
      Size = 60
    end
    object ConsultaCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
      Origin = 'CODLOCAL'
    end
    object ConsultaCODPRODUTO_GRUPO: TStringField
      FieldName = 'CODPRODUTO_GRUPO'
      Origin = 'CODPRODUTO_GRUPO'
      Size = 15
    end
    object ConsultaCODPRODUTO_LOTE: TIntegerField
      FieldName = 'CODPRODUTO_LOTE'
      Origin = 'CODPRODUTO_LOTE'
    end
    object ConsultaCODPRODUTO_MARCA: TIntegerField
      FieldName = 'CODPRODUTO_MARCA'
      Origin = 'CODPRODUTO_MARCA'
    end
    object ConsultaCODPRODUTO_ORIGEM: TStringField
      FieldName = 'CODPRODUTO_ORIGEM'
      Origin = 'CODPRODUTO_ORIGEM'
      Size = 15
    end
    object ConsultaCODTIPO_IMPRESSAO: TIntegerField
      FieldName = 'CODTIPO_IMPRESSAO'
      Origin = 'CODTIPO_IMPRESSAO'
    end
    object ConsultaCODVENDA_AGRUPADA: TStringField
      FieldName = 'CODVENDA_AGRUPADA'
      Origin = 'CODVENDA_AGRUPADA'
      Size = 10
    end
    object ConsultaCODVENDA_FATURADO: TStringField
      FieldName = 'CODVENDA_FATURADO'
      Origin = 'CODVENDA_FATURADO'
      Size = 10
    end
    object ConsultaCODVENDA_ORIGINAL: TStringField
      FieldName = 'CODVENDA_ORIGINAL'
      Origin = 'CODVENDA_ORIGINAL'
      Size = 10
    end
    object ConsultaCODVENDA_PRODUTO_ORIGINAL: TIntegerField
      FieldName = 'CODVENDA_PRODUTO_ORIGINAL'
      Origin = 'CODVENDA_PRODUTO_ORIGINAL'
    end
    object ConsultaCOMP_FORMULA: TStringField
      FieldName = 'COMP_FORMULA'
      Origin = 'COMP_FORMULA'
      Size = 500
    end
    object ConsultaCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object ConsultaCUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object ConsultaCUSTO_EXTRA: TFloatField
      FieldName = 'CUSTO_EXTRA'
      Origin = 'CUSTO_EXTRA'
    end
    object ConsultaCUSTO_FABR_TOTAL: TFloatField
      FieldName = 'CUSTO_FABR_TOTAL'
      Origin = 'CUSTO_FABR_TOTAL'
    end
    object ConsultaDESCRICAO_NFE: TStringField
      FieldName = 'DESCRICAO_NFE'
      Origin = 'DESCRICAO_NFE'
      Size = 120
    end
    object ConsultaDT_VALOR_ORIGINAL: TSQLTimeStampField
      FieldName = 'DT_VALOR_ORIGINAL'
      Origin = 'DT_VALOR_ORIGINAL'
    end
    object ConsultaESPESSURA_FORMULA: TStringField
      FieldName = 'ESPESSURA_FORMULA'
      Origin = 'ESPESSURA_FORMULA'
      Size = 500
    end
    object ConsultaPRODUTO_ESTOQUE_ORIGEM: TStringField
      FieldName = 'PRODUTO_ESTOQUE_ORIGEM'
      Origin = 'PRODUTO_ESTOQUE_ORIGEM'
    end
    object ConsultaESTOQUE_MAX: TFloatField
      FieldName = 'ESTOQUE_MAX'
      Origin = 'ESTOQUE_MAX'
    end
    object ConsultaESTOQUE_MIN: TFloatField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
    end
    object ConsultaFATURADO: TIntegerField
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
    end
    object ConsultaLARG_FORMULA: TStringField
      FieldName = 'LARG_FORMULA'
      Origin = 'LARG_FORMULA'
      Size = 500
    end
    object ConsultaLOCAL: TStringField
      FieldName = 'LOCAL'
      Origin = 'LOCAL'
      Size = 150
    end
    object ConsultaMARGEM: TFloatField
      FieldName = 'MARGEM'
      Origin = 'MARGEM'
    end
    object ConsultaMETODO_CALCULO_PRECO: TIntegerField
      FieldName = 'METODO_CALCULO_PRECO'
      Origin = 'METODO_CALCULO_PRECO'
    end
    object ConsultaOBSERVACAO_PRODUTO: TMemoField
      FieldName = 'OBSERVACAO_PRODUTO'
      Origin = 'OBSERVACAO_PRODUTO'
      BlobType = ftMemo
    end
    object ConsultaOBS_FATURAMENTO: TStringField
      FieldName = 'OBS_FATURAMENTO'
      Origin = 'OBS_FATURAMENTO'
      Size = 500
    end
    object ConsultaOBS_PRODUCAO: TMemoField
      FieldName = 'OBS_PRODUCAO'
      Origin = 'OBS_PRODUCAO'
      BlobType = ftMemo
    end
    object ConsultaPASSADAS: TIntegerField
      FieldName = 'PASSADAS'
      Origin = 'PASSADAS'
    end
    object ConsultaPATH: TStringField
      FieldName = 'PATH'
      Origin = 'PATH'
      Size = 255
    end
    object ConsultaPDESC: TFloatField
      FieldName = 'PDESC'
      Origin = 'PDESC'
    end
    object ConsultaPESSOA_FORNECEDOR_CODIGO: TStringField
      FieldName = 'PESSOA_FORNECEDOR_CODIGO'
      Origin = 'PESSOA_FORNECEDOR_CODIGO'
      Size = 10
    end
    object ConsultaPESSOA_FORNECEDOR_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_FORNECEDOR_SEQUENCIA'
      Origin = 'PESSOA_FORNECEDOR_SEQUENCIA'
    end
    object ConsultaPESSOA_FORNECEDOR_TIPO: TStringField
      FieldName = 'PESSOA_FORNECEDOR_TIPO'
      Origin = 'PESSOA_FORNECEDOR_TIPO'
      Size = 3
    end
    object ConsultaPODE_FATURAR: TStringField
      FieldName = 'PODE_FATURAR'
      Origin = 'PODE_FATURAR'
      Size = 1
    end
    object ConsultaPODE_PESO_CALCULADO_COMPOSICAO: TStringField
      FieldName = 'PODE_PESO_CALCULADO_COMPOSICAO'
      Origin = 'PODE_PESO_CALCULADO_COMPOSICAO'
      Size = 1
    end
    object ConsultaPODE_RECALCULAR_IMPOSTOS: TStringField
      FieldName = 'PODE_RECALCULAR_IMPOSTOS'
      Origin = 'PODE_RECALCULAR_IMPOSTOS'
      Size = 1
    end
    object ConsultaPODE_RETORNAR_AO_ESTOQUE: TStringField
      FieldName = 'PODE_RETORNAR_AO_ESTOQUE'
      Origin = 'PODE_RETORNAR_AO_ESTOQUE'
      Size = 1
    end
    object ConsultaPOUTRO: TFloatField
      FieldName = 'POUTRO'
      Origin = 'POUTRO'
    end
    object ConsultaPREDMVAST: TFloatField
      FieldName = 'PREDMVAST'
      Origin = 'PREDMVAST'
    end
    object ConsultaPRODUTO_ESTOQUE_LOCAL: TStringField
      FieldName = 'PRODUTO_ESTOQUE_LOCAL'
      Origin = 'PRODUTO_ESTOQUE_LOCAL'
      Size = 15
    end
    object ConsultaPRODUTO_TIPO: TStringField
      FieldName = 'PRODUTO_TIPO'
      Origin = 'PRODUTO_TIPO'
      Size = 15
    end
    object ConsultaQTDADEPECA_FORMULA: TStringField
      FieldName = 'QTDADEPECA_FORMULA'
      Origin = 'QTDADEPECA_FORMULA'
      Size = 500
    end
    object ConsultaRATEIO: TFloatField
      FieldName = 'RATEIO'
      Origin = 'RATEIO'
    end
    object ConsultaSERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
    end
    object ConsultaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
    end
    object ConsultaTEM_ARTE: TStringField
      FieldName = 'TEM_ARTE'
      Origin = 'TEM_ARTE'
      Size = 1
    end
    object ConsultaTEM_COMPOSICAO: TStringField
      FieldName = 'TEM_COMPOSICAO'
      Origin = 'TEM_COMPOSICAO'
      Size = 1
    end
    object ConsultaTEM_FRENTE_VERSO: TStringField
      FieldName = 'TEM_FRENTE_VERSO'
      Origin = 'TEM_FRENTE_VERSO'
      Size = 1
    end
    object ConsultaTEM_INSTALACAO: TStringField
      FieldName = 'TEM_INSTALACAO'
      Origin = 'TEM_INSTALACAO'
      Size = 1
    end
    object ConsultaTEM_LOGO: TStringField
      FieldName = 'TEM_LOGO'
      Origin = 'TEM_LOGO'
      Size = 1
    end
    object ConsultaTEM_MATERIAL_REVISADO: TStringField
      FieldName = 'TEM_MATERIAL_REVISADO'
      Origin = 'TEM_MATERIAL_REVISADO'
      Size = 1
    end
    object ConsultaTEM_PRODUCAO_ACEITA: TStringField
      FieldName = 'TEM_PRODUCAO_ACEITA'
      Origin = 'TEM_PRODUCAO_ACEITA'
      Size = 1
    end
    object ConsultaTEM_PRODUCAO_FINALIZADA: TStringField
      FieldName = 'TEM_PRODUCAO_FINALIZADA'
      Origin = 'TEM_PRODUCAO_FINALIZADA'
      Size = 1
    end
    object ConsultaTEM_PRODUCAO_FINALIZADA_NOENVIO: TStringField
      FieldName = 'TEM_PRODUCAO_FINALIZADA_NOENVIO'
      Origin = 'TEM_PRODUCAO_FINALIZADA_NOENVIO'
      Size = 1
    end
    object ConsultaTEM_REVERSO: TStringField
      FieldName = 'TEM_REVERSO'
      Origin = 'TEM_REVERSO'
      Size = 1
    end
    object ConsultaTEM_TABELA_PRECO_FIXO: TStringField
      FieldName = 'TEM_TABELA_PRECO_FIXO'
      Origin = 'TEM_TABELA_PRECO_FIXO'
      Size = 1
    end
    object ConsultaTEM_TABELA_PRECO_QTDADEPECA: TStringField
      FieldName = 'TEM_TABELA_PRECO_QTDADEPECA'
      Origin = 'TEM_TABELA_PRECO_QTDADEPECA'
      Size = 1
    end
    object ConsultaTIPO_IMPRESSAO: TStringField
      FieldName = 'TIPO_IMPRESSAO'
      Origin = 'TIPO_IMPRESSAO'
      Size = 100
    end
    object ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object ConsultaTOTAL_RELATORIO: TFloatField
      FieldName = 'TOTAL_RELATORIO'
      Origin = 'TOTAL_RELATORIO'
    end
    object ConsultaVALOR_COMPRA: TFloatField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
    end
    object ConsultaVALOR_RELATORIO: TFloatField
      FieldName = 'VALOR_RELATORIO'
      Origin = 'VALOR_RELATORIO'
    end
    object ConsultaVDESC: TFloatField
      FieldName = 'VDESC'
      Origin = 'VDESC'
    end
    object ConsultaVEICULO_ANO_FABRICACAO: TStringField
      FieldName = 'VEICULO_ANO_FABRICACAO'
      Origin = 'VEICULO_ANO_FABRICACAO'
    end
    object ConsultaVEICULO_ANO_MODELO: TStringField
      FieldName = 'VEICULO_ANO_MODELO'
      Origin = 'VEICULO_ANO_MODELO'
      Size = 15
    end
    object ConsultaVEICULO_CHASSI: TStringField
      FieldName = 'VEICULO_CHASSI'
      Origin = 'VEICULO_CHASSI'
    end
    object ConsultaVEICULO_CILINDRADA: TFloatField
      FieldName = 'VEICULO_CILINDRADA'
      Origin = 'VEICULO_CILINDRADA'
    end
    object ConsultaVEICULO_CMOD: TStringField
      FieldName = 'VEICULO_CMOD'
      Origin = 'VEICULO_CMOD'
    end
    object ConsultaVEICULO_COMBUSTIVEL: TStringField
      FieldName = 'VEICULO_COMBUSTIVEL'
      Origin = 'VEICULO_COMBUSTIVEL'
      Size = 10
    end
    object ConsultaVEICULO_CONDICAO_VEICULO: TStringField
      FieldName = 'VEICULO_CONDICAO_VEICULO'
      Origin = 'VEICULO_CONDICAO_VEICULO'
    end
    object ConsultaVEICULO_COR_DENATRAN: TStringField
      FieldName = 'VEICULO_COR_DENATRAN'
      Origin = 'VEICULO_COR_DENATRAN'
      Size = 2
    end
    object ConsultaVEICULO_DIST: TStringField
      FieldName = 'VEICULO_DIST'
      Origin = 'VEICULO_DIST'
    end
    object ConsultaVEICULO_ESPECIE: TStringField
      FieldName = 'VEICULO_ESPECIE'
      Origin = 'VEICULO_ESPECIE'
    end
    object ConsultaVEICULO_HP: TFloatField
      FieldName = 'VEICULO_HP'
      Origin = 'VEICULO_HP'
    end
    object ConsultaVEICULO_KM: TStringField
      FieldName = 'VEICULO_KM'
      Origin = 'VEICULO_KM'
      Size = 7
    end
    object ConsultaVEICULO_MOTOR: TStringField
      FieldName = 'VEICULO_MOTOR'
      Origin = 'VEICULO_MOTOR'
    end
    object ConsultaVEICULO_NUMERO_SERIE: TStringField
      FieldName = 'VEICULO_NUMERO_SERIE'
      Origin = 'VEICULO_NUMERO_SERIE'
    end
    object ConsultaVEICULO_PASSAGEIROS: TFloatField
      FieldName = 'VEICULO_PASSAGEIROS'
      Origin = 'VEICULO_PASSAGEIROS'
    end
    object ConsultaVEICULO_PLACA: TStringField
      FieldName = 'VEICULO_PLACA'
      Origin = 'VEICULO_PLACA'
      Size = 7
    end
    object ConsultaVEICULO_RENAVAN: TStringField
      FieldName = 'VEICULO_RENAVAN'
      Origin = 'VEICULO_RENAVAN'
      Size = 15
    end
    object ConsultaVEICULO_TIPO: TStringField
      FieldName = 'VEICULO_TIPO'
      Origin = 'VEICULO_TIPO'
    end
    object ConsultaVOUTRO: TFloatField
      FieldName = 'VOUTRO'
      Origin = 'VOUTRO'
    end
    object ConsultaCALC_VUNITARIO_DESC: TFloatField
      FieldName = 'CALC_VUNITARIO_DESC'
      Origin = 'CALC_VUNITARIO_DESC'
    end
    object ConsultaCALC_VUNITARIO_OUTRO: TFloatField
      FieldName = 'CALC_VUNITARIO_OUTRO'
      Origin = 'CALC_VUNITARIO_OUTRO'
    end
    object ConsultaCALC_VUNITARIO_FRETE: TFloatField
      FieldName = 'CALC_VUNITARIO_FRETE'
      Origin = 'CALC_VUNITARIO_FRETE'
    end
    object ConsultaCALC_VUNITARIO_LUCRO_DESEJADO: TFloatField
      FieldName = 'CALC_VUNITARIO_LUCRO_DESEJADO'
      Origin = 'CALC_VUNITARIO_LUCRO_DESEJADO'
    end
    object ConsultaDT_ESTOQUE_BAIXA: TSQLTimeStampField
      FieldName = 'DT_ESTOQUE_BAIXA'
      Origin = 'DT_ESTOQUE_BAIXA'
    end
    object ConsultaESTOQUE_BAIXADO: TStringField
      FieldName = 'ESTOQUE_BAIXADO'
      Origin = 'ESTOQUE_BAIXADO'
      Size = 1
    end
    object ConsultaTEMPO_ESTIMADO: TFloatField
      FieldName = 'TEMPO_ESTIMADO'
      Origin = 'TEMPO_ESTIMADO'
    end
    object ConsultaCODPRODUTO_CATEGORIA: TStringField
      FieldName = 'CODPRODUTO_CATEGORIA'
      Origin = 'CODPRODUTO_CATEGORIA'
      Size = 15
    end
    object ConsultaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 100
    end
    object ConsultaCODCENTRO_TRABALHO: TIntegerField
      FieldName = 'CODCENTRO_TRABALHO'
      Origin = 'CODCENTRO_TRABALHO'
    end
    object ConsultaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'CODUSUARIO'
    end
    object ConsultaDT_EMISSAO: TSQLTimeStampField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object ConsultaPODE_ALTERAR_ESTOQUE: TStringField
      FieldName = 'PODE_ALTERAR_ESTOQUE'
      Origin = 'PODE_ALTERAR_ESTOQUE'
      Size = 1
    end
    object ConsultaPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 50
    end
    object ConsultaQUANT_FATURAR: TSingleField
      FieldName = 'QUANT_FATURAR'
      Origin = 'QUANT_FATURAR'
    end
    object ConsultaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 500
    end
    object ConsultaCODVENDA_PRODUTO: TIntegerField
      FieldName = 'CODVENDA_PRODUTO'
      Origin = 'CODVENDA_PRODUTO'
    end
    object ConsultaTEM_DIVERGENCIA: TStringField
      FieldName = 'TEM_DIVERGENCIA'
      Origin = 'TEM_DIVERGENCIA'
      Size = 1
    end
    object ConsultaPROTOCOLO_PRINCIPAL: TStringField
      FieldName = 'PROTOCOLO_PRINCIPAL'
      Origin = 'PROTOCOLO_PRINCIPAL'
      Size = 50
    end
    object ConsultaPESSOA_FUNCIONARIO_CODIGO: TStringField
      FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
      Origin = 'PESSOA_FUNCIONARIO_CODIGO'
      Size = 10
    end
    object ConsultaPROTOCOLO_BAIXA: TStringField
      FieldName = 'PROTOCOLO_BAIXA'
      Origin = 'PROTOCOLO_BAIXA'
      Size = 50
    end
    object ConsultaCODPRODUTO_MOVIMENTO: TStringField
      FieldName = 'CODPRODUTO_MOVIMENTO'
      Origin = 'CODPRODUTO_MOVIMENTO'
      Size = 100
    end
    object ConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 50
    end
    object ConsultaESTOQUE_LOCAL_ORIGEM: TStringField
      FieldName = 'ESTOQUE_LOCAL_ORIGEM'
      Origin = 'ESTOQUE_LOCAL_ORIGEM'
    end
    object ConsultaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 300
    end
    object ConsultaCODUSUARIO_BAIXA: TIntegerField
      FieldName = 'CODUSUARIO_BAIXA'
      Origin = 'CODUSUARIO_BAIXA'
    end
    object ConsultaCODCENTRO_CUSTO: TIntegerField
      FieldName = 'CODCENTRO_CUSTO'
      Origin = 'CODCENTRO_CUSTO'
    end
    object ConsultaTIPO_MOVIMENTACAO: TStringField
      FieldName = 'TIPO_MOVIMENTACAO'
      Origin = 'TIPO_MOVIMENTACAO'
      Size = 1
    end
    object ConsultaCODNF_ENTRADA: TStringField
      FieldName = 'CODNF_ENTRADA'
      Origin = 'CODNF_ENTRADA'
      Size = 10
    end
    object ConsultaCODPRODUTO_REQUISICAO_MOTIVO: TIntegerField
      FieldName = 'CODPRODUTO_REQUISICAO_MOTIVO'
      Origin = 'CODPRODUTO_REQUISICAO_MOTIVO'
    end
    object ConsultaCOMPETENCIA: TStringField
      FieldName = 'COMPETENCIA'
      Origin = 'COMPETENCIA'
      Size = 7
    end
    object ConsultaCENTRO_TRABALHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CENTRO_TRABALHO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object ConsultaEMPRESA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaCORMOTIVO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CORMOTIVO'
      Origin = 'COR'
      ProviderFlags = []
    end
    object ConsultaMOTIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaFUNCIONARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FUNCIONARIO'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaCENTRO_CUSTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CENTRO_CUSTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 150
    end
  end
  object Pendencias: TFDQuery
    AggregatesActive = True
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evMode, evItems, evRecsMax, evRowsetSize, evRecordCountMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDynamic
    FetchOptions.RowsetSize = 100
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvCmdExecMode, rvStoreItems]
    ResourceOptions.CmdExecMode = amAsync
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select count(pr.CODIGO) as QUANTIDADE from produto_requisicao pr'
      'where pr.status = '#39'PENDENTE'#39' and ATIVO = '#39'S'#39)
    Left = 267
    Top = 361
    object AggregateField1: TAggregateField
      FieldName = 'MinData'
      Active = True
      DisplayName = ''
    end
    object AggregateField2: TAggregateField
      FieldName = 'MaxData'
      Active = True
      DisplayName = ''
    end
  end
end
