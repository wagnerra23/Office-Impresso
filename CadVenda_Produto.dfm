inherited FrmVenda_Produto: TFrmVenda_Produto
  Caption = 'Detalhes do Produto / Servi'#231'o'
  ClientHeight = 626
  ClientWidth = 1173
  FormStyle = fsNormal
  ShowHint = True
  Visible = False
  ExplicitWidth = 1189
  ExplicitHeight = 665
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxStatusBar1: TdxStatusBar
    Top = 606
    Width = 1173
    ExplicitTop = 606
    ExplicitWidth = 1173
  end
  inherited MainLayout: TdxLayoutControl
    Width = 1173
    Height = 606
    ExplicitWidth = 1173
    ExplicitHeight = 606
    DesignSize = (
      1173
      606)
    inherited btnNovo: TcxButton
      Left = 1030
      Width = 123
      TabOrder = 175
      ExplicitLeft = 1030
      ExplicitWidth = 123
    end
    inherited btnConfirmar: TcxButton
      Left = 1030
      Width = 123
      TabOrder = 176
      ExplicitLeft = 1030
      ExplicitWidth = 123
    end
    inherited btnAlterar: TcxButton
      Left = 1030
      Width = 123
      TabOrder = 177
      ExplicitLeft = 1030
      ExplicitWidth = 123
    end
    inherited btnCancelar: TcxButton
      Left = 1030
      Width = 123
      TabOrder = 178
      ExplicitLeft = 1030
      ExplicitWidth = 123
    end
    inherited btnExcluir: TcxButton
      Left = 1030
      Width = 123
      TabOrder = 179
      ExplicitLeft = 1030
      ExplicitWidth = 123
    end
    inherited DBNav: TcxDBNavigator
      Left = 1030
      Width = 122
      TabOrder = 183
      ExplicitLeft = 1030
      ExplicitWidth = 122
    end
    inherited btnConsultar: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 201
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited btnSair: TcxButton
      Left = 1030
      Top = 647
      Width = 123
      TabOrder = 180
      ExplicitLeft = 1030
      ExplicitTop = 647
      ExplicitWidth = 123
    end
    inherited dbtxtCodigo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      TabOrder = 200
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited dbtxtDT_Alteracao: TcxDBTextEdit
      Left = 10000
      Top = 10000
      TabOrder = 202
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited dbtxtDescricao: TcxDBTextEdit
      Left = 10000
      Top = 10000
      TabOrder = 204
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 1030
      Width = 62
      TabOrder = 181
      ExplicitLeft = 1030
      ExplicitWidth = 62
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 1093
      Width = 60
      TabOrder = 182
      ExplicitLeft = 1093
      ExplicitWidth = 60
    end
    inherited CadGridCadastros: TcxGrid
      TabOrder = 203
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 1102
      TabOrder = 173
      ExplicitLeft = 1102
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 196
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 1129
      TabOrder = 174
      ExplicitLeft = 1129
    end
    inherited btnMenuConfig: TcxButton
      Left = 1030
      Width = 71
      TabOrder = 172
      ExplicitLeft = 1030
      ExplicitWidth = 71
    end
    inherited PnlFrameRegistro_Atividade: TPanel
      Left = 10000
      Top = 10000
      Width = 992
      Height = 487
      TabOrder = 33
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 992
      ExplicitHeight = 487
    end
    inherited BtnImprimir: TcxButton
      Left = 1030
      Top = 303
      Width = 123
      TabOrder = 185
      ExplicitLeft = 1030
      ExplicitTop = 303
      ExplicitWidth = 123
    end
    object cxDBTextEdit19: TcxDBTextEdit [20]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_CHASSI'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 197
      Visible = False
      Width = 100
    end
    object cxDBTextEdit24: TcxDBTextEdit [21]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_RENAVAN'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 199
      Visible = False
      Width = 100
    end
    object cxDBTextEdit25: TcxDBTextEdit [22]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_ANO_MODELO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 198
      Visible = False
      Width = 100
    end
    object cxDBTextEdit20: TcxDBTextEdit [23]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_COMBUSTIVEL'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 211
      Visible = False
      Width = 100
    end
    object cxDBCurrencyEdit13: TcxDBCurrencyEdit [24]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_CILINDRADA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 210
      Visible = False
      Width = 100
    end
    object cxDBCurrencyEdit11: TcxDBCurrencyEdit [25]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_PASSAGEIROS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 212
      Visible = False
      Width = 100
    end
    object cxDBCurrencyEdit15: TcxDBCurrencyEdit [26]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_PESO_LIQUIDO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 218
      Visible = False
      Width = 100
    end
    object cxDBCurrencyEdit16: TcxDBCurrencyEdit [27]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_PESO_BRUTO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 216
      Visible = False
      Width = 100
    end
    object cxDBTextEdit30: TcxDBTextEdit [28]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_NUMERO_SERIE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 206
      Visible = False
      Width = 100
    end
    object cxDBTextEdit38: TcxDBTextEdit [29]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_COR_DENATRAN'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 205
      Visible = False
      Width = 100
    end
    object cxDBTextEdit23: TcxDBTextEdit [30]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_PLACA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 207
      Visible = False
      Width = 100
    end
    object cxDBTextEdit22: TcxDBTextEdit [31]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_KM'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 209
      Visible = False
      Width = 100
    end
    object cxDBTextEdit21: TcxDBTextEdit [32]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_MOTOR'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 208
      Visible = False
      Width = 100
    end
    object cxDBTextEdit32: TcxDBTextEdit [33]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_TIPO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 195
      Visible = False
      Width = 100
    end
    object cxDBTextEdit31: TcxDBTextEdit [34]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_ANO_FABRICACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 191
      Visible = False
      Width = 100
    end
    object cxDBTextEdit34: TcxDBTextEdit [35]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_ESPECIE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 190
      Visible = False
      Width = 100
    end
    object cxDBTextEdit35: TcxDBTextEdit [36]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_DIST'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 192
      Visible = False
      Width = 100
    end
    object cxDBTextEdit36: TcxDBTextEdit [37]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_CONDICAO_VEICULO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 194
      Visible = False
      Width = 100
    end
    object cxDBCurrencyEdit12: TcxDBCurrencyEdit [38]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_HP'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 193
      Visible = False
      Width = 100
    end
    object cxDBTextEdit33: TcxDBTextEdit [39]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'VEICULO_CMOD'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 189
      Visible = False
      Width = 100
    end
    object cxDBLabel1: TcxDBLabel [40]
      Left = 14
      Top = 47
      DataBinding.DataField = 'CODIGO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 23
      Width = 50
      AnchorX = 39
    end
    object cxDBTextEdit10: TcxDBTextEdit [41]
      Left = 180
      Top = 49
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 170
    end
    object edtUnidade: TcxDBTextEdit [42]
      Left = 353
      Top = 49
      DataBinding.DataField = 'UNIDADE'
      DataBinding.DataSource = DS
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = False
      Properties.OnChange = edtUnidadePropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 47
    end
    object EdtCusto: TcxDBCurrencyEdit [43]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CUSTO_LOJA'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 4
      Style.HotTrack = False
      TabOrder = 188
      Visible = False
      Width = 59
    end
    object EdtValor: TcxDBCurrencyEdit [44]
      Left = 629
      Top = 41
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.OnValidate = EdtValorPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 12615680
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 117
    end
    object EdtVDesc_Manual: TcxDBCurrencyEdit [45]
      Left = 691
      Top = 107
      DataBinding.DataField = 'CALC_VDESC_MANUAL'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 8
      Properties.OnValidate = EdtVDesc_ManualPropertiesValidate
      Style.HotTrack = False
      TabOrder = 18
      Width = 72
    end
    object EdtTotal: TcxDBCurrencyEdit [46]
      Left = 837
      Top = 41
      DataBinding.DataField = 'TOTAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.OnEditValueChanged = EdtTotalPropertiesEditValueChanged
      Properties.OnValidate = EdtTotalPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clGreen
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 35345
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 169
    end
    object EdtPecas: TcxDBCurrencyEdit [47]
      Left = 403
      Top = 49
      DataBinding.DataField = 'QTDADEPECA'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.####'
      Properties.OnValidate = EdtPecasPropertiesValidate
      Style.HotTrack = False
      TabOrder = 5
      Width = 34
    end
    object EdtComprimento: TcxDBCurrencyEdit [48]
      Left = 440
      Top = 49
      DataBinding.DataField = 'COMP'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.OnValidate = EdtComprimentoPropertiesValidate
      Style.HotTrack = False
      TabOrder = 6
      Width = 60
    end
    object EdtLargura: TcxDBCurrencyEdit [49]
      Left = 503
      Top = 49
      DataBinding.DataField = 'LARG'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.OnValidate = EdtLarguraPropertiesValidate
      Style.HotTrack = False
      TabOrder = 7
      Width = 60
    end
    object EdtEspessura: TcxDBCurrencyEdit [50]
      Left = 566
      Top = 49
      DataBinding.DataField = 'ESPESSURA'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.OnValidate = EdtEspessuraPropertiesValidate
      Style.HotTrack = False
      TabOrder = 8
      Width = 60
    end
    object EdtQuant: TcxDBCurrencyEdit [51]
      Left = 749
      Top = 41
      Hint = 'Essa quantidade influ'#234'ncia nos materiais da composi'#231#227'o'
      DataBinding.DataField = 'QUANT'
      DataBinding.DataSource = DS
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 8
      Properties.OnChange = EdtQuantPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHighlight
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 35345
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 85
    end
    object EdtDBCodProduto: TcxDBTextEdit [52]
      Left = 67
      Top = 49
      DataBinding.DataField = 'CODPRODUTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 110
    end
    object EdtCorÎCor: TcxDBButtonEdit [53]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CODCOR'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 22
      Visible = False
      Width = 69
    end
    object EdtCorÎCorÎDESCRICAO: TcxDBTextEdit [54]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'COR'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 23
      Visible = False
      Width = 301
    end
    object EdtMarcaÎProduto_Marca: TcxDBButtonEdit [55]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO_MARCA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 24
      Visible = False
      Height = 21
      Width = 64
    end
    object LblMarcaÎProduto_MarcaÎDESCRICAO: TcxLabel [56]
      Left = 10000
      Top = 10000
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      Height = 21
      Width = 248
      AnchorY = 10011
    end
    object EdtImpressaoÎTipo_Impressao: TcxDBButtonEdit [57]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CODTIPO_IMPRESSAO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 37
      Visible = False
      Width = 61
    end
    object EdtImpressaoÎTipo_ImpressaoÎDESCRICAO: TcxDBTextEdit [58]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'TIPO_IMPRESSAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 38
      Visible = False
      Height = 21
      Width = 930
    end
    object edtLocalÎLocalÎDESCRICAO: TcxDBTextEdit [59]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'LOCAL'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 42
      Visible = False
      Width = 930
    end
    object cxDBTextEdit39: TcxDBTextEdit [60]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'TAMANHO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 26
      Visible = False
      Width = 49
    end
    object cxDBTextEdit28: TcxDBTextEdit [61]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'APROVEITAMENTO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 43
      Visible = False
      Height = 21
      Width = 94
    end
    object cxDBCurrencyEdit14: TcxDBCurrencyEdit [62]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PASSADAS'
      DataBinding.DataSource = DS
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Style.HotTrack = False
      TabOrder = 44
      Visible = False
      Width = 66
    end
    object CbLocalEstoque: TcxDBLookupComboBox [63]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'PRODUTO_ESTOQUE_LOCAL'
      DataBinding.DataSource = DS
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 27
      Visible = False
      Height = 21
      Width = 136
    end
    object EdtPrevisaoEntrega: TcxDBDateEdit [64]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'CALENDARIO_DT_PREVISAO_FIM'
      DataBinding.DataSource = DS
      Properties.Kind = ckDateTime
      Style.HotTrack = False
      TabOrder = 36
      Visible = False
      Height = 21
      Width = 121
    end
    object EdtPrevisaoInicio: TcxDBDateEdit [65]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'DT_PREVISAO_INICIO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 35
      Visible = False
      Height = 21
      Width = 128
    end
    object PnlCOFINS: TPanel [66]
      Left = 10000
      Top = 10000
      Width = 972
      Height = 377
      Caption = 'COFINS'
      Color = 16505534
      ParentBackground = False
      TabOrder = 156
      Visible = False
      object dxLayoutControl2: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 970
        Height = 375
        Align = alClient
        TabOrder = 0
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 10
          Top = 28
          DataBinding.DataField = 'NF_COFINS_ST'
          DataBinding.DataSource = DS
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 15
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              Caption = 'C'#243'd.'
              MinWidth = 35
              FieldName = 'CODIGO'
            end
            item
              Caption = 'Descri'#231#227'o'
              FieldName = 'DESCRICAO'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.GridLines = glNone
          Properties.ListSource = DSNT_CST_PIS_COFINS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 510
        end
        object cxLabel4: TcxLabel
          Left = 10
          Top = 92
          Caption = 'COFINS'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.TextColor = 4737096
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBCurrencyEdit37: TcxDBCurrencyEdit
          Left = 135
          Top = 118
          DataBinding.DataField = 'NF_COFINS_PCOFINS'
          DataBinding.DataSource = DS
          Properties.DisplayFormat = '0.00%'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 80
        end
        object cxDBCurrencyEdit38: TcxDBCurrencyEdit
          Left = 135
          Top = 145
          DataBinding.DataField = 'NF_COFINS_VBC'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 80
        end
        object cxDBCurrencyEdit39: TcxDBCurrencyEdit
          Left = 135
          Top = 172
          DataBinding.DataField = 'NF_COFINS_VBCPROD'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 80
        end
        object cxDBCurrencyEdit40: TcxDBCurrencyEdit
          Left = 135
          Top = 199
          DataBinding.DataField = 'NF_COFINS_VALIQPROD'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 80
        end
        object cxDBCurrencyEdit55: TcxDBCurrencyEdit
          Left = 135
          Top = 226
          DataBinding.DataField = 'NF_COFINS_VCOFINS'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 80
        end
        object cxLabel5: TcxLabel
          Left = 236
          Top = 92
          Caption = 'COFINS - Substitui'#231#227'o Tribut'#225'ria'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.TextColor = 4737096
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBCurrencyEdit56: TcxDBCurrencyEdit
          Left = 378
          Top = 118
          DataBinding.DataField = 'NF_COFINSST_PCOFINS'
          DataBinding.DataSource = DS
          Properties.DisplayFormat = '0.00%'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Width = 80
        end
        object cxDBCurrencyEdit57: TcxDBCurrencyEdit
          Left = 378
          Top = 145
          DataBinding.DataField = 'NF_COFINSST_VBC'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 80
        end
        object cxDBCurrencyEdit58: TcxDBCurrencyEdit
          Left = 378
          Top = 172
          DataBinding.DataField = 'NF_COFINSST_QBCPROD'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 80
        end
        object cxDBCurrencyEdit59: TcxDBCurrencyEdit
          Left = 378
          Top = 199
          DataBinding.DataField = 'NF_COFINSST_VALIQPROD'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 80
        end
        object cxDBCurrencyEdit60: TcxDBCurrencyEdit
          Left = 378
          Top = 226
          DataBinding.DataField = 'NF_COFINSST_VCOFINS'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 80
        end
        object edtCalculaCOFINS: TcxDBComboBox
          Left = 135
          Top = 55
          DataBinding.DataField = 'NF_CALCULA_COFINS'
          DataBinding.DataSource = DS
          ParentShowHint = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'S'
            'N')
          ShowHint = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 80
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object GrupoCOFINS: TdxLayoutGroup
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'COFINS'
          ItemIndex = 1
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item13: TdxLayoutItem
          Parent = GrupoCOFINS
          AlignHorz = ahLeft
          CaptionOptions.Text = 'CST (C'#243'digo Situa'#231#227'o Tribut'#225'ria)'
          CaptionOptions.Layout = clTop
          Control = cxDBLookupComboBox3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 510
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group23: TdxLayoutGroup
          Parent = GrupoCOFINS
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'COFINS'
          CaptionOptions.Visible = False
          Offsets.Top = 10
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutGroup15: TdxLayoutGroup
          Parent = dxLayoutControl1Group23
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem107: TdxLayoutItem
          Parent = dxLayoutGroup15
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = cxLabel4
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem110: TdxLayoutItem
          Parent = dxLayoutGroup15
          CaptionOptions.Text = 'Al'#237'quota COFINS (%)'
          Control = cxDBCurrencyEdit37
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem113: TdxLayoutItem
          Parent = dxLayoutGroup15
          CaptionOptions.Text = 'Base de C'#225'lculo'
          Control = cxDBCurrencyEdit38
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem111: TdxLayoutItem
          Parent = dxLayoutGroup15
          CaptionOptions.Text = 'Quantidade Vendida'
          Control = cxDBCurrencyEdit39
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem115: TdxLayoutItem
          Parent = dxLayoutGroup15
          CaptionOptions.Text = 'Al'#237'quota do COFINS (R$)'
          Control = cxDBCurrencyEdit40
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem109: TdxLayoutItem
          Parent = dxLayoutGroup15
          CaptionOptions.Text = 'Valor do COFINS'
          Control = cxDBCurrencyEdit55
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutGroup16: TdxLayoutGroup
          Parent = dxLayoutControl1Group23
          CaptionOptions.Text = 'New Group'
          Offsets.Left = 15
          ShowBorder = False
          Index = 1
        end
        object dxLayoutItem108: TdxLayoutItem
          Parent = dxLayoutGroup16
          CaptionOptions.Visible = False
          Control = cxLabel5
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem112: TdxLayoutItem
          Parent = dxLayoutGroup16
          CaptionOptions.Text = 'Al'#237'quota COFINS ST (%)'
          Control = cxDBCurrencyEdit56
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem114: TdxLayoutItem
          Parent = dxLayoutGroup16
          CaptionOptions.Text = 'Base de C'#225'lculo'
          Control = cxDBCurrencyEdit57
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem118: TdxLayoutItem
          Parent = dxLayoutGroup16
          CaptionOptions.Text = 'Quantidade Vendida'
          Control = cxDBCurrencyEdit58
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem117: TdxLayoutItem
          Parent = dxLayoutGroup16
          CaptionOptions.Text = 'Al'#237'quota do COFINS ST (R$)'
          Control = cxDBCurrencyEdit59
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem116: TdxLayoutItem
          Parent = dxLayoutGroup16
          CaptionOptions.Text = 'Valor do COFINS ST'
          Control = cxDBCurrencyEdit60
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
          Parent = dxLayoutControl2Group_Root
          AlignVert = avBottom
          CaptionOptions.Text = 'Separator'
          Index = 1
        end
        object dxLayoutItem196: TdxLayoutItem
          Parent = GrupoCOFINS
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Calcular o COFINS'
          Control = edtCalculaCOFINS
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object PnlISSQN: TPanel [67]
      Left = 10000
      Top = 10000
      Width = 972
      Height = 377
      Caption = 'ISSQN'
      Color = 16505534
      ParentBackground = False
      TabOrder = 157
      Visible = False
      object dxLayoutControl3: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 970
        Height = 375
        Align = alClient
        TabOrder = 0
        object CbISSQNAliquota: TcxDBCurrencyEdit
          Left = 152
          Top = 54
          DataBinding.DataField = 'NF_ISSQN_VALIQ'
          DataBinding.DataSource = DS
          Properties.DisplayFormat = '0.00%'
          Style.HotTrack = False
          TabOrder = 2
          Width = 481
        end
        object CbISSQNBC: TcxDBCurrencyEdit
          Left = 152
          Top = 76
          DataBinding.DataField = 'NF_ISSQN_VBC'
          DataBinding.DataSource = DS
          Style.HotTrack = False
          TabOrder = 3
          Width = 481
        end
        object CbISSQNValor: TcxDBCurrencyEdit
          Left = 152
          Top = 98
          DataBinding.DataField = 'NF_ISSQN_VISSQN'
          DataBinding.DataSource = DS
          Style.HotTrack = False
          TabOrder = 4
          Width = 481
        end
        object CbISSQNTipoTributacao: TcxDBLookupComboBox
          Left = 152
          Top = 32
          Hint = 'Tipo de Tributa'#231#227'o configurada no Grupo do Produto'
          DataBinding.DataField = 'NF_ISSQN_TIPOTRIBUTACAO'
          DataBinding.DataSource = DS
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 15
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              Caption = 'C'#243'd.'
              Width = 20
              FieldName = 'CODIGO'
            end
            item
              Caption = 'Descri'#231#227'o'
              FieldName = 'DESCRICAO'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Style.HotTrack = False
          TabOrder = 1
          Width = 481
        end
        object CbISSQNCalculaISSQN: TcxDBComboBox
          Left = 152
          Top = 10
          DataBinding.DataField = 'NF_CALCULA_ISSQN'
          DataBinding.DataSource = DS
          ParentShowHint = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'S'
            'N')
          ShowHint = True
          Style.HotTrack = False
          TabOrder = 0
          Width = 481
        end
        object CbISSQNIncentivadorCultural: TcxDBLookupComboBox
          Left = 152
          Top = 142
          AutoSize = False
          DataBinding.DataField = 'NF_ISSQN_INCENTIVADOR_CULTURAL'
          DataBinding.DataSource = DS
          Properties.DropDownListStyle = lsFixedList
          Properties.ListColumns = <>
          Style.HotTrack = False
          TabOrder = 6
          Height = 21
          Width = 481
        end
        object CbISSQNValorRetido: TcxDBCurrencyEdit
          Left = 152
          Top = 120
          DataBinding.DataField = 'NF_ISSQN_VISSRET'
          DataBinding.DataSource = DS
          Style.HotTrack = False
          TabOrder = 5
          Width = 481
        end
        object CbISSQNCodMunicipioFG: TcxDBTextEdit
          Left = 152
          Top = 164
          DataBinding.DataField = 'NF_ISSQN_CMUNFG'
          DataBinding.DataSource = DS
          Style.HotTrack = False
          TabOrder = 7
          Width = 481
        end
        object CkNaoCalculaValorISS: TcxDBCheckBox
          Left = 0
          Top = 186
          Caption = 
            'Preencher Base de C'#225'lculo e Al'#237'quota do ISS, mas n'#227'o calcular o ' +
            'Valor do ISS'
          DataBinding.DataField = 'TEM_CALCULA_VALOR_ISS'
          DataBinding.DataSource = DS
          ParentFont = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 8
          Transparent = True
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
          Hidden = True
          ItemIndex = 2
          ShowBorder = False
          Index = -1
        end
        object GrupoISSQN: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          CaptionOptions.Text = 'ISSQN'
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group20: TdxLayoutGroup
          Parent = GrupoISSQN
          AlignHorz = ahClient
          CaptionOptions.Text = 'ISSQN'
          CaptionOptions.Visible = False
          Offsets.Top = 10
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group20
          AlignHorz = ahLeft
          Index = 0
        end
        object dxLayoutItem119: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.Text = 'Al'#237'quota ISSQN'
          Control = CbISSQNAliquota
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 481
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem120: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.Text = 'Base de C'#225'lculo'
          Control = CbISSQNBC
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem121: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.Text = 'Valor do ISSQN'
          Control = CbISSQNValor
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
          Parent = dxLayoutControl3Group_Root
          AlignVert = avBottom
          CaptionOptions.Text = 'Separator'
          Index = 1
        end
        object dxLayoutControl1Item19: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.Text = 'Tipo de Tributa'#231#227'o'
          Control = CbISSQNTipoTributacao
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 134
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem203: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.Text = 'Cacula ISSQN'
          Control = CbISSQNCalculaISSQN
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem11: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.Text = 'Incentivador Cultural'
          Control = CbISSQNIncentivadorCultural
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutItem205: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.Text = 'Valor do ISS Retido'
          Control = CbISSQNValorRetido
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutItem206: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.Text = 'C'#243'digo Cidade Geradora ISSQN'
          Control = CbISSQNCodMunicipioFG
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutItem177: TdxLayoutItem
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahLeft
          CaptionOptions.Visible = False
          Control = CkNaoCalculaValorISS
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 392
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object PnlII: TPanel [68]
      Left = 10000
      Top = 10000
      Width = 458
      Height = 201
      Caption = 'Imposto de Importa'#231#227'o'
      Color = 16505534
      ParentBackground = False
      TabOrder = 158
      Visible = False
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 456
        Height = 199
        Align = alClient
        TabOrder = 0
        object cxLabel8: TcxLabel
          Left = 10
          Top = 10
          Caption = 'II'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.TextColor = 4737096
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBCurrencyEdit66: TcxDBCurrencyEdit
          Left = 182
          Top = 36
          DataBinding.DataField = 'NF_II_PII'
          DataBinding.DataSource = DS
          Properties.DisplayFormat = '0.00%'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 80
        end
        object cxDBCurrencyEdit67: TcxDBCurrencyEdit
          Left = 182
          Top = 63
          DataBinding.DataField = 'NF_II_VBC'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 80
        end
        object cxDBCurrencyEdit68: TcxDBCurrencyEdit
          Left = 182
          Top = 90
          DataBinding.DataField = 'NF_II_VDESPADU'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 80
        end
        object cxDBCurrencyEdit69: TcxDBCurrencyEdit
          Left = 182
          Top = 117
          DataBinding.DataField = 'NF_II_VII'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 80
        end
        object cxLabel9: TcxLabel
          Left = 283
          Top = 10
          Caption = 'IOF'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.TextColor = 4737096
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBCurrencyEdit70: TcxDBCurrencyEdit
          Left = 363
          Top = 36
          DataBinding.DataField = 'NF_II_PIOF'
          DataBinding.DataSource = DS
          Properties.DisplayFormat = '0.00%'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 80
        end
        object cxDBCurrencyEdit71: TcxDBCurrencyEdit
          Left = 363
          Top = 63
          DataBinding.DataField = 'NF_II_VIOF'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 80
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
          Parent = dxLayoutControl1Group_Root
          AlignVert = avBottom
          CaptionOptions.Text = 'Separator'
          Index = 1
        end
        object GrupoII: TdxLayoutGroup
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'Imposto de Importa'#231#227'o'
          CaptionOptions.Visible = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup18: TdxLayoutGroup
          Parent = GrupoII
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem129: TdxLayoutItem
          Parent = dxLayoutGroup18
          CaptionOptions.Visible = False
          Control = cxLabel8
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem127: TdxLayoutItem
          Parent = dxLayoutGroup18
          CaptionOptions.Text = 'Al'#237'quota do II'
          Control = cxDBCurrencyEdit66
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem123: TdxLayoutItem
          Parent = dxLayoutGroup18
          CaptionOptions.Text = 'Base de C'#225'lculo'
          Control = cxDBCurrencyEdit67
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem124: TdxLayoutItem
          Parent = dxLayoutGroup18
          CaptionOptions.Text = 'Despesas Aduaneiras (SISCOMEX)'
          Control = cxDBCurrencyEdit68
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem125: TdxLayoutItem
          Parent = dxLayoutGroup18
          CaptionOptions.Text = 'Valor do II'
          Control = cxDBCurrencyEdit69
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutGroup17: TdxLayoutGroup
          Parent = GrupoII
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          Offsets.Left = 15
          ShowBorder = False
          Index = 1
        end
        object dxLayoutItem130: TdxLayoutItem
          Parent = dxLayoutGroup17
          CaptionOptions.Visible = False
          Control = cxLabel9
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem128: TdxLayoutItem
          Parent = dxLayoutGroup17
          CaptionOptions.Text = 'Al'#237'quota do IOF'
          Control = cxDBCurrencyEdit70
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem126: TdxLayoutItem
          Parent = dxLayoutGroup17
          CaptionOptions.Text = 'Valor do IOF'
          Control = cxDBCurrencyEdit71
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object cxLabel14: TcxLabel [69]
      Left = 10000
      Top = 10000
      Caption = 'Declara'#231#227'o de Importa'#231#227'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object cxDBTextEdit1: TcxDBTextEdit [70]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_NDI'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 160
      Visible = False
      Width = 131
    end
    object cxDBDateEdit4: TcxDBDateEdit [71]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_DDI'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 161
      Visible = False
      Width = 131
    end
    object cxDBTextEdit3: TcxDBTextEdit [72]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_XLOCDESEMB'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 162
      Visible = False
      Width = 131
    end
    object cxDBDateEdit3: TcxDBDateEdit [73]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_DDESEMB'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 163
      Visible = False
      Width = 131
    end
    object cxDBTextEdit2: TcxDBTextEdit [74]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_UFDESEMB'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 164
      Visible = False
      Width = 131
    end
    object cxDBTextEdit4: TcxDBTextEdit [75]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_CEXPORTADOR'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 165
      Visible = False
      Width = 131
    end
    object PnlIPI: TPanel [76]
      Left = 10000
      Top = 10000
      Width = 972
      Height = 377
      Caption = 'IPI'
      Color = 16505534
      ParentBackground = False
      TabOrder = 154
      Visible = False
      object dxLayoutControl5: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 970
        Height = 375
        Align = alClient
        TabOrder = 0
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 10
          Top = 28
          DataBinding.DataField = 'NF_IPI_ST'
          DataBinding.DataSource = DS
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 15
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              Caption = 'C'#243'd.'
              MinWidth = 35
              FieldName = 'CODIGO'
            end
            item
              Caption = 'Descri'#231#227'o'
              FieldName = 'DESCRICAO'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.GridLines = glNone
          Properties.ListSource = DSNT_CST_PIS_COFINS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 510
        end
        object cxDBCurrencyEdit61: TcxDBCurrencyEdit
          Left = 161
          Top = 92
          DataBinding.DataField = 'NF_IPI_CENQ'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 80
        end
        object cxDBCurrencyEdit44: TcxDBCurrencyEdit
          Left = 161
          Top = 119
          DataBinding.DataField = 'NF_IPI_PIPI'
          DataBinding.DataSource = DS
          Properties.DisplayFormat = '0.00%'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 80
        end
        object cxDBCurrencyEdit23: TcxDBCurrencyEdit
          Left = 161
          Top = 146
          DataBinding.DataField = 'NF_IPI_VBC'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 80
        end
        object cxDBCurrencyEdit41: TcxDBCurrencyEdit
          Left = 161
          Top = 173
          DataBinding.DataField = 'NF_IPI_QUNID'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 80
        end
        object cxDBCurrencyEdit42: TcxDBCurrencyEdit
          Left = 161
          Top = 200
          DataBinding.DataField = 'NF_IPI_VUNID'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 80
        end
        object cxDBCurrencyEdit43: TcxDBCurrencyEdit
          Left = 161
          Top = 227
          DataBinding.DataField = 'NF_IPI_VIPI'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 80
        end
        object edtCalculaIPI: TcxDBComboBox
          Left = 161
          Top = 55
          DataBinding.DataField = 'NF_CALCULA_IPI'
          DataBinding.DataSource = DS
          ParentShowHint = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'S'
            'N')
          ShowHint = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 80
        end
        object dxLayoutControl5Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object GrupoIPI: TdxLayoutGroup
          Parent = dxLayoutControl5Group_Root
          CaptionOptions.Text = 'IPI'
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          Parent = GrupoIPI
          AlignHorz = ahLeft
          CaptionOptions.Text = 'CST (C'#243'digo Situa'#231#227'o Tribut'#225'ria)'
          CaptionOptions.Layout = clTop
          Control = cxDBLookupComboBox5
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 510
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group19: TdxLayoutGroup
          Parent = GrupoIPI
          AlignHorz = ahClient
          CaptionOptions.Text = 'IPI'
          CaptionOptions.Visible = False
          Offsets.Top = 10
          ShowBorder = False
          Index = 2
        end
        object dxLayoutItem131: TdxLayoutItem
          Parent = dxLayoutControl1Group19
          AlignHorz = ahLeft
          CaptionOptions.Text = 'C'#243'd. do Enquadramento do IPI'
          Control = cxDBCurrencyEdit61
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem94: TdxLayoutItem
          Parent = dxLayoutControl1Group19
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Al'#237'quota IPI'
          Control = cxDBCurrencyEdit44
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem82: TdxLayoutItem
          Parent = GrupoIPI
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Base de C'#225'lculo'
          Control = cxDBCurrencyEdit23
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem86: TdxLayoutItem
          Parent = GrupoIPI
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Quantidade na Unidade'
          Control = cxDBCurrencyEdit41
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem92: TdxLayoutItem
          Parent = GrupoIPI
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Valor por Unidade'
          Control = cxDBCurrencyEdit42
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutItem93: TdxLayoutItem
          Parent = GrupoIPI
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Valor do IPI'
          Control = cxDBCurrencyEdit43
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutSeparatorItem5: TdxLayoutSeparatorItem
          Parent = dxLayoutControl5Group_Root
          AlignVert = avBottom
          CaptionOptions.Text = 'Separator'
          Index = 1
        end
        object dxLayoutItem198: TdxLayoutItem
          Parent = GrupoIPI
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Calcula IPI'
          Control = edtCalculaIPI
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object PnlPIS: TPanel [77]
      Left = 10000
      Top = 10000
      Width = 972
      Height = 377
      Caption = 'PIS'
      Color = 16505534
      ParentBackground = False
      TabOrder = 155
      Visible = False
      object dxLayoutControl4: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 970
        Height = 375
        Align = alClient
        TabOrder = 0
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 10
          Top = 28
          DataBinding.DataField = 'NF_PIS_ST'
          DataBinding.DataSource = DS
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 15
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              Caption = 'C'#243'd.'
              MinWidth = 35
              FieldName = 'CODIGO'
            end
            item
              Caption = 'Descri'#231#227'o'
              FieldName = 'DESCRICAO'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.GridLines = glNone
          Properties.ListSource = DSNT_CST_PIS_COFINS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 510
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = 92
          Caption = 'PIS'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.TextColor = 4737096
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBCurrencyEdit45: TcxDBCurrencyEdit
          Left = 113
          Top = 118
          DataBinding.DataField = 'NF_PIS_PPIS'
          DataBinding.DataSource = DS
          Properties.DisplayFormat = '0.00%'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 80
        end
        object cxDBCurrencyEdit46: TcxDBCurrencyEdit
          Left = 113
          Top = 145
          DataBinding.DataField = 'NF_PIS_VBC'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 80
        end
        object cxDBCurrencyEdit49: TcxDBCurrencyEdit
          Left = 113
          Top = 172
          DataBinding.DataField = 'NF_PIS_QBCPROD'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 80
        end
        object cxDBCurrencyEdit48: TcxDBCurrencyEdit
          Left = 113
          Top = 199
          DataBinding.DataField = 'NF_PIS_VALIQPROD'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 80
        end
        object cxDBCurrencyEdit50: TcxDBCurrencyEdit
          Left = 113
          Top = 226
          DataBinding.DataField = 'NF_PIS_VPIS'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 80
        end
        object cxLabel7: TcxLabel
          Left = 214
          Top = 92
          Caption = 'PIS - Substitui'#231#227'o Tribut'#225'ria'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.TextColor = 4737096
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBCurrencyEdit51: TcxDBCurrencyEdit
          Left = 334
          Top = 118
          DataBinding.DataField = 'NF_PISST_PPIS'
          DataBinding.DataSource = DS
          Properties.DisplayFormat = '0.00%'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Width = 80
        end
        object cxDBCurrencyEdit47: TcxDBCurrencyEdit
          Left = 334
          Top = 145
          DataBinding.DataField = 'NF_PISST_VBC'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 80
        end
        object cxDBCurrencyEdit53: TcxDBCurrencyEdit
          Left = 334
          Top = 172
          DataBinding.DataField = 'NF_PISST_QBCPROD'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 80
        end
        object cxDBCurrencyEdit54: TcxDBCurrencyEdit
          Left = 334
          Top = 199
          DataBinding.DataField = 'NF_PISST_VALIQPROD'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 80
        end
        object cxDBCurrencyEdit52: TcxDBCurrencyEdit
          Left = 334
          Top = 226
          DataBinding.DataField = 'NF_PISST_VPIS'
          DataBinding.DataSource = DS
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 80
        end
        object edtCalculaPIS: TcxDBComboBox
          Left = 113
          Top = 55
          DataBinding.DataField = 'NF_CALCULA_IPI'
          DataBinding.DataSource = DS
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 80
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object GrupoPIS: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = 'PIS'
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Parent = GrupoPIS
          AlignHorz = ahLeft
          CaptionOptions.Text = 'CST (C'#243'digo Situa'#231#227'o Tribut'#225'ria)'
          CaptionOptions.Layout = clTop
          Control = cxDBLookupComboBox2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 510
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup11: TdxLayoutGroup
          Parent = GrupoPIS
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          Offsets.Top = 10
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutGroup14: TdxLayoutGroup
          Parent = dxLayoutGroup11
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem105: TdxLayoutItem
          Parent = dxLayoutGroup14
          CaptionOptions.Visible = False
          Control = cxLabel6
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem95: TdxLayoutItem
          Parent = dxLayoutGroup14
          CaptionOptions.Text = 'Al'#237'quota PIS (%)'
          Control = cxDBCurrencyEdit45
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem96: TdxLayoutItem
          Parent = dxLayoutGroup14
          CaptionOptions.Text = 'Base de C'#225'lculo'
          Control = cxDBCurrencyEdit46
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem99: TdxLayoutItem
          Parent = dxLayoutGroup14
          CaptionOptions.Text = 'Quantidade Vendida'
          Control = cxDBCurrencyEdit49
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem98: TdxLayoutItem
          Parent = dxLayoutGroup14
          CaptionOptions.Text = 'Al'#237'quota do PIS (R$)'
          Control = cxDBCurrencyEdit48
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem100: TdxLayoutItem
          Parent = dxLayoutGroup14
          CaptionOptions.Text = 'Valor do PIS'
          Control = cxDBCurrencyEdit50
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          Parent = dxLayoutGroup11
          CaptionOptions.Text = 'PIS ST'
          CaptionOptions.Visible = False
          Offsets.Left = 15
          ShowBorder = False
          Index = 1
        end
        object dxLayoutItem106: TdxLayoutItem
          Parent = dxLayoutControl1Group6
          CaptionOptions.Visible = False
          Control = cxLabel7
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem101: TdxLayoutItem
          Parent = dxLayoutControl1Group6
          CaptionOptions.Text = 'Al'#237'quota PIS ST (%)'
          Control = cxDBCurrencyEdit51
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem97: TdxLayoutItem
          Parent = dxLayoutControl1Group6
          CaptionOptions.Text = 'Base de C'#225'lculo ST'
          Control = cxDBCurrencyEdit47
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem103: TdxLayoutItem
          Parent = dxLayoutControl1Group6
          CaptionOptions.Text = 'Quantidade Vendida'
          Control = cxDBCurrencyEdit53
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem104: TdxLayoutItem
          Parent = dxLayoutControl1Group6
          CaptionOptions.Text = 'Al'#237'quota do PIS ST (R$)'
          Control = cxDBCurrencyEdit54
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem102: TdxLayoutItem
          Parent = dxLayoutControl1Group6
          CaptionOptions.Text = 'Valor do PIS ST'
          Control = cxDBCurrencyEdit52
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutSeparatorItem4: TdxLayoutSeparatorItem
          Parent = dxLayoutControl4Group_Root
          AlignVert = avBottom
          CaptionOptions.Text = 'Separator'
          Index = 1
        end
        object dxLayoutItem197: TdxLayoutItem
          Parent = GrupoPIS
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Calcula o PIS'
          Control = edtCalculaPIS
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object cxDBCurrencyEdit17: TcxDBCurrencyEdit [78]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'NF_VDOLAR'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.HotTrack = False
      TabOrder = 166
      Visible = False
      Height = 21
      Width = 96
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [79]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'NF_FATORX'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = ' ,0.00######;- ,0.00######'
      Style.HotTrack = False
      TabOrder = 167
      Visible = False
      Height = 21
      Width = 96
    end
    object cxDBCheckBox6: TcxDBCheckBox [80]
      Left = 10000
      Top = 10000
      Caption = 'Calcula FatorX '
      DataBinding.DataField = 'NF_CALCULA_FATORX'
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 168
      Transparent = True
      Visible = False
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [81]
      Left = 24
      Top = 289
      DataBinding.DataField = 'CODNF_CST'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 15
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'C'#243'd.'
          MinWidth = 35
          FieldName = 'CODIGO'
        end
        item
          Caption = 'Descri'#231#227'o'
          FieldName = 'DESCRICAO'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.GridLines = glNone
      Properties.ListSource = DSNF_CST
      Properties.OnChange = cxDBLookupComboBox1PropertiesChange
      Style.HotTrack = False
      TabOrder = 111
      Width = 972
    end
    object cxLabel1: TcxLabel [82]
      Left = 24
      Top = 343
      Caption = 'ICMS'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cbbICMSModalidadeBaseCalculo: TcxDBLookupComboBox [83]
      Left = 24
      Top = 378
      DataBinding.DataField = 'NF_ICMS_MODBC'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Style.HotTrack = False
      TabOrder = 115
      Width = 168
    end
    object cxDBCurrencyEdit19: TcxDBCurrencyEdit [84]
      Left = 112
      Top = 400
      DataBinding.DataField = 'NF_VBC'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 116
      Width = 80
    end
    object cxDBCurrencyEdit20: TcxDBCurrencyEdit [85]
      Left = 112
      Top = 422
      DataBinding.DataField = 'NF_PREDBC'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 117
      Width = 80
    end
    object cxDBCurrencyEdit21: TcxDBCurrencyEdit [86]
      Left = 112
      Top = 444
      DataBinding.DataField = 'NF_PICMS'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 118
      Width = 80
    end
    object cxDBCurrencyEdit22: TcxDBCurrencyEdit [87]
      Left = 112
      Top = 466
      DataBinding.DataField = 'NF_VICMS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 119
      Width = 80
    end
    object cxLabel2: TcxLabel [88]
      Left = 208
      Top = 343
      Caption = 'ICMS - Substitui'#231#227'o Tribut'#225'ria'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CbICMSModalidadeBCST: TcxDBLookupComboBox [89]
      Left = 208
      Top = 378
      DataBinding.DataField = 'NF_ICMS_MODBCST'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 127
      Width = 210
    end
    object cxDBCurrencyEdit24: TcxDBCurrencyEdit [90]
      Left = 338
      Top = 400
      DataBinding.DataField = 'NF_VBCST'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 128
      Width = 80
    end
    object cxDBCurrencyEdit25: TcxDBCurrencyEdit [91]
      Left = 338
      Top = 422
      DataBinding.DataField = 'NF_PREDBCST'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 129
      Width = 80
    end
    object cxDBCurrencyEdit26: TcxDBCurrencyEdit [92]
      Left = 338
      Top = 444
      DataBinding.DataField = 'NF_VBCSTDEST'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 130
      Width = 80
    end
    object cxDBCurrencyEdit27: TcxDBCurrencyEdit [93]
      Left = 338
      Top = 466
      DataBinding.DataField = 'NF_VBCSTRET'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 131
      Width = 80
    end
    object cxDBCurrencyEdit28: TcxDBCurrencyEdit [94]
      Left = 338
      Top = 488
      DataBinding.DataField = 'NF_PICMSST'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 132
      Width = 80
    end
    object cxDBCurrencyEdit29: TcxDBCurrencyEdit [95]
      Left = 338
      Top = 510
      DataBinding.DataField = 'NF_VBCSTDEST'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 133
      Width = 80
    end
    object cxDBCurrencyEdit30: TcxDBCurrencyEdit [96]
      Left = 338
      Top = 532
      DataBinding.DataField = 'NF_VICMSSTRET'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 134
      Width = 80
    end
    object cxDBCurrencyEdit31: TcxDBCurrencyEdit [97]
      Left = 338
      Top = 554
      DataBinding.DataField = 'NF_VICMSST'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 135
      Width = 80
    end
    object cxLabel3: TcxLabel [98]
      Left = 434
      Top = 343
      Hint = 'Diferencial de Al'#237'quota Interestadual'
      Caption = 'ICMS - DIFAL'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxDBCurrencyEdit32: TcxDBCurrencyEdit [99]
      Left = 542
      Top = 386
      DataBinding.DataField = 'NF_PICMSINTER'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 138
      Width = 80
    end
    object cxDBCurrencyEdit33: TcxDBCurrencyEdit [100]
      Left = 542
      Top = 408
      DataBinding.DataField = 'NF_PICMSUFDEST'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 139
      Width = 80
    end
    object cxDBCurrencyEdit34: TcxDBCurrencyEdit [101]
      Left = 542
      Top = 430
      DataBinding.DataField = 'NF_PICMSINTERPART'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 140
      Width = 80
    end
    object cxDBCurrencyEdit35: TcxDBCurrencyEdit [102]
      Left = 542
      Top = 452
      DataBinding.DataField = 'NF_VICMSUFDEST'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 141
      Width = 80
    end
    object cxDBCurrencyEdit36: TcxDBCurrencyEdit [103]
      Left = 542
      Top = 474
      DataBinding.DataField = 'NF_VICMSUFREMET'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 142
      Width = 80
    end
    object cxDBCheckBox7: TcxDBCheckBox [104]
      Left = 92
      Top = 506
      DataBinding.DataField = 'NF_VBC_IPI'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 120
      Transparent = True
    end
    object cxDBCheckBox5: TcxDBCheckBox [105]
      Left = 92
      Top = 527
      DataBinding.DataField = 'NF_VBC_CONFINS'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 121
      Transparent = True
    end
    object cxDBCheckBox3: TcxDBCheckBox [106]
      Left = 92
      Top = 548
      DataBinding.DataField = 'NF_VBC_PIS'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 122
      Transparent = True
    end
    object cxDBCheckBox2: TcxDBCheckBox [107]
      Left = 92
      Top = 569
      DataBinding.DataField = 'NF_VBC_FRETE'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 123
      Transparent = True
    end
    object cxDBCheckBox9: TcxDBCheckBox [108]
      Left = 502
      Top = 514
      DataBinding.DataField = 'NF_VBCST_IPI'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 143
      Transparent = True
    end
    object cxDBCheckBox12: TcxDBCheckBox [109]
      Left = 502
      Top = 535
      DataBinding.DataField = 'NF_VBCST_CONFINS'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 144
      Transparent = True
    end
    object cxDBCheckBox8: TcxDBCheckBox [110]
      Left = 502
      Top = 577
      DataBinding.DataField = 'NF_VBCST_FRETE'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 146
      Transparent = True
    end
    object cxDBCheckBox11: TcxDBCheckBox [111]
      Left = 502
      Top = 556
      DataBinding.DataField = 'NF_VBCST_FRETE'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 145
      Transparent = True
    end
    object cxDBCheckBox10: TcxDBCheckBox [112]
      Left = 502
      Top = 598
      DataBinding.DataField = 'NF_VBCST_II'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 147
      Transparent = True
    end
    object cxDBCheckBox4: TcxDBCheckBox [113]
      Left = 92
      Top = 590
      DataBinding.DataField = 'NF_VBC_II'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 124
      Transparent = True
    end
    object edtCalculaICMS: TcxDBComboBox [114]
      Left = 112
      Top = 311
      DataBinding.DataField = 'NF_CALCULA_ICMS'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 112
      Width = 75
    end
    object edtPath: TcxDBButtonEdit [115]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PATH'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBTextEdit27PropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 34
      Visible = False
      Width = 741
    end
    object BtnRecalcularImpostos: TcxButton [116]
      Left = 846
      Top = 193
      Width = 148
      Height = 33
      Caption = 'Recalcular Impostos'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000000000090000000E0000
        000F0000000F0000000F0000000F0000000F0000000F00000010000000100000
        00100000001000000010000000100000000F0000000A7B574BC1AC7968FFAC79
        68FFAB7968FFAB7968FFAB7968FFAA7968FFAA7969FFAA7969FFA97969FFA979
        69FFA97969FFA97A69FFA97A6AFFA87A6AFF78584CC1B27967FFF9F3EFFFF9F3
        EEFFFAF3EEFFFAF3EEFFFAF3EDFFF9F3EEFFF9F3EEFFF9F2EEFFF9F2EDFFF9F2
        EDFFF9F2EDFFF9F2EEFFF9F3EDFFF9F2EDFFB07764FFB37B69FFFAF3EFFF7867
        5FFF443026FF7A6961FFA0938CFFF5EEEAFFF9F3EFFF9F928DFF5E4D46FFC5BC
        B6FF44322AFF44322AFFD3CAC4FFF9F2EEFFB17966FFB47C6AFFFAF5F0FF7564
        5CFF75635CFFEDE6E1FF503C33FF817169FFFAF3EFFFF9F3F0FFFAF3EFFF6C5C
        55FF38251DFFDFD8D2FFF9F3EFFFF9F3EFFFB27A67FFB57E6CFFFAF5F1FFFAF5
        F1FFFAF4F1FFFAF5F0FF82726BFF473228FFCBC2BCFFFAF4F0FFFAF4F0FF8779
        72FF47352CFFFAF4F0FFFAF4EFFFFAF4EFFFB37B69FFB7806EFFFAF6F2FFFAF6
        F2FFFAF6F1FFFAF5F1FFAC9F98FF49332AFF92837CFFFAF5F0FFFAF5F0FF5542
        3CFF54433CFFE1DAD4FFFAF5F1FFFAF4F0FFB57D6AFFB88270FFFBF6F3FFFBF7
        F3FFFBF6F2FFFBF6F2FFD4CBC7FF4B362BFF68554CFFEEE8E3FF63544BFF3D2A
        21FFAFA49EFF897B74FF63514BFFFAF5F1FFB67F6DFFB98472FFFBF7F3FFFCF7
        F3FFFBF7F4FFFBF7F3FFF5F0ECFF533E34FF4D362DFFE6DFDCFFFBF6F2FFFBF6
        F2FFFBF6F2FFFBF6F2FFFBF6F2FFFAF5F2FFB7806EFFBB8674FFFCF8F5FFFCF8
        F5FFFCF8F4FFFBF7F4FF503A30FF513930FF4F3930FF4F392FFF4F372EFFFBF7
        F4FFFBF7F3FFFBF6F3FFFBF6F3FFFBF7F3FFB88270FFBC8976FFFCF8F6FFFCF9
        F5FFFBF8F5FFFCF8F5FFFCF8F5FFD6CEC9FF513B31FF79675EFFFBF8F5FFFCF7
        F4FFFBF7F5FFFBF8F4FFFBF7F4FFFBF7F4FFBA8473FFBE8B78FFFCF9F7FFFCF9
        F6FFFCF9F6FFFCF8F6FFFCF9F6FFFCF8F6FF91827AFF553F35FFEAE4E0FF8271
        68FF827169FFFCF8F5FFFCF8F5FFFCF8F4FFBB8774FFBF8C7AFFFDFAF8FFFCFA
        F7FFFCFAF7FFFDFAF7FFFCF9F7FFFDFAF6FFFBF7F4FFAA9E97FF827169FF543F
        34FF7F6E66FFFCF9F6FFFCF9F6FFFCF8F6FFBD8977FFC08F7DFFFDFAF8FFFDFA
        F8FFFCFBF8FFFCFAF7FFFDFAF7FFFCFAF8FFFCFAF8FFFDF9F7FFFCFAF8FFFDF9
        F7FFFCF9F7FFFCF9F6FFFCF9F6FFFCF9F7FFBE8B78FF98766AC0CD9F8EFFCC9F
        8EFFCC9F8EFFCC9F8DFFCC9E8DFFCB9E8DFFCB9D8CFFCB9D8CFFCA9C8BFFCA9C
        8BFFCA9B8AFFC99A89FFC89A88FFC89988FF947264C100000003000000040000
        0005000000050000000500000005000000050000000500000005000000050000
        00050000000500000005000000050000000500000003}
      TabOrder = 53
      OnClick = BtnRecalcularImpostosClick
    end
    object cxDBTextEdit6: TcxDBTextEdit [117]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'DESCRICAO_NFE'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 169
      Visible = False
      Height = 21
      Width = 972
    end
    object cxDBCurrencyEdit18: TcxDBCurrencyEdit [118]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALC_QPESO_BRUTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = '0.00'
      Style.HotTrack = False
      TabOrder = 107
      Visible = False
      Width = 121
    end
    object edtValorPauta: TcxDBCurrencyEdit [119]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_VPRODUTO_PAUTA'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.HotTrack = False
      TabOrder = 108
      Visible = False
      Width = 121
    end
    object EdtGrupoÎProduto_Grupo: TcxDBButtonEdit [120]
      Left = 26
      Top = 207
      DataBinding.DataField = 'CODPRODUTO_GRUPO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 54
      Width = 86
    end
    object LblGrupoÎProduto_GrupoÎDESCRICAO: TcxLabel [121]
      Left = 113
      Top = 211
      Style.HotTrack = False
      Transparent = True
    end
    object EdtNCMÎNF_NCM: TcxDBButtonEdit [122]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CODNF_NCM'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 69
      Visible = False
      Width = 130
    end
    object EdtCFOPÎNF_CFOP: TcxDBButtonEdit [123]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'CODNF_CFOP'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnValidate = EdtCFOPÎNF_CFOPPropertiesValidate
      Style.HotTrack = False
      TabOrder = 58
      Visible = False
      Height = 21
      Width = 125
    end
    object LblNCMÎNF_NCMÎDESCRICAO: TcxLabel [124]
      Left = 10000
      Top = 10000
      AutoSize = False
      Style.HotTrack = False
      Transparent = True
      Visible = False
      Height = 21
      Width = 530
    end
    object LblCFOPÎNF_CFOPÎDESCRICAO: TcxLabel [125]
      Left = 10000
      Top = 10000
      AutoSize = False
      Style.HotTrack = False
      Transparent = True
      Visible = False
      Height = 21
      Width = 283
    end
    object cxLabel15: TcxLabel [126]
      Left = 10000
      Top = 10000
      Caption = 'Base de C'#225'lculo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object edtResultadoICMSBC: TcxDBTextEdit [127]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_VBC'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 75
      Visible = False
      Width = 107
    end
    object edtResultadoIPIBC: TcxDBTextEdit [128]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_IPI_VBC'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 76
      Visible = False
      Width = 107
    end
    object edtResultadoPISBC: TcxDBTextEdit [129]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_PIS_VBC'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 77
      Visible = False
      Width = 107
    end
    object edtResultadoCOFINSBC: TcxDBTextEdit [130]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_COFINS_VBC'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 78
      Visible = False
      Width = 107
    end
    object edtResultadoISSQNBC: TcxDBTextEdit [131]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_ISSQN_VBC'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 79
      Visible = False
      Width = 107
    end
    object edtResultadoIIBC: TcxDBTextEdit [132]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_II_VBC'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 80
      Visible = False
      Width = 107
    end
    object cxLabel16: TcxLabel [133]
      Left = 10000
      Top = 10000
      Caption = 'Al'#237'quota'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object cxDBCurrencyEdit76: TcxDBCurrencyEdit [134]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_PICMS'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 82
      Visible = False
      Width = 131
    end
    object cxDBCurrencyEdit77: TcxDBCurrencyEdit [135]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_IPI_PIPI'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 83
      Visible = False
      Width = 131
    end
    object cxDBCurrencyEdit78: TcxDBCurrencyEdit [136]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_PIS_PPIS'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 84
      Visible = False
      Width = 131
    end
    object cxDBCurrencyEdit79: TcxDBCurrencyEdit [137]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_COFINS_PCOFINS'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 85
      Visible = False
      Width = 131
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [138]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_ISSQN_VALIQ'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 86
      Visible = False
      Width = 131
    end
    object cxDBCurrencyEdit9: TcxDBCurrencyEdit [139]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_II_PII'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 87
      Visible = False
      Width = 131
    end
    object cxLabel17: TcxLabel [140]
      Left = 10000
      Top = 10000
      Caption = 'Valor do Imposto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object edtResultadoICMSValor: TcxDBTextEdit [141]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_VICMS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 89
      Visible = False
      Width = 80
    end
    object BtnDetalhesICMS: TcxButton [142]
      Left = 10000
      Top = 10000
      Width = 110
      Height = 21
      Hint = 'Ver detalhes do ICMS'
      Caption = 'Detalhes ICMS'
      Colors.DefaultText = 10073889
      Colors.Hot = 14079702
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
        4DFF251A0F330000000000000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FFFFFFFFFFB8824DFFB8824DFFF1E6
        DBFFB8824DFF251A0F3300000000000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFF1E6DBFFB882
        4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
        DBFFB8824DFFB8824DFFB8824DFF251A0F33B8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1E6DBFFB8824DFFF1E6DBFFB8824DFFB8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF848484FF848484FF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FFFAFAFAFA7B7B7BDD1A1A1A33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF7B7B7BDD1A1A1A3300000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF838383FE8484
        84FF1A1A1A330000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 90
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnDetalhesICMSClick
    end
    object edtResultadoIPIValor: TcxDBTextEdit [143]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_IPI_VIPI'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 91
      Visible = False
      Width = 80
    end
    object BtnDetalhesIPI: TcxButton [144]
      Left = 10000
      Top = 10000
      Width = 98
      Height = 21
      Hint = 'Ver detalhes do IPI'
      Caption = 'Detalhes IPI'
      Colors.DefaultText = 10073889
      Colors.Hot = 14079702
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
        4DFF251A0F330000000000000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FFFFFFFFFFB8824DFFB8824DFFF1E6
        DBFFB8824DFF251A0F3300000000000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFF1E6DBFFB882
        4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
        DBFFB8824DFFB8824DFFB8824DFF251A0F33B8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1E6DBFFB8824DFFF1E6DBFFB8824DFFB8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF848484FF848484FF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FFFAFAFAFA7B7B7BDD1A1A1A33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF7B7B7BDD1A1A1A3300000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF838383FE8484
        84FF1A1A1A330000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 92
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnDetalhesIPIClick
    end
    object edtResultadoPISValor: TcxDBTextEdit [145]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_PIS_VPIS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 93
      Visible = False
      Width = 80
    end
    object BtnDetalhesPIS: TcxButton [146]
      Left = 10000
      Top = 10000
      Width = 102
      Height = 21
      Hint = 'Ver detalhes do PIS'
      Caption = 'Detalhes PIS'
      Colors.DefaultText = 10073889
      Colors.Hot = 14079702
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
        4DFF251A0F330000000000000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FFFFFFFFFFB8824DFFB8824DFFF1E6
        DBFFB8824DFF251A0F3300000000000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFF1E6DBFFB882
        4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
        DBFFB8824DFFB8824DFFB8824DFF251A0F33B8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1E6DBFFB8824DFFF1E6DBFFB8824DFFB8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF848484FF848484FF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FFFAFAFAFA7B7B7BDD1A1A1A33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF7B7B7BDD1A1A1A3300000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF838383FE8484
        84FF1A1A1A330000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 94
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnDetalhesPISClick
    end
    object edtResultadoCOFINSValor: TcxDBTextEdit [147]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_COFINS_VCOFINS'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 95
      Visible = False
      Width = 80
    end
    object BtnDetalhesCOFINS: TcxButton [148]
      Left = 10000
      Top = 10000
      Width = 125
      Height = 21
      Hint = 'Ver detalhes do COFINS'
      Caption = 'Detalhes COFINS'
      Colors.DefaultText = 10073889
      Colors.Hot = 14079702
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
        4DFF251A0F330000000000000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FFFFFFFFFFB8824DFFB8824DFFF1E6
        DBFFB8824DFF251A0F3300000000000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFF1E6DBFFB882
        4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
        DBFFB8824DFFB8824DFFB8824DFF251A0F33B8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1E6DBFFB8824DFFF1E6DBFFB8824DFFB8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF848484FF848484FF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FFFAFAFAFA7B7B7BDD1A1A1A33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF7B7B7BDD1A1A1A3300000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF838383FE8484
        84FF1A1A1A330000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 96
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnDetalhesCOFINSClick
    end
    object edtResultadoISSQNValor: TcxDBTextEdit [149]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_ISSQN_VISSQN'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 97
      Visible = False
      Width = 80
    end
    object cxDBCurrencyEdit10: TcxDBCurrencyEdit [150]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'NF_II_VII'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.HotTrack = False
      TabOrder = 98
      Visible = False
      Height = 23
      Width = 80
    end
    object BtnDetalhesISSQN: TcxButton [151]
      Left = 10000
      Top = 10000
      Width = 120
      Height = 22
      Hint = 'Ver detalhes do COFINS'
      Caption = 'Detalhes ISSQN'
      Colors.DefaultText = 10073889
      Colors.Hot = 14079702
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
        4DFF251A0F330000000000000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FFFFFFFFFFB8824DFFB8824DFFF1E6
        DBFFB8824DFF251A0F3300000000000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFF1E6DBFFB882
        4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
        DBFFB8824DFFB8824DFFB8824DFF251A0F33B8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1E6DBFFB8824DFFF1E6DBFFB8824DFFB8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF848484FF848484FF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FFFAFAFAFA7B7B7BDD1A1A1A33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF7B7B7BDD1A1A1A3300000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF838383FE8484
        84FF1A1A1A330000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 99
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnDetalhesISSQNClick
    end
    object BtnDetalhesII: TcxButton [152]
      Left = 10000
      Top = 10000
      Width = 92
      Height = 22
      Hint = 'Ver detalhes do COFINS'
      Caption = 'Detalhes II'
      Colors.DefaultText = 10073889
      Colors.Hot = 14079702
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
        4DFF251A0F330000000000000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FFFFFFFFFFB8824DFFB8824DFFF1E6
        DBFFB8824DFF251A0F3300000000000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFF1E6DBFFB882
        4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
        DBFFB8824DFFB8824DFFB8824DFF251A0F33B8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1E6DBFFB8824DFFF1E6DBFFB8824DFFB8824DFF00000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFF251A0F3300000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF848484FF848484FF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FFFAFAFAFA7B7B7BDD1A1A1A33000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
        84FF7B7B7BDD1A1A1A3300000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF838383FE8484
        84FF1A1A1A330000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 100
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnDetalhesIIClick
    end
    object edtALIQNacional: TcxDBCurrencyEdit [153]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_ALIQ_NACIONAL'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00%'
      Properties.EditFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 101
      Visible = False
      Width = 77
    end
    object edtALIQImportacao: TcxDBCurrencyEdit [154]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_ALIQ_IMPORTACAO'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00%'
      Properties.EditFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 102
      Visible = False
      Width = 77
    end
    object edtALIQEstadual: TcxDBCurrencyEdit [155]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_ALIQ_ESTADUAL'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00%'
      Properties.EditFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 103
      Visible = False
      Width = 77
    end
    object edtALIQMunicipal: TcxDBCurrencyEdit [156]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_ALIQ_MUNICIPAL'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.00%'
      Properties.EditFormat = '0.00%'
      Style.HotTrack = False
      TabOrder = 104
      Visible = False
      Width = 77
    end
    object edtNumeroPedidoNFe: TcxDBTextEdit [157]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_XPED'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 105
      Visible = False
      Width = 66
    end
    object edtNumeroItemNFe: TcxDBCurrencyEdit [158]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'NF_NITEMPED'
      DataBinding.DataSource = DS
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Style.HotTrack = False
      TabOrder = 106
      Visible = False
      Height = 21
      Width = 66
    end
    object EdtDespesasAcessorias: TcxDBCurrencyEdit [159]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CALC_VOUTRO'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.HotTrack = False
      TabOrder = 109
      Visible = False
      Width = 121
    end
    object PnlFrameAnexos: TPanel [160]
      Left = 10000
      Top = 10000
      Width = 992
      Height = 487
      BevelOuter = bvNone
      Caption = 'Anexos'
      Color = 16505534
      ParentBackground = False
      TabOrder = 51
      Visible = False
    end
    object cxDBMemo2: TcxDBMemo [161]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'OBSERVACAO_PRODUTO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 32
      Visible = False
      Height = 413
      Width = 992
    end
    object cxDBMemo1: TcxDBMemo [162]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'OBS_PRODUCAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 49
      Visible = False
      Height = 298
      Width = 992
    end
    object cxDBCheckBox13: TcxDBCheckBox [163]
      Left = 10000
      Top = 10000
      Caption = 'Instala'#231#227'o'
      DataBinding.DataField = 'TEM_INSTALACAO'
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 45
      Transparent = True
      Visible = False
    end
    object EdtValorFrete: TcxDBCurrencyEdit [164]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_VFRETE'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 8
      Style.HotTrack = False
      TabOrder = 110
      Visible = False
      Width = 121
    end
    object cxDBCheckBox14: TcxDBCheckBox [165]
      Left = 92
      Top = 611
      DataBinding.DataField = 'NF_VBC_DESCONTO'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 125
      Transparent = True
    end
    object cxDBCheckBox15: TcxDBCheckBox [166]
      Left = 502
      Top = 619
      DataBinding.DataField = 'NF_VBCST_DESCONTO'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.DisplayGrayed = 'N'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 148
      Transparent = True
    end
    object EdtCest: TcxDBTextEdit [167]
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria'
      DataBinding.DataField = 'CODNF_CEST'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 71
      Visible = False
      Width = 72
    end
    object CbCalculaICMSST: TcxDBComboBox [168]
      Left = 276
      Top = 311
      DataBinding.DataField = 'NF_CALCULA_ICMS_ST'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 113
      Width = 75
    end
    object cxDBCheckBox16: TcxDBCheckBox [169]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'Busca pre'#231'o dos Materiais'
      DataBinding.DataField = 'RECALCULA_VALOR_VENDA'
      DataBinding.DataSource = DS
      ParentColor = False
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clGray
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 12615680
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 186
      Transparent = True
      Visible = False
      Height = 22
      Width = 138
    end
    object CkTem_Producao_Finalizada_NoEnvio: TcxDBCheckBox [170]
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'Finaliza "automaticamente" o produto no envio para produ'#231#227'o'
      DataBinding.DataField = 'TEM_PRODUCAO_FINALIZADA_NOENVIO'
      DataBinding.DataSource = DS
      ParentColor = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 48
      Transparent = True
      Visible = False
      Height = 21
      Width = 301
    end
    object cxDBCheckBox18: TcxDBCheckBox [171]
      Left = 10000
      Top = 10000
      Caption = 'Reverso'
      DataBinding.DataField = 'TEM_REVERSO'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 46
      Transparent = True
      Visible = False
    end
    object cxDBCheckBox19: TcxDBCheckBox [172]
      Left = 10000
      Top = 10000
      Caption = 'Com Logo'
      DataBinding.DataField = 'TEM_LOGO'
      DataBinding.DataSource = DS
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 47
      Transparent = True
      Visible = False
    end
    object EdtAcabamentoÎAcabamentoÎDESCRICAO: TcxDBTextEdit [173]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ACABAMENTO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 40
      Visible = False
      Width = 930
    end
    object EdtAcabamentoÎAcabamento: TcxDBButtonEdit [174]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CODACABAMENTO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 39
      Visible = False
      Width = 61
    end
    object LbTitulo: TcxLabel [175]
      Left = 4
      Top = 0
      Caption = 'Produto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8553090
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 10073889
      Style.IsFontAssigned = True
      Transparent = True
    end
    object EdtVOutro_Manual: TcxDBCurrencyEdit [176]
      Left = 845
      Top = 107
      DataBinding.DataField = 'CALC_VOUTRO_MANUAL'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 8
      Properties.OnValidate = EdtVOutro_ManualPropertiesValidate
      Style.HotTrack = False
      TabOrder = 20
      Width = 78
    end
    object BtnMenu: TcxButton [177]
      Left = 1030
      Top = 257
      Width = 123
      Height = 25
      Caption = 'Menu'
      DropDownMenu = MenuDireita
      Kind = cxbkDropDown
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000011744558745469746C6500446F776E3B4172726F773BBD
        FC82580000005849444154785EDDD3C10980301044D16DF0B763013691126CC1
        EE26B9E432203211113CFCEB23D9654BD2A3DE01D84F797F0686CE480B315FB0
        82605F88107C0609C2F510EF11922D3842B24647D88E563130910F8E29AC035F
        1CCA5C398A91620000000049454E44AE426082}
      TabOrder = 184
    end
    object LayoutControlCustos: TdxLayoutControl [178]
      Left = 10000
      Top = 10000
      Width = 992
      Height = 487
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      TabOrder = 171
      Visible = False
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
      object dxGaugeControl1: TdxGaugeControl
        Left = 10000
        Top = 10000
        Width = 277
        Height = 141
        BorderStyle = cxcbsNone
        Transparent = True
        Visible = False
        object GcGraficoCustos: TdxGaugeCircularWideScale
          OptionsAnimate.Enabled = True
          OptionsLayout.CenterPositionFactorX = 0.494742959737777700
          OptionsLayout.CenterPositionFactorY = 0.501631438732147200
          OptionsLayout.HeightFactor = 0.882673978805542000
          OptionsLayout.WidthFactor = 0.964115321636200000
          StyleName = 'CleanWhite'
        end
      end
      object SpCustoMateriais: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = 16725301
        Pen.Style = psClear
        Visible = False
      end
      object LbCustoMateriais: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Lista de Materiais'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object SpImpostos: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = 6022875
        Pen.Style = psClear
        Visible = False
      end
      object LbImpostos: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Impostos'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object SpCustosProducao: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = 13162089
        Pen.Style = psClear
        Visible = False
      end
      object LbCustoProducao: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Centro de Trabalho'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object SpLucro: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = 4652880
        Pen.Style = psClear
        Visible = False
      end
      object LbLucro: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Lucro'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object SpComissao: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = 10461087
        Pen.Style = psClear
        Visible = False
      end
      object LbComissao: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Comiss'#227'o'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object LbValorCompra: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Valor Base'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object SpValorCompra: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = 5871579
        Pen.Style = psClear
        Visible = False
      end
      object LbCustoVariavel: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Custo Vari'#225'vel'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object SpCustoVariavel: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = 8306847
        Pen.Style = psClear
        Visible = False
      end
      object LbCustoFixo: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Custo Fixo'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object SpCustoFixo: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = 11503799
        Pen.Style = psClear
        Visible = False
      end
      object LbCustoFinanceiro: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Custo Financeiro'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object SpCustoFinanceiro: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = 6512863
        Pen.Style = psClear
        Visible = False
      end
      object PnlFrameCustos: TPanel
        Left = 0
        Top = 0
        Width = 992
        Height = 487
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
      end
      object cxDBCurrencyEdit4: TcxDBCurrencyEdit
        Left = 10000
        Top = 10000
        DataBinding.DataField = 'PERC_MARGEM_CONTRIBUICAO'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.DisplayFormat = '0.00%'
        Style.HotTrack = False
        TabOrder = 4
        Visible = False
        Width = 121
      end
      object EdtCompCustoLoja: TcxDBCurrencyEdit
        Left = 10000
        Top = 10000
        Margins.Left = 2
        Margins.Top = 2
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'CUSTO_LOJA'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '##,###,##0.00##'
        Properties.ReadOnly = True
        Properties.UseDisplayFormatWhenEditing = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -25
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = 12615680
        Style.IsFontAssigned = True
        TabOrder = 9
        Visible = False
        Height = 43
        Width = 123
      end
      object LbNaoCobrados: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Custos N'#227'o Cobrados'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object SpNaoCobrados: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = clRed
        Pen.Style = psClear
        Visible = False
      end
      object LbFrete: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Frete'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object SpFrete: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = 4375039
        Pen.Style = psClear
        Visible = False
      end
      object LbCustosExtras: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'Outros Valores'
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object SpCustosExtras: TShape
        Left = 10000
        Top = 10000
        Width = 20
        Height = 20
        Brush.Color = 1572846
        Pen.Style = psClear
        Visible = False
      end
      object LayoutControlCustosGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem235: TdxLayoutItem
        Parent = GrupoGrafico
        AlignHorz = ahLeft
        CaptionOptions.Text = 'dxGaugeControl1'
        CaptionOptions.Visible = False
        Control = dxGaugeControl1
        ControlOptions.OriginalHeight = 141
        ControlOptions.OriginalWidth = 277
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup40: TdxLayoutGroup
        Parent = GrupoGrafico
        CaptionOptions.Text = 'Legenda'
        ItemIndex = 8
        Index = 1
      end
      object dxLayoutItem236: TdxLayoutItem
        Parent = dxLayoutGroup41
        Control = SpCustoMateriais
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem237: TdxLayoutItem
        Parent = dxLayoutGroup41
        AlignVert = avClient
        CaptionOptions.Text = 'cxLabel3'
        CaptionOptions.Visible = False
        Control = LbCustoMateriais
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 86
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem238: TdxLayoutItem
        Parent = dxLayoutGroup44
        Control = SpImpostos
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem239: TdxLayoutItem
        Parent = dxLayoutGroup44
        CaptionOptions.Text = 'cxLabel7'
        CaptionOptions.Visible = False
        Control = LbImpostos
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 46
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem240: TdxLayoutItem
        Parent = dxLayoutGroup42
        Control = SpCustosProducao
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem241: TdxLayoutItem
        Parent = dxLayoutGroup42
        CaptionOptions.Text = 'cxLabel8'
        CaptionOptions.Visible = False
        Control = LbCustoProducao
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 95
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem242: TdxLayoutItem
        Parent = dxLayoutGroup43
        Control = SpLucro
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem243: TdxLayoutItem
        Parent = dxLayoutGroup43
        CaptionOptions.Text = 'cxLabel9'
        CaptionOptions.Visible = False
        Control = LbLucro
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 31
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem253: TdxLayoutItem
        Parent = GrupoGcComissao
        AlignHorz = ahLeft
        AlignVert = avTop
        Control = SpComissao
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem254: TdxLayoutItem
        Parent = GrupoGcComissao
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'cxLabel3'
        CaptionOptions.Visible = False
        Control = LbComissao
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 49
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object GrupoGcComissao: TdxLayoutGroup
        Parent = dxLayoutGroup40
        CaptionOptions.Text = 'New Group'
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object dxLayoutItem260: TdxLayoutItem
        Parent = dxLayoutGroup39
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Visible = False
        Control = LbValorCompra
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 55
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem261: TdxLayoutItem
        Parent = dxLayoutGroup39
        AlignHorz = ahLeft
        AlignVert = avTop
        Control = SpValorCompra
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem213: TdxLayoutItem
        Parent = dxLayoutGroup47
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = LbCustoVariavel
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 72
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem214: TdxLayoutItem
        Parent = dxLayoutGroup47
        Control = SpCustoVariavel
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem215: TdxLayoutItem
        Parent = dxLayoutGroup48
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = LbCustoFixo
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 53
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem216: TdxLayoutItem
        Parent = dxLayoutGroup48
        Control = SpCustoFixo
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem217: TdxLayoutItem
        Parent = dxLayoutGroup49
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = LbCustoFinanceiro
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 83
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem218: TdxLayoutItem
        Parent = dxLayoutGroup49
        Control = SpCustoFinanceiro
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem220: TdxLayoutItem
        Parent = LayoutControlCustosGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = PnlFrameCustos
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 85
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem160: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = '% Margem Contribui'#231#227'o'
        CaptionOptions.Layout = clTop
        Control = cxDBCurrencyEdit4
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = -1
      end
      object dxLayoutItem192: TdxLayoutItem
        AlignVert = avClient
        CaptionOptions.Text = 'Custo Loja'
        CaptionOptions.Layout = clTop
        Control = EdtCompCustoLoja
        ControlOptions.OriginalHeight = 43
        ControlOptions.OriginalWidth = 123
        ControlOptions.ShowBorder = False
        Index = -1
      end
      object dxLayoutItem219: TdxLayoutItem
        Parent = dxLayoutGroup46
        CaptionOptions.Visible = False
        Control = LbNaoCobrados
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 107
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem222: TdxLayoutItem
        Parent = dxLayoutGroup46
        Control = SpNaoCobrados
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object GrupoGraficoMarkup: TdxLayoutGroup
        Parent = dxLayoutGroup40
        CaptionOptions.Text = 'New Group'
        ItemIndex = 2
        ShowBorder = False
        Index = 8
      end
      object dxLayoutGroup39: TdxLayoutGroup
        Parent = dxLayoutGroup40
        CaptionOptions.Text = 'New Group'
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup41: TdxLayoutGroup
        Parent = dxLayoutGroup40
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup43: TdxLayoutGroup
        Parent = dxLayoutGroup40
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 9
      end
      object GrupoGrafico: TdxLayoutGroup
        CaptionOptions.Text = 'Detalhes do Lucro'
        ItemIndex = 1
        Index = -1
      end
      object dxLayoutItem223: TdxLayoutItem
        Parent = dxLayoutGroup45
        CaptionOptions.Visible = False
        Control = LbFrete
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 28
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem224: TdxLayoutItem
        Parent = dxLayoutGroup45
        Control = SpFrete
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem225: TdxLayoutItem
        Parent = dxLayoutGroup36
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Visible = False
        Control = LbCustosExtras
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 73
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem226: TdxLayoutItem
        Parent = dxLayoutGroup36
        AlignHorz = ahLeft
        AlignVert = avTop
        Control = SpCustosExtras
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup36: TdxLayoutGroup
        Parent = dxLayoutGroup40
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 6
      end
      object dxLayoutGroup42: TdxLayoutGroup
        Parent = dxLayoutGroup40
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object dxLayoutGroup44: TdxLayoutGroup
        Parent = dxLayoutGroup40
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 4
      end
      object dxLayoutGroup45: TdxLayoutGroup
        Parent = dxLayoutGroup40
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 5
      end
      object dxLayoutGroup46: TdxLayoutGroup
        Parent = dxLayoutGroup40
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 7
      end
      object dxLayoutGroup47: TdxLayoutGroup
        Parent = GrupoGraficoMarkup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup48: TdxLayoutGroup
        Parent = GrupoGraficoMarkup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup49: TdxLayoutGroup
        Parent = GrupoGraficoMarkup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
    end
    object cxDBCheckBox20: TcxDBCheckBox [179]
      Left = 567
      Top = 193
      AutoSize = False
      Caption = 'N'#227'o Recalcular Impostos na Impress'#227'o da Nota'
      DataBinding.DataField = 'PODE_RECALCULAR_IMPOSTOS'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 35345
      Style.IsFontAssigned = True
      TabOrder = 52
      Transparent = True
      Height = 35
      Width = 278
    end
    object cxDBTextEdit8: TcxDBTextEdit [180]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'CODIGOEAN'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 57
      Visible = False
      Height = 21
      Width = 132
    end
    object cxDBTextEdit18: TcxDBTextEdit [181]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'CODFABRICA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 56
      Visible = False
      Height = 21
      Width = 132
    end
    object CkManterMargem: TcxDBCheckBox [182]
      Left = 10000
      Top = 10000
      Caption = 'Manter valor Unit'#225'rio'
      DataBinding.DataField = 'RECALCULA_VALOR_VENDA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'N'
      Properties.ValueUnchecked = 'S'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 35345
      Style.IsFontAssigned = True
      TabOrder = 187
      Transparent = True
      Visible = False
    end
    object cxLabel11: TcxLabel [183]
      Left = 10000
      Top = 10000
      Caption = 'R$ Unit'#225'rio: (R$ 660,00/ 12 UN)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 35345
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object cxDBButtonEdit1: TcxDBTextEdit [184]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CODNF_CST'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 68
      Visible = False
      Width = 74
    end
    object CbPodeFaturar: TcxDBComboBox [185]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PODE_FATURAR'
      DataBinding.DataSource = DS
      Enabled = False
      Properties.Items.Strings = (
        'S'
        'N')
      Style.HotTrack = False
      TabOrder = 28
      Visible = False
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [186]
      Left = 542
      Top = 364
      DataBinding.DataField = 'NF_vBCUFDest'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 137
      Width = 80
    end
    object EdtPDesc_Manual: TcxDBCurrencyEdit [187]
      Left = 618
      Top = 107
      DataBinding.DataField = 'CALC_PDESC_MANUAL'
      DataBinding.DataSource = DS
      Properties.OnValidate = EdtPDesc_ManualPropertiesValidate
      Style.HotTrack = False
      TabOrder = 17
      Width = 70
    end
    object EdtPOutro_Manual: TcxDBCurrencyEdit [188]
      Left = 766
      Top = 107
      DataBinding.DataField = 'CALC_POUTRO_MANUAL'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '0.##%'
      Properties.OnValidate = EdtPOutro_ManualPropertiesValidate
      Style.HotTrack = False
      TabOrder = 19
      Width = 76
    end
    object edtImpostos: TcxDBCurrencyEdit [189]
      Left = 926
      Top = 107
      DataBinding.DataField = 'TotalImpostos'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 8
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 21
      Width = 78
    end
    object edtValor_Original: TcxDBCurrencyEdit [190]
      Left = 359
      Top = 107
      DataBinding.DataField = 'CALC_VALOR_ORIGINAL'
      DataBinding.DataSource = DS
      Enabled = False
      Properties.OnChange = edtValor_OriginalPropertiesChange
      Style.HotTrack = False
      TabOrder = 15
      Width = 91
    end
    object cbxTipo_Desconto: TcxDBComboBox [191]
      Left = 453
      Top = 107
      DataBinding.DataField = 'CALC_TIPO_DESCONTO'
      DataBinding.DataSource = DS
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 16
      Width = 162
    end
    object btnAtualizarValor_Original: TcxButton [192]
      Left = 164
      Top = 106
      Width = 96
      Height = 22
      Hint = 'Atualizar o valor original pelo cadastro do produto'
      Caption = 'Valor Original'
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = ImgListBotoes16
      TabOrder = 13
    end
    object dtValor_Original: TcxDBDateEdit [193]
      Left = 263
      Top = 107
      AutoSize = False
      DataBinding.DataField = 'DT_VALOR_ORIGINAL'
      DataBinding.DataSource = DS
      Enabled = False
      Style.HotTrack = False
      TabOrder = 14
      Height = 21
      Width = 93
    end
    object edtNF_pCredSN: TcxDBCurrencyEdit [194]
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'NF_pCredSN'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 72
      Visible = False
      Height = 21
      Width = 60
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [195]
      Left = 10000
      Top = 10000
      Hint = 'Empresa Emitente tem que ser Simples nacional'
      AutoSize = False
      DataBinding.DataField = 'NF_vCredICMSSN'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 73
      Visible = False
      Height = 21
      Width = 77
    end
    object CBSimNaoTem_Diferimento: TcxDBLookupComboBox [196]
      Left = 768
      Top = 361
      DataBinding.DataField = 'TEM_DIFERIMENTO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 149
      Width = 146
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [197]
      Left = 768
      Top = 383
      DataBinding.DataField = 'NF_PDIF'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 150
      Width = 100
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit [198]
      Left = 768
      Top = 405
      DataBinding.DataField = 'NF_VICMSOP'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 151
      Width = 100
    end
    object cxDBCurrencyEdit8: TcxDBCurrencyEdit [199]
      Left = 768
      Top = 427
      DataBinding.DataField = 'NF_VICMSDIF'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DisplayFormat = '0.##%'
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 152
      Width = 100
    end
    object cxDBTextEdit5: TcxDBTextEdit [200]
      Left = 768
      Top = 449
      DataBinding.DataField = 'NF_CBENEF'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = 4737096
      Style.IsFontAssigned = True
      TabOrder = 153
      Width = 170
    end
    object LblCFOPÎNF_CFOPÎOPERACAO: TcxTextEdit [201]
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 61
      Visible = False
      Width = 121
    end
    object LblCFOPÎNF_CFOPÎENTRADA_SAIDA: TcxTextEdit [202]
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 60
      Visible = False
      Width = 84
    end
    object LblCFOPÎNF_CFOPÎPODE_NFE: TcxTextEdit [203]
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 62
      Visible = False
      Width = 40
    end
    object LblCFOPÎNF_CFOPÎPODE_NFCE: TcxTextEdit [204]
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 63
      Visible = False
      Width = 40
    end
    object LblCFOPÎNF_CFOPÎPODE_TRANSPORTE: TcxTextEdit [205]
      Left = 10000
      Top = 10000
      AutoSize = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 64
      Visible = False
      Height = 21
      Width = 54
    end
    object LblCFOPÎNF_CFOPÎTIPO: TcxTextEdit [206]
      Left = 10000
      Top = 10000
      AutoSize = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 67
      Visible = False
      Height = 21
      Width = 77
    end
    object LblCFOPÎNF_CFOPÎPODE_DEVOLUCAO: TcxTextEdit [207]
      Left = 10000
      Top = 10000
      AutoSize = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 66
      Visible = False
      Height = 21
      Width = 51
    end
    object LblCFOPÎNF_CFOPÎPODE_COMUNICACAO: TcxTextEdit [208]
      Left = 10000
      Top = 10000
      AutoSize = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 65
      Visible = False
      Height = 21
      Width = 64
    end
    object edtLocalÎLocal: TcxDBButtonEdit [209]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'CODLOCAL'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 41
      Visible = False
      Width = 61
    end
    object cxButton1: TcxButton [210]
      Left = 65
      Top = 106
      Width = 96
      Height = 22
      Hint = 'Atualizar o valor original pelo cadastro do produto'
      Caption = 'Abrir Cadastro'
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = ImgListBotoes16
      TabOrder = 12
      OnClick = cxButton1Click
    end
    object edtNF_INFADPROD: TcxDBMemo [211]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NF_INFADPROD'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 170
      Visible = False
      Height = 327
      Width = 972
    end
    object pnlProducaoEtapas: TPanel [212]
      Left = 10000
      Top = 10000
      Width = 992
      Height = 487
      Caption = 'pnlProducaoEtapas'
      Color = 16505534
      ParentBackground = False
      TabOrder = 50
      Visible = False
    end
    object edtAtendenteÎPessoas: TcxDBButtonEdit [213]
      Tag = 37
      Left = 10000
      Top = 10000
      Hint = 'F2 - Consulta / F3 - Cadastro'
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'PESSOA_FUNCIONARIO_SEQUENCIA'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.Buttons = <
        item
          Enabled = False
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 29
      Visible = False
      Height = 23
      Width = 71
    end
    object lblAtendenteÎPessoasÎRAZAOSOCIAL: TcxLabel [214]
      Left = 10000
      Top = 10000
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      Properties.Alignment.Vert = taVCenter
      Visible = False
      Height = 23
      Width = 298
      AnchorY = 10012
    end
    object edtAtendenteÎPessoasÎCOMISSAO: TcxDBCurrencyEdit [215]
      Left = 10000
      Top = 10000
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSize = False
      DataBinding.DataField = 'COMISSAO'
      DataBinding.DataSource = DS
      Properties.DisplayFormat = '%,0.00;-%,0.00'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 31
      Visible = False
      Height = 23
      Width = 63
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      CaptionOptions.Visible = False
      ItemIndex = 2
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      Parent = nil
      CaptionOptions.Visible = False
      Index = -1
    end
    inherited GrupoMenu: TdxLayoutGroup
      LayoutDirection = ldVertical
      Index = 3
    end
    inherited MainLayoutItem7: TdxLayoutItem
      Visible = False
    end
    inherited MainLayoutItem11: TdxLayoutItem
      Visible = False
    end
    inherited MainLayoutItem12: TdxLayoutItem
      ControlOptions.OriginalWidth = 112
      Index = 8
    end
    inherited MainLayoutItem13: TdxLayoutItem
      Parent = nil
      Visible = False
      Index = -1
    end
    inherited MainLayoutItem14: TdxLayoutItem
      Index = 6
    end
    inherited GrupoMenuTop: TdxLayoutGroup
      CaptionOptions.Visible = False
    end
    inherited GrupoMain: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Visible = False
      Offsets.Top = 0
      ItemIndex = 1
      Index = 2
    end
    inherited MainLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = MainLayoutGroup_Root
      AlignHorz = ahRight
      Index = 1
    end
    inherited MainLayoutGroup2: TdxLayoutGroup
      CaptionOptions.Visible = False
      ItemIndex = 10
      Index = 0
    end
    inherited GrupoNavegacao: TdxLayoutGroup
      CaptionOptions.Visible = False
      Visible = True
      Index = 7
    end
    inherited MainLayoutGroup1: TdxLayoutGroup
      CaptionOptions.Visible = False
    end
    inherited GrupoCadastros: TdxLayoutGroup
      CaptionOptions.Visible = False
    end
    inherited LiBtnMostrarLogAtividades: TdxLayoutItem
      Visible = False
      Index = 1
    end
    inherited LiBtnConfiguracoes: TdxLayoutItem
      Index = 2
    end
    inherited MainLayoutItem6: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      Parent = GrupoTabs
      Visible = True
      CaptionOptions.Text = 'Atividade'
      ControlOptions.OriginalHeight = 76
      ControlOptions.OriginalWidth = 82
      Index = 1
    end
    object GrupoDados: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object GrupoMateriais: TdxLayoutGroup
      CaptionOptions.Text = 'Composi'#231#227'o'
      Index = -1
    end
    object GrupoTabs: TdxLayoutGroup
      Parent = dxLayoutGroup25
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 5
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = GrupoTabsTabChanged
      Index = 0
    end
    object GrupoVeiculo: TdxLayoutGroup
      CaptionOptions.Text = 'Ve'#237'culo'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object dxLayoutGroup26: TdxLayoutGroup
      Parent = GrupoVeiculo
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Chassi'
      Control = cxDBTextEdit19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'RENAVAN'
      Control = cxDBTextEdit24
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ano/Modelo'
      Control = cxDBTextEdit25
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Combust'#237'vel'
      Control = cxDBTextEdit20
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Cilindrada'
      Control = cxDBCurrencyEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Passageiros'
      Control = cxDBCurrencyEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem41: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Peso L'#237'quido'
      Control = cxDBCurrencyEdit15
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem42: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Peso Bruto'
      Control = cxDBCurrencyEdit16
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem43: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'N'#250'm. S'#233'rie'
      Control = cxDBTextEdit30
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem61: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Cor DENATRAN'
      Control = cxDBTextEdit38
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutGroup27: TdxLayoutGroup
      Parent = GrupoVeiculo
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Offsets.Left = 15
      ItemIndex = 8
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Placa'
      Control = cxDBTextEdit23
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'KM'
      Control = cxDBTextEdit22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Motor'
      Control = cxDBTextEdit21
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem45: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Tipo'
      Control = cxDBTextEdit32
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem44: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ano Fab.'
      Control = cxDBTextEdit31
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem47: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Esp'#233'cie'
      Control = cxDBTextEdit34
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem48: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Dist'
      Control = cxDBTextEdit35
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem49: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Condi'#231#227'o'
      Control = cxDBTextEdit36
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'HP'
      Control = cxDBCurrencyEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem46: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'CMOD'
      Control = cxDBTextEdit33
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object GrupoDadosFiscais: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Dados Fiscais e Impostos'
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ScrollOptions.Vertical = smAuto
      ShowBorder = False
      Index = 1
    end
    object GrupoVendaProduto: TdxLayoutGroup
      Parent = dxLayoutGroup32
      AlignHorz = ahClient
      AlignVert = avBottom
      ItemIndex = 10
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoVendaProduto
      AlignHorz = ahLeft
      AlignVert = avBottom
      Offsets.Left = 10
      CaptionOptions.Text = 'Item'
      CaptionOptions.Layout = clTop
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoVendaProduto
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = GrupoVendaProduto
      AlignVert = avBottom
      CaptionOptions.Text = 'Unidade'
      CaptionOptions.Layout = clTop
      Control = edtUnidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object dxLayoutItem19: TdxLayoutItem
      AlignVert = avBottom
      CaptionOptions.Text = 'R$ Custo'
      Control = EdtCusto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LiEdtValor: TdxLayoutItem
      Parent = GrupoVendaProduto
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Valor Unit'#225'rio'
      CaptionOptions.Layout = clTop
      Control = EdtValor
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object LiEdtVDesc_Manual: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'Desconto R$'
      CaptionOptions.Layout = clTop
      Control = EdtVDesc_Manual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LiEdtTotal: TdxLayoutItem
      Parent = GrupoVendaProduto
      AlignVert = avBottom
      Padding.Right = 10
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Total'
      CaptionOptions.Layout = clTop
      Control = EdtTotal
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object LiEdtPecas: TdxLayoutItem
      Parent = GrupoVendaProduto
      AlignVert = avBottom
      CaptionOptions.Text = 'Pe'#231'as'
      CaptionOptions.Layout = clTop
      Control = EdtPecas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LiEdtComprimento: TdxLayoutItem
      Parent = GrupoVendaProduto
      AlignVert = avBottom
      CaptionOptions.Text = 'Comp'
      CaptionOptions.Layout = clTop
      Control = EdtComprimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LiEdtLargura: TdxLayoutItem
      Parent = GrupoVendaProduto
      AlignVert = avBottom
      CaptionOptions.Text = 'Larg'
      CaptionOptions.Layout = clTop
      Control = EdtLargura
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LiEdtEspessura: TdxLayoutItem
      Parent = GrupoVendaProduto
      AlignVert = avBottom
      CaptionOptions.Text = 'Esp'
      CaptionOptions.Layout = clTop
      Control = EdtEspessura
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object LiEdtQuant: TdxLayoutItem
      Parent = GrupoVendaProduto
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Quantidade'
      CaptionOptions.Layout = clTop
      Control = EdtQuant
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 9
    end
    object GrupoProducaoFluxo: TdxLayoutGroup
      Parent = GrupoTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Fluxo de Produ'#231#227'o'
      LayoutDirection = ldHorizontal
      UseIndent = False
      Index = 3
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = GrupoVendaProduto
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'digo Produto'
      CaptionOptions.Layout = clTop
      Control = EdtDBCodProduto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object TabProducao: TdxLayoutGroup
      Parent = GrupoTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Produ'#231#227'o'
      Index = 2
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Cor'
      CaptionOptions.Layout = clTop
      Control = EdtCorÎCor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Layout = clTop
      Control = EdtCorÎCorÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 301
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Marca'
      CaptionOptions.Layout = clTop
      Control = EdtMarcaÎProduto_Marca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = LblMarcaÎProduto_MarcaÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 141
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoProducao: TdxLayoutGroup
      Parent = TabProducao
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Produ'#231#227'o'
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup
      Parent = GrupoProducao
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup18
      CaptionOptions.Text = 'Tipo de'
      CaptionOptions.Layout = clTop
      Control = EdtImpressaoÎTipo_Impressao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem59: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup18
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tipo de Impress'#227'o'
      CaptionOptions.Layout = clTop
      Control = EdtImpressaoÎTipo_ImpressaoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 213
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup8
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Aplica'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtLocalÎLocalÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 162
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem64: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Tamanho'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit39
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 49
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Aproveitamento'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit28
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem40: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Passadas'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem50: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Local do Estoque'
      CaptionOptions.Layout = clTop
      Control = CbLocalEstoque
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = GrupoProducao
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 1
      ShowBorder = False
      UseIndent = False
      Index = 2
    end
    object dxLayoutItem51: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup11
      AlignVert = avBottom
      CaptionOptions.Text = 'Previs'#227'o de Entrega'
      CaptionOptions.Layout = clTop
      Control = EdtPrevisaoEntrega
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem57: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup11
      AlignVert = avBottom
      CaptionOptions.Text = 'Previs'#227'o de In'#237'cio'
      CaptionOptions.Layout = clTop
      Control = EdtPrevisaoInicio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 128
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LIPnlCOFINS: TdxLayoutItem
      Parent = GrupoDadosFiscais
      AlignVert = avClient
      CaptionOptions.Text = 'COFINS'
      CaptionOptions.Visible = False
      Control = PnlCOFINS
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 289
      ControlOptions.OriginalWidth = 625
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liISSQN: TdxLayoutItem
      Parent = GrupoDadosFiscais
      AlignVert = avClient
      CaptionOptions.Text = 'ISS/ISSQN'
      CaptionOptions.Visible = False
      Control = PnlISSQN
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 233
      ControlOptions.OriginalWidth = 585
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liImportacao: TdxLayoutGroup
      Parent = GrupoDadosFiscais
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Importa'#231#227'o'
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutItem70: TdxLayoutItem
      Parent = liImportacao
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = PnlII
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 201
      ControlOptions.OriginalWidth = 458
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoDI: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup7
      CaptionOptions.Visible = False
      Offsets.Top = 15
      ItemIndex = 6
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem132: TdxLayoutItem
      Parent = GrupoDI
      CaptionOptions.Visible = False
      Control = cxLabel14
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem133: TdxLayoutItem
      Parent = GrupoDI
      CaptionOptions.Text = 'N'#250'mero do Doc. de Importa'#231#227'o'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem138: TdxLayoutItem
      Parent = GrupoDI
      CaptionOptions.Text = 'Data de Registro do Documento'
      Control = cxDBDateEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem135: TdxLayoutItem
      Parent = GrupoDI
      CaptionOptions.Text = 'Local de Desembara'#231'o'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem137: TdxLayoutItem
      Parent = GrupoDI
      CaptionOptions.Text = 'Data do Desembara'#231'o Aduaneiro'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem134: TdxLayoutItem
      Parent = GrupoDI
      CaptionOptions.Text = 'UF onde ocorreu o Desembara'#231'o'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem136: TdxLayoutItem
      Parent = GrupoDI
      CaptionOptions.Text = 'C'#243'digo do Exportador'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liPnlIPI: TdxLayoutItem
      Parent = GrupoDadosFiscais
      AlignVert = avClient
      CaptionOptions.Text = 'IPI'
      CaptionOptions.Visible = False
      Control = PnlIPI
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 289
      ControlOptions.OriginalWidth = 665
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liPIS: TdxLayoutItem
      Parent = GrupoDadosFiscais
      AlignVert = avClient
      CaptionOptions.Text = 'PIS'
      CaptionOptions.Visible = False
      Control = PnlPIS
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 289
      ControlOptions.OriginalWidth = 673
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup7
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem182: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Taxa de C'#226'mbio'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem168: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'FatorX Importa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem169: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxDBCheckBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = liImportacao
      AlignHorz = ahLeft
      Index = 1
    end
    object GrupoICMS: TdxLayoutGroup
      Parent = GrupoDadosFiscais
      CaptionOptions.Text = 'ICMS'
      CaptionOptions.Visible = False
      ItemIndex = 2
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item37: TdxLayoutItem
      Parent = GrupoICMS
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'CST (C'#243'digo da Situa'#231#227'o Tribut'#225'ria)'
      CaptionOptions.Layout = clTop
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 598
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = GrupoICMS
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Offsets.Top = 10
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'ICMS'
      CaptionOptions.Visible = False
      ItemIndex = 6
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem83: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Modalidade de C'#225'lculo BC'
      CaptionOptions.Layout = clTop
      Control = cbbICMSModalidadeBaseCalculo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem87: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Base de C'#225'lculo'
      Control = cxDBCurrencyEdit19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem71: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Redu'#231#227'o da BC %'
      Control = cxDBCurrencyEdit20
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem88: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Al'#237'quota do ICMS'
      Control = cxDBCurrencyEdit21
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem89: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Valor do ICMS'
      Control = cxDBCurrencyEdit22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object GrupoICMSST: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'ICMS ST'
      CaptionOptions.Visible = False
      Offsets.Left = 15
      ItemIndex = 9
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem84: TdxLayoutItem
      Parent = GrupoICMSST
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = GrupoICMSST
      CaptionOptions.Text = 'Modalidade de C'#225'lculo BC ST'
      CaptionOptions.Layout = clTop
      Control = CbICMSModalidadeBCST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 201
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem72: TdxLayoutItem
      Parent = GrupoICMSST
      CaptionOptions.Text = 'Base de C'#225'lculo ST'
      Control = cxDBCurrencyEdit24
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem73: TdxLayoutItem
      Parent = GrupoICMSST
      CaptionOptions.Text = 'Redu'#231#227'o da BC ST %'
      Control = cxDBCurrencyEdit25
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem90: TdxLayoutItem
      Parent = GrupoICMSST
      CaptionOptions.Text = 'Base de C'#225'lculo ST Destino'
      Control = cxDBCurrencyEdit26
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem76: TdxLayoutItem
      Parent = GrupoICMSST
      CaptionOptions.Text = 'Base de C'#225'lculo ST Retido'
      Control = cxDBCurrencyEdit27
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem74: TdxLayoutItem
      Parent = GrupoICMSST
      CaptionOptions.Text = 'Al'#237'quota do ICMS ST'
      Control = cxDBCurrencyEdit28
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem91: TdxLayoutItem
      Parent = GrupoICMSST
      CaptionOptions.Text = 'Valor ICMS ST Destino'
      Control = cxDBCurrencyEdit29
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem77: TdxLayoutItem
      Parent = GrupoICMSST
      CaptionOptions.Text = 'Valor ICMS ST Retido'
      Control = cxDBCurrencyEdit30
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem75: TdxLayoutItem
      Parent = GrupoICMSST
      CaptionOptions.Text = 'Valor do ICMS ST'
      Control = cxDBCurrencyEdit31
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object GrupoICMSDifa: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup26
      AlignVert = avTop
      CaptionOptions.Text = 'DIFA'
      CaptionOptions.Visible = False
      Offsets.Left = 15
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem85: TdxLayoutItem
      Parent = GrupoICMSDifa
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem78: TdxLayoutItem
      Parent = GrupoICMSDifa
      CaptionOptions.Text = 'Al'#237'quota Interestadual'
      Control = cxDBCurrencyEdit32
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem79: TdxLayoutItem
      Parent = GrupoICMSDifa
      CaptionOptions.Text = 'Al'#237'quota Destino'
      Control = cxDBCurrencyEdit33
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem80: TdxLayoutItem
      Parent = GrupoICMSDifa
      CaptionOptions.Text = 'Part. Destino %'
      Control = cxDBCurrencyEdit34
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem81: TdxLayoutItem
      Parent = GrupoICMSDifa
      CaptionOptions.Text = 'Valor Destino'
      Control = cxDBCurrencyEdit35
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem153: TdxLayoutItem
      Parent = GrupoICMSDifa
      CaptionOptions.Text = 'Valor Remetente'
      Control = cxDBCurrencyEdit36
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup30: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Incluir na Base de C'#225'culo'
      ItemIndex = 5
      UseIndent = False
      Index = 6
    end
    object dxLayoutItem167: TdxLayoutItem
      Parent = dxLayoutGroup30
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'IPI'
      Control = cxDBCheckBox7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem165: TdxLayoutItem
      Parent = dxLayoutGroup30
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'COFINS'
      Control = cxDBCheckBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem163: TdxLayoutItem
      Parent = dxLayoutGroup30
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'PIS'
      Control = cxDBCheckBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem162: TdxLayoutItem
      Parent = dxLayoutGroup30
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'FRETE'
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup26
      CaptionOptions.Text = 'Incluir na Base de C'#225'culo ST'
      ItemIndex = 5
      UseIndent = False
      Index = 1
    end
    object dxLayoutItem190: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      CaptionOptions.Text = 'IPI ST'
      Control = cxDBCheckBox9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem195: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      CaptionOptions.Text = 'COFINS ST'
      Control = cxDBCheckBox12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem189: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Frete ST'
      Control = cxDBCheckBox8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem194: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      CaptionOptions.Text = 'PIS ST'
      Control = cxDBCheckBox11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem191: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Importa'#231#227'o ST'
      Control = cxDBCheckBox10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem164: TdxLayoutItem
      Parent = dxLayoutGroup30
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Importa'#231#227'o'
      Control = cxDBCheckBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem199: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup23
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Calcula ICMS'
      Control = edtCalculaICMS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem58: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'Caminho do Arquivo'
      CaptionOptions.Layout = clTop
      Control = edtPath
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item30: TdxLayoutItem
      Parent = dxLayoutGroup33
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = BtnRecalcularImpostos
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 148
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object GrupoImpostos: TdxLayoutGroup
      Parent = GrupoDadosFiscais
      CaptionOptions.Text = 'Impostos'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup31: TdxLayoutGroup
      Parent = GrupoImpostos
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Geral'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutItem56: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 
        'Descri'#231#227'o na Nota Fiscal (Manter Vazio para imprimir a descri'#231#227'o' +
        ' original) 120 Letras'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 426
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem184: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      CaptionOptions.Text = 'Peso'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit18
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem161: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Valor Pauta'
      CaptionOptions.Layout = clTop
      Control = edtValorPauta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup31
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup33
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Grupo do Produto'
      CaptionOptions.Layout = clTop
      Control = EdtGrupoÎProduto_Grupo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup33
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = LblGrupoÎProduto_GrupoÎDESCRICAO
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup13
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'NCM'
      CaptionOptions.Layout = clTop
      Control = EdtNCMÎNF_NCM
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem159: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup28
      AlignVert = avClient
      CaptionOptions.Text = 'CFOP'
      CaptionOptions.Layout = clTop
      Control = EdtCFOPÎNF_CFOP
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem158: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup13
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = LblNCMÎNF_NCMÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem157: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup28
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = LblCFOPÎNF_CFOPÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = GrupoImpostos
      CaptionOptions.Visible = False
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup20
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem141: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Visible = False
      Control = cxLabel15
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'ICMS'
      Control = edtResultadoICMSBC
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'IPI'
      Control = edtResultadoIPIBC
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'PIS'
      Control = edtResultadoPISBC
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'COFINS'
      Control = edtResultadoCOFINSBC
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'ISSQN'
      Control = edtResultadoISSQNBC
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem171: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahLeft
      CaptionOptions.Text = 'II            '
      Control = edtResultadoIIBC
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = dxLayoutGroup20
      CaptionOptions.Visible = False
      Offsets.Left = 10
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem142: TdxLayoutItem
      Parent = dxLayoutGroup21
      CaptionOptions.Visible = False
      Control = cxLabel16
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem140: TdxLayoutItem
      Parent = dxLayoutGroup21
      Control = cxDBCurrencyEdit76
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem144: TdxLayoutItem
      Parent = dxLayoutGroup21
      Control = cxDBCurrencyEdit77
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem145: TdxLayoutItem
      Parent = dxLayoutGroup21
      Control = cxDBCurrencyEdit78
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem146: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahRight
      Control = cxDBCurrencyEdit79
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 131
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahClient
      AlignVert = avTop
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem172: TdxLayoutItem
      Parent = dxLayoutGroup21
      Control = cxDBCurrencyEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 131
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = dxLayoutGroup20
      CaptionOptions.Visible = False
      Offsets.Left = 10
      ItemIndex = 5
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem143: TdxLayoutItem
      Parent = dxLayoutGroup22
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = cxLabel17
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup22
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahLeft
      AlignVert = avTop
      Control = edtResultadoICMSValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem154: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = BtnDetalhesICMS
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup22
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      Control = edtResultadoIPIValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem139: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = BtnDetalhesIPI
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup22
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup10
      AlignHorz = ahLeft
      Control = edtResultadoPISValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem155: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup10
      AlignHorz = ahLeft
      AlignVert = avClient
      Padding.AssignedValues = [lpavLeft]
      CaptionOptions.Visible = False
      Control = BtnDetalhesPIS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup28: TdxLayoutGroup
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      Parent = dxLayoutGroup28
      AlignHorz = ahLeft
      Control = edtResultadoCOFINSValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem156: TdxLayoutItem
      Parent = dxLayoutGroup28
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = BtnDetalhesCOFINS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup29: TdxLayoutGroup
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutAutoCreatedGroup20: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup29
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup20
      AlignHorz = ahLeft
      Control = edtResultadoISSQNValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem178: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup20
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = cxDBCurrencyEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup29
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup17
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = BtnDetalhesISSQN
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem187: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup17
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = BtnDetalhesII
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup20
      Index = 3
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup16
      AlignVert = avClient
      CaptionOptions.Text = 'Al'#237'quotas IBPT'
      Index = 0
    end
    object dxLayoutItem66: TdxLayoutItem
      Parent = dxLayoutGroup13
      CaptionOptions.Text = 'Nacional'
      Control = edtALIQNacional
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem67: TdxLayoutItem
      Parent = dxLayoutGroup13
      CaptionOptions.Text = 'Importa'#231#227'o'
      Control = edtALIQImportacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem68: TdxLayoutItem
      Parent = dxLayoutGroup13
      CaptionOptions.Text = 'Estadual'
      Control = edtALIQEstadual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem69: TdxLayoutItem
      Parent = dxLayoutGroup13
      CaptionOptions.Text = 'Municipal'
      Control = edtALIQMunicipal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pedido de Compra'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Pedido'
      CaptionOptions.Layout = clTop
      Control = edtNumeroPedidoNFe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem63: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Item'
      CaptionOptions.Layout = clTop
      Control = edtNumeroItemNFe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem166: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      CaptionOptions.Text = 'Despesas Acess'#243'rias'
      CaptionOptions.Layout = clTop
      Control = EdtDespesasAcessorias
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object GrupoAnexo: TdxLayoutItem
      Parent = GrupoTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Anexo'
      CaptionOptions.Visible = False
      Control = PnlFrameAnexos
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 68
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem204: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Visible = False
      Control = cxDBMemo2
      ControlOptions.OriginalHeight = 57
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem60: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#227'o para produ'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 55
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem209: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxDBCheckBox13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      CaptionOptions.Text = 'Frete'
      CaptionOptions.Layout = clTop
      Control = EdtValorFrete
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem211: TdxLayoutItem
      Parent = dxLayoutGroup30
      CaptionOptions.Text = 'Desconto'
      Control = cxDBCheckBox14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem212: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Desconto ST'
      Control = cxDBCheckBox15
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 19
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LiCest: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup13
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'CEST'
      CaptionOptions.Layout = clTop
      Control = EdtCest
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem122: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup23
      AlignVert = avBottom
      Offsets.Left = 10
      CaptionOptions.Text = 'Calcula ICMS ST'
      Control = CbCalculaICMSST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup23: TdxLayoutAutoCreatedGroup
      Parent = GrupoICMS
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem54: TdxLayoutItem
      CaptionOptions.Visible = False
      Control = cxDBCheckBox16
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem65: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = CkTem_Producao_Finalizada_NoEnvio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 301
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem148: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxDBCheckBox18
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem149: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBCheckBox19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup24
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Acabamento'
      CaptionOptions.Layout = clTop
      Control = EdtAcabamentoÎAcabamentoÎDESCRICAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem39: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup24
      CaptionOptions.Text = 'Tipo de'
      CaptionOptions.Layout = clTop
      Control = EdtAcabamentoÎAcabamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup24: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup8
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
      Padding.Bottom = -8
      Padding.AssignedValues = [lpavBottom]
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutItem150: TdxLayoutItem
      Parent = dxLayoutGroup32
      CaptionOptions.Visible = False
      Control = LbTitulo
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup26: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup10
      Index = 2
    end
    object LiEdtVOutro_Manual: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'Acr'#233'scimo R$'
      CaptionOptions.Layout = clTop
      Control = EdtVOutro_Manual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutGroup25: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem152: TdxLayoutItem
      Parent = MainLayoutGroup2
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = BtnMenu
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object GrupoCustos: TdxLayoutGroup
      Parent = GrupoTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Forma'#231#227'o do Pre'#231'o'
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = GrupoCustos
      AlignHorz = ahClient
      AlignVert = avClient
      Control = LayoutControlCustos
      ControlOptions.OriginalHeight = 256
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = GrupoTabs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tributa'#231#227'o - Dados Fiscais e Impostos'
      ItemIndex = 1
      Index = 5
    end
    object dxLayoutItem228: TdxLayoutItem
      Parent = dxLayoutGroup33
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBCheckBox20'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox20
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 278
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem175: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup14
      AlignVert = avClient
      CaptionOptions.Text = 'C'#243'd. EAN'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 132
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup14
      AlignVert = avClient
      CaptionOptions.Text = 'C'#243'd. F'#225'brica'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit18
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 132
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup28: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup31
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup20
      Index = 4
    end
    object dxLayoutItem183: TdxLayoutItem
      AlignHorz = ahLeft
      AlignVert = avClient
      Offsets.Top = 5
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = CkManterMargem
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = GrupoDados
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup32: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup33: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Classifica'#231#227'o do Imposto'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem55: TdxLayoutItem
      CaptionOptions.Visible = False
      Control = cxLabel11
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 165
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem193: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup13
      CaptionOptions.Text = 'CST/CSOSN'
      CaptionOptions.Layout = clTop
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem188: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Pode Faturar'
      CaptionOptions.Layout = clTop
      Control = CbPodeFaturar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 4
    end
    object dxLayoutItem200: TdxLayoutItem
      Parent = GrupoICMSDifa
      CaptionOptions.Text = 'Base de C'#225'lculo'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiEdtPDesc_Manual: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = '% Desconto'
      CaptionOptions.Layout = clTop
      Control = EdtPDesc_Manual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LiEdtPOutro_Manual: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = '% Acr'#233'scimo'
      CaptionOptions.Layout = clTop
      Control = EdtPOutro_Manual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutGroup24: TdxLayoutGroup
      Parent = dxLayoutGroup32
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Descontos acr'#233'scimos e Impostos'
      ItemIndex = 8
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem62: TdxLayoutItem
      Parent = MainLayoutGroup_Root
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 426
      ControlOptions.OriginalWidth = 880
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiedtImpostos: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Impostos'
      CaptionOptions.Layout = clTop
      Control = edtImpostos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object LiedtValor_Original: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'Valor Original'
      CaptionOptions.Layout = clTop
      Control = edtValor_Original
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object LicbxTipo_Desconto: TdxLayoutItem
      Parent = LiTipoDesconto
      AlignHorz = ahRight
      CaptionOptions.Text = 'Tipo de desconto'
      CaptionOptions.Layout = clTop
      Control = cbxTipo_Desconto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 162
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiTipoDesconto: TdxLayoutGroup
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object LibtnAtualizarValor_Original: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnAtualizarValor_Original
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Dt Valor Original'
      CaptionOptions.Layout = clTop
      Control = dtValor_Original
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup13
      AlignVert = avClient
      CaptionOptions.Text = 'P. CredSN'
      CaptionOptions.Layout = clTop
      Control = edtNF_pCredSN
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem52: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup13
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'R$ CredSN'
      CaptionOptions.Layout = clTop
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object GrupoDiferencial: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      CaptionOptions.Text = 'cst 51 - ICMS Diferimento'
      ItemIndex = 4
      Index = 3
    end
    object dxLayoutItem147: TdxLayoutItem
      Parent = GrupoDiferencial
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tem Diferimento'
      Control = CBSimNaoTem_Diferimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 146
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem151: TdxLayoutItem
      Parent = GrupoDiferencial
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Percentual do Diferimento'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem170: TdxLayoutItem
      Parent = GrupoDiferencial
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Valor do ICMS da Opera'#231#227'o'
      Control = cxDBCurrencyEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem173: TdxLayoutItem
      Parent = GrupoDiferencial
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Diferimento do produto'
      Control = cxDBCurrencyEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem174: TdxLayoutItem
      Parent = GrupoDiferencial
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo do Benef'#237'cio Fiscal'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem176: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup28
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Opera'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = LblCFOPÎNF_CFOPÎOPERACAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem179: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup28
      AlignVert = avBottom
      CaptionOptions.Text = 'Entrada/Sa'#237'da'
      CaptionOptions.Layout = clTop
      Control = LblCFOPÎNF_CFOPÎENTRADA_SAIDA
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem180: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup28
      AlignVert = avBottom
      CaptionOptions.Text = 'NFe'
      CaptionOptions.Layout = clTop
      Control = LblCFOPÎNF_CFOPÎPODE_NFE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem181: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup28
      AlignVert = avBottom
      CaptionOptions.Text = 'NFCe'
      CaptionOptions.Layout = clTop
      Control = LblCFOPÎNF_CFOPÎPODE_NFCE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem201: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup28
      AlignVert = avClient
      CaptionOptions.Text = 'Transporte'
      CaptionOptions.Layout = clTop
      Control = LblCFOPÎNF_CFOPÎPODE_TRANSPORTE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem202: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup28
      AlignVert = avClient
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = LblCFOPÎNF_CFOPÎTIPO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem210: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup28
      AlignVert = avBottom
      CaptionOptions.Text = 'Devolu'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = LblCFOPÎNF_CFOPÎPODE_DEVOLUCAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem221: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup28
      AlignVert = avBottom
      CaptionOptions.Text = 'Comunica'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = LblCFOPÎNF_CFOPÎPODE_COMUNICACAO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = GrupoTabs
      CaptionOptions.Text = 'Geral'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutItem53: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avBottom
      CaptionOptions.Text = 'Local de'
      CaptionOptions.Layout = clTop
      Control = edtLocalÎLocal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup8
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
      Parent = GrupoProducao
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem227: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton1
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup31
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object liedtNF_INFADPROD: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#227'o Adicional do Produto na Nota Fiscal'
      CaptionOptions.Layout = clTop
      Control = edtNF_INFADPROD
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = GrupoDadosFiscais
      CaptionOptions.Text = 'Descri'#231#227'o do Produto na NFE'
      ButtonOptions.ShowExpandButton = True
      Index = 7
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = GrupoProducaoFluxo
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = pnlProducaoEtapas
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 41
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem185: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo do'
      CaptionOptions.Layout = clTop
      Control = edtAtendenteÎPessoas
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem186: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignVert = avClient
      CaptionOptions.Text = 'Funcion'#225'rio'
      CaptionOptions.Layout = clTop
      Control = lblAtendenteÎPessoasÎRAZAOSOCIAL
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 298
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem207: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignVert = avBottom
      CaptionOptions.Text = 'Comiss'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtAtendenteÎPessoasÎCOMISSAO
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited DS: TDataSource
    Left = 356
    Top = 248
  end
  inherited Timer1: TTimer
    Left = 356
    Top = 388
  end
  inherited Transa: TIBTransaction
    Left = 468
    Top = 248
  end
  inherited SPA: TIBStoredProc
    Left = 384
    Top = 388
  end
  inherited ImgListBotoes24: TImageList
    Left = 384
    Top = 332
  end
  inherited ImgListBotoes16: TImageList
    Left = 384
    Top = 360
    Bitmap = {
      494C01010B000D00040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F0F106C6C6E708C8CA2AF8888AABF8888AABF8C8CA1AF6C6C6E700F0F
      0F10000000000000000000000000000000000000000000000000000000000000
      00001D1D1D1E74747E8757579DDB0D0D8FFF0D0D8FFF53539DDE7676818D2323
      2324000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006C6C
      6E704444B1EF0A0AACFF0A0AB6FF0D0DBFFF1313C6FF1818C7FF1919C0FF4A4A
      B4EF6C6C6E700000000000000000000000000000000000000000000000007474
      808A0E1196FF0D1CAAFF0D24B9FF0D28C0FF0D28C0FF0D25BAFF0D1CABFF0E12
      97FF7676828D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008989969F1111
      ACFF0202B2FF1212C1FF4B4BD2FF5A5AD3FF6161D6FF5E5EDFFF3A3AE0FF2828
      E2FF1F1FBDFF8989969F00000000000000000000000000000000787988960D19
      A4FF102CC1FF102DC3FF102DC3FF102DC3FF102DC3FF102DC3FF102DC3FF102C
      C1FF0E1AA6FF7879889600000000000000000000000000000000000000000000
      0000150F081D50392170845D37B7A97746EAA97746EA845D37B750392170150F
      081D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C6C6E703535BFFF0D0D
      B8FF1D1DBFFF4646C3FF8B8B979F4F4F4F504F4F4F508B8B979F6262D8FF3B3B
      ECFF3636F2FF1F1FBDFF6C6C6E7000000000000000007474808A101CA7FF1332
      C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332C6FF1332
      C6FF1332C6FF101DA9FF7777849000000000000000000000000000000000281D
      10397F5A34B0B8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFF3928
      174F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F104F4FB9EF2B2BC2FF0404
      B4FF7F7FB2CF2F2F2F300000000000000000000000005E5E5F602525DEFF2C2C
      E6FF4646EDFF2929E3FF4A4AB3EF0F0F0F101A1A1A1B1318A0FF1636C8FF1638
      CAFF5B73DAFFFFFFFFFF5B73DAFF1638CAFF1638CAFF5B73DAFFFFFFFFFF5B73
      DAFF1638CAFF1637C9FF12189FFF2929292A0000000000000000150F081D7F5A
      34B0B8824CFF8A6139BF4A341F661610081F1610081F4A341F663E2C19560000
      00003727164D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005E5E5F604444C6FF0707B5FF0F0F
      B0FF2F2F2F300000000000000000000000005E5E5F601A1AD2FF1F1FD8FF2525
      DEFF6B6BDCFF3D3DE1FF1919BDFF5E5E5F6072727C841E31B8FF1A3FCEFF1A3F
      CEFFFFFFFFFFFFFFFFFFFFFFFFFF5E78DDFF5E78DDFFFFFFFFFFFFFFFFFFFFFF
      FFFF1A3FCEFF1A3FCEFF1D32BBFF78788893000000000000000050392170B882
      4CFF8A6139BF21170E2E00000000000000000000000000000000000000003727
      164DB8824CFF3727164D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008888969F5B5BCFFF0C0CB5FF8989
      969F0000000000000000000000005E5E5F601010C8FF1515CDFF1A1AD2FF5E5E
      5F608B8B979F6262E0FF1818C5FF8989969F6568A5CF1E3EC9FF1E45D2FF1E45
      D2FF4044B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4044
      B7FF1E45D2FF1E45D2FF1E3FCCFF5659A6DB0000000000000000845D37B7B882
      4CFF4A341F6600000000000000000000000000000000000000003727164DB882
      4CFFB8824CFFB8824CFF3727164D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008787ABBF6969D5FF3232BFFF7A7A
      7E8000000000000000005D5D5F600909BFFF0C0CC3FF1010C8FF5E5E5F600000
      00006C6C6E707777DEFF1212C4FF8888AABF2B2EA7F3254CD4FF234DD6FF234D
      D6FF234DD6FF4044B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4044B7FF234D
      D6FF234DD6FF234DD6FF254ED5FF1D22A5F9B8824CFFB8824CFFB8824CFFB882
      4CFFB8824CFFB8824CFFB8824CFF00000000020302043727164DB8824CFFB882
      4CFFB8824CFFB8824CFFB8824CFF3727164D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008787ABBF6C6CD6FF3B3BC2FF7A7A
      7E80000000005D5D5F600303B9FF0606BCFF0909BFFF5E5E5F60000000000000
      00006C6C6E706A6AD9FF0D0DBDFF8888AABF1C22A8F93A62DDFF2754DBFF2754
      DBFF2754DBFF678AE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF678AE6FF2754
      DBFF2754DBFF2754DBFF3760DDFF1C22A8F93727164DB8824CFFB8824CFFB882
      4CFFB8824CFFB8824CFF3727164D0000000000000000B8824CFFB8824CFFB882
      4CFFB8824CFFB8824CFFB8824CFFB8824CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008888969F6464D2FF3F3FC6FF8989
      969F5E5E5F602A2AC2FF1E1EC0FF0E0EBCFF5D5D5F6000000000000000000000
      00008B8B979F4B4BD1FF0B0BB4FF8989969F6468A9CF4E6CDCFF2B5ADFFF2B5A
      DFFF6A8FE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A8F
      E9FF2B5ADFFF2B5ADFFF506FDDFF5E61ABD5000000003727164DB8824CFFB882
      4CFFB8824CFF3727164D00000000000000000000000000000000000000004A34
      1F66B8824CFF845D37B700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005E5E5F605757CEFF4949C9FF2D2D
      BEFF3333C4FF3434C4FF2D2DC3FF5E5E5F600000000000000000000000002F2F
      2F305959C9FF3030C9FF1818B0FF5E5E5F6072727D844E60D0FF3666E4FF2F61
      E3FFFFFFFFFFFFFFFFFFFFFFFFFF4044B7FF4044B7FFFFFFFFFFFFFFFFFFFFFF
      FFFF2F61E3FF3465E4FF4C5ED0FF72727D840000000000000000422E1B5BB882
      4CFF3727164D000000000000000000000000000000000000000021170E2E8A61
      39BFB8824CFF5039217000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F105050BAEF6B6BD5FF3F3F
      C7FF3B3BC6FF3333C4FF5E5E5F600000000000000000000000002F2F2F305E5E
      BCEF4242CAFF2222BCFF4646B2EF0F0F0F101A1A1A1B131DB5FF7095EBFF3468
      E7FF4044B7FFFFFFFFFF4044B7FF3267E7FF3267E7FF4044B7FFFFFFFFFF4044
      B7FF3267E7FF6F96ECFF1823B7FF1A1A1A1B00000000000000000C0805103727
      164D01010001553D23774A341F661610081F1610081F4A341F668A6139BFB882
      4CFF7F5A34B0150F081D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C6C6E704242C5FF6565
      D3FF3F3FC7FF3232BFFF8989969F6C6C6E706C6C6E708989969F2828B8FF3232
      C3FF3434C4FF1A1AB0FF6C6C6E70000000000000000072727E843544C7FF7BA2
      F1FF3B70EBFF1116A5FF356CEAFF356CEAFF356CEAFF356CEAFF1116A5FF3A6F
      EAFF78A0F1FF3A49CAFF7475828A000000000000000000000000000000000101
      00014F38216EB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFF7F5A
      34B0281D10390000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008888969F4242
      C5FF7373D9FF4A4AC9FF3F3FC6FF3838C1FF3636C0FF3939C4FF3838C5FF5A5A
      D2FF3636BFFF8989969F0000000000000000000000000000000077798A933141
      C7FF8FACF1FF6C9AF2FF578BF0FF4379EEFF4379EEFF568AF0FF6A98F2FF8FAD
      F2FF3849CAFF78798C9600000000000000000000000000000000000000000000
      0000150F081D50392170845D37B7A97746EAA97746EA845D37B750392170150F
      081D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006C6C
      6E705050BAEF5F5FD2FF6E6ED6FF6E6ED7FF6B6BD7FF6565D4FF5B5BCFFF5151
      BAEF6C6C6E700000000000000000000000000000000000000000000000007374
      8087121FBCFF4D61D5FF6C88E3FF8EA9EFFF8FABF0FF6E8AE3FF5165D7FF1421
      BCFF7475838A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F0F106C6C6E708B8BA2AF8787ABBF8787ABBF8B8BA2AF6C6C6E700F0F
      0F10000000000000000000000000000000000000000000000000000000000000
      0000111111126B6C7478787B9EAE4C52B5E1464DB6E4787A9FB16F6F797E1414
      1415000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909090A3939
      393A7A7A7A81989898B1A5A5A5D49E9E9EEBA1A1A1E8A5A5A5D2989898B17979
      797F373737380707070800000000000000000000000001010102070707080D0D
      0D0E101010111212121314141415151515161616161715151516141414151010
      10111212121343434344484848491010101100000000020202030909090A1010
      10111919191A20202021212121221D1D1D1E141414150C0C0C0D050505060000
      0001000000000000000000000000000000000000000000000000000000000000
      00000A0A0A0B4545464B67697187717182A17171819F64646A7D3B3B3C3F0202
      0203000000000000000000000000000000000000000000000000636363659494
      94E3ADADADFFBDBDBDFFBBBBBBFFBABABAFFBBBBBBFFB4B4B4FFAEAEAEFFA7A7
      A7FF8C8C8CE0454545460000000000000000010101024C4C4C4D9C9D9DB29E9F
      9EB89F9F9FBB9FA0A0BD9FA1A1BF9FA1A1C0A0A1A0C19FA1A1C09FA1A1BF9F9F
      9FBB959594BD767874EE70716FF3484848490000000104040405101010111B1B
      1B1C2929292A32323233353535362F2F2F3022222223161616170909090A0101
      0102000000000000000000000000000000000000000000000000000000004D4D
      4F575D66AFD1485AF5FF6270FFFF7681FFFF8C8DFFFF9291FFFF8282EDFE7676
      98BF3737383B0000000000000000000000000000000000000000999999B0BFBF
      BFFFEEEEEEFFDBDBDBFFBDBDBDFFB8B8B8FFB7B7B7FFB6B6B6FFC6C6C6FFDDDD
      DDFFB9B9B9FF7D7D7D860000000000000000040404059B9C9BAFE5E6E7FFE4E5
      E5FFE3E5E5FFE3E5E5FFE2E4E4FFE2E3E4FFE1E3E3FFE1E3E3FFE0E2E2FF9FA0
      9DFF555652FF636562FF797A75ED424242430000000001010102050505060909
      090A101010111E1E1E1F37373738202020217A7B7BAE7878789E777777987676
      7694757575917575758E7474748B6363636B00000000000000005F606A79102F
      F5FF193CFFFF2A45FFFF3E55FFFF5264FFFF6673FFFF7881FFFF8888FFFF9695
      FFFF8080CFEE49494A5200000000000000000000000000000000A2A2A2C7C5C5
      C5FFD7D7D7FFD1D1D1FFABABABFFA8A8A8FFA9A9A9FFA2A2A2FFB7B7B7FFA8A8
      A8FFB6B6B6FF909090A50000000000000000040404059B9C9BAFE4E6E6FFE0E3
      E3FFDFE2E2FFDDE1E1FFD2D6D6FFA1A4A3FF8A8E8BFF8F918FFFB3B7B6FF5151
      4CFF636562FF555652FF6969696C0909090A0000000000000000000000000000
      00010101010218181819757A8DB13F3F3F40394349FF3B4348FD242426F62F2F
      2FEC3D3D3DE5484848DF525252D9777777AA0000000055555A650510E9FF0216
      E7FF0522F7FF1E39EAFA676C92AF6466768367687F877275AABF6C73FDFF7C81
      FFFF9191FFFF8180D7F23737373A000000000000000000000000A6A6A6DFD3D3
      D3FFC0C0C0FFD1D1D1FF9B9B9BFFA0A0A0FFA1A1A1FF8F8F8FFFB6B6B6FF6262
      62FFC9C9C9FFA0A0A0CB010101020000000001010102999B9AACEDEEEEFFE2E5
      E5FFE1E3E4FFC1C4C4FF898C88FFC2C0BAFFD5D3CEFFCFCCC5FF92928CFF6365
      62FF4C4B46FF7878787E00000000000000000000000000000000000000000000
      000000000000151515161843C1F65971A7D74A5561FF626F78FF55616AFF3B44
      4AFB363739EC454545E14E4E4EDB767676AC171717184949BCE70000D5FF0005
      DCFF464CB8D83A3A3B3E0000000000000000000000006B6F8B9F5061FDFF616B
      FEFF7378FEFF9394FFFF777795BE0404040500000000020202039F9F9FEFD8D8
      D8FFB1B1B1FFD3D3D3FF8D8D8DFF9B9B9BFF9E9E9EFF7A7A7AFFB7B7B7FF4040
      40FFC6C6C6FF999999E60101010200000000000000009A9A9AAAEEEEEFFFE4E6
      E6FFD9DCDCFF949895FFB9B2A8FFD4C8BFFFCEC1B5FFCABBAEFFC4B7ABFF9494
      8FFFA3A5A3FF5454545500000000000000003D3D3D3E75757D8F75757E8F7575
      7F8F75767F8F76798396093BD3FB1254EFFE39599CFF607080FF637079FF5764
      6DFF36383CF4414141E34B4B4BDD767676AE5D5D62706061F2FF3B3ADAFF3232
      BBEA2525252600000000000000000808080962678CAF2242FFFF3149FCFF465A
      FFFF5865FFFF6D75FFFF7C7FF3FE3838383C0000000012121213868686FDE0E0
      E0FFB3B3B3FFD9D9D9FF787878FF959595FF9A9A9AFF616161FFBFBFBFFF4747
      47FFB3B3B3FF767676F70A0A0A0B00000000000000009A9A9AAAEEEFEFFFE6E8
      E8FFCACDCCFFA4AAA7FFE1D7CEFFE6DED8FFDACEC5FFD5CABFFFCFC1B4FFB5B4
      ADFF8B8F8DFF545454550000000000000000606062670909A8FB0000BBFF0008
      C6FF0016D4FF0020DFFF0032EDFF0349F6FF2C67F3FF4062AEFF627181FF626F
      78FF373A3EF53C3C3CE6454545E1767676B0737492AE686CF3FF6567F2FF6969
      738C000000000000000008080809626485A50620FBFF0727F5FF193CFFFF686C
      8BA8666DAAC64E5FFFFF6873FFFF61616778000000002E2E2E2F7A7A7AFFE3E3
      E3FFB5B5B5FFDBDBDBFF707070FF999999FF989898FF5B5B5BFFCECECEFF5656
      56FFA3A3A3FF606060FE1C1C1C1D00000000000000009A9A9AAAEFF0F0FFE8EA
      EAFFC7CACAFFA6ACA9FFEBE5DFFFEEE8E3FFEAE3DDFFE7E0D9FFE1D9D1FFC1C2
      BDFF737875FF545454550000000000000000606062670909A8FB0000BAFF0005
      C3FF0012D1FF001CDBFF002AE8FF003BF2FF1156F8FF306AF3FF4260A1FF5D6C
      79FF373A3DF6373737E8404040E4757575B27B80B0CB7581F6FF6B71EFFF494A
      4B51000000000909090A69698DB01317E7FF0008D7FF0619F7FF636789A60000
      000164667587334EFFFF5669FFFF6D6E7F9C0000000050505051838383FFF0F0
      F0FFE3E3E3FFDEDEDEFFB4B4B4FFBFBFBFFFBBBBBBFF9F9F9FFFAEAEAEFF9B9B
      9BFFB9B9B9FF424242FF4646464700000000000000009A9A9AAAF8F9F9FFEAEC
      ECFFD2D4D4FFA3A9A6FFDACFC4FFF0EAE5FFF1EDE8FFEFEAE5FFDED5CBFFAFAE
      A7FF939694FF545454550000000000000000606062673F3FB9FB4747CDFF3E42
      CFFF323FD6FF273DDCFF193AE3FF0E3BEBFF0242F3FF074DF7FF2655BDFF5869
      82FF383B3FF72F2F2FEC373737E8747474B48289B6CF8794FEFF7883F0FF4242
      434700000001707186A66A6AF5FF5B5BDDFF5354F1FF6A6B8FAF0A0A0A0B0000
      0000656773864D69FFFF6177FFFF6D6F819E0000000067676769989898FFFBFB
      FBFFF8F8F8FFEEEEEEFFE2E2E2FFD1D1D1FFC1C1C1FFB9B9B9FFA3A3A3FFAFAF
      AFFFCACACAFF545454FF6969696B00000000000000009A9A9AAAF9F9FAFFECEE
      EEFFE5E7E7FFAFB2B1FFB4B1AAFFDACDC2FFEBE3DCFFE1D5C9FFC0BAB0FF9497
      93FFC3C4C4FF545454550000000000000000606062675151C0FB5F5FD4FF5454
      D2FF454DD5FF3747DAFF2841DFFF1B3CE5FF0938EAFF0938C7FF617696FF788C
      95FF35393DF92A2A2AEE313131EB737373B68285A4BA99A9FFFF8F9DFDFF6768
      70867172839E8186FDFF6D70E6FF7475F8FF717187A507070708000000000000
      00006F7195B35568FEFF5770FFFF64656D800E0E0E0F9191919F606060FF6E6E
      6EFF616161FF5C5C5CFF555555FF545454FF565656FF585858FF5B5B5BFF6262
      62FF767676FF525252FF8888889201010102000000009A9A9AAAFAFAFAFFEEEF
      EFFFEDEEEEFFE6E7E7FFAFB2B1FFA4A9A6FFA5ABA8FFA3A9A7FF9BA09EFFA9AC
      ACFFADB0AFFF545454550000000000000000525253567171A3D27676ABD57373
      ABD56E70ABD5666BACD82B3BCAFD2138DBFF223AB5FF8393AFFF9CACB3FF8897
      9FFF33393EFA222222F2272727F0727272B86D6E7B87B4C1FFFF99A8FDFF8693
      EFFE8B99FCFF858EF2FF8B92FFFF75758FAE0909090A00000000000000003232
      33356467D8F45A63EEFF5968F5FF414141463F3F3F40B4B4B4EAC5C5C5FFC4C4
      C4FFB1B1B1FF9B9B9BFF868686FF898989FF888888FF848484FF797979FF7575
      75FF6C6C6CFF8A8A8AFF9A9A9AD32A2A2A2B000000009A9A9AAAFBFBFBFFF0F1
      F1FFEFF0F0FFEDEEEFFFE7E8E8FFD4D5D5FFC9CCCBFFBEC1C0FFA9ACACFF9294
      95FF989B9AFF545454550000000000000000111111122A2A2A2B2A2A2A2B2A2A
      2A2B2A2A2A2B3C3C3C3D2A30AFF93640A9F16D7A99FFC0CED3FFA9B9BFFF8E9D
      A5FF33393DFC1A1A1AF51F1F1FF3717171BA2D2D2E2FB7BEF5FBB3BEFFFFA6B3
      FFFF9AA9FEFF94A1FAFE71717E960000000000000000000000002E2E2E307778
      BFDB6B6CE9FF6A6CF1FF6F71ABD0070707084F4F4F50878787FA767676FF6969
      69FF707070FF7A7A7AFF8C8C8CFF949494FF929292FF878787FF757575FF6E6E
      6EFF626262FF777777FF909090F64B4B4B4C000000009A9A9AAAFBFBFBFFF2F2
      F2FFF1F2F1FFEFF0F0FFEEEFEFFFECEDEEFFEBECEDFFB7B9B8FFAAAEACFFABAF
      ADFF8D9190FF5454545500000000000000000000000000000000000000000000
      000000000000151515165D5E8DD35D5D5E64A2B0B3FFCDDCE1FFB9C7CCFF9FAD
      B3FF34393CFD0F0F0FF9151515F76F6F6FBD0000000074758592D8DFFFFFB8C0
      FEFFB0BBFFFF99A5EDFB66676C814646484D4D4D4F556C6D768D7D80CBEC8284
      F1FF7777E7FF7474EFFF49494A51000000003939393A7D7D7DE4CACACAFFD1D1
      D1FFBFBFBFFF868686FF828282FF818181FF818181FF818181FF8F8F8FFFC7C7
      C7FFCECECEFFC0C0C0FF6B6B6BEF44444445000000009A9A9AAAF7F7F7FFF3F3
      F3FFF3F3F3FFF1F2F1FFF0F1F1FFEEEFF0FFEDEEEEFFC0C1C1FFF2F2F2FFDBDB
      DBFFA5A6A5CF2424242500000000000000000000000000000000000000000000
      000000000000121212134848494B20202021A9B7BAFFD3E2E7FFBDCCD0FFABB8
      BEFF32383BFF060606FC0C0C0CFA6D6D6DBF000000000B0B0B0C86889FB0E0E5
      FFFFC6CDFFFFB8C1FFFFB4C0FFFFA0ADF7FF9AA6F6FF9EA8FFFF939BF8FF9196
      F3FF8B8EF7FF6262687600000000000000000000000020202021939393A4A6A6
      A6C8A4A4A4EF343434FE2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF434343FEAFAF
      AFF5ACACACD8949494B148484849020202030000000082828288C1C3C2FFD4D6
      D5FFD6D8D7FFD6D8D7FFD6D8D7FFD4D5D5FFD2D4D3FFCACCCBFFBFC1C0FFA8A9
      A9D1121212130000000100000000000000000000000000000000000000000000
      00000000000000000000000000001A1A1A1BB0BDC1FFD7E7EBFFBFCDD2FFACB9
      BFFF33393CFF000000FE030303FD6D6D6DC000000000000000000909090A7576
      8390CACCEEF8DBE1FFFFCDD5FFFFC1CBFFFFB6C2FFFFB0BEFFFFA8B3FDFF8F93
      C9E258585B650000000000000000000000000000000000000000030303041D1D
      1D1E636363657E7E7EE64F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF8F8F8FCF5656
      56582D2D2D2E0808080900000000000000000000000016161617545454555454
      5455545454555454545554545455545454555454545554545455545454552626
      2627000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000121212137F8284E18A8F8FE0808587E07A7E
      80E066686AD46C6C6CC16C6C6CC1777777980000000000000000000000000000
      0000313132336E6E7A849091A8B8A1A3C7D7989CBFD0808293AB5E5F636D1818
      1819000000000000000000000000000000000000000000000000865D22FFA181
      50FFA1814FFFA1814FFFA1814FFFA1814FFFA1814FFFA1814FFFA1814FFFA181
      4FFFA07E4EFF9E7C4FFF4D2D03AA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000040101
      010A0202020F0404041205050514040404160606061706060617060606160505
      05140101010E01010108000000010000000000000000000000004242768F3E3E
      8BAF0F0F0F100000000000000000000000000000000000000000000000000F0F
      0F10494995AF4D4D808F00000000000000000000000000000000A28355FFF7F5
      EFFFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFF5F2EAFF513309AA000000000000000000000000000000000000
      0000010101080F2E08780000000E000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000004484949865A5C
      5CB45A5E5DB95A605EBC5B615FBE5D6060C05D625EC15E6261C15D6260C05B61
      5FBE5A5E5CB84A4C4B8C0000000900000001000000004040819F0404B7FF0707
      BAFF33339DCF0F0F0F10000000000000000000000000000000000F0F0F103F3F
      A8CF3636EEFF3E3EF7FF5050909F000000000000000000000000AF9265FFF9F8
      F5FFF3F1E8FFF3F0E7FFF3F0E8FFF3F0E8FFF2EFE6FFEFE9E0FFEFEAE0FFF2EC
      E5FFF2EDE5FFEDE7DDFF573709AA000000000000000000000000000000000000
      00091043109A12A133FF175F18CD040C032C0000000100000000000000000000
      000000000000000000000000000000000000000000000000000BABAFADFFF6F7
      F7FFF4F5F5FFF4F5F5FFF3F4F5FFF3F4F4FFF2F3F4FFF2F3F3FFF1F3F3FFF1F2
      F2FFF3F4F4FFACAFAEFF01010110000000014F4F7A8F0505B5FF0404B7FF0707
      BAFF0A0ABDFF33339ECF0F0F0F1000000000000000000F0F0F103C3CA5CF2D2D
      E4FF3434ECFF3939F2FF3B3BF4FF4D4D808F0000000000000000B69A6FFFF9F8
      F5FFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F3ECFFF3F2E8FFF5F2
      EDFFF6F4EEFFECE6DCFF583709AA000000000000000000000000000000070E32
      0D7F149F3AFF0EBA56FF12AC45FF15621CCD0000000E00000001000000000000
      000000000000000000000000000000000000000000000101010AAEB1B0FFEBED
      EDFFDFE3E3FFDEE1E2FFDCE0E1FFDBDEDFFFD9DDDEFFD8DCDCFFD6DBDBFFD5D9
      DAFFE2E5E6FFAEB1B0FF0000000A00000001565693AF5252CEFF0707B7FF0606
      B9FF0909BCFF0C0CC0FF3434A0CF0F0F0F100F0F0F103B3BA4CF2424DAFF2A2A
      E0FF2F2FE6FF3333EBFF3434ECFF494995AF0000000000000000B99E74FFF9F8
      F5FFF5F3EDFFF5F2EDFFF5F2EDFFF5F2EDFFF5F3EEFFF6F2EEFFF7F3F0FFF7F4
      F0FFF7F6F0FFECE6DCFF583709AA0000000000000001000000091047189A16A5
      46FF17BE68FF1EB76FFF19B866FF15BA5AFF146723CD040D052B000000010000
      0000000000000000000000000000000000000000000000000003AEB1B0FFECEE
      EEFFA4A8A7FFA4A8A7FFA3A7A6FFA3A7A6FF00265BFF577BA5FFA3BCD9FFD2D8
      DBFFE4E6E6FFAEB1B0FF00000001000000000F0F0F105353A8CF5353CFFF0909
      B9FF0808BBFF0B0BBFFF0F0FC3FF3535A0CF3737A2CF1C1CD1FF2121D6FF2525
      DBFF2929E0FF2C2CE3FF3F3FA8CF0F0F0F100000000000000000B99E74FFF9F8
      F5FFF5F3EDFFF5F2EDFFF5F2EDFFF5F1ECFFF7F5F0FFF6F3EFFFFAF5F3FFFBF6
      F3FFF8F5F2FFECE6DBFF583709AA00000000010101080C36127E18A950FF1CC5
      73FF26C17CFF3AD9AAFF2BC98CFF20C274FF18B85FFF136928CD0000000F0000
      0001000000000000000000000000000000000000000000000000AEB1B0FFEEEF
      EFFFE4E6E6FFE2E4E5FFE1E3E4FFDFE2E3FF628BC0FF2373B5FF126FE1FFA4BC
      DAFFE5E7E8FFAEB1B0FF0000000000000000000000000F0F0F105353A8CF5353
      D0FF0A0ABBFF0A0ABEFF0D0DC1FF1111C5FF1515C9FF1919CEFF1D1DD2FF2020
      D6FF2323D9FF3C3CA5CF0F0F0F10000000000000000000000000B99E74FFF9F8
      F5FFF5F3EDFFF5F2EDFFF4F1ECFFF6F1EDFFF9F5F2FFFBF9F2FFFAF8F4FFFAF6
      F3FFF7F1E9FFEDE6DDFF58370BAA000000000D4F1E9A19B25EFF24D188FF2BC9
      87FF38DBA9FF24C279FF37DAA6FF36D6A2FF27CC85FF1BC574FF136F2DCD040F
      072B000000010000000000000000000000000000000000000000AEB1B0FFEFF0
      F0FFA6AAA8FFA5A9A8FFA4A9A8FFA4A8A7FF869CB6FF189EE2FF1FAAF9FF056D
      E4FF9CBBE2FFA8ADAFFF000000010000000000000000000000000F0F0F105454
      A8CF5454D0FF0C0CBCFF0C0CBFFF0F0FC3FF1212C6FF1515CAFF1818CDFF1C1C
      D1FF3A3AA4CF0F0F0F1000000000000000000000000000000000B89F7AFFF9F8
      F5FFF6F3EDFFF5F2EDFFF6F3EFFFF9F3F1FFFAF9F4FFFBFBF6FFFAF8F5FFF6F2
      EDFFF1EBE3FFEDE4DAFF59390BAA000000000D4E1E9219B666FF39DDA6FF3CDF
      ACFF21B66BFF0C4E1F8E1CA555FF3CDDAAFF35D49BFF2DD390FF1DC273FF1173
      32CD0000000F0000000100000000000000000000000000000000AEB1B0FFF0F1
      F2FFE8EAEAFFE6E8E9FFE5E7E8FFE3E6E6FFE2E4E5FFAFC4DFFF0599E4FF1FAA
      F9FF1672E4FF577DAFFF00000000000000000000000000000000000000000F0F
      0F105454A8CF4B4BCFFF0A0ABDFF0C0CC0FF0F0FC3FF1212C6FF1414C9FF3737
      A1CF0F0F0F100000000000000000000000000000000000000000BBA988FFF9F8
      F5FFFAFBF6FFF9F9F2FFFAF9F9FFFAF9FAFFFAFAF9FFF9F8F8FFF2F0E9FFEDE8
      E1FFE8E0D6FFE1D4C4FF5A3B0FAA00000000000000030A3E197423BC75FF23BB
      73FF0B3D187100000000041F0C39138E46E341E0AEFF40E0A9FF35DFA0FF23D1
      89FF117738CD0410072B00000001000000000000000000000000AEB1B0FFF2F3
      F3FFA7ABA9FFA6AAA9FFA6AAA9FFA5A9A8FFA5A9A8FFA4A9A7FF879DB6FF189E
      E2FF1FAAF9FF056DE4FF1F334F7E0507070E0000000000000000000000000F0F
      0F103E3EA0CF2C2CC4FF1B1BC1FF0C0CBEFF0C0CC0FF0E0EC2FF1111C5FF3535
      A0CF0F0F0F100000000000000000000000000000000000000000C2AF91FFF9F8
      F5FFFBFCF9FFFAFBF8FFFAFAFBFFFAFAFCFFFAFAF7FFF5F3EBFFEDE9E2FFE7E1
      D7FFE0D5C6FFD4C5ADFF5C3D11AA0000000000000000000000010C54268E0C54
      268E000000000000000000000000041F0C391DAE62FF47E5B3FF45E6B0FF39E5
      A8FF21CC85FF117A3CCD0000000F000000010000000000000000AEB1B0FFF3F4
      F4FFECEDEDFFEAEBECFFE9EAEBFFE7E8E9FFE6E8E8FFE4E6E7FFE4E6E7FFAEC4
      DFFF0599E4FF1FAAF9FF0560CFF10619344700000000000000000F0F0F103F3F
      A0CF3232C4FF3030C5FF2E2EC5FF2D2DC6FF2626C5FF1E1EC4FF1D1DC5FF1D1D
      C6FF3C3CA1CF0F0F0F1000000000000000000000000000000000CBB89AFFF9F8
      F5FFFAFBFBFFFAFAFAFFFAFAFBFFFAFBF8FFF6F5EEFFF1ECE2FFDED4C5FFDBCB
      BBFFD1BEA5FFC1AB88FF5E4115AA000000000000000000000000000000000000
      00000000000000000000000000000000000004210E39129652E34BE8BBFF4EEE
      BCFF3FECB1FF28DA99FF107C41CD0311082C0000000000000000AEB1B0FFF4F4
      F5FFA8ACABFFA8ABAAFFA7ABAAFFA7ABA9FFA6AAA9FFA6AAA8FF9FA3A2FF9B9F
      9DFF96ABC6FF1BA1E5FF1C78CEED03173143000000000F0F0F103F3FA0CF3737
      C4FF3434C4FF3232C4FF3030C5FF2E2EC5FF6666D7FF2F2FC7FF2C2CC7FF2C2C
      C8FF2B2BC9FF3C3CA0CF0F0F0F10000000000000000000000000CDBCA0FFF9F8
      F5FFF8FBFBFFFAFBFBFFF9FBF8FFF6F6EDFFF1EDE5FFE8DFD3FFCEBC9FFFE6DD
      D2FFDBD0BAFFBCA37BFF604319AA000000000000000000000000000000000000
      00000000000000000000000000000000000000000000042210391DB66FFF50EB
      C0FF4DF0BDFF41F1B9FF1ED595FF0F8046CD0000000000000000AEB1B0FFF6F6
      F6FFF0F1F1FFEEEFEFFFEDEEEEFFECEDEDFFEAEBECFFE8EAEAFFC9CACBFFA4A5
      A6FFB5B6B7FF90A6BFFF031730430303030A0F0F0F104242A1CF3C3CC5FF3939
      C5FF3737C4FF3434C4FF3232C4FF3E3EA0CF5959AACF6E6ED9FF3030C6FF2D2D
      C6FF2C2CC6FF2C2CC7FF3E3EA0CF0F0F0F100000000000000000CDBDA3FFF9F8
      F5FFFAFBFCFFFBFBFBFFF5F4EFFFEEE8E1FFEBDFD5FFD8C8B4FFCEBB9DFFF4F1
      E9FFC4AE8BFF81663BC600000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004231239119C
      5CE350EEC3FF40EFBDFF119D5DE3042312390000000000000000AEB1B0FFF7F7
      F7FFAAADACFFA9ADABFFA9ACABFFA8ACAAFFA8ABAAFFD4D6D6FFA2A3A2FFACAF
      AEFFABAFADFF939795FF00000000000000005D5D96AF5252CCFF3F3FC6FF3C3C
      C5FF3939C5FF3737C4FF3F3FA0CF0F0F0F100F0F0F105A5AAACF6F6FD8FF3131
      C5FF2E2EC5FF2E2EC5FF2E2EC5FF47478DAF0000000000000000CEBFA5FFF9F8
      F5FFFAFBFAFFF9F6F0FFF1E9E2FFE6DFD6FFE0D1C0FFD2BDA2FFBEAB88FFD0C0
      A7FF7F6538C6120C071C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000424
      12391EBD7BFF1CBD7AFF04241239000000000000000000000000AEB1B0FFF7F7
      F7FFF3F3F3FFF2F3F2FFF1F2F1FFF0F0F0FFEEEFEFFFEDEEEDFFC0C0C0FFF9F9
      F9FFE1E3E2FF5A5B5A9E00000000000000005D5D808F9898E6FF5151CCFF3F3F
      C6FF3C3CC5FF3F3FA0CF0F0F0F1000000000000000000F0F0F105A5AAACF7070
      D8FF3333C5FF3030C4FF3030C4FF4A4A788F0000000000000000CEC1A7FFF5F3
      EEFFFAF8F6FFF3EFEBFFEBE2D6FFDED4C4FFD4C1A7FFC3AD89FFA1814AFF8166
      3DC6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000022512390225123900000000000000000000000000000000878A89DDD2D4
      D3FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFD6D8D7FFC0C2
      C1FF3E403F850000000B00000000000000000000000063638E9F9898E6FF5252
      CCFF4242A1CF0F0F0F10000000000000000000000000000000000F0F0F105A5A
      AACF7272D8FF3636C4FF4B4B849F000000000000000000000000C5B495FFCFBF
      A6FFCEBEA5FFCCBBA0FFC9B79BFFC5B08EFFC0A780FFAF9565FF78582CC6110B
      061C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000171717332C2E
      2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E2D552C2E
      2D550101010B00000000000000000000000000000000000000005D5D808F5D5D
      96AF0F0F0F100000000000000000000000000000000000000000000000000F0F
      0F105C5C95AF55557C8F0000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00F00FF00FFFFF0000E007E007FFFF0000
      C003C003F00F000080018001E00F000003800000C017000007000000C3E30000
      0E000000C7C100000C1000000100000008300000018000000070000083E30000
      00E00000C7C3000001C00000C003000080018001E0070000C003C003F00F0000
      E007E007FFFF0000F00FF00FFFFF0000C0038000800FF00FC0030000000FE007
      C00300008000C003C0030000E0008001C0010003F80003808001800300000600
      8001800300000C00800180030000080080018003000000108001800300000030
      000080030000006000008003000001C000008003F800800100008003F8008003
      80008003FE00C007C003800FFE00F00FC001FFFFC001C7E3C001F0FF800083C1
      C001E07F80000180C001C03F80000000C001001F80010000C001000FC0038001
      C0010007C001C003C0010003C003E007C0010401C000E007C0018E00C000C003
      C001FF00C0008001C001FF80C0000000C003FFC0C0030000C003FFE1C0030180
      C00FFFF3C00383C1C00FFFFFC007C7E300000000000000000000000000000000
      000000000000}
  end
  inherited MenuConfig: TPopupMenu
    Left = 496
    Top = 276
  end
  inherited ImgListMenuConfig: TImageList
    Left = 356
    Top = 360
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 440
    Top = 248
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = 7237230
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.Padding.AssignedValues = [lpavTop]
      ItemOptions.Padding.Top = 2
      ItemOptions.ControlBorderStyle = lbsFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.ScrollbarMode = sbmDefault
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = 7237230
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderStyle = lbsFlat
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = True
      LookAndFeel.ScrollbarMode = sbmDefault
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    GroupName = 'Venda'
    Left = 412
    Top = 360
  end
  object DSNF_CST: TDataSource [12]
    AutoEdit = False
    DataSet = NF_CST
    Left = 412
    Top = 248
  end
  object DSNT_CST_PIS_COFINS: TDataSource [13]
    AutoEdit = False
    DataSet = NT_CST_PIS_COFINS
    Left = 412
    Top = 276
  end
  object DSNT_CST_IPI: TDataSource [14]
    AutoEdit = False
    DataSet = NF_CST_IPI
    Left = 412
    Top = 304
  end
  object NF_CST: TFDQuery [15]
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select CODIGO, DESCRICAO'
      'from NF_CST'
      'where (TIPO in ('#39'CST'#39', '#39'CSOSN'#39'))'
      'order by TIPO, CODIGO')
    Left = 384
    Top = 248
    object NF_CSTCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object NF_CSTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
  end
  object NT_CST_PIS_COFINS: TFDQuery [16]
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select CODIGO, DESCRICAO'
      'from NF_CST'
      'where (TIPO = '#39'PIS_COFINS'#39')'
      'order by CODIGO')
    Left = 384
    Top = 276
    object NT_CST_PIS_COFINSCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object NT_CST_PIS_COFINSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
  end
  object NF_CST_IPI: TFDQuery [17]
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select CODIGO, DESCRICAO'
      'from NF_CST'
      'where (TIPO = '#39'CST_IPI'#39')'
      'order by CODIGO')
    Left = 384
    Top = 304
    object NF_CST_IPICODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object NF_CST_IPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
  end
  object DS_CentroTrabalho: TDataSource [18]
    Left = 356
    Top = 276
  end
  object TransaFD: TFDTransaction [19]
    Connection = DMBanco.Banco
    Left = 496
    Top = 248
  end
  object OpenDialog1: TOpenDialog [20]
    Filter = 'Imagens'
    Left = 496
    Top = 304
  end
  inherited MenuImprimir: TPopupMenu
    Left = 524
    Top = 276
  end
  inherited WREventosCadastro: TWREventosCadastro
    OnLayoutChange = WREventosCadastroLayoutChange
    Left = 524
    Top = 304
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK2 = 'CODVENDA'
    Tabela = 'VENDA_PRODUTO'
    Modulo = 'VENDA'
    Left = 574
    Top = 274
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 412
    Top = 388
    PixelsPerInch = 96
    object EstiloSegoeSB14: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
    end
    object EstiloSegoe12: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 5395026
    end
    object EstiloSegoe14: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 12615680
    end
    object EstiloSegoe8: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object EstiloGrupo: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16744576
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object EstiloGrupoInterno: TcxStyle
    end
    object EstiloSegoe14Verde: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clGreen
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 7237230
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      TextColor = 35345
    end
    object EstiloSegoe10: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 12615680
    end
  end
  object MenuDireita: TPopupMenu
    OnPopup = MenuDireitaPopup
    Left = 524
    Top = 248
    object VisualizarProduo1: TMenuItem
      Caption = 'Visualizar Produ'#231#227'o'
    end
  end
  object WRFormataCamposDataSets1: TWRFormataCamposDataSets
    OnCarregaDataSets = WRFormataCamposDataSets1CarregaDataSets
    Left = 630
    Top = 274
  end
  object PmComposicaoRT: TwrProdutoMemoria
    SQLProduto.Strings = (
      
        'select P.CODIGO as CODPRODUTO, P.DESCRICAO as PRODUTO, P.QTDADEP' +
        'ECA, P.QUANT, '
      '       P.VALOR, P.DT_ALTERACAO, P.CODPRODUTO_GRUPO, P.UNIDADE,'
      
        '       P.CUSTO_VENDA_TOTAL, P.CODLOCAL, P.LOCAL, P.PESO, P.MARGE' +
        'M, P.CUSTO_EXTRA,'
      
        '       P.NAO_RETORNA_ESTOQUE_AO_CANCELAR, P.CUSTO_VENDA, P.CUSTO' +
        ','
      
        '       P.CUSTO_PERC, P.CUSTO_VENDA_PERC, P.CUSTO_VENDA_EXTRA, P.' +
        'PERC_LUCRO_DESEJADO,'
      
        '       P.VALOR_POR_PECA, P.CUSTO_VENDA_MINIMO, P.VALOR_LUCRO, P.' +
        'PERC_MARGEM_CONTRIBUICAO,'
      '       P.MARKUP, P.TOTAL, FP.CODIGO as CODFORMULA_PERFIL,'
      ''
      '       iif(P.USAR_MEDIDA_PADRAO = '#39'S'#39', P.COMP, 1) as COMP,'
      '       iif(P.USAR_MEDIDA_PADRAO = '#39'S'#39', P.LARG, 1) as LARG,'
      
        '       iif(P.USAR_MEDIDA_PADRAO = '#39'S'#39', P.ESPESSURA, 1) as ESPESS' +
        'URA'
      'from PRODUTO P '
      'left join FORMULA_PERFIL FP on (FP.PADRAO = '#39'S'#39')'
      'where (P.CODIGO = :CODPRODUTO)')
    SQLComposicao.Strings = (
      
        'select PC.CODIGO, PC.DESCRICAO as PRODUTO, PC.CODPRODUTO, PC.QUA' +
        'NT, PC.COMP, PC.LARG, PC.QTDADEPECA,'
      '       PC.VALOR, PC.DT_ALTERACAO, PC.ESPESSURA, PC.PARENT,'
      
        '       PC.PRODUCAO, P.UNIDADE, PC.CUSTO_VENDA_TOTAL, PC.PESO,  P' +
        'C.MARGEM, PC.CUSTO_EXTRA,'
      
        '       PC.CODFORMULA_PERFIL, PC.CUSTO_VENDA, PC.COMP_FORMULA, PC' +
        '.LARG_FORMULA, PC.ESPESSURA_FORMULA,'
      
        '       PC.QTDADEPECA_FORMULA, PC.COMP_COMPOSICAO, PC.LARG_COMPOS' +
        'ICAO,'
      
        '       PC.ESPESSURA_COMPOSICAO, PC.QTDADEPECA_COMPOSICAO, PC.QUA' +
        'NT_COMPOSICAO, PC.CUSTO,'
      
        '       PC.TOTAL_COMPOSICAO, PC.CUSTO_PERC, PC.CUSTO_VENDA_PERC, ' +
        'PC.CUSTO_VENDA_EXTRA,'
      
        '       PC.PERC_LUCRO_DESEJADO, PC.VALOR_POR_PECA, PC.CUSTO_VENDA' +
        '_MINIMO, PC.VALOR_LUCRO,'
      '       PC.PERC_MARGEM_CONTRIBUICAO, PC.MARKUP, PC.TOTAL'
      'from PRODUTO_COMPOSICAO PC'
      'left join PRODUTO P on (PC.CODPRODUTO = P.CODIGO)'
      'where (PC.CODPRODUTO_COMPOSICAO = :CODPRODUTO)')
    Connection = DMBanco.Banco
    Left = 602
    Top = 302
  end
  object WRCalc: TWRCalculaConfiguracoes
    DSProduto = DS
    DSCentroTrabalho = DS_CentroTrabalho
    TipoCalculo = tcVenda
    SPrTipoCalc = tssCalcCompra
    Left = 602
    Top = 274
  end
  object PmComposicao: TwrProdutoMemoria
    SQLProduto.Strings = (
      
        'select P.CODIGO as CODPRODUTO, P.DESCRICAO as PRODUTO, P.QTDADEP' +
        'ECA, P.QUANT, '
      
        '       P.VALOR, P.DT_ALTERACAO, P.CODPRODUTO_GRUPO, P.UNIDADE, P' +
        '.CUSTO_FABR,'
      
        '       P.CUSTO_VENDA_TOTAL, P.CODLOCAL, P.LOCAL, P.PESO, P.MARGE' +
        'M, P.CUSTO_EXTRA,'
      
        '       P.NAO_RETORNA_ESTOQUE_AO_CANCELAR, P.CUSTO_VENDA, P.CUSTO' +
        ', P.CUSTO_FABR_TOTAL,'
      
        '       P.CUSTO_PERC, P.CUSTO_VENDA_PERC, P.CUSTO_VENDA_EXTRA, P.' +
        'PERC_LUCRO_DESEJADO,'
      
        '       P.VALOR_POR_PECA, P.CUSTO_VENDA_MINIMO, P.VALOR_LUCRO, P.' +
        'PERC_MARGEM_CONTRIBUICAO,'
      
        '       P.MARKUP, P.TOTAL, cast(null as integer) as CODFORMULA_PE' +
        'RFIL,'
      '       '
      '       iif(P.USAR_MEDIDA_PADRAO = '#39'S'#39', P.COMP, 1) as COMP,'
      '       iif(P.USAR_MEDIDA_PADRAO = '#39'S'#39', P.LARG, 1) as LARG,'
      
        '       iif(P.USAR_MEDIDA_PADRAO = '#39'S'#39', P.ESPESSURA, 1) as ESPESS' +
        'URA'
      'from PRODUTO P'
      'where (P.CODIGO = :CODPRODUTO)')
    SQLComposicao.Strings = (
      
        'select PC.CODIGO, PC.DESCRICAO as PRODUTO, PC.CODPRODUTO, PC.QUA' +
        'NT, PC.COMP, PC.LARG, PC.QTDADEPECA,'
      
        '       PC.VALOR, PC.DT_ALTERACAO, PC.ESPESSURA, P.CODPRODUTO_GRU' +
        'PO, PC.PARENT,'
      
        '       PC.PRODUCAO, P.UNIDADE, PC.CUSTO_VENDA_TOTAL, P.CODLOCAL,' +
        ' P.LOCAL, PC.PESO,'
      '       PC.MARGEM, PC.CUSTO_EXTRA, PC.CUSTO_COMPOSICAO,'
      
        '       PC.CODFORMULA_PERFIL, P.NAO_RETORNA_ESTOQUE_AO_CANCELAR, ' +
        'PC.CUSTO_VENDA,'
      '       PC.COMP_FORMULA, PC.LARG_FORMULA, PC.ESPESSURA_FORMULA,'
      
        '       PC.QTDADEPECA_FORMULA, PC.COMP_COMPOSICAO, PC.LARG_COMPOS' +
        'ICAO,'
      
        '       PC.ESPESSURA_COMPOSICAO, PC.QTDADEPECA_COMPOSICAO, PC.QUA' +
        'NT_COMPOSICAO, PC.CUSTO,'
      
        '       PC.TOTAL_COMPOSICAO, PC.CUSTO_PERC, PC.CUSTO_VENDA_PERC, ' +
        'PC.CUSTO_VENDA_EXTRA,'
      
        '       PC.PERC_LUCRO_DESEJADO, PC.VALOR_POR_PECA, PC.CUSTO_VENDA' +
        '_MINIMO, PC.VALOR_LUCRO,'
      
        '       PC.PERC_MARGEM_CONTRIBUICAO, PC.MARKUP, PC.TOTAL, P.COMPO' +
        'SICAO'
      'from PRODUTO_COMPOSICAO PC'
      'left join PRODUTO P on (PC.CODPRODUTO = P.CODIGO)'
      'where (PC.CODPRODUTO_COMPOSICAO = :CODPRODUTO)')
    Connection = DMBanco.Banco
    Left = 148
    Top = 120
  end
  object WRCalcMemoria: TWRCalculaConfiguracoes
    TipoCalculo = tcVenda
    SPrTipoCalc = tssCalcCompra
    Left = 120
    Top = 120
  end
  object Venda_Produto_Prerequisito: TFDQuery
    BeforeEdit = Venda_Produto_PrerequisitoBeforeEdit
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterFields = 'CODIGO;CODVENDA'
    DetailFields = 'CODVENDA_PRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize, evCache]
    FetchOptions.RowsetSize = 10000
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'SELECT PBA.*, PE.ORDEM, PC.DESCRICAO, CT.descricao AS EQUIPE FRO' +
        'M PRODUTO_BAIXA_AUTOMATICA PBA'
      'LEFT JOIN PRODUTO_ETAPA PE ON PE.CODIGO = PBA.CODPRODUTO_ETAPA'
      
        'LEFT JOIN CENTRO_TRABALHO CT ON CT.codigo = PE.codcentro_trabalh' +
        'o'
      
        'LEFT JOIN PRODUTO_COMPOSICAO PC ON PC.CODIGO = PBA.CODPRODUTO_CO' +
        'MPOSICAO'
      
        'WHERE PBA.CODVENDA_PRODUTO = :CODIGO and PBA.CODVENDA = :CODVEND' +
        'A')
    Left = 511
    Top = 388
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end
      item
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    object StringField8: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodTabela'
      Calculated = True
    end
    object StringField9: TStringField
      FieldKind = fkCalculated
      FieldName = 'SituacaoProducao'
      Size = 30
      Calculated = True
    end
    object FloatField3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CustoPorPeca'
      Calculated = True
    end
  end
  object Venda_Produto_Baixa_Automatica: TFDQuery
    BeforeEdit = Venda_Produto_Baixa_AutomaticaBeforeEdit
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterFields = 'CODIGO;CODVENDA'
    DetailFields = 'CODVENDA_PRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize, evCache]
    FetchOptions.RowsetSize = 10000
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'SELECT PPR.*, CT1.DESCRICAO AS ETAPA, CT2.DESCRICAO AS PREREQUIS' +
        'ITO, PE1.ORDEM FROM PRODUTO_PREREQUISITO PPR'
      'LEFT JOIN PRODUTO_ETAPA PE1 ON PE1.CODIGO = PPR.CODPRODUTO_ETAPA'
      
        'LEFT JOIN PRODUTO_ETAPA PE2 ON PE2.CODIGO = PPR.CODPRODUTO_ETAPA' +
        '_PREREQUISITO'
      
        'LEFT JOIN CENTRO_TRABALHO CT1 ON CT1.CODIGO = PE1.CODCENTRO_TRAB' +
        'ALHO'
      
        'LEFT JOIN CENTRO_TRABALHO CT2 ON CT2.CODIGO = PE2.CODCENTRO_TRAB' +
        'ALHO'
      
        'WHERE PPR.CODVENDA_PRODUTO = :CODIGO and PPR.CODVENDA = :CODVEND' +
        'A'
      'ORDER BY PE1.ORDEM ASC')
    Left = 539
    Top = 388
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end
      item
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    object StringField6: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodTabela'
      Calculated = True
    end
    object StringField7: TStringField
      FieldKind = fkCalculated
      FieldName = 'SituacaoProducao'
      Size = 30
      Calculated = True
    end
    object FloatField2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CustoPorPeca'
      Calculated = True
    end
  end
  object Venda_Produto_Etapas: TFDQuery
    BeforeEdit = Venda_Produto_EtapasBeforeEdit
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterFields = 'CODIGO;CODVENDA'
    DetailFields = 'CODVENDA_PRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize, evCache]
    FetchOptions.RowsetSize = 10000
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT PE.*, CT.DESCRICAO AS EQUIPE FROM PRODUTO_ETAPA PE '
      
        'LEFT JOIN CENTRO_TRABALHO CT ON CT.CODIGO = PE.CODCENTRO_TRABALH' +
        'O'
      'WHERE PE.CODVENDA_PRODUTO = :CODIGO and PE.CODVENDA = :CODVENDA'
      'ORDER BY PE.ordem ASC')
    Left = 567
    Top = 388
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end
      item
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    object StringField4: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodTabela'
      Calculated = True
    end
    object StringField5: TStringField
      FieldKind = fkCalculated
      FieldName = 'SituacaoProducao'
      Size = 30
      Calculated = True
    end
    object FloatField1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CustoPorPeca'
      Calculated = True
    end
  end
end
