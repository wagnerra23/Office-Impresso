inherited Frame_Requisicao_Pocket: TFrame_Requisicao_Pocket
  Width = 588
  Height = 617
  ExplicitWidth = 588
  ExplicitHeight = 617
  inherited MainLayout: TdxLayoutControl
    Width = 588
    Height = 550
    ExplicitWidth = 588
    ExplicitHeight = 550
    inherited edtCodigo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      TabOrder = 27
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 111
      Top = 186
      TabOrder = 13
      ExplicitLeft = 111
      ExplicitTop = 186
      ExplicitWidth = 121
      Width = 121
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 10000
      Top = 10000
      TabOrder = 28
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 406
      Width = 406
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 22
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 23
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 10000
      Top = 10000
      TabOrder = 32
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    object cbxEquipe: TcxDBLookupComboBox [6]
      Left = 111
      Top = 151
      DataBinding.DataField = 'CODCENTRO_TRABALHO'
      DataBinding.DataSource = DS
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cbxLocalEstoqueDestino: TcxDBLookupComboBox [7]
      Left = 460
      Top = 129
      AutoSize = False
      DataBinding.DataField = 'PRODUTO_ESTOQUE_LOCAL'
      DataBinding.DataSource = DS
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 11
      Height = 21
      Width = 125
    end
    object cbxLocalEstoqueOrigem: TcxDBLookupComboBox [8]
      Left = 111
      Top = 129
      AutoSize = False
      DataBinding.DataField = 'PRODUTO_ESTOQUE_ORIGEM'
      DataBinding.DataSource = DS
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 9
      Height = 21
      Width = 121
    end
    object edtQuantPrevista: TcxDBCurrencyEdit [9]
      Left = 111
      Top = 56
      AutoSize = False
      DataBinding.DataField = 'QUANT_PREVISTA'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 2
      Height = 21
      Width = 121
    end
    object edtCodUsuario: TcxDBTextEdit [10]
      Left = 111
      Top = 208
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'CODUSUARIO'
      DataBinding.DataSource = DS
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 14
      Height = 21
      Width = 62
    end
    object edtStatus: TcxDBTextEdit [11]
      Left = 438
      Top = 208
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'STATUS'
      DataBinding.DataSource = DS
      Properties.ReadOnly = True
      Properties.OnChange = edtStatusPropertiesChange
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 16
      Height = 21
      Width = 125
    end
    object lblUsuario: TLabel [12]
      Left = 174
      Top = 208
      Width = 159
      Height = 21
      AutoSize = False
      Color = 16505534
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object edtDT_Emissao: TcxDBTextEdit [13]
      Left = 438
      Top = 186
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DT_EMISSAO'
      DataBinding.DataSource = DS
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 15
      Height = 21
      Width = 125
    end
    object edtProdutoÎProduto: TcxDBButtonEdit [14]
      Tag = 4
      Left = 111
      Top = 34
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.OnEditValueChanged = edtProdutoÎProdutoPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 1
      Height = 21
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo [15]
      Left = 111
      Top = 237
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 17
      Height = 55
      Width = 474
    end
    object cxDBTextEdit2: TcxDBTextEdit [16]
      Left = 10000
      Top = 10000
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'CODUSUARIO'
      DataBinding.DataSource = DS
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 29
      Visible = False
      Height = 21
      Width = 62
    end
    object cxDBTextEdit3: TcxDBTextEdit [17]
      Left = 10000
      Top = 10000
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DT_ESTOQUE_BAIXA'
      DataBinding.DataSource = DS
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 30
      Visible = False
      Height = 21
      Width = 125
    end
    object Label1: TLabel [18]
      Left = 10000
      Top = 10000
      Width = 159
      Height = 21
      AutoSize = False
      Color = 16505534
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [19]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'QUANT_PREVISTA'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Style.HotTrack = False
      TabOrder = 31
      Visible = False
      Height = 21
      Width = 145
    end
    object cxDBComboBox1: TcxDBComboBox [20]
      Left = 111
      Top = 10
      DataBinding.DataField = 'MODULO'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'VENDA'
        'PRODUCAO'
        'COMPRA'
        'ESTOQUE'
        ''
        ''
        ''
        '')
      Style.HotTrack = False
      TabOrder = 0
      Width = 474
    end
    object EdtVendaÎVenda: TcxDBButtonEdit [21]
      Left = 273
      Top = 307
      AutoSize = False
      DataBinding.DataField = 'CODVENDA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 134
    end
    object cxbFuncionario: TcxDBLookupComboBox [22]
      Left = 460
      Top = 151
      AutoSize = False
      DataBinding.DataField = 'PESSOA_FUNCIONARIO_CODIGO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ListColumns = <>
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Height = 21
      Width = 125
    end
    object cxGrid1: TcxGrid [23]
      Left = 3
      Top = 343
      Width = 582
      Height = 200
      TabOrder = 21
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSDetalheRequisicao
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1CODPRODUTO_REQUISICAO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_REQUISICAO'
          Visible = False
        end
        object cxGrid1DBTableView1CODVENDA: TcxGridDBColumn
          Caption = 'C'#243'd Venda'
          DataBinding.FieldName = 'CODVENDA'
          Visible = False
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'M'#243'dulo'
          DataBinding.FieldName = 'MODULO'
          Width = 79
        end
        object cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'd. Produto'
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
          Width = 122
        end
        object cxGrid1DBTableView1PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTO'
          Width = 173
        end
        object cxGrid1DBTableView1UNIDADE: TcxGridDBColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'UNIDADE'
          Width = 46
        end
        object cxGrid1DBTableView1QUANT: TcxGridDBColumn
          Caption = 'Quant'
          DataBinding.FieldName = 'QUANT'
          Width = 40
        end
        object cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
        end
        object cxGrid1DBTableView1QUANT_PREVISTA: TcxGridDBColumn
          Caption = 'Quant Prevista'
          DataBinding.FieldName = 'QUANT_PREVISTA'
          Visible = False
        end
        object cxGrid1DBTableView1CUSTO_VENDA: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO_VENDA'
          Visible = False
        end
        object cxGrid1DBTableView1VALOR: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR'
          Visible = False
        end
        object cxGrid1DBTableView1CUSTO: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTO'
          Visible = False
        end
        object cxGrid1DBTableView1PRODUTO_ESTOQUE_ORIGEM: TcxGridDBColumn
          Caption = 'Local Origem'
          DataBinding.FieldName = 'PRODUTO_ESTOQUE_ORIGEM'
          Visible = False
        end
        object cxGrid1DBTableView1PRODUTO_ESTOQUE_LOCAL: TcxGridDBColumn
          Caption = 'Local Estoque'
          DataBinding.FieldName = 'PRODUTO_ESTOQUE_LOCAL'
          Visible = False
        end
        object cxGrid1DBTableView1PRODUTO_TIPO: TcxGridDBColumn
          Caption = 'Tipo Produto'
          DataBinding.FieldName = 'PRODUTO_TIPO'
          Visible = False
        end
        object cxGrid1DBTableView1VALOR_COMPRA: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_COMPRA'
          Visible = False
        end
        object cxGrid1DBTableView1DT_ESTOQUE_BAIXA: TcxGridDBColumn
          Caption = 'Data Conclu'#237'do'
          DataBinding.FieldName = 'DT_ESTOQUE_BAIXA'
          Width = 81
        end
        object cxGrid1DBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn
          DataBinding.FieldName = 'CODCENTRO_TRABALHO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1DT_EMISSAO: TcxGridDBColumn
          Caption = 'Data Emiss'#227'o'
          DataBinding.FieldName = 'DT_EMISSAO'
          Visible = False
        end
        object cxGrid1DBTableView1PROTOCOLO: TcxGridDBColumn
          DataBinding.FieldName = 'PROTOCOLO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
          Visible = False
        end
        object cxGrid1DBTableView1PROTOCOLO_PRINCIPAL: TcxGridDBColumn
          DataBinding.FieldName = 'PROTOCOLO_PRINCIPAL'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1PROTOCOLO_BAIXA: TcxGridDBColumn
          DataBinding.FieldName = 'PROTOCOLO_BAIXA'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1CODPRODUTO_MOVIMENTO: TcxGridDBColumn
          Caption = 'C'#243'd Movimenta'#231#227'o'
          DataBinding.FieldName = 'CODPRODUTO_MOVIMENTO'
          Visible = False
        end
        object cxGrid1DBTableView1STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
        end
        object cxGrid1DBTableView1CODUSUARIO_BAIXA: TcxGridDBColumn
          DataBinding.FieldName = 'CODUSUARIO_BAIXA'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1CODCENTRO_CUSTO: TcxGridDBColumn
          Caption = 'C'#243'd. Centro Custo'
          DataBinding.FieldName = 'CODCENTRO_CUSTO'
          Visible = False
        end
        object cxGrid1DBTableView1EQUIPE: TcxGridDBColumn
          Caption = 'Equipe'
          DataBinding.FieldName = 'EQUIPE'
          Visible = False
        end
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USUARIO'
        end
        object cxGrid1DBTableView1EMPRESA: TcxGridDBColumn
          Caption = 'Empresa'
          DataBinding.FieldName = 'EMPRESA'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object lblProdutoÎProdutoÎDESCRICAO: TcxLabel [24]
      Left = 233
      Top = 34
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 20
      Width = 303
      AnchorY = 44
    end
    object edtQuant: TcxDBCurrencyEdit [25]
      Left = 438
      Top = 56
      AutoSize = False
      DataBinding.DataField = 'QUANT'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 8
      Height = 21
      Width = 124
    end
    object EdtProducaoÎProducao: TcxDBButtonEdit [26]
      Left = 138
      Top = 307
      AutoSize = False
      DataBinding.DataField = 'CODPRODUCAO_OS'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 19
      Height = 21
      Width = 134
    end
    object EdtNF_EntradaÎNF_Entrada: TcxDBButtonEdit [27]
      Left = 3
      Top = 307
      AutoSize = False
      DataBinding.DataField = 'CODNF_ENTRADA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 18
      Height = 21
      Width = 134
    end
    object lblProdutoÎProdutoÎUNIDADE: TcxLabel [28]
      Left = 537
      Top = 34
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 25
      AnchorY = 45
    end
    object cbxTipo_Movimentacao: TcxDBComboBox [29]
      Left = 111
      Top = 78
      DataBinding.DataField = 'TIPO_MOVIMENTACAO'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'E'
        'S')
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object edtCentroCustoÎCENTRO_CUSTO: TcxDBButtonEdit [30]
      Tag = 4
      Left = 111
      Top = 100
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'CODCENTRO_CUSTO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.OnEditValueChanged = edtProdutoÎProdutoPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Height = 21
      Width = 121
    end
    object edtCentroCustoÎCENTRO_CUSTOÎDESCRICAO: TcxLabel [31]
      Left = 233
      Top = 101
      AutoSize = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 20
      Width = 303
      AnchorY = 111
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      LayoutDirection = ldVertical
      Index = 0
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited LiedtCodigo: TdxLayoutItem
      Parent = nil
      Index = -1
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = #218'ltima Altera'#231#227'o:'
      CaptionOptions.Layout = clLeft
      ControlOptions.OriginalWidth = 121
      Index = 0
    end
    inherited LiedtDescricao: TdxLayoutItem
      Parent = nil
      CaptionOptions.Text = 'Descri'#231#227'o:'
      CaptionOptions.Layout = clLeft
      Index = -1
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Index = 1
    end
    inherited LicbxAtivo: TdxLayoutItem
      Parent = nil
      AlignVert = avClient
      CaptionOptions.Layout = clLeft
      Index = -1
    end
    inherited liSeparadorFrameBase: TdxLayoutSeparatorItem
      Parent = GrupoCabecalho
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'Equipe Requisitante:'
      Control = cbxEquipe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = GrupoProduto
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahRight
      Visible = False
      CaptionOptions.Text = 'Local Estoque Destino:'
      Control = cbxLocalEstoqueDestino
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Local Estoque Origem:'
      Control = cbxLocalEstoqueOrigem
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Quantidade Prev.:'
      Control = edtQuantPrevista
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Separator'
      Index = 5
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Usu'#225'rio respons'#225'vel:'
      Control = edtCodUsuario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Status:'
      Control = edtStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = lblUsuario
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 159
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      CaptionOptions.Text = 'Data do Lan'#231'amento:'
      Control = edtDT_Emissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Separator'
      Index = 7
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Material:'
      Control = edtProdutoÎProduto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoObservacao
      CaptionOptions.Text = 'Observ/Motivo:'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 55
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Usu'#225'rio Baixou'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem15: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'Data Baixa Estoque:'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem16: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = Label1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 159
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem17: TdxLayoutItem
      AlignVert = avClient
      CaptionOptions.Text = 'Quantidade Baixada'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'M'#243'dulo Requisitante:'
      Control = cxDBComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Venda'
      CaptionOptions.Layout = clTop
      Control = EdtVendaÎVenda
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahRight
      CaptionOptions.Text = 'Solicitante:'
      Control = cxbFuncionario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoProduto: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoDestino: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = GrupoDestino
      Index = 0
    end
    object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
      Parent = GrupoDestino
      AlignHorz = ahRight
      Index = 1
    end
    object GrupoStatus: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = GrupoStatus
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup4
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = GrupoStatus
      Index = 1
    end
    object GrupoObservacao: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 8
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Requisi'#231#245'es Relacionadas'
      CaptionOptions.Layout = clTop
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup13
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = lblProdutoÎProdutoÎDESCRICAO
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 303
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      CaptionOptions.Text = 'Quantidade Utilizada:'
      Control = edtQuant
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 9
    end
    object liEdtProducaoÎProducao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Produ'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = EdtProducaoÎProducao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liEdtCompraÎCompra: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Compra'
      CaptionOptions.Layout = clTop
      Control = EdtNF_EntradaÎNF_Entrada
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup13
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = lblProdutoÎProdutoÎUNIDADE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoProduto
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      CaptionOptions.Text = 'Tipo Movimenta'#231#227'o'
      Control = cbxTipo_Movimentacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      Index = 1
    end
    object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Centro de Custo'
      Control = edtCentroCustoÎCENTRO_CUSTO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = edtCentroCustoÎCENTRO_CUSTOÎDESCRICAO
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 303
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 597
    Width = 588
    ExplicitTop = 597
    ExplicitWidth = 588
  end
  inherited pnlMenuCadastro: TPanel
    Width = 588
    ExplicitWidth = 588
    inherited tcCadastro: TdxTileControl
      Width = 134
      ExplicitWidth = 134
      object tcCadastroGroup1: TdxTileControlGroup [1]
        Index = 1
      end
      object tcCadastroItem1: TdxTileControlItem
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000EC400000EC401952B0E1B00000409494441545885
          BDD77DC8DD631CC7F1D76EB7254992242494670D2524F2C392A7440A6D9E873F
          58169287B57C96341277A4CC504663AD99C73C254ECC28651EF230E6216A6569
          494B6B6EF2C7759D39F771CE7D9F7B96EF5FE7FC7ED7F7FABEAFEFF5BD3EDFEB
          C736B0243B2619DA1ADFAD72EA6123F83CC9A5498627E338E5BF464E72385663
          29CEC606DC8327926C9EC87FBB248B9BA6D9D434CDDA56AB356980A66916E3AB
          2417344DF330B6C3ED98DD34CD9F4DD37CD66AB5FEE8E73F8451BC8A77939C30
          99E0494EC329B8B9FEFF2DC9DDD80FF7D6E7DF27B935C9CEBDE69892E44A650F
          57E062BC81B9493E9E20F8B092FAB792CCE933662A2EC72DD8050FE181241B3A
          010EC41AEC5507DD8973B00C772459DB63E221DC88B93820C92F03C0CEC06DD8
          138B309264DD9424F033AE4BB2BC3A1C830538018F55A84D988EB3703AF6C0D7
          B870A26C75815F8079D81F0F4EA92F9EC38FDDA94C321D77E1704CC5EF78192F
          E171ACC3BE7812F392AC1B106407FC84456D1D780FC7F718F8268EC52575B5F0
          7985D8AC14D9C915704D92F949761A806176F55FD0065889237B39279164058E
          C01C5C8D6FB1537DBFB242CE528A784D92ABFA296392DD95DA999B64637BD047
          95E8B47EC84946933C8183946DD9A0EC651B72190EC17D8A10ADAEC7B4DBEEC4
          5A65DBFE51C224DF2885B15CA9FEAFFAC1D4F1A7E0756C5F0BB9F3DDAE15EE5A
          B4704B928F931C890F7172CDDC985E308485D8199F25599C64FF7118D6635839
          BADD001B92DC80C3B0111F26598247B0BC1DBC1B6018EF27390327616F7C99E4
          D124FBF400688BC9AEFD08AB86CC523465068E56B4604CD0CEDF9BABE32A9C9A
          A451F66C4D92C7B0A0E3A875027CD7157858D18ACB9406B55E393967E2C7F100
          46BB266AE1C424A757906F922CC43D49D627F9BD330349A6D5A0339453B24211
          AE9672CCCFECCE5227C010FEEA1E50277E2DC96B3817F3714D9287948C1D9AE4
          605C8169784749F3F2241B3BE6D854638C89D39D819E007502783EC98B8A9CDE
          A114E088B2058B715E921FFA4CD1BE1B8CD1878132D005F21796D6BEF13E3EC0
          9CFA7C3C6B6FEF965ADB425357376E067A808C2ABDE1A7018277036CB16D7127
          1C9D7808FE595C5F802155DF276983666DC20CBC82A7928C24F997BA6D0380FE
          19A8CDE47CE5CC4E57CEFBEC4CF28A3D814D5C03B5FF1FA5349279F8A48AD078
          36D90C4CED7CF8AF15D6EA5E9864698578A182DD9CE48B1E138F5BC849F6C545
          98D90BB66F8A93FC8A9B923CAC5CB1572759A4B4EA761F682B5BB7EF6E8A58CD
          C471F85411AA6549C6F48281BF8C6AFF1F51BAE47CA575BF8D6793DC9F644745
          AA672A75B40E4F63499FCC4D0EA0420CE14AA531FDA6DC1D56298274AE72735E
          8667B06A1081DAAA6FC394AF9CB9B85EA9EE17B1046FD41AFA7F2CC99E03DE82
          FBDADFC913A3F9927792700000000049454E44AE426082}
        GroupIndex = 1
        IndexInGroup = 0
        Size = tcisLarge
        Style.GradientBeginColor = clWhite
        Style.GradientEndColor = clWhite
        Text1.AssignedValues = []
        Text1.Value = ' '
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcCadastroItem1Click
      end
    end
    inherited dxTileControl1: TdxTileControl
      Left = 423
      ExplicitLeft = 423
    end
    inherited tcConfig: TdxTileControl
      Left = 423
      ExplicitLeft = 423
    end
    inherited dxTileControl2: TdxTileControl
      Left = 537
      ExplicitLeft = 537
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 12
    FormClassCadastro = 'TFrmAlmoxarifado_Requisicao_Pocket'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * from produto_requisicao pr'
      'where (PR.CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUTO_REQUISICAO'
  end
  inherited UCHist_Seguidor: TUCHist_DataSet
    CampoPK1 = 'CODIGO'
    CampoPK2 = ''
    CampoPK3 = ''
    DS = DS
    Tabela = 'PRODUTO_REQUISICAO'
  end
  object DetalheRequisicao: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO_REQUISICAO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize, evCache]
    FetchOptions.RowsetSize = 10000
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select PR.*, CT.DESCRICAO as EQUIPE, U.USUARIO, E.RAZAOSOCIAL as' +
        ' EMPRESA'
      'from PRODUTO_REQUISICAO PR'
      
        'left join CENTRO_TRABALHO CT on CT.CODIGO = PR.CODCENTRO_TRABALH' +
        'O'
      'left join USUARIO U on U.CODIGO = PR.CODUSUARIO '
      'left join EMPRESA E on E.CODIGO = PR.CODEMPRESA  '
      'where CODPRODUTO_REQUISICAO = :CODIGO')
    Left = 312
    Top = 128
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
  end
  object DSDetalheRequisicao: TDataSource
    DataSet = DetalheRequisicao
    Left = 340
    Top = 128
  end
  object Produto: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODPRODUTO'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize, evCache]
    FetchOptions.RowsetSize = 10000
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select P.*'
      'from PRODUTO P  '
      'where CODIGO = :CODPRODUTO')
    Left = 312
    Top = 156
    ParamData = <
      item
        Name = 'CODPRODUTO'
        ParamType = ptInput
      end>
  end
  object DSProduto: TDataSource
    DataSet = Produto
    Left = 340
    Top = 156
  end
end
