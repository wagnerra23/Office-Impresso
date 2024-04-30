inherited Frame_Boleto: TFrame_Boleto
  Width = 620
  ExplicitWidth = 620
  inherited MainLayout: TdxLayoutControl
    Width = 512
    ExplicitWidth = 512
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 207
      Top = 62
      TabOrder = 5
      ExplicitLeft = 207
      ExplicitTop = 62
    end
    inherited edtDescricao: TcxDBTextEdit
      ExplicitWidth = 382
      Width = 382
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 23
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 22
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 454
      ExplicitLeft = 454
    end
    object Label74: TcxLabel [6]
      Left = 18
      Top = 98
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Height = 19
      Width = 504
    end
    object CbBoletoCarteira: TcxDBComboBox [7]
      Left = 18
      Top = 132
      DataBinding.DataField = 'CARTEIRA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 7
      Width = 58
    end
    object DBComboBox4: TcxDBComboBox [8]
      Left = 77
      Top = 132
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Carn'#234
        'Boleto')
      Style.HotTrack = False
      TabOrder = 8
      Width = 70
    end
    object DBEdit28: TcxDBTextEdit [9]
      Left = 148
      Top = 132
      DataBinding.DataField = 'BOLETO_NOSSO_NR'
      DataBinding.DataSource = DS
      Properties.CharCase = ecUpperCase
      Style.Color = clBtnFace
      Style.HotTrack = False
      TabOrder = 9
      Width = 134
    end
    object DBMemo1: TcxDBMemo [10]
      Left = 18
      Top = 168
      DataBinding.DataField = 'DEMONSTRATIVO'
      DataBinding.DataSource = DS
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 11
      Height = 114
      Width = 504
    end
    object DBEdit31: TcxDBCurrencyEdit [11]
      Left = 18
      Top = 297
      DataBinding.DataField = 'ABATIMENTO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 12
      Width = 88
    end
    object DBEdit29: TcxDBCurrencyEdit [12]
      Left = 107
      Top = 297
      DataBinding.DataField = 'JUROS_MORA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 13
      Width = 54
    end
    object DBEdit30: TcxDBCurrencyEdit [13]
      Left = 162
      Top = 297
      DataBinding.DataField = 'MULTA'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 14
      Width = 83
    end
    object EdtBoletoDesconto: TcxDBCurrencyEdit [14]
      Left = 246
      Top = 297
      Hint = 
        'Desconto que ser'#225' dado caso o boleto seja pago at'#233' a data de ven' +
        'cimento'
      DataBinding.DataField = 'DESCONTO'
      DataBinding.DataSource = DS
      ParentShowHint = False
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 15
      Width = 75
    end
    object DBEdit33: TcxDBCurrencyEdit [15]
      Left = 322
      Top = 297
      DataBinding.DataField = 'PROTESTO'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Style.HotTrack = False
      TabOrder = 16
      Width = 74
    end
    object DBComboBox6: TcxDBComboBox [16]
      Left = 397
      Top = 297
      DataBinding.DataField = 'ACEITE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'S'
        'N')
      Style.HotTrack = False
      TabOrder = 17
      Width = 40
    end
    object DBComboBox7: TcxDBComboBox [17]
      Left = 18
      Top = 333
      DataBinding.DataField = 'TIPOOCORRENCIA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'toRemessaRegistrar'
        'toRemessaBaixar'
        'toRemessaDebitarEmConta'
        'toRemessaConcederAbatimento'
        'toRemessaCancelarAbatimento'
        'toRemessaConcederDesconto'
        'toRemessaCancelarDesconto'
        'toRemessaAlterarVencimento'
        'toRemessaProtestar'
        'toRemessaCancelarInstrucaoProtesto'
        'toRemessaDispensarJuros'
        'toRemessaAlterarNomeEnderecoSacado'
        'toRemessaOutrasOcorrencias')
      Style.HotTrack = False
      TabOrder = 19
      Width = 390
    end
    object DBEdit27: TcxDBCurrencyEdit [18]
      Left = 409
      Top = 333
      DataBinding.DataField = 'REMESSA'
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Style.HotTrack = False
      TabOrder = 20
      Width = 56
    end
    object DBEdit35: TcxDBCurrencyEdit [19]
      Left = 466
      Top = 333
      DataBinding.DataField = 'RETORNO'
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Style.HotTrack = False
      TabOrder = 21
      Width = 56
    end
    object cxDBComboBox1: TcxDBComboBox [20]
      Left = 283
      Top = 132
      DataBinding.DataField = 'ESPECIE'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'DM'
        'NP'
        'NS'
        'ND'
        'RC'
        'LC'
        'DS'
        'DMI'
        'DSI')
      Style.HotTrack = False
      TabOrder = 10
      Width = 63
    end
    object EdtBaixaDevolucao: TcxDBCurrencyEdit [21]
      Left = 438
      Top = 297
      DataBinding.DataField = 'BAIXA_DEVOLUCAO'
      DataBinding.DataSource = DS
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Style.HotTrack = False
      TabOrder = 18
      Width = 84
    end
    object edtVencimento2: TcxDBDateEdit [22]
      Left = 116
      Top = 62
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'VENCTO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 90
    end
    object edtDocumento2: TcxDBTextEdit [23]
      Left = 18
      Top = 62
      DataBinding.DataField = 'DOCUMENTO'
      DataBinding.DataSource = DS
      Properties.CharCase = ecUpperCase
      Style.HotTrack = False
      TabOrder = 3
      Width = 97
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Parent = dxLayoutControl10Group1
      AlignVert = avBottom
      Index = 2
    end
    inherited LiedtDescricao: TdxLayoutItem
      ControlOptions.OriginalWidth = 382
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl10Group1: TdxLayoutGroup
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liedtDocumento2: TdxLayoutItem
      Parent = dxLayoutControl10Group1
      AlignVert = avBottom
      CaptionOptions.Text = 'Documento'
      CaptionOptions.Layout = clTop
      Control = edtDocumento2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtVencimento2: TdxLayoutItem
      Parent = dxLayoutControl10Group1
      AlignVert = avClient
      CaptionOptions.Text = 'Vencimento'
      CaptionOptions.Layout = clTop
      Control = edtVencimento2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl10Group2: TdxLayoutGroup
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl10Group3: TdxLayoutGroup
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Descri'#231#227'o da Conta'
      CaptionOptions.Layout = clTop
      Control = Label74
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 518
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Carteira'
      CaptionOptions.Layout = clTop
      Control = CbBoletoCarteira
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = DBComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Nosso N'#250'mero'
      CaptionOptions.Layout = clTop
      Control = DBEdit28
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Esp'#233'cie'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Demonstrativo'
      CaptionOptions.Layout = clTop
      Control = DBMemo1
      ControlOptions.OriginalHeight = 114
      ControlOptions.OriginalWidth = 518
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Abatimento'
      CaptionOptions.Layout = clTop
      Control = DBEdit31
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Juros Mora'
      CaptionOptions.Layout = clTop
      Control = DBEdit29
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Multa'
      CaptionOptions.Layout = clTop
      Control = DBEdit30
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Desconto'
      CaptionOptions.Layout = clTop
      Control = EdtBoletoDesconto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Protesto'
      CaptionOptions.Layout = clTop
      Control = DBEdit33
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Aceite'
      CaptionOptions.Layout = clTop
      Control = DBComboBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Baixa/ Devolu'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = EdtBaixaDevolucao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Tipo da Ocorr'#234'ncia'
      CaptionOptions.Layout = clTop
      Control = DBComboBox7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 404
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Remessa'
      CaptionOptions.Layout = clTop
      Control = DBEdit27
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Retorno'
      CaptionOptions.Layout = clTop
      Control = DBEdit35
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Vencimento'
      CaptionOptions.Layout = clTop
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Width = 620
    ExplicitWidth = 620
  end
  inherited pnlMenuCadastro: TPanel
    Left = 512
    ExplicitLeft = 512
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM BOLETOS'
      'WHERE  (CODIGO = :CODIGO) and '
      '              (CODPEDIDO = :CODPEDIDO) and '
      '              (CODEMPRESA = :CODEMPRESA)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
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
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK2 = 'CODPEDIDO'
    CampoPK3 = 'CODEMPRESA'
  end
end
