inherited FrmProduto_Movimento: TFrmProduto_Movimento
  Caption = 'Cadastro de Movimento de Estoque'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 748
      TabOrder = 24
      ExplicitLeft = 748
      ExplicitWidth = 127
      Width = 127
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 602
      Top = 62
      DataBinding.DataField = 'QUANT'
      TabOrder = 21
      ExplicitLeft = 602
      ExplicitTop = 62
      ExplicitWidth = 47
      Width = 47
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 34
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 33
    end
    inherited btnMenuConfig: TcxButton
      Left = 947
      TabOrder = 35
      ExplicitLeft = 947
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 32
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 704
      Top = 62
      TabOrder = 23
      ExplicitLeft = 704
      ExplicitTop = 62
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Movimento de Estoque'
    end
    object lblProdutoÎProdutoÎUNIDADE: TcxLabel [25]
      Left = 568
      Top = 61
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Height = 22
      Width = 33
    end
    object cbxTipo_Movimento: TcxDBComboBox [26]
      Left = 650
      Top = 62
      DataBinding.DataField = 'TIPO_MOVIMENTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownRows = 15
      Properties.Items.Strings = (
        'E'
        'S')
      Properties.Sorted = True
      Style.HotTrack = False
      TabOrder = 22
      Width = 53
    end
    object edtProdutoÎProduto: TcxDBButtonEdit [27]
      Left = 56
      Top = 61
      Hint = 'F2 - Consulta / Cadastro'
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Properties.OnEditValueChanged = edtProdutoÎProdutoPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 18
      Height = 20
      Width = 85
    end
    object lblProdutoÎProdutoÎDESCRICAO: TcxLabel [28]
      Left = 142
      Top = 61
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Height = 22
      Width = 425
    end
    object edtObservacao: TcxDBTextEdit [29]
      Left = 3
      Top = 98
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Properties.CharCase = ecUpperCase
      Style.HotTrack = False
      TabOrder = 25
      Width = 528
    end
    object edtData: TcxDBDateEdit [30]
      Left = 654
      Top = 98
      Margins.Top = 0
      TabStop = False
      DataBinding.DataField = 'DATA'
      DataBinding.DataSource = DS
      Properties.Kind = ckDateTime
      Style.HotTrack = False
      TabOrder = 27
      Width = 135
    end
    object edtEstoqueAtual: TcxCurrencyEdit [31]
      Left = 790
      Top = 98
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 28
      Width = 85
    end
    object cbxProduto_Estoque_Local: TcxDBComboBox [32]
      Left = 532
      Top = 98
      DataBinding.DataField = 'PRODUTO_ESTOQUE_LOCAL'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 26
      Width = 121
    end
    object edtLoteÎProduto_Lote: TcxDBButtonEdit [33]
      Left = 3
      Top = 134
      Hint = 'F2 - Consulta / Cadastro'
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO_LOTE'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Style.HotTrack = False
      TabOrder = 29
      Height = 20
      Width = 85
    end
    object lblLoteÎProduto_LoteÎREFERENCIA: TcxLabel [34]
      Left = 89
      Top = 134
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Height = 22
      Width = 129
    end
    object lblLoteÎProduto_LoteÎDESCRICAO: TcxLabel [35]
      Left = 219
      Top = 134
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Height = 22
      Width = 656
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 6
    end
    inherited LiBtnAlterar: TdxLayoutItem
      Visible = False
    end
    inherited LiBtnExcluir: TdxLayoutItem
      Visible = False
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      ControlOptions.OriginalWidth = 127
      Index = 7
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'Quant'
      ControlOptions.OriginalWidth = 47
      Index = 4
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Index = 5
    end
    inherited LicbxAtivo: TdxLayoutItem
      AlignVert = avBottom
      Index = 6
    end
    object lilblProdutoÎProdutoÎUNIDADE: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'UN'
      CaptionOptions.Layout = clTop
      Control = lblProdutoÎProdutoÎUNIDADE
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object licbxTipo_Movimento: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'E/S'
      CaptionOptions.Layout = clTop
      Control = cbxTipo_Movimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtProdutoÎProduto: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avTop
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = edtProdutoÎProduto
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lilblProdutoÎProdutoÎDESCRICAO: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblProdutoÎProdutoÎDESCRICAO
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 483
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtObservacao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtObservacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 486
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object liedtData: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Data Movimenta'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtData
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 135
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtEstoqueAtual: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Estoque Atual'
      CaptionOptions.Layout = clTop
      Control = edtEstoqueAtual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object licbxProduto_Estoque_Local: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Local Estoque'
      CaptionOptions.Layout = clTop
      Control = cbxProduto_Estoque_Local
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtLoteÎProduto_Lote: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Codigo'
      CaptionOptions.Layout = clTop
      Control = edtLoteÎProduto_Lote
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lilblLoteÎProduto_LoteÎREFERENCIA: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Lote'
      CaptionOptions.Layout = clTop
      Control = lblLoteÎProduto_LoteÎREFERENCIA
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = GrupoMain
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object lilblLoteÎProduto_LoteÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = lblLoteÎProduto_LoteÎDESCRICAO
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited DS: TDataSource
    AutoEdit = False
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmProduto_Movimento'
    FormClassConsulta = 'TConsuProduto_Movimento'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select M.*'
      '    ,P.DESCRICAO as PRODUTO, C.DESCRICAO as COR '
      'from PRODUTO_MOVIMENTO M'
      
        'left join PRODUTO P on (M.CODPRODUTO = P.CODIGO) and (CODEMPRESA' +
        ' = :Emp)'
      'left join COR C on (M.CODCOR = C.CODIGO)'
      'where (M.CODIGO = :Codigo)and(CODEMPRESA = :CodEmpresa)')
    ParamData = <
      item
        Name = 'EMP'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODEMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK2 = 'CODEMPRESA'
    Tabela = 'PRODUTO_MOVIMENTO'
    Modulo = 'ESTOQUE'
  end
  inherited Fr3Cadastro: TfrxDBDataset
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODEMPRESA=CODEMPRESA'
      'DATA=DATA'
      'CODPRODUTO=CODPRODUTO'
      'QUANT=QUANT'
      'CODCOR=CODCOR'
      'VALOR=VALOR'
      'CUSTO_FABR=CUSTO_FABR'
      'CUSTO_VENDA_TOTAL=CUSTO_VENDA_TOTAL'
      'VALOR_CADASTRO=VALOR_CADASTRO'
      'VALOR_PRAZO=VALOR_PRAZO'
      'VEICULO_PLACA=VEICULO_PLACA'
      'VEICULO_CHASSI=VEICULO_CHASSI'
      'VEICULO_MOTOR=VEICULO_MOTOR'
      'VEICULO_RENAVAN=VEICULO_RENAVAN'
      'VEICULO_ANO_MODELO=VEICULO_ANO_MODELO'
      'VEICULO_CILINDRADA=VEICULO_CILINDRADA'
      'VEICULO_HP=VEICULO_HP'
      'VEICULO_COMBUSTIVEL=VEICULO_COMBUSTIVEL'
      'VEICULO_KM=VEICULO_KM'
      'VEICULO_PASSAGEIROS=VEICULO_PASSAGEIROS'
      'TIPO_MOVIMENTO=TIPO_MOVIMENTO'
      'OBSERVACAO=OBSERVACAO'
      'CODNF_ENTRADA=CODNF_ENTRADA'
      'CODVENDA=CODVENDA'
      'ATUALIZADO=ATUALIZADO'
      'PRODUTO_ESTOQUE_LOCAL=PRODUTO_ESTOQUE_LOCAL'
      'STATUS=STATUS'
      'DT_ALTERACAO=DT_ALTERACAO'
      'CODUSUARIO=CODUSUARIO'
      'FORM=FORM'
      'PESSOA_FORNECEDOR_CODIGO=PESSOA_FORNECEDOR_CODIGO'
      'PESSOA_FORNECEDOR_TIPO=PESSOA_FORNECEDOR_TIPO'
      'PESSOA_FORNECEDOR_SEQUENCIA=PESSOA_FORNECEDOR_SEQUENCIA'
      'CODPRODUTO_LOTE=CODPRODUTO_LOTE'
      'ATIVO=ATIVO'
      'CUSTO_COMPOSICAO=CUSTO_COMPOSICAO'
      'VALOR_COMPOSICAO=VALOR_COMPOSICAO'
      'CUSTO_CENTRO_TRABALHO=CUSTO_CENTRO_TRABALHO'
      'AJUSTE_SALDO=AJUSTE_SALDO'
      'PRODUTO=PRODUTO'
      'COR=COR')
  end
end
