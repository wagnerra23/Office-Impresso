inherited Frame_Produto_Mestre: TFrame_Produto_Mestre
  object SpLucro: TShape [0]
    Left = 0
    Top = 22
    Width = 20
    Height = 20
    Brush.Color = 4652880
    Pen.Style = psClear
  end
  object SpComissao: TShape [1]
    Left = 0
    Top = 44
    Width = 20
    Height = 20
    Brush.Color = 10461087
    Pen.Style = psClear
  end
  object SpCustoFinanceiro: TShape [2]
    Left = 0
    Top = 88
    Width = 20
    Height = 20
    Brush.Color = 6512863
    Pen.Style = psClear
  end
  object PnlTabDadosAdicionais: TPanel [3]
    Left = 0
    Top = 66
    Width = 457
    Height = 315
    BevelOuter = bvNone
    Color = 16505534
    ParentBackground = False
    TabOrder = 11
    Visible = False
    object liedtObservacao: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 457
      Height = 315
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object edtMarcaÎProduto_Marca: TcxDBButtonEdit
        Left = 12
        Top = 99
        Hint = 'F2 - Consulta / Cadastro'
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'CODPRODUTO_MARCA'
        DataBinding.DataSource = DS
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 113
        Style.HotTrack = False
        TabOrder = 3
        Height = 21
        Width = 80
      end
      object lblMarcaÎProduto_MarcaÎDESCRICAO: TcxLabel
        Left = 93
        Top = 99
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        Transparent = True
        Height = 21
        Width = 348
      end
      object edtObservacao: TcxDBMemo
        Left = 0
        Top = 157
        TabStop = False
        DataBinding.DataField = 'OBSERVACAO'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ScrollBars = ssVertical
        Style.HotTrack = False
        TabOrder = 6
        Height = 158
        Width = 457
      end
      object lblObservacoes: TcxLabel
        Left = 0
        Top = 133
        Caption = 'Observa'#231#245'es'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = 7697781
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = 11711154
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lblDadosAdicionais: TcxLabel
        Left = 0
        Top = 0
        Caption = 'Dados Adcionais'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = 7697781
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = 11711154
        Style.IsFontAssigned = True
        Transparent = True
      end
      object edtPlanoContasÎPlanoContas: TcxDBButtonEdit
        Left = 12
        Top = 63
        Hint = 'F2 - Consulta / Cadastro'
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'CODPLANOCONTAS'
        DataBinding.DataSource = DS
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 113
        Style.HotTrack = False
        TabOrder = 1
        Height = 21
        Width = 80
      end
      object lblPlanoContasÎPlanoContasÎDESCRICAO: TcxLabel
        Left = 93
        Top = 63
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        Transparent = True
        Height = 21
        Width = 338
      end
      object dxLayoutGroup1: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 3
        ShowBorder = False
        Index = -1
      end
      object liedtObservacaoGroup2: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object liedtObservacaoGroup3: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object liedtObservacaoGroup4: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object liedtMarcaÎProduto_Marca: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup8
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'Marca'
        CaptionOptions.Layout = clTop
        Control = edtMarcaÎProduto_Marca
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 80
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object liedtObservacaoGroup5: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        ItemIndex = 2
        ShowBorder = False
        Index = 3
      end
      object lilblMarcaÎProduto_MarcaÎDESCRICAO: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup8
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = lblMarcaÎProduto_MarcaÎDESCRICAO
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 348
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liedtObservacaoGroup6: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 4
      end
      object liedtObservacaoItem34: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Observa'#231#245'es'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = edtObservacao
        ControlOptions.OriginalHeight = 121
        ControlOptions.OriginalWidth = 267
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object lilblObservacoes: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Visible = False
        Control = lblObservacoes
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 106
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object lilblDadosAdicionais: TdxLayoutItem
        Parent = liedtObservacaoGroup5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Visible = False
        Control = lblDadosAdicionais
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 106
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutSeparatorItem22: TdxLayoutSeparatorItem
        Parent = liedtObservacaoGroup5
        CaptionOptions.Text = 'Separator'
        Index = 1
      end
      object GrupoMarca: TdxLayoutGroup
        Parent = liedtObservacaoGroup5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Classifica'#231#227'o'
        LayoutDirection = ldHorizontal
        Index = 2
      end
      object liedtPlanoContasÎPlanoContas: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup9
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'Plano de Contas'
        CaptionOptions.Layout = clTop
        Control = edtPlanoContasÎPlanoContas
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 80
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lilblPlanoContasÎPlanoContasÎDESCRICAO: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup9
        AlignVert = avBottom
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = lblPlanoContasÎPlanoContasÎDESCRICAO
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 338
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = GrupoMarca
        AlignHorz = ahLeft
        AlignVert = avBottom
        Index = 0
      end
      object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup3
        AlignVert = avBottom
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahLeft
        AlignVert = avBottom
        LayoutDirection = ldHorizontal
        Index = 0
      end
    end
  end
  object DBGrid1: TDBGrid [5]
    Left = 237
    Top = 76
    Width = 529
    Height = 105
    Align = alCustom
    Ctl3D = True
    DataSource = DSEmpresa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid1Exit
    Columns = <
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Caption = 'Fantasia'
        Width = 290
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Title.Caption = 'Estoque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPRESA'
        Title.Caption = 'Empresa'
        Width = 418
        Visible = True
      end>
  end
  object PnlAlterarCodProduto: TPanel [6]
    Left = 184
    Top = 311
    Width = 421
    Height = 128
    ParentBackground = False
    TabOrder = 8
    Visible = False
    OnExit = PnlAlterarCodProdutoExit
    object dxLayoutControl15: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 419
      Height = 126
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object EdtAlterarCodProdutoCodigoÎProduto: TcxButtonEdit
        Left = 5
        Top = 19
        AutoSize = False
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 23
        Width = 206
      end
      object BtnAlterarCodProdutoConfirmar: TcxButton
        Left = 212
        Top = 11
        Width = 202
        Height = 31
        Caption = 'Confirmar'
        TabOrder = 1
        OnClick = BtnAlterarCodProdutoConfirmarClick
      end
      object cxLabel2: TcxLabel
        Left = 5
        Top = 84
        Caption = 
          'Aten'#231#227'o : O produto antigo ser'#225' exclu'#237'do, todos os dados referen' +
          'tes a venda e estoque ser'#227'o substitu'#237'dos e o estoque ser'#225' somado' +
          ' com o novo produto.'
        ParentColor = False
        Style.HotTrack = False
        Properties.WordWrap = True
        Transparent = True
        Width = 409
      end
      object LblAlterarCodProdutoCodigoÎProdutoÎDescricao: TcxLabel
        Left = 5
        Top = 43
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        Properties.Alignment.Horz = taLeftJustify
        Height = 40
        Width = 409
      end
      object dxLayoutControl15Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Offsets.Bottom = 5
        Offsets.Left = 5
        Offsets.Right = 5
        Offsets.Top = 5
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl15Item1: TdxLayoutItem
        Parent = dxLayoutControl15Group1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Novo C'#243'digo para o Produto'
        CaptionOptions.Layout = clTop
        Control = EdtAlterarCodProdutoCodigoÎProduto
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 206
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl15Item2: TdxLayoutItem
        Parent = dxLayoutControl15Group1
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = BtnAlterarCodProdutoConfirmar
        ControlOptions.OriginalHeight = 31
        ControlOptions.OriginalWidth = 202
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl15Group1: TdxLayoutGroup
        Parent = dxLayoutControl15Group_Root
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl15Item3: TdxLayoutItem
        Parent = dxLayoutControl15Group_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'cxLabel2'
        CaptionOptions.Visible = False
        Control = cxLabel2
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 381
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl15Item4: TdxLayoutItem
        Parent = dxLayoutControl15Group_Root
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = LblAlterarCodProdutoCodigoÎProdutoÎDescricao
        ControlOptions.OriginalHeight = 40
        ControlOptions.OriginalWidth = 409
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object PnlCodigoBarras: TPanel [7]
    Left = 284
    Top = 28
    Width = 421
    Height = 189
    Caption = 'Gera c'#243'digo de barras EAN 13'
    TabOrder = 5
    Visible = False
    object dxLayoutControl6: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 419
      Height = 187
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object cxButton1: TcxButton
        Left = 264
        Top = 158
        Width = 75
        Height = 25
        Caption = 'Aplicar'
        TabOrder = 5
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 340
        Top = 158
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 6
        OnClick = cxButton2Click
      end
      object EdtCodigoBarras: TcxTextEdit
        Left = 4
        Top = 49
        Properties.OnChange = EdtCodigoBarrasPropertiesChange
        Style.HotTrack = False
        TabOrder = 1
        Width = 153
      end
      object cxButton3: TcxButton
        Left = 163
        Top = 35
        Width = 252
        Height = 35
        Caption = 'Gerar c'#243'digo'
        TabOrder = 2
        OnClick = cxButton3Click
      end
      object cxLabel16: TcxLabel
        Left = 4
        Top = 4
        Caption = 'Gerar C'#243'digo de Barras '
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = 7697781
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = 11711154
        Style.IsFontAssigned = True
        Transparent = True
      end
      object LabelDigito: TcxLabel
        Left = 16
        Top = 103
        Caption = '2'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = 7697781
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = 11711154
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel17: TcxLabel
        Left = 169
        Top = 95
        Caption = 
          'O 13'#176' d'#237'gito do c'#243'digo '#233' calculado. Coloque o n'#250'mero que aparece' +
          'r no quadrado ao lado na '#250'ltima posi'#231#227'o do seu c'#243'digo de barras'
        Style.HotTrack = False
        Properties.WordWrap = True
        Transparent = True
        Width = 246
      end
      object dxLayoutGroup32: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Visible = False
        Offsets.Bottom = 4
        Offsets.Left = 4
        Offsets.Right = 4
        Offsets.Top = 4
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutGroup33: TdxLayoutGroup
        Parent = dxLayoutGroup32
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Visible = False
        ItemIndex = 3
        ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup34: TdxLayoutGroup
        Parent = dxLayoutGroup32
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Visible = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutItem95: TdxLayoutItem
        Parent = dxLayoutGroup34
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton6'
        CaptionOptions.Visible = False
        Control = cxButton1
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem96: TdxLayoutItem
        Parent = dxLayoutGroup34
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton7'
        CaptionOptions.Visible = False
        Control = cxButton2
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup37: TdxLayoutGroup
        Parent = dxLayoutGroup33
        AlignHorz = ahClient
        AlignVert = avTop
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object dxLayoutItem101: TdxLayoutItem
        Parent = dxLayoutGroup37
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'C'#243'digo de Barras - EAN13'
        CaptionOptions.Layout = clTop
        Control = EdtCodigoBarras
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 153
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem102: TdxLayoutItem
        Parent = dxLayoutGroup37
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = cxButton3
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 252
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutSeparatorItem15: TdxLayoutSeparatorItem
        Parent = dxLayoutGroup33
        AlignVert = avBottom
        CaptionOptions.Text = 'Separator'
        Index = 0
      end
      object dxLayoutSeparatorItem16: TdxLayoutSeparatorItem
        Parent = dxLayoutGroup33
        CaptionOptions.Text = 'Separator'
        Index = 2
      end
      object dxLayoutItem103: TdxLayoutItem
        Parent = dxLayoutGroup33
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = cxLabel16
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 149
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object LiLabelDigito: TdxLayoutItem
        Parent = GrupoDigitoVerificador
        AlignHorz = ahLeft
        CaptionOptions.Text = 'D'#237'gito verificador'
        CaptionOptions.Layout = clTop
        Control = LabelDigito
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object GrupoDigitoVerificador: TdxLayoutGroup
        Parent = GrupoCodigoDeBarras
        CaptionOptions.Text = '13'#176' D'#237'gito do c'#243'digo de barras'
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutItem104: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup40
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Visible = False
        CaptionOptions.WordWrap = True
        CaptionOptions.Layout = clTop
        Control = cxLabel17
        ControlOptions.OriginalHeight = 43
        ControlOptions.OriginalWidth = 223
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object GrupoCodigoDeBarras: TdxLayoutGroup
        Parent = dxLayoutAutoCreatedGroup40
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup40: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup33
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 4
      end
    end
  end
  object PnlAplicarAjusteValorNaFamilia: TPanel [8]
    Left = 212
    Top = 20
    Width = 322
    Height = 144
    Caption = 'Aplicar ajuste de valor na fam'#237'lia'
    TabOrder = 13
    Visible = False
    object dxLayoutControl19: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 320
      Height = 142
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object BtnAjusteFamiliaAplicar: TcxButton
        Left = 165
        Top = 113
        Width = 75
        Height = 25
        Caption = 'Aplicar'
        TabOrder = 7
        OnClick = BtnAjusteFamiliaAplicarClick
      end
      object BtnAjusteFamiliaCancelar: TcxButton
        Left = 241
        Top = 113
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 8
        OnClick = BtnAjusteFamiliaCancelarClick
      end
      object EdtAjusteFamiliaReajuste: TcxCurrencyEdit
        Left = 99
        Top = 18
        EditValue = '0'
        Properties.DisplayFormat = '0.00###;-0.00###'
        Properties.UseThousandSeparator = True
        Properties.OnChange = EdtAjusteFamiliaReajustePropertiesChange
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      object EdtAjusteFamiliaCustoLojaAtual: TcxCurrencyEdit
        Left = 30
        Top = 54
        TabStop = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
      end
      object EdtAjusteFamiliaCustoLojaCalculado: TcxCurrencyEdit
        Left = 160
        Top = 54
        Hint = 
          'O valor mostrado nesse campo '#233' de refer'#234'ncia.'#13#10'Os valores ser'#227'o ' +
          'atualizados de acordo com a taxa do reajuste, nos valores atuais' +
          ' de cada produto da fam'#237'lia.'#13#10'A margem vai ter sua taxa recalcul' +
          'ado de acordo com os campos escolhidos.'
        TabStop = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 3
        Width = 123
      end
      object EdtAjusteFamiliaVarejoAtual: TcxCurrencyEdit
        Left = 30
        Top = 90
        TabStop = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 5
        Width = 121
      end
      object EdtAjusteFamiliaVarejoCalculado: TcxCurrencyEdit
        Left = 160
        Top = 90
        Hint = 
          'O valor mostrado nesse campo '#233' de refer'#234'ncia.'#13#10'Os valores ser'#227'o ' +
          'atualizados de acordo com a taxa do reajuste, nos valores atuais' +
          ' de cada produto da fam'#237'lia.'#13#10'A margem vai ter sua taxa recalcul' +
          'ado de acordo com os campos escolhidos.'
        TabStop = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 6
        Width = 121
      end
      object ChkAjusteFamiliaCustoLoja: TcxCheckBox
        Left = 4
        Top = 54
        State = cbsChecked
        Style.HotTrack = False
        TabOrder = 1
      end
      object ChkAjusteFamiliaVarejo: TcxCheckBox
        Left = 4
        Top = 90
        State = cbsChecked
        Style.HotTrack = False
        TabOrder = 4
      end
      object dxLayoutControl19Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Visible = False
        Offsets.Bottom = 4
        Offsets.Left = 4
        Offsets.Right = 4
        Offsets.Top = 4
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl19Group1: TdxLayoutGroup
        Parent = dxLayoutControl19Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Visible = False
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl19Group2: TdxLayoutGroup
        Parent = dxLayoutControl19Group_Root
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Visible = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl19Item1: TdxLayoutItem
        Parent = dxLayoutControl19Group2
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton6'
        CaptionOptions.Visible = False
        Control = BtnAjusteFamiliaAplicar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl19Item2: TdxLayoutItem
        Parent = dxLayoutControl19Group2
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton7'
        CaptionOptions.Visible = False
        Control = BtnAjusteFamiliaCancelar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl19Group3: TdxLayoutGroup
        Parent = dxLayoutControl19Group1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Visible = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl19Item3: TdxLayoutItem
        Parent = dxLayoutControl19Group3
        AlignHorz = ahCenter
        CaptionOptions.Text = 'Reajuste %'
        CaptionOptions.Layout = clTop
        Control = EdtAjusteFamiliaReajuste
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl19Group4: TdxLayoutGroup
        Parent = dxLayoutControl19Group1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Visible = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl19Item5: TdxLayoutItem
        Parent = dxLayoutControl19Group4
        Offsets.Left = 8
        CaptionOptions.Text = 'R$ Custo Loja (atual)'
        CaptionOptions.Layout = clTop
        Control = EdtAjusteFamiliaCustoLojaAtual
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl19Item6: TdxLayoutItem
        Parent = dxLayoutControl19Group4
        Offsets.Left = 8
        CaptionOptions.Text = 'R$ Custo Loja (calculado)'
        CaptionOptions.Layout = clTop
        Control = EdtAjusteFamiliaCustoLojaCalculado
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 123
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl19Group5: TdxLayoutGroup
        Parent = dxLayoutControl19Group1
        AlignHorz = ahClient
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object dxLayoutControl19Item7: TdxLayoutItem
        Parent = dxLayoutControl19Group5
        Offsets.Left = 8
        CaptionOptions.Text = 'R$ Varejo (atual)'
        CaptionOptions.Layout = clTop
        Control = EdtAjusteFamiliaVarejoAtual
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl19Item8: TdxLayoutItem
        Parent = dxLayoutControl19Group5
        Offsets.Left = 8
        CaptionOptions.Text = 'R$ Varejo (calculado)'
        CaptionOptions.Layout = clTop
        Control = EdtAjusteFamiliaVarejoCalculado
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl19Item13: TdxLayoutItem
        Parent = dxLayoutControl19Group4
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = ChkAjusteFamiliaCustoLoja
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 17
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl19Item14: TdxLayoutItem
        Parent = dxLayoutControl19Group5
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = ChkAjusteFamiliaVarejo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 17
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  inherited MainLayout: TdxLayoutControl [9]
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel2
    inherited edtCodigo: TcxDBTextEdit
      AutoSize = False
      Properties.OnChange = edtCodigoPropertiesChange
      OnEnter = dbtxtCodigoEnter
      ExplicitWidth = 78
      Width = 78
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 409
      ExplicitLeft = 409
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 97
      AutoSize = False
      Properties.OnValidate = edtDescricaoPropertiesValidate
      ExplicitLeft = 97
      ExplicitWidth = 261
      Width = 261
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 9964
      TabOrder = 27
      ExplicitLeft = 9964
    end
    inherited cbxAtivo: TcxDBComboBox [4]
      Left = 359
      ExplicitLeft = 359
      ExplicitWidth = 49
      Width = 49
    end
    object cbxCodProduto_Tipo: TcxDBLookupComboBox [5]
      Left = 769
      Top = 60
      DataBinding.DataField = 'CODPRODUTO_TIPO'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DSProdutoTipo
      Style.HotTrack = False
      TabOrder = 21
      Width = 118
    end
    object edtCodFabrica: TcxDBTextEdit [6]
      Left = 18
      Top = 60
      AutoSize = False
      DataBinding.DataField = 'CODFABRICA'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 9
      OnExit = edtCodFabricaExit
      Height = 21
      Width = 111
    end
    object edtEstoque: TcxDBCurrencyEdit [7]
      Left = 555
      Top = 60
      AutoSize = False
      DataBinding.DataField = 'ESTOQUE'
      DataBinding.DataSource = DSEstoque_Produto
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 17
      Height = 21
      Width = 77
    end
    object btnAdicionarEstoque: TcxButton [8]
      Left = 633
      Top = 56
      Width = 31
      Height = 25
      Hint = 'Alterar Estoque'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
        0D00000A3769434350735247422049454336313936362D322E310000789C9D96
        775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
        90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
        70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
        05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
        F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
        0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
        569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
        91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
        53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
        24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
        E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
        965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
        FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
        2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
        C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
        B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
        407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
        B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
        13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
        9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
        9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
        940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
        6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
        B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
        917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
        940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
        A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
        318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
        C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
        E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
        2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
        8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
        46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
        5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
        A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
        28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
        6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
        3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
        7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
        3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
        AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
        31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
        FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
        1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
        6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
        4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
        9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
        CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
        D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
        A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
        5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
        67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
        85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
        0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
        96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
        44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
        C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
        F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
        EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
        C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
        FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
        CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
        7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
        BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
        8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
        DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
        572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
        5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
        A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
        B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
        CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
        7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
        CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
        4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
        8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
        377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
        E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
        3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
        267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
        FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
        EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
        8F70662A000000097048597300002E2300002E230178A53F7600000429494441
        54789C8D540D6C145510FEF6A7B77BBDED5DE8592BBD823F011AD1DAEB5D1114
        8D5690569382225689523122FEA03152890629881862B5404A4A8818A8D4AA21
        A68AC5985653281A427FAEB4E76909D24AC492D89E77ED9DF7D7DDDB5DDFDBD2
        424D539CCBED7B6F76E6DB996FE60DAFEB3AA693BE9C1C4192242BA369B1CCEE
        EEE8B4C644F8A99443CE05B91CC7AD6780E27469C62D44C5921F82AE4597C0A0
        455371F0BA9EB61FAF097861CE029BD5CA55F31C57468E0C2349E0E7CE0163B3
        418F44A0F6F73BB4E19132964359C0BDA8995113EBD27B7A06A6040CBA5C0E9B
        CDF403D9DE4A41CC2FAE47CABD8B018E9B1441D2D385F8C787A078BA8AC0891E
        BFDB5D94D1D5E59D0438989F6F49614D4D144C2C5D85D4F2D7A1F98710DBB317
        C94E0FB4E030983412AD330FE2EA52A47DB40F89BA7AC4F7EECBE4F494E6A0D3
        59301EA901C8B3C2FB64B95D7CEC51A4BEF906461BBE46ECC3DDD015055C5616
        2CDB2B10AFD98FD16F8E416EFC16E2DA35306F788930CB918F5667EA9C7890F8
        1719587FDD5670A349E45FE066652375D346C8C429BAB3F20A27CE3B9072F75D
        24D533489EFB0DB42BE2B575201B985FDD00E5D429281D9E6501D79DF7DBCF74
        B4F226D128408AB8B6CC203E5AB567DAB61897C4E17A98963D08F3F3EB2820A9
        20F31C51B7929499A5E400D392428C7ED9003D16FB5F8034D2C4E7470C3A58BB
        1D5A20B0749CC31C76E64C427A1A923D5E70B367C354781FE187311CB979F3C6
        522F70C17C5947D355DA3A887DCF659BB9D04E076EA06D47012546B2182FB4F0
        3F109F5E0D8114E7BF4279A4FF096E0B0A10DD5C61EC19CB98BFCDAA4A1430A4
        87C386864D9F81F8FE03E4EBEDC48A1D037239213C590AF9BB26C8ADE3974387
        FA6B2F18626F9CC221635515254400F5B3DAE050961E0C8277BB219FFC09F2F1
        D6894818C104811AF7F5436E393E296A71D54A929606F5DC797ABC98E1F34578
        321A9A08274BE4A6EF213E5282C4A15A6823A16B1685E179831EE5741BB45088
        F2DA6C50A126139FF2BCF9DD785DBD59585102CBB60A44366EC2C414D2F48942
        5C2DB40759870391CD5BC75E33CC0103F07AAF7730E05E58A5F9FFAE88BCB303
        52E54E485595886E7F8F14290CA5BD1DA35F1D9D48971104A4BEF60A84271E47
        BCBA06C9DEB314EE88BDABDD6300D2C71FDDDA8E9BF2B942C2DD3D91B7DE86B4
        6D0B6C8D0D183DDA68DC650AC83AB2607AF821882B579062D811DB5D8DC4675F
        50F7FE981C7B397DBCFAF4E1D23A953FF3F2965B38F331B9E5C4E2919F7F81F9
        D93208CB4B20AE79EA4A9EF138E41327C9D53B0CF5F70B54733E99D48BB37DBE
        20AE06A432CBEB1DEECDCD7D20D364D9AAF9FDE5D10F76897440B0D90E30562B
        F46814DAC025E8C9A4D12184D14FC221B5FCE6BECE49159C3460E7FB7C3259B6
        F87317D6B03CF30C18BD58BD38309F4C691BD1C70808990E64622BC9DA0C9FA7
        CF3E45F5FF054037AE08FD022FD50000000049454E44AE426082}
      TabOrder = 18
      OnClick = btnAdicionarEstoqueClick
    end
    object edtDT_Cadastro: TcxDBTextEdit [9]
      Left = 695
      Top = 60
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DT_CADASTRO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 73
    end
    object imgProduto: TcxImage [10]
      Left = 888
      Top = 10
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.ImmediatePost = True
      Properties.PopupMenuLayout.CustomMenuItemGlyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBED6C9CDDCD3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCCB31DC3742AC178B9D4C3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC5A721C37490F4C2
        98F5C72DBF75A9CDB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA7ABD9720
        C06F78EEB08DF4BCB1FBD7ABF8D22BBE7097C6A9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
        F168B6891FC26B56E8975CEB9774EFAA90F4C1B2FCD9A1F5CA2ABB6C84BE99FC
        FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE8E9E855AF7919C3662BE07B20E16E41E58462EB9C78EFAD85F2B792F6
        C187F0B727BB6971B58AF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE0E4E143A66911C15F1BD96B00D85506DB5E28E07245E687
        59E99564EC9D65EC9E63ED9C62E99C26BC655EAC7AEEEEEEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD2DBD4349F5906BD550CD05D00CF4C00D25000
        D65402DB5C1CE06B30E27839E47E3BE48031E37A24E1712DE17A1CBC5E4CA469
        E3E5E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5E0D728974B00BA4C00C74C00C4
        3F00C9480DD1561DD7642DDD7135E37842E58045E3823EE27E2DE07413DC6500
        D95710D86311B9533D9C5AD6DCD7FFFFFFFFFFFFFFFFFFFFFFFF8DBF9B00B240
        00BD3C00BD3924C9584DD47763DC8973E09567E59122D9672EDE716DE99870E5
        986CE59566E39052DE842BD76A0FD25B05B5472C9246C9D5CBFFFFFFFFFFFFFF
        FFFFA2D7B200BB321FBF4860D07E81DB9785DD9B8AE0A26FE39323D262A1EABA
        97EBB52FDA6F7BEAA086E6A481E4A084E3A185E2A060D98510CB5500B03A1F89
        36B9CBBBFFFFFFFFFFFFF4FBF563C97646CD649FE1AC98DEA89CE2AD76E2952C
        CD60B4EDC4FFFFFFFFFFFFA9ECBE36D46E88EAA69BE7B093E4AA94E3AA9AE3AD
        7BDA941FC65500A82E127F21A8C0A9FFFFFFFFFFFFFFFFFF78D1894BCA68AAE6
        B67BE09533C95FC5EDCEFFFFFFFFFFFFFFFFFFFFFFFFBCEEC93BD16D8FEAAAB0
        E9BFA7E6B7A6E5B6ADE4B999DEA82FC25700A01E07760CA1BEA1FFFFFFFFFFFF
        FFFFFF8BD69A32C2543DC762D7F1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCDEFD342CD6D93E9ABC6EDCEBBE9C5BAE8C4C0E8C7B1E2B93CBF59009C1339
        913BFFFFFFFFFFFFFFFFFFFFFFFFBEE7C1E4F4E5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDDF3DE4BCB6E94E6A8DAF2DECFEDD4CDECD2D3ED
        D6D4EDD751CA6635A53DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF6EB53C86E90E2A1
        EBF8EEE2F3E5EAF6ECD3F2D745B8509DD49EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF6F9F663C77487D994FFFFFFCFF0D33AB042A7D5A7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD72C77D63C76F3EB148B8DBB8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1D3A1CCE6
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Properties.OnAssignPicture = imgProdutoPropertiesAssignPicture
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 22
      Height = 71
      Width = 88
    end
    object BtnMenu: TcxButton [11]
      Left = 9964
      Top = 10000
      Width = 116
      Height = 25
      Caption = 'Menu'
      TabOrder = 26
      Visible = False
      OnClick = BtnMenuClick
    end
    object btnGerarCodigoBarras: TcxButton [12]
      Left = 247
      Top = 57
      Width = 30
      Height = 24
      Hint = 'Gera C'#243'digo de Barras'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000012744558745469746C6500426172436F64653B436F646560203F8100
        0003AF49444154785EC557BB52154D10EE59B690F27934C60431014DD04434A0
        4A7D0F63435FC00C8448CF39890906BE80F17FA9F20D48CE757B9CBECFB28514
        50E5591866A6A72FDF7CDDB3B3A49C33ACF36960CD4F1A8CFF6ECB14B4DFF4B9
        09B05BDA20B596D27032F9F9AD69361E4939E43E449F661E873C5FB1CE23E0DF
        6CF2A16CD575E747070F770840BAB8983D3A7AFEE0F63C5E2B1CB68F9F7E6CD3
        E6990154E8F325D6D6314C91B19CF2150142351B3529719F521299B2B0B5D902
        C5340090B13421CBBD24190E684E462BA40856E3154359CFA42720025C626B44
        364A9C023404180ED564B0B7CC1D3B894DD6AA4CA2AEDBC831060B88E8EF8194
        058DD3B4F7E22DECECBFE2D9EEB3D7F0CF7FBFCAFC90D7F70EDEC1CEDE21077D
        226BDCFF5BFAC7222FF66F60B7E893AFDDA745E7FFB2B6FF9268E796C101A406
        7C428BC00D6A389A43A0DEF783D0505E99023B113C178F34371920A9442D885B
        4F0133A0A884621A637D643400C9738C91E7A6C784877D469D03FB42F351C7E8
        01407714C5A84E32A2CB78243A43193791A303ACC08BCC19EEB4065A03908525
        ED11D0C7590B4E43A2360896D09840A4B9E9840D2BA1E8844D9C825C2F42180F
        1B659F82B0BEF61517BE036790C7AA169BA96B40E810B1D782E548C63E574B03
        133DC9101CA86EA83E6E5A17E07AD85D55846E841A940252A94731455EB16687
        6D228568FAA11704F17A00E850294AAA845EF5E8F944B222705E50D07945EBEE
        7C03CA0AB3E1390FB0E227DE8466188556175F7F9746B13BED531FEC4461C7E9
        B9A208D1F22A4276C43248E1288E65C844A26B2A53FBB820D08461110C40136F
        A530A9F38CD851BE3C7FF3D90CC08295B57A5B56EE8BF9CC640198F592F9F122
        8C14E80A8643EEC65F4FA06D00265F8E39F078745CE65294E32F27B0B1910CA0
        33331A7D86B6C8CD1564673052D7BF0DAD508487F97C0AA9AA8165A7642E85A3
        658E6B7B49851845E740962B5140C40088A0278340F719880204E09DB56DA3C8
        ED22B681DDBFD18FBE9E15FD04E3C9A9D9C8930A4BE3D3C2460393F159EF18E7
        4111065D7C7F2D56F4D7CE7F929B4C155236A85139AB95F40B0EA35851595AE9
        A941BF61EBDBD072220BEC1D0697138DE30845E8FE1B5164C142B29DD660FD26
        F5CB28739E20C3FDADD6E88BE66CFFF94B3396635E7F2A096D89FABA0690002C
        17B3E9F9FB0FE36DA83FA3222A647714F2CC53D3867E5A38562097470283DA2D
        17D3EF94319A6E96B655DA3DFB44BBEE9F8DBBAD33CAAEB47969531236DE6EFE
        A43BFC2B81D4923B5ACF931BAEE0F53DF01B561D2DE87CFF0B76000000004945
        4E44AE426082}
      TabOrder = 11
      OnClick = btnGerarCodigoBarrasClick
    end
    object edtCategoriaÎProduto_Categoria: TcxDBButtonEdit [13]
      Left = 278
      Top = 60
      AutoSize = False
      DataBinding.DataField = 'CODPRODUTO_CATEGORIA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 12
      Height = 21
      Width = 79
    end
    object lblCategoriaÎProduto_CategoriaÎDESCRICAO: TcxLabel [14]
      Left = 358
      Top = 59
      AutoSize = False
      Style.HotTrack = False
      Transparent = True
      Height = 22
      Width = 20
    end
    object PnlTabTabelaPrecos: TPanel [15]
      Left = 9964
      Top = 10000
      Width = 522
      Height = 315
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 29
      Visible = False
      object dxLayoutControl8: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 522
        Height = 315
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        object GridPrecos: TcxGrid
          Left = 0
          Top = 113
          Width = 549
          Height = 135
          TabOrder = 9
          object GridPrecosDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSProdutoPreco
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object GridPrecosDBTableView2Column1: TcxGridDBColumn
              DataBinding.FieldName = 'De'
              OnGetDisplayText = GridPrecosDBTableView2Column1GetDisplayText
              Options.Editing = False
            end
            object GridPrecosDBTableView2TIPO: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'TIPO'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ListColumns = <>
              Options.Editing = False
              SortIndex = 0
              SortOrder = soDescending
              Width = 69
            end
            object GridPrecosDBTableView2QUANT: TcxGridDBColumn
              Caption = 'Quant.'
              DataBinding.FieldName = 'QUANT'
              Options.Editing = False
              SortIndex = 1
              SortOrder = soAscending
            end
            object GridPrecosDBTableView2PERC_LUCRO_DESEJADO: TcxGridDBColumn
              Caption = '% Lucro Desejado'
              DataBinding.FieldName = 'PERC_LUCRO_DESEJADO'
              Visible = False
              VisibleForEditForm = bTrue
              Width = 102
            end
            object GridPrecosDBTableView2MARKUP: TcxGridDBColumn
              Caption = 'Markup'
              DataBinding.FieldName = 'MARKUP'
              Visible = False
              VisibleForEditForm = bTrue
            end
            object GridPrecosDBTableView2PORCENTAGEM: TcxGridDBColumn
              Caption = '% Desconto'
              DataBinding.FieldName = 'PORCENTAGEM'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 71
            end
            object GridPrecosDBTableView2Valor: TcxGridDBColumn
              Caption = 'R$ Valor'
              DataBinding.FieldName = 'Valor'
              Options.Editing = False
              Width = 90
            end
          end
          object GridPrecosLevel1: TcxGridLevel
            GridView = GridPrecosDBTableView2
          end
        end
        object chkTem_Tabela_Preco_Fixo: TcxDBCheckBox
          Left = 0
          Top = 267
          Hint = 
            'Quando selecionado, os pre'#231'os ir'#227'o se manter o mesmo independent' +
            'e da quantidade, dentro de cada faixa da Tabela de Pre'#231'os'#13#10'Exemp' +
            'lo: de 1 a 100 unidades, o pre'#231'o total ser'#225' sempre R$ 40,00'
          Caption = 'Exemplo: de 1 a 100 unidades, o pre'#231'o sempre ser'#225' R$ 40,00'
          DataBinding.DataField = 'TEM_TABELA_PRECO_FIXO'
          DataBinding.DataSource = DS
          ParentFont = False
          Properties.MultiLine = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 8404992
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 10
          Transparent = True
          Width = 362
        end
        object cxLabel19: TcxLabel
          Left = 0
          Top = 0
          Caption = 'Tabelas de pre'#231'os de venda'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = 7697781
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.TextColor = 11711154
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lblUnidade: TcxDBLabel
          Left = 258
          Top = 72
          DataBinding.DataField = 'UNIDADE'
          DataBinding.DataSource = DS
          ParentFont = False
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Transparent = True
          Height = 26
          Width = 33
          AnchorY = 85
        end
        object edtTabelaPrecoDe: TcxCurrencyEdit
          Left = 12
          Top = 77
          Properties.DisplayFormat = '0.##'
          Style.HotTrack = False
          TabOrder = 1
          Width = 53
        end
        object cbxTabelaPrecoTipo: TcxLookupComboBox
          Left = 68
          Top = 77
          Properties.ImmediatePost = True
          Properties.ListColumns = <>
          Style.HotTrack = False
          TabOrder = 2
          Width = 104
        end
        object edtTabelaPrecoQuant: TcxCurrencyEdit
          Left = 175
          Top = 77
          Properties.DisplayFormat = '0.##'
          Style.HotTrack = False
          TabOrder = 3
          Width = 80
        end
        object edtTabelaPrecoDesconto: TcxCurrencyEdit
          Left = 294
          Top = 77
          Properties.DisplayFormat = '0.## %'
          Properties.OnChange = EdtTabelaPrecoDescontoPropertiesChange
          Style.HotTrack = False
          TabOrder = 5
          Width = 86
        end
        object edtTabelaPrecoValor: TcxCurrencyEdit
          Left = 383
          Top = 77
          Properties.OnChange = EdtTabelaPrecoValorPropertiesChange
          Style.HotTrack = False
          TabOrder = 6
          Width = 86
        end
        object btnAdicionaTabelaPreco: TcxButton
          Left = 472
          Top = 67
          Width = 31
          Height = 31
          OptionsImage.ImageIndex = 2
          TabOrder = 7
        end
        object btnRemoverTabelaPreco: TcxButton
          Left = 506
          Top = 67
          Width = 31
          Height = 31
          OptionsImage.ImageIndex = 3
          TabOrder = 8
          TabStop = False
        end
        object rdgModo_Valor_Minimo_Venda: TcxDBRadioGroup
          Left = 10000
          Top = 10000
          Caption = 'Valor m'#237'nimo de Venda'
          DataBinding.DataField = 'MODO_VALOR_MINIMO_VENDA'
          DataBinding.DataSource = DS
          ParentBackground = False
          ParentColor = False
          Properties.Items = <
            item
              Caption = 'por Valor Unit'#225'rio'
              Value = 'U'
            end
            item
              Caption = 'por Valor Total'
              Value = 'T'
            end>
          Style.Color = 16505534
          TabOrder = 12
          Transparent = True
          Visible = False
          Height = 71
          Width = 131
        end
        object chkTem_Tabela_Preco_QTDADePeca: TcxDBCheckBox
          Left = 365
          Top = 251
          Hint = 
            'Quando selecionado, os pre'#231'os ser'#227'o baseados na Quantidade de Pe' +
            #231'as vendida, e n'#227'o no campo "Quant" que pode representar uma met' +
            'ragem quadrada quando o produto usar medidas'
          Caption = 'Tabela de Pre'#231'o pela Quantidade de Pe'#231'as em vez da Quantidade'
          DataBinding.DataField = 'TEM_TABELA_PRECO_QTDADEPECA'
          DataBinding.DataSource = DS
          ParentFont = False
          Properties.MultiLine = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = 8404992
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 11
          Transparent = True
          Width = 184
        end
        object dxLayoutControl8Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
          Hidden = True
          ItemIndex = 5
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl8Item1: TdxLayoutItem
          Parent = dxLayoutControl8Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          Control = GridPrecos
          ControlOptions.OriginalHeight = 85
          ControlOptions.OriginalWidth = 489
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object lichkTem_Tabela_Preco_Fixo: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Pre'#231'os fixo por Faixa de Quantidade.'
          CaptionOptions.Layout = clTop
          Control = chkTem_Tabela_Preco_Fixo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 362
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup8: TdxLayoutGroup
          Parent = dxLayoutControl8Group_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Crie sua tabela'
          ItemIndex = 7
          LayoutDirection = ldHorizontal
          Index = 3
        end
        object dxLayoutItem116: TdxLayoutItem
          Parent = dxLayoutControl8Group_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Visible = False
          Control = cxLabel19
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 230
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutSeparatorItem21: TdxLayoutSeparatorItem
          Parent = dxLayoutControl8Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Separator'
          Index = 1
        end
        object lilblUnidade: TdxLayoutItem
          Parent = dxLayoutGroup8
          AlignVert = avBottom
          CaptionOptions.Layout = clTop
          Control = lblUnidade
          ControlOptions.OriginalHeight = 26
          ControlOptions.OriginalWidth = 33
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object liedtTabelaPrecoDe: TdxLayoutItem
          Parent = dxLayoutGroup8
          CaptionOptions.Text = 'De'
          CaptionOptions.Layout = clTop
          Control = edtTabelaPrecoDe
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 53
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object licbxTabelaPrecoTipo: TdxLayoutItem
          Parent = dxLayoutGroup8
          AlignVert = avBottom
          CaptionOptions.Layout = clTop
          Control = cbxTabelaPrecoTipo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 104
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object liedtTabelaPrecoQuant: TdxLayoutItem
          Parent = dxLayoutGroup8
          CaptionOptions.Text = 'Quantidade'
          CaptionOptions.Layout = clTop
          Control = edtTabelaPrecoQuant
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object liedtTabelaPrecoDesconto: TdxLayoutItem
          Parent = dxLayoutGroup8
          CaptionOptions.Text = '% Desconto'
          CaptionOptions.Layout = clTop
          Control = edtTabelaPrecoDesconto
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 86
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object liedtTabelaPrecoValor: TdxLayoutItem
          Parent = dxLayoutGroup8
          CaptionOptions.Text = 'R$ Valor'
          CaptionOptions.Layout = clTop
          Control = edtTabelaPrecoValor
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 86
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object libtnAdicionaTabelaPreco: TdxLayoutItem
          Parent = dxLayoutGroup8
          AlignVert = avBottom
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = btnAdicionaTabelaPreco
          ControlOptions.OriginalHeight = 31
          ControlOptions.OriginalWidth = 31
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object libtnRemoverTabelaPreco: TdxLayoutItem
          Parent = dxLayoutGroup8
          AlignVert = avBottom
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = btnRemoverTabelaPreco
          ControlOptions.OriginalHeight = 31
          ControlOptions.OriginalWidth = 31
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object lirdgModo_Valor_Minimo_Venda: TdxLayoutItem
          Visible = False
          CaptionOptions.Visible = False
          Control = rdgModo_Valor_Minimo_Venda
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 71
          ControlOptions.OriginalWidth = 131
          ControlOptions.ShowBorder = False
          Index = -1
        end
        object dxLayoutGroup31: TdxLayoutGroup
          Parent = dxLayoutGroup36
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup36: TdxLayoutGroup
          Parent = dxLayoutControl8Group_Root
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object lichkTem_Tabela_Preco_QTDADePeca: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Visible = False
          Control = chkTem_Tabela_Preco_QTDADePeca
          ControlOptions.OriginalHeight = 47
          ControlOptions.OriginalWidth = 189
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl8Group_Root
          LayoutDirection = ldHorizontal
          Index = 5
        end
      end
    end
    object cbxUnidade: TcxDBComboBox [16]
      Left = 616
      Top = 24
      AutoSize = False
      DataBinding.DataField = 'UNIDADE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 15
      Properties.ImmediatePost = True
      Properties.Sorted = True
      Style.HotTrack = False
      TabOrder = 5
      Height = 21
      Width = 50
    end
    object edtCodigoEan: TcxDBTextEdit [17]
      Left = 130
      Top = 60
      AutoSize = False
      DataBinding.DataField = 'CODIGOEAN'
      DataBinding.DataSource = DS
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 10
      OnExit = edtCodFabricaExit
      Height = 21
      Width = 116
    end
    object PnlCentroTrabalho: TPanel [18]
      Left = 9964
      Top = 10000
      Width = 185
      Height = 336
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 35
      Visible = False
      object liedtProducao_Dias_Para_Produzir: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 185
        Height = 336
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        object edtCentro_TrabalhoÎCentro_Trabalho: TcxButtonEdit
          Left = 0
          Top = 131
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Style.HotTrack = False
          TabOrder = 6
          Width = 116
        end
        object lblCentro_TrabalhoÎCentro_TrabalhoÎDESCRICAO: TcxLabel
          Left = 119
          Top = 131
          AutoSize = False
          ParentColor = False
          ParentFont = False
          Style.HotTrack = False
          Height = 21
          Width = 155
        end
        object cbxCentroTrabalhoPreRequisito: TcxLookupComboBox
          Left = 445
          Top = 131
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DSPreRequisitoCentroTrabalho
          Style.HotTrack = False
          TabOrder = 9
          Width = 119
        end
        object edtTempoEstimado: TcxTimeEdit
          Left = 567
          Top = 131
          AutoSize = False
          Properties.ImmediatePost = True
          Style.HotTrack = False
          TabOrder = 10
          Height = 21
          Width = 95
        end
        object btnAdicionaCentroTrabalho: TcxButton
          Left = 665
          Top = 121
          Width = 31
          Height = 31
          OptionsImage.ImageIndex = 2
          TabOrder = 11
          OnClick = btnAdicionaCentroTrabalhoClick
        end
        object btnRemoveCentroTrabalho: TcxButton
          Left = 699
          Top = 121
          Width = 31
          Height = 31
          OptionsImage.ImageIndex = 3
          TabOrder = 12
          TabStop = False
          OnClick = btnRemoveCentroTrabalhoClick
        end
        object GridProduto_Centro_Trabalho: TcxGrid
          Left = 0
          Top = 155
          Width = 730
          Height = 110
          BorderStyle = cxcbsNone
          TabOrder = 13
          LookAndFeel.NativeStyle = False
          object GridProduto_Centro_TrabalhoView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSProduto_Centro_Trabalho
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object GridProduto_Centro_TrabalhoView2CODIGO: TcxGridDBColumn
              Caption = 'C'#243'd.'
              DataBinding.FieldName = 'CODCENTRO_TRABALHO'
              Options.Editing = False
            end
            object GridProduto_Centro_TrabalhoView2CENTRO_TRABALHO: TcxGridDBColumn
              Caption = 'Centro de Trabalho'
              DataBinding.FieldName = 'CENTRO_TRABALHO'
              Options.Editing = False
              Width = 208
            end
            object GridProduto_Centro_TrabalhoView2DESCRICAO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              Options.Editing = False
              Width = 172
            end
            object GridProduto_Centro_TrabalhoView2MINUTOS: TcxGridDBColumn
              Caption = 'Tempo'
              DataBinding.FieldName = 'TEMPO'
              PropertiesClassName = 'TcxTimeEditProperties'
              Width = 77
            end
            object GridProduto_Centro_TrabalhoView2PREREQUISITO: TcxGridDBColumn
              Caption = 'Pr'#233' Requisito'
              DataBinding.FieldName = 'PRE_REQUISITO'
              Options.Editing = False
              Width = 210
            end
          end
          object GridProduto_Centro_TrabalhoLevel1: TcxGridLevel
            GridView = GridProduto_Centro_TrabalhoView2
          end
        end
        object edtCentroTrabalhoDescricao: TcxTextEdit
          Left = 277
          Top = 131
          Style.HotTrack = False
          TabOrder = 8
          Width = 165
        end
        object lblFluxoDeProducao: TcxLabel
          Left = 0
          Top = 0
          Caption = 'Fluxo de Produ'#231#227'o'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = 7697781
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.TextColor = 11711154
          Style.IsFontAssigned = True
          Transparent = True
        end
        object chkTem_Producao_Finalizada: TcxDBCheckBox
          Left = 0
          Top = 298
          DataBinding.DataField = 'TEM_PRODUCAO_FINALIZADA_NOENVIO'
          DataBinding.DataSource = DS
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.HotTrack = False
          TabOrder = 17
          Transparent = True
        end
        object edtProducao_Dias_Para_Produzir: TcxDBCurrencyEdit
          Left = 609
          Top = 293
          AutoSize = False
          DataBinding.DataField = 'PRODUCAO_DIAS_PARA_PRODUZIR'
          DataBinding.DataSource = DS
          ParentShowHint = False
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.00#'
          ShowHint = True
          Style.Color = clWindow
          Style.HotTrack = False
          TabOrder = 15
          Height = 21
          Width = 121
        end
        object edtCodProducao_RoteiroÎPRODUCAO_ROTEIRO: TcxDBButtonEdit
          Left = 0
          Top = 91
          AutoSize = False
          DataBinding.DataField = 'CODPRODUCAO_ROTEIRO'
          DataBinding.DataSource = DS
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Style.HotTrack = False
          TabOrder = 4
          Height = 21
          Width = 116
        end
        object lblCodProducao_RoteiroÎPRODUCAO_ROTEIROÎDESCRICAO: TcxLabel
          Left = 116
          Top = 90
          AutoSize = False
          Style.HotTrack = False
          Transparent = True
          Height = 22
          Width = 614
        end
        object chkCriaTarefaProducao: TcxDBCheckBox
          Left = 0
          Top = 277
          AutoSize = False
          DataBinding.DataField = 'TEM_TAREFA_PRODUCAO'
          DataBinding.DataSource = DS
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.HotTrack = False
          TabOrder = 16
          Transparent = True
          Height = 21
          Width = 21
        end
        object edtTempo: TcxDBButtonEdit
          Left = 488
          Top = 293
          DataBinding.DataField = 'TEMPO'
          DataBinding.DataSource = DS
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edtTempoPropertiesButtonClick
          Style.HotTrack = False
          TabOrder = 14
          Width = 121
        end
        object lblCentro_TrabalhoPadraoÎCentro_TrabalhoÎDESCRICAO: TcxLabel
          Left = 118
          Top = 51
          AutoSize = False
          ParentColor = False
          ParentFont = False
          Style.HotTrack = False
          Height = 21
          Width = 477
        end
        object edtCentro_TrabalhoPadraoÎCentro_Trabalho: TcxDBButtonEdit
          Left = 0
          Top = 51
          Hint = 'F2 - Consulta / Cadastro'
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DataBinding.DataField = 'CODCENTRO_TRABALHO'
          DataBinding.DataSource = DS
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 113
          Properties.MaxLength = 8
          Properties.OnEditValueChanged = edtNCMÎNF_NCMPropertiesEditValueChanged
          Style.HotTrack = False
          TabOrder = 1
          Height = 21
          Width = 115
        end
        object dxDBRatingControl1: TdxDBRatingControl
          Left = 620
          Top = 51
          DataBinding.DataField = 'PRIORIDADE_PRODUCAO'
          DataBinding.DataSource = DS
          Style.HotTrack = False
          TabOrder = 3
          Transparent = True
        end
        object liedtProducao_Dias_Para_ProduzirGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object liedtCentro_TrabalhoÎCentro_Trabalho: TdxLayoutItem
          Parent = dxLayoutGroup21
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Centro de Trabalho'
          CaptionOptions.Layout = clTop
          Control = edtCentro_TrabalhoÎCentro_Trabalho
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 116
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lilblCentro_TrabalhoÎCentro_TrabalhoÎDESCRICAO: TdxLayoutItem
          Parent = dxLayoutGroup21
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = lblCentro_TrabalhoÎCentro_TrabalhoÎDESCRICAO
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 114
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object licbxCentroTrabalhoPreRequisito: TdxLayoutItem
          Parent = dxLayoutGroup21
          CaptionOptions.Text = 'Pr'#233' Requisito'
          CaptionOptions.Layout = clTop
          Control = cbxCentroTrabalhoPreRequisito
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 119
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object liedtTempoEstimado: TdxLayoutItem
          Parent = dxLayoutGroup21
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Tempo Estimado'
          CaptionOptions.Layout = clTop
          Control = edtTempoEstimado
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 95
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object libtnAdicionaCentroTrabalho: TdxLayoutItem
          Parent = dxLayoutGroup21
          AlignVert = avBottom
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = btnAdicionaCentroTrabalho
          ControlOptions.OriginalHeight = 31
          ControlOptions.OriginalWidth = 31
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object libtnRemoveCentroTrabalho: TdxLayoutItem
          Parent = dxLayoutGroup21
          AlignVert = avBottom
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = btnRemoveCentroTrabalho
          ControlOptions.OriginalHeight = 31
          ControlOptions.OriginalWidth = 31
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutItem67: TdxLayoutItem
          Parent = liedtProducao_Dias_Para_ProduzirGroup_Root
          AlignVert = avClient
          Visible = False
          Control = GridProduto_Centro_Trabalho
          ControlOptions.OriginalHeight = 71
          ControlOptions.OriginalWidth = 98
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutGroup21: TdxLayoutGroup
          Parent = liedtProducao_Dias_Para_ProduzirGroup_Root
          CaptionOptions.Text = 'New Group'
          Visible = False
          ItemIndex = 4
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutGroup23: TdxLayoutGroup
          Parent = liedtProducao_Dias_Para_ProduzirGroup_Root
          CaptionOptions.Text = 'New Group'
          ItemIndex = 2
          ShowBorder = False
          Index = 0
        end
        object liedtCentroTrabalhoDescricao: TdxLayoutItem
          Parent = dxLayoutGroup21
          AlignHorz = ahClient
          CaptionOptions.Text = 'Descri'#231#227'o'
          CaptionOptions.Layout = clTop
          Control = edtCentroTrabalhoDescricao
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lilblFluxoDeProducao: TdxLayoutItem
          Parent = dxLayoutGroup23
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Visible = False
          Control = lblFluxoDeProducao
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 154
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutSeparatorItem6: TdxLayoutSeparatorItem
          Parent = dxLayoutGroup23
          AlignHorz = ahClient
          CaptionOptions.Text = 'Separator'
          Index = 1
        end
        object lichkTem_Producao_Finalizada: TdxLayoutItem
          Parent = dxLayoutGroup3
          AlignHorz = ahLeft
          Visible = False
          CaptionOptions.Text = 'Finaliza atomaticamente o produto na produ'#231#227'o'
          CaptionOptions.Layout = clRight
          Control = chkTem_Producao_Finalizada
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 17
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup50: TdxLayoutGroup
          Parent = liedtProducao_Dias_Para_ProduzirGroup_Root
          CaptionOptions.Text = 'Total do Custos + Magem de Venda %'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          UseIndent = False
          Index = 5
        end
        object dxLayoutSeparatorItem17: TdxLayoutSeparatorItem
          Parent = liedtProducao_Dias_Para_ProduzirGroup_Root
          CaptionOptions.Text = 'Separator'
          Index = 4
        end
        object dxLayoutGroup3: TdxLayoutGroup
          Parent = dxLayoutGroup50
          AlignHorz = ahLeft
          AlignVert = avBottom
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          UseIndent = False
          Index = 2
        end
        object LiedtDias_Para_Produzir: TdxLayoutItem
          Parent = dxLayoutGroup50
          AlignHorz = ahRight
          AlignVert = avTop
          CaptionOptions.Text = 'Dias para Produzir'
          CaptionOptions.Layout = clTop
          Control = edtProducao_Dias_Para_Produzir
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object LiedtCodProducao_RoteiroÎROTEIRO_PRODUCAO: TdxLayoutItem
          Parent = GrupoRoteiro
          CaptionOptions.Text = 'Roteiro de Produ'#231#227'o'
          CaptionOptions.Layout = clTop
          Control = edtCodProducao_RoteiroÎPRODUCAO_ROTEIRO
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 116
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem15: TdxLayoutItem
          Parent = GrupoRoteiro
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = lblCodProducao_RoteiroÎPRODUCAO_ROTEIROÎDESCRICAO
          ControlOptions.OriginalHeight = 22
          ControlOptions.OriginalWidth = 86
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object GrupoRoteiro: TdxLayoutGroup
          Parent = liedtProducao_Dias_Para_ProduzirGroup_Root
          CaptionOptions.Text = 'Roteiro de Produ'#231#227'o'
          Visible = False
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          UseIndent = False
          Index = 1
        end
        object LichkCriaTarefaProducao: TdxLayoutItem
          Parent = dxLayoutGroup3
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Cria nova tarefa na Produ'#231#227'o'
          CaptionOptions.Layout = clRight
          Control = chkCriaTarefaProducao
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 21
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutGroup50
          AlignHorz = ahRight
          Visible = False
          CaptionOptions.Text = 'Tempo Total(min)'
          CaptionOptions.Layout = clTop
          Control = edtTempo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lilblCentro_TrabalhoPadraoÎCentro_TrabalhoÎDESCRICAO: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          AlignVert = avBottom
          CaptionOptions.Layout = clTop
          Control = lblCentro_TrabalhoPadraoÎCentro_TrabalhoÎDESCRICAO
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 477
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object liedtCentro_TrabalhoPadraoÎCentro_Trabalho: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          AlignVert = avClient
          CaptionOptions.Text = 'Equipe Padr'#227'o'
          CaptionOptions.Layout = clTop
          Control = edtCentro_TrabalhoPadraoÎCentro_Trabalho
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 115
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutGroup23
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.AlignHorz = taCenter
          CaptionOptions.Text = 'Prioridade na Produ'#231#227'o'
          CaptionOptions.Layout = clTop
          Control = dxDBRatingControl1
          ControlOptions.AlignHorz = ahCenter
          ControlOptions.OriginalHeight = 20
          ControlOptions.OriginalWidth = 87
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object PnlTabComposicao: TPanel [19]
      Left = 9964
      Top = 10000
      Width = 439
      Height = 280
      BevelOuter = bvNone
      Color = 16505534
      ParentBackground = False
      TabOrder = 28
      Visible = False
    end
    object edtValor: TcxDBCurrencyEdit [20]
      Left = 809
      Top = 24
      AutoSize = False
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 10
      Properties.OnValidate = edtValorPropertiesValidate
      Style.Color = 10930928
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 21
      Width = 78
    end
    object edtMargem: TcxDBCurrencyEdit [21]
      Left = 755
      Top = 24
      AutoSize = False
      DataBinding.DataField = 'MARGEM'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.OnValidate = edtMargemPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 21
      Width = 53
    end
    object PnlFrameCustos: TPanel [22]
      Left = 9964
      Top = 10000
      Width = 185
      Height = 321
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 30
      Visible = False
    end
    object EdtTotal: TcxDBCurrencyEdit [23]
      Left = 9964
      Top = 10000
      DataBinding.DataField = 'TOTAL'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 10
      Style.Color = 10930928
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 24
      Visible = False
      Width = 78
    end
    object EdtQuantTotal: TcxDBCurrencyEdit [24]
      Left = 9964
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'QUANT'
      DataBinding.DataSource = DS
      ParentShowHint = False
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      Properties.OnChange = EdtQuantTotalPropertiesChange
      ShowHint = True
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 25
      Visible = False
      Height = 21
      Width = 52
    end
    object edtCusto: TcxDBCurrencyEdit [25]
      Left = 667
      Top = 24
      AutoSize = False
      DataBinding.DataField = 'CUSTO'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 10
      Properties.OnValidate = edtCustoPropertiesValidate
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 87
    end
    object edtValor_Compra: TcxDBCurrencyEdit [26]
      Left = 528
      Top = 24
      AutoSize = False
      DataBinding.DataField = 'VALOR_COMPRA'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.DecimalPlaces = 10
      Properties.OnValidate = edtValor_CompraPropertiesValidate
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 87
    end
    object btnVisualizaEstoque: TcxButton [27]
      Left = 665
      Top = 56
      Width = 29
      Height = 25
      Hint = 'Visualizar Estoques'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000015000000150806000000A917A5
        9600000A3769434350735247422049454336313936362D322E310000789C9D96
        775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
        90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
        70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
        05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
        F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
        0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
        569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
        91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
        53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
        24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
        E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
        965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
        FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
        2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
        C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
        B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
        407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
        B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
        13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
        9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
        9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
        940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
        6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
        B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
        917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
        940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
        A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
        318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
        C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
        E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
        2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
        8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
        46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
        5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
        A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
        28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
        6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
        3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
        7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
        3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
        AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
        31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
        FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
        1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
        6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
        4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
        9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
        CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
        D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
        A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
        5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
        67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
        85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
        0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
        96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
        44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
        C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
        F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
        EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
        C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
        FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
        CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
        7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
        BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
        8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
        DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
        572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
        5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
        A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
        B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
        CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
        7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
        CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
        4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
        8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
        377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
        E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
        3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
        267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
        FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
        EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
        8F70662A000000097048597300002E2300002E230178A53F760000023E494441
        54789CAD954D6813511080675E5E829282D2985E448F82A0780DBD343F3D1504
        FF8E558F8AE6476856E36F5C106C93A6D2EC823F37BDEACD5EBB89160F2AB615
        7AF0A25EC4836040A80A76F3C6795B6D130CE9C676D8C7BC9979EFDB793BF358
        4944B0D522FD2CB293956140C812B86666F6D29B4D41EDA1F1280582538830AA
        6D0439C22FB0BEC2F2F5A2535CEE092A84C06ABC741A64B08C00BB5A4201265F
        8840DFB16A72F27CD6C9CFF882DE191ADF574D94EE715E892E87D82B109F72D6
        4F7EAEA89C31677CEE08350F9AA148347C51CAE05536B77501AE0BC289ED2131
        6C25CB971BF51F0F8AAAA8D6A056BC341889F6DDE74507D017AD4D76228ABB91
        44F8A495AC9CC938634B1E1445604203B9B9BE90A23434D54B21516D44735D15
        92528EF0DE29A60C225081DDA3F2CF317E794AC1B54C2DFFB8C74C6D2B55D9CF
        273CC78415ED682B5493E07D8FC0D59C885E03AE7FB836A840F5CFF5B253930E
        6F3B44403710D0068289B43356685D434CE558676817E9F7803EC52FB427F10B
        BDCDE3148FDD5B036D528104F4F3ECB936DDA6FBE1BFA076A272984B7A852B7A
        8BAB77846B30D0A87D3F1A89875FC880AC5BA9F23B243C0B8A72E9BAF1CA1754
        09181080319ECEE856E1BA7EF20288319EC77463EB4721EDF09DE966A50B946A
        04D8E0848EB738F5CD33784C6F0825508F80C49C42F5D1B35D5AA000EE598DC1
        12FF72BE9960D234957517E8A2993AA69ACABB818AF0ADD03E8485356866D678
        D8FAA6DCB3FC3CABF9565F16F25ADDEC9459CEC92FB25AFC6BFF06ED23B7EF11
        F569520000000049454E44AE426082}
      TabOrder = 19
      OnClick = btnVisualizaEstoqueClick
    end
    object btnTabelaDePrecos: TWRButtonFlat [28]
      Left = 9964
      Top = 10000
      Width = 118
      Height = 25
      Action = Action_PrecoEspecial
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 37
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object btnPrecoEspecial: TWRButtonFlat [29]
      Left = 9964
      Top = 10000
      Width = 118
      Height = 25
      Action = Action_TabelaDePreco
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 33
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object btnCustos: TWRButtonFlat [30]
      Left = 9964
      Top = 10000
      Width = 101
      Height = 25
      Action = Action_BtnCustos
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 31
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object ReportDesigner: TdxSpreadSheetReportDesigner [31]
      Left = 9964
      Top = 10000
      Width = 878
      Height = 337
      DataBinding.DataGroups = <>
      DataBinding.DataSource = DS
      DataBinding.SortedFields = <>
      OptionsLockedStateImage.Text = 'Por favor agurade...'
      Visible = False
      Data = {
        8C02000044585353763242461000000042465320000000000000000001000101
        010100000000000001004246532000000000424653200100000001000000200B
        00000007000000430061006C0069006200720069000000000000002000000020
        0000000020000000000020000000000020000000000020000007000000470045
        004E004500520041004C00000000000002000000000000000001424653200100
        0000424653201D00000054006400780053007000720065006100640053006800
        6500650074005200650070006F00720074005400610062006C00650056006900
        650077000600000053006800650065007400310001FFFFFFFFFFFFFFFF640000
        0002000000020000000200000055000000140000000200000002000000000200
        0000020000000000000100000000000101000042465320550000000000000042
        4653200000000042465320140000000000000042465320000000000000000000
        0000000100000000000000000000000000000000000000424653200000000002
        0200000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000064000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000200020200020000000000000000000000
        0000000000000200000000000000000000000000000000000000000000000000
        0000000000000000000002020000000000000000424653200000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000}
      object ReportDesignerDetail1: TdxSpreadSheetReportDetail
        DataGroups = <>
        DataSource = DSProduto_Composicao
        MasterKeyFieldName = 'CODIGO'
        DetailKeyFieldName = 'CODPRODUTO_COMPOSICAO'
        SectionID = 0
        SortedFields = <>
      end
    end
    object PnlTabelaPreco: TPanel [32]
      Left = 9964
      Top = 10000
      Width = 850
      Height = 261
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 32
      Visible = False
    end
    object pnlCentroCusto: TPanel [33]
      Left = 9964
      Top = 10000
      Width = 849
      Height = 278
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 34
      Visible = False
    end
    object chkPode_Alterar_Estoque: TcxDBCheckBox [34]
      Left = 481
      Top = 60
      AutoSize = False
      Caption = 'Movimenta Estoque'
      DataBinding.DataField = 'PODE_ALTERAR_ESTOQUE'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = chkPode_Alterar_EstoquePropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Transparent = True
      Height = 21
      Width = 73
    end
    object tcTabs: TdxTileControl [35]
      Left = 18
      Top = 94
      Width = 958
      Height = 459
      Align = alNone
      Enabled = False
      OptionsDetailAnimate.AnimationInterval = 350
      OptionsView.CenterContentHorz = True
      OptionsView.CenterContentVert = True
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      TabOrder = 23
      Title.TabsFontSize = 11
      OnItemDeactivateDetail = tcTabsItemDeactivateDetail
      object tcTabsGroup1: TdxTileControlGroup
        Caption.Text = 'Estoquista'
        Index = 0
      end
      object dxTileControl2Group2: TdxTileControlGroup
        Caption.Text = 'Financeiro'
        Index = 1
      end
      object tcTabsGroup2: TdxTileControlGroup
        Caption.Text = 'Outros'
        Index = 2
      end
      object tiEstoque: TdxTileControlItem
        Tag = 4
        Glyph.Align = oaTopRight
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000003C0000003B080600000027F9E9
          CA00000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F7600000492494441
          54789CED5A59681351144D263349BA50536B5C108A600A46C590F447104B7101
          AD2888F55FC1BFBAFBE38F848850371041100A22A220888248C5FDA350412906
          AA45416805ABC560AB6013B2B433F13C9D49A7B1934C3277343239F0782F6FDE
          DC7BCFBBF7AD193E9BCDDAAC043EBF229D4E2F1704613B8AF53A65A43299CC2D
          B7DBFD91D63473308BB0288A3B9D4EE74DBBDDEE2A4588CBE5DA836C35A56166
          2147381A8D0AC160B0A754B2325660683C610549922E3A1C8E5E564E26934B39
          8EAB29D336091D3952E6BB9AC8110E04026D20BBA01C2178CF816C132B83E01B
          64BF0823CC59B4AC2F47263A3061D33FAC7423471886AD2A47000C9B82577783
          E806C838882A0799752620471813CF5D84D03E14FD3ADF15918640F63842F829
          721F08B37A72C2E8D4F3C85A7519258A27789EEFD77A9E232CCFB26B4A350664
          73BA94AA5265E840009DD9AEA761B161F9C7B264006612264395B0014872CE11
          CA2487191EB61CE16A485712AA1E3600C5C3764299E43035A4C7C7C73B70FA2A
          4B077657598FC7A3C8D9A957CEF0F07022140A693E37D5C35EAF374E21B81439
          85C83298EA6138E982EDEF9F935F637B794CEB2119E1ECCC5D917A966E2DF778
          68C00E67A1E7941E9E96F3722E10FE1A2809A7E5DC328433722E10CA2407E518
          5642DA32EBF07F71C14D4618B3B1323B8B051BFE63507AB8A20F0D0ACC08696B
          1C1E306959EEF030D74EABE2600661CB79B8A251F5B001543D5C89A8123600CB
          12B6CC3A6CAD8B78D5D6D21A7B69DBCCB190522639CCB8C4B3868755573C82AA
          EE19B2CF543A74DAF14EFED6644E50129E928BB95B4B8EE32254F2F5A2105906
          32C2922459EB9A767A7A3A25173DF0F677B92CD966962B33A1A587FD21720291
          7645A920231C8BC5E2F5F5F5DF1052F3F1D34325D70840F607D2B0BA8E8CB0CF
          E74B4722116F7B7B3B170A85E6D5D5D5ED92BFEE4B21DC9F0F0E0E3E989C9C24
          3F5179BD5EAEA5A5C5EF70387640DF62108C89A2D83B3636F676606060AAB3B3
          73D62D2AE99A190E872528DB8610BA0AE54D4A3DFB782D180C4633994CA7CBE5
          FA40A5AFAFAF8FF7FBFD67513CA05C13B3490B29DCDCDC7C796262E2882DEFDA
          989430C6F13A90BB03857FFCDD82BA90D3E97C0C23424D4D4D9314FADADADABA
          21F7D01CBA18F92E74321BD707D5CF480983ECB9B9C8AA0CF1353636EE47B1DB
          A8AE743ABD0C1D78B848B32E44D525B47BAF5490118EC7E35E8CDBB5C5DA8134
          FBDADE30614110B6425641FB99A7799EEF40919E30C6E6427BB155FF371651E8
          832A5D72F2DB91114E269363E84D49F51F93163E51E8C36C3CAAA77FD1EE93BA
          1D19E1868686EFF2DE797311036EEB0B84C248A552F76B6A6A5290E52EA00B43
          3873CFED9E69423D4B1F85975FC0883A0D035E8D8C8CF460CD36ACABB6B6F60B
          D6F730749DD16A037DA74076545D474A1813C910486FC46C7D83CDC879CA7B13
          89C45EB641A1D287CE3D077D6C1845906A55BA524827F1FC343A65F63B54CA55
          46BC8C46A32B0381C04665A785CD483F3A63105B4F525D20C3766EE7B1425C83
          C7B7A0BC04E90BE69347583162F9647FD9476A810C6C2DD951F1A19CD831D10C
          3539A023BF22BBAEFC0659CDB63F01D3718F22F0EA05DF0000000049454E44AE
          426082}
        Glyph.IndentVert = 35
        GroupIndex = 0
        IndexInGroup = 1
        RowCount = 2
        Size = tcisExtraLarge
        Style.BorderColor = 2930701
        Style.GradientBeginColor = 2930701
        Style.GradientEndColor = 2930701
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Estoque'
        Text2.Align = oaTopLeft
        Text2.AssignedValues = []
        Text2.IndentVert = 38
        Text2.Value = #8226' GERAL'#13#10#8226' HIST'#211'RICO  DE MOVIMENTO'#13#10#8226' FORNECEDORES'#13#10#8226' COMPRAS'
        Text3.Align = oaBottomCenter
        Text3.AssignedValues = []
        Text3.IndentVert = 30
        Text3.Value = 
          'Uma vis'#227'o geral do estoque do produto, '#13#10'visualize o hist'#243'rico d' +
          'e movimento, '#13#10'informa'#231#227'o de fornecedores'#13#10'e compras realizadas ' +
          'deste produto.'
        Text4.AssignedValues = []
        OnActivateDetail = TileActivateDetail
      end
      object tiProducao: TdxTileControlItem
        Tag = 3
        Glyph.Align = oaMiddleRight
        Glyph.Image.SourceDPI = 96
        Glyph.Image.SourceHeight = 60
        Glyph.Image.SourceWidth = 60
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D49484452000000500000005008060000008E11F2
          AD00000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F7600000783494441
          54789CED9D7B6C14451CC7DBBBEBE3FAA22F22D0D6A21603A860090F43A58508
          D17FC4D216A2E81F2022188906C1A0184D0C8856501E89FF000936D1885A2B01
          1184803431243ED240F40F44D03660AB9656B1AD77BDDE153F43B758B773BDBB
          9DBD479BFD2693D99BDF3C7EFBE9ECCCECDCEED571EDDAB5384BC6E588B603C3
          5D3107B0B3B373744A4ACAE2F8F8F8797C9C4818A7997E239CE38A39469E8F33
          3232DAA3E7E57F8A198057AF5ECD04CAA6D4D4D415C0734AB264132663AB484F
          4FDFD6DBDB5B5D5757F77A5555954F565F434343425151513AF9E3478D1AD54E
          FEB08C553101B0BBBBBB08785F70AEB706939F7C69844D959595D36A6B6B17F7
          436C6F6FCFC8CCCC5C836D717171F19DC4D7CFCFE7F375D373CF7278B2A7A7A7
          263131F19C59BE471D606B6B6B5A6E6EEE9160E10D146516555454ACE1702760
          EECACACA3A4C5A81245F12D14C111212123600F3138FC7F3425252D24555FFA3
          0E3027276715275864B43C659F686969D93366CC98CF64F024F9E389AAE885F7
          D3331FB7DBEDB546DB168A3A40CEE73EC52A26006F23F5DC1C62BBE9369BED43
          C6C6A52236DA785400326ED9CBCBCB8B71FCB6504F5C2FEDF27CC960591BD15E
          B7DB7D3A3939F992913A220AB0ADAD2D3D3B3B7B0383FF93383F3A926DFB9398
          90180B9FE570BD91F21103C8205F0CBC03AA3D2E4C9A67B460440032E34D62F6
          3B01BCAC48B4674076A305C30E90712E9ED96E5F0CC313FAD268C1B003A4F74D
          07DEAC70B76354AC092F7575756D494B4B33543E123D7072B8DB900930A2574D
          E58F973D449E63DC05AD045EABD176C20AD0E572E5B33CB83B9C6DE8059416C2
          46FE70EF36353525E7E7E7CF01E26C423EE6544207F60B0C2B471997BFC73FA5
          F6C2025003B7952076550C0FD03271F2FB89C44ECC0C421E41ACE5FE209CC176
          B8B9B9F910D05C226F6161A19BE8B8166E48DC8C00D8147F4C07E8F57A67014E
          DC56E59A5DB710770E1F71FBF5A9CC26C0002F1CCDFA95A900E979E380276EE8
          73CCACB75FF4B0DD5C760780188EEA0DC95480C07B51151E90DA08624BEA313E
          4E207413CE00AD869E772296E009997D09CF56290C381780C40EC9413EEE1F68
          234DC9B170C96C80E709D3026502D44F80DAC040BE948F621FF01FC2D7AC19DF
          E1BEF417937D0AAB4C03A86D147407CA07BC536EB7FB51A7D3D9CCC7FF4D06C0
          33CB9D88C914801D1D1D39C0AB67DCBA436F035803D1CF84CB1C7F439E4AC6CA
          9D81BE4E6536DFCC8471D60CFFC2295300B292DF2E832704A8F7B954DF16C740
          990694CA60EAA4CC1E337C0BB7CCBA8417C91281F71797EB072929292635137B
          320BA0D8CD9D343041C063A2A8005E8B496DC4A44C01C8A5B9C4E170ECE050DC
          F7B6110ED1F3B63351FC6A46FDB12C530032AEFD40347F601AF0CCA83AE6A504
          50EC760493AFB1B1D15B5656E655692B566518607D7DBD0328AE60F21614143C
          4FB4CD685BB1ACA87F2F1C8C7C3EDFC218FB32CAC3326BB73818160071566C2E
          2C88B61FFD6285D141347C00C6B22C808AB2002A6A440364ACDAC122BF469F6E
          B7DB678849803BA5754C5027F5766E0A2A18735F0EA68D910EB08545FE197D3A
          D0B2347BA3CC0ED8197D4FC105D688061809590015650154D48806C838369F71
          6ED0662413C8782D5E827D8AA45CC0EF75FA35A201C6F56DAFC99E9BEE877A2F
          61AAC49E196C03231A20BD6B1BBDEC4D7D3AB3F03C963227996D9F21AED3DB49
          5F492FDC1D4C1B231A602464015494055051164045DD00287698432998979717
          CAC32A36517F4949492865ECFD3E95969606775FA51313C17A2692E5839CB1D9
          52B47817F6D724E5429F8571F24FF1CE841147030947ABCBCACAAA4329C3ECF8
          396594DAD5DE45F1FB3E0AF63CA506E2AC4B5859164045590015650154940550
          511640455900156518200BD0BD84267D3A6BAB326D1FAE9AD029B12F92EDB791
          B795B04BD616F9D711FD8EFD3D899965A6ED553F3E1E219C96D4275EF45E261E
          FE240CFA010A6C33090FCAEAD4CB30409FCF57E37038BED2A7F72201D0E572ED
          943D1B88C3E2A172D986E515406C96B545991544E76576ED191D7F008F5366BB
          C4F7052CD497692FED1C949CC353610768A94F16404559001565182063CB44AF
          D7EBD6A733A65CBF414F4A4A9A827DD0CD3A767F2F213AC93F5D66A08C788124
          53661F6A8747FC8E8CAC0CBEDFAED98B6476DA2BF457A75E2A00F70CF5CA284E
          1C0DA53E4E663C93D2B74364191BC02EAB732D65D6FAB3E3FF5BAAAFBD1A06C8
          4CF5484F4FCF77FAF4C4C44431833DC75F7636B3DDA037C1B1BF215EB6D1A733
          635EF4783C0FC8DAA2CC29A21FB1AFD2DBC4FBC8FE7E0B8B3AB750669F3E3D21
          21A144BC90CD39ACE61C4E48EC4BFD2D8DF452017899CBF48224BD4D3C5782E3
          8D7E96317FFBA9D223AB4F2BD343D425B36BCB18698594BB222BC31FF616CDDE
          E2E71C82FE09006B1251940550511640451906C82CFB3463C843FA74C6BF7B44
          EC743A5F91DD0BC7F5FD58844C37917FAB1FDBF55FAF94D94B4B4BFD4EA3F8B2
          9032E3F4E9039E8D598E7D8EA45CD0BF346218208D3C1CC0BE3AC4FA04A4A17E
          002C23805D56E75CA2B943D8CB43A94F26EB1256940550511640455900156501
          54940550510301765AFF98206875F51FDC00C89A686C747C19DEB22E6145FD0B
          12A09FDA3116329D0000000049454E44AE426082}
        GroupIndex = 2
        IndexInGroup = 3
        Size = tcisLarge
        Style.BorderColor = 2930701
        Style.GradientBeginColor = 2930701
        Style.GradientEndColor = 2930701
        Text1.Align = oaTopLeft
        Text1.Alignment = taCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Produ'#231#227'o'
        Text2.Align = oaTopLeft
        Text2.AssignedValues = []
        Text2.IndentVert = 38
        Text2.Value = 
          'Configure as Etapas '#13#10'de produ'#231#227'o, Pr'#233'-requisitos '#13#10'de produ'#231#227'o ' +
          'e baixas '#13#10'autom'#225'ticas de material'#13#10'na produ'#231#227'o.'
        Text2.WordWrap = True
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnActivateDetail = TileActivateDetail
      end
      object tiTributos: TdxTileControlItem
        Tag = 5
        Glyph.Align = oaMiddleRight
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003B08060000003DC509
          4400000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F7600000960494441
          54789CD59A0D7055C515C7F3F1F245BE3FC04A68E8242953B0436B745A158154
          B02616621B22EA5081C8A0C887CEB4C3CCAB066224D5460B98A96D9181524BAB
          550391883A889424D34A99A6229DAA759A06A64986E0336D9297E425E4CBDF89
          F7BE5937F7C6BC973CDE7066EEECEED9DDB3FFB37BCEB9BB7BAF637070F03B21
          2121A9213E92C7E3A98B8B8B73A9BC818181F96161617314D670444444F5F0F0
          F088958CA1A1A15B4852545E4F4FCF89848484FF5BB4BD9D649ACAEBE8E838E6
          60C0F2D0D0D09B7C55203A3A3A97A4CE2C232794415E40D6359A52DF25396E25
          83B669F47B49E5C5C7C71F2459AD812F0C0F0F3FA4F24646465E4B4D4DAD72F8
          0ADC8E007A8B0E5E08801B436C14A0EE658014D2EF2E9347FE5E00BF0CE0A352
          76BBDDA9ACF42F35F0AEDEDEDEF5B1B1B12153A600601EB2A95ADED7D797C18A
          FDD7AA1293D90C905C805FA5C8DAD3D9D9F9F5C4C4C40EC05752F725B50F26B9
          813E1725EFC007EEA741BCDA40B487E7F50B34FE29B372546DD3D5D5F5414ACA
          67E6DBDFDF9F191919F93D2B80C8098F8A8ADA40F611AB7A007E82EC0718F355
          A54F3A7EB00B7E35FC556A7BB01C8477D82C3B70B2F775A1341AD0CAFF71381C
          7F5579267821C06F12A04AFB2ACA454AF3758D8D8D65D9D9D9FD564A00E88800
          13F351942866257EA0E16866E21E6265BCBC499BD0C58B176367CC98719F3248
          3F66B19125BE0610730D3033323333EF24FB7B3B39D8FAC338B0F851BAA24492
          227704D32916B352FB4D5A81E9D3A7DFAB0E041D91F0CA60FBE1FF5C01B3693C
          0524746232EB99F5D7691B6AD1E417ACD4099D3929058CD0B945E5017C1F0385
          10257EC72A3C01964843811B88543998ECBB76F2E8F726132D61F56E952F26DD
          DDDDFD382B34A6CFA41400D01280CD53063A5F5E5E7EA2B4B4549CD345B906B6
          D717F02359857576F200395D2292CE678C08E46D27FBF0942AC00A6CD158479D
          4E67065169B4C06C1FD39CF91E9C702BE6F23F2B79807F4E0F990A6D61B56B74
          33F25B0123742E53790CBE9990B9D9AE0FF531CC6431D99D7A1DA6779F1E75B4
          BEA1D4FF86EDC3FCA4A4A44E93EFB70246E80CF3B51F7D1E2C2B2BDB8D990D9B
          3C26230B79CFA8ED30BFD33CAF03FA71A56F0651A892EC5A93E797027AE8F485
          0091555252721BD937A55C555515BE62C58AE7D59729C03DF8D79A9A9A9A46EA
          F2D4BD1AF93598D2ABE68BCF2F05089DABB5187DE1D2A54B0B246BD59ED9DD4B
          FB5BCD32B3BAC954A0B0B0D049DD02B53DF21EA5CF47454545B23A6BC8BF479B
          58A5FF73BC6BDEC1673EF659012374EA767E00DB3F67D74742ABAA00942F3EC4
          2CA6F0946AE0EB77ECD85129914C08B98DF4DF4AFF5F996DE4C5386DDAB4BD64
          BFEFB3022CED522D740E33FBFB18C8B64F5353D391ACACAC76737F25BEC3ACFE
          88AC84E108455637B28A55FF1022FCEE61D20A689BA72871078AADB554A0BEBE
          FECB6AB9B6B676D89C1189F3B9B9B9116AFDE2C58B07C7535AF640D8FA55989E
          D51BD64B2E976B04B319D2F9722062E56F3F79F264B8DEDE52011D10656FDE98
          9D61BDCF179115305FC838D58D99A8293B0F048BAE7C05E46541FAAD6003F193
          EA650592E4701D6C24FE10939F280A3490E90D36183FE98C83D91FB345BD92E8
          CA77E26003982CC9B5CAF5DA9936E8C49EFF746A6AAA7B226D1D6CA62AFDB95A
          0C247162CB21393391B657BE0911429FE5A90E361095D891B6729E9E505BB99D
          7E31C0787C26B9B49D2805DD84E448B97CF9F20C263259CAECFB3FA9A8A868D1
          CF0476141405DADBDBE393939357113C5672E6BD9134DAAC13D3D9BE7DBB1BB3
          FEB35C72353737BF347BF6EC3E3B590EF6D99B11307BAAC03183559CA04E5BD5
          D5D5D539162E5CB8252525A5843153ACDA081907FC7CD2FC8C8C8C27C15882CC
          03565F7A642B71CF5486514CE12392310A783C9EF4458B16BDC258375AF5938F
          16249DD467AB7CCA57F3EC676256BADDEE55F1F1F1ED9F5360AA808F4772808F
          8E8EFED3782B8D023B51F280F9E14227FADE16171757DFDBDBBB84037D9BC997
          30FA6BF9DE34556099A9BFB10ADE7257575732B376CC0A3CE336F23CC36EE0AD
          53A74E9D93B3B7D3E9FC2AE6F20D6414D0E44EB9CD539498171313F3464B4BCB
          8259B366794615A0A1ED95B73FA4821702FC1EDD2C0CF055ADADADAB05486464
          E4E8B9DB387B371ACFA19E9E9EADCCF62EFA7BBFD290BF363D3D5DAEED378D2A
          3095E075623596B055596901FEBC095ECAAC8020EF837716DECD172E5CF88BD4
          C9C5156DADEE6B360C0C0CEC23629D09A802ACC6362B3EA07E6B8227B2383119
          8934CEB4B4B473287C9C19761B3B84366414E9FDE55E893E8F922D9230FA4332
          B3FCC0D78FF0DDB695FDFDD998C6229BEA7F296096E9954618FD89F5871A2F15
          747777A749187DD09F30CAECC815B7AD022C6FBECDA72221EF1777E41CD2EF46
          274272A3877FDC1A30136280EBC7A95B4A7240F2B28AF8C029C9FA3386036758
          ABDEFCFA40435FB063FCCA38757761BA35E66F06E6275C52D989CE215D06A675
          565FFEF5311CD8E9BF7D823D71B29D14E39BF28B984F3E13F83330787DC2C0B3
          BBACACAC72DBB66DC5B47D56DD2BE96304320A79C6AB34FC43EEFED7A0C87BAC
          C823D5D5D56FC905B0DCCD1ABBD1FDB2FF91AD84DD188154A079A20D01F84D9E
          F97979790DC4FE7F027A2766F4B4803F7CF8F0F3EC589FB6D9FC35074C0166F5
          8C6C14C7A91FB18A52F2F182A702D3FA90E26B72AB4D5331AB6F5B8D11300578
          0B1FC3499FB2AA63E026224F21B32CF67DB38D08155B8C5E291F5678D71C0F98
          0244A87F30C8BB00CCD106EE027C81FC6482A32EC651653B2F7FB30C1AF5E23B
          7BCBCBCB8FC8471579596156F32C8638C1C6AE25A05B096CF849B606AF68EC30
          78D792BE6F38EA1FE4116B4A4848086D686848CCC9C91930BF0801BE82BA3138
          91FD84FCD210500518A08A197DDB78718D12F9389E83F0E573692966F48E024A
          4E5CA3BFFA7474742442E2BC633EE7D2F78FC8AE957CC00F347D7D7D6B39CCFC
          5DFD234B489402FC52391350AC4599FD6D6D6D6767CE9C295F24E7025EB62289
          BA3CF11F4E661B59AD90CBA20076DA4A44C907ECDB56A1D0382B64E3F08D1CF4
          9B48CBEC64015E64E5A97F355E9623A5ECDBD9222C945F30013CC7AA0DFCFBD9
          9C15D8C99090898CC2A8A8A8F32AFFB25DABF0C6FDC0E5725DC79E5F6658FEB3
          F8DC4185722649A6DE0FE03D3C4F3535355558FDB27659EF85D8267493FC98C3
          FB2EFC623D7939AD7D4D7FA1498C27392BF7421C2BF7C94D04E02D6506E5624B
          FC82E43179E4BF50CA734DFF00F4C7C4FE0FE5971AD1CBEA2F2D953E05B8F502
          E57C21CACE0000000049454E44AE426082}
        GroupIndex = 1
        IndexInGroup = 0
        Size = tcisLarge
        Style.BorderColor = 2930701
        Style.GradientBeginColor = 2930701
        Style.GradientEndColor = 2930701
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Tributos'
        Text2.Align = oaTopLeft
        Text2.AssignedValues = []
        Text2.IndentVert = 38
        Text2.Value = 
          'Vincule aqui o Grupo de Produto e'#13#10'NCM do para que seja poss'#237'vel' +
          ' a'#13#10'emiss'#227'o de Notas Fiscais.'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnActivateDetail = TileActivateDetail
      end
      object tiCustos: TdxTileControlItem
        Tag = 9
        Glyph.Align = oaMiddleRight
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000003C0000003608060000009B67FA
          1400000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F76000009FC494441
          54789CED9A0D7055C515C74978F9800062D2040D34982135122DE4A5ED8CB48E
          4CAD5647A0B4295F2AD8FA3122E3D4E20821A58490210C50186A154B45B04301
          3F901751745A751843658CD621510444C5D07CBCC1482084BC904F427FE7B2F7
          F5E6F15EEEDEC7CD48677A6676F6EEDEDD73CE7FF7ECD9B37BAFE7FCF9F303DC
          A24020F0ADC183074FE2F12A528C6B8CA3270177B2A3A3E31F83060DAA970A8F
          5B9CCF9D3BF7D3A4A4A41D31313157B8C5D32D4A4C4C6CEFE9E97928363676AB
          2B805B5A5A52860C197259821542AF44B2CD9D9D9D1FB80298999D7CB9823509
          FDE23C1ECF4CB74CFAB2066B924C8A2B80591F15AC0F3758F52BA1E77BAE00C6
          543EC4DB6F6504E7B8C1AF3F08FDDE292D2DDDE59A97F6F97CF7E5E7E75729D0
          57BBC5D7056A24F9FC7EFFEAE2E2E21ED7004F9B36ED1CD91F55BAEC68D4A851
          46EE1AE0FF15FA3FE06F82DADBDB3358FBFDE2E65B5B5B4F2527279F31CBAE00
          96189AF02D1BA5479086481D5E3140FA1A304788C21AFBEA8F974F1F3870E046
          FA7ED70D7DAC141F1FDF831E7B88B2E62624241C8B0AF0D1A3471332333327B1
          F74EA1F863008D8ED49677025E02F772F2DD757575AF8D1E3DBADDDA06C0EFC3
          F30763C68C29A5F838C05D3B7828CBB90DE07B4E9C3831CE116066329530723E
          8A3D0CA3640742C545CE269F9D9191D10CF067DBDADAD671B23A6EB6C9CACAEA
          205B4870F021F91615FFBA46F0CB4C4949B9470B706565655C6E6EEE63802D32
          4DF612044B18BA80E3DA23805B555D5DBD5A813508ABD9D1DDDDDD8089EFA6ED
          D04B91154676B62D606CFF3B5EAFF7251A7B5D163E885482B5CCE8EAEA9A1917
          1777C87C8789EF05F42440BF29EDDC928965D5F6099833EEED2822C7BE616E09
          0D25785F0FC00F90351B80BBCC7AEADEA5EE5E997137D634601BCF9E3DBB2D22
          60CC6D3AC2B6212BDE2163D9023A4949BAB343BB2464ED44E603E45BCC7A0660
          27FCD6F058E04487303A7D26032ABB4558C0727B110D58211928147D4B29BA40
          B71FB206926D4676B375A6ABAAAA968C1F3FFEEF4EF5B0E8D3C8767488DCB8CB
          BA08B0AC59CCF8E52866D64F268C8FA3B0943FA52C1E3747665087878066A0B7
          B3A66F44874FA42E2F2FAF8BACDC892E56125DD02958EE0558BCB172505A6B16
          50DD649B70301B50F080D4911BEF50FC39B2E70E1F3E1C9F9D9DFD43CAB329DF
          63B7DDF07E30EB77477D7D7D1E017F9B23741AD40BB06C3DBADE58A228CCEFE7
          285761820C47393939B29ECB2511E62D66EF2DE1F9A1BE4249DE5D3772E4C8C5
          3C16E9E8E284828051260D65B40400B69D59BD03A0554E84B18F7F4D368FFED7
          90DF61D37C2161E9B384ACB56605A659C8604C7522136A445ED9F2E5CBB7F43A
          0F0376BE83A0E28950B00CC08F582F73C89F9177CCFE54F85DD5D1D1F13A4186
          DFA2F4AF306F3BB032CBF89A04717A8F5AFA5660512B3575B4F29ABC74E9D25B
          79BC1069496C4C00305797018E6D13CA04CB72E70BD8BFC87E099832A923BF89
          E202664882F7D7188865B46B21A67DD281AEF713FF2E4E4D4D0D4881BEFF6420
          FDF01DE9808741F4B99BBE7F3300CB4140373646F99380FD32845949A4E040AD
          5559EB93C9FD4E8218F1EEC4BFBFE4D1D89B656B815EE7517B72ACC424DCE251
          0F4ED6C5E93075B6DB0ECA8BAC88A7AA3EFA896EC16004C0E5D4450518EA34D7
          F02D0E3A859BA16DA479512A6147134B4A4A62C5E148813DFA7DEB72D225310D
          96D52B1EF1CE78CF51BA1D19DD54B9A1B07A4F9FCFF79BFCFCFC4F79F7B8634D
          ECE52517161666F2682C231C600D6BF1ACECD7BA3CCE5FA0DFE34C2B3D8C56B6
          5325E8F320D952B3AC6E2C9F6269AC3F76EC5802077C11D2405DB732E54B22D6
          BFE8680056EB782D294DB3FB4906E855B93B3778A1643477C80598C71E39C659
          2B55BC6ADC66C077EDA953A7360E1F3EFC7675577DA78A971D936C6F21E56227
          FDD1F3BFCF24C7876CD923E5AC0AC0657575754F845ED998A42ECF5E96C45676
          2D26B586BE3F732A2F1A1D2391008EEAAC29A0492B3332321EC5BC36E34CB6B2
          4F7E1EA9BD7A3795415AC4ECAF722A2E1A1DC391006EB91406809625B104404B
          007E14539FCE4C7E64F5AC5602EC6ADA7D8F7ED31D88E9A5A31C41C974820FE3
          0F000EFE6F72163E21151EE55C5C21406401C870268472A5F0BE01E5D661FEE5
          D676389135AC2B6DC0A13ACA1A969B12DDFEEC420164FE1A3D7C1E62DDCF88A3
          75FB3AA138949AC2004C06F463E47F325FAC58B1623F0312D08DDD51F67339D7
          5A487B1B15123972CE066B9547AE4A6504E512DD091307C264FDFD8E14042CA6
          AE66CD16B05C19555454544F9C38D128AB18C0F10778F1392CB559A6BF7E8734
          4BB7334AFC5B5DBAFD1946E334BA84BBDBD20D97DE056CB75940E93CCD7E1711
          BAA618802520A7A00558461CC73405C107EBEBEB6F5407F5053637199BAC85D3
          A74F5F01A56BCADB6D3D97C80140A75F045EFF32007304DB959696D66277F14D
          079663CF5D0256CAEA0AA6082FF83466F600FDEFA4DC6569FF0569435959D993
          4463413EC3860D9BA6F3F18CBE1D81406007ED8D326063B0AC495182DD871E3B
          0DC023468C68A542EEA07EDB57A70BC7DDD8DB2A2B2BDF56976B06E107BE225B
          21C9742EC4D785805C28B36305DBDCDC3C1C00BA91D276DA3699059C4E2E5932
          BA863BB14522E95FD6D8D8B84C42E060CC853358CB2CC937A33ED716EFE77BBD
          DE9B0834E64A301EA99D8AAF7B9132E557E1F16D3B2DE570838C55ECEFC13A75
          CB72A55DDF70949A9A6AE441C0F26B1E42FE3040E3E20C85BFAF7E64F161624F
          A1D43EF3DE371C8929A2FC14C0AEA3EF184D1DD7C3F70BCDB6DAD4EB24E3F7FB
          57E28466A2D4B5761DD51A9C2E0104A0EBE42F19D2C758CA0BB2D501701CE62D
          D73CE3E4930DF935BA4AC1A7A6A9A9A99858DC31203BEA05589C108ACE90EFB5
          4E3E572A13BD57D62B47477168C7E13147EEB49C2A04D82E066896F5AB7D4D4D
          4D624A4A4A545F2D6B6B6BCFA8AB62832E3AABB24E3EC63CEFE3717B7FFD8610
          89D4417D9E0CB85927313951997C45BC391A9E63C78EED86E71B58DE23727B1A
          F670CE9A7B11D0E21CD63B054DDF4D0868E551F7806E90025B40FFCDD6FAA2A2
          A285D182155217105371C8D711377823DE46207803A0C5FDFFD5CE738708B0F5
          C0A124664C7A587D9E0912A67D2B75A54EF945D02B3B3D3DBDEF3F0010F60251
          9504EE2FCA49C80DC1A1240E0A6077C9271B6B3DBEC44BDD4E37AE884C82578E
          2D3384EE6F6868C82512933B2CF9F614F943920302A8ECD34FE38D8BAC0E4A08
          B0B9C87DCBED5F92E5E71AADD193488C6C1191CE33EC8D8B065CF0C851FD7482
          50F198CF036A35BC8E846E3DCCF64F00EBEB07B04D6D6D6D91FF0008476C39D5
          6473090F170D1D3A74869C7729DF6CF73541FED922DB270781D6D6D697E87BD2
          1A410989371607256BD64D3356F2E57477B77CCC8B8A31119338B38D92F6EEDD
          EB9930614216EB3C5B5DF798E0CF20E82B041D3978F0E097127BCB3E0DD8B03C
          0B0A0AAEA6FD21D22FA2421581E4DF8E03070EEC3763FFFF002E425C3877EB99
          8F0000000049454E44AE426082}
        GroupIndex = 1
        IndexInGroup = 2
        Size = tcisLarge
        Style.BorderColor = 2930701
        Style.GradientBeginColor = 2930701
        Style.GradientEndColor = 2930701
        Text1.Align = oaTopLeft
        Text1.Alignment = taCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Custos e Forma'#231#227'o de Pre'#231'o'
        Text1.WordWrap = True
        Text2.Align = oaTopLeft
        Text2.AssignedValues = []
        Text2.IndentVert = 60
        Text2.Value = 
          'Indique no Markup do '#13#10'produto seus '#237'ndices de '#13#10'custos para for' +
          'mar o pre'#231'o.'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnActivateDetail = TileActivateDetail
      end
      object tiFormacaoPreco: TdxTileControlItem
        Tag = 6
        Glyph.Align = oaMiddleRight
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000003C0000003C08060000003AFCD9
          7200000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F760000093D494441
          54789CED9A0D6C95E515C76FDB7B7B0BBD6D6F6F292DA35262AB50B449816444
          8A4070938F1948342A7306E7D8B291109DB88C49B45D3F184E37373363D88774
          91211F62231BD3C11666874E9309740BE936290A94B5B6B5B4DCD2EF4BBBDFB9
          BCCFCDDBE77E56DA7B49734FF2E4F978CFF3F17F9F73CE73CEF3BED6B6B63687
          D3E99C6D9964343434F4D9D4A9533FD5DBAD2E976B515252D25F62B1A88924AB
          D5FA1CD956BFF618AC25A61407ECF178160D0F0FBB63B198EB259BCDF67A4242
          C2EDA178FC00F7F6F69E494F4FEF9CB8654D1C8D8C8CF487E3898BF464A73860
          9DFAFBFB6F4A4C4C4CD5DB77ECD8F1517979F9B0940706060A3016B689586028
          4A4E4EFECF58FB84056CB7DB6B007397DEBE79F3E674B26E63E263F0CC1AEBE4
          D74B15151549EAA5474A71919EEC14073CD9292C60DCCC97314887F5F6D6D6D6
          81ACAC2C6F190FA792943601EB0B4918AD118CD698FA84054CE8581BA87DDEBC
          79BE32C7D62B639A759C88CD18739FB8484F760A0BD8ED76BBAC566BB2DEEE70
          385A11A911295FB972251BB14E9A880586A2405738E1282CE0B4B4B403813CAD
          F6F6769FA7959A9AFA61DCD3BA41290E78B2531CB04E785035A477F476CDD3FA
          092963BC178721CC23BB85944B9298DC436A239D61BEB313E26971DCEC09D4AE
          795ABF18D3ACC1E74A181A1A5A41BE9EEA4A00DF1480AD807407C97DF5EAD585
          1C8D079A9B9B6BF3F2F2FA2299E386106901EAF1781E004039208B22E9039F1C
          8B6BC9D7CE9C39F33380FF9C724AB87E31073C303070334077B1D8659F770CFA
          4E235547C21B1670434343328E45A2DE9E9F9FEFBB036E6C6CB4DB6CB684B12D
          D362410CEF4A4E4EDEC36247E93FFA3940F636F95176EE14627E8117D3C31C76
          F87309686E379CA175E4596399332CE0A2A2A2B702795A1D1D1DE9182DAFA755
          5050F0D178785A00EC160388ABFA527A7AFA25C61471970F63962953A6283631
          5AFF22BDC6666C9A3B77EEC3F03D439AAD0D37475445B9BF8A622ED28A007AA4
          BFBF7F23C0FE07D851CFEAEAEAAC4B962C5945B187DDFDAB6AC7700E92ED6A69
          69D9979B9B2B22FDDD04794B16AF98AF43559EB5685F106F08C0B2AB9595955B
          83F9C52525250E80FE01BE33546FD59FCF9831A3976C0BBBF901F96EC07A831D
          F2EFD376929DDEAF78630E1810CFCBC2F4F3543EEA01F2118A77B2E38546F3CD
          06E846F2F7D8C1C3E875BDEA03B003B40D921F644C6FF446BEB3B7B7B74E4556
          3105CCA20F036AABF9E602F19C8A78EE426F1FD4F90D1002BE90F22A80553146
          3DFDB703FC0DD157C67B93FC699EEF30FA38511311EDAF4B3D124FEB75B2537A
          7B6767E7A0C9D3FA159933CC50F265E231A563F4E9E4CD6FD48D0A60F7CAD9AA
          AD410C988B7CD800E13B35289700FC018A6FA8B6AAAAAAE7CACACAE48CBEC368
          7A787070703B16FE4C249ED62F03B51716169A79B6871B0751BB8FB7FFB809C4
          8F38EEDA349E35F0AC35F17C88687FABA7A7E713A7D3D945D3D94B972E2DA4BC
          9839EFA7FE10E91C6DA35E9CD802FA6D414ADE97BA480612B089E296A889340B
          FC9A09889B636D677676B6CE738FB9CED97B5F4A4ACA058ABE73DA380A8F48EA
          EBEBFB217DECEA783413603F609EBF0176A9D1F410BEF7F7A202F8E4C993B6F9
          F3E77FC9D4540BD82B015833CD151C8E1E00071D17DDBC186A5E00BFAA0093E7
          6CDBB6AD242A808B8B8B6F6342DFBDB59CB9862AEB74C15C71381CAF72367F87
          E2E7FA05030939627258E4CA797124464BC46785DE8EDEB89428C1F33159A0C8
          C64B88D72874E8D7090C881F1FEDAFC1FBA4E9485963B7DBCF92D46F55367175
          0D87232C8904B0B64F1927D7186F6E243B9C046338BE48787C74FAF4E9730B16
          2CF06BC7B0FC13E3F304C59F99408B755F6D9467E3EA7601E27D393DDC6EF75E
          0CD8E530D39DB35C8BA78572A37E0EB3D03EC00E057B2EB1353BFD77C4AF8CEA
          57147045D445465790AFC8C8C8F8312FE8F9E3C78F3FBB6CD9324F9021CD06CD
          110BC7233990536F26C4FA04D93ACEE95C8CD63D12BC90D6EB7C121393AA962E
          5D5A4CD5CF5151F399CA8351072C3B86284EA3D81E8ED770077F73F9F2E583EC
          E67AA44374B28C31EE27AD368D299707BF137F3BC03039A672672446EB2DB24F
          F47642B821E56941FBE0738518265BA2175561D7E47EA82EDCDC01A80FE9A821
          AF41421EA3FCA27A4059C61F05F8FCF9F329B366CD2A3061698CC4D37A21507B
          7E7EBEAF0C18BF9F38CDC40E3909003A944BC898CB2D4100A3BF5F6C6F6F3F6D
          44404109BD7D1951FEA9C9584ED779F2F2F24ACD3FDB00F85454441A7114CB2A
          518DD7348B489255E87C802D452CFF8C3FDD84883E4EF94FC1C62C2D2D5DAC9D
          0C4D3A8FE17E7A89F93DDDDDDDC7A3A6C34C58CB0215E0DB00B41C40EFA8E738
          F77338960E1956F8569EC915CF09D26EF976A5F830643350897B795E691E9FF1
          E40CF7D5B113996969695F35B11C95232C6A80F17A6A5868B91231DE7E35E94E
          D317C896CCCCCC43007CD4746BB150925CF318F55B3064CDFAD8728100D8F7CC
          6D80FD8171B3E925E679859714BD7818AFA7597C5B8A1BA5CE624A11E16F53DC
          297597CB25EEE346DA76B2B0A72D01CE609D18AF9DF494FE07023EF87C5EC013
          26BE7F575757BF29970C7E8079337B6108EA185C278D0A8F00F482B8992CEE1F
          AACD28AB3378B511D316912F31FE967D97F431E5634D4D4D87CCB7A742E86916
          3EF87EB3B162779F54D7477E80615C39BE188393E82BBBF94776E46EF3558D90
          71067B8FA0AEAEAE0C231E6EA2CF978DBEA34E0A21D4621A60DF16D1576DBC98
          3D620F543DE6775A2C2E9B5DADC3E83C22D7338178D07F0F0B178BEDA7BF8A78
          69C51837B9CBF25DF2D1A781206793C95FB05899A8051DF8ED386288948AC520
          49418C0B6BA8158B4C38B84DAE6ACD8C3939393D162380D0A9B5B53595D85A6E
          379E322CBC9718AB8917B54ABF1CB012A635903F3AFE784293E105ED531E9861
          9937A0B70FB2D8FDE8DDEE8B172FBEABEBA850454545A23798B75AD74F9F3EFD
          1BFAD707FAFF17B02B19CBEF6C8E99480B10167EEF3390F1E540858376B20D88
          F7065E48BF88A5E55A88279E9704025F282B2B934F2D012F0DE13F8867F7CD60
          61634C75D8B09C15E8DFEFD9AD9700B1D8FCDCF81AB8C0482109A0E7C41ACB8F
          74800DCA1773A3258485966BE052ECC9DDE8B2DC2EAE515F0F421120C56991CB
          805FD7D7D7EF0915672BBA21002B62778E921D956083E36539E017519F63B916
          E2C91F00F2D1BB8374560201DCD16372AB29EA1FE8062510FD1F20BDD2E25DC9
          202E0000000049454E44AE426082}
        GroupIndex = 1
        IndexInGroup = 1
        Size = tcisLarge
        Style.BorderColor = 2930701
        Style.GradientBeginColor = 2930701
        Style.GradientEndColor = 2930701
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Tabelas de Pre'#231'o'
        Text2.Align = oaTopLeft
        Text2.AssignedValues = []
        Text2.IndentVert = 38
        Text2.Value = 
          'Adicione o produto a uma tabela '#13#10'de pre'#231'o com um '#13#10'desconto ou ' +
          'acr'#233'scimo especial.'#13#10'Que estar'#225' vinculado a um '#13#10'Cliente ou Tipo' +
          ' de Venda para '#13#10'ser usado na Venda.'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnActivateDetail = TileActivateDetail
      end
      object tiDadosAdicionais: TdxTileControlItem
        Tag = 2
        Glyph.Align = oaBottomCenter
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000003C0000003C08060000003AFCD9
          7200000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F7600000BC8494441
          54789CBD9B097055D519C75FC88304C8C2220494B285D1B259920A9692049C2A
          418586252CC52A2DC5BAA0D24259CB52C64A191669A16269B52D0343A1222A50
          69C6E2C043ED6227716A0B8AC1025A30A06C09594820FDFD5FEF8BF7DD775FDE
          BDEF5DFACDDCDCF3CEF9EE77FEFFB37C678DBFB1B1D1773DA5B6B6F60B2D5BB6
          1C989494D49BA72B511D78528DE41A9EF36038CD73ECCA952BEFB66EDDFAE3EB
          89C7EFB5C14B972E75484B4B2B82DCDDFCCC4F4D4DED12EB1B74836FC8FA207E
          8A6080F7AB9595957B3233332F7889CF13C22D5AB448AAAFAF2FE4FD507A7AFA
          3D106815AF2DBEBD91D714DE53323232EA20BEE7DAB56B9B6825FB7927DC1C13
          222CA20D0D0D13AF5EBDBA048003120563156CA6F02A4E4E4E2E268F329E1F41
          7C4F22C4E3260CD12100580FA8DBE3B5E146C82707E2AF90E71BB4A627205E16
          8F1DD784CBCBCB53B2B3B35790F92C4024C7D2A7499EE4F5579EC3848FF37C4A
          B8D6486E838D8E3C3D08F7E3194AB85B73F648CFF3FBFD7FC3CEEAB2B2B265B9
          B9B9F56EF0BB225C5757D70BB22FAAB49BD303CC5F78B6521325292929E526B0
          31F3C053DF0CA151E8DEC733C44E8778E15E9893937327A3C0441CE309A71C1C
          13A609E7B76AD5EA25D5885D3A0455D25B20B91ABDF7440EB24ECD3709DF1EE5
          A5673DB6FA437E1EE1A906C930216E3079BC0DB6B1E8BDE5C4BE23C2F49B229A
          F00EC3894408647751FBB355D2007662D291D04FFFC56B1AB69763772DF98FB5
          EA10D7096CFBC13891F7DE58366312C6D018BCF10B186E694D83E82778CCE964
          B40FB28E89B8156AF1435EE3C0321A2CBF024BD8D8CEEF54E25F247D1C585E6D
          CE56B384692A438D9AB523FB7A4D4DCD7D6DDAB4F9242E1671886AB0BABA3A87
          09CA3630DD614ED3D8AF8A01F31D726AD16C4425AC292125FB32865A5BD320BB
          391008CC183E7C78831BC0172E5CC804EC24BE1F64807C8742FB7DBB76ED2E3A
          B5A1022E2D2D2DC4613DCFF7F79BD3F8DD464317366F239FFFD87D6F4BF8E0C1
          83FE828202D56C676B1A60376848723BF8D30F0B01B1856027B3B726EE29D2EE
          A7704B9CDAD250446D4EA3099FC7D613E6343577BAD7F69D3B778E282E2EBE6A
          FDD696707E7EFE223E1C6A8D87EC9678C852E28301F8B2EFF34583593AF1A856
          F221FFB6539BC280CDEF41BABD4D4DE78D1F3F5EDEFD27D6EF2208330EF6C53B
          FED01A0F595A71607A3CD33A80ADF1D9930D498AA133DC8D5D61A1354EA73576
          8764D8B7FC5E0A979D78F70FCCF1118421FBB475F20FD9B3F4E9A96EFBACA4AA
          AAAA1336F31DA8E64B9795D65937F68549CE93665CA6212A142FCF2D2E04C798
          F5C308D33C46D06447598D4278663427104BA8B99B94BF03D5247435AD744558
          226C607F14EC2F84194C4A1A8DD71E86D77E33141746980C175B8D41B644EEDE
          2D0853A68E09B8D1B50A64770A2B360A2DF14B783555621361A6715FA2097CCD
          AC8C81464A682EF1F1E208963E5EF81F046F8DA19AF06E87B0529B2393C227ED
          23E136000EFFD48F26C2283E686363378AEF26024242735B4449EFF1456FDA8D
          E82C4C341F61A58E76132C0AC589BCC16D967E07091BE3EE241BA0EB504E1487
          260B7FA0966712FC99705992B5E898259D8433F235612EB2444F665C9EAD7139
          C8262F2F2FDFECE1245ABBE2D203B87E2F70683EFC6C6565E5EBD8FCAE79A6C5
          D0F1CBF4F4F4F73DC9C4175C6D05207D1CDB3D437184B3C68E1D3B8C60204818
          A734D2E6DB1D5EEC2199C52036C71C17CF12B23911666407C1F9E678BA949C59
          20D45E23C6493EFC134A9E82F97F09D85F03FB7C4B7481FEF869DBC913264C08
          DBC1A084AE9C3973E6ADAE5DBB7A0E864982C6DA5CE367E9F5D88706FB9FBB74
          E972C53281CA59BE7C790BFF9831637A699561F9E62864ABBD04C1B2AE2BA5BE
          91EE238712F2D68D38B3DDF4B947705AA7BDCA4BD8A934759F81A13838B65DB0
          60412F1C9ABF97CD3747BDCA5CC294F106F27983606F4B9288175108B7A273BB
          DB69650C118781E60830F4F65B770F0C39EE61C6CA68958E5AA2A593D68B3174
          15C16F7B98ED719B7CBAC869B5B726D01C2E39D96174221515156D59E07FC381
          EA14741FCBCACABAEC45BE5138B41761BB71A1D28B4C253453D5AC930DAF5443
          37E1999D2155367129226C37B3F0EC908D21A2CE85EE15AFF2F5D9736854648D
          3596A690E655AE252525C71809CE108CD82EB2C81974CB99FE79926F140E3522
          7CCE26A18327B9229ABFD6D6D6AE0340C4768B59E873EBECF6A012103B0E9FF9
          69461F332C5813FA7898B16FEFDEBDABA9E5DB084E88A2B24B3A5ED5AE21111C
          C4D5CFE4FD98CD8AE8662F7356CD31CB99C4C0FF303FB56AEA6B241DE17966E5
          CA95BF58B66C9937AB94CF2582035CCBFD9AE1E8448F26778329ADE7E5CB97B3
          DAB66D5BE155EE06A18D7A7402A9B83E7DFAD419695E6513146187574F739CF6
          E5B4A71DAA5A1D67DE1B4AD4A29939EE08823B3C45624888E8F512614F8A1C84
          C5F17FAE1BF60749BFD79C6ADCD1B82E840F1F3E1C9CD4F7EBD7CFCB61A8490C
          EC6102C7032A83206126EF7FC471ADB2E88C3B7DFAF4A35E2D22B452A10FCF20
          F8787676767FC5B170D0E9E006FAF0735EF56130B761A534CE1ADFD0D0B04F27
          9B41C2C65E90CE74BF1852209CC1344F5E754BA220B40485EC76825637AC7B21
          9B481B89CE642F8625308F1776731CDC0E43F6B0C27E53E416149F322BF27B2E
          35BF35D19D8FD1A347CFF6459235CB0474B413626D65AE44976C68ADF3ACF13A
          FC0B75E926C24C0E7E4D675F6A3EF4263CB0BEBE5E87D02FC50B42B5CB183C27
          961E79CD46776D22B52CACC26C8E836C6D4D4DCD6F197182BF9B08CB65EB5E06
          C1EF983FD099CF891327F6F5E8D1A3D6178714161666F3CA72A09A65E8C6B516
          07636AF7EEDDD7D8246D86EC99D08FB0190703F30ADAFA03E60370AD6331A4C3
          B525F100A1C01CEFD2B9D1B58A305AD7DC54207EB16E85F9764218615D2D40E9
          E704BF6FB1B790BEB13F3939F9805B205555551FB21E56EB88B544AC956EA8E9
          B9119D895158761BF9EB217BD21C1131A7BC78F1E2F2CCCCCCC9C615C0A0E83E
          1606B7D11786B8DD74D3829E529687FE560CD51DF12CFEB52908A96DD63B6354
          DC47E7CE9D7BB263C7F04B47118475FD80127B1882AF98672BBA098BE192CACA
          CA82F4F4F4CFDC80620C9CCF7C7D04C19E51544EA033CFED1E35583AA6A5A595
          18B7749B441BD38C2C0F41366223C376A1AF7320BE7986E063E6780CF7530634
          BDBBDD6CB8C9695013C328C467F9F9754BF26EC03D62762C4E441B8360D8274C
          36C93FD5CD22BBEFA2EE6C1C3972644EDFBE7D7331F855733CBFBF0CB800C3D8
          283737E0E80ABA165C44F3EE09C1E0510B05F00EB57ADCA98D9090770F30A866
          6FB1A6E9A6425959D9FCDCDC5CBB4FA313D63C97522CC2F09B180E5B6A694606
          D0BFD3F41F885692D1C42078DCCD376621CF7BB0B1D9B2BA0B8AF6A2C13CBEB9
          FB97CDEE5DD1643EA534EF228383E6C3298932A486F6AAE99F3F7F7E71870E1D
          2EC54BC289E8CA13F263F29C69B31212D97FD37AEE8AE55F626ED6C9AD43BA00
          D2AF599B10BFB555F278FBF6ED8B69A68B0E1D3AB4359E7B20CD49696969CB41
          83064D13599D02DAE968AE0CC642272388A3DD49487F84471C468DEF22D3026B
          BABC24CF6F0A0A0A9642FC6916E0BF73EBC9AD22A7C4EC6F6A4E4ECE6CE37AB1
          ADE84620D88A333232CE3BB1EB783B560428ED3B01A0CDB8D976CD4A27083C1B
          28983500D9A73B170C370728B0F7632D4034F1A749F6C72768F13E12DF31CAEE
          CA634834F2F05A1D080416BB6955AEF69F0D67F0031CC73E003E67EDD7213116
          209AC88FD51A14FD8B00D4FE95BCBA2E8887B686758827E7D3039DBED6655D34
          C1D607E8CF606C0F40D60D85F836DC755DB7A2A26240E7CE9D75063BC7E6F431
          4C48CFE4F515E3895B205AC9B3EAD4A9536BBB75EB16B19FEE44E23E6130A681
          4BABABAB37E22CE6127E1062E9F1DA6B4E20A97FE5D9846F58A39103B271DB4A
          F848C5B83E3C8779EB721D9A41FA9BFC1E66D7C7DD88D147F5FF4B5BCF9E3DBB
          5D050CD944E17A7786648CC39BF4308DBC89614C4E278FDF83796EB1BBC26F16
          5D09E3F51E8FFE814333B91215A6CA0DB25EC1F4FE3FD324C635C5E78D27B84B
          999D9DDD9DBE7FA3262CBA07A978ED46684F1C0774EAD8B1632743BB982209D9
          EB01CDF75FF08EF0DD3F10CB490000000049454E44AE426082}
        GroupIndex = 2
        IndexInGroup = 0
        Style.BorderColor = 2930701
        Style.GradientBeginColor = 2930701
        Style.GradientEndColor = 2930701
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Dados Adicionais'
        Text2.Align = oaTopLeft
        Text2.AssignedValues = []
        Text2.IndentVert = 30
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnActivateDetail = TileActivateDetail
      end
      object tiAnexos: TdxTileControlItem
        Tag = 8
        Glyph.Align = oaBottomCenter
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000001C0000003B080600000068A4EA
          1A00000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F76000004A9494441
          54789CED987B685B5518C04D7293344D9B60B3B6AB16FF90B1DAA03836C4F94F
          BAAADB1F15C64A41D7F9C20E9988CC07288E6A338BD541F0B1218A2F58158762
          37C7844E54C451119982F3555A371466839AB06ADBA48FBCEAEFB4F796B3DB7B
          73DBA4EB14FBC1C73DE7DCEFFB7EDF39DF39B7CD51A6A7A72FC927A3A3A31565
          6565DB6C365B23DD75682D5A86A6D011F4347A2A97CB1D1F1C1CFC2C180CA6F2
          C553CC5E8C8D8D050085CBCBCB77022B35F115E33568C8E170ECAEAFAF8F027E
          7E6060E02533B021309BCD6E01F616A0EA7CD9EA05FBCBD1E700EF4CA7D3DB9D
          4EE70F964032DC61B7DBBB719C7BC7B2A7797CC2F3043A809EA36FC7A60ADB6B
          686FA17D83040E2A8AF225893733F34F4D8118DC4480831A6C7AB6C06F4C4E4E
          3EE5F178A28C1B4DEC30BA37954A0599511736DB546819B18E66329946E05FCF
          03261289555EAFF71D0C9D2A6C9CD9B692E1316079975288CBE5EAE7D18C8FA8
          F9CBA80BF5E2DF33323272ADDFEFFFFB3C20B088563360591CB763FCA1254927
          CCEA4D7C93340FD966E50A9FCFF70CFDFBE7802C473DCB71A7E4B7AF1098047D
          97A437D27C501DBA17C68BACC2CF3340600F9089439DDDD96834DA555B5B5B28
          6F468687879FACA8A8B88DB8ABC59E80F108C3F729FDFDFD2EB6F1ED9A21C0FD
          C0268AA2218140608CA5DD0FEC597568C7D0D0D0C34A5D5DDD2606FD2A2C3B3E
          3EFE3667D034504F4F8FA3A9A9A952B42391482C1C0EE7CC6CD9DD07D9704F8B
          D543CB6B6A6A6E5658EF06C9E624B0B8913307793DDBBBBDA5A565B37016631D
          1D1D7F91E431EAD3E976BB7FD1FB949696FEC1FB933467CE28AC4651C30D92CD
          37463096A60DD8ABF2C74008FD4B79DCCD6668E6BC6DC5E68481FB171A10592F
          02ACD1DE90CD29FDE126D0F5ECD879301DD887CDFB9CB7B5DA799362FE24C55C
          238204A497BFEB8311E851E9CB93403B48E2B818435A19DEA39EB74A3EF477D1
          3FA0039E95BA9522904B1A983498C046C9F931EAF00A4BA80DB53316E4A97DCE
          AED33BF37E6EC78BAF8F001A7E2025F149CEA70DDEFF2AB5FD16B1CCFF1E1628
          56C92F39D03289C5022D6760250BA9E192CA722CE9B2038BAA61D1B2D81A2EC9
          A65956B928355C3916B2FC2736CD4A0DFF5DC042967FA586171E78A197F4E2FF
          4FB3ACB252C32597FFC7A629366BF93A72DE859E4DF70BB7E819F273FC737E33
          3E34DBCC1DE2076C5EFBA281E20229994C5EC66FC79CD985C47940FD942DC4D0
          D6EBF5FEB9D000CBFF3F0D4B1113F79EA2430DCE19D42081CEDCCB60B7AA0060
          89D68035A500B987A23F4EE763A7D3F9BD8183B8EBDCAA02DB78742F8646EC4D
          52F78CC28C7A69F49A959244C435A4060C91E06E821C3034D6C9D4D4D4952E97
          6B9734D46B59C3BEBEBEC3A150E8476057ABD0174862752C16EBAAAEAE4E9AF9
          6532990DC0DE93EEF1D2A954EA354B60434343269D4EDFA1284A9FB86343ED0C
          EFA9AAAADA4590A3E857E86F8C897B71F17E2DBA9995BB51B5D5649FDBED3EB3
          A05D4A6DBF23E35B08F2014102EA4C2B78B4A975CD2B24D4DDD9D9B9371C0E2F
          FC5888194E4C4CAC2B292989D0BD5597BD19288E3E81EFEBD47EE613B8A873E8
          F1788678B4B219DA99B5B8ED0DD1BF0A15C7CA8D8A9A46D16F017D148FC78F88
          3A039B8BF10FDE84B8939F88E59A0000000049454E44AE426082}
        GroupIndex = 2
        IndexInGroup = 1
        Style.BorderColor = 2930701
        Style.GradientBeginColor = 2930701
        Style.GradientEndColor = 2930701
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Anexos'
        Text2.Align = oaTopLeft
        Text2.AssignedValues = []
        Text2.IndentVert = 30
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnActivateDetail = TileActivateDetail
      end
      object tiAtividade: TdxTileControlItem
        Tag = 1
        Glyph.Align = oaBottomCenter
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D49484452000000380000003C0806000000331779
          0800000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F7600000819494441
          54789CED990B4C95551CC0795C5040B9C0C4A1201A10898F263EB6CAD2142C4D
          365330ADA666690FE74AE73448C52962642B1F2539D2D4E55C250A8AA9A96D09
          DAC352DB9CE693F980D8300C42AFBCE9F7BF7E1FBBF702F7427C1F761DFFEDDC
          73BE73CE3DFFF33BFFF3F89FEF33D4D7D7BBA852595919EEE9E999E8E21C527A
          FDFAF5A5BD7BF7AEB057C960F9E0EEEEDEDDD5D57596BEFD6ABB609433443D43
          4343075CBB766DA23D48437305FF73B954535333DD60301C0132CB1EA4B302BA
          787878FC5E5D5D1DEB08D26901455A02E9D480228E209D1E50C41EE4030128D2
          1CE4030328D214E40305286203B9C159010773D87FDE5C2170125D20843A2520
          DE561F22871E178370C429015B231D80CE2E1D80CE2E1D806CB5B94417DBA12F
          5AC8148E90AE96192D01DCE2E6E6B655B72E6928F4753451EB009D5D1C0262F2
          B58CCCFBEDD1190D24D036A325804622A32EDD6907E998A2CE2E1D806C306544
          77DBA12F5A48207B86BB65464B00E739D139788528CC32CF2E207FA82394EADA
          2B9DA55940C0B2ABABAB177B7A7A9EB32D3B75EA94476464A491E9E056545454
          16111151D9541BB5B5B5CF61FD895A76D881383E0701BB595757F7BABBBB7B36
          70E6BC5BB76EF9FAF9F925003496C721D1D1D17D044ECAC2C3C3C5CA05247F23
          3E505E5E9E69341ACD56A78DFD40C2E8B699FADD75456B46AC006B6A6A0A0943
          3B77EE7C5D9E4D265390979757A2BFBFFF2C3AE8A3D603A482D0893C571EAB88
          4289438927F9FAFAAEA76CF3DDBB7757797B7B1701B98F74346D66533EAC7DF1
          6C00553011ACF80A706BE8949FB2160F10BE61DA1E4B4B4BCB4F4E4E36F1ECB9
          62C50A9FC4C4C43E1E1E1E4F5177327F1D4B3C97FF4EA38D05623DD27F969494
          C4040404ECA7ECC9FB062872F4E851C3881123D2E9D86C7906623750494CD78B
          62B04E9D3AB92C5BB64CF2E5CB693DE93AE27C256CABAAAA8A043695BA32A537
          51ED89DCDCDC37468E1C595E5A5A1AC7F43D46FE80FB02B87CF972372CF3251D
          984AC76E136601FAB5BA166D24C3F6FF2232104493597BF1FCF70BDA7A9501F3
          CDCCCC9C9A909050C600C4330027C9EFA20F92B5587510B8550ADCDF74708CC1
          6038D9DC1FA9F78EBD86597BBBB07C3E6D1C126BC6C7C7AF267B810C406565E5
          20CAFD3562B0D429EB3CD832AF0110A018467C117095A4E3ECC1B554B0D46936
          AD3814FFC0E37CDA3D4CFA20D3FC4A5BDB6E4AA4EFB67966C073E7CE79464545
          A5CBAEC8C6F01E703F6AA594B67EA1CD450CDE7A42FAE5CB97A3E4DC643D1ABB
          76ED3A4A2B3D22B4EFDD48BFFCF4EDDBF765D822E5E3FEEEDDBBD7B156B4D4EB
          929292B281E93F131DD161616133C8CAC8CFCF37719E7E465E90A6CA6CC40C88
          92391203980A5CAD960A98A243162E5C58881557CABA44D75B64670C1E3CB81A
          7D99A4E76AA9CF560C2CF830D6C45094959C3F7F3EAB5FBF7E9A34CC7A1BCD94
          49022A8C8D654A5656D61E369A620007C951229B0DD00729D717908DE069257D
          08B8AAB63406902B3BE7780123F83368697979793B38036B64DA8BB340B519AC
          4B597B17F1704E74E9A2EF696160441F9504CA4FDCF3BCAC85D1EE4B67BB1D3F
          7EFC67E968538DC8F9B974E9D204AC96C4632D9659B572E5CA6C7102F84F433D
          45C70CC2407906EE2679B7780ED085CEE5DE1AEC2509F127E9D8544221239CA7
          56600A3D0460328775847C6F237CC7BA3A81E53F90629E73D840E69116277D31
          F90788C5C3695042FDE1B4D14BF9AE27126A012D15BB69C4F3363AACCE5701F4
          5100E78B0509F5CABABCAA00CAB43A70FBF6ED409CE767291F07C44716A3DE0D
          CBCD665072A92B3EAC9546A661303E6E9EABF5F46870DC01FF54233819AC6944
          8D002B94C2EF896E100A7272726ED81E15329D88B64B609DF507E898E4639DD7
          003ED39CD2D5AB571761E114DA17AB85C019ABEA14C185730F0C0C6CBC36FE83
          30CB1AE50960B124E8C0578CE626493B3A07013A5B5050D0138BB9F6E8D1C364
          AFAEE28C9BE7ABDC5014C062B59C9DF52A7921AD6469B11800FB43999AD1ADF9
          63484848AB5F44C91121B1AA9341F20A0E0EEED1DA765A230646350FCB49FA19
          3D152962D681CE5CD119141434C8F62D98D662484D4D3DC51AB981A208D6D3E3
          ACAD9FF450246F0A683B0AEB15656767FF2ACB00C8183D74598A41D6887C2223
          9DCC9A7A97F8793D14296D8B6C55DD4106F5053D74598AD917E50858CF2E390F
          8513D8F263E9CC112D95D0E628AC152F976893C9B4D6C7C7C77C3662D1815AEA
          694ACC805C5B4A5817CB005C4347B6DCB97367089D2876F4E796086D75E7FCDC
          AA5CC552D47619C4242DDA77240D175EAE34EB598B71F423860EEDE3BE36C6CF
          CFAFAC2D8DCBEB467F7FFF3DE225C9A770FCD28FC57593CB3580E3DBDE7DC7D2
          00286B91A93A9511969742C38C46632E1ECD04D5A3B1153A394976402CBEB3A9
          F28A8A8A5EC0655167087097B06482F8B20A74863E388DC5EA9D0CEBF02F5CAB
          185CAB83E28473A539CDB44AE412BCC9F69E08D836220F8215A0E278CF64603E
          14BF10B8F3C08E114F486E1B0C4C06F956DF0FF494466FC5BCBCBC0A19E5E18C
          F2463AF2226123DEC67C40D3B1E82E2957AA0A5CC3EB36F139818A679ACFE13F
          8F481E703BCBCACA66AB531D38F161A7B407982A4D7E9B080808F887E8253AB4
          83514FA353FD09EBB0AC7CAF97F79F675DEE010A440E51146561AA434DDE6579
          0FC33ACB024E7DD7FA09C56FB617982A76BF2EC96B77A6DCFE254B968C03743A
          59B174329C38DCA25A9CFCC87744C261C0B6737BDFA74E692CDB1338D945C7E8
          4661471C7E1F549CE56F25C8FA4A4A4A7A18F048F5DE2517562C9DBF77EFDE0B
          02255726D559576EF88FC92B7F09BA923421E82CFC17D766CC0FA79D06990000
          000049454E44AE426082}
        GroupIndex = 2
        IndexInGroup = 2
        Size = tcisLarge
        Style.BorderColor = 2930701
        Style.GradientBeginColor = 2930701
        Style.GradientEndColor = 2930701
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Hist'#243'rico de Atividade'
        Text2.Align = oaTopLeft
        Text2.AssignedValues = []
        Text2.IndentVert = 30
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnActivateDetail = TileActivateDetail
      end
      object tiSubUnidade: TdxTileControlItem
        Glyph.Align = oaMiddleRight
        Glyph.Image.SourceDPI = 96
        Glyph.Image.Data = {
          89504E470D0A1A0A0000000D494844520000003C0000002F0806000000BFBEA9
          4700000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F760000063B494441
          54789CE59A4D685C5514C733C924994C32F9987C5493203549A1A0D02828BA10
          932AA98352631B70E1C2D10637A2D695058349A80B45C5115DA8159D2EDC2598
          160C14A4B5B58208816A56BA6990444493686612F29DF83BE39D306F72DF9B37
          F366DE083DF072DFBBF7BE7BCEFF9D8F7BEE99787777774B6E25F2AAD60CB547
          D36739970F38E1F1789E34BCB0BB3B4ADF88EEA59D9D9DD3A5A5A5EFA7CDBFC0
          FC7E53A91D9037F314E784F0C39B9B9B13E5E5E537DCE06745AE004E30F27AA3
          34DD6EF13395C32D4668F908A63A6266DA6E916B8085FE0FA6ED2AE0044307A6
          BDB1B17198F74FF0E1EEE6B1966B1EAB995A5F5F1FAFAAAAFADD16FF5C183BA1
          5C4C7B7979B9C9EFF70F6219F7F158CF752FEFD7ABF59EF5F97CEFB1E617F178
          FC4C6D6DEDDF566BB90E58484C1BAD442B2B2B67ECCCAFA9A999A7792BF93C3A
          3A5A3A34347494EDEC0C6B3DC2554EF70B8140E089ADADADE358C194D95A4501
          2C54515111A5E9C9E5DDE1E1E11D9A6FE4DADEDE3E09F04F011DE46A2D2B2BBB
          4C9C78086BF859F76ED10023DCC39274385D0780E3F8F63400AFB2E66D5CB568
          786C7676F6487B7BFB6AFA7C5700E35F3F89EFA6F74B86C5D879A7EB632DBF62
          CA4F03FE5BCF7F74A8B5B57590A10FE1E121061C2006FC2173DDD2F00CDA8CA6
          A790421274F2C100AD5EE3E34D72FBB85AF725B4FC19261FE563BC4997AB8045
          9B1104EA1753CEE7BAABABABEDD2B22DCDB2FE38EB27011F6A6B6BFB91DB3ACC
          7D3A39DF551FC6D7C244E69BF95C736E6EEEAFCECECE49C0DE01C899D431D9AF
          E9FF24B52F01589D4E0C271C21CCA11FBF984879EEE1791F53DE9780915138D9
          8630ED5775A69D2B757575AD2F2E2E3ED5D0D07005191E4D1F87DF64AACC490D
          4BAAB70F3013BF62BFBC53045D5A5AAA67531F31E16B3B552C84690783C1D8CA
          CA4A88C0745D4C39D90F1FF918979B9B9BF7E62600636A92040CEB161313140D
          D6D5D5990A485088E227B6052C8469575757FF89728E11B1BF07F4EDAAFB1A60
          9753E725008B06CDCC5AC84A1BF25EB687814298B65AF72649C763446C71B17A
          89DAE9AEB617B4548521EB7A0FDA3A0DA3AC852B54D4960C4BD24BDCF112ED24
          1A378C1BA2B4F82B13267449828E92FE9DAB7085306D2134FC1D60FB2421D937
          96FAA084EF56A719AD4F0B31FE412C161BC1AFFF712258A14C5B08D0D7B5FDBA
          4E75741BC11FBA318D9E643F406FA8F4AD04B05A46BAE29BD59625A64D13B13B
          DF2959261E2A1815BDF0964F2ADA69A958640998CDBC45F637B78471834C0193
          94B792903FC3ED3BD92CA82BC4AB7ED91B7B32BC1B61CE2B26C3E2D88E7E2621
          26DD630AD8E7F3C9D1EA6D828A131E7B24FB2DDBD841AB6DCC026CDE480B581D
          1242EC93A708EF7963C6BE28150E6D9583ED299CAF8F6B455A34304E1CCA31B1
          ED7C32531AD40266CC71B9C70E99A9EF01F983460ED0E43568294D4653FB64BF
          670BB495DD392533C02DF207B3963AF0B4C99C9C4869326A10C2EBB5A55D093A
          E97DBC1BD1E5E37CD8E7704D430E21798519E055259C44DBCFED086397244F57
          1A4D0823E76CB2365B752DDDA90CB7D3A6B7025637DF0CF02F5C6D5C21754048
          24F863636365BDBDBDFEC6C6C6B81D01CD08AD844B942F070281B093B5B2E6AD
          EBE4AB5D421347A5A28F1FBF4BD749E9EFE8E8280D068392E80F3A619A1ABCB8
          0F3B592B5BD20246AB5FB20F9F45980AAE137C80B3F8F31B0C6DE11BA730978B
          3C5F74C2588AF0EA306208566635EC7C91163019D61C8C3FE6F6657946802140
          DECF19F335D9AA88B2E7483B7FB09B76CA71323DA910CD72E90E2652347417B0
          D0FCFCFCEB4D4D4D7D08755809D84710E853C32D7EBFFF5C89A6F0A72300CFD0
          184A484A8BFBB4CB4795DF8F4DCFE24EC914B014BFD6D6D68E11B0A42E7457FA
          387DC731CBE7D1B6AD282EBF3C60BE961F08C0513B6B3921CBBC113FFE6D6161
          E14115A8C4040D45699E23F8FB153B659AD4FAB619C5E3F128967330D33C2794
          3151962D08FFFD1A4D0EF0682873003840143FCF76D53B303090310DD5F972CA
          D8052919B147DB163E17B2042CBFBCE1532FAADC7A0AA162B4B2D14B1BE37949
          DA5028D458622305E53012C11AB48095C9678F204BB2048C1072FEFC485DFB28
          597B225ADB62A6EADF5775A9A01D93CF07B95EE2E12346006700ACFE53CF15FE
          AE03D66952FDD4E30AFF6215F10CEA740BACD02D57B5FC171C868215C951B7D4
          0000000049454E44AE426082}
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Style.BorderColor = 2930701
        Style.GradientBeginColor = 2930701
        Style.GradientEndColor = 2930701
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -19
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'SubUnidade'
        Text2.Align = oaTopLeft
        Text2.AssignedValues = []
        Text2.IndentVert = 38
        Text2.Value = 
          'Cadastre a SubUnidade de '#13#10'convers'#227'o padr'#227'o para'#13#10'este produto.'#13 +
          #10'Para compra e venda do mesmo.'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnActivateDetail = TileActivateDetail
      end
    end
    object edtCentroCustoÎCentro_Custo: TcxDBButtonEdit [36]
      Left = 379
      Top = 60
      AutoSize = False
      DataBinding.DataField = 'CODCENTRO_CUSTO'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Height = 21
      Width = 80
    end
    object edtCentroCustoÎCentro_CustoÎDESCRICAO: TcxLabel [37]
      Left = 460
      Top = 59
      AutoSize = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      Transparent = True
      Height = 22
      Width = 20
    end
    inherited PnlFrameHistorico: TPanel [38]
      TabOrder = 41
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      CaptionOptions.Visible = False
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      Parent = MainLayoutGroup7
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      LayoutLookAndFeel = nil
      ItemIndex = 5
      Index = 0
    end
    inherited GrupoMain: TdxLayoutGroup
      CaptionOptions.Visible = False
      ItemIndex = 1
    end
    inherited LiedtCodigo: TdxLayoutItem
      ControlOptions.OriginalWidth = 78
    end
    inherited SeparadorGrupoMenu: TdxLayoutSeparatorItem
      SizeOptions.AssignedValues = []
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignHorz = ahClient
      ControlOptions.OriginalWidth = 47
    end
    inherited LiBtnMostrarLogAtividades: TdxLayoutItem
      AlignHorz = ahRight
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited LiPnlFrameLogAtividades: TdxLayoutItem
      CaptionOptions.Text = 'Log de Altera'#231#245'es'
      Control = nil
      ControlOptions.OriginalHeight = 377
      ControlOptions.OriginalWidth = 483
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = MainLayoutTab
      Index = 0
    end
    inherited LicbxAtivo: TdxLayoutItem
      ControlOptions.OriginalWidth = 49
    end
    object MainLayoutGroup8: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup7: TdxLayoutGroup
      Parent = MainLayoutGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object licbxCodProduto_Tipo: TdxLayoutItem
      Parent = dxLayoutGroup24
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = cbxCodProduto_Tipo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtCodFabrica: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'C'#243'd. F'#225'brica '
      CaptionOptions.Layout = clTop
      Control = edtCodFabrica
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoTopEstoque: TdxLayoutGroup
      Parent = dxLayoutGroup24
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liedtEstoque: TdxLayoutItem
      Parent = GrupoTopEstoque
      AlignVert = avBottom
      CaptionOptions.Text = 'Quant. Estoque'
      CaptionOptions.Layout = clTop
      Control = edtEstoque
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object libtnAdicionarEstoque: TdxLayoutItem
      Parent = GrupoTopEstoque
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnAdicionarEstoque
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 31
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup24
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object liedtDT_Cadastro: TdxLayoutItem
      Parent = dxLayoutGroup24
      CaptionOptions.Text = 'Cadastro'
      CaptionOptions.Layout = clTop
      Control = edtDT_Cadastro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liimgProduto: TdxLayoutItem
      Parent = MainLayoutGroup8
      AlignHorz = ahRight
      AlignVert = avClient
      Control = imgProduto
      ControlOptions.OriginalHeight = 68
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiMenu: TdxLayoutItem
      Offsets.Top = 15
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = BtnMenu
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object libtnGerarCodigoBarras: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnGerarCodigoBarras
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object TabDadosAdicionais: TdxLayoutItem
      Parent = MainLayoutTab
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
      CaptionOptions.Text = 'Dados Adicionais / Obs'
      CaptionOptions.Visible = False
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 315
      ControlOptions.OriginalWidth = 457
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object TabTabelaPreco: TdxLayoutItem
      Parent = LiValores
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tabela de Pre'#231'os'
      CaptionOptions.Visible = False
      Control = PnlTabTabelaPrecos
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 315
      ControlOptions.OriginalWidth = 522
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object licbxUnidade: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Unidade'
      CaptionOptions.Layout = clTop
      Control = cbxUnidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtCodigoEan: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignVert = avBottom
      CaptionOptions.Text = 'C'#243'digo EAN'
      CaptionOptions.Layout = clTop
      Control = edtCodigoEan
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object TabProducao: TdxLayoutItem
      CaptionOptions.Text = 'Produ'#231#227'o'
      CaptionOptions.Visible = False
      Control = PnlCentroTrabalho
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 336
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object LiPnlTabComposicao: TdxLayoutItem
      Parent = TabComposicao
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
      CaptionOptions.Text = 'Lista de Materiais'
      CaptionOptions.Visible = False
      Control = PnlTabComposicao
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 280
      ControlOptions.OriginalWidth = 439
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup24: TdxLayoutGroup
      Parent = dxLayoutGroup28
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object TabFormacaoPreco: TdxLayoutGroup
      CaptionOptions.Text = 'Custos e Tabelas de Pre'#231'os'
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
      ItemIndex = 1
      Index = -1
    end
    object liedtCategoriaÎProduto_Categoria: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Categoria'
      CaptionOptions.Layout = clTop
      Control = edtCategoriaÎProduto_Categoria
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lilblCategoriaÎProduto_CategoriaÎDESCRICAO: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel6'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lblCategoriaÎProduto_CategoriaÎDESCRICAO
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LiValores: TdxLayoutGroup
      Parent = TabFormacaoPreco
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco2
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = LiValoresTabChanged
      Index = 1
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup25
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup25: TdxLayoutGroup
      Parent = dxLayoutGroup28
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ItemIndex = 6
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup28: TdxLayoutGroup
      Parent = MainLayoutGroup7
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object liedtValor: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Hint = 'Valor de Varejo'
      CaptionOptions.Text = 'R$ Valor'
      CaptionOptions.Layout = clTop
      Control = edtValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtMargem: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Margem %'
      CaptionOptions.Layout = clTop
      Control = edtMargem
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object TabComposicao: TdxLayoutGroup
      Parent = MainLayoutTab
      CaptionOptions.Text = 'Composi'#231#227'o'
      UseIndent = False
      Index = 1
    end
    object TabCustos: TdxLayoutItem
      Parent = LiValores
      AlignVert = avClient
      CaptionOptions.Text = 'Custos'
      CaptionOptions.Visible = False
      Control = PnlFrameCustos
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 321
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiEdtTotal: TdxLayoutItem
      Parent = LiQuantidadeTotal
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'R$ Total'
      CaptionOptions.Layout = clTop
      Control = EdtTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiEdtQuantTotal: TdxLayoutItem
      Parent = LiQuantidadeTotal
      CaptionOptions.Text = 'Quant'
      CaptionOptions.Layout = clTop
      Control = EdtQuantTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiQuantidadeTotal: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object liedtCusto: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'R$ Custo'
      CaptionOptions.Layout = clTop
      Control = edtCusto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtValor_Compra: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      Visible = False
      CaptionOptions.Hint = 'Valor da '#218'ltima Compra'
      CaptionOptions.Text = 'R$ Valor Compra'
      CaptionOptions.Layout = clTop
      Control = edtValor_Compra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object libtnVisualizaEstoque: TdxLayoutItem
      Parent = GrupoTopEstoque
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnVisualizaEstoque
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 29
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiMenuValores: TdxLayoutGroup
      Parent = TabFormacaoPreco
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object libtnTabelaDePrecos: TdxLayoutItem
      Parent = LiMenuValores
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnTabelaDePrecos
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object libtnPrecoEspecial: TdxLayoutItem
      Parent = LiMenuValores
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = btnPrecoEspecial
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object libtnCustos: TdxLayoutItem
      Parent = LiMenuValores
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnCustos
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object TabEstoque: TdxLayoutGroup
      Parent = MainLayoutTab
      CaptionOptions.Text = 'Estoque'
      Index = 3
    end
    object MainLayoutTab: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = -1
    end
    object TabPrecoEspecial: TdxLayoutItem
      Parent = LiValores
      AlignVert = avClient
      CaptionOptions.Text = 'Preco Especial'
      CaptionOptions.Visible = False
      Control = PnlTabelaPreco
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 261
      ControlOptions.OriginalWidth = 850
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object TabCentroCusto: TdxLayoutItem
      Parent = LiValores
      AlignVert = avClient
      CaptionOptions.Text = 'Centro de Custos'
      CaptionOptions.Visible = False
      Control = pnlCentroCusto
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 278
      ControlOptions.OriginalWidth = 849
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lIchkPode_Alterar_Estoque: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkPode_Alterar_Estoque
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = GrupoMain
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Top = 5
      Padding.AssignedValues = [lpavTop]
      CaptionOptions.Text = 'dxTileControl2'
      CaptionOptions.Visible = False
      Control = tcTabs
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignHorz = ahLeft
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Text = 'Centro de Custo'
      CaptionOptions.Layout = clTop
      Control = edtCentroCustoÎCentro_Custo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignHorz = ahClient
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtCentroCustoÎCentro_CustoÎDESCRICAO
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 6
    end
  end
  object PnlTabImagens: TPanel [10]
    Left = 776
    Top = 123
    Width = 143
    Height = 57
    BevelOuter = bvNone
    Color = 16505534
    ParentBackground = False
    TabOrder = 9
    Visible = False
  end
  inherited PnlHistorico_Seguidor: TPanel [11]
    Left = 776
    Top = 252
    Width = 142
    Height = 53
    ExplicitLeft = 776
    ExplicitTop = 252
    ExplicitWidth = 142
    ExplicitHeight = 53
  end
  inherited dxStatusBar1: TdxStatusBar
    Visible = False
  end
  object pnlEstoque: TPanel [13]
    Left = 776
    Top = 187
    Width = 142
    Height = 60
    BevelOuter = bvNone
    Color = 16505534
    ParentBackground = False
    TabOrder = 12
    Visible = False
  end
  inherited pnlMenuCadastro: TPanel
    inherited tcCadastro: TdxTileControl
      Enabled = False
      ExplicitLeft = 6
      ExplicitTop = 277
    end
    inherited tcCadastroAcoes: TdxTileControl
      inherited BtnAtivar: TdxTileControlItem
        Visible = False
        Left = 10000
        Top = 10000
      end
      inherited BtnDesativar: TdxTileControlItem
        Visible = False
        Left = 10000
        Top = 10000
      end
    end
  end
  object PnlLocalEstoque: TPanel [15]
    Left = 206
    Top = 157
    Width = 256
    Height = 183
    Caption = 'Altera'#231#227'o de Estoque'
    ParentBackground = False
    TabOrder = 7
    Visible = False
    object dxLayoutControl13: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 254
      Height = 181
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object EdtLocalEstoqueQuant: TcxCurrencyEdit
        Left = 114
        Top = 19
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        EditValue = 0.000000000000000000
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = '0.00;0.00'
        Style.HotTrack = False
        TabOrder = 1
        Height = 21
        Width = 57
      end
      object ComboLocaisEstoque: TcxComboBox
        Left = 5
        Top = 55
        Properties.DropDownListStyle = lsFixedList
        Style.HotTrack = False
        TabOrder = 3
        Width = 244
      end
      object BtnLocalEstoqueCancelar: TcxButton
        Left = 162
        Top = 154
        Width = 87
        Height = 22
        Caption = 'Canc&elar'
        ModalResult = 2
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BtnLocalEstoqueConfirmar: TcxButton
        Left = 74
        Top = 154
        Width = 87
        Height = 22
        Caption = '&Confirmar'
        ModalResult = 1
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cxLabel1: TcxLabel
        Left = 5
        Top = 19
        AutoSize = False
        Caption = 'Adicionar ao Estoque:'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 21
        Width = 108
        AnchorY = 30
      end
      object LblLoteÎProduto_LoteÎREFERENCIA: TcxLabel
        Left = 90
        Top = 77
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        Height = 22
        Width = 159
      end
      object EdtLoteÎProduto_Lote: TcxButtonEdit
        Left = 27
        Top = 77
        Hint = 'F2 - Consulta / Cadastro'
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 113
        Style.HotTrack = False
        TabOrder = 6
        Height = 21
        Width = 62
      end
      object CbEntradaSaida: TcxComboBox
        Left = 172
        Top = 19
        Properties.Items.Strings = (
          'E'
          'S')
        Style.HotTrack = False
        TabOrder = 2
        Text = 'E'
        Width = 47
      end
      object edtObservacaoEstoque: TcxTextEdit
        Left = 5
        Top = 114
        Style.HotTrack = False
        TabOrder = 8
        Width = 236
      end
      object dxLayoutControl13Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Offsets.Bottom = 5
        Offsets.Left = 5
        Offsets.Right = 5
        Offsets.Top = 5
        Hidden = True
        ItemIndex = 5
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl13Item1: TdxLayoutItem
        Parent = dxLayoutControl13Group2
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Quantidade'
        CaptionOptions.Layout = clTop
        Control = EdtLocalEstoqueQuant
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 57
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl13Item2: TdxLayoutItem
        Parent = dxLayoutControl13Group_Root
        CaptionOptions.Text = 'Local do Estoque'
        CaptionOptions.Layout = clTop
        Control = ComboLocaisEstoque
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 215
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl13Item3: TdxLayoutItem
        Parent = dxLayoutControl13Group1
        CaptionOptions.Visible = False
        Control = BtnLocalEstoqueCancelar
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 87
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl13Item4: TdxLayoutItem
        Parent = dxLayoutControl13Group1
        CaptionOptions.Visible = False
        Control = BtnLocalEstoqueConfirmar
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 87
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl13Group1: TdxLayoutGroup
        Parent = dxLayoutControl13Group_Root
        AlignHorz = ahRight
        AlignVert = avBottom
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object dxLayoutControl13Item5: TdxLayoutItem
        Parent = dxLayoutControl13Group2
        AlignVert = avBottom
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = cxLabel1
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 108
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl13Group2: TdxLayoutGroup
        Parent = dxLayoutControl13Group_Root
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl13SeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutControl13Group_Root
        AlignVert = avBottom
        Offsets.Bottom = 5
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        CaptionOptions.Text = 'Separator'
        Index = 2
      end
      object dxLayoutItem35: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = LblLoteÎProduto_LoteÎREFERENCIA
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 7
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl13Group_Root
        LayoutDirection = ldHorizontal
        Index = 4
      end
      object dxLayoutItem36: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        CaptionOptions.Text = 'Lote'
        Control = EdtLoteÎProduto_Lote
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 62
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem34: TdxLayoutItem
        Parent = dxLayoutControl13Group2
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'Ent/Saida'
        CaptionOptions.Layout = clTop
        Control = CbEntradaSaida
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 47
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutControl13Group_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Observa'#231#227'o'
        CaptionOptions.Layout = clTop
        Control = edtObservacaoEstoque
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 236
        ControlOptions.ShowBorder = False
        Index = 5
      end
    end
  end
  object PnlTabImpostos: TPanel [16]
    Left = 0
    Top = 132
    Width = 547
    Height = 268
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 10
    Visible = False
    object dxLayoutControl7: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 547
      Height = 268
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object edtGrupoÎProduto_Grupo: TcxDBButtonEdit
        Left = 10
        Top = 112
        Hint = 'F2 - Consulta / Cadastro'
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'CODPRODUTO_GRUPO'
        DataBinding.DataSource = DS
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 113
        Style.HotTrack = False
        TabOrder = 4
        Height = 20
        Width = 119
      end
      object lblGrupoÎProduto_GrupoÎDESCRICAO: TcxLabel
        Left = 135
        Top = 110
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        Height = 22
        Width = 448
      end
      object edtNCMÎNF_NCM: TcxDBButtonEdit
        Left = 10
        Top = 62
        Hint = 'F2 - Consulta / Cadastro'
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'CODNF_NCM'
        DataBinding.DataSource = DS
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 113
        Properties.MaxLength = 8
        Properties.OnEditValueChanged = edtNCMÎNF_NCMPropertiesEditValueChanged
        Style.HotTrack = False
        TabOrder = 1
        Height = 21
        Width = 119
      end
      object edtNCMÎNF_NCMÎDescricao: TcxLabel
        Left = 135
        Top = 62
        AutoSize = False
        ParentColor = False
        ParentFont = False
        Style.HotTrack = False
        Height = 23
        Width = 297
      end
      object edtEx_Tipi: TcxDBTextEdit
        Left = 134
        Top = 210
        Hint = 'Classe do Enquadramento (Cigarros e Bebidas)'
        AutoSize = False
        DataBinding.DataField = 'EX_TIPI'
        DataBinding.DataSource = DS
        ParentFont = False
        Style.HotTrack = False
        TabOrder = 8
        Height = 21
        Width = 92
      end
      object cbxIAT: TcxDBComboBox
        Left = 22
        Top = 210
        Hint = 'Indicador de Arredondamento ou Truncamento (IAT)'
        DataBinding.DataField = 'IAT'
        DataBinding.DataSource = DS
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'A'
          'T')
        Properties.Nullstring = 'A'
        ShowHint = True
        Style.HotTrack = False
        TabOrder = 9
        OnKeyDown = cbxIATKeyDown
        Width = 50
      end
      object cbxIPPT: TcxDBComboBox
        Left = 78
        Top = 210
        Hint = 'Indicador de Produ'#231#227'o Pr'#243'pria ou de Terceiro (IPPT)'
        AutoSize = False
        DataBinding.DataField = 'IPPT'
        DataBinding.DataSource = DS
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'P'
          'T')
        Properties.Nullstring = 'T'
        ShowHint = True
        Style.HotTrack = False
        TabOrder = 10
        OnKeyDown = cbxIPPTKeyDown
        Height = 21
        Width = 50
      end
      object edtDescricao_NFe: TcxDBTextEdit
        Left = 10
        Top = 153
        Hint = 
          'Informe aqui uma descri'#231#227'o alternativa do produto para substitui' +
          'r a descri'#231#227'o original do produto na emiss'#227'o de Nota Fiscal'
        AutoSize = False
        DataBinding.DataField = 'DESCRICAO_NFE'
        DataBinding.DataSource = DS
        ParentShowHint = False
        Properties.CharCase = ecUpperCase
        ShowHint = True
        Style.HotTrack = False
        TabOrder = 6
        Height = 21
        Width = 441
      end
      object cxLabel3: TcxLabel
        Left = 10
        Top = 12
        Caption = 'Dados da Nota Fiscal'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = 7697781
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextColor = 11711154
        Style.IsFontAssigned = True
        Transparent = True
      end
      object EdtCalc_Qpeso_Bruto: TcxDBCurrencyEdit
        Left = 247
        Top = 217
        AutoSize = False
        DataBinding.DataField = 'CALC_QPESO_BRUTO'
        DataBinding.DataSource = DS
        ParentFont = False
        ParentShowHint = False
        Properties.OnValidate = EdtCalc_Qpeso_BrutoPropertiesValidate
        ShowHint = True
        Style.HotTrack = False
        TabOrder = 11
        Height = 21
        Width = 121
      end
      object edtCalc_Qpeso_Liquido: TcxDBCurrencyEdit
        Left = 374
        Top = 217
        AutoSize = False
        DataBinding.DataField = 'CALC_QPESO_LIQUIDO'
        DataBinding.DataSource = DS
        ParentFont = False
        ParentShowHint = False
        Properties.OnValidate = edtCalc_Qpeso_LiquidoPropertiesValidate
        ShowHint = True
        Style.HotTrack = False
        TabOrder = 12
        Height = 21
        Width = 107
      end
      object edtOrigem_Mercadoria: TcxDBLookupComboBox
        Left = 457
        Top = 153
        DataBinding.DataField = 'ORIGEM_MERCADORIA'
        DataBinding.DataSource = DS
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 15
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'CODIGO'
          end
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.GridLines = glVertical
        Properties.ListOptions.ShowHeader = False
        Style.HotTrack = False
        TabOrder = 7
        Width = 126
      end
      object cbxNF_CEST: TcxDBLookupComboBox
        Left = 438
        Top = 62
        AutoSize = False
        DataBinding.DataField = 'CODNF_CEST'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.DropDownHeight = 100
        Properties.DropDownListStyle = lsEditList
        Properties.DropDownWidth = 150
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'CODIGO'
          end>
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TextStyle = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Height = 23
        Width = 145
      end
      object GroupTributos: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = dxLayoutSkinLookAndFeelBranco
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object liedtGrupoÎProduto_Grupo: TdxLayoutItem
        Parent = dxLayoutGroup14
        AlignVert = avTop
        CaptionOptions.Text = 'C'#243'd. Grupo imposto'
        CaptionOptions.Layout = clTop
        Control = edtGrupoÎProduto_Grupo
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 119
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lilblGrupoÎProduto_GrupoÎDESCRICAO: TdxLayoutItem
        Parent = dxLayoutGroup14
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = lblGrupoÎProduto_GrupoÎDESCRICAO
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 91
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object MainLayoutGroup13: TdxLayoutGroup
        Parent = GrupoPAF
        AlignHorz = ahRight
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object liedtNCMÎNF_NCM: TdxLayoutItem
        Parent = dxLayoutGroup11
        CaptionOptions.Text = 'C'#243'digo do NCM / TIPI'
        CaptionOptions.Layout = clTop
        Control = edtNCMÎNF_NCM
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 119
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lilblNF_NCMDescricao: TdxLayoutItem
        Parent = dxLayoutGroup11
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = edtNCMÎNF_NCMÎDescricao
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 352
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liedtEx_Tipi: TdxLayoutItem
        Parent = MainLayoutGroup13
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'EX TIPI'
        CaptionOptions.Layout = clTop
        Control = edtEx_Tipi
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 92
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object GrupoPAF: TdxLayoutGroup
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Cupom Fical - PAF-ECF'
        Offsets.Right = 3
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        Padding.Bottom = -5
        Padding.Top = -3
        Padding.AssignedValues = [lpavBottom, lpavTop]
        Index = 0
      end
      object licbxIAT: TdxLayoutItem
        Parent = GrupoPAF
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'IAT'
        CaptionOptions.Layout = clTop
        Control = cbxIAT
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 50
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object licbxIPPT: TdxLayoutItem
        Parent = GrupoPAF
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'IPPT'
        CaptionOptions.Layout = clTop
        Control = cbxIPPT
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 50
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object LiPnlImpostos: TdxLayoutGroup
        Parent = GroupTributos
        CaptionOptions.Text = 'Nota Fiscal'
        ItemIndex = 2
        ShowBorder = False
        UseIndent = False
        Index = 0
      end
      object liedtDescricao_NFe: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Descri'#231#227'o Alternativa para Nota Fiscal'
        CaptionOptions.Layout = clTop
        Control = edtDescricao_NFe
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 441
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        Parent = LiPnlImpostos
        CaptionOptions.Text = 'Separator'
        Index = 1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = LiPnlImpostos
        AlignHorz = ahLeft
        CaptionOptions.Text = 'cxLabel3'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = cxLabel3
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 173
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup7: TdxLayoutGroup
        Parent = LiPnlImpostos
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ShowBorder = False
        Index = 2
      end
      object dxLayoutGroup11: TdxLayoutGroup
        Parent = dxLayoutGroup7
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ItemIndex = 2
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup14: TdxLayoutGroup
        Parent = dxLayoutGroup7
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object liEdtCalc_Qpeso_Bruto: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignVert = avBottom
        CaptionOptions.Text = 'Peso Bruto'
        CaptionOptions.Layout = clTop
        Control = EdtCalc_Qpeso_Bruto
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object LiedtCalc_Qpeso_Liquido: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignVert = avBottom
        CaptionOptions.Text = 'Peso L'#237'quido'
        CaptionOptions.Layout = clTop
        Control = edtCalc_Qpeso_Liquido
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 107
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'Origem da Mercadoria'
        CaptionOptions.Layout = clTop
        Control = edtOrigem_Mercadoria
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 416
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = LiPnlImpostos
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 3
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = LiPnlImpostos
        LayoutDirection = ldHorizontal
        Index = 4
      end
      object licbxNF_CEST: TdxLayoutItem
        Parent = dxLayoutGroup11
        AlignVert = avBottom
        CaptionOptions.Text = 'CEST'
        CaptionOptions.Layout = clTop
        Control = cbxNF_CEST
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  inherited DS: TDataSource
    OnDataChange = DSDataChange
    Left = 498
    Top = 148
  end
  inherited TimerStatusBar: TTimer
    Left = 582
    Top = 176
  end
  inherited ImgListBotoes24: TImageList
    Left = 610
    Top = 260
  end
  inherited ImgListBotoes16: TImageList
    Left = 610
    Top = 232
  end
  inherited MenuConfig: TPopupMenu
    Left = 610
    Top = 372
  end
  inherited ImgListMenuConfig: TImageList
    Left = 610
    Top = 204
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 638
    Top = 232
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = False
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
    GroupName = 'Cadastro de Produtos'
    Left = 638
    Top = 176
  end
  inherited MenuImprimir: TPopupMenu
    Left = 610
    Top = 316
  end
  inherited WREventosCadastro: TWREventosCadastro
    OnLayoutChange = WREventosCadastroLayoutChange
    Versao_Configuracao = 10
    FormClassCadastro = 'TFrmProduto'
    FormClassConsulta = 'TConsuProduto'
    Left = 638
    Top = 204
  end
  inherited Cadastro: TFDQuery
    AfterEdit = CadastroAfterEdit
    SQL.Strings = (
      'select * from PRODUTO'
      'where Codigo = :Codigo')
    Left = 470
    Top = 148
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
  end
  inherited TransaFD: TFDTransaction
    Left = 610
    Top = 176
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    Tabela = 'PRODUTO'
    Modulo = 'PRODUTO'
    Left = 582
    Top = 148
  end
  inherited Fr3Cadastro: TfrxDBDataset
    Left = 610
    Top = 148
  end
  object DSProduto_Grade: TDataSource
    DataSet = Produto_Grade
    Left = 555
    Top = 260
  end
  object DSEmpresa: TDataSource
    DataSet = QuerEmpresa
    Left = 554
    Top = 288
  end
  object DSProdutoTipo: TDataSource
    DataSet = Produto_Tipo
    Left = 498
    Top = 232
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'Todos (*.png;*.gif;*.jpg;*.jpeg;*.bmp)|*.png;*.gif;*.jpg;*.jpeg;' +
      '*.bmp|GIF (*.gif)|*.gif|Portable Network Graphics (*.png)|*.png|' +
      'JPEG (*.jpg)|*.jpg|JPEG (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp'
    Left = 582
    Top = 232
  end
  object DSEstoque_Produto: TDataSource
    DataSet = Estoque_Produto
    OnDataChange = DSEstoque_ProdutoDataChange
    Left = 610
    Top = 288
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 582
    Top = 343
    object DuplicarProduto1: TMenuItem
      Caption = 'Duplicar Produto'
      OnClick = DuplicarProduto1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Alterarocdigodoproduto1: TMenuItem
      Caption = 'Alterar o c'#243'digo do produto'
      OnClick = Alterarocdigodoproduto1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Migrarimagens1: TMenuItem
      Caption = 'Migrar imagens'
      OnClick = Migrarimagens1Click
    end
    object Exportar1: TMenuItem
      Caption = 'Exportar'
      object PoupBalanaFiziola: TMenuItem
        Caption = 'Balan'#231'a Filizola'
        OnClick = PoupBalanaFiziolaClick
      end
      object PoupBalanaUrano: TMenuItem
        Caption = 'Balan'#231'a Urano'
        OnClick = PoupBalanaUranoClick
      end
      object PoupBalanaToledo: TMenuItem
        Caption = 'Balan'#231'a Toledo'
        OnClick = PoupBalanaToledoClick
      end
      object PoupGertecBuscaPreco: TMenuItem
        Caption = 'Gertec Busca Pre'#231'o'
        OnClick = PoupGertecBuscaPrecoClick
      end
    end
    object MnuAplicarAjusteValorFamlia: TMenuItem
      Caption = 'Aplicar ajuste de valor na fam'#237'lia'
      OnClick = MnuAplicarAjusteValorFamliaClick
    end
    object Consultarcadastrosprontos1: TMenuItem
      Caption = 'Consultar cadastros prontos'
      Visible = False
      OnClick = Consultarcadastrosprontos1Click
    end
    object ArrumarEstoqueProduo1: TMenuItem
      Caption = 'Arrumar Estoque Produ'#231#227'o'
      Visible = False
    end
    object AtualizarCustos1: TMenuItem
      Caption = 'Atualizar Custos'
      OnClick = AtualizarCustos1Click
    end
  end
  object DSProduto_Composicao: TDataSource
    DataSet = Produto_Composicao
    Left = 498
    Top = 176
  end
  object DSProdutoPreco: TDataSource
    DataSet = Produto_Preco
    Left = 554
    Top = 148
  end
  object DSProduto_Centro_Trabalho: TDataSource
    DataSet = Produto_Centro_Trabalho
    Left = 498
    Top = 204
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    AllocBy = 2
    Left = 582
    Top = 260
    Bitmap = {
      494C010102000500020010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000686868BF6767
      67FF6D6D6DFF737373FF797979FF7D7D7DFF7D7D7DFF797979FF737373FF6D6D
      6DFF676767FF686868BF00000000000000000000000000000000686868BF6767
      67FF6D6D6DFF737373FF797979FF7D7D7DFF7D7D7DFF797979FF737373FF6D6D
      6DFF676767FF686868BF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000696969BF808080FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF808080FF696969BF0000000000000000696969BF808080FF9898
      98FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF989898FF808080FF696969BF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000696969FF9B9B9BFF9B9B
      9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B
      9BFF9B9B9BFF9B9B9BFF696969FF0000000000000000696969FF9B9B9BFF9B9B
      9BFF9B9B9BFF9B9B9BFF919191FF8D8D8DFF8D8D8DFF919191FF9B9B9BFF9B9B
      9BFF9B9B9BFF9B9B9BFF696969FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C6C6CFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF6C6C6CFF00000000000000006C6C6CFF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF909090FFFFEEDDFFFFEEDDFF909090FF9F9F9FFF9F9F
      9FFF9F9F9FFF9F9F9FFF6C6C6CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FFA4A4A4FFA4A4
      A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4
      A4FFA4A4A4FFA4A4A4FF717171FF0000000000000000717171FFA4A4A4FFA4A4
      A4FFA4A4A4FFA4A4A4FF949494FFFFF0E0FFFFF0E0FF949494FFA4A4A4FFA4A4
      A4FFA4A4A4FFA4A4A4FF717171FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000757575FFA9A9A9FF9C9C
      9CFF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
      98FF9C9C9CFFA9A9A9FF757575FF0000000000000000757575FFA9A9A9FF9C9C
      9CFF989898FF989898FF989898FFFFF2E5FFFFF2E5FF989898FF989898FF9898
      98FF9C9C9CFFA9A9A9FF757575FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A7A7AFFAFAFAFFF9C9C
      9CFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFFFFEE
      DDFF9C9C9CFFAFAFAFFF7A7A7AFF00000000000000007A7A7AFFAFAFAFFF9C9C
      9CFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5EBFFFFF5
      EBFF9C9C9CFFAFAFAFFF7A7A7AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000818181FFB4B4B4FFA0A0
      A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA0A0A0FFB4B4B4FF818181FF0000000000000000818181FFB4B4B4FFA0A0
      A0FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8F1FFFFF8
      F1FFA0A0A0FFB4B4B4FF818181FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000868686FFBABABAFFAAAA
      AAFFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5
      A5FFAAAAAAFFBABABAFF868686FF0000000000000000868686FFBABABAFFAAAA
      AAFFA5A5A5FFA5A5A5FFA5A5A5FFFFFBF7FFFFFBF7FFA5A5A5FFA5A5A5FFA5A5
      A5FFAAAAAAFFBABABAFF868686FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008A8A8AFFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFF8A8A8AFF00000000000000008A8A8AFFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFFA8A8A8FFFFFDFCFFFFFDFCFFA8A8A8FFBFBFBFFFBFBF
      BFFFBFBFBFFFBFBFBFFF8A8A8AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F8F8FFFC4C4C4FFC4C4
      C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
      C4FFC4C4C4FFC4C4C4FF8F8F8FFF00000000000000008F8F8FFFC4C4C4FFC4C4
      C4FFC4C4C4FFC4C4C4FFACACACFFFFFFFFFFFFFFFFFFACACACFFC4C4C4FFC4C4
      C4FFC4C4C4FFC4C4C4FF8F8F8FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000929292FFC9C9C9FFC9C9
      C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9
      C9FFC9C9C9FFC9C9C9FF929292FF0000000000000000929292FFC9C9C9FFC9C9
      C9FFC9C9C9FFC9C9C9FFB5B5B5FFAFAFAFFFAFAFAFFFB5B5B5FFC9C9C9FFC9C9
      C9FFC9C9C9FFC9C9C9FF929292FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848484BFB1B1B1FFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFB1B1B1FF848484BF0000000000000000848484BFB1B1B1FFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFB1B1B1FF848484BF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000858585BF9C9C
      9CFFA2A2A2FFA8A8A8FFAEAEAEFFB2B2B2FFB2B2B2FFAEAEAEFFA8A8A8FFA2A2
      A2FF9C9C9CFF858585BF00000000000000000000000000000000858585BF9C9C
      9CFFA2A2A2FFA8A8A8FFAEAEAEFFB2B2B2FFB2B2B2FFAEAEAEFFA8A8A8FFA2A2
      A2FF9C9C9CFF858585BF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000C003C00300000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008001800100000000
      C003C00300000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object cxEditRepositoryVinculoMedidas: TcxEditRepository
    Left = 638
    Top = 288
    PixelsPerInch = 96
    object PropVinculoComp: TcxEditRepositoryCurrencyItem
    end
    object PropVinculoNenhum: TcxEditRepositoryCurrencyItem
    end
    object PropVinculoEspessura: TcxEditRepositoryCurrencyItem
    end
    object PropVinculoLarg: TcxEditRepositoryCurrencyItem
    end
    object PropVinculoManterMedida: TcxEditRepositoryCurrencyItem
    end
    object PropVinculoPerimetro: TcxEditRepositoryCurrencyItem
    end
  end
  object TimerViewFotos: TTimer
    Interval = 500
    OnTimer = TimerViewFotosTimer
    Left = 638
    Top = 372
  end
  object DSPreRequisitoCentroTrabalho: TDataSource
    DataSet = PreRequisitoCentroTrabalho
    Left = 554
    Top = 232
  end
  object DSProduto_Custo_Adicional: TDataSource
    DataSet = Produto_Custo_Adicional
    Left = 554
    Top = 204
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 638
    Top = 260
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
      Font.Style = []
      TextColor = 12615680
    end
  end
  object Produto_Grade: TFDQuery
    MasterSource = DS
    MasterFields = 'CODFAMILIA'
    DetailFields = 'CODFAMILIA'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select P.*'
      '       ,C.SIGLA, C.DESCRICAO as COR, PE.ESTOQUE as TOTAL_ESTOQUE'
      'from PRODUTO P'
      'left join COR C on (P.CODCOR = C.CODIGO)'
      'left join PRODUTO_ESTOQUE PE on (PE.CODPRODUTO = P.CODIGO)'
      'where (P.CODFAMILIA = :CODFAMILIA)'
      
        'order by P.DT_CADASTRO, C.DESCRICAO, P.TAMANHO, P.CODFABRICA, P.' +
        'DESCRICAO')
    Left = 526
    Top = 260
    ParamData = <
      item
        Name = 'CODFAMILIA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QuerEmpresa: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT EM.CODIGO, EM.FANTASIA, EP.* from PRODUTO_ESTOQUE EP'
      'LEFT JOIN EMPRESA EM ON (EM.CODIGO = EP.CODEMPRESA)'
      'WHERE (CODPRODUTO= :Codigo)')
    Left = 526
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object Produto_Tipo: TFDQuery
    BeforeOpen = Produto_TipoBeforeOpen
    AfterOpen = Produto_TipoAfterOpen
    Connection = DMBanco.Banco
    Transaction = TransaFD
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select CODIGO, DESCRICAO'
      'from PRODUTO_TIPO')
    Left = 469
    Top = 232
  end
  object Estoque_Produto: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select * from PRODUTO_ESTOQUE'
      'WHERE (CODPRODUTO = :Codigo)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 582
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
  end
  object Produto_Balanca: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM PRODUTO'
      ''
      'WHERE CHAR_LENGTH(CODIGO)<6')
    Left = 582
    Top = 316
  end
  object Produto_Composicao: TFDQuery
    BeforeOpen = Produto_ComposicaoBeforeOpen
    AfterClose = Produto_ComposicaoAfterClose
    AfterInsert = Produto_ComposicaoAfterInsert
    BeforeEdit = Produto_ComposicaoBeforeEdit
    BeforePost = Produto_ComposicaoBeforePost
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO_COMPOSICAO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select PC.*'
      
        '       ,P.UNIDADE, P.calc_qpeso_bruto, P.calc_qpeso_LIQUIDO,  PE' +
        '.ESTOQUE, P.CODPRODUTO_TIPO, P.CUSTO AS CUSTO_ATUAL,'
      
        '       P.VALOR AS VALOR_ATUAL, FP.DESCRICAO as FORMULA_PERFIL, P' +
        'T.CLASSIFICACAO as ProdutoTipoClassificacao, '
      '       P.TEM_COMPOSICAO, P.TEM_VARIACAO'
      'from PRODUTO_COMPOSICAO PC'
      'left join PRODUTO P on (PC.CODPRODUTO = P.CODIGO)'
      
        'left join PRODUTO_ESTOQUE PE on (PC.CODPRODUTO = PE.CODPRODUTO) ' +
        'and (PE.CODEMPRESA = :CODEMPRESA)'
      
        'left join FORMULA_PERFIL FP on (FP.CODIGO = PC.CODFORMULA_PERFIL' +
        ')'
      'left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO)'
      'where (PC.CODPRODUTO_COMPOSICAO = :CODIGO)'
      'order by PC.ordem ASC')
    Left = 470
    Top = 176
    ParamData = <
      item
        Name = 'CODEMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
    object Produto_ComposicaoTotalCusto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalCusto'
      Calculated = True
    end
    object Produto_ComposicaoTotalPeso: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalPeso'
      Calculated = True
    end
    object Produto_ComposicaoCustoUnit: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CustoUnit'
      Calculated = True
    end
    object Produto_ComposicaoMedidas: TStringField
      FieldKind = fkCalculated
      FieldName = 'Medidas'
      Size = 100
      Calculated = True
    end
  end
  object Produto_Preco: TFDQuery
    AfterInsert = Produto_PrecoAfterInsert
    OnCalcFields = Produto_PrecoCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select CODIGO, CODPRODUTO, TIPO, PORCENTAGEM, QUANT, '
      '       DE, CODPRODUTO_VINCULADO, DESCRICAO, REFERENCIA, '
      '       SKU'
      'from PRODUTO_PRECO'
      'where (CODPRODUTO = :Codigo)')
    Left = 526
    Top = 148
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
    object Produto_PrecoValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
  end
  object Produto_Centro_Trabalho: TFDQuery
    AfterOpen = Produto_Centro_TrabalhoAfterOpen
    BeforeClose = Produto_Centro_TrabalhoBeforeClose
    AfterInsert = Produto_Centro_TrabalhoAfterInsert
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      
        'select PC.CODIGO, PC.CODPRODUTO, PC.CODCENTRO_TRABALHO, PC.TEMPO' +
        ',  PC.CODPRODUTO_CT_PRE_REQUISITO, PC.DESCRICAO'
      
        '      , CT.DESCRICAO as CENTRO_TRABALHO, CTR.DESCRICAO as PRE_RE' +
        'QUISITO'
      'from PRODUTO_CENTRO_TRABALHO PC'
      
        'left join CENTRO_TRABALHO CT on (PC.CODCENTRO_TRABALHO = CT.CODI' +
        'GO)'
      
        'left join PRODUTO_CENTRO_TRABALHO REQ on (PC.CODPRODUTO_CT_PRE_R' +
        'EQUISITO = REQ.CODIGO)'
      
        'left join CENTRO_TRABALHO CTR on (REQ.CODCENTRO_TRABALHO = CTR.C' +
        'ODIGO)'
      'where (PC.CODPRODUTO = :CODIGO)')
    Left = 470
    Top = 204
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object Produto_Tabela_Preco: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      
        'select pt.descricao, pt.ativo, ptp.* from produto_tabela_preco p' +
        'tp'
      'left join produto_Tabela pt on pt.codigo = ptp.codproduto_tabela'
      'where ptp.codproduto = :codigo')
    Left = 526
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object PreRequisitoCentroTrabalho: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select null as CODIGO, 0 as CODCODCENTRO_TRABALHO, '#39'<Nenhum>'#39' as' +
        ' DESCRICAO'
      'from RDB$DATABASE'
      ''
      'union all'
      ''
      'select PC.CODIGO, PC.CODCENTRO_TRABALHO, CT.DESCRICAO'
      'from PRODUTO_CENTRO_TRABALHO PC'
      
        'left join CENTRO_TRABALHO CT on (PC.CODCENTRO_TRABALHO = CT.CODI' +
        'GO)'
      'where (PC.CODPRODUTO = :CODIGO)')
    Left = 526
    Top = 232
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object Produto_Custo_Adicional: TFDQuery
    AfterInsert = Produto_Custo_AdicionalAfterInsert
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from PRODUTO_CUSTO_ADICIONAL '
      'where (CODPRODUTO = :CODIGO)  ')
    Left = 526
    Top = 204
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object ActionList1: TActionList
    Left = 582
    Top = 204
    object Action_BtnCustos: TAction
      AutoCheck = True
      Caption = 'Custos'
      Checked = True
      GroupIndex = 22
      OnExecute = Action_BtnCustosExecute
    end
    object Action_TabelaDePreco: TAction
      AutoCheck = True
      Caption = 'Tabela de Pre'#231'o'
      GroupIndex = 22
      OnExecute = Action_TabelaDePrecoExecute
    end
    object Action_PrecoEspecial: TAction
      AutoCheck = True
      Caption = 'Pre'#231'o Especial'
      GroupIndex = 22
      OnExecute = Action_PrecoEspecialExecute
    end
  end
  object FcPrincipal: TWRFormataCamposDataSets
    OnCarregaDataSets = FcPrincipalCarregaDataSets
    Left = 638
    Top = 148
  end
  object WRCalc: TWRCalculaConfiguracoes
    DSProduto = DS
    DSComposicao = DSProduto_Composicao
    DSCentroTrabalho = DSProduto_Centro_Trabalho
    OnCalculaQuant = WRCalcCalculaQuant
    TipoCalculo = tcCadastro
    SPrTipoCalc = tssCalcCadastro
    Left = 666
    Top = 148
  end
  object PmComposicao: TwrProdutoMemoria
    SQLProduto.Strings = (
      'select '
      
        '       P.*,  '#39'                              '#39' AS FORMULA, 0.0 AS' +
        ' QTDADEPECA_COMPOSICAO, 0.0 AS COMP_COMPOSICAO, 0.0 AS LARG_COMP' +
        'OSICAO, 0.0 AS ESPESSURA_COMPOSICAO,'
      '0.0 as QTDADEPECA_AVANCO1, 0.0 as QTDADEPECA_AVANCO2'
      'from PRODUTO P '
      'where (P.CODIGO = :CODPRODUTO)')
    SQLComposicao.Strings = (
      'select PC.*, P.*'
      'from PRODUTO_COMPOSICAO PC'
      'left join PRODUTO P on (PC.CODPRODUTO = P.CODIGO)'
      'where (PC.CODPRODUTO_COMPOSICAO = :CODPRODUTO)'
      'order by PC.ordem')
    SQLTabelaPreco.Strings = (
      'select PT.DESCRICAO, PT.ATIVO, PTP.*'
      'from PRODUTO_TABELA_PRECO PTP'
      'left join PRODUTO_TABELA PT on PT.CODIGO = PTP.CODPRODUTO_TABELA'
      'where PTP.CODPRODUTO = :CODPRODUTO')
    SQLProdEtapas.Strings = (
      'SELECT PE.*, CT.DESCRICAO AS EQUIPE FROM PRODUTO_ETAPA PE '
      
        'LEFT JOIN CENTRO_TRABALHO CT ON CT.CODIGO = PE.CODCENTRO_TRABALH' +
        'O'
      'WHERE PE.CODPRODUTO = :CODPRODUTO'
      'ORDER BY PE.ordem ASC')
    SQLProdPreRequisito.Strings = (
      
        'SELECT PPR.*, CT1.DESCRICAO AS ETAPA, CT2.DESCRICAO AS PREREQUIS' +
        'ITO, PE1.ORDEM FROM PRODUTO_PREREQUISITO PPR'
      'LEFT JOIN PRODUTO_ETAPA PE1 ON PE1.CODIGO = PPR.CODPRODUTO_ETAPA'
      
        'LEFT JOIN PRODUTO_ETAPA PE2 ON PE2.CODIGO = PPR.CODPRODUTO_ETAPA' +
        '_PREREQUISITO'
      
        'LEFT JOIN CENTRO_TRABALHO CT1 ON CT1.CODIGO = PE1.CODCENTRO_TRAB' +
        'ALHO'
      
        'LEFT JOIN CENTRO_TRABALHO CT2 ON CT2.CODIGO = PE2.CODCENTRO_TRAB' +
        'ALHO'
      'WHERE PPR.CODPRODUTO = :CODPRODUTO'
      'ORDER BY PE1.ORDEM ASC')
    SQLProdBaixaAutomatica.Strings = (
      
        'SELECT PBA.*, PE.ORDEM, PC.DESCRICAO, CT.descricao AS EQUIPE FRO' +
        'M PRODUTO_BAIXA_AUTOMATICA PBA'
      'LEFT JOIN PRODUTO_ETAPA PE ON PE.CODIGO = PBA.CODPRODUTO_ETAPA'
      
        'LEFT JOIN CENTRO_TRABALHO CT ON CT.codigo = PE.codcentro_trabalh' +
        'o'
      
        'LEFT JOIN PRODUTO_COMPOSICAO PC ON PC.CODIGO = PBA.CODPRODUTO_CO' +
        'MPOSICAO'
      'WHERE PBA.CODPRODUTO = :CODPRODUTO')
    Connection = DMBanco.Banco
    TransacaoFD = TransaFD
    PermitirProdutoNaoCadastrado = True
    Left = 694
    Top = 148
  end
  object DSClientes_Produto: TDataSource
    DataSet = Produto_Tabela_Preco
    Left = 554
    Top = 176
  end
  object DataSource1: TDataSource
    Left = 221
    Top = 159
  end
  object TimerFotos: TThreadedTimer
    Interval = 200
    OnTimer = TimerFotosTimer
    Left = 779
    Top = 229
  end
  object Produto_Etapas: TFDQuery
    BeforeEdit = Produto_EtapasBeforeEdit
    BeforePost = Produto_EtapasBeforePost
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT PE.*, CT.DESCRICAO AS EQUIPE FROM PRODUTO_ETAPA PE '
      
        'LEFT JOIN CENTRO_TRABALHO CT ON CT.CODIGO = PE.CODCENTRO_TRABALH' +
        'O'
      'WHERE PE.CODPRODUTO = :CODIGO'
      'ORDER BY PE.ordem ASC')
    Left = 726
    Top = 200
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
    object CurrencyField1: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalCusto'
      Calculated = True
    end
    object CurrencyField2: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalPeso'
      Calculated = True
    end
    object CurrencyField3: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CustoUnit'
      Calculated = True
    end
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'Medidas'
      Size = 100
      Calculated = True
    end
  end
  object Produto_Prerequisito: TFDQuery
    BeforeEdit = Produto_PrerequisitoBeforeEdit
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
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
      'WHERE PPR.CODPRODUTO = :CODIGO'
      'ORDER BY PE1.ORDEM ASC')
    Left = 726
    Top = 228
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
    object CurrencyField4: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalCusto'
      Calculated = True
    end
    object CurrencyField5: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalPeso'
      Calculated = True
    end
    object CurrencyField6: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CustoUnit'
      Calculated = True
    end
    object StringField2: TStringField
      FieldKind = fkCalculated
      FieldName = 'Medidas'
      Size = 100
      Calculated = True
    end
  end
  object Produto_Baixa_Automatica: TFDQuery
    BeforeEdit = Produto_Baixa_AutomaticaBeforeEdit
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'SELECT PBA.*, PE.ORDEM, PC.DESCRICAO, CT.descricao AS EQUIPE FRO' +
        'M PRODUTO_BAIXA_AUTOMATICA PBA'
      'LEFT JOIN PRODUTO_ETAPA PE ON PE.CODIGO = PBA.CODPRODUTO_ETAPA'
      
        'LEFT JOIN CENTRO_TRABALHO CT ON CT.codigo = PE.codcentro_trabalh' +
        'o'
      
        'LEFT JOIN PRODUTO_COMPOSICAO PC ON PC.CODIGO = PBA.CODPRODUTO_CO' +
        'MPOSICAO'
      'WHERE PBA.CODPRODUTO = :CODIGO')
    Left = 726
    Top = 256
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
    object CurrencyField7: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalCusto'
      Calculated = True
    end
    object CurrencyField8: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalPeso'
      Calculated = True
    end
    object CurrencyField9: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CustoUnit'
      Calculated = True
    end
    object StringField3: TStringField
      FieldKind = fkCalculated
      FieldName = 'Medidas'
      Size = 100
      Calculated = True
    end
  end
  object Produto_Preco_Filho: TFDQuery
    AfterOpen = Produto_Preco_FilhoAfterOpen
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'select CODIGO, CODPRODUTO, TIPO, PORCENTAGEM, QUANT, '
      '       DE, CODPRODUTO_VINCULADO, DESCRICAO, REFERENCIA, '
      '       SKU'
      'from PRODUTO_PRECO'
      'where (CODPRODUTO_VINCULADO = :Codigo)')
    Left = 526
    Top = 320
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
end
